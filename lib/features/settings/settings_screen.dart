import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';

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

  Widget _card({
    required IconData icon,
    required String title,
    String? subtitle,
    Widget? trailing,
    Widget? child,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 6, 12, 6),
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(
        color: const Color(0xCC14181C),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: MuhurColors.bronze.withValues(alpha: 0.6)),
      ),
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
              if (trailing != null) trailing,
            ],
          ),
          if (subtitle != null)
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 36),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: MuhurColors.cream.withValues(alpha: 0.7),
                  fontSize: 12,
                ),
              ),
            ),
          if (child != null) ...[const SizedBox(height: 10), child],
        ],
      ),
    );
  }

  String _secLabel(AppLocalizations t, int s) =>
      s == 0 ? t.immediately : t.secondsShort(s);

  Widget _durationCard({
    required IconData icon,
    required String title,
    String? subtitle,
    required int value,
    required int max,
    required String valueLabel,
    required ValueChanged<int> onChanged,
    required ValueChanged<int> onCommit,
    int min = 0,
  }) {
    return _card(
      icon: icon,
      title: title,
      subtitle: subtitle,
      trailing: Text(
        valueLabel,
        style: const TextStyle(
          color: MuhurColors.bronzeLight,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
      child: Slider(
        value: value.toDouble(),
        min: min.toDouble(),
        max: max.toDouble(),
        divisions: (max - min) ~/ 5,
        label: valueLabel,
        activeColor: MuhurColors.bronzeLight,
        inactiveColor: MuhurColors.bronze.withValues(alpha: 0.3),
        onChanged: (v) => onChanged(v.round()),
        onChangeEnd: (v) => onCommit(v.round()),
      ),
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

  List<Widget> _securityItems(AppLocalizations t) {
    return [
      _durationCard(
        icon: Icons.lock_clock,
        title: t.autoLock,
        value: _autoLock,
        max: AppSettings.maxAutoLockSeconds,
        valueLabel: _secLabel(t, _autoLock),
        onChanged: (v) => setState(() => _autoLock = v),
        onCommit: AppSettings.instance.setAutoLock,
      ),
      _durationCard(
        icon: Icons.content_copy,
        title: t.copyTimer,
        subtitle: t.copyTimerHint,
        value: _copySecs,
        min: AppSettings.minCopySeconds,
        max: AppSettings.maxCopySeconds,
        valueLabel: t.secondsShort(_copySecs),
        onChanged: (v) => setState(() => _copySecs = v),
        onCommit: AppSettings.instance.setCopySeconds,
      ),
      if (_bioAvailable)
        _card(
          icon: Icons.fingerprint,
          title: t.biometricUnlock,
          trailing: Switch(value: _bioEnabled, onChanged: (v) => _setBio(v, t)),
        ),
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
