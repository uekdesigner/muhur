import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../../core/utils/motion.dart';
import '../auth/auth_service.dart';
import '../auth/password_policy.dart';
import '../auth/password_requirements.dart';
import '../password_gen/strength_bar.dart';

/// Ana parola değiştirme penceresi. Başarılıysa true döner.
Future<bool?> showChangePasswordDialog(BuildContext context, AuthService auth) {
  return showDialog<bool>(
    context: context,
    animationStyle: Motion.style,
    barrierDismissible: false,
    builder: (_) => _ChangePasswordDialog(auth: auth),
  );
}

class _ChangePasswordDialog extends StatefulWidget {
  const _ChangePasswordDialog({required this.auth});
  final AuthService auth;

  @override
  State<_ChangePasswordDialog> createState() => _ChangePasswordDialogState();
}

class _ChangePasswordDialogState extends State<_ChangePasswordDialog> {
  final _old = TextEditingController();
  final _new = TextEditingController();
  final _new2 = TextEditingController();
  bool _show = false;
  bool _busy = false;
  String? _error;
  bool _bioMode = false;
  bool _bioAvailable = false;

  @override
  void initState() {
    super.initState();
    widget.auth.biometricEnabled().then((v) {
      if (mounted) setState(() => _bioAvailable = v);
    });
  }

  @override
  void dispose() {
    _old.dispose();
    _new.dispose();
    _new2.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = AppLocalizations.of(context)!;
    final checks = checkPassword(_new.text);
    if (!checks.ok) {
      setState(
        () => _error = checks.length ? t.passwordNeedsMix : t.passwordTooShort,
      );
      return;
    }
    if (_new.text != _new2.text) {
      setState(() => _error = t.passwordsDontMatch);
      return;
    }
    if (!_bioMode && _new.text == _old.text) {
      setState(() => _error = t.newPasswordSame);
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      if (_bioMode) {
        final ok = await widget.auth.resetPasswordWithBiometrics(
          _new.text,
          t.biometricReason,
        );
        if (!ok) {
          if (mounted) {
            setState(() {
              _busy = false;
              _error = t.bioConfirmFailed;
            });
          }
          return;
        }
      } else {
        await widget.auth.changePassword(_old.text, _new.text);
      }
      if (mounted) Navigator.pop(context, true);
    } on WrongPasswordException {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = t.wrongPassword;
        });
      }
    } on LockedOutException catch (e) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = t.lockedOut(e.remaining.inSeconds);
        });
      }
    } catch (_) {
      if (mounted) {
        setState(() {
          _busy = false;
          _error = t.changePasswordFailed;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(t.changeMasterPassword),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.setupInfo,
              style: const TextStyle(fontSize: 12, color: Colors.white70),
            ),
            const SizedBox(height: 16),
            if (!_bioMode)
              TextField(
                controller: _old,
                obscureText: !_show,
                enabled: !_busy,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: t.currentPassword,
                  suffixIcon: IconButton(
                    icon: Icon(_show ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => _show = !_show),
                  ),
                ),
              ),
            if (_bioMode)
              Text(
                t.forgotPasswordBioHint,
                style: const TextStyle(fontSize: 12, color: Colors.white70),
              ),
            if (_bioAvailable)
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: _busy
                      ? null
                      : () => setState(() {
                          _bioMode = !_bioMode;
                          _error = null;
                        }),
                  child: Text(
                    _bioMode ? t.useCurrentPassword : t.forgotOldPassword,
                  ),
                ),
              ),
            const SizedBox(height: 16),
            TextField(
              controller: _new,
              obscureText: !_show,
              enabled: !_busy,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(labelText: t.newPassword),
            ),
            StrengthBar(_new.text),
            PasswordRequirements(_new.text),
            const SizedBox(height: 16),
            TextField(
              controller: _new2,
              obscureText: !_show,
              enabled: !_busy,
              enableSuggestions: false,
              autocorrect: false,
              decoration: InputDecoration(labelText: t.confirmPassword),
            ),
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
          onPressed: _busy ? null : () => Navigator.pop(context, false),
          child: Text(t.cancel),
        ),
        FilledButton(
          onPressed: _busy ? null : _submit,
          child: _busy
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(t.change),
        ),
      ],
    );
  }
}
