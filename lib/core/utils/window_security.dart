import 'dart:io';

import 'package:flutter/services.dart';

class WindowSecurity {
  static const _channel = MethodChannel('com.muhur.app/window');

  /// Ekran görüntüsü/kayıt engeli şu an açık mı?
  static Future<bool> isScreenProtected() async {
    if (!Platform.isAndroid) return false;
    try {
      return await _channel.invokeMethod<bool>('isSecure') ?? false;
    } catch (_) {
      return false;
    }
  }

  /// Korumayı açar/kapatır; işlem sonrası gerçek durumu döndürür.
  static Future<bool> setScreenProtected(bool on) async {
    if (!Platform.isAndroid) return false;
    try {
      return await _channel.invokeMethod<bool>('setSecure', {'secure': on}) ??
          false;
    } catch (_) {
      return await isScreenProtected();
    }
  }
}
