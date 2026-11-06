import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/utils/clipboard_service.dart';
import '../../core/utils/screen_capture_service.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../core/widgets/language_button.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';
import 'change_password_dialog.dart';
import '../vault/vault_repository.dart';
import '../vault/trash_screen.dart';
import '../../core/widgets/panel_style.dart';
import '../../core/constants/backgrounds.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, required this.auth, required this.repo});
  final AuthService auth;
  final VaultRepository repo;

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
  int _section = 0; // 0: Güvenlik, 1: Yedek, 2: Genel, 3: Hakkında
  @override
  void initState() {
    super.initState();
    _load();
    _loadTrash();
  }

  Future<void> _load() async {
    final available = await widget.auth.biometricAvailable();
    final enabled = await widget.auth.biometricEnabled();
    if (!mounted) return;
    setState(() {
      _bioAvailable = available;
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
      (Icons.lock_outline, t.settingsSecurity),
      (Icons.backup_outlined, t.settingsBackup),
      (Icons.tune, t.settingsGeneral),
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
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 14, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: MuhurColors.bronzeLight),
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
        builder: (ctx) => AlertDialog(
          title: Text(title),
          content: Text(body),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(t.close),
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
    if (v) {
      final ok = await widget.auth.enableBiometrics(t.biometricReason);
      if (mounted) setState(() => _bioEnabled = ok);
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
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(t.masterPasswordChanged)));
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
      builder: (c) => AlertDialog(
        content: Text(t.emptyTrashConfirm(_trashCount)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(c, false),
            child: Text(t.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(c, true),
            child: Text(t.delete),
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
    return GestureDetector(
      onTap: () => s.setBackground(b.id),
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
      _sectionTitle(Icons.palette_outlined, t.sectionAppearance),
      _panel([
        ValueListenableBuilder<String>(
          valueListenable: s.background,
          builder: (context, sel, _) => _row(
            icon: Icons.wallpaper,
            title: t.backgroundTitle,
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
          valueListenable: s.helpAnimation,
          builder: (context, on, _) => _row(
            icon: Icons.auto_awesome,
            title: t.helpAnimation,
            trailing: _switch(on, s.setHelpAnimation),
            child: _desc(t.helpAnimationDesc),
          ),
        ),
        ValueListenableBuilder<bool>(
          valueListenable: s.smartGuide,
          builder: (context, on, _) => _row(
            icon: Icons.chat_bubble_outline,
            title: t.smartGuide,
            trailing: _switch(on, s.setSmartGuide),
            child: _desc(t.smartGuideDesc),
          ),
        ),
        InkWell(
          onTap: () async {
            await s.resetTips();
            if (!mounted) return;
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(t.tipsResetDone)));
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

  List<Widget> _sectionItems(AppLocalizations t) {
    switch (_section) {
      case 0:
        return _securityItems(t);
      case 2:
        return _generalItems(t);
      default:
        return const []; // Yedek, Hakkında: içerik sonra eklenecek
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
