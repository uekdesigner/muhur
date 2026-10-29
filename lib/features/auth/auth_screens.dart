import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../l10n/app_localizations.dart';
import '../password_gen/strength_bar.dart';
import 'auth_service.dart';
import 'password_policy.dart';
import 'password_requirements.dart';

// ---------------------------------------------------------------------------
// İlk kurulum: ana parola oluşturma
// ---------------------------------------------------------------------------
class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key, required this.auth, required this.onDone});
  final AuthService auth;
  final VoidCallback onDone;
  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen> {
  final _pw = TextEditingController();
  final _pw2 = TextEditingController();
  bool _show = false;
  bool _ack = false;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _pw.dispose();
    _pw2.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final t = AppLocalizations.of(context)!;
    final checks = checkPassword(_pw.text);
    if (!checks.ok) {
      setState(
        () => _error = checks.length ? t.passwordNeedsMix : t.passwordTooShort,
      );
      return;
    }
    if (_pw.text != _pw2.text) {
      setState(() => _error = t.passwordsDontMatch);
      return;
    }
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.auth.createVault(_pw.text);

      if (await widget.auth.biometricAvailable() && mounted) {
        final enable = await showDialog<bool>(
          context: context,
          builder: (c) => AlertDialog(
            title: Text(t.enableBiometricsQ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(c, false),
                child: Text(t.notNow),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(c, true),
                child: Text(t.enable),
              ),
            ],
          ),
        );
        if (enable == true) {
          await widget.auth.enableBiometrics(t.biometricReason);
        }
      }
      widget.onDone();
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = '$e';
          _busy = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      body: MuhurBackground(
        showLanguageButton: true,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MuhurSeal(size: 120),
                  const SizedBox(height: 16),
                  Text(
                    t.setupTitle,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      color: MuhurColors.bronzeLight,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.setupInfo,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: MuhurColors.cream,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _pw,
                    obscureText: !_show,
                    enableSuggestions: false,
                    autocorrect: false,
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      labelText: t.masterPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _show ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () => setState(() => _show = !_show),
                      ),
                    ),
                  ),
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
                  const SizedBox(height: 8),
                  CheckboxListTile(
                    value: _ack,
                    onChanged: (v) => setState(() => _ack = v ?? false),
                    controlAffinity: ListTileControlAffinity.leading,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      t.understandNoRecovery,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: MuhurColors.cream,
                      ),
                    ),
                  ),
                  if (_error != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      _error!,
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                  ],
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: (_busy || !_ack) ? null : _submit,
                      child: _busy
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(t.createVault),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Kilit açma (ana giriş ekranı)
// ---------------------------------------------------------------------------
class UnlockScreen extends StatefulWidget {
  const UnlockScreen({super.key, required this.auth, required this.onDone});
  final AuthService auth;
  final VoidCallback onDone;
  @override
  State<UnlockScreen> createState() => _UnlockScreenState();
}

class _UnlockScreenState extends State<UnlockScreen> {
  final _pw = TextEditingController();
  bool _show = false;
  bool _busy = false;
  bool _bioEnabled = false;
  String? _error;
  bool get _canSubmit =>
      !_busy && _pw.text.runes.length >= kMinMasterPasswordLength;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _initBio());
  }

  @override
  void dispose() {
    _pw.dispose();
    super.dispose();
  }

  Future<void> _initBio() async {
    final enabled = await widget.auth.biometricEnabled();
    if (!mounted) return;
    setState(() => _bioEnabled = enabled);
    // Biyometrik sorgu artık otomatik açılmaz; kullanıcı parmak izi
    // butonuna dokununca başlar.
  }

  Future<void> _bio() async {
    final t = AppLocalizations.of(context)!;
    final ok = await widget.auth.unlockWithBiometrics(t.biometricReason);
    if (ok && mounted) widget.onDone();
  }

  Future<void> _submit() async {
    final t = AppLocalizations.of(context)!;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await widget.auth.unlockWithPassword(_pw.text);
      if (mounted) widget.onDone();
    } on WrongPasswordException {
      if (mounted) setState(() => _error = t.wrongPassword);
    } on LockedOutException catch (e) {
      if (mounted) {
        setState(() => _error = t.lockedOut(e.remaining.inSeconds));
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  void _showInfo() {
    final t = AppLocalizations.of(context)!;
    showDialog<void>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(t.infoTitle),
        content: Text(t.infoBody),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c), child: Text(t.close)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      body: MuhurBackground(
        showLanguageButton: true,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const MuhurSeal(size: 170),
                  const SizedBox(height: 28),
                  TextField(
                    controller: _pw,
                    obscureText: !_show,
                    enableSuggestions: false,
                    autocorrect: false,
                    onChanged: (_) => setState(() {}),
                    onSubmitted: (_) {
                      if (_canSubmit) _submit();
                    },
                    decoration: InputDecoration(
                      labelText: t.masterPassword,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _show ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () => setState(() => _show = !_show),
                      ),
                    ),
                  ),
                  if (_error != null) ...[
                    const SizedBox(height: 10),
                    Text(
                      _error!,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                  ],
                  const SizedBox(height: 14),
                  Row(
                    children: [
                      SizedBox(
                        width: 56,
                        height: 56,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: _showInfo,
                          child: const Icon(Icons.info_outline),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton(
                          onPressed: _canSubmit ? _submit : null,
                          child: _busy
                              ? const SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : Text(t.login),
                        ),
                      ),
                      if (_bioEnabled) ...[
                        const SizedBox(width: 12),
                        SizedBox(
                          width: 56,
                          height: 56,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            onPressed: _busy ? null : _bio,
                            child: const Icon(Icons.fingerprint),
                          ),
                        ),
                      ],
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    '${t.brandName} ${t.brandSubtitle}',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: MuhurColors.bronzeLight,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    t.tagline,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: MuhurColors.cream,
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
