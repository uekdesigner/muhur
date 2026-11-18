import 'package:flutter/material.dart';

import '../../core/entitlements/entitlements.dart';
import '../../core/storage/app_settings.dart';
import '../../l10n/app_localizations.dart';
import '../vault/pro_dialog.dart';

/// Tarayıcı ekranını ([screen]) açar ve okunan değeri döndürür.
/// Ücretsiz planda tarama hakkını denetler; değer okunduysa hakkı düşer.
/// İptalde ya da hak bittiyse null döner.
Future<String?> openScanner(BuildContext context, Widget screen) async {
  final t = AppLocalizations.of(context)!;
  final pro = Entitlements.instance.isPro;
  if (!pro &&
      await AppSettings.instance.scanTrialsUsed() >=
          Entitlements.freeScanTrials) {
    if (context.mounted) {
      await showProDialog(
        context,
        t.scanLimitTitle,
        t.scanLimitBody(Entitlements.freeScanTrials),
      );
    }
    return null;
  }
  if (!context.mounted) return null;
  final v = await Navigator.push<String>(
    context,
    MaterialPageRoute(builder: (_) => screen),
  );
  if (v != null && !pro) await AppSettings.instance.useScanTrial();
  return v;
}
