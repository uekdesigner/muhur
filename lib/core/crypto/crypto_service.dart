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
  final int memoryKiB; // DEK sarımındaki Argon2id belleği (KiB)
  final int iterations; // DEK sarımındaki Argon2id tur sayısı
  final int wrapVersion; // DEK sarım biçimi (1 = eski, 2 = KDF bağlı)
  VaultKeyMaterial(
    this.salt,
    this.wrappedDek,
    this.dek, {
    this.memoryKiB = CryptoService.legacyMemoryKiB,
    this.iterations = CryptoService.legacyIterations,
    this.wrapVersion = 1,
  });
}

/// Yedek parolası yanlış.
class BackupPasswordException implements Exception {}

class CryptoService {
  /// Test için daha düşük değerler verilebilir; üretimde varsayılanı kullan.
  CryptoService({
    this.memoryKiB = 32768,
    this.iterations = 3,
    this.backupMemoryKiB = 65536,
    this.backupIterations = 3,
  });

  final int memoryKiB;
  final int iterations;
  final int backupMemoryKiB;
  final int backupIterations;
  static final AesGcm _aes = AesGcm.with256bits();
  static final List<int> _dekAad = utf8.encode('muhur-dek-v1');
  static final List<int> _backupAad = utf8.encode('muhur-backup-v1');

  /// Geçerli DEK sarım biçimi. 1 = eski (AAD'a m/t/tuz bağlanmaz), 2 = bağlanır.
  static const int dekWrapVersion = 2;

  /// Başlığında KDF ayarı olmayan eski kasaların sabit değerleri.
  static const int legacyMemoryKiB = 19456;
  static const int legacyIterations = 2;
  static List<int> _dekAadV2(int m, int t, String salt) =>
      utf8.encode('muhur-dek-v2|argon2id|aes-256-gcm|$m|$t|$salt');
  static List<int> _backupAadV2(int m, int t, String salt) =>
      utf8.encode('muhur-backup-v2|argon2id|aes-256-gcm|$m|$t|$salt');
  Uint8List randomBytes(int length) {
    final r = Random.secure();
    return Uint8List.fromList(List.generate(length, (_) => r.nextInt(256)));
  }

  /// Argon2id'i ayrı isolate'te çalıştırır, arayüz donmaz.
  Future<SecretKey> _deriveKek(
    String password,
    List<int> salt, {
    int? memory,
    int? passes,
  }) async {
    final m = memory ?? memoryKiB;
    final it = passes ?? iterations;
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
  /// Kullanılan KDF ayarları ve sarım sürümü malzemeye eklenir (başlığa yazılır).
  Future<VaultKeyMaterial> createVault(String password) async {
    final salt = randomBytes(16);
    final kek = await _deriveKek(password, salt);
    final dek = await _aes.newSecretKey();
    final wrapped = await _seal(
      await dek.extractBytes(),
      kek,
      _dekAadV2(memoryKiB, iterations, base64Encode(salt)),
    );
    return VaultKeyMaterial(
      salt,
      wrapped,
      dek,
      memoryKiB: memoryKiB,
      iterations: iterations,
      wrapVersion: dekWrapVersion,
    );
  }

  /// Mevcut DEK'i yeni ana paroladan türetilen KEK ile yeniden sarar
  /// (DEK değişmez). Her zaman güncel KDF ayarları ve v2 AAD kullanılır.
  Future<VaultKeyMaterial> rewrap(SecretKey dek, String newPassword) async {
    final salt = randomBytes(16);
    final kek = await _deriveKek(newPassword, salt);
    final wrapped = await _seal(
      await dek.extractBytes(),
      kek,
      _dekAadV2(memoryKiB, iterations, base64Encode(salt)),
    );
    return VaultKeyMaterial(
      salt,
      wrapped,
      dek,
      memoryKiB: memoryKiB,
      iterations: iterations,
      wrapVersion: dekWrapVersion,
    );
  }

  /// Kilit açma. Parola yanlışsa Exception fırlatır.
  ///
  /// [wrapVersion] 1 ise eski sabit AAD ve sabit KDF kullanılır (geriye
  /// dönük uyumluluk). 2 ve üzeri için [memoryKiB] ve [iterations] zorunludur;
  /// AAD'a parametreler ve tuz bağlanır. Başlık düz dosyada olduğundan aşırı
  /// değerler reddedilir.
  Future<SecretKey> unlock(
    String password,
    List<int> salt,
    List<int> wrappedDek, {
    int wrapVersion = 1,
    int? memoryKiB,
    int? iterations,
  }) async {
    final int m, t;
    final List<int> aad;
    if (wrapVersion <= 1) {
      m = legacyMemoryKiB;
      t = legacyIterations;
      aad = _dekAad;
    } else {
      m = memoryKiB ?? (throw ArgumentError('wrapVersion 2 için m gerekli.'));
      t = iterations ?? (throw ArgumentError('wrapVersion 2 için t gerekli.'));
      if (m < 8192 || m > 262144 || t < 1 || t > 10) {
        throw const FormatException('Geçersiz kasa KDF ayarları.');
      }
      aad = _dekAadV2(m, t, base64Encode(salt));
    }
    final kek = await _deriveKek(password, salt, memory: m, passes: t);
    try {
      final dekBytes = await _open(wrappedDek, kek, aad);
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

  /// Yedek: parola -> Argon2id -> AES-256-GCM. Dosya zarfını (JSON'a çevrilecek harita) döndürür.
  Future<Map<String, Object?>> sealBackup(
    List<int> plain,
    String password,
  ) async {
    final salt = randomBytes(16);
    final key = await _deriveKek(
      password,
      salt,
      memory: backupMemoryKiB,
      passes: backupIterations,
    );
    final sealed = await _seal(
      plain,
      key,
      _backupAadV2(backupMemoryKiB, backupIterations, base64Encode(salt)),
    );
    return {
      'app': 'muhur',
      'format': 2,
      'kdf': {
        'alg': 'argon2id',
        'm': backupMemoryKiB,
        't': backupIterations,
        'salt': base64Encode(salt),
      },
      'cipher': 'aes-256-gcm',
      'data': base64Encode(sealed),
    };
  }

  /// Yedek zarfını açar. Parola yanlışsa [BackupPasswordException] fırlatır.
  Future<List<int>> openBackup(
    Map<String, dynamic> env,
    String password,
  ) async {
    if (env['app'] != 'muhur' || (env['format'] != 1 && env['format'] != 2)) {
      throw const FormatException('Geçersiz yedek dosyası.');
    }
    final kdf = env['kdf'] as Map<String, dynamic>;
    final m = kdf['m'] as int;
    final it = kdf['t'] as int;
    // Kötü niyetli dosya aşırı bellek veya süre istemesin.
    if (m < 8192 || m > 262144 || it < 1 || it > 10) {
      throw const FormatException('Geçersiz yedek ayarları.');
    }
    final key = await CryptoService(
      memoryKiB: m,
      iterations: it,
    )._deriveKek(password, base64Decode(kdf['salt'] as String));
    final aad = env['format'] == 1
        ? _backupAad
        : _backupAadV2(m, it, kdf['salt'] as String);
    try {
      return await _open(base64Decode(env['data'] as String), key, aad);
    } on SecretBoxAuthenticationError {
      throw BackupPasswordException();
    }
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
