import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

import '../../core/constants/app_theme.dart';
import '../../core/crypto/totp.dart';
import '../../core/utils/haptics.dart';
import '../../l10n/app_localizations.dart';

enum _Warn { none, notTotp, migration }

/// 2FA kurulum QR kodunu (otpauth://totp/...) okur ve bağlantıyı String olarak
/// döndürür (iptalde null). Canlı kamera akışı cihazda taranır; fotoğraf
/// kaydedilmez, internet kullanılmaz.
class QrScanScreen extends StatefulWidget {
  const QrScanScreen({super.key});

  @override
  State<QrScanScreen> createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  final BarcodeScanner _scanner = BarcodeScanner(
    formats: [BarcodeFormat.qrCode],
  );
  CameraController? _controller;
  bool _failed = false;
  bool _busy = false;
  bool _done = false;
  _Warn _warn = _Warn.none;
  DateTime _last = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    try {
      final cams = await availableCameras();
      final back = cams.firstWhere(
        (c) => c.lensDirection == CameraLensDirection.back,
        orElse: () => cams.first,
      );
      final c = CameraController(
        back,
        ResolutionPreset.high,
        enableAudio: false,
        imageFormatGroup: ImageFormatGroup.nv21,
      );
      await c.initialize();
      if (!mounted) {
        await c.dispose();
        return;
      }
      setState(() => _controller = c);
      await c.startImageStream(_onFrame);
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  @override
  void dispose() {
    final c = _controller;
    _controller = null;
    () async {
      try {
        if (c != null && c.value.isStreamingImages) {
          await c.stopImageStream();
        }
      } catch (_) {}
      await c?.dispose();
    }();
    _scanner.close();
    super.dispose();
  }

  InputImage? _toInputImage(CameraImage image) {
    final c = _controller;
    if (c == null) return null;
    final rotation = InputImageRotationValue.fromRawValue(
      c.description.sensorOrientation,
    );
    if (rotation == null) return null;
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    if (format != InputImageFormat.nv21 || image.planes.length != 1) {
      return null;
    }
    final plane = image.planes.first;
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation,
        format: InputImageFormat.nv21,
        bytesPerRow: plane.bytesPerRow,
      ),
    );
  }

  Future<void> _onFrame(CameraImage image) async {
    if (_busy || _done) return;
    final now = DateTime.now();
    if (now.difference(_last) < const Duration(milliseconds: 250)) return;
    _busy = true;
    _last = now;
    try {
      final input = _toInputImage(image);
      if (input == null) return;
      final codes = await _scanner.processImage(input);
      if (!mounted || _done || codes.isEmpty) return;

      var warn = _Warn.notTotp;
      for (final b in codes) {
        final raw = (b.rawValue ?? '').trim();
        final low = raw.toLowerCase();
        if (low.startsWith('otpauth://') && Totp.parse(raw) != null) {
          _done = true;
          Haptics.medium();
          Navigator.pop(context, raw);
          return;
        }
        if (low.startsWith('otpauth-migration://')) warn = _Warn.migration;
      }
      if (warn != _warn) setState(() => _warn = warn);
    } catch (_) {
      // Tek karelik hatalar yok sayılır; bir sonraki kare denenir.
    } finally {
      _busy = false;
    }
  }

  Widget _preview(CameraController c) {
    final size = c.value.previewSize!;
    return ClipRect(
      child: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            // previewSize yatay gelir, dikey için ters çeviriyoruz
            width: size.height,
            height: size.width,
            child: CameraPreview(c),
          ),
        ),
      ),
    );
  }

  Widget _hint(AppLocalizations t) {
    final text = switch (_warn) {
      _Warn.none => t.qrScanHint,
      _Warn.notTotp => t.qrNot2fa,
      _Warn.migration => t.qrMigration,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xCC000000),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: _warn == _Warn.none
              ? MuhurColors.bronzeLight.withValues(alpha: 0.4)
              : Colors.amber,
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: _warn == _Warn.none ? Colors.white : Colors.amber,
          height: 1.35,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final c = _controller;

    Widget body;
    if (_failed) {
      body = Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(t.cameraError, textAlign: TextAlign.center),
        ),
      );
    } else if (c == null || !c.value.isInitialized) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      body = Stack(
        children: [
          Positioned.fill(child: _preview(c)),
          const Positioned.fill(
            child: IgnorePointer(
              child: CustomPaint(painter: _QrFramePainter()),
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 24 + MediaQuery.paddingOf(context).bottom,
            child: _hint(t),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.qrScan)),
      body: body,
    );
  }
}

/// Ortada kare bir çerçeve ve dışını karartan perde.
class _QrFramePainter extends CustomPainter {
  const _QrFramePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final side = math.min(size.width, size.height) * 0.7;
    final f = Rect.fromCenter(
      center: Offset(size.width / 2, size.height * 0.42),
      width: side,
      height: side,
    );
    const r = 18.0, l = 34.0;
    canvas.drawPath(
      Path()
        ..addRect(Offset.zero & size)
        ..addRRect(RRect.fromRectAndRadius(f, const Radius.circular(r)))
        ..fillType = PathFillType.evenOdd,
      Paint()..color = const Color(0x99000000),
    );

    final p = Paint()
      ..color = MuhurColors.bronzeLight
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;
    for (final (x, y, sx, sy) in [
      (f.left, f.top, 1.0, 1.0),
      (f.right, f.top, -1.0, 1.0),
      (f.left, f.bottom, 1.0, -1.0),
      (f.right, f.bottom, -1.0, -1.0),
    ]) {
      canvas.drawPath(
        Path()
          ..moveTo(x, y + sy * l)
          ..lineTo(x, y + sy * r)
          ..quadraticBezierTo(x, y, x + sx * r, y)
          ..lineTo(x + sx * l, y),
        p,
      );
    }
  }

  @override
  bool shouldRepaint(_QrFramePainter oldDelegate) => false;
}
