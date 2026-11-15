import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../constants/app_theme.dart';
import '../utils/motion.dart';
import '../storage/app_settings.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  /// Menüde görünecek diller (kendi dillerinde yazılır).
  /// Yeni dil eklerken .arb dosyasının yanı sıra buraya da ekle.
  static const Map<String, String> _names = {
    'en': 'English',
    'tr': 'Türkçe',
    'de': 'Deutsch',
    'ar': 'العربية',
    'es': 'Español',
    'fr': 'Français',
    'hi': 'हिंदी',
    'id': 'Bahasa Indonesia',
    'it': 'Italiano',
    'ja': '日本語',
    'ko': '한국어',
    'ms': 'Bahasa Melayu',
    'nl': 'Nederlands',
    'pl': 'Polski',
    'pt': 'Português',
    'ru': 'Русский',
    'sv': 'Svenska',
    'th': 'ไทย',
    'uk': 'Українська',
    'vi': 'Tiếng Việt',
    'zh': '中文',
  };

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final current = AppSettings.instance.locale.value?.languageCode ?? 'system';
    final codes = AppLocalizations.supportedLocales
        .map((l) => l.languageCode)
        .where(_names.containsKey)
        .toList();

    PopupMenuItem<String> item(String value, String label) => PopupMenuItem(
      value: value,
      child: Row(
        children: [
          SizedBox(
            width: 24,
            child: current == value ? const Icon(Icons.check, size: 18) : null,
          ),
          Text(label),
        ],
      ),
    );

    return PopupMenuButton<String>(
      popUpAnimationStyle: Motion.style,
      padding: EdgeInsets.zero,
      icon: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xCC1B2024),
          shape: BoxShape.circle,
          border: Border.all(color: MuhurColors.bronze, width: 1.2),
        ),
        child: Icon(Icons.language, size: 22, color: MuhurColors.cream),
      ),
      tooltip: t.language,
      onSelected: (code) => AppSettings.instance.setLocale(
        code == 'system' ? null : Locale(code),
      ),
      itemBuilder: (_) => [
        item('system', t.languageSystem),
        for (final c in codes) item(c, _names[c]!),
      ],
    );
  }
}
