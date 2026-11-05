import 'package:flutter/widgets.dart';

import '../storage/app_settings.dart';

/// Panel koyuluğu değişince, panel rengi kullanan widget'lar yeniden çizilir.
class PanelScope extends InheritedNotifier<ValueNotifier<int>> {
  PanelScope({super.key, required super.child})
    : super(notifier: AppSettings.instance.panelPercent);
}

/// Panel renginin saydamlığını kullanıcı ayarına göre ölçekler.
/// Varsayılan (%80) ayarda renk değişmez.
Color panelColor(BuildContext context, Color base) {
  final pct =
      context
          .dependOnInheritedWidgetOfExactType<PanelScope>()
          ?.notifier
          ?.value ??
      AppSettings.defaultPanelPercent;
  final factor = pct / AppSettings.defaultPanelPercent;
  return base.withValues(alpha: (base.a * factor).clamp(0.0, 1.0));
}
