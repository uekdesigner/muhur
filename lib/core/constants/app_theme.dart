import 'package:flutter/material.dart';

class MuhurAssets {
  static const background = 'assets/images/background.webp';
  static const seal = 'assets/images/seal.webp';
}

class MuhurColors {
  static const bg = Color(0xFF0E1215);
  static const panel = Color(0xFF161B1F);
  static const bronze = Color(0xFFB8925A);
  static const bronzeLight = Color(0xFFD9BC85);
  static const cream = Color(0xFFEADFC4);
  static const wax = Color(0xFF8E1B1B);
  static const overlay = Color(0x990B0E11); // arka plan karartması
}

ThemeData buildMuhurTheme() {
  const scheme = ColorScheme.dark(
    primary: MuhurColors.bronze,
    onPrimary: Colors.black,
    secondary: MuhurColors.wax,
    surface: MuhurColors.panel,
    onSurface: MuhurColors.cream,
    error: Color(0xFFE57373),
  );

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(color: MuhurColors.bronze, width: 1.2),
  );
  final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(14));

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    scaffoldBackgroundColor: MuhurColors.bg,
    appBarTheme: const AppBarTheme(
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
        borderSide: const BorderSide(color: MuhurColors.bronzeLight, width: 2),
      ),
      labelStyle: const TextStyle(color: MuhurColors.bronzeLight),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: const Color(0xCC14181C),
        foregroundColor: MuhurColors.cream,
        side: const BorderSide(color: MuhurColors.bronze, width: 1.4),
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
        side: const BorderSide(color: MuhurColors.bronze, width: 1.4),
        shape: shape,
      ),
    ),
  );
}
