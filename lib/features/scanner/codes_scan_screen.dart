import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../../core/constants/app_theme.dart';
import '../../core/utils/haptics.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';

final _numbering = RegExp(r'^(\d{1,2}[.)]|[•·*])\s*');
final _codeLike = RegExp(r'^[A-Za-z0-9]+(?:[ -][A-Za-z0-9]+)*$');
final _digit = RegExp(r'\d');
final _sep = RegExp(r'[ -]');

/// Bir satırdaki 2FA yedek kodlarını çıkarır. "1234 5678   9012 3456" gibi
/// iki sütun tek satıra birleşmişse eşit gruplar ikişer ikişer ayrılır.
List<String> backupCodesIn(String raw) {
  final s = raw
      .trim()
      .replaceAll(RegExp(r'\s+'), ' ')
      .replaceFirst(_numbering, '');
  if (!_codeLike.hasMatch(s)) return const [];
  final groups = s.split(' ');
  if (groups.length >= 4 &&
      groups.length.isEven &&
      groups.every((g) => g.length == groups.first.length && g.length <= 5)) {
    return [
      for (var i = 0; i < groups.length; i += 2)
        '${groups[i]} ${groups[i + 1]}',
    ].where(_isCode).toList();
  }
  return _isCode(s) ? [s] : const [];
}

bool _isCode(String s) {
  final alnum = s.replaceAll(_sep, '');
  final groups = s.split(_sep);
  // En az bir rakam: "Backup codes" gibi başlıklar elenir.
  if (alnum.length < 6 || alnum.length > 32 || !_digit.hasMatch(alnum)) {
    return false;
  }
  if (groups.length > 6) return false;
  // Gruplu kodlarda gruplar ya eşit uzunlukta ya da hepsi rakam içerir;
  // "Generated on 2026" gibi cümleler böylece elenir.
  final uniform = groups.every((g) => g.length == groups.first.length);
  return uniform || groups.every(_digit.hasMatch);
}

String _codeKey(String code) => code.replaceAll(_sep, '').toUpperCase();

/// 2FA yedek kod listesini kamerayla okur. Kodlar kareler boyunca birikir;
/// bir kod en az iki karede aynı okunursa listeye girer (tek karelik okuma
/// hataları elenir). Onaylanınca kodlar alt alta tek metin olarak döner.
/// Görüntü cihazda işlenir; fotoğraf kaydedilmez, internet kullanılmaz.
class CodesScanScreen extends StatefulWidget {
  const CodesScanScreen({super.key});

  @override
  State<CodesScanScreen> createState() => _CodesScanScreenState();
}

class _CodesScanScreenState extends State<CodesScanScreen> {
  final TextRecognizer _recognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );
  CameraController? _controller;
  bool _failed = false;
  bool _busy = false;
  DateTime _last = DateTime.fromMillisecondsSinceEpoch(0);

  /// Normalleştirilmiş anahtar → kaç karede görüldü.
  final Map<String, int> _seen = {};

  /// Onaylanan kodlar (okunduğu gibi), sırasıyla.
  final List<String> _codes = [];
  final Set<String> _accepted = {};

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
    _recognizer.close();
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
    if (_busy) return;
    final now = DateTime.now();
    if (now.difference(_last) < const Duration(milliseconds: 400)) return;
    _busy = true;
    _last = now;
    try {
      final input = _toInputImage(image);
      if (input == null) return;
      final result = await _recognizer.processImage(input);
      if (!mounted) return;

      // Satırları yukarıdan aşağıya, soldan sağa sırala.
      final lines = [for (final b in result.blocks) ...b.lines]
        ..sort((a, b) {
          final dy = a.boundingBox.top - b.boundingBox.top;
          if (dy.abs() > 8) return dy.sign.toInt();
          return (a.boundingBox.left - b.boundingBox.left).sign.toInt();
        });

      final thisFrame = <String>{};
      final added = <String>[];
      for (final l in lines) {
        for (final code in backupCodesIn(l.text)) {
          final k = _codeKey(code);
          if (!thisFrame.add(k)) continue;
          final n = (_seen[k] ?? 0) + 1;
          _seen[k] = n;
          if (n >= 2 && _accepted.add(k)) added.add(code);
        }
      }
      if (added.isNotEmpty) {
        Haptics.light();
        setState(() => _codes.addAll(added));
      }
    } catch (_) {
      // Tek karelik hatalar yok sayılır; bir sonraki kare denenir.
    } finally {
      _busy = false;
    }
  }

  void _clear() {
    setState(() {
      _codes.clear();
      _accepted.clear();
      _seen.clear();
    });
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

  Widget _panel(AppLocalizations t) {
    final maxH = MediaQuery.sizeOf(context).height * 0.3;
    return Container(
      padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
      decoration: BoxDecoration(
        color: const Color(0xE6000000),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: MuhurColors.bronzeLight.withValues(alpha: 0.4),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            _codes.isEmpty ? t.scanCodesHint : t.scanCodesCount(_codes.length),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _codes.isEmpty ? Colors.white : MuhurColors.bronzeLight,
              fontWeight: _codes.isEmpty ? FontWeight.w400 : FontWeight.w800,
              height: 1.35,
            ),
          ),
          if (_codes.isNotEmpty) ...[
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: maxH),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  alignment: WrapAlignment.center,
                  children: [
                    for (final c in _codes)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: MuhurColors.bronze),
                        ),
                        child: Text(
                          c,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'monospace',
                            fontSize: 13,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoundIconButton(
                  icon: Icons.restart_alt,
                  tooltip: t.scanCodesClear,
                  onPressed: _clear,
                ),
                const SizedBox(width: 16),
                RoundIconButton(
                  icon: Icons.check,
                  tooltip: t.useValue,
                  primary: true,
                  onPressed: () => Navigator.pop(context, _codes.join('\n')),
                ),
              ],
            ),
          ],
        ],
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
          Positioned(
            left: 12,
            right: 12,
            bottom: 16 + MediaQuery.paddingOf(context).bottom,
            child: _panel(t),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.scanCodesTitle)),
      body: body,
    );
  }
}
