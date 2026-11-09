import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSettings {
  AppSettings._();
  static final AppSettings instance = AppSettings._();

  static const _kAutoLock = 'muhur_autolock_secs';
  static const _kLocale = 'muhur_locale';
  static const _kReminderDays = 'muhur_backup_reminder_days';
  static const _kLastBackup = 'muhur_last_backup';
  static const _kSnoozeUntil = 'muhur_backup_snooze';
  static const _kReminderBase = 'muhur_backup_base';
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

  /// Yedek hatırlatma aralığı (gün). 0 = kapalı.
  final ValueNotifier<int> backupReminderDays = ValueNotifier<int>(30);
  static const maxReminderDays = 90;

  /// Son yedeğin zamanı (UTC). Hiç yedek alınmadıysa null.
  final ValueNotifier<DateTime?> lastBackup = ValueNotifier<DateTime?>(null);

  /// "Sonra" denince hatırlatma bu zamana kadar gizlenir.
  final ValueNotifier<DateTime?> snoozeUntil = ValueNotifier<DateTime?>(null);

  /// Hiç yedek alınmadıysa hatırlatma sayımı buradan başlar (ilk çalıştırma).
  DateTime _reminderBase = DateTime.now().toUtc();

  Listenable get backupChanges =>
      Listenable.merge([backupReminderDays, lastBackup, snoozeUntil]);

  /// Son yedekten bu yana geçen gün; hiç yedek yoksa null.
  int? get daysSinceBackup {
    final last = lastBackup.value;
    return last == null ? null : DateTime.now().toUtc().difference(last).inDays;
  }

  /// Yedek eski mi? Hatırlatma kapalıysa 30 gün esas alınır.
  bool get backupOverdue {
    final days = daysSinceBackup;
    if (days == null) return true;
    final limit = backupReminderDays.value > 0 ? backupReminderDays.value : 30;
    return days >= limit;
  }

  /// Ana ekranda hatırlatma gösterilmeli mi?
  bool get backupDue {
    final every = backupReminderDays.value;
    if (every == 0) return false;
    final now = DateTime.now().toUtc();
    final until = snoozeUntil.value;
    if (until != null && now.isBefore(until)) return false;
    final since = lastBackup.value ?? _reminderBase;
    return now.difference(since).inDays >= every;
  }

  static const _kHelpSeen = 'muhur_help_seen';
  static const _kSmartGuide = 'muhur_smart_guide';
  static const _kTipsSeen = 'muhur_tips_seen';
  static const _kHaptics = 'muhur_haptics';
  static const _kReduceAnim = 'muhur_reduce_anim';
  static const defaultPanelPercent = 80;
  static const _kPanelPct = 'muhur_panel_pct';

  /// Panel koyuluğu (%30-%100). Varsayılan %80.
  final ValueNotifier<int> panelPercent = ValueNotifier<int>(
    defaultPanelPercent,
  );

  static const _kBg = 'muhur_bg';
  static const _kBgDim = 'muhur_bg_dim';

  /// Seçili arka plan kimliği (varsayılan: stone).
  final ValueNotifier<String> background = ValueNotifier<String>('bronze');

  /// Arka plan karartması %0-%90 (varsayılan %60, eski görünümle aynı).
  final ValueNotifier<int> backgroundDim = ValueNotifier<int>(60);

  /// Akıllı yönlendirme: özelliklerde ilk kullanımda kısa ipuçları.
  final ValueNotifier<bool> smartGuide = ValueNotifier<bool>(false);

  /// Titreşim geri bildirimi (parmak izi girişi, kopyalama). Varsayılan: açık.
  final ValueNotifier<bool> haptics = ValueNotifier<bool>(true);

  /// Animasyonları azalt: yardım menüsü, ? animasyonu ve sayfa geçişleri.
  final ValueNotifier<bool> reduceAnimations = ValueNotifier<bool>(false);

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
    backupReminderDays.value =
        (int.tryParse(await _storage.read(key: _kReminderDays) ?? '') ?? 30)
            .clamp(0, maxReminderDays)
            .toInt();
    lastBackup.value = DateTime.tryParse(
      await _storage.read(key: _kLastBackup) ?? '',
    );
    snoozeUntil.value = DateTime.tryParse(
      await _storage.read(key: _kSnoozeUntil) ?? '',
    );
    final base = DateTime.tryParse(
      await _storage.read(key: _kReminderBase) ?? '',
    );
    if (base != null) {
      _reminderBase = base;
    } else {
      await _storage.write(
        key: _kReminderBase,
        value: _reminderBase.toIso8601String(),
      );
    }
    helpSeen = (await _storage.read(key: _kHelpSeen)) == '1';
    smartGuide.value = (await _storage.read(key: _kSmartGuide)) == '1';
    haptics.value = (await _storage.read(key: _kHaptics)) != '0';
    reduceAnimations.value = (await _storage.read(key: _kReduceAnim)) == '1';
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
    background.value = await _storage.read(key: _kBg) ?? 'bronze';
    backgroundDim.value =
        (int.tryParse(await _storage.read(key: _kBgDim) ?? '') ?? 60)
            .clamp(0, 90)
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

  Future<void> setBackupReminderDays(int days) async {
    backupReminderDays.value = days.clamp(0, maxReminderDays).toInt();
    await _storage.write(
      key: _kReminderDays,
      value: '${backupReminderDays.value}',
    );
  }

  /// Yedek başarıyla kaydedilince çağrılır.
  Future<void> markBackupDone() async {
    final now = DateTime.now().toUtc();
    lastBackup.value = now;
    snoozeUntil.value = null;
    await _storage.write(key: _kLastBackup, value: now.toIso8601String());
    await _storage.delete(key: _kSnoozeUntil);
  }

  /// "Sonra" denince hatırlatmayı 1 gün gizler.
  Future<void> snoozeBackupReminder() async {
    final until = DateTime.now().toUtc().add(const Duration(days: 1));
    snoozeUntil.value = until;
    await _storage.write(key: _kSnoozeUntil, value: until.toIso8601String());
  }

  Future<void> setSmartGuide(bool on) async {
    smartGuide.value = on;
    await _storage.write(key: _kSmartGuide, value: on ? '1' : '0');
  }

  Future<void> setHaptics(bool on) async {
    haptics.value = on;
    await _storage.write(key: _kHaptics, value: on ? '1' : '0');
  }

  Future<void> setReduceAnimations(bool on) async {
    reduceAnimations.value = on;
    await _storage.write(key: _kReduceAnim, value: on ? '1' : '0');
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

  Future<void> setBackground(String id) async {
    background.value = id;
    await _storage.write(key: _kBg, value: id);
  }

  Future<void> saveBackgroundDim() =>
      _storage.write(key: _kBgDim, value: '${backgroundDim.value}');
}
