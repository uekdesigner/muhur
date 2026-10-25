import 'package:flutter/material.dart';

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
            child: ColoredBox(
              color: Color(0xFF0B1F3A),
              child: Center(
                child: Icon(
                  Icons.lock_outline,
                  size: 72,
                  color: Colors.white54,
                ),
              ),
            ),
          );
        },
      ),
    ],
  );
}
