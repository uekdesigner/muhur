import 'dart:math' as math;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../../l10n/app_localizations.dart';
import '../../core/constants/app_theme.dart';
import 'iban_validator.dart';

enum ScanMode { iban, text }

/// Seçilen/onaylanan değeri String olarak geri döndürür (iptalde null).
/// Canlı kamera akışı taranır; hiçbir fotoğraf dosyası oluşturulmaz.
class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key, this.initialMode = ScanMode.text});
  final ScanMode initialMode;

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen>
    with SingleTickerProviderStateMixin {
  CameraController? _controller;
  final TextRecognizer _recognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );

  late ScanMode _mode = widget.initialMode;
  bool _cameraFailed = false;
  bool _processing = false;
  bool _done = false;
  DateTime _lastRun = DateTime.fromMillisecondsSinceEpoch(0);

  late final AnimationController _sweep = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2200),
  )..repeat(reverse: true);

  Size _view = Size.zero; // önizleme alanı
  Size _upright = Size.zero; // döndürülmüş kamera karesi
  final Set<String> _rejected = {}; // "Hayır" denenler, bir daha önerilmez
  String? _lastKey;
  int _stable = 0;
  String? _candidate;
  bool _candidateCorrected = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    // Görüntü yönünü sabitlemek için dikey kilitle
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
    } catch (e) {
      if (mounted) {
        setState(() {
          _cameraFailed = true;
          _error = '$e';
        });
      }
    }
  }

  @override
  void dispose() {
    _sweep.dispose();
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
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
    _recognizer.close();
    super.dispose();
  }

  String _key(String s) =>
      s.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9ÇĞİÖŞÜ]'), '');

  Rect _frameRect(Size v) {
    final w = v.width * 0.9;
    const h = 150.0;
    return Rect.fromLTWH((v.width - w) / 2, (v.height - h) / 2 * 0.75, w, h);
  }

  bool get _canMap => _view != Size.zero && _upright != Size.zero;

  Offset _toView(Rect box) {
    final s = math.max(
      _view.width / _upright.width,
      _view.height / _upright.height,
    );
    final dx = (_view.width - _upright.width * s) / 2;
    final dy = (_view.height - _upright.height * s) / 2;
    return Offset(box.center.dx * s + dx, box.center.dy * s + dy);
  }

  bool _inFrame(Rect box) =>
      !_canMap || _frameRect(_view).inflate(8).contains(_toView(box));

  InputImage? _toInputImage(CameraImage image) {
    final c = _controller;
    if (c == null) return null;
    final rotation = InputImageRotationValue.fromRawValue(
      c.description.sensorOrientation,
    );
    if (rotation == null) return null;
    final format = InputImageFormatValue.fromRawValue(image.format.raw);
    if (format == null || format != InputImageFormat.nv21) return null;
    if (image.planes.length != 1) return null;
    final plane = image.planes.first;
    return InputImage.fromBytes(
      bytes: plane.bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: rotation,
        format: format,
        bytesPerRow: plane.bytesPerRow,
      ),
    );
  }

  Future<void> _onFrame(CameraImage image) async {
    if (_processing || _done) return;
    final now = DateTime.now();
    if (now.difference(_lastRun) < const Duration(milliseconds: 350)) return;
    _processing = true;
    _lastRun = now;
    try {
      final input = _toInputImage(image);
      final rot = _controller!.description.sensorOrientation;
      _upright = (rot == 90 || rot == 270)
          ? Size(image.height.toDouble(), image.width.toDouble())
          : Size(image.width.toDouble(), image.height.toDouble());
      if (input == null) return;
      final result = await _recognizer.processImage(input);
      if (!mounted || _done) return;

      // Yalnızca hedef çerçevenin içindeki satırlar dikkate alınır.
      final lines = <TextLine>[
        for (final b in result.blocks)
          for (final l in b.lines)
            if (l.text.trim().isNotEmpty && _inFrame(l.boundingBox)) l,
      ];

      String? value;
      var corrected = false;
      if (_mode == ScanMode.iban) {
        final found = findIbans(lines.map((l) => l.text).join(' '))
            .where((m) => !_rejected.contains(m.value))
            .toList();
        if (found.isNotEmpty) {
          value = found.first.value;
          corrected = found.first.corrected;
        }
      } else {
        if (_canMap) {
          final fc = _frameRect(_view).center;
          lines.sort(
            (a, b) => (_toView(a.boundingBox) - fc).distance.compareTo(
              (_toView(b.boundingBox) - fc).distance,
            ),
          );
        }
        for (final l in lines) {
          final tx = l.text.trim();
          if (tx.length >= 3 && !_rejected.contains(_key(tx))) {
            value = tx;
            break;
          }
        }
      }

      if (value == null) {
        _lastKey = null;
        _stable = 0;
        return;
      }
      final key = _key(value);
      if (key == _lastKey) {
        _stable++;
      } else {
        _lastKey = key;
        _stable = 1;
      }
      // Sağlama toplamı tutan IBAN anında önerilir; diğerleri 2 karede doğrulanır.
      final need = (_mode == ScanMode.iban && !corrected) ? 1 : 2;
      if (_stable >= need) {
        _done = true;
        try {
          await _controller?.stopImageStream();
        } catch (_) {}
        HapticFeedback.mediumImpact();
        if (mounted) {
          setState(() {
            _candidate = value;
            _candidateCorrected = corrected;
          });
        }
      }
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    } finally {
      _processing = false;
    }
  }

  Future<void> _resume() async {
    setState(() {
      _candidate = null;
      _candidateCorrected = false;
      _lastKey = null;
      _stable = 0;
      _done = false;
    });
    try {
      await _controller?.startImageStream(_onFrame);
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
  }

  /// "Hayır": bu değer bir daha önerilmez.
  Future<void> _reject() async {
    final v = _candidate;
    if (v != null) _rejected.add(_key(v));
    await _resume();
  }

  Future<void> _pickLine(String line) async {
    final t = AppLocalizations.of(context)!;
    final ctrl = TextEditingController(text: line);
    final value = await showDialog<String>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text(t.editBeforeUse),
        content: TextField(
          controller: ctrl,
          autofocus: true,
          autocorrect: false,
          enableSuggestions: false,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(c), child: Text(t.cancel)),
          FilledButton(
            onPressed: () => Navigator.pop(c, ctrl.text.trim()),
            child: Text(t.useValue),
          ),
        ],
      ),
    );
    ctrl.dispose();
    if (value != null && value.isNotEmpty && mounted) {
      Navigator.pop(context, value);
    }
  }

  Widget _modeSwitch(AppLocalizations t) {
    Widget item(ScanMode m, IconData icon, String label) {
      final sel = _mode == m;
      return GestureDetector(
        onTap: () {
          if (sel) return;
          setState(() {
            _mode = m;
            _lastKey = null;
            _stable = 0;
          });
          if (_candidate != null) _resume();
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          decoration: BoxDecoration(
            color: sel ? MuhurColors.bronze : Colors.transparent,
            borderRadius: BorderRadius.circular(22),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 18,
                color: sel ? Colors.black : MuhurColors.bronzeLight,
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  color: sel ? Colors.black : MuhurColors.cream,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xCC0E1215),
        borderRadius: BorderRadius.circular(26),
        border: Border.all(color: const Color(0x66B8925A)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          item(ScanMode.iban, Icons.account_balance_outlined, 'IBAN'),
          item(ScanMode.text, Icons.text_fields_rounded, t.typeText),
        ],
      ),
    );
  }

  Widget _bottomPanel(AppLocalizations t) {
    final c = _candidate;
    final isIban = _mode == ScanMode.iban;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 22),
      decoration: BoxDecoration(
        color: const Color(0xEB0E1215),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(22)),
        border: Border.all(color: const Color(0x66B8925A)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (_error != null) Text(_error!),
            if (c == null) ...[
              Row(children: [const SizedBox(width: 10), Text(t.scanning)]),
              const SizedBox(height: 6),
              Text(
                t.scanHint,
                style: const TextStyle(color: Colors.white60, fontSize: 12.5),
              ),
            ] else ...[
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0x33B8925A),
                    ),
                    child: Icon(
                      isIban
                          ? Icons.account_balance_outlined
                          : Icons.text_fields_rounded,
                      size: 20,
                      color: MuhurColors.bronzeLight,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(t.scanIsThis),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0x99000000),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: MuhurColors.bronze, width: 1.2),
                ),
                child: Text(isIban ? groupIban(c) : c),
              ),
              if (_candidateCorrected)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(t.ibanCorrected),
                ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _reject,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      child: Text(t.scanNo),
                    ),
                  ),
                  IconButton(
                    tooltip: t.editBeforeUse,
                    onPressed: () => _pickLine(c),
                    icon: const Icon(Icons.edit_outlined),
                  ),
                  Expanded(
                    flex: 2,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(context, c),
                      child: Text(t.scanYes),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _fullPreview(CameraController c) {
    final size = c.value.previewSize!;
    return ClipRect(
      child: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            // previewSize yatay (landscape) gelir, dikey için ters çeviriyoruz
            width: size.height,
            height: size.width,
            child: CameraPreview(c),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final c = _controller;

    Widget body;
    if (_cameraFailed) {
      body = Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text('${t.cameraError}\n\n${_error ?? ''}'),
        ),
      );
    } else if (c == null || !c.value.isInitialized) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      body = LayoutBuilder(
        builder: (context, box) {
          _view = box.biggest;
          return Stack(
            children: [
              Positioned.fill(child: _fullPreview(c)),
              Positioned.fill(
                child: IgnorePointer(
                  child: AnimatedBuilder(
                    animation: _sweep,
                    builder: (context, child) => CustomPaint(
                      painter: _ScanOverlayPainter(
                        _frameRect(_view),
                        _sweep.value,
                        _candidate == null,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: Center(child: _modeSwitch(t)),
              ),
              Positioned(left: 0, right: 0, bottom: 0, child: _bottomPanel(t)),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.scan)),
      body: body,
    );
  }
}

class _ScanOverlayPainter extends CustomPainter {
  _ScanOverlayPainter(this.frame, this.progress, this.active);
  final Rect frame;
  final double progress;
  final bool active;

  @override
  void paint(Canvas canvas, Size size) {
    final rrect = RRect.fromRectAndRadius(frame, const Radius.circular(16));
    final scrim = Path()
      ..addRect(Offset.zero & size)
      ..addRRect(rrect)
      ..fillType = PathFillType.evenOdd;
    canvas.drawPath(scrim, Paint()..color = const Color(0x99000000));

    final p = Paint()
      ..color = MuhurColors.bronzeLight
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.5
      ..strokeCap = StrokeCap.round;
    const r = 16.0, l = 28.0;
    final f = frame;
    canvas.drawPath(
      Path()
        ..moveTo(f.left, f.top + l)
        ..lineTo(f.left, f.top + r)
        ..quadraticBezierTo(f.left, f.top, f.left + r, f.top)
        ..lineTo(f.left + l, f.top),
      p,
    );
    canvas.drawPath(
      Path()
        ..moveTo(f.right - l, f.top)
        ..lineTo(f.right - r, f.top)
        ..quadraticBezierTo(f.right, f.top, f.right, f.top + r)
        ..lineTo(f.right, f.top + l),
      p,
    );
    canvas.drawPath(
      Path()
        ..moveTo(f.left, f.bottom - l)
        ..lineTo(f.left, f.bottom - r)
        ..quadraticBezierTo(f.left, f.bottom, f.left + r, f.bottom)
        ..lineTo(f.left + l, f.bottom),
      p,
    );
    canvas.drawPath(
      Path()
        ..moveTo(f.right - l, f.bottom)
        ..lineTo(f.right - r, f.bottom)
        ..quadraticBezierTo(f.right, f.bottom, f.right, f.bottom - r)
        ..lineTo(f.right, f.bottom - l),
      p,
    );

    if (active) {
      final y = f.top + 10 + (f.height - 20) * progress;
      final line = Paint()
        ..strokeWidth = 2
        ..shader = const LinearGradient(
          colors: [Color(0x00D9BC85), Color(0xCCD9BC85), Color(0x00D9BC85)],
        ).createShader(Rect.fromLTWH(f.left, y, f.width, 2));
      canvas.drawLine(Offset(f.left + 12, y), Offset(f.right - 12, y), line);
    }
  }

  @override
  bool shouldRepaint(_ScanOverlayPainter o) =>
      o.progress != progress || o.active != active || o.frame != frame;
}
