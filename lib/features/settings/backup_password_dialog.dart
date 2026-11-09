import 'package:flutter/material.dart';

import '../../core/utils/motion.dart';
import '../../l10n/app_localizations.dart';
import '../auth/password_policy.dart';
import '../auth/password_requirements.dart';
import '../password_gen/strength_bar.dart';

/// Yedek parolası sorar. [confirm] true ise (dışa aktarma) yeni parola belirlenir:
/// kurallar uygulanır ve tekrar istenir. İptalde null döner.
Future<String?> askBackupPassword(
  BuildContext context, {
  required bool confirm,
}) {
  return showDialog<String>(
    context: context,
    animationStyle: Motion.style,
    barrierDismissible: false,
    builder: (_) => _BackupPasswordDialog(confirm: confirm),
  );
}

class _BackupPasswordDialog extends StatefulWidget {
  const _BackupPasswordDialog({required this.confirm});
  final bool confirm;

  @override
  State<_BackupPasswordDialog> createState() => _BackupPasswordDialogState();
}

class _BackupPasswordDialogState extends State<_BackupPasswordDialog> {
  final _pw = TextEditingController();
  final _pw2 = TextEditingController();
  bool _show = false;
  String? _error;

  @override
  void dispose() {
    _pw.dispose();
    _pw2.dispose();
    super.dispose();
  }

  void _submit() {
    final t = AppLocalizations.of(context)!;
    if (widget.confirm) {
      final checks = checkPassword(_pw.text);
      if (!checks.ok) {
        setState(
          () =>
              _error = checks.length ? t.passwordNeedsMix : t.passwordTooShort,
        );
        return;
      }
      if (_pw.text != _pw2.text) {
        setState(() => _error = t.passwordsDontMatch);
        return;
      }
    } else if (_pw.text.isEmpty) {
      return;
    }
    Navigator.pop(context, _pw.text);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(
        widget.confirm ? t.backupPasswordTitle : t.backupEnterPassword,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.confirm) ...[
              Text(
                t.backupPasswordInfo,
                style: const TextStyle(fontSize: 12, color: Colors.white70),
              ),
              const SizedBox(height: 16),
            ],
            TextField(
              controller: _pw,
              obscureText: !_show,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (_) => setState(() => _error = null),
              decoration: InputDecoration(
                labelText: t.backupPasswordTitle,
                suffixIcon: IconButton(
                  icon: Icon(_show ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => setState(() => _show = !_show),
                ),
              ),
            ),
            if (widget.confirm) ...[
              StrengthBar(_pw.text),
              PasswordRequirements(_pw.text),
              const SizedBox(height: 16),
              TextField(
                controller: _pw2,
                obscureText: !_show,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(labelText: t.confirmPassword),
              ),
            ],
            if (_error != null)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  _error!,
                  style: const TextStyle(color: Colors.redAccent),
                ),
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(t.cancel),
        ),
        FilledButton(onPressed: _submit, child: Text(t.backupContinue)),
      ],
    );
  }
}
