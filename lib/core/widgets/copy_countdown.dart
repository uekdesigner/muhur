import 'dart:async';

import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../constants/app_theme.dart';
import '../utils/clipboard_service.dart';

/// Kopyalamadan sonra çağrılır: panodan silinmeye kalan süreyi canlı gösterir.
void showCopiedSnack(BuildContext context) {
  final total = ClipboardService.instance.clearAfter;
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        duration: total + const Duration(seconds: 1),
        content: _CopyCountdown(total: total),
      ),
    );
}

class _CopyCountdown extends StatefulWidget {
  const _CopyCountdown({required this.total});
  final Duration total;

  @override
  State<_CopyCountdown> createState() => _CopyCountdownState();
}

class _CopyCountdownState extends State<_CopyCountdown> {
  Timer? _tick;
  late int _left = widget.total.inSeconds;

  @override
  void initState() {
    super.initState();
    _tick = Timer.periodic(const Duration(milliseconds: 500), (_) => _update());
  }

  void _update() {
    if (!mounted) return;
    final until = ClipboardService.instance.activeUntil;
    final left = until == null
        ? 0
        : (until.difference(DateTime.now()).inMilliseconds / 1000).ceil();
    if (left <= 0) {
      _tick?.cancel();
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      return;
    }
    if (left != _left) setState(() => _left = left);
  }

  @override
  void dispose() {
    _tick?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final total = widget.total.inSeconds;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.copied(_left)),
        const SizedBox(height: 6),
        LinearProgressIndicator(
          value: (_left / total).clamp(0.0, 1.0),
          minHeight: 3,
          color: MuhurColors.bronzeLight,
          backgroundColor: Colors.white24,
        ),
      ],
    );
  }
}
