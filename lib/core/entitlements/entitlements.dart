import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Ücretsiz/Pro sınırlarının tek kapısı.
/// Pro = aktif abonelik (Play Billing'den gelir) VEYA ilk açılıştan itibaren
/// 14 günlük kartsız deneme. Son bilinen durum burada saklanır.
class Entitlements extends ChangeNotifier {
  Entitlements._();
  static final Entitlements instance = Entitlements._();

  static const int freeEntriesPerCategory = 3;
  static const int freeScanTrials = 3;
  static const trialPeriod = Duration(days: 14);

  /// Pro bittikten sonra parmak izi/yüz bu kadar süre daha (uyarıyla) çalışır.
  static const biometricGrace = Duration(days: 7);

  static const _kPro = 'muhur_pro_cache';
  static const _kTrialStart = 'muhur_trial_start';
  static const _kSeen = 'muhur_time_seen';
  static const _kProLost = 'muhur_pro_lost_at';

  /// Geliştirme: flutter run --dart-define=MUHUR_PRO=true
  static const bool _devPro = bool.fromEnvironment('MUHUR_PRO');
  static const _storage = FlutterSecureStorage();

  bool _subscribed = false;
  DateTime? _trialStart;
  DateTime? _proLostAt;
  DateTime _seen = DateTime.fromMillisecondsSinceEpoch(0);

  /// Telefonun saati geri alınsa da süreler uzamaz: görülen en ileri an esas.
  DateTime get _now {
    final n = DateTime.now();
    if (n.isAfter(_seen)) _seen = n;
    return _seen;
  }

  /// Saat geri alınmaya karşı korunan "şimdi" (hediye süreleri için).
  DateTime get now => _now;
  bool get isSubscribed => _devPro || _subscribed;

  DateTime? get trialEnd => _trialStart?.add(trialPeriod);

  bool get inTrial {
    final end = trialEnd;
    return end != null && _now.isBefore(end);
  }

  /// Denemenin kalan gün sayısı (bittiyse 0).
  int get trialDaysLeft => _daysUntil(trialEnd) ?? 0;

  bool get isPro => isSubscribed || inTrial;

  /// Pro'nun bittiği an: deneme sonu ya da aboneliğin düştüğü an (geç olanı).
  DateTime? get _proEnd {
    final a = trialEnd;
    final b = _proLostAt;
    if (a == null) return b;
    if (b == null) return a;
    return a.isAfter(b) ? a : b;
  }

  /// Parmak izi/yüz: Pro'da açık; Pro bittikten sonra [biometricGrace] kadar
  /// daha açık kalır ki kullanıcı ana parolasını hatırlamadan kilitlenmesin.
  bool get biometricAllowed => isPro || biometricGraceDaysLeft != null;

  /// Ek süredeyse kapanmaya kalan gün; ek sürede değilse null.
  int? get biometricGraceDaysLeft {
    if (isPro) return null;
    final end = _proEnd;
    return end == null ? null : _daysUntil(end.add(biometricGrace));
  }

  int? _daysUntil(DateTime? t) {
    if (t == null) return null;
    final left = t.difference(_now);
    if (left <= Duration.zero) return null;
    return (left.inMinutes / Duration.minutesPerDay).ceil();
  }

  /// main() içinde bir kez. İlk açılışta deneme başlar.
  Future<void> load() async {
    try {
      _subscribed = await _storage.read(key: _kPro) == '1';
      _seen = _read(await _storage.read(key: _kSeen)) ?? _seen;
      _proLostAt = _read(await _storage.read(key: _kProLost));
      _trialStart = _read(await _storage.read(key: _kTrialStart));
      if (_trialStart == null) {
        _trialStart = _now;
        await _storage.write(key: _kTrialStart, value: _write(_trialStart!));
      }
      await _storage.write(key: _kSeen, value: _write(_now));
    } catch (_) {
      _trialStart ??= DateTime.now();
    }
  }

  /// Play Billing yalnızca BAŞARILI sorgudan sonra çağırır (hata = değişiklik yok).
  void setPro(bool v) {
    if (_subscribed == v) return;
    final wasPro = isPro;
    _subscribed = v;
    if (v) {
      _proLostAt = null;
    } else if (wasPro && !isPro) {
      _proLostAt = _now;
    }
    notifyListeners();
    _save();
  }

  Future<void> _save() async {
    try {
      if (_subscribed) {
        await _storage.write(key: _kPro, value: '1');
      } else {
        await _storage.delete(key: _kPro);
      }
      final lost = _proLostAt;
      if (lost == null) {
        await _storage.delete(key: _kProLost);
      } else {
        await _storage.write(key: _kProLost, value: _write(lost));
      }
      await _storage.write(key: _kSeen, value: _write(_now));
    } catch (_) {}
  }

  static DateTime? _read(String? v) {
    final ms = int.tryParse(v ?? '');
    return ms == null ? null : DateTime.fromMillisecondsSinceEpoch(ms);
  }

  static String _write(DateTime t) => '${t.millisecondsSinceEpoch}';

  /// [activeCount]: kategorideki aktif (çöpte olmayan) kayıt sayısı.
  bool canAdd(int activeCount) => isPro || activeCount < freeEntriesPerCategory;
}

/// Kategori dolu: yeni kayıt, taşıma veya çöpten geri alma reddedildi.
class LimitReachedException implements Exception {
  const LimitReachedException();
}
