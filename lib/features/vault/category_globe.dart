import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/app_theme.dart';

class GlobeItem {
  const GlobeItem(this.label, this.icon);
  final String label;
  final IconData icon;
}

class CategoryGlobe extends StatefulWidget {
  const CategoryGlobe({
    super.key,
    required this.items,
    required this.onSelected,
    this.height = 108,
  });

  final List<GlobeItem> items;
  final ValueChanged<int> onSelected;
  final double height;

  @override
  State<CategoryGlobe> createState() => _CategoryGlobeState();
}

class _CategoryGlobeState extends State<CategoryGlobe> {
  // Ayarlar: görünümü buradan değiştirebilirsin
  static const double _fraction = 0.28; // bir öğenin ekran genişliğine oranı
  static const double _step = 0.6; // komşu öğeler arası açı (radyan)
  static const double _tilt =
      0.6; // yana yatma şiddeti (ters görünürse eksi yap)

  late final int _n = widget.items.length;
  late final int _base = _n * 5000; // sonsuz döngü için ortadan başla
  late final PageController _c = PageController(
    viewportFraction: _fraction,
    initialPage: _base,
  );
  int _lastIndex = 0;

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  Widget _face(GlobeItem it, double t) {
    final border = Color.lerp(
      MuhurColors.bronze.withValues(alpha: 0.5),
      MuhurColors.bronzeLight,
      t,
    )!;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Color.lerp(const Color(0xCC14181C), const Color(0xF0222A30), t),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: border, width: 1 + t),
        boxShadow: [
          BoxShadow(
            color: MuhurColors.bronze.withValues(alpha: 0.35 * t),
            blurRadius: 14 * t,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(it.icon, color: MuhurColors.cream, size: 26),
          const SizedBox(height: 6),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              it.label,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: MuhurColors.cream,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: LayoutBuilder(
        builder: (context, box) {
          final itemW = box.maxWidth * _fraction;
          final radius = itemW / _step;

          return PageView.builder(
            controller: _c,
            itemCount: _base * 2,
            clipBehavior: Clip.none,
            onPageChanged: (p) {
              final i = p % _n;
              if (i != _lastIndex) {
                _lastIndex = i;
                HapticFeedback.selectionClick();
              }
              widget.onSelected(i);
            },
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation: _c,
                builder: (context, _) {
                  final page =
                      (_c.hasClients ? _c.page : null) ?? _base.toDouble();
                  final d = index - page; // negatif: solda, pozitif: sağda
                  final a = (d * _step).clamp(-math.pi / 2, math.pi / 2);
                  final cosA = math.cos(a);
                  // Yatay konumu daire üzerine yerleştir (kenarlara doğru sıkışır)
                  final shift = radius * math.sin(a) - d * itemW;
                  final scale = 0.55 + 0.45 * cosA;
                  final opacity = d.abs() > 2.6
                      ? 0.0
                      : (0.25 + 0.75 * cosA).clamp(0.0, 1.0);
                  final item = widget.items[index % _n];

                  return Transform.translate(
                    offset: Offset(shift, 0),
                    child: Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.0012)
                        ..rotateY(-a * _tilt),
                      child: Transform.scale(
                        scale: scale,
                        child: Opacity(
                          opacity: opacity,
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => _c.animateToPage(
                              index,
                              duration: const Duration(milliseconds: 320),
                              curve: Curves.easeOutCubic,
                            ),
                            child: _face(item, cosA * cosA),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
