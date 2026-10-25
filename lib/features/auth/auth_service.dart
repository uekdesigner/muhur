import 'dart:convert';
import 'dart:math';

import 'package:cryptography/cryptography.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';

import '../../core/crypto/crypto_service.dart';
import '../../core/storage/database_manager.dart';

class WrongPasswordException implements Exception {}

class LockedOutException implements Exception {
  LockedOutException(this.remaining);
  final Duration remaining;
}

class AuthService {
  AuthService(this._crypto, this._db);

  final CryptoService _crypto;
  final DatabaseManager _db;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();
  final LocalAuthentication _localAuth = LocalAuthentication();

  static const _kSalt = 'muhur_salt';
  static const _kWrapped = 'muhur_wrapped_dek';
  static const _kBioDek = 'muhur_bio_dek';
  static const _kFails = 'muhur_fail_count';
  static const _kLockUntil = 'muhur_lock_until';

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

  Future<bool> vaultExists() => _storage.containsKey(key: _kSalt);

  /// İlk kurulum.
  Future<void> createVault(String password) async {
    final m = await _crypto.createVault(password);
    await _db.deleteFile();
    await _storage.write(key: _kSalt, value: base64Encode(m.salt));
    await _storage.write(key: _kWrapped, value: base64Encode(m.wrappedDek));
    await _openWith(m.dek);
  }

  /// Ana parola ile kilit açma.
  Future<void> unlockWithPassword(String password) async {
    final remaining = await lockoutRemaining();
    if (remaining > Duration.zero) throw LockedOutException(remaining);

    final salt = base64Decode((await _storage.read(key: _kSalt))!);
    final wrapped = base64Decode((await _storage.read(key: _kWrapped))!);

    SecretKey key;
    try {
      key = await _crypto.unlock(password, salt, wrapped);
    } catch (_) {
      await _registerFailure();
      throw WrongPasswordException();
    }
    await _clearFailures();
    await _openWith(key);
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

  Future<bool> biometricEnabled() => _storage.containsKey(key: _kBioDek);

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
    final b64 = await _storage.read(key: _kBioDek);
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
    final raw = await _storage.read(key: _kLockUntil);
    if (raw == null) return Duration.zero;
    final until = DateTime.fromMillisecondsSinceEpoch(int.parse(raw));
    final left = until.difference(DateTime.now());
    return left.isNegative ? Duration.zero : left;
  }

  Future<void> _registerFailure() async {
    final fails =
        (int.tryParse(await _storage.read(key: _kFails) ?? '0') ?? 0) + 1;
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
