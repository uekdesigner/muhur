import 'dart:math';

class GeneratorOptions {
  const GeneratorOptions({
    this.length = 20,
    this.lower = true,
    this.upper = true,
    this.digits = true,
    this.symbols = true,
    this.avoidAmbiguous = false,
  });

  final int length;
  final bool lower;
  final bool upper;
  final bool digits;
  final bool symbols;
  final bool avoidAmbiguous;

  GeneratorOptions copyWith({
    int? length,
    bool? lower,
    bool? upper,
    bool? digits,
    bool? symbols,
    bool? avoidAmbiguous,
  }) => GeneratorOptions(
    length: length ?? this.length,
    lower: lower ?? this.lower,
    upper: upper ?? this.upper,
    digits: digits ?? this.digits,
    symbols: symbols ?? this.symbols,
    avoidAmbiguous: avoidAmbiguous ?? this.avoidAmbiguous,
  );
}

class PasswordGenerator {
  static const _lower = 'abcdefghijklmnopqrstuvwxyz';
  static const _upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const _digits = '0123456789';
  static const _symbols = '!@#\$%^&*()-_=+[]{};:,.?';
  static const _ambiguous = 'O0oIl1|';

  final Random _rnd = Random.secure();

  String generate(GeneratorOptions o) {
    String f(String s) => o.avoidAmbiguous
        ? s.split('').where((c) => !_ambiguous.contains(c)).join()
        : s;

    final sets = <String>[
      if (o.lower) f(_lower),
      if (o.upper) f(_upper),
      if (o.digits) f(_digits),
      if (o.symbols) f(_symbols),
    ];
    if (sets.isEmpty) sets.add(f(_lower));

    final length = max(o.length, sets.length);
    final all = sets.join();

    // Her seçili türden en az bir karakter
    final chars = <String>[for (final s in sets) s[_rnd.nextInt(s.length)]];
    while (chars.length < length) {
      chars.add(all[_rnd.nextInt(all.length)]);
    }

    // Fisher-Yates karıştırma (güvenli rastgele ile)
    for (var i = chars.length - 1; i > 0; i--) {
      final j = _rnd.nextInt(i + 1);
      final tmp = chars[i];
      chars[i] = chars[j];
      chars[j] = tmp;
    }
    return chars.join();
  }
}

enum Strength { weak, fair, good, strong }

class StrengthResult {
  const StrengthResult(this.bits, this.level);
  final double bits;
  final Strength level;
  double get fraction => (bits / 100).clamp(0.0, 1.0);
}

/// Kaba bir tahmin: gerçek bir parola kırma süresi hesabı DEĞİLDİR.
StrengthResult estimateStrength(String p) {
  if (p.isEmpty) return const StrengthResult(0, Strength.weak);

  var pool = 0;
  if (RegExp(r'[a-z]').hasMatch(p)) pool += 26;
  if (RegExp(r'[A-Z]').hasMatch(p)) pool += 26;
  if (RegExp(r'[0-9]').hasMatch(p)) pool += 10;
  if (RegExp(r'[^A-Za-z0-9]').hasMatch(p)) pool += 33;

  var bits = p.length * (log(pool) / ln2);

  // Çok tekrar eden karakterler
  final ratio = p.split('').toSet().length / p.length;
  if (ratio < 0.5) bits *= ratio * 2;

  // Bilinen kalıplar
  final lower = p.toLowerCase();
  const common = [
    'password',
    'parola',
    'sifre',
    'şifre',
    'qwerty',
    '123456',
    'abcdef',
    'admin',
    'letmein',
    'iloveyou',
    'welcome',
  ];
  if (common.any(lower.contains)) bits = min(bits, 28);

  // "Kelime + rakam (+ sembol)" gibi insan kalıpları (Summer2024!)
  if (RegExp(r'^[A-Za-zÇĞİÖŞÜçğıöşü]+[0-9]{1,4}[^A-Za-z0-9]?$').hasMatch(p)) {
    bits = min(bits, 40);
  }

  final level = bits < 40
      ? Strength.weak
      : bits < 60
      ? Strength.fair
      : bits < 80
      ? Strength.good
      : Strength.strong;
  return StrengthResult(bits, level);
}
