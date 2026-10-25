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

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.settings)),
      body: ListView(
        children: [
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
                  final ok = await widget.auth.enableBiometrics(
                    t.biometricReason,
                  );
                  if (mounted) setState(() => _bioEnabled = ok);
                } else {
                  await widget.auth.disableBiometrics();
                  if (mounted) setState(() => _bioEnabled = false);
                }
              },
            ),
        ],
      ),
    );
  }
}
