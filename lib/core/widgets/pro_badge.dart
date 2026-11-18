import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../constants/app_theme.dart';
import '../entitlements/entitlements.dart';
import '../entitlements/pro_prices.dart';

/// PRO etiketlerinin rengi: soldan sağa altından bakıra çapraz geçiş.
const _gold = [Color(0xFFFBE7A6), Color(0xFFE3A857), Color(0xFFB4602C)];

/// Son 3 gün: aynı kabartma, parlak sarı tonlarda (uyarı).
const _amber = [Color(0xFFFFF2B0), Color(0xFFFFD24A), Color(0xFFF0A020)];

const _ink = Color(0xFF2A1B08);

BoxDecoration _embossed(List<Color> c, double radius) => BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: c,
    stops: const [0, 0.5, 1],
  ),
  borderRadius: BorderRadius.circular(radius),
  border: Border.all(color: const Color(0xFF5E4420), width: 0.8),
  boxShadow: const [
    BoxShadow(color: Color(0x99000000), blurRadius: 2, offset: Offset(0, 1)),
  ],
);

/// Renk geçişinin üzerine kabartma: üstte ışık, altta hafif gölge.
Widget _bevel(double radius, EdgeInsets padding, Widget child) => DecoratedBox(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    gradient: const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0x59FFFFFF), Color(0x00FFFFFF), Color(0x26000000)],
      stops: [0, 0.5, 1],
    ),
  ),
  child: Padding(padding: padding, child: child),
);

TextStyle _engraved(double size, double spacing) => TextStyle(
  color: _ink,
  fontSize: size,
  fontWeight: FontWeight.w900,
  letterSpacing: spacing,
  height: 1.2,
  shadows: const [Shadow(color: Color(0x80FFFFFF), offset: Offset(0, 0.6))],
);

/// Pro özelliğinin simgesine köşe etiketi ("PRO"). Ücretsiz planda ve
/// 14 günlük denemede görünür, abone olunca kaybolur. Dokunuşları engellemez.
class ProCorner extends StatelessWidget {
  const ProCorner({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Entitlements.instance,
      builder: (context, child) {
        if (Entitlements.instance.isSubscribed) return child!;
        return Stack(
          clipBehavior: Clip.none,
          children: [
            child!,
            const Positioned(
              right: -11,
              top: -8,
              child: IgnorePointer(child: _Shine(child: _ProTag())),
            ),
          ],
        );
      },
      child: child,
    );
  }
}

class _ProTag extends StatelessWidget {
  const _ProTag();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _embossed(_gold, 10),
      child: _bevel(
        10,
        const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
        Text('PRO', style: _engraved(8, 0.3)),
      ),
    );
  }
}

/// Ana sayfadaki plan etiketi: ÜCRETSİZ, denemede "PRO · 12 GÜN"
/// (son 3 gün sarı), abone olunca "PRO". PRO hâlleri kabartmalı ve parlar.
class PlanBadge extends StatelessWidget {
  const PlanBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ListenableBuilder(
      listenable: Entitlements.instance,
      builder: (context, _) {
        final e = Entitlements.instance;
        final paid = e.isSubscribed;
        final days = !paid && e.inTrial ? e.trialDaysLeft : 0;
        if (!paid && days == 0) {
          // Ücretsiz: sade, düz etiket (parlamaz).
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: MuhurColors.bronze.withValues(alpha: 0.8),
              ),
            ),
            child: Text(
              t.planFree,
              style: TextStyle(
                color: MuhurColors.bronzeLight,
                fontSize: 7.8,
                fontWeight: FontWeight.w800,
                letterSpacing: 0.5,
              ),
            ),
          );
        }
        final soon = days > 0 && days <= 3;
        final label = paid ? 'PRO' : 'PRO · ${t.daysCount(days).toUpperCase()}';
        return _Shine(
          child: Container(
            decoration: _embossed(soon ? _amber : _gold, 10),
            child: _bevel(
              10,
              const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              Text(label, style: _engraved(7.8, 0.5)),
            ),
          ),
        );
      },
    );
  }
}

/// Yeni kurulan uygulama simgesindeki gibi: etiketin üzerinden aralıklarla
/// çapraz bir ışık geçer. "Animasyonları kaldır" açıksa parlamaz.
class _Shine extends StatefulWidget {
  const _Shine({required this.child});
  final Widget child;

  @override
  State<_Shine> createState() => _ShineState();
}

class _ShineState extends State<_Shine> with SingleTickerProviderStateMixin {
  static const _sweep = Duration(milliseconds: 900);
  static const _pause = Duration(milliseconds: 2600);

  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: _sweep,
  );

  @override
  void initState() {
    super.initState();
    _loop();
  }

  /// Geçiş → bekleme → geçiş. Beklerken kare çizilmez (pil dostu).
  Future<void> _loop() async {
    while (mounted) {
      await Future<void>.delayed(_pause);
      if (!mounted) return;
      try {
        await _c.forward(from: 0).orCancel;
      } on TickerCanceled {
        return;
      }
    }
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).disableAnimations) return widget.child;
    return AnimatedBuilder(
      animation: _c,
      child: widget.child,
      builder: (context, child) {
        final p = _c.value;
        if (p <= 0 || p >= 1) return child!;
        // Işık şeridinin merkezi soldan dışarıdan sağdan dışarıya kayar.
        final x = -2.0 + 4.0 * Curves.easeInOut.transform(p);
        return ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (rect) => LinearGradient(
            begin: Alignment(x - 1, -1),
            end: Alignment(x + 1, 1),
            colors: const [
              Color(0x00FFFFFF),
              Color(0xD9FFFFFF),
              Color(0x00FFFFFF),
            ],
            stops: const [0.38, 0.5, 0.62],
          ).createShader(rect),
          child: child,
        );
      },
    );
  }
}

/// Ana ekranın ikinci satırında, aramanın solunda: kabartmalı PRO bloğu ve
/// sağ üst köşesine binen kuruşsuz yıllık fiyat ("299 ₺"). PRO'nun üzerinden
/// aralıklarla ışık geçer, ardından fiyat çerçevesi bir kez parlayıp söner.
/// Abone olunca kaybolur; fiyat bilinmiyorsa yalnızca PRO görünür.
/// "Animasyonları kaldır" açıksa hareket etmez.
class ProPriceTag extends StatefulWidget {
  const ProPriceTag({super.key});

  @override
  State<ProPriceTag> createState() => _ProPriceTagState();
}

class _ProPriceTagState extends State<ProPriceTag>
    with SingleTickerProviderStateMixin {
  static const _pause = Duration(milliseconds: 2600);

  late final AnimationController _glow = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1400),
  );

  @override
  void initState() {
    super.initState();
    _loop();
  }

  /// Bekleme → parlama. Beklerken kare çizilmez (pil dostu).
  Future<void> _loop() async {
    while (mounted) {
      await Future<void>.delayed(_pause);
      if (!mounted) return;
      try {
        await _glow.forward(from: 0).orCancel;
      } on TickerCanceled {
        return;
      }
    }
  }

  @override
  void dispose() {
    _glow.dispose();
    super.dispose();
  }

  Widget _pro(bool withPrice, bool rtl) {
    // Fiyat sağa bindiği için o taraf biraz daha geniş.
    final side = withPrice ? 15.0 : 9.0;
    return Container(
      decoration: _embossed(_gold, 6),
      child: _bevel(
        6,
        EdgeInsets.fromLTRB(rtl ? side : 9, 3, rtl ? 9 : side, 3),
        Text('PRO', style: _engraved(12, 1.2)),
      ),
    );
  }

  Widget _price(String price, double glow) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
    decoration: BoxDecoration(
      color: const Color(0xF2000000),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: const Color(0xFFE3A857), width: 1.2),
      boxShadow: [
        BoxShadow(
          color: const Color(0xFFFFD24A).withValues(alpha: 0.12 + 0.5 * glow),
          blurRadius: 2 + 7 * glow,
        ),
      ],
    ),
    child: Text(
      price,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 11.5,
        fontWeight: FontWeight.w800,
        height: 1.1,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final lang = Localizations.localeOf(context).languageCode;
    final rtl = Directionality.of(context) == TextDirection.rtl;
    final still = MediaQuery.of(context).disableAnimations;
    return ListenableBuilder(
      listenable: Listenable.merge([Entitlements.instance, ProPrices.instance]),
      builder: (context, _) {
        if (Entitlements.instance.isSubscribed) return const SizedBox.shrink();
        final price = ProPrices.instance.yearlyShort(lang);
        final pro = _Shine(child: _pro(price != null, rtl));
        if (price == null) return pro;
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pro,
            Transform.translate(
              // Fiyat PRO bloğunun sağ üst köşesine biner.
              offset: Offset(rtl ? 8 : -8, -5),
              child: still
                  ? _price(price, 0)
                  : AnimatedBuilder(
                      animation: _glow,
                      builder: (context, _) =>
                          _price(price, math.sin(math.pi * _glow.value)),
                    ),
            ),
          ],
        );
      },
    );
  }
}
