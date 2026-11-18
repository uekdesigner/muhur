import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/crypto/crypto_service.dart';
import 'about_pages.dart';
import 'backup_password_dialog.dart';
import 'backup_service.dart';
import 'excel_export.dart';
import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/utils/clipboard_service.dart';
import '../../core/utils/motion.dart';
import '../../core/utils/screen_capture_service.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../core/widgets/language_button.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';
import 'change_password_dialog.dart';
import '../vault/vault_repository.dart';
import '../vault/trash_screen.dart';
import '../../core/widgets/panel_style.dart';
import '../../core/widgets/pro_badge.dart';
import '../../core/constants/backgrounds.dart';
import '../../core/entitlements/entitlements.dart';
import '../vault/pro_dialog.dart';
import '../pro/pro_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
    required this.auth,
    required this.repo,
    this.initialSection = 0,
  });
  final AuthService auth;
  final VaultRepository repo;
  final int initialSection;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _bioAvailable = false;
  bool _bioEnabled = false;
  int _autoLock = AppSettings.instance.autoLockSeconds;
  int _copySecs = AppSettings.instance.copySeconds;
  int _shotSecs = AppSettings.instance.screenshotSeconds;
  int _trashDays = AppSettings.instance.trashDays;
  int _trashCount = 0;
  int _reminderDays = AppSettings.instance.backupReminderDays.value;
  String _version = '';
  late final BackupService _backup = BackupService(
    widget.auth,
    CryptoService(),
  );
  late int _section =
      widget.initialSection; // 0: Genel, 1: Güvenlik, 2: Yedek, 3: Hakkında
  @override
  void initState() {
    super.initState();
    _load();
    _loadTrash();
    PackageInfo.fromPlatform().then((p) {
      if (mounted) setState(() => _version = '${p.version} (${p.buildNumber})');
    });
  }

  Future<void> _load() async {
    final available = await widget.auth.biometricAvailable();
    final enabled = await widget.auth.biometricEnabled();
    if (!mounted) return;
    setState(() {
      _bioAvailable = available || enabled;
      _bioEnabled = enabled;
    });
  }

  Widget _tabButton(int index, IconData icon, String label) {
    final cs = Theme.of(context).colorScheme;
    final selected = _section == index;
    final fg = selected ? cs.onPrimaryContainer : cs.onSurfaceVariant;
    return Semantics(
      button: true,
      selected: selected,
      label: label,
      excludeSemantics: true,
      child: Material(
        color: selected ? cs.primaryContainer : cs.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => setState(() => _section = index),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, size: 22, color: fg),
                const SizedBox(height: 4),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    label,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12,
                      color: fg,
                      fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabs(AppLocalizations t) {
    final items = <(IconData, String)>[
      (Icons.tune, t.settingsGeneral),
      (Icons.lock_outline, t.settingsSecurity),
      (Icons.backup_outlined, t.settingsBackup),
      (Icons.info_outline, t.settingsAbout),
    ];
    return Row(
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0) const SizedBox(width: 8),
          Expanded(child: _tabButton(i, items[i].$1, items[i].$2)),
        ],
      ],
    );
  }

  // ── Güvenlik paneli: tek panel, satırlar arasında çizgi ──

  Widget _panel(List<Widget> rows) {
    final line = MuhurColors.bronze.withValues(alpha: 0.35);
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),

      decoration: BoxDecoration(
        color: panelColor(context, const Color(0xCC14181C)),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: MuhurColors.bronze.withValues(alpha: 0.6)),
      ),
      child: Column(
        children: [
          for (var i = 0; i < rows.length; i++) ...[
            if (i > 0)
              Divider(
                height: 1,
                thickness: 1,
                indent: 14,
                endIndent: 14,
                color: line,
              ),
            rows[i],
          ],
        ],
      ),
    );
  }

  Widget _row({
    required IconData icon,
    required String title,
    Widget? trailing,
    Widget? child,
    bool pro = false,
  }) {
    final ico = Icon(icon, color: MuhurColors.bronzeLight);
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              pro ? ProCorner(child: ico) : ico,
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: MuhurColors.cream,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ?trailing,
            ],
          ),
          ?child,
        ],
      ),
    );
  }

  String _secLabel(AppLocalizations t, int s) =>
      s == 0 ? t.immediately : t.secondsShort(s);

  Widget _helpButton(AppLocalizations t, String title, String body) {
    return IconButton(
      icon: const Icon(Icons.help_outline),
      iconSize: 20,
      visualDensity: VisualDensity.compact,
      color: MuhurColors.cream.withValues(alpha: 0.7),
      tooltip: title,
      onPressed: () => showDialog<void>(
        context: context,
        animationStyle: Motion.style,
        builder: (ctx) => ScrollDialog(
          title: Text(title),
          content: Text(body),
          actions: [
            RoundIconButton(
              icon: Icons.close,
              tooltip: t.close,
              onPressed: () => Navigator.pop(ctx),
            ),
          ],
        ),
      ),
    );
  }

  /// Panelin renklerinde anahtar (kapalıyken de beyaz olmaz).
  Widget _switch(bool value, ValueChanged<bool>? onChanged) {
    return Switch(
      value: value,
      onChanged: onChanged,
      thumbColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected)
            ? MuhurColors.cream
            : MuhurColors.bronzeLight.withValues(alpha: 0.85),
      ),
      trackColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected)
            ? MuhurColors.bronze
            : MuhurColors.bronze.withValues(alpha: 0.15),
      ),
      trackOutlineColor: WidgetStateProperty.resolveWith(
        (s) => s.contains(WidgetState.selected)
            ? Colors.transparent
            : MuhurColors.bronze.withValues(alpha: 0.7),
      ),
    );
  }

  /// Kaydırıcı solda, ardından (varsa) sayaç, en sağda seçili değer.
  /// onChanged null ise sönük (pasif).
  Widget _sliderRow({
    required int value,
    required int min,
    required int max,
    required String label,
    ValueChanged<int>? onChanged,
    ValueChanged<int>? onCommit,
    Widget? counter,
    int step = 5,
  }) {
    return Row(
      children: [
        Expanded(
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: MuhurColors.bronzeLight,
              inactiveTrackColor: MuhurColors.bronze.withValues(alpha: 0.3),
              thumbColor: MuhurColors.bronzeLight,
              disabledActiveTrackColor: MuhurColors.bronze.withValues(
                alpha: 0.55,
              ),
              disabledInactiveTrackColor: MuhurColors.bronze.withValues(
                alpha: 0.2,
              ),
              disabledThumbColor: MuhurColors.bronze.withValues(alpha: 0.7),
              tickMarkShape: SliderTickMarkShape.noTickMark,
              valueIndicatorColor: MuhurColors.bronze,
              valueIndicatorTextStyle: TextStyle(color: MuhurColors.cream),
            ),
            child: Slider(
              value: value.toDouble(),
              min: min.toDouble(),
              max: max.toDouble(),
              divisions: (max - min) ~/ step,
              label: label,
              onChanged: onChanged == null ? null : (v) => onChanged(v.round()),
              onChangeEnd: onCommit == null ? null : (v) => onCommit(v.round()),
            ),
          ),
        ),
        ?counter,
        SizedBox(
          width: 84,
          child: Align(
            alignment: AlignmentDirectional.centerEnd,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                style: TextStyle(
                  color: MuhurColors.bronzeLight,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _setBio(bool v, AppLocalizations t) async {
    if (v && !Entitlements.instance.isPro) {
      await showProDialog(context, t.proFeatureTitle, t.proBiometricBody);
      return;
    }
    if (v) {
      final ok = await widget.auth.enableBiometrics(t.biometricReason);
      if (mounted) setState(() => _bioEnabled = ok);
      if (!ok && mounted) _toast(t.bioConfirmFailed);
    } else {
      await widget.auth.disableBiometrics();
      if (mounted) setState(() => _bioEnabled = false);
    }
  }

  Widget _screenshotRow(AppLocalizations t) {
    return ValueListenableBuilder<bool>(
      valueListenable: ScreenCaptureService.instance.allowed,
      builder: (context, on, _) => _row(
        icon: Icons.screenshot_outlined,
        title: t.screenshotAllow,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _helpButton(t, t.screenshotAllow, t.screenshotAllowHint),
            _switch(
              on,
              (v) => v
                  ? ScreenCaptureService.instance.allowFor(
                      Duration(seconds: _shotSecs),
                    )
                  : ScreenCaptureService.instance.protect(),
            ),
          ],
        ),
        child: _sliderRow(
          value: _shotSecs,
          min: AppSettings.minScreenshotSeconds,
          max: AppSettings.maxScreenshotSeconds,
          label: t.secondsShort(_shotSecs),
          onChanged: on ? null : (v) => setState(() => _shotSecs = v),
          onCommit: on ? null : AppSettings.instance.setScreenshotSeconds,
          counter: _TimeLeft(
            until: () => ScreenCaptureService.instance.allowedUntil,
          ),
        ),
      ),
    );
  }

  Future<void> _changePassword() async {
    final t = AppLocalizations.of(context)!;
    final ok = await showChangePasswordDialog(context, widget.auth);
    if (ok == true && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        snackBarAnimationStyle: Motion.style,
        SnackBar(content: Text(t.masterPasswordChanged)),
      );
    }
  }

  Future<void> _loadTrash() async {
    try {
      final n = await widget.repo.trashCount();
      if (mounted) setState(() => _trashCount = n);
    } catch (_) {}
  }

  Future<void> _openTrash() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => TrashScreen(repo: widget.repo)),
    );
    await _loadTrash();
  }

  Future<void> _emptyTrash() async {
    final t = AppLocalizations.of(context)!;
    final yes = await showDialog<bool>(
      context: context,
      animationStyle: Motion.style,
      builder: (c) => AlertDialog(
        content: Text(t.emptyTrashConfirm(_trashCount)),
        actions: [
          RoundIconButton(
            icon: Icons.close,
            tooltip: t.cancel,
            onPressed: () => Navigator.pop(c, false),
          ),
          RoundIconButton(
            icon: Icons.delete_forever,
            tooltip: t.delete,
            danger: true,
            onPressed: () => Navigator.pop(c, true),
          ),
        ],
      ),
    );
    if (yes != true) return;
    await widget.repo.emptyTrash();
    await _loadTrash();
  }

  Widget _badge(String text) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
    decoration: BoxDecoration(
      color: MuhurColors.bronze.withValues(alpha: 0.35),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      text,
      style: TextStyle(
        color: MuhurColors.cream,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    ),
  );

  Widget _trashPanel(AppLocalizations t) {
    final empty = _trashCount == 0;
    return _panel([
      _row(
        icon: Icons.auto_delete_outlined,
        title: t.trashKeepFor,
        trailing: _helpButton(t, t.trash, t.trashHint),
        child: _sliderRow(
          value: _trashDays,
          min: AppSettings.minTrashDays,
          max: AppSettings.maxTrashDays,
          step: 1,
          label: t.daysCount(_trashDays),
          onChanged: (v) => setState(() => _trashDays = v),
          onCommit: AppSettings.instance.setTrashDays,
        ),
      ),
      Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: _openTrash,
          child: _row(
            icon: Icons.restore_from_trash_outlined,
            title: t.openTrash,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _badge('$_trashCount'),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: MuhurColors.cream.withValues(alpha: 0.7),
                ),
              ],
            ),
          ),
        ),
      ),
      Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: empty ? null : _emptyTrash,
          child: Opacity(
            opacity: empty ? 0.5 : 1,
            child: _row(
              icon: Icons.delete_sweep_outlined,
              title: t.emptyTrashNow,
            ),
          ),
        ),
      ),
    ]);
  }

  List<Widget> _securityItems(AppLocalizations t) {
    return [
      _panel([
        _row(
          icon: Icons.lock_clock,
          title: t.autoLock,
          child: _sliderRow(
            value: _autoLock,
            min: 0,
            max: AppSettings.maxAutoLockSeconds,
            label: _secLabel(t, _autoLock),
            onChanged: (v) => setState(() => _autoLock = v),
            onCommit: AppSettings.instance.setAutoLock,
          ),
        ),
        _row(
          icon: Icons.content_copy,
          title: t.copyTimer,
          trailing: _helpButton(t, t.copyTimer, t.copyTimerHint),
          child: _sliderRow(
            value: _copySecs,
            min: AppSettings.minCopySeconds,
            max: AppSettings.maxCopySeconds,
            label: t.secondsShort(_copySecs),
            onChanged: (v) => setState(() => _copySecs = v),
            onCommit: AppSettings.instance.setCopySeconds,
            counter: _TimeLeft(
              until: () => ClipboardService.instance.activeUntil,
            ),
          ),
        ),
        if (Platform.isAndroid) _screenshotRow(t),
        if (_bioAvailable)
          _row(
            icon: Icons.fingerprint,
            title: t.biometricUnlock,
            pro: true,
            trailing: _switch(_bioEnabled, (v) => _setBio(v, t)),
          ),
        Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: _changePassword,
            child: _row(
              icon: Icons.password,
              title: t.changeMasterPassword,
              trailing: Icon(
                Icons.chevron_right,
                color: MuhurColors.cream.withValues(alpha: 0.7),
              ),
            ),
          ),
        ),
      ]),
      _trashPanel(t),
    ];
  }

  Widget _sectionTitle(IconData icon, String text) => Padding(
    padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
    child: Row(
      children: [
        Icon(icon, size: 18, color: MuhurColors.cream),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
            color: MuhurColors.cream,
            fontSize: 14,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
          ),
        ),
      ],
    ),
  );

  Widget _desc(String text) => Padding(
    padding: const EdgeInsets.only(left: 36, top: 2),
    child: Text(
      text,
      style: TextStyle(
        color: MuhurColors.cream.withValues(alpha: 0.65),
        fontSize: 13,
      ),
    ),
  );
  String _bgLabel(AppLocalizations t, String id) => switch (id) {
    'ember' => t.bgEmber,
    'sapphire' => t.bgSapphire,
    'obsidian' => t.bgObsidian,
    'lumen' => t.bgLumen,
    _ => t.bgBronze,
  };

  Widget _bgThumb(AppLocalizations t, MuhurBg b, bool selected, AppSettings s) {
    final locked =
        b.id != muhurBackgrounds.first.id && !Entitlements.instance.isPro;
    return GestureDetector(
      onTap: () => locked
          ? showProDialog(context, t.proFeatureTitle, t.proBackgroundsBody)
          : s.setBackground(b.id),
      child: Container(
        width: 64,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Container(
              width: 64,
              height: 56,
              clipBehavior: Clip.antiAlias,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: selected
                      ? MuhurColors.bronzeLight
                      : MuhurColors.bronze.withValues(alpha: 0.65),
                  width: selected ? 2.5 : 1,
                ),
                image: DecorationImage(
                  image: ResizeImage(AssetImage(b.asset), width: 160),
                  fit: BoxFit.cover,
                ),
              ),
              child: selected
                  ? Icon(Icons.check, color: MuhurColors.bronzeLight, size: 22)
                  : locked
                  ? Icon(Icons.lock_outline, color: MuhurColors.cream, size: 20)
                  : null,
            ),
            const SizedBox(height: 4),
            Text(
              _bgLabel(t, b.id),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11.5,
                color: selected
                    ? MuhurColors.cream
                    : MuhurColors.cream.withValues(alpha: 0.65),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _generalItems(AppLocalizations t) {
    final s = AppSettings.instance;
    return [
      _panel([
        InkWell(
          onTap: () async {
            await ProScreen.open(context);
            if (mounted) setState(() {});
          },
          child: _row(
            icon: Icons.workspace_premium,
            title: '${t.brandName} Pro',
            trailing: Icon(Icons.chevron_right, color: MuhurColors.bronzeLight),
            child: _desc(proStatusText(t)),
          ),
        ),
      ]),
      _sectionTitle(Icons.palette_outlined, t.sectionAppearance),
      _panel([
        ValueListenableBuilder<String>(
          valueListenable: s.background,
          builder: (context, sel, _) => _row(
            icon: Icons.wallpaper,
            title: t.backgroundTitle,
            pro: true,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 84,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (final b in muhurBackgrounds)
                      _bgThumb(t, b, sel == b.id, s),
                  ],
                ),
              ),
            ),
          ),
        ),
        ValueListenableBuilder<int>(
          valueListenable: s.backgroundDim,
          builder: (context, dim, _) => _row(
            icon: Icons.brightness_6_outlined,
            title: t.backgroundDim,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _desc(t.backgroundDimDesc),
                _sliderRow(
                  value: dim,
                  min: 0,
                  max: 90,
                  step: 5,
                  label: '$dim%',
                  onChanged: (v) => s.backgroundDim.value = v,
                  onCommit: (_) => s.saveBackgroundDim(),
                ),
              ],
            ),
          ),
        ),
        ValueListenableBuilder<int>(
          valueListenable: s.panelPercent,
          builder: (context, pct, _) => _row(
            icon: Icons.contrast,
            title: t.panelDarkness,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _desc(t.panelDarknessDesc),
                _sliderRow(
                  value: pct,
                  min: 30,
                  max: 100,
                  step: 5,
                  label: '$pct%',
                  onChanged: (v) => s.panelPercent.value = v,
                  onCommit: (_) => s.savePanelPercent(),
                ),
              ],
            ),
          ),
        ),
      ]),
      _sectionTitle(Icons.language, t.sectionLanguage),
      _panel([
        _row(
          icon: Icons.language,
          title: t.language,
          trailing: const LanguageButton(),
        ),
      ]),
      _sectionTitle(Icons.tune, t.sectionExperience),
      _panel([
        ValueListenableBuilder<bool>(
          valueListenable: s.smartGuide,
          builder: (context, on, _) => _row(
            icon: Icons.chat_bubble_outline,
            title: t.smartGuide,
            trailing: _switch(on, s.setSmartGuide),
            child: _desc(t.smartGuideDesc),
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: s.haptics,
          builder: (context, on, _) => _row(
            icon: Icons.vibration,
            title: t.haptics,
            trailing: _switch(on, s.setHaptics),
            child: _desc(t.hapticsDesc),
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: s.reduceAnimations,
          builder: (context, on, _) => _row(
            icon: Icons.auto_awesome,
            title: t.reduceAnimations,
            trailing: _switch(on, s.setReduceAnimations),
            child: _desc(t.reduceAnimationsDesc),
          ),
        ),
        InkWell(
          onTap: () async {
            await s.resetTips();
            if (!mounted) return;
            ScaffoldMessenger.of(context).showSnackBar(
              snackBarAnimationStyle: Motion.style,
              SnackBar(content: Text(t.tipsResetDone)),
            );
          },
          child: _row(
            icon: Icons.restart_alt,
            title: t.resetTips,
            child: _desc(t.resetTipsDesc),
          ),
        ),
      ]),
    ];
  }

  bool _backupBusy = false;

  void _toast(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(text)),
      snackBarAnimationStyle: Motion.style,
    );
  }

  Future<void> _exportBackup() async {
    final t = AppLocalizations.of(context)!;
    final pw = await askBackupPassword(context, confirm: true);
    if (pw == null || !mounted) return;
    setState(() => _backupBusy = true);
    try {
      final bytes = await _backup.export(pw);
      final saved = await widget.auth.runExternal(
        () => FilePicker.saveFile(
          fileName: _backup.suggestedFileName(),
          bytes: bytes,
          dialogTitle: t.backupExport,
        ),
      );
      if (saved != null) {
        await AppSettings.instance.markBackupDone();
        _toast(t.backupSaved);
      }
    } catch (_) {
      _toast(t.backupFailed);
    } finally {
      if (mounted) setState(() => _backupBusy = false);
    }
  }

  /// Şifresiz Excel dosyası: uyarı + sorumluluk onayı + ana parola istenir.
  Future<void> _exportExcel() async {
    final t = AppLocalizations.of(context)!;
    final rtl = Directionality.of(context) == TextDirection.rtl;
    final ok = await confirmPlainExport(context, widget.auth);
    if (!ok || !mounted) return;
    setState(() => _backupBusy = true);
    try {
      final exporter = ExcelExporter(widget.auth, CryptoService());
      final bytes = await exporter.build(t, rtl: rtl);
      final saved = await widget.auth.runExternal(
        () => FilePicker.saveFile(
          fileName: exporter.suggestedFileName(),
          bytes: bytes,
          dialogTitle: t.excelExport,
        ),
      );
      if (saved != null) _toast(t.excelExportSaved);
    } catch (_) {
      _toast(t.excelExportFailed);
    } finally {
      if (mounted) setState(() => _backupBusy = false);
    }
  }

  Future<void> _importBackup() async {
    final t = AppLocalizations.of(context)!;
    final file = await widget.auth.runExternal(
      () => FilePicker.pickFile(dialogTitle: t.backupImport),
    );
    if (file == null || !mounted) return;
    // Dosya belleğe okunmadan önce boyutu denetlenir.
    final size = await file.length();
    if (!mounted) return;
    if (size != null && size > BackupService.maxBackupBytes) {
      _toast(t.backupInvalidFile);
      return;
    }
    final bytes = await file.readAsBytes();
    if (!mounted) return;
    final pw = await askBackupPassword(context, confirm: false);
    if (pw == null || !mounted) return;
    setState(() => _backupBusy = true);
    try {
      final r = await _backup.restore(bytes, pw);
      _toast(
        r.limited > 0
            ? t.backupRestoreLimited(r.added, r.limited)
            : t.backupRestored(r.added, r.skipped),
      );
    } on BackupPasswordException {
      _toast(t.backupWrongPassword);
    } catch (_) {
      _toast(t.backupInvalidFile);
    } finally {
      if (mounted) setState(() => _backupBusy = false);
    }
  }

  List<Widget> _backupItems(AppLocalizations t) {
    return [
      _sectionTitle(Icons.backup_outlined, t.backupSection),
      _panel([
        InkWell(
          onTap: _backupBusy ? null : _exportBackup,
          child: _row(
            icon: Icons.file_upload_outlined,
            title: t.backupExport,
            child: _desc(t.backupExportDesc),
          ),
        ),
        InkWell(
          onTap: _backupBusy ? null : _importBackup,
          child: _row(
            icon: Icons.file_download_outlined,
            title: t.backupImport,
            child: _desc(t.backupImportDesc),
          ),
        ),
        InkWell(
          onTap: _backupBusy ? null : _exportExcel,
          child: _row(
            icon: Icons.table_view_outlined,
            title: t.excelExport,
            child: _desc(t.excelExportDesc),
          ),
        ),
        _row(
          icon: Icons.notifications_active_outlined,
          title: t.backupReminderTitle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _desc(t.backupReminderDesc),
              _sliderRow(
                value: _reminderDays,
                min: 0,
                max: AppSettings.maxReminderDays,
                step: 1,
                label: _reminderDays == 0
                    ? t.backupReminderOff
                    : t.daysCount(_reminderDays),
                onChanged: (v) => setState(() => _reminderDays = v),
                onCommit: AppSettings.instance.setBackupReminderDays,
              ),
            ],
          ),
        ),
      ]),
      if (_backupBusy)
        const Padding(
          padding: EdgeInsets.all(16),
          child: Center(child: CircularProgressIndicator()),
        ),
    ];
  }

  List<Widget> _aboutItems(AppLocalizations t) {
    final legal = '© 2026 MÜHÜR. ${t.aboutRights}';
    void open(String title, List<AboutBlock> blocks) => AboutTextPage.open(
      context,
      AboutTextPage(
        title: title,
        blocks: blocks,
        briefLabel: t.aboutInBrief,
        techLabel: t.aboutTechnical,
      ),
    );
    return [
      _aboutHeader(
        t,
        () => open(t.aboutReleaseNotes, [
          AboutBlock(title: t.aboutVersionLine('1.0.0'), brief: t.rn100),
        ]),
      ),
      _sectionTitle(Icons.verified_user_outlined, t.brandName),
      _panel([
        _aboutLink(
          Icons.menu_book_outlined,
          t.aboutHowTitle,
          () => open(t.aboutHowTitle, [
            AboutBlock(title: t.how1T, brief: t.how1B),
            AboutBlock(title: t.how2T, brief: t.how2B),
            AboutBlock(title: t.how3T, brief: t.how3B),
            AboutBlock(title: t.how4T, brief: t.how4B),
            AboutBlock(title: t.how5T, brief: t.how5B),
            AboutBlock(title: t.how6T, brief: t.how6B),
            AboutBlock(title: t.how7T, brief: t.how7B),
            AboutBlock(title: t.how8T, brief: t.how8B),
            AboutBlock(title: t.how9T, brief: t.how9B),
            AboutBlock(title: t.how10T, brief: t.how10B),
            AboutBlock(title: t.how11T, brief: t.how11B),
          ]),
        ),
        _aboutLink(
          Icons.auto_stories_outlined,
          t.aboutStoryTitle,
          () => open(t.aboutStoryTitle, [AboutBlock(brief: t.storyBody)]),
        ),
        _aboutLink(
          Icons.person_outline,
          t.aboutDeveloperTitle,
          () => open(t.aboutDeveloperTitle, [
            AboutBlock(title: 'uekdesigner', brief: t.devBody),
          ]),
        ),
      ]),
      _sectionTitle(Icons.privacy_tip_outlined, t.aboutPrivacySection),
      _panel([
        _aboutLink(
          Icons.shield_outlined,
          t.aboutProtectionTitle,
          () => open(t.aboutProtectionTitle, [
            AboutBlock(
              brief: t.aboutProtectionBody,
              tech: t.aboutProtectionTech,
            ),
          ]),
        ),
        _aboutLink(
          Icons.wifi_off_outlined,
          t.aboutOfflineTitle,
          () => open(t.aboutOfflineTitle, [
            AboutBlock(brief: t.aboutOfflineBody, tech: t.aboutOfflineTech),
          ]),
        ),
        _aboutLink(
          Icons.fact_check_outlined,
          t.aboutPermissionsTitle,
          () => open(t.aboutPermissionsTitle, [
            AboutBlock(
              brief: t.aboutPermissionsBody,
              tech: t.aboutPermissionsTech,
            ),
          ]),
        ),
      ]),
      _sectionTitle(Icons.support_outlined, t.aboutSupportSection),
      _panel([
        _aboutLink(
          Icons.star_outline,
          t.aboutRate,
          _rateApp,
          subtitle: t.aboutRateDesc,
        ),
      ]),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: GestureDetector(
          onTap: () => showLicensePage(
            context: context,
            applicationName: t.brandName,
            applicationVersion: _version,
          ),
          child: Text(
            legal,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: MuhurColors.cream.withValues(alpha: 0.5),
              fontSize: 12,
            ),
          ),
        ),
      ),
    ];
  }

  /// Logo, uygulama adı ve sürüm; dokununca sürüm notları açılır.
  Widget _aboutHeader(AppLocalizations t, VoidCallback onTap) => Padding(
    padding: const EdgeInsets.fromLTRB(12, 8, 12, 6),
    child: Material(
      color: panelColor(context, const Color(0xCC14181C)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: MuhurColors.bronze.withValues(alpha: 0.6)),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset('assets/images/seal.webp', width: 56, height: 56),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.brandName,
                      style: TextStyle(
                        color: MuhurColors.cream,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Text(
                      t.brandSubtitle,
                      style: TextStyle(
                        color: MuhurColors.cream.withValues(alpha: 0.90),
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),

                    Text(
                      t.aboutReleaseNotes,
                      style: TextStyle(
                        color: MuhurColors.cream.withValues(alpha: 0.90),
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'UEK DESIGNER',
                      style: TextStyle(
                        color: MuhurColors.bronzeLight,
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (_version.isNotEmpty)
                      Text(
                        t.aboutVersionLine(_version),
                        style: TextStyle(
                          color: MuhurColors.bronzeLight,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: MuhurColors.bronzeLight),
            ],
          ),
        ),
      ),
    ),
  );

  Widget _aboutLink(
    IconData icon,
    String title,
    VoidCallback onTap, {
    String? subtitle,
  }) => InkWell(
    onTap: onTap,
    child: _row(
      icon: icon,
      title: title,
      trailing: Icon(
        Icons.chevron_right,
        color: MuhurColors.bronzeLight,
        size: 20,
      ),
      child: subtitle == null ? null : _desc(subtitle),
    ),
  );

  /// Play Store uygulamasında Mühür'ün sayfasını açar (internet izni gerekmez).
  Future<void> _rateApp() async {
    const id = 'com.muhur.app';
    try {
      final ok = await launchUrl(
        Uri.parse('market://details?id=$id'),
        mode: LaunchMode.externalApplication,
      );
      if (ok) return;
    } catch (_) {}
    try {
      await launchUrl(
        Uri.parse('https://play.google.com/store/apps/details?id=$id'),
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {}
  }

  List<Widget> _sectionItems(AppLocalizations t) {
    switch (_section) {
      case 0:
        return _generalItems(t);
      case 1:
        return _securityItems(t);
      case 2:
        return _backupItems(t);
      default:
        return _aboutItems(t);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return MuhurBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(t.settings),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
              child: _buildTabs(t),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 24),
                children: _sectionItems(t),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Kalan süreyi saniyede bir güncelleyen sayaç; süre yoksa görünmez.
class _TimeLeft extends StatefulWidget {
  const _TimeLeft({required this.until});
  final DateTime? Function() until;

  @override
  State<_TimeLeft> createState() => _TimeLeftState();
}

class _TimeLeftState extends State<_TimeLeft> {
  Timer? _tick;

  @override
  void initState() {
    super.initState();
    _tick = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _tick?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final left = widget.until()?.difference(DateTime.now());
    if (left == null || left <= Duration.zero) return const SizedBox.shrink();
    final secs = (left.inMilliseconds / 1000).ceil();
    final time = '${secs ~/ 60}:${(secs % 60).toString().padLeft(2, '0')}';
    return SizedBox(
      width: 44,
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          time,
          style: TextStyle(
            color: MuhurColors.cream.withValues(alpha: 0.85),
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
