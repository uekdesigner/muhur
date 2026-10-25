import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/features/auth/password_policy.dart';

void main() {
  test('kurala uyan parolalar', () {
    expect(checkPassword('Abcdef1!').ok, isTrue); // tam 8 karakter
    expect(checkPassword('Şifre123!').ok, isTrue); // Türkçe harfli
  });

  test('kurala uymayan parolalar', () {
    expect(checkPassword('Abc1234').length, isFalse); // 7 karakter
    expect(checkPassword('abcdefg1!').upper, isFalse);
    expect(checkPassword('ABCDEFG1!').lower, isFalse);
    expect(checkPassword('Abcdefgh!').digit, isFalse);
    expect(checkPassword('Abcdefg12').special, isFalse);
    expect(checkPassword('Abcdefg1 ').special, isFalse); // boşluk özel sayılmaz
  });
}
