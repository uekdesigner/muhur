import 'package:flutter/material.dart';

import '../widgets/muhur_widgets.dart';

final ValueNotifier<bool> privacyCover = ValueNotifier<bool>(false);

/// MaterialApp(builder: privacyBuilder) olarak kullanılır.
Widget privacyBuilder(BuildContext context, Widget? child) {
  return Stack(
    textDirection: TextDirection.ltr,
    children: [
      ?child,
      ValueListenableBuilder<bool>(
        valueListenable: privacyCover,
        builder: (context, covered, _) {
          if (!covered) return const SizedBox.shrink();
          return const Positioned.fill(
            child: Material(
              child: MuhurBackground(
                child: Center(child: MuhurSeal(size: 160)),
              ),
            ),
          );
        },
      ),
    ],
  );
}
