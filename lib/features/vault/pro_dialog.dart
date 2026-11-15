import 'package:flutter/material.dart';

import '../../core/utils/motion.dart';
import '../../l10n/app_localizations.dart';

/// Ücretsiz sınır bildirimi. Satın alma düğmesi Play Billing adımında eklenecek.
Future<void> showProDialog(BuildContext context, String title, String body) {
  final t = AppLocalizations.of(context)!;
  return showDialog<void>(
    context: context,
    animationStyle: Motion.style,
    builder: (c) => AlertDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        TextButton(onPressed: () => Navigator.pop(c), child: Text(t.close)),
      ],
    ),
  );
}
