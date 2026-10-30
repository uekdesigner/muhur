import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import 'window_security.dart';

/// Ekran görüntüsü korumasını süreli olarak kapatır.
/// Süre arka planda sessizce geri sayılır (ekranda gösterilmez); bitince koruma
/// kendiliğinden geri açılır ve ana ekrandaki gösterge yeniden yeşile döner.
/// Uygulama her açılışında koruma açık başlar; "izin ver" durumu saklanmaz.
class ScreenCaptureService with WidgetsBindingObserver {
  ScreenCaptureService._();
  static final ScreenCaptureService instance = ScreenCaptureService._();

  /// Pencere şu an gerçekten korunuyor mu? (ana ekran göstergesi bunu dinler)
  final ValueNotifier<bool> protected = ValueNotifier<bool>(false);

  /// Kullanıcı ekran görüntüsüne geçici olarak izin verdi mi? (ayar anahtarı)
  final ValueNotifier<bool> allowed = ValueNotifier<bool>(false);

  DateTime? _allowedUntil;
  Timer? _timer;

  /// main() içinde bir kez çağrılır.
  Future<void> init() async {
    WidgetsBinding.instance.addObserver(this);
    protected.value = await WindowSecurity.isScreenProtected();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) return;
    final until = _allowedUntil;
    if (until == null) return;
    final left = until.difference(DateTime.now());
    if (left <= Duration.zero) {
      protect();
    } else {
      // Arka planda zamanlayıcı durmuş olabilir; kalan süreyle yeniden kur.
      _timer?.cancel();
      _timer = Timer(left, protect);
    }
  }

  /// Korumayı [duration] boyunca kapatır, sonra otomatik geri açar.
  Future<void> allowFor(Duration duration) async {
    _timer?.cancel();
    _allowedUntil = DateTime.now().add(duration);
    allowed.value = true;
    _timer = Timer(duration, protect);
    protected.value = await WindowSecurity.setScreenProtected(false);
  }

  /// Korumayı hemen geri açar.
  Future<void> protect() async {
    _timer?.cancel();
    _timer = null;
    _allowedUntil = null;
    allowed.value = false;
    protected.value = await WindowSecurity.setScreenProtected(true);
  }
}
