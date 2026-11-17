import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/entitlements/entitlements.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';
import '../password_gen/password_generator.dart';
import 'pro_dialog.dart';
import 'vault_models.dart';
import 'vault_repository.dart';

/// Kasa sağlığı (Pro): zayıf, tekrar eden ve orta güçteki parolaların hangi
/// kayıtlarda olduğunu listeler; dokununca kayıt açılır.
/// Ücretsiz planda sayılar panelde görünür, liste Pro penceresini açar.
Future<void> showHealthDialog(
  BuildContext context, {
  required VaultStats stats,
  required VaultRepository repo,
  required Future<void> Function(VaultEntry) onOpen,
}) async {
  final t = AppLocalizations.of(context)!;
  if (!Entitlements.instance.isPro) {
    await showProDialog(context, t.proFeatureTitle, t.proHealthBody);
    return;
  }
  final entries = await repo.entries();
  if (!context.mounted) return;

  List<VaultEntry> pick(bool Function(int id) test) => [
    for (final e in entries)
      if (e.id != null && test(e.id!)) e,
  ];
  final weak = pick((id) => stats.levels[id] == Strength.weak);
  final reused = pick(stats.reusedIds.contains);
  final fair = pick((id) => stats.levels[id] == Strength.fair);
  final allGood = weak.isEmpty && reused.isEmpty && fair.isEmpty;

  await showDialog<void>(
    context: context,
    animationStyle: Motion.style,
    builder: (c) {
      Widget section(
        String title,
        Color color,
        String hint,
        List<VaultEntry> list,
      ) {
        if (list.isEmpty) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.only(bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '$title (${list.length})',
                    style: TextStyle(
                      color: color,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                hint,
                style: TextStyle(
                  color: MuhurColors.cream.withValues(alpha: 0.65),
                  fontSize: 12.5,
                  height: 1.35,
                ),
              ),
              const SizedBox(height: 4),
              for (final e in list)
                InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {
                    Navigator.pop(c);
                    onOpen(e);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: MuhurColors.cream,
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if ((e.domain ?? '').isNotEmpty)
                                Text(
                                  e.domain!,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: MuhurColors.cream.withValues(
                                      alpha: 0.55,
                                    ),
                                    fontSize: 12,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: MuhurColors.bronzeLight,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        );
      }

      return ScrollDialog(
        title: Text(t.proFeatHealth),
        content: allGood
            ? Text(t.healthAllGood)
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  section(
                    t.strengthWeak,
                    Colors.redAccent,
                    t.healthWeakHint,
                    weak,
                  ),
                  section(
                    t.statReused,
                    MuhurColors.bronzeLight,
                    t.healthReusedHint,
                    reused,
                  ),
                  section(
                    t.strengthFair,
                    Colors.orangeAccent,
                    t.healthFairHint,
                    fair,
                  ),
                ],
              ),
        actions: [
          RoundIconButton(
            icon: Icons.close,
            tooltip: t.close,
            onPressed: () => Navigator.pop(c),
          ),
        ],
      );
    },
  );
}
