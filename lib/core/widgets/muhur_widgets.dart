import 'package:flutter/material.dart';

import '../constants/app_theme.dart';
import 'language_button.dart';
import '../constants/backgrounds.dart';
import '../storage/app_settings.dart';

/// Arka plan görseli + karartma + güvenli alan.
class MuhurBackground extends StatelessWidget {
  const MuhurBackground({
    super.key,
    required this.child,
    this.showLanguageButton = false,
  });
  final Widget child;
  final bool showLanguageButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ValueListenableBuilder<String>(
          valueListenable: AppSettings.instance.background,
          builder: (context, id, _) {
            final bg = bgById(id);
            return Image.asset(
              bg.asset,
              fit: BoxFit.cover,
              cacheWidth: 1080, // belleği azaltır
              errorBuilder: (context, error, stack) => const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF1A2026), Color(0xFF0B0E11)],
                  ),
                ),
              ),
            );
          },
        ),
        ValueListenableBuilder<int>(
          valueListenable: AppSettings.instance.backgroundDim,
          builder: (context, dim, _) => ColoredBox(
            color: const Color(0xFF0B0E11).withValues(alpha: dim / 100),
          ),
        ),

        SafeArea(
          child: Stack(
            children: [
              Positioned.fill(child: child),
              if (showLanguageButton)
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: LanguageButton(),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Mühür logosu. Dosya yoksa kırmızı "M" dairesi gösterir.
class MuhurSeal extends StatelessWidget {
  const MuhurSeal({super.key, this.size = 160});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      MuhurAssets.seal,
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stack) => Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: MuhurColors.wax,
        ),
        child: Text(
          'M',
          style: TextStyle(
            fontSize: size * 0.5,
            fontWeight: FontWeight.w800,
            color: MuhurColors.bronzeLight,
          ),
        ),
      ),
    );
  }
}
