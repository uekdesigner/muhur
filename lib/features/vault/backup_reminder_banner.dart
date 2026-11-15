import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../core/widgets/panel_style.dart';
import '../../l10n/app_localizations.dart';

/// Yedek zamanı geldiğinde ana ekranda görünen hatırlatma.
class BackupReminderBanner extends StatelessWidget {
  const BackupReminderBanner({super.key, required this.onBackup});
  final VoidCallback onBackup;

  @override
  Widget build(BuildContext context) {
    final s = AppSettings.instance;
    return ListenableBuilder(
      listenable: s.backupChanges,
      builder: (context, _) {
        if (!s.backupDue) return const SizedBox.shrink();
        final t = AppLocalizations.of(context)!;
        final days = s.daysSinceBackup;
        return Container(
          margin: const EdgeInsets.fromLTRB(16, 4, 16, 4),
          padding: const EdgeInsets.fromLTRB(12, 6, 6, 6),
          decoration: BoxDecoration(
            color: panelColor(context, const Color(0xCC14181C)),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: MuhurColors.line),
          ),
          child: Row(
            children: [
              Icon(
                Icons.settings_backup_restore,
                color: MuhurColors.bronzeLight,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  days == null
                      ? t.backupReminderNever
                      : t.backupReminderAgo(days),
                  style: TextStyle(color: MuhurColors.cream, fontSize: 13),
                ),
              ),
              RoundIconButton(
                icon: Icons.snooze,
                tooltip: t.backupReminderLater,
                size: 38,
                onPressed: s.snoozeBackupReminder,
              ),
              const SizedBox(width: 6),
              RoundIconButton(
                icon: Icons.save_alt,
                tooltip: t.backupReminderNow,
                size: 38,
                primary: true,
                onPressed: onBackup,
              ),
            ],
          ),
        );
      },
    );
  }
}
