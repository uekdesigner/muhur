import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../../l10n/app_localizations.dart';
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

class _ScannerScreenState extends State<ScannerScreen> {
  CameraController? _controller;
  final TextRecognizer _recognizer = TextRecognizer(
    script: TextRecognitionScript.latin,
  );

  late ScanMode _mode = widget.initialMode;
  bool _cameraFailed = false;
  bool _processing = false;
  bool _done = false;
  DateTime _lastRun = DateTime.fromMillisecondsSinceEpoch(0);

  String? _lastIban;
  int _stable = 0;
  List<IbanMatch> _foundIbans = [];
  List<String> _liveLines = [];
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
      if (input == null) return;
      final result = await _recognizer.processImage(input);
      if (!mounted || _done) return;

      final lines = <String>[
        for (final b in result.blocks)
          for (final l in b.lines) l.text.trim(),
      ].where((l) => l.isNotEmpty).toList();

      if (_mode == ScanMode.iban) {
        final found = findIbans(result.text);
        if (found.isNotEmpty) {
          final v = found.first.value;
          if (v == _lastIban) {
            _stable++;
          } else {
            _lastIban = v;
            _stable = 1;
          }
          if (_stable >= 2) {
            _done = true;
            try {
              await _controller?.stopImageStream();
            } catch (_) {}
            HapticFeedback.mediumImpact();
            if (mounted) {
              setState(() {
                _foundIbans = found;
                _liveLines = lines.take(8).toList();
              });
            }
            return;
          }
        } else {
          _lastIban = null;
          _stable = 0;
        }
      }
      setState(() => _liveLines = lines.take(8).toList());
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    } finally {
      _processing = false;
    }
  }

  Future<void> _rescan() async {
    setState(() {
      _foundIbans = [];
      _lastIban = null;
      _stable = 0;
      _done = false;
    });
    try {
      await _controller?.startImageStream(_onFrame);
    } catch (e) {
      if (mounted) setState(() => _error = '$e');
    }
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

  Widget _bottomPanel(AppLocalizations t) {
    final theme = Theme.of(context);
    final maxH = MediaQuery.of(context).size.height * 0.34;
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: maxH),
      color: Colors.black87,
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
        children: [
          if (_error != null)
            Text(_error!, style: TextStyle(color: theme.colorScheme.error)),
          if (_foundIbans.isNotEmpty) ...[
            Text(t.ibanFound, style: theme.textTheme.titleMedium),
            for (final m in _foundIbans)
              Card(
                child: ListTile(
                  title: SelectableText(groupIban(m.value)),
                  subtitle: m.corrected ? Text(t.ibanCorrected) : null,
                  trailing: FilledButton(
                    onPressed: () => Navigator.pop(context, m.value),
                    child: Text(t.useValue),
                  ),
                ),
              ),
            OutlinedButton.icon(
              icon: const Icon(Icons.refresh),
              label: Text(t.scanRetake),
              onPressed: _rescan,
            ),
          ] else ...[
            Row(
              children: [
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(t.scanning, style: theme.textTheme.bodySmall),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(t.scanHint, style: theme.textTheme.bodySmall),
            const SizedBox(height: 8),
            if (_liveLines.isNotEmpty)
              Text(t.pickLine, style: theme.textTheme.titleSmall),
            for (final l in _liveLines)
              ListTile(dense: true, title: Text(l), onTap: () => _pickLine(l)),
          ],
        ],
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
      final screenW = MediaQuery.of(context).size.width;
      body = Stack(
        children: [
          Positioned.fill(child: _fullPreview(c)),
          // Hedefleme çerçevesi (yalnızca görsel kılavuz)
          Align(
            alignment: const Alignment(0, -0.25),
            child: IgnorePointer(
              child: Container(
                width: screenW * 0.9,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white70, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          // Mod seçimi
          Positioned(
            top: 8,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Wrap(
                  spacing: 8,
                  children: [
                    ChoiceChip(
                      label: const Text('IBAN'),
                      selected: _mode == ScanMode.iban,
                      onSelected: (_) => setState(() {
                        _mode = ScanMode.iban;
                        _lastIban = null;
                        _stable = 0;
                      }),
                    ),
                    ChoiceChip(
                      label: Text(t.typeText),
                      selected: _mode == ScanMode.text,
                      onSelected: (_) => setState(() => _mode = ScanMode.text),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(left: 0, right: 0, bottom: 0, child: _bottomPanel(t)),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(t.scan)),
      body: body,
    );
  }
}
