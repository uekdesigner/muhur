import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

import 'entitlements.dart';
import 'pro_prices.dart';

/// Satın alma ekranına bildirilen sonuç.
enum BillingEvent { purchased, pending, canceled, error }

/// Google Play üzerinden Pro: yıllık/aylık abonelik ve yalnızca promosyon
/// koduyla verilen hediye ürünleri (3 ay, 6 ay, 1 yıl, süresiz).
///
/// Ödemeyi Play Store uygulaması yapar; MÜHÜR internete çıkmaz. Her satın
/// alma, Play'in imzasıyla telefonda doğrulanır. Durum her açılışta ve
/// uygulamaya her dönüşte Play'den yeniden okunur; sorgu başarısızsa
/// (Play'e ulaşılamıyorsa) Pro durumu değişmez.
class BillingService extends ChangeNotifier with WidgetsBindingObserver {
  BillingService._();
  static final BillingService instance = BillingService._();

  static const yearlyId = 'muhur_pro_yearly';
  static const monthlyId = 'muhur_pro_monthly';
  static const _subs = {yearlyId, monthlyId};

  /// Hediye ürünleri ve ay cinsinden süreleri; null = süresiz.
  static const gifts = <String, int?>{
    'muhur_pro_gift_3m': 3,
    'muhur_pro_gift_6m': 6,
    'muhur_pro_gift_1y': 12,
    'muhur_pro_gift_life': null,
  };

  /// Play Console > Gelir elde etme kurulumu > Lisanslama bölümündeki
  /// Base64 genel anahtar. Genel (public) bir anahtardır, gizli değildir.
  // TODO(play): Play Console'dan alınan anahtar buraya yapıştırılacak.
  static const _publicKey = '';

  static const _channel = MethodChannel('com.muhur.app/billing');

  final InAppPurchase _iap = InAppPurchase.instance;
  final Map<String, ProductDetails> _products = {};
  final _events = StreamController<BillingEvent>.broadcast();
  StreamSubscription<List<PurchaseDetails>>? _sub;
  bool _available = false;
  DateTime _lastRefresh = DateTime.fromMillisecondsSinceEpoch(0);

  bool _subscribed = false;
  bool _giftLifetime = false;
  DateTime? _giftUntil;

  /// Play Store kullanılabilir mi (yüklü ve hesap açık).
  bool get available => _available;

  /// Satın alma sonuçları (Pro ekranı dinler).
  Stream<BillingEvent> get events => _events.stream;

  bool get subscribed => _subscribed;
  bool get giftLifetime => _giftLifetime;

  /// Süreli hediye Pro'nun bittiği an; hediye yoksa null.
  DateTime? get giftUntil => _giftUntil;

  /// Kullanıcı Play Store'a gidip (kod kullanma, abonelik yönetimi) geri
  /// dönünce durum beklemeden yeniden okunsun.
  void expectChange() => _lastRefresh = DateTime.fromMillisecondsSinceEpoch(0);

  /// main() içinde bir kez; açılışı bekletmez.
  Future<void> init() async {
    WidgetsBinding.instance.addObserver(this);
    _sub ??= _iap.purchaseStream.listen(_onPurchases, onError: (_) {});
    try {
      _available = await _iap.isAvailable();
      if (!_available) return;
      await _loadProducts();
      await refresh();
    } catch (_) {}
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // Play Store'da kod kullanma, iptal, yenileme gibi değişiklikler
    // uygulamaya dönünce okunur (en sık dakikada bir).
    if (state == AppLifecycleState.resumed &&
        DateTime.now().difference(_lastRefresh) > const Duration(minutes: 1)) {
      refresh();
    }
  }

  Future<void> _loadProducts() async {
    final r = await _iap.queryProductDetails({..._subs, ...gifts.keys});
    for (final p in r.productDetails) {
      // Abonelikte her teklif ayrı gelir; ilki temel plandır.
      _products.putIfAbsent(p.id, () => p);
    }
    final y = _products[yearlyId];
    final m = _products[monthlyId];
    ProPrices.instance.update(
      yearly: y?.rawPrice,
      monthly: m?.rawPrice,
      currency: y?.currencyCode ?? m?.currencyCode,
    );
  }

  /// Play'deki sahiplikleri okur ve Pro durumunu günceller.
  /// true: sorgu başarılı oldu.
  Future<bool> refresh() async {
    if (!_available) return false;
    _lastRefresh = DateTime.now();
    try {
      final add = _iap
          .getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
      final r = await add.queryPastPurchases();
      if (r.error != null) return false;

      final now = Entitlements.instance.now;
      var sub = false;
      var life = false;
      DateTime? giftEnd;
      for (final p in r.pastPurchases) {
        final w = p.billingClientPurchase;
        if (w.purchaseState != PurchaseStateWrapper.purchased) continue;
        if (!await _verify(w)) continue;
        var keep = true;
        for (final id in w.products) {
          if (_subs.contains(id)) {
            // Play yalnızca süresi dolmamış abonelikleri döndürür.
            sub = true;
          } else if (gifts.containsKey(id)) {
            final months = gifts[id];
            if (months == null) {
              life = true;
              continue;
            }
            final start = DateTime.fromMillisecondsSinceEpoch(w.purchaseTime);
            final end = DateTime(
              start.year,
              start.month + months,
              start.day,
              start.hour,
              start.minute,
            );
            if (now.isBefore(end)) {
              if (giftEnd == null || end.isAfter(giftEnd)) giftEnd = end;
            } else {
              // Süresi doldu: tüketilir ki aynı hediye yeniden verilebilsin.
              keep = false;
              try {
                await add.consumePurchase(p);
              } catch (_) {}
            }
          }
        }
        if (keep && !w.isAcknowledged) {
          try {
            await _iap.completePurchase(p);
          } catch (_) {}
        }
      }

      _subscribed = sub;
      _giftLifetime = life;
      _giftUntil = giftEnd;
      Entitlements.instance.setPro(sub || life || giftEnd != null);
      notifyListeners();
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Satın alma penceresini açar. false: ürün bulunamadı ya da açılamadı.
  Future<bool> buy(String productId) async {
    final p = _products[productId];
    if (!_available || p == null) return false;
    try {
      return await _iap.buyNonConsumable(
        purchaseParam: PurchaseParam(productDetails: p),
      );
    } catch (_) {
      return false;
    }
  }

  Future<void> _onPurchases(List<PurchaseDetails> list) async {
    var changed = false;
    for (final p in list) {
      switch (p.status) {
        case PurchaseStatus.pending:
          _events.add(BillingEvent.pending);
        case PurchaseStatus.canceled:
          _events.add(BillingEvent.canceled);
        case PurchaseStatus.error:
          _events.add(BillingEvent.error);
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          final ok =
              p is GooglePlayPurchaseDetails &&
              await _verify(p.billingClientPurchase);
          if (ok) {
            changed = true;
            if (p.pendingCompletePurchase) {
              try {
                await _iap.completePurchase(p);
              } catch (_) {}
            }
            if (p.status == PurchaseStatus.purchased) {
              _events.add(BillingEvent.purchased);
            }
          } else {
            _events.add(BillingEvent.error);
          }
      }
    }
    if (changed) await refresh();
  }

  /// Play'in imzasını uygulamanın genel anahtarıyla doğrular (cihazda).
  Future<bool> _verify(PurchaseWrapper w) async {
    // Anahtar girilmeden önce yalnızca geliştirme sürümünde kabul edilir.
    if (_publicKey.isEmpty) return kDebugMode;
    try {
      return await _channel.invokeMethod<bool>('verify', {
            'key': _publicKey,
            'data': w.originalJson,
            'signature': w.signature,
          }) ??
          false;
    } catch (_) {
      return false;
    }
  }
}
