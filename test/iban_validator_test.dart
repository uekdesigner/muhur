import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/features/scanner/iban_validator.dart';

void main() {
  test('geçerli örnek IBAN\'lar', () {
    expect(isValidIban('TR330006100519786457841326'), isTrue);
    expect(isValidIban('DE89370400440532013000'), isTrue);
    expect(isValidIban('GB82WEST12345698765432'), isTrue);
  });

  test('hatalı IBAN reddedilir', () {
    expect(isValidIban('TR330006100519786457841327'), isFalse);
    expect(isValidIban('TR33000610051978645784132'), isFalse); // kısa
  });

  test('OCR metninden IBAN bulunur', () {
    final m = findIbans(
      'Hesap sahibi: Ali Veli\nIBAN: TR33 0006 1005 1978 6457 8413 26\nŞube: 123',
    );
    expect(m.length, 1);
    expect(m.first.value, 'TR330006100519786457841326');
    expect(m.first.corrected, isFalse);
  });

  test('tek karakterlik OCR hatası düzeltilir', () {
    // 0 yerine O okunmuş
    final m = findIbans('TR33 O006 1005 1978 6457 8413 26');
    expect(m.length, 1);
    expect(m.first.value, 'TR330006100519786457841326');
    expect(m.first.corrected, isTrue);
  });

  test('IBAN yoksa boş döner', () {
    expect(findIbans('Merhaba dünya 12345'), isEmpty);
  });
}
