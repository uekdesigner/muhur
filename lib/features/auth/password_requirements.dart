import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'password_policy.dart';

class PasswordRequirements extends StatelessWidget {
  const PasswordRequirements(this.password, {super.key});
  final String password;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final c = checkPassword(password);

    Widget row(bool ok, String text) => Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Row(
        children: [
          Icon(
            ok ? Icons.check_circle : Icons.radio_button_unchecked,
            size: 16,
            color: ok ? Colors.greenAccent : Colors.white54,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: ok ? Colors.greenAccent : Colors.white70,
            ),
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          row(c.length, t.reqLength),
          row(c.lower, t.reqLower),
          row(c.upper, t.reqUpper),
          row(c.digit, t.reqDigit),
          row(c.special, t.reqSpecial),
        ],
      ),
    );
  }
}
