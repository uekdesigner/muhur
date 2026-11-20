import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

/// Pro fiyatları için tek kaynak. Play Billing'den gelen fiyatlar ve para
/// birimi [update] ile buraya yazılır; biçim uygulamanın diline göre yapılır
/// (Türkçe: "₺199"). Para birimini kullanıcının Google Play ülkesi belirler,
/// uygulama dili değil. Play'den fiyat gelene kadar yalnızca Türkçe arayüzde
/// yer tutucu TL fiyatı gösterilir; diğer dillerde yanlış para birimi
/// göstermemek için fiyat gizlenir.
class ProPrices extends ChangeNotifier {
  ProPrices._();
  static final ProPrices instance = ProPrices._();

  // Play Console'daki fiyatlarla aynı olmalı: yıllık 199 ₺, aylık 24 ₺.
  static const _trYearly = 199.0;
  static const _trMonthly = 24.0;

  double? _yearly;
  double? _monthly;
  String? _currency;

  bool _placeholder(String locale) =>
      _currency == null && locale.startsWith('tr');

  double? _y(String l) => _yearly ?? (_placeholder(l) ? _trYearly : null);
  double? _m(String l) => _monthly ?? (_placeholder(l) ? _trMonthly : null);

  static String _fmt(double v, String currency, String locale) {
    final whole = v == v.truncateToDouble();
    try {
      return NumberFormat.simpleCurrency(
        locale: locale,
        name: currency,
        decimalDigits: whole ? 0 : 2,
      ).format(v);
    } catch (_) {
      return '${whole ? v.toInt() : v.toStringAsFixed(2)} $currency';
    }
  }

  String? _format(double? v, String locale) =>
      v == null ? null : _fmt(v, _currency ?? 'TRY', locale);

  /// Yıllık fiyat (kuruş sıfırsa kuruşsuz); bilinmiyorsa null.
  String? yearly(String locale) => _format(_y(locale), locale);

  /// Aylık fiyat; bilinmiyorsa null.
  String? monthly(String locale) => _format(_m(locale), locale);

  /// Yıllık planın aylık karşılığı, yuvarlanmış (ör. "₺17").
  String? yearlyPerMonth(String locale) {
    final y = _y(locale);
    return y == null ? null : _format((y / 12).roundToDouble(), locale);
  }

  /// Play'den gelen fiyatları kaydeder.
  void update({double? yearly, double? monthly, String? currency}) {
    if (currency == null) return;
    _yearly = yearly ?? _yearly;
    _monthly = monthly ?? _monthly;
    _currency = currency;
    notifyListeners();
  }
}
