import 'package:flutter/material.dart';

import '../storage/app_settings.dart';

/// "Animasyonları kapat" ayarının tek giriş noktası.
class Motion {
  static bool get off => AppSettings.instance.reduceAnimations.value;

  /// Ayar açıksa süre sıfırlanır.
  static Duration d(Duration normal) => off ? Duration.zero : normal;

  /// showDialog, showModalBottomSheet, showSnackBar ve açılır menülerde kullanılır.
  static AnimationStyle? get style => off ? AnimationStyle.noAnimation : null;
}
