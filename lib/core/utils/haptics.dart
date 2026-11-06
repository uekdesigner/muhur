import 'package:flutter/services.dart';

import '../storage/app_settings.dart';

/// Titreşim ayarına saygı gösteren tek giriş noktası.
class Haptics {
  static bool get _on => AppSettings.instance.haptics.value;

  static void tick() {
    if (_on) HapticFeedback.selectionClick();
  }

  static void light() {
    if (_on) HapticFeedback.lightImpact();
  }

  static void medium() {
    if (_on) HapticFeedback.mediumImpact();
  }
}
