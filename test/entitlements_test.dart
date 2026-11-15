import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/core/entitlements/entitlements.dart';

void main() {
  test('ücretsiz limit kategori başına 3', () {
    final e = Entitlements.instance;
    expect(e.canAdd(0), isTrue);
    expect(e.canAdd(2), isTrue);
    expect(e.canAdd(3), isFalse);
    expect(e.canAdd(10), isFalse);
  });

  test('Pro sınırsız', () {
    final e = Entitlements.instance..setPro(true);
    expect(e.canAdd(1000), isTrue);
    e.setPro(false);
  });
}
