import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../storage/app_settings.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  /// Menüde görünecek diller (kendi dillerinde yazılır).
  /// Yeni dil eklerken .arb dosyasının yanı sıra buraya da ekle.
  static const Map<String, String> _names = {'en': 'English', 'tr': 'Türkçe'};

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
      icon: const Icon(Icons.language),
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
