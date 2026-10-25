import 'dart:convert';
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// Kasa oluşturulurken üretilen, diske yazılacak malzeme.
class VaultKeyMaterial {
  final Uint8List salt; // Argon2id salt (gizli değil)
  final Uint8List wrappedDek; // KEK ile şifrelenmiş DEK (gizli değil, şifreli)
  final SecretKey dek; // Bellekte açık anahtar (diske YAZMA)
  VaultKeyMaterial(this.salt, this.wrappedDek, this.dek);
}

class CryptoService {
  /// Test için daha düşük değerler verilebilir; üretimde varsayılanı kullan.
  CryptoService({this.memoryKiB = 19456, this.iterations = 2});

  final int memoryKiB;
  final int iterations;

  static final AesGcm _aes = AesGcm.with256bits();
  static final List<int> _dekAad = utf8.encode('muhur-dek-v1');

  Uint8List randomBytes(int length) {
    final r = Random.secure();
    return Uint8List.fromList(List.generate(length, (_) => r.nextInt(256)));
  }

  /// Argon2id'i ayrı isolate'te çalıştırır, arayüz donmaz.
  Future<SecretKey> _deriveKek(String password, List<int> salt) async {
    final m = memoryKiB;
    final it = iterations;
    final bytes = await Isolate.run(() async {
      final kdf = Argon2id(
        memory: m,
        parallelism: 1,
        iterations: it,
        hashLength: 32,
      );
      final key = await kdf.deriveKeyFromPassword(
        password: password,
        nonce: salt,
      );
      return key.extractBytes();
    });
    return SecretKey(bytes);
  }

  /// İlk kurulum: rastgele DEK üretir, ana paroladan türetilen KEK ile sarar.
  Future<VaultKeyMaterial> createVault(String password) async {
    final salt = randomBytes(16);
    final kek = await _deriveKek(password, salt);
    final dek = await _aes.newSecretKey();
    final wrapped = await _seal(await dek.extractBytes(), kek, _dekAad);
    return VaultKeyMaterial(salt, wrapped, dek);
  }

  /// Kilit açma. Parola yanlışsa Exception fırlatır.
  Future<SecretKey> unlock(
    String password,
    List<int> salt,
    List<int> wrappedDek,
  ) async {
    final kek = await _deriveKek(password, salt);
    try {
      final dekBytes = await _open(wrappedDek, kek, _dekAad);
      return SecretKey(dekBytes);
    } on SecretBoxAuthenticationError {
      throw Exception('Ana parola yanlış.');
    }
  }

  /// SQLCipher için veritabanı anahtarı (DEK'ten HKDF ile türetilir, hex).
  Future<String> deriveDbKey(SecretKey dek) async {
    final hkdf = Hkdf(hmac: Hmac.sha256(), outputLength: 32);
    final k = await hkdf.deriveKey(
      secretKey: dek,
      info: utf8.encode('muhur-db-v1'),
    );
    final bytes = await k.extractBytes();
    return bytes.map((b) => b.toRadixString(16).padLeft(2, '0')).join();
  }

  /// Alan şifreleme. AAD kayda/etikete bağlar: şifreli değer başka alana taşınırsa çözülmez.
  Future<String> encryptField(
    String plain,
    SecretKey dek, {
    required int entryId,
    required String label,
  }) async {
    final aad = utf8.encode('muhur-field-v1|$entryId|$label');
    final sealed = await _seal(utf8.encode(plain), dek, aad);
    return base64Encode(sealed);
  }

  Future<String> decryptField(
    String stored,
    SecretKey dek, {
    required int entryId,
    required String label,
  }) async {
    final aad = utf8.encode('muhur-field-v1|$entryId|$label');
    final bytes = await _open(base64Decode(stored), dek, aad);
    return utf8.decode(bytes);
  }

  /// Çıktı: nonce(12) + şifreli veri + tag(16)
  Future<Uint8List> _seal(List<int> data, SecretKey key, List<int> aad) async {
    final box = await _aes.encrypt(data, secretKey: key, aad: aad);
    return Uint8List.fromList(box.concatenation());
  }

  Future<List<int>> _open(List<int> data, SecretKey key, List<int> aad) {
    final box = SecretBox.fromConcatenation(
      data,
      nonceLength: 12,
      macLength: 16,
    );
    return _aes.decrypt(box, secretKey: key, aad: aad);
  }
}
