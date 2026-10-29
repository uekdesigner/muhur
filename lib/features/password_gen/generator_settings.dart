import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'password_generator.dart';

/// Şifre oluşturucu ayarlarını cihazda güvenli şekilde kalıcı tutar.
/// Alan kartlarındaki "kalkan" ikonu, buradaki ayarlarla doğrudan üretim
/// yapar; "ayarlar" ikonu ise bu ayarları değiştirip kaydeder.
class GeneratorSettings {
  GeneratorSettings._();
  static final GeneratorSettings instance = GeneratorSettings._();

  static const _kLength = 'muhur_gen_length';
  static const _kLower = 'muhur_gen_lower';
  static const _kUpper = 'muhur_gen_upper';
  static const _kDigits = 'muhur_gen_digits';
  static const _kSymbols = 'muhur_gen_symbols';
  static const _kAvoidAmbiguous = 'muhur_gen_avoid_ambiguous';

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  GeneratorOptions options = const GeneratorOptions();

  Future<void> load() async {
    final length = int.tryParse(await _storage.read(key: _kLength) ?? '');
    final lower = await _storage.read(key: _kLower);
    final upper = await _storage.read(key: _kUpper);
    final digits = await _storage.read(key: _kDigits);
    final symbols = await _storage.read(key: _kSymbols);
    final avoid = await _storage.read(key: _kAvoidAmbiguous);
    options = GeneratorOptions(
      length: length ?? options.length,
      lower: lower == null ? options.lower : lower == '1',
      upper: upper == null ? options.upper : upper == '1',
      digits: digits == null ? options.digits : digits == '1',
      symbols: symbols == null ? options.symbols : symbols == '1',
      avoidAmbiguous: avoid == null ? options.avoidAmbiguous : avoid == '1',
    );
  }

  Future<void> save(GeneratorOptions o) async {
    options = o;
    await _storage.write(key: _kLength, value: '${o.length}');
    await _storage.write(key: _kLower, value: o.lower ? '1' : '0');
    await _storage.write(key: _kUpper, value: o.upper ? '1' : '0');
    await _storage.write(key: _kDigits, value: o.digits ? '1' : '0');
    await _storage.write(key: _kSymbols, value: o.symbols ? '1' : '0');
    await _storage.write(
      key: _kAvoidAmbiguous,
      value: o.avoidAmbiguous ? '1' : '0',
    );
  }
}
