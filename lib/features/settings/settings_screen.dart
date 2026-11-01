import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/utils/clipboard_service.dart';
import '../../core/utils/screen_capture_service.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';
import 'change_password_dialog.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, required this.auth});
  final AuthService auth;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _bioAvailable = false;
  bool _bioEnabled = false;
  int _autoLock = AppSettings.instance.autoLockSeconds;
  int _copySecs = AppSettings.instance.copySeconds;
  int _shotSecs = AppSettings.instance.screenshotSeconds;
  int _section = 0; // 0: Güvenlik, 1: Yedek, 2: Genel, 3: Hakkında
  @override
  void initState() {
    super.initState();
    _load();
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
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xCC14181C),
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
                  style: const TextStyle(
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
              valueIndicatorTextStyle: const TextStyle(
                color: MuhurColors.cream,
              ),
            ),
            child: Slider(
              value: value.toDouble(),
              min: min.toDouble(),
              max: max.toDouble(),
              divisions: (max - min) ~/ 5,
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
                style: const TextStyle(
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
    ];
  }

  List<Widget> _sectionItems(AppLocalizations t) {
    switch (_section) {
      case 0:
        return _securityItems(t);
      default:
        return const []; // Yedek, Genel, Hakkında: içerik sonra eklenecek
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.settings)),
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
