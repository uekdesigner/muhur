import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSettings {
  AppSettings._();
  static final AppSettings instance = AppSettings._();

  static const _kAutoLock = 'muhur_autolock_secs';
  static const _kLocale = 'muhur_locale';
  static const _kAutoBackup = 'muhur_autobackup';
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Arka planda kaç saniye sonra kilitlensin (0 = hemen).
  int autoLockSeconds = 0;

  /// null = sistem dili
  final ValueNotifier<Locale?> locale = ValueNotifier<Locale?>(null);

  /// Otomatik yedek açık mı? (Yedek özelliği henüz yok, şimdilik hep kapalı.)
  final ValueNotifier<bool> autoBackup = ValueNotifier<bool>(false);

  Future<void> load() async {
    autoLockSeconds =
        int.tryParse(await _storage.read(key: _kAutoLock) ?? '') ?? 0;
    final code = await _storage.read(key: _kLocale);
    locale.value = code == null ? null : Locale(code);
    autoBackup.value = (await _storage.read(key: _kAutoBackup)) == '1';
  }

  Future<void> setAutoLock(int seconds) async {
    autoLockSeconds = seconds;
    await _storage.write(key: _kAutoLock, value: '$seconds');
  }

  Future<void> setLocale(Locale? l) async {
    locale.value = l;
    if (l == null) {
      await _storage.delete(key: _kLocale);
    } else {
      await _storage.write(key: _kLocale, value: l.languageCode);
    }
  }

  Future<void> setAutoBackup(bool on) async {
    autoBackup.value = on;
    await _storage.write(key: _kAutoBackup, value: on ? '1' : '0');
  }
}
