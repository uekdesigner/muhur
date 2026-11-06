import 'package:flutter/material.dart';

import '../constants/app_theme.dart';
import '../storage/app_settings.dart';

/// Akıllı yönlendirme açıksa, bu ipucunu yalnızca ilk seferde kısa bir bant
/// olarak gösterir. Yeni ipucu eklemek için tek satır yeter:
/// showGuideTip(context, 'benzersiz_id', t.tipMetni);
void showGuideTip(BuildContext context, String id, String text) {
  final s = AppSettings.instance;
  if (!s.smartGuide.value || s.tipSeen(id)) return;
  s.markTipSeen(id);
  final m = ScaffoldMessenger.of(context);
  m.hideCurrentSnackBar();
  m.showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 7),
      backgroundColor: const Color(0xF0161B1F),
      showCloseIcon: true,
      closeIconColor: MuhurColors.bronzeLight,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      content: Row(
        children: [
          const Icon(Icons.lightbulb_outline, size: 20),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    ),
  );
}
