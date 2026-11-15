import 'package:flutter/services.dart';

/// Cihaz açıldığından beri geçen süre (uyku dahil, Android elapsedRealtime).
/// Kullanıcı sistem saatini değiştirse de etkilenmez; yeniden başlatmada sıfırlanır.
class MonoClock {
  MonoClock._();

  static const _ch = MethodChannel('com.muhur.app/clock');

  /// Desteklenmeyen platformda (iOS vb.) null: çağıran duvar saatine düşer.
  static Future<int?> elapsedMs() async {
    try {
      return await _ch.invokeMethod<int>('elapsedRealtime');
    } catch (_) {
      return null;
    }
  }
}
