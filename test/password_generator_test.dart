import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/features/password_gen/password_generator.dart';

void main() {
  final gen = PasswordGenerator();

  test('uzunluk ve tüm seçili karakter türleri bulunur', () {
    for (var i = 0; i < 200; i++) {
      final p = gen.generate(const GeneratorOptions(length: 16));
      expect(p.length, 16);
      expect(RegExp(r'[a-z]').hasMatch(p), isTrue);
      expect(RegExp(r'[A-Z]').hasMatch(p), isTrue);
      expect(RegExp(r'[0-9]').hasMatch(p), isTrue);
      expect(RegExp(r'[^A-Za-z0-9]').hasMatch(p), isTrue);
    }
  });

  test('benzer karakterler hariç tutulabilir', () {
    for (var i = 0; i < 200; i++) {
      final p = gen.generate(
        const GeneratorOptions(length: 40, avoidAmbiguous: true),
      );
      expect(RegExp(r'[O0oIl1|]').hasMatch(p), isFalse);
    }
  });

  test('yalnızca rakam seçilince sadece rakam üretir', () {
    final p = gen.generate(
      const GeneratorOptions(
        length: 12,
        lower: false,
        upper: false,
        symbols: false,
      ),
    );
    expect(RegExp(r'^[0-9]{12}$').hasMatch(p), isTrue);
  });

  test('güç tahmini mantıklı sıralanır', () {
    expect(estimateStrength('password1').level, Strength.weak);
    expect(estimateStrength('123456').level, Strength.weak);
    expect(estimateStrength('Summer2024!').level, isNot(Strength.strong));
    final strong = gen.generate(const GeneratorOptions(length: 24));
    expect(estimateStrength(strong).level, Strength.strong);
  });
}
