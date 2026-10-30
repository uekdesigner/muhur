import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../l10n/app_localizations.dart';

class VaultHeader extends StatelessWidget {
  const VaultHeader({
    super.key,
    required this.screenProtected,
    required this.selectedCount,
    required this.onHelp,
    required this.onDelete,
    required this.onLock,
    required this.searchActive,
    required this.onSearch,
    required this.onSettings,
  });

  final bool screenProtected;
  final int selectedCount;
  final VoidCallback onHelp;
  final VoidCallback onDelete;
  final VoidCallback onLock;
  final bool searchActive;
  final VoidCallback onSearch;
  final VoidCallback onSettings;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 12, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MuhurSeal(size: 40),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            t.brandName,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: MuhurColors.bronzeLight,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        _FreeBadge(t.planFree),
                      ],
                    ),
                    Text(
                      t.brandSubtitle,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: MuhurColors.cream,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              // Üç buton tek sıraya sığsın diye küçük ve çerçevesiz.
              HeaderButton(
                icon: Icons.question_mark,
                tooltip: t.helpTitle,
                onPressed: onHelp,
                framed: false,
                size: 32,
                iconSize: 22,
              ),
              const SizedBox(width: 2),
              HeaderButton(
                icon: Icons.delete_outline,
                tooltip: t.delete,
                onPressed: selectedCount > 0 ? onDelete : null,
                badge: selectedCount,
                danger: selectedCount > 0,
                framed: false,
                size: 32,
                iconSize: 22,
              ),
              const SizedBox(width: 2),
              HeaderButton(
                icon: Icons.lock,
                tooltip: t.lockNow,
                onPressed: onLock,
                framed: false,
                size: 32,
                iconSize: 22,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Wrap(
                  spacing: 8,
                  runSpacing: 6,
                  children: [
                    StatusPill(label: t.statusScreen, active: screenProtected),
                    ValueListenableBuilder<bool>(
                      valueListenable: AppSettings.instance.autoBackup,
                      builder: (context, on, _) =>
                          StatusPill(label: t.statusBackup, active: on),
                    ),
                  ],
                ),
              ),
              HeaderButton(
                icon: searchActive ? Icons.close : Icons.search,
                tooltip: searchActive ? t.close : t.searchHint,
                onPressed: onSearch,
                framed: false,
                size: 32,
                iconSize: 22,
              ),
              const SizedBox(width: 2),
              HeaderButton(
                icon: Icons.settings,
                tooltip: t.settings,
                onPressed: onSettings,
                framed: false,
                size: 32,
                iconSize: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FreeBadge extends StatelessWidget {
  const _FreeBadge(this.label);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: MuhurColors.bronze.withValues(alpha: 0.8)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: MuhurColors.bronzeLight,
          fontSize: 10,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

/// Yalnızca bilgi gösterir; dokunulmaz. Yeşil = açık, gri = kapalı.
class StatusPill extends StatelessWidget {
  const StatusPill({super.key, required this.label, required this.active});
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xCC1B2024),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: active ? Colors.greenAccent : Colors.grey,
              boxShadow: active
                  ? [
                      BoxShadow(
                        color: Colors.greenAccent.withValues(alpha: 0.7),
                        blurRadius: 8,
                      ),
                    ]
                  : null,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: MuhurColors.cream,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.badge = 0,
    this.danger = false,
    this.framed = true,
    this.size = 44,
    this.iconSize = 24,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;
  final int badge;
  final bool danger;

  /// false ise koyu zemin ve çerçeve çizilmez; yalnızca ikon görünür.
  final bool framed;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    final color = danger ? Colors.redAccent : MuhurColors.bronze;
    final iconColor = (!framed && danger)
        ? Colors.redAccent
        : MuhurColors.cream;

    final Widget button = framed
        ? Material(
            color: const Color(0xCC14181C),
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: color, width: 1.4),
            ),
            child: InkWell(
              onTap: onPressed,
              child: SizedBox(
                width: size,
                height: size,
                child: Icon(icon, size: iconSize, color: iconColor),
              ),
            ),
          )
        : InkResponse(
            onTap: onPressed,
            radius: size * 0.7,
            child: SizedBox(
              width: size,
              height: size,
              child: Icon(icon, size: iconSize, color: iconColor),
            ),
          );

    return Tooltip(
      message: tooltip,
      child: Opacity(
        opacity: enabled ? 1 : 0.45,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            button,
            if (badge > 0)
              Positioned(
                right: framed ? -4 : -2,
                top: framed ? -4 : -2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    '$badge',
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
