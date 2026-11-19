import 'package:flutter/foundation.dart';

/// Pro fiyatları için tek kaynak. Play Billing bağlanınca Google Play'in
/// kullanıcının ülkesine göre verdiği fiyatlar [update] ile buraya yazılır;
/// fiyat gösteren her yer kendiliğinden yenilenir. O zamana kadar yalnızca
/// Türkçe arayüzde yer tutucu TL fiyatları gösterilir, diğer dillerde yanlış
/// para birimi göstermemek için fiyat gizlenir.
class ProPrices extends ChangeNotifier {
  ProPrices._();
  static final ProPrices instance = ProPrices._();

  // TODO(play): Play Billing bağlanınca yer tutucular kaldırılacak.
  // Yıllık fiyat Play Console'da tam 299 TL olarak girilmeli; ana ekran
  // etiketi kuruşsuz gösterdiği için böylece iki yer birbirini tutar.
  static const _trYearly = '299 ₺';
  static const _trYearlyShort = '299 ₺';
  static const _trMonthly = '39 ₺';

  String? _yearly;
  String? _yearlyShort;
  String? _monthly;

  /// Yıllık abonelik fiyatı (Pro ekranı); bilinmiyorsa null.
  String? yearly(String languageCode) =>
      _yearly ?? (languageCode == 'tr' ? _trYearly : null);

  /// Ana ekran etiketi için kuruşsuz kısa yıllık fiyat (ör. "299 ₺").
  String? yearlyShort(String languageCode) =>
      _yearlyShort ?? (languageCode == 'tr' ? _trYearlyShort : null);

  /// Aylık abonelik fiyatı; bilinmiyorsa null.
  String? monthly(String languageCode) =>
      _monthly ?? (languageCode == 'tr' ? _trMonthly : null);

  /// Play'den gelen yerel fiyatları kaydeder.
  void update({String? yearly, String? yearlyShort, String? monthly}) {
    _yearly = yearly ?? _yearly;
    _yearlyShort = yearlyShort ?? _yearlyShort;
    _monthly = monthly ?? _monthly;
    notifyListeners();
  }
}
