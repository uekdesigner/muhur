import 'dart:async';

import 'package:flutter/material.dart';

import 'core/crypto/crypto_service.dart';
import 'core/storage/app_settings.dart';
import 'core/storage/database_manager.dart';
import 'core/utils/clipboard_service.dart';
import 'core/utils/privacy_cover.dart';
import 'features/auth/auth_screens.dart';
import 'features/auth/auth_service.dart';
import 'features/password_gen/generator_settings.dart';
import 'features/vault/vault_home_screen.dart';
import 'l10n/app_localizations.dart';
import 'core/constants/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettings.instance.load();
  await GeneratorSettings.instance.load();
  ClipboardService.instance.init();
  runApp(const MuhurApp());
}

class MuhurApp extends StatelessWidget {
  const MuhurApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale?>(
      valueListenable: AppSettings.instance.locale,
      builder: (context, loc, _) => MaterialApp(
        locale: loc,
        onGenerateTitle: (c) => AppLocalizations.of(c)!.appName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: privacyBuilder,
        theme: buildMuhurTheme(),
        home: const AppRoot(),
      ),
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});
  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> with WidgetsBindingObserver {
  final AuthService _auth = AuthService(CryptoService(), DatabaseManager());
  bool? _exists;
  bool _unlocked = false;
  DateTime? _backgroundedAt;
  Timer? _lockTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    AppSettings.instance.load();
    _auth.vaultExists().then((v) => setState(() => _exists = v));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _lockTimer?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.inactive:
        privacyCover.value = true;
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
        privacyCover.value = true;
        _backgroundedAt ??= DateTime.now();
        _scheduleLock();
      case AppLifecycleState.resumed:
        _onResumed();
      case AppLifecycleState.detached:
        break;
    }
  }

  void _scheduleLock() {
    _lockTimer?.cancel();
    if (!_unlocked) return;
    final secs = AppSettings.instance.autoLockSeconds;
    _lockTimer = Timer(Duration(seconds: secs), () {
      if (_auth.systemDialogActive) return;
      _lockNow();
    });
  }

  Future<void> _onResumed() async {
    _lockTimer?.cancel();
    final since = _backgroundedAt;
    _backgroundedAt = null;
    if (_unlocked && since != null && !_auth.systemDialogActive) {
      final away = DateTime.now().difference(since).inSeconds;
      if (away >= AppSettings.instance.autoLockSeconds) {
        await _lockNow();
      }
    }
    privacyCover.value = false;
  }

  Future<void> _lockNow() async {
    if (!_unlocked) return;
    Navigator.of(context).popUntil((r) => r.isFirst);
    await _auth.lock();
    if (mounted) setState(() => _unlocked = false);
  }

  @override
  Widget build(BuildContext context) {
    if (_exists == null) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    if (_unlocked) {
      return VaultHomeScreen(auth: _auth, onLock: _lockNow);
    }
    if (!_exists!) {
      return SetupScreen(
        auth: _auth,
        onDone: () => setState(() {
          _exists = true;
          _unlocked = true;
        }),
      );
    }
    return UnlockScreen(
      auth: _auth,
      onDone: () => setState(() => _unlocked = true),
    );
  }
}
