import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Ücretsiz/Pro sınırlarının tek kapısı. Pro = aktif abonelik (14 gün
/// deneme dahil), Play Billing'den gelir; son bilinen durum burada saklanır.

class Entitlements extends ChangeNotifier {
  Entitlements._();
  static final Entitlements instance = Entitlements._();

  static const int freeEntriesPerCategory = 3;
  static const int freeScanTrials = 3;
  static const _kPro = 'muhur_pro_cache';

  /// Geliştirme: flutter run --dart-define=MUHUR_PRO=true
  static const bool _devPro = bool.fromEnvironment('MUHUR_PRO');
  static const _storage = FlutterSecureStorage();

  bool _pro = false;
  bool get isPro => _devPro || _pro;

  /// main() içinde bir kez: Play cevap verene kadar son bilinen durum geçerli.
  Future<void> load() async {
    try {
      _pro = await _storage.read(key: _kPro) == '1';
    } catch (_) {
      _pro = false;
    }
  }

  /// Play Billing yalnızca BAŞARILI sorgudan sonra çağırır (hata = değişiklik yok).
  void setPro(bool v) {
    if (_pro == v) return;
    _pro = v;
    notifyListeners();
    _save(v);
  }

  Future<void> _save(bool v) async {
    try {
      if (v) {
        await _storage.write(key: _kPro, value: '1');
      } else {
        await _storage.delete(key: _kPro);
      }
    } catch (_) {}
  }

  /// [activeCount]: kategorideki aktif (çöpte olmayan) kayıt sayısı.
  bool canAdd(int activeCount) => isPro || activeCount < freeEntriesPerCategory;
}

/// Kategori dolu: yeni kayıt, taşıma veya çöpten geri alma reddedildi.
class LimitReachedException implements Exception {
  const LimitReachedException();
}
