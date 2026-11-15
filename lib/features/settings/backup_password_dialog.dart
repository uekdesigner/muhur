import 'package:flutter/material.dart';

import '../../core/utils/motion.dart';
import '../../core/widgets/dialog_parts.dart';
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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(widget.confirm ? t.backupPasswordTitle : t.backupEnterPassword),
          if (widget.confirm) ...[
            const SizedBox(height: 10),
            PasswordRuleChips(_pw.text),
          ],
        ],
      ),
      titlePadding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      contentPadding: EdgeInsets.zero,
      actionsPadding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      content: DividedScroll(
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
                isDense: true,
                contentPadding: kDenseFieldPadding,
                suffixIcon: PasswordToggleButton(
                  shown: _show,
                  onPressed: () => setState(() => _show = !_show),
                ),
              ),
            ),
            if (widget.confirm) ...[
              StrengthBar(_pw.text),
              const SizedBox(height: 16),
              TextField(
                controller: _pw2,
                obscureText: !_show,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: t.confirmPassword,
                  isDense: true,
                  contentPadding: kDenseFieldPadding,
                ),
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
        RoundIconButton(
          icon: Icons.close,
          tooltip: t.cancel,
          onPressed: () => Navigator.pop(context),
        ),
        RoundIconButton(
          icon: Directionality.of(context) == TextDirection.rtl
              ? Icons.arrow_back
              : Icons.arrow_forward,
          tooltip: t.backupContinue,
          primary: true,
          onPressed: _submit,
        ),
      ],
    );
  }
}
