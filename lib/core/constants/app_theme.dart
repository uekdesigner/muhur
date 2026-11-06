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
  static Color get bronze => _bg.accent;
  static Color get bronzeLight => _bg.accentLight;
  static Color get cream => _bg.text;
  static const wax = Color(0xFF8E1B1B);
  static const overlay = Color(0x990B0E11); // arka plan karartması
}

ThemeData buildMuhurTheme() {
  final border = OutlineInputBorder(borderRadius: BorderRadius.circular(14));
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(14));

  return ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: MuhurColors.bg,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xAA000000),
      border: border,
      enabledBorder: border,
      focusedBorder: border.copyWith(),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        disabledBackgroundColor: const Color(0x66141414),
        disabledForegroundColor: Colors.white38,
        backgroundColor: const Color(0xCC14181C),
        foregroundColor: MuhurColors.cream,
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
        shape: shape,
      ),
    ),
  );
}
