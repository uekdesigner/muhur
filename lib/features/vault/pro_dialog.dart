import 'package:flutter/material.dart';

import '../../core/utils/motion.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';

/// Ücretsiz sınır bildirimi. Satın alma düğmesi Play Billing adımında eklenecek.
Future<void> showProDialog(BuildContext context, String title, String body) {
  final t = AppLocalizations.of(context)!;
  return showDialog<void>(
    context: context,
    animationStyle: Motion.style,
    builder: (c) => ScrollDialog(
      title: Text(title),
      content: Text(body),
      actions: [
        RoundIconButton(
          icon: Icons.close,
          tooltip: t.close,
          onPressed: () => Navigator.pop(c),
        ),
      ],
    ),
  );
}
