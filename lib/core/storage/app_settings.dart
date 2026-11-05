import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSettings {
  AppSettings._();
  static final AppSettings instance = AppSettings._();

  static const _kAutoLock = 'muhur_autolock_secs';
  static const _kLocale = 'muhur_locale';
  static const _kAutoBackup = 'muhur_autobackup';
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Otomatik kilit için izin verilen en uzun süre (saniye).
  static const int maxAutoLockSeconds = 120;
  static const int minCopySeconds = 5;
  static const int maxCopySeconds = 60;
  static const int minScreenshotSeconds = 5;
  static const int maxScreenshotSeconds = 60;
  static const int minTrashDays = 1;
  static const int maxTrashDays = 30;

  /// Arka planda kaç saniye sonra kilitlensin (0 = hemen).
  int autoLockSeconds = 0;

  /// Kopyalanan verinin panoda kalma süresi; kasa da en az bu kadar kilitlenmez.
  int copySeconds = 30;
  static const _kCopySecs = 'muhur_copy_secs';

  /// Ekran görüntüsüne izin verildiğinde koruma kaç saniye sonra geri açılsın.
  int screenshotSeconds = 15;
  static const _kShotSecs = 'muhur_screenshot_secs';

  /// Silinen kayıtlar çöp kutusunda kaç gün saklansın.
  int trashDays = 30;
  static const _kTrashDays = 'muhur_trash_days';

  /// null = sistem dili
  final ValueNotifier<Locale?> locale = ValueNotifier<Locale?>(null);

  /// Otomatik yedek açık mı? (Yedek özelliği henüz yok, şimdilik hep kapalı.)
  final ValueNotifier<bool> autoBackup = ValueNotifier<bool>(false);

  static const _kHelpAnim = 'muhur_help_anim';
  static const _kHelpSeen = 'muhur_help_seen';
  static const _kSmartGuide = 'muhur_smart_guide';
  static const _kTipsSeen = 'muhur_tips_seen';
  static const defaultPanelPercent = 80;
  static const _kPanelPct = 'muhur_panel_pct';

  /// Panel koyuluğu (%30-%100). Varsayılan %80.
  final ValueNotifier<int> panelPercent = ValueNotifier<int>(
    defaultPanelPercent,
  );

  /// ? ikonunun dikkat çekme animasyonu açık mı? (varsayılan: açık)
  final ValueNotifier<bool> helpAnimation = ValueNotifier<bool>(true);

  /// Akıllı yönlendirme: özelliklerde ilk kullanımda kısa ipuçları.
  final ValueNotifier<bool> smartGuide = ValueNotifier<bool>(false);

  /// ? animasyonu bir kez gösterildi mi?
  bool helpSeen = false;
  final Set<String> _tipsSeen = {};

  Future<void> load() async {
    autoLockSeconds =
        (int.tryParse(await _storage.read(key: _kAutoLock) ?? '') ?? 0)
            .clamp(0, maxAutoLockSeconds)
            .toInt();
    copySeconds =
        (int.tryParse(await _storage.read(key: _kCopySecs) ?? '') ?? 30)
            .clamp(minCopySeconds, maxCopySeconds)
            .toInt();
    screenshotSeconds =
        (int.tryParse(await _storage.read(key: _kShotSecs) ?? '') ?? 15)
            .clamp(minScreenshotSeconds, maxScreenshotSeconds)
            .toInt();
    trashDays =
        (int.tryParse(await _storage.read(key: _kTrashDays) ?? '') ?? 30)
            .clamp(minTrashDays, maxTrashDays)
            .toInt();
    final code = await _storage.read(key: _kLocale);
    locale.value = code == null ? null : Locale(code);
    autoBackup.value = (await _storage.read(key: _kAutoBackup)) == '1';
    helpAnimation.value = (await _storage.read(key: _kHelpAnim)) != '0';
    helpSeen = (await _storage.read(key: _kHelpSeen)) == '1';
    smartGuide.value = (await _storage.read(key: _kSmartGuide)) == '1';
    _tipsSeen
      ..clear()
      ..addAll(
        (await _storage.read(key: _kTipsSeen) ?? '')
            .split(',')
            .where((e) => e.isNotEmpty),
      );
    panelPercent.value =
        (int.tryParse(await _storage.read(key: _kPanelPct) ?? '') ??
                defaultPanelPercent)
            .clamp(30, 100)
            .toInt();
  }

  Future<void> setAutoLock(int seconds) async {
    autoLockSeconds = seconds;
    await _storage.write(key: _kAutoLock, value: '$seconds');
  }

  Future<void> setCopySeconds(int seconds) async {
    copySeconds = seconds.clamp(minCopySeconds, maxCopySeconds).toInt();
    await _storage.write(key: _kCopySecs, value: '$copySeconds');
  }

  Future<void> setScreenshotSeconds(int seconds) async {
    screenshotSeconds = seconds
        .clamp(minScreenshotSeconds, maxScreenshotSeconds)
        .toInt();
    await _storage.write(key: _kShotSecs, value: '$screenshotSeconds');
  }

  Future<void> setTrashDays(int days) async {
    trashDays = days.clamp(minTrashDays, maxTrashDays).toInt();
    await _storage.write(key: _kTrashDays, value: '$trashDays');
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

  Future<void> setHelpAnimation(bool on) async {
    helpAnimation.value = on;
    await _storage.write(key: _kHelpAnim, value: on ? '1' : '0');
  }

  Future<void> setSmartGuide(bool on) async {
    smartGuide.value = on;
    await _storage.write(key: _kSmartGuide, value: on ? '1' : '0');
  }

  Future<void> markHelpSeen() async {
    if (helpSeen) return;
    helpSeen = true;
    await _storage.write(key: _kHelpSeen, value: '1');
  }

  bool tipSeen(String id) => _tipsSeen.contains(id);

  Future<void> markTipSeen(String id) async {
    if (!_tipsSeen.add(id)) return;
    await _storage.write(key: _kTipsSeen, value: _tipsSeen.join(','));
  }

  /// Yardım animasyonunu ve tüm ipuçlarını yeniden gösterir.
  Future<void> resetTips() async {
    helpSeen = false;
    _tipsSeen.clear();
    await _storage.write(key: _kHelpSeen, value: '0');
    await _storage.delete(key: _kTipsSeen);
  }

  Future<void> savePanelPercent() =>
      _storage.write(key: _kPanelPct, value: '${panelPercent.value}');
}
