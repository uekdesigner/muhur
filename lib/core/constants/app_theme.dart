import 'package:flutter/material.dart';

import '../storage/app_settings.dart';
import 'backgrounds.dart';

class MuhurAssets {
  static const background = 'assets/images/bg_bronze.webp';
  static const seal = 'assets/images/seal.webp';
}

class MuhurColors {
  static const bg = Color(0xFF0E1215);
  static const panel = Color(0xFF161B1F);
  static MuhurBg get _bg => bgById(AppSettings.instance.background.value);

  // Koyu arka planda silik kalmasın diye en az bu parlaklığa yükseltilir.
  static Color _lift(Color c, double minL) {
    final h = HSLColor.fromColor(c);
    return h.lightness >= minL ? c : h.withLightness(minL).toColor();
  }

  static Color get bronze => _lift(_bg.accent, 0.62);
  static Color get bronzeLight => _lift(_bg.accentLight, 0.78);
  static Color get cream => _lift(_bg.text, 0.85);
  static const wax = Color(0xFF8E1B1B);
  static const overlay = Color(0x990B0E11); // arka plan karartması
}

ThemeData buildMuhurTheme() {
  final scheme = ColorScheme.dark(
    primary: MuhurColors.bronze,
    onPrimary: Colors.black,
    surface: MuhurColors.panel,
    secondary: MuhurColors.bronzeLight,
    onSurface: MuhurColors.cream,
    error: Color(0xFFE57373),
  );

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: BorderSide(color: MuhurColors.bronze, width: 1.2),
  );
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(14));

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: MuhurColors.bg,
    appBarTheme: AppBarTheme(
      backgroundColor: MuhurColors.bg,
      foregroundColor: MuhurColors.cream,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xAA000000),
      border: border,
      enabledBorder: border,
      focusedBorder: border.copyWith(
        borderSide: BorderSide(color: MuhurColors.bronzeLight, width: 2),
      ),
      labelStyle: TextStyle(color: MuhurColors.bronzeLight),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        disabledBackgroundColor: const Color(0x66141414),
        disabledForegroundColor: Colors.white38,
        backgroundColor: const Color(0xCC14181C),
        foregroundColor: MuhurColors.cream,
        side: BorderSide(color: MuhurColors.bronze, width: 1.4),
        shape: shape,
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 1,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: MuhurColors.cream,
        backgroundColor: const Color(0x8014181C),
        side: BorderSide(color: MuhurColors.bronze, width: 1.4),
        shape: shape,
      ),
    ),
  );
}
