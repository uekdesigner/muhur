import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'password_generator.dart';

class StrengthBar extends StatelessWidget {
  const StrengthBar(this.password, {super.key});
  final String password;

  @override
  Widget build(BuildContext context) {
    if (password.isEmpty) return const SizedBox.shrink();
    final t = AppLocalizations.of(context)!;
    final r = estimateStrength(password);
    final (label, color) = switch (r.level) {
      Strength.weak => (t.strengthWeak, Colors.redAccent),
      Strength.fair => (t.strengthFair, Colors.orangeAccent),
      Strength.good => (t.strengthGood, Colors.lightGreen),
      Strength.strong => (t.strengthStrong, Colors.green),
    };
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearProgressIndicator(
            value: r.fraction,
            color: color,
            minHeight: 6,
            borderRadius: BorderRadius.circular(3),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: color, fontSize: 12)),
        ],
      ),
    );
  }
}
