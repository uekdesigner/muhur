import 'package:flutter_test/flutter_test.dart';
import 'package:muhurpm/core/crypto/crypto_service.dart';

void main() {
  // Testlerde hız için düşük Argon2id değerleri
  final crypto = CryptoService(memoryKiB: 1024, iterations: 1);

  test('doğru parola kasayı açar', () async {
    final v = await crypto.createVault('dogru-parola');
    final dek = await crypto.unlock('dogru-parola', v.salt, v.wrappedDek);
    expect(await dek.extractBytes(), await v.dek.extractBytes());
  });

  test('yanlış parola reddedilir', () async {
    final v = await crypto.createVault('dogru-parola');
    expect(
      () => crypto.unlock('yanlis-parola', v.salt, v.wrappedDek),
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
}
