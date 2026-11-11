import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

import '../../core/crypto/crypto_service.dart';
import '../../core/storage/database_manager.dart';
import '../../core/storage/vault_header_store.dart';

class WrongPasswordException implements Exception {}

class LockedOutException implements Exception {
  LockedOutException(this.remaining);
  final Duration remaining;
}

class OrphanVaultException implements Exception {}

class AuthService {
  AuthService(this._crypto, this._db);

  final CryptoService _crypto;
  final DatabaseManager _db;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final VaultHeaderStore _header = VaultHeaderStore();
  final LocalAuthentication _localAuth = LocalAuthentication();

  static const _kSalt = 'muhur_salt';
  static const _kWrapped = 'muhur_wrapped_dek';
  static const _kBioDek = 'muhur_bio_dek';
  static const _kFails = 'muhur_fail_count';
  static const _kLockUntil = 'muhur_lock_until';
  static const _kPendingSalt = 'muhur_salt_pending';
  static const _kPendingWrapped = 'muhur_wrapped_pending';

  SecretKey? _dek;
  bool _dialogOpen = false;
  DateTime? _graceUntil;

  /// Sistem biyometrik penceresi açıkken (veya hemen sonrasında) true.
  bool get systemDialogActive =>
      _dialogOpen ||
      (_graceUntil != null && DateTime.now().isBefore(_graceUntil!));

  DatabaseManager get database => _db;
  bool get isUnlocked => _dek != null && _db.isOpen;
  SecretKey get dek => _dek ?? (throw StateError('Kasa kilitli.'));

  /// Eski sürümde secure storage'a yazılmış başlığı dosyaya taşır (bir kez).
  Future<void> _migrateLegacyHeader() async {
    if (await _header.containsKey(_kSalt)) return;
    try {
      final salt = await _storage.read(key: _kSalt);
      final wrapped = await _storage.read(key: _kWrapped);
      if (salt == null || wrapped == null) return;
      final pSalt = await _storage.read(key: _kPendingSalt);
      final pWrapped = await _storage.read(key: _kPendingWrapped);
      await _header.replace({
        _kSalt: salt,
        _kWrapped: wrapped,
        if (pSalt != null && pWrapped != null) ...{
          _kPendingSalt: pSalt,
          _kPendingWrapped: pWrapped,
        },
      });
      // Diskten yeniden okuyup doğrula, sonra eski kopyaları sil.
      _header.invalidate();
      if (await _header.read(_kSalt) == salt &&
          await _header.read(_kWrapped) == wrapped) {
        for (final k in [_kSalt, _kWrapped, _kPendingSalt, _kPendingWrapped]) {
          await _storage.delete(key: k);
        }
      }
    } catch (_) {
      // Secure storage okunamadı: taşınacak bir şey yok.
    }
  }

  /// Keystore sıfırlanmış/okunamaz ise secure storage'ı temizleyip null döner.
  Future<String?> _secureRead(String key) async {
    try {
      return await _storage.read(key: key);
    } catch (_) {
      try {
        await _storage.deleteAll();
      } catch (_) {}
      return null;
    }
  }

  Future<bool> vaultExists() async {
    await _migrateLegacyHeader();
    return _header.containsKey(_kSalt);
  }

  /// İlk kurulum. Diskte eski bir veritabanı varsa [replaceExisting] olmadan silmez.
  Future<void> createVault(
    String password, {
    bool replaceExisting = false,
  }) async {
    if (await vaultExists()) throw StateError('Kasa zaten var.');
    if (!replaceExisting && await _db.hasDatabaseFile()) {
      throw OrphanVaultException();
    }
    final m = await _crypto.createVault(password);
    await _db.deleteFile();
    await _header.replace({
      _kSalt: base64Encode(m.salt),
      _kWrapped: base64Encode(m.wrappedDek),
      _kPendingSalt: null,
      _kPendingWrapped: null,
    });
    try {
      await _clearFailures();
      await _storage.delete(key: _kBioDek);
    } catch (_) {
      try {
        await _storage.deleteAll();
      } catch (_) {}
    }
    await _openWith(m.dek);
  }

  /// Ana parola ile kilit açma.
  Future<void> unlockWithPassword(String password) async {
    final remaining = await lockoutRemaining();
    if (remaining > Duration.zero) throw LockedOutException(remaining);

    SecretKey key;
    try {
      key = await _unwrap(password);
    } catch (_) {
      await _registerFailure();
      throw WrongPasswordException();
    }
    await _clearFailures();
    await _openWith(key);
  }

  /// Parolayla DEK'i açar. Eski sürümden kalan yarım parola değişimini de toparlar.
  Future<SecretKey> _unwrap(String password) async {
    await _migrateLegacyHeader();
    final salt = await _header.read(_kSalt);
    final wrapped = await _header.read(_kWrapped);
    if (salt != null && wrapped != null) {
      try {
        final key = await _crypto.unlock(
          password,
          base64Decode(salt),
          base64Decode(wrapped),
        );
        await _dropPending();
        return key;
      } catch (_) {
        // Asıl çift açılmadı; geçici çift varsa onu dene.
      }
    }
    final pSalt = await _header.read(_kPendingSalt);
    final pWrapped = await _header.read(_kPendingWrapped);
    if (pSalt == null || pWrapped == null) throw WrongPasswordException();
    final key = await _crypto.unlock(
      password,
      base64Decode(pSalt),
      base64Decode(pWrapped),
    );
    await _header.replace({
      _kSalt: pSalt,
      _kWrapped: pWrapped,
      _kPendingSalt: null,
      _kPendingWrapped: null,
    });
    return key;
  }

  Future<void> _dropPending() async {
    if (!await _header.containsKey(_kPendingSalt)) return;
    await _header.replace({_kPendingSalt: null, _kPendingWrapped: null});
  }

  /// Ana parolayı değiştirir. DEK aynı kalır, yalnızca yeni parolayla yeniden sarılır.
  Future<void> changePassword(String oldPassword, String newPassword) async {
    final remaining = await lockoutRemaining();
    if (remaining > Duration.zero) throw LockedOutException(remaining);
    if (!isUnlocked) throw StateError('Kasa kilitli.');

    SecretKey key;
    try {
      key = await _unwrap(oldPassword);
    } catch (_) {
      await _registerFailure();
      throw WrongPasswordException();
    }
    await _clearFailures();

    final m = await _crypto.rewrap(key, newPassword);
    // Yazmadan önce yeni çiftin gerçekten açıldığını doğrula.
    await _crypto.unlock(newPassword, m.salt, m.wrappedDek);

    await _header.replace({
      _kSalt: base64Encode(m.salt),
      _kWrapped: base64Encode(m.wrappedDek),
      _kPendingSalt: null,
      _kPendingWrapped: null,
    });
  }

  Future<void> lock() async {
    _dek = null;
    await _db.close();
  }

  Future<void> _openWith(SecretKey key) async {
    final dbKey = await _crypto.deriveDbKey(key);
    await _db.open(dbKey);
    _dek = key;
  }

  // ---- Biyometrik ----

  Future<bool> biometricAvailable() async {
    try {
      return await _localAuth.canCheckBiometrics &&
          await _localAuth.isDeviceSupported();
    } catch (_) {
      return false;
    }
  }

  Future<bool> biometricEnabled() async => await _secureRead(_kBioDek) != null;

  Future<bool> _authenticate(String reason) async {
    _dialogOpen = true;
    try {
      return await _localAuth.authenticate(localizedReason: reason);
    } catch (_) {
      return false;
    } finally {
      _dialogOpen = false;
      _graceUntil = DateTime.now().add(const Duration(seconds: 2));
    }
  }

  /// Kasa açıkken çağrılır: doğrulama sonrası DEK donanım destekli depoya yazılır.
  Future<bool> enableBiometrics(String reason) async {
    if (!isUnlocked) return false;
    if (!await _authenticate(reason)) return false;
    final bytes = await dek.extractBytes();
    await _storage.write(key: _kBioDek, value: base64Encode(bytes));
    return true;
  }

  Future<void> disableBiometrics() => _storage.delete(key: _kBioDek);

  Future<bool> unlockWithBiometrics(String reason) async {
    if (!await biometricEnabled()) return false;
    if (!await _authenticate(reason)) return false;
    final b64 = await _secureRead(_kBioDek);
    if (b64 == null) return false;
    try {
      await _openWith(SecretKey(base64Decode(b64)));
      return true;
    } catch (_) {
      return false;
    }
  }

  // ---- Yanlış deneme sınırı ----

  Future<Duration> lockoutRemaining() async {
    final raw = await _secureRead(_kLockUntil);
    if (raw == null) return Duration.zero;
    final until = DateTime.fromMillisecondsSinceEpoch(int.parse(raw));
    final left = until.difference(DateTime.now());
    return left.isNegative ? Duration.zero : left;
  }

  Future<void> _registerFailure() async {
    final fails = (int.tryParse(await _secureRead(_kFails) ?? '0') ?? 0) + 1;
    await _storage.write(key: _kFails, value: '$fails');
    if (fails >= 5) {
      final exp = min(fails - 5, 7);
      final secs = min(
        3600,
        30 * (1 << exp),
      ); // 30 sn, 60 sn, ... en çok 1 saat
      final until = DateTime.now().add(Duration(seconds: secs));
      await _storage.write(
        key: _kLockUntil,
        value: '${until.millisecondsSinceEpoch}',
      );
    }
  }

  Future<void> _clearFailures() async {
    await _storage.delete(key: _kFails);
    await _storage.delete(key: _kLockUntil);
  }
}
