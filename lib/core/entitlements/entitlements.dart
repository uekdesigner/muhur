/// Ücretsiz/Pro sınırlarının tek kapısı. Deneme ve satın alma bağlanınca
/// yalnızca [isPro] kaynağı değişir.
class Entitlements {
  Entitlements._();
  static final Entitlements instance = Entitlements._();

  static const int freeEntriesPerCategory = 3;
  static const int freeScanTrials = 3;

  /// Geliştirme: flutter run --dart-define=MUHUR_PRO=true
  static const bool _devPro = bool.fromEnvironment('MUHUR_PRO');

  bool _pro = false;
  bool get isPro => _devPro || _pro;
  void setPro(bool v) => _pro = v;

  /// [activeCount]: kategorideki aktif (çöpte olmayan) kayıt sayısı.
  bool canAdd(int activeCount) => isPro || activeCount < freeEntriesPerCategory;
}

/// Kategori dolu: yeni kayıt, taşıma veya çöpten geri alma reddedildi.
class LimitReachedException implements Exception {
  const LimitReachedException();
}
