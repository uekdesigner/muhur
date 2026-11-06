import 'package:flutter/material.dart';

import 'app_theme.dart';

class MuhurBg {
  const MuhurBg(
    this.id, {
    required this.asset,
    required this.accent,
    required this.accentLight,
    required this.text,
  });
  final String id;
  final String asset;

  final Color accent;
  final Color accentLight;
  final Color text;
}

/// Yeni arka plan eklemek için listeye bir satır yeter.
const muhurBackgrounds = <MuhurBg>[
  MuhurBg(
    'bronze',
    asset: MuhurAssets.background,
    accent: Color(0xFFB8925A),
    accentLight: Color(0xFFD9BC85),
    text: Color(0xFFEADFC4),
  ),
  MuhurBg(
    'ember',
    asset: 'assets/images/bg_ember.webp',
    accent: Color(0xFFD4A04A),
    accentLight: Color(0xFFF3CF85),
    text: Color(0xFFF1E6CB),
  ),
  MuhurBg(
    'sapphire',
    asset: 'assets/images/bg_sapphire.webp',
    accent: Color(0xFF5E94C2),
    accentLight: Color(0xFF9CC4E4),
    text: Color(0xFFDCE9F3),
  ),
  MuhurBg(
    'obsidian',
    asset: 'assets/images/bg_obsidian.webp',
    accent: Color(0xFF4FA39B),
    accentLight: Color(0xFF8FD0C8),
    text: Color(0xFFDDEBE8),
  ),
  MuhurBg(
    'lumen',
    asset: 'assets/images/bg_lumen.webp',
    accent: Color(0xFF6C9BFF),
    accentLight: Color(0xFFA9C4FF),
    text: Color(0xFFE4EAFA),
  ),
];

/// Bilinmeyen kimlik (ör. eski 'stone') ilk arka plana düşer.
MuhurBg bgById(String id) => muhurBackgrounds.firstWhere(
  (b) => b.id == id,
  orElse: () => muhurBackgrounds.first,
);
