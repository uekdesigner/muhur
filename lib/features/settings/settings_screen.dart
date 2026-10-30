import 'package:flutter/material.dart';

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

  List<Widget> _securityItems(AppLocalizations t) {
    return [
      ListTile(
        title: Text(t.autoLock),
        trailing: DropdownButton<int>(
          value: _autoLock,
          items: [
            DropdownMenuItem(value: 0, child: Text(t.immediately)),
            DropdownMenuItem(value: 15, child: Text(t.seconds15)),
            DropdownMenuItem(value: 60, child: Text(t.minute1)),
            DropdownMenuItem(value: 300, child: Text(t.minutes5)),
          ],
          onChanged: (v) async {
            await AppSettings.instance.setAutoLock(v!);
            setState(() => _autoLock = v);
          },
        ),
      ),
      if (_bioAvailable)
        SwitchListTile(
          title: Text(t.biometricUnlock),
          value: _bioEnabled,
          onChanged: (v) async {
            if (v) {
              final ok = await widget.auth.enableBiometrics(t.biometricReason);
              if (mounted) setState(() => _bioEnabled = ok);
            } else {
              await widget.auth.disableBiometrics();
              if (mounted) setState(() => _bioEnabled = false);
            }
          },
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
