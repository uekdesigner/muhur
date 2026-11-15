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

/// Parola kurallarını kısa rozetler olarak gösterir (diyalog başlığının
/// altında). Karşılanan rozet yeşil, karşılanmayan soluk görünür; rozete
/// dokununca kuralın tam metni açıklama olarak çıkar.
class PasswordRuleChips extends StatelessWidget {
  const PasswordRuleChips(this.password, {super.key});
  final String password;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final c = checkPassword(password);

    Widget chip(bool ok, String label, String tip) {
      final color = ok ? Colors.greenAccent : Colors.white54;
      return Tooltip(
        message: tip,
        triggerMode: TooltipTriggerMode.tap,
        showDuration: const Duration(seconds: 4),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: const Color(0xCC1B2024),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: ok
                  ? Colors.greenAccent.withValues(alpha: 0.6)
                  : Colors.white24,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                ok ? Icons.check_circle : Icons.radio_button_unchecked,
                size: 13,
                color: color,
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: [
        chip(c.length, '$kMinMasterPasswordLength+', t.reqLength),
        chip(c.lower, 'a-z', t.reqLower),
        chip(c.upper, 'A-Z', t.reqUpper),
        chip(c.digit, '0-9', t.reqDigit),
        chip(c.special, '!@#', t.reqSpecial),
      ],
    );
  }
}
