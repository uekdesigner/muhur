import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/core/crypto/totp.dart';

void main() {
  final k1 = '12345678901234567890'.codeUnits;

  test('RFC 6238 SHA1 test vektörleri', () async {
    final t = Totp.raw(k1, digits: 8);
    const cases = {
      59: '94287082',
      1111111109: '07081804',
      1111111111: '14050471',
      1234567890: '89005924',
      2000000000: '69279037',
    };
    for (final e in cases.entries) {
      expect(await t.codeAt(e.key ~/ 30), e.value);
    }
  });

  test('RFC 6238 SHA256 ve SHA512', () async {
    final s256 = Totp.raw(
      '12345678901234567890123456789012'.codeUnits,
      digits: 8,
      algorithm: 'SHA256',
    );
    final s512 = Totp.raw(
      ('${'1234567890' * 6}1234').codeUnits,
      digits: 8,
      algorithm: 'SHA512',
    );
    expect(await s256.codeAt(1), '46119246');
    expect(await s512.codeAt(1), '90693936');
  });

  test('Base32 anahtar ve otpauth bağlantısı çözülür', () {
    final a = Totp.parse('gezd gnbv gy3t qojq gezd gnbv gy3t qojq');
    expect(a?.secret, k1);
    expect(a?.digits, 6);
    final b = Totp.parse(
      'otpauth://totp/Site:ali@x.com?secret=GEZDGNBVGY3TQOJQGEZDGNBVGY3TQOJQ'
      '&issuer=Site&digits=8&period=30',
    );
    expect(b?.digits, 8);
    expect(b?.secret, k1);
    expect(Totp.parse('abc!'), isNull);
    expect(Totp.parse('otpauth://hotp/x?secret=GEZDGNBVGY3TQOJQ'), isNull);
  });
}
