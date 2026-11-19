import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/features/scanner/codes_scan_screen.dart';

void main() {
  group('Yedek kod çıkarma', () {
    test('Google biçimi ve numaralı satır', () {
      expect(backupCodesIn('1234 5678'), ['1234 5678']);
      expect(backupCodesIn('1. 1234 5678'), ['1234 5678']);
      expect(backupCodesIn('• 4821 7730'), ['4821 7730']);
    });

    test('iki sütun tek satıra birleşince ayrılır', () {
      expect(backupCodesIn('1234 5678   9012 3456'), [
        '1234 5678',
        '9012 3456',
      ]);
    });

    test('tireli ve uzun kodlar', () {
      expect(backupCodesIn('abcde-12345'), ['abcde-12345']);
      expect(backupCodesIn('ABCDE-FGH12-IJKL3-MNOP4-QRST5'), [
        'ABCDE-FGH12-IJKL3-MNOP4-QRST5',
      ]);
      expect(backupCodesIn('x7k2m9p4q1w8'), ['x7k2m9p4q1w8']);
    });

    test('başlık ve cümleler elenir', () {
      expect(backupCodesIn('Backup codes'), isEmpty);
      expect(backupCodesIn('Generated on 2026'), isEmpty);
      expect(backupCodesIn('Nov 19 2026 12'), isEmpty);
      expect(backupCodesIn('Account: user@gmail.com'), isEmpty);
    });
  });
}
