import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/core/crypto/crypto_service.dart';

void main() {
  // Testlerde hız için düşük Argon2id değerleri
  final crypto = CryptoService(
    memoryKiB: 1024,
    iterations: 1,
    backupMemoryKiB: 1024,
    backupIterations: 1,
  );

  test('doğru parola kasayı açar', () async {
    final v = await crypto.createVault('dogru-parola');
    final dek = await crypto.unlock(
      'dogru-parola',
      v.salt,
      v.wrappedDek,
      wrapVersion: v.wrapVersion,
      memoryKiB: v.memoryKiB,
      iterations: v.iterations,
    );
    expect(await dek.extractBytes(), await v.dek.extractBytes());
  });

  test('yanlış parola reddedilir', () async {
    final v = await crypto.createVault('dogru-parola');
    expect(
      () => crypto.unlock(
        'yanlis-parola',
        v.salt,
        v.wrappedDek,
        wrapVersion: v.wrapVersion,
        memoryKiB: v.memoryKiB,
        iterations: v.iterations,
      ),
      throwsException,
    );
  });
  test('başlıktaki KDF değerine dokunulan sarım açılmaz (AAD)', () async {
    final v = await crypto.createVault('p');
    expect(
      () => crypto.unlock(
        'p',
        v.salt,
        v.wrappedDek,
        wrapVersion: 2,
        memoryKiB: v.memoryKiB + 1024,
        iterations: v.iterations,
      ),
      throwsException,
    );
  });

  test('alan şifrele ve çöz', () async {
    final v = await crypto.createVault('p');
    final enc = await crypto.encryptField(
      'TR330006100519786457841326',
      v.dek,
      entryId: 1,
      label: 'IBAN',
    );
    expect(enc.contains('TR33'), isFalse);
    final dec = await crypto.decryptField(
      enc,
      v.dek,
      entryId: 1,
      label: 'IBAN',
    );
    expect(dec, 'TR330006100519786457841326');
  });

  test('aynı metin her seferinde farklı şifreli çıktı verir (nonce)', () async {
    final v = await crypto.createVault('p');
    final a = await crypto.encryptField('abc', v.dek, entryId: 1, label: 'x');
    final b = await crypto.encryptField('abc', v.dek, entryId: 1, label: 'x');
    expect(a == b, isFalse);
  });

  test('başka kayda/etikete taşınan şifreli değer çözülmez (AAD)', () async {
    final v = await crypto.createVault('p');
    final enc = await crypto.encryptField(
      'gizli',
      v.dek,
      entryId: 1,
      label: 'Şifre',
    );
    expect(
      () => crypto.decryptField(enc, v.dek, entryId: 2, label: 'Şifre'),
      throwsA(anything),
    );
  });

  test('DB anahtarı 64 hex karakter ve tutarlı', () async {
    final v = await crypto.createVault('p');
    final k1 = await crypto.deriveDbKey(v.dek);
    final k2 = await crypto.deriveDbKey(v.dek);
    expect(k1.length, 64);
    expect(k1, k2);
  });

  group('yedek', () {
    Future<Map<String, dynamic>> sealed() async {
      final env = await crypto.sealBackup(
        utf8.encode('merhaba'),
        'yedek-parola',
      );
      return jsonDecode(jsonEncode(env)) as Map<String, dynamic>;
    }

    test('gidiş-dönüş', () async {
      final plain = await crypto.openBackup(await sealed(), 'yedek-parola');
      expect(utf8.decode(plain), 'merhaba');
    });

    test('yanlış parola BackupPasswordException verir', () async {
      final env = await sealed();
      await expectLater(
        crypto.openBackup(env, 'yanlis'),
        throwsA(isA<BackupPasswordException>()),
      );
    });

    test('kurcalanan zarf açılmaz (AAD)', () async {
      final tampers = <void Function(Map<String, dynamic>)>[
        (e) => (e['kdf'] as Map)['m'] = 2048,
        (e) => (e['kdf'] as Map)['t'] = 2,
        (e) => (e['kdf'] as Map)['salt'] = base64Encode(List.filled(16, 7)),
        (e) => e['format'] = 1,
      ];
      for (final tamper in tampers) {
        final env = await sealed();
        tamper(env);
        await expectLater(
          crypto.openBackup(env, 'yedek-parola'),
          throwsA(isA<BackupPasswordException>()),
        );
      }
    });

    test('geçersiz zarf reddedilir', () async {
      final bad = await sealed();
      bad['app'] = 'baska';
      await expectLater(
        crypto.openBackup(bad, 'yedek-parola'),
        throwsA(isA<FormatException>()),
      );
      final huge = await sealed();
      (huge['kdf'] as Map)['m'] = 999999999;
      await expectLater(
        crypto.openBackup(huge, 'yedek-parola'),
        throwsA(isA<FormatException>()),
      );
    });
  });
}
