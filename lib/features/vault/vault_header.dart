import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/utils/screen_capture_service.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../l10n/app_localizations.dart';

class VaultHeader extends StatelessWidget {
  const VaultHeader({
    super.key,
    required this.selectedCount,
    required this.onDelete,
    required this.onLock,
    required this.searchActive,
    required this.onSearch,
    required this.onSettings,
  });

  final int selectedCount;
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
                            style: TextStyle(
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
                      style: TextStyle(
                        color: MuhurColors.cream,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              // Üç buton tek sıraya sığsın diye küçük ve çerçevesiz.
              const _HelpWiggle(child: _HelpMenu()),
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
                    ValueListenableBuilder<bool>(
                      valueListenable: ScreenCaptureService.instance.protected,
                      builder: (context, on, _) => StatusPill(
                        icon: Icons.shield_outlined,
                        tooltip: on ? t.statusScreenOn : t.statusScreenOff,
                        active: on,
                      ),
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: AppSettings.instance.autoBackup,
                      builder: (context, on, _) => StatusPill(
                        icon: Icons.settings_backup_restore,
                        tooltip: on ? t.statusBackupOn : t.statusBackupOff,
                        active: on,
                      ),
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
        style: TextStyle(
          color: MuhurColors.bronzeLight,
          fontSize: 10,
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

/// Durum ikonu: yeşil = açık, soluk = kapalı. Dokunulunca açıklama gösterir.
class StatusPill extends StatelessWidget {
  const StatusPill({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.active,
  });
  final IconData icon;
  final String tooltip;
  final bool active;

  @override
  Widget build(BuildContext context) {
    final color = active
        ? Colors.greenAccent
        : MuhurColors.cream.withValues(alpha: 0.35);
    return Tooltip(
      message: tooltip,
      triggerMode: TooltipTriggerMode.tap,
      showDuration: const Duration(seconds: 3),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: const Color(0xCC1B2024),
          shape: BoxShape.circle,
          boxShadow: active
              ? [
                  BoxShadow(
                    color: Colors.greenAccent.withValues(alpha: 0.35),
                    blurRadius: 8,
                  ),
                ]
              : null,
        ),
        child: Icon(icon, size: 18, color: color),
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

class _HelpMenu extends StatelessWidget {
  const _HelpMenu();

  static const double _panelW = 260;

  void _open(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final box = context.findRenderObject() as RenderBox;
    final pos = box.localToGlobal(Offset.zero);
    final screenW = MediaQuery.of(context).size.width;
    final top = pos.dy + box.size.height + 6;
    final iconCx = pos.dx + box.size.width / 2;
    final panelLeft = screenW - 12 - _panelW;
    final originX = (((iconCx - panelLeft) / _panelW) * 2 - 1).clamp(-1.0, 1.0);

    final items = <(IconData, String)>[
      (Icons.add, t.helpAdd),
      (Icons.touch_app_outlined, t.helpTap),
      (Icons.pan_tool_outlined, t.helpLongPress),
      (Icons.search, t.helpSearch),
      (Icons.folder_outlined, t.helpCategories),
      (Icons.lock_outline, t.helpLock),
      (Icons.settings_outlined, t.helpSettings),
      (Icons.bar_chart_rounded, t.helpStats),
      (Icons.shield_outlined, t.helpStatusScreen),
      (Icons.settings_backup_restore, t.helpStatusBackup),
    ];

    showGeneralDialog<void>(
      context: context,
      barrierDismissible: true,
      barrierLabel: t.close,
      barrierColor: const Color(0x00000000),
      transitionDuration: AppSettings.instance.reduceAnimations.value
          ? Duration.zero
          : const Duration(milliseconds: 250),
      pageBuilder: (ctx, anim, secondary) {
        return Stack(
          children: [
            Positioned(
              top: top,
              right: 12,
              width: _panelW,
              child: Material(
                color: const Color(0xF0161B1F),
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: MuhurColors.bronze, width: 1.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 12, 14, 8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.helpMenuTitle,
                        style: TextStyle(
                          color: MuhurColors.cream,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Divider(color: MuhurColors.bronze, height: 1),
                      const SizedBox(height: 4),
                      for (var i = 0; i < items.length; i++)
                        _stagger(
                          anim,
                          i,
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Icon(
                                  items[i].$1,
                                  size: 19,
                                  color:
                                      (items[i].$1 == Icons.shield_outlined ||
                                          items[i].$1 ==
                                              Icons.settings_backup_restore)
                                      ? Colors.greenAccent
                                      : MuhurColors.bronzeLight,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    items[i].$2,
                                    style: TextStyle(
                                      color: MuhurColors.cream,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
      transitionBuilder: (ctx, anim, secondary, child) {
        final scale = CurvedAnimation(
          parent: anim,
          curve: Curves.easeOutCubic,
          reverseCurve: Curves.easeInCubic,
        );
        return FadeTransition(
          opacity: CurvedAnimation(parent: anim, curve: Curves.easeOut),
          child: ScaleTransition(
            alignment: Alignment(originX, -1),
            scale: Tween<double>(begin: 0.8, end: 1).animate(scale),
            child: child,
          ),
        );
      },
    );
  }

  /// Maddeler sırayla, sağdan hafifçe kayarak belirir.
  Widget _stagger(Animation<double> anim, int i, Widget child) {
    if (AppSettings.instance.reduceAnimations.value) return child;
    final start = (0.15 + i * 0.07).clamp(0.0, 0.7);
    final curve = CurvedAnimation(
      parent: anim,
      curve: Interval(start, 1.0, curve: Curves.easeOut),
    );
    return FadeTransition(
      opacity: curve,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.08, 0),
          end: Offset.zero,
        ).animate(curve),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Tooltip(
      message: t.helpTitle,
      child: InkResponse(
        radius: 22,
        onTap: () => _open(context),
        child: SizedBox(
          width: 32,
          height: 32,
          child: Icon(Icons.question_mark, size: 22, color: MuhurColors.cream),
        ),
      ),
    );
  }
}

/// ? ikonu dokunulana kadar 5 saniyede bir sallanıp parlar.
class _HelpWiggle extends StatefulWidget {
  const _HelpWiggle({required this.child});
  final Widget child;

  @override
  State<_HelpWiggle> createState() => _HelpWiggleState();
}

class _HelpWiggleState extends State<_HelpWiggle>
    with SingleTickerProviderStateMixin {
  static const _gap = Duration(
    milliseconds: 2800,
  ); // iki animasyon arası bekleme

  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2200),
  );
  bool _active = false;

  @override
  void initState() {
    super.initState();
    final s = AppSettings.instance;
    if (s.helpAnimation.value && !s.reduceAnimations.value && !s.helpSeen) {
      _active = true;
      _loop();
    }
  }

  bool get _shouldPlay =>
      mounted &&
      _active &&
      AppSettings.instance.helpAnimation.value &&
      !AppSettings.instance.reduceAnimations.value;

  Future<void> _loop() async {
    await Future.delayed(const Duration(milliseconds: 700));
    while (_shouldPlay) {
      await _c.forward(from: 0);
      if (!_shouldPlay) break;
      await Future.delayed(_gap);
    }
  }

  /// Dokununca bir daha oynamaz.
  void _stop() {
    _active = false;
    _c.stop(canceled: false);
    _c.value = 0;
    AppSettings.instance.markHelpSeen();
  }

  @override
  void dispose() {
    _active = false;
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) => _stop(),
      child: AnimatedBuilder(
        animation: _c,
        builder: (context, child) {
          final t = _c.value;
          final wave = math.sin(t * math.pi * 10); // 5 tam sallanma
          final fade = math.sin(t * math.pi); // başta ve sonda yumuşak
          final glow = (wave.abs() * fade).clamp(0.0, 1.0);
          return Transform.rotate(
            angle: wave * 0.35 * fade,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                if (glow > 0.01)
                  Positioned(
                    left: -10,
                    right: -10,
                    top: -10,
                    bottom: -10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: MuhurColors.bronzeLight.withValues(
                              alpha: 0.45 * glow,
                            ),
                            blurRadius: 18 * glow,
                            spreadRadius: 2 * glow,
                          ),
                        ],
                      ),
                    ),
                  ),
                // Soru işaretinin kendi şeklini saran dar ve keskin ışık
                if (glow > 0.01)
                  Icon(
                    Icons.question_mark,
                    size: 22,
                    color: MuhurColors.bronzeLight.withValues(alpha: glow),
                    shadows: [
                      Shadow(
                        color: MuhurColors.bronzeLight.withValues(alpha: glow),
                        blurRadius: 6 * glow,
                      ),
                      Shadow(
                        color: MuhurColors.bronze.withValues(alpha: 0.9 * glow),
                        blurRadius: 14 * glow,
                      ),
                    ],
                  ),
                child!,
              ],
            ),
          );
        },
        child: widget.child,
      ),
    );
  }
}
