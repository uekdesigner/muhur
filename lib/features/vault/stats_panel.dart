import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../l10n/app_localizations.dart';

import 'vault_repository.dart';

class StatsPanel extends StatefulWidget {
  const StatsPanel({super.key, required this.stats});
  final VaultStats? stats;

  @override
  State<StatsPanel> createState() => _StatsPanelState();
}

class _StatsPanelState extends State<StatsPanel> {
  /// true: tüm panel; false: yalnızca zayıf-orta-güçlü şeridi.
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final s = widget.stats;
    final empty = s == null || s.total == 0;

    return Container(
      margin: const EdgeInsets.fromLTRB(12, 4, 12, 8),
      padding: EdgeInsets.fromLTRB(12, _expanded ? 8 : 2, 4, _expanded ? 6 : 2),
      decoration: BoxDecoration(
        color: const Color(0xEB161B1F),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: MuhurColors.bronze, width: 1.2),
      ),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: _GradientBar(fraction: empty ? 0 : s.score / 100),
                ),
                // Yüzde yalnızca en az bir parola varken görünür.
                if (s != null && s.total > 0) ...[
                  const SizedBox(width: 10),
                  Text(
                    '%${s.score}',
                    style: const TextStyle(
                      color: MuhurColors.cream,
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                    ),
                  ),
                ],
                // Aşağı ok: paneli şeride küçült, yukarı ok: eski haline döndür.
                IconButton(
                  visualDensity: VisualDensity.compact,
                  icon: Icon(
                    _expanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: MuhurColors.cream,
                  ),
                  onPressed: () => setState(() => _expanded = !_expanded),
                ),
              ],
            ),
            if (_expanded) ...[
              const SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    _Stat(t.statTotal, s?.total ?? 0, MuhurColors.cream),
                    _Stat(t.strengthWeak, s?.weak ?? 0, Colors.redAccent),
                    _Stat(t.strengthFair, s?.fair ?? 0, Colors.orangeAccent),
                    _Stat(t.strengthStrong, s?.strong ?? 0, Colors.greenAccent),
                    _Stat(
                      t.statReused,
                      s?.duplicates ?? 0,
                      MuhurColors.bronzeLight,
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat(this.label, this.value, this.color);
  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        padding: const EdgeInsets.symmetric(vertical: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: MuhurColors.bronze.withValues(alpha: 0.7)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$value',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800,
                color: color,
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                style: const TextStyle(fontSize: 10, color: MuhurColors.cream),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GradientBar extends StatelessWidget {
  const _GradientBar({required this.fraction});
  final double fraction;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        height: 8,
        child: Stack(
          children: [
            const Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.yellow, Colors.green],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FractionallySizedBox(
                widthFactor: (1 - fraction).clamp(0.0, 1.0),
                child: const ColoredBox(
                  color: MuhurColors.bg,
                  child: SizedBox.expand(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
