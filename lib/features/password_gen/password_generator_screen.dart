import 'package:flutter/material.dart';

import '../../core/utils/clipboard_service.dart';
import '../../l10n/app_localizations.dart';
import 'generator_settings.dart';
import 'password_generator.dart';
import 'strength_bar.dart';
import '../../core/widgets/copy_countdown.dart';

/// Ekranın açılış amacı:
/// - [view]: Ana menüden serbestçe şifre üretme (yalnızca üret/kopyala).
/// - [pick]: Bir alana değer seçmek için ("Bu parolayı kullan" döner).
/// - [settings]: Yalnızca üretim ayarlarını düzenleyip kaydetmek için
///   ("Kaydet ve çık", değer döndürmez).
enum GeneratorScreenMode { view, pick, settings }

class PasswordGeneratorScreen extends StatefulWidget {
  const PasswordGeneratorScreen({
    super.key,
    this.mode = GeneratorScreenMode.view,
  });

  final GeneratorScreenMode mode;

  @override
  State<PasswordGeneratorScreen> createState() =>
      _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  final PasswordGenerator _gen = PasswordGenerator();
  late GeneratorOptions _opts = GeneratorSettings.instance.options;
  late String _pw = _gen.generate(_opts);

  void _update(GeneratorOptions o) {
    // En az bir karakter türü açık kalmalı
    if (!(o.lower || o.upper || o.digits || o.symbols)) return;
    setState(() {
      _opts = o;
      _pw = _gen.generate(o);
    });
  }

  Future<void> _saveAndExit() async {
    await GeneratorSettings.instance.save(_opts);
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(t.generator)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    _pw,
                    style: const TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 20,
                      height: 1.4,
                    ),
                  ),
                  StrengthBar(_pw),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        tooltip: t.regenerate,
                        onPressed: () =>
                            setState(() => _pw = _gen.generate(_opts)),
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy),
                        tooltip: t.copy,
                        onPressed: () async {
                          await ClipboardService.instance.copy(_pw);
                          if (!context.mounted) return;
                          showCopiedSnack(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('${t.length}: ${_opts.length}'),
          Slider(
            value: _opts.length.toDouble(),
            min: 8,
            max: 64,
            divisions: 56,
            label: '${_opts.length}',
            onChanged: (v) => _update(_opts.copyWith(length: v.round())),
          ),
          SwitchListTile(
            title: Text(t.lowercase),
            value: _opts.lower,
            onChanged: (v) => _update(_opts.copyWith(lower: v)),
          ),
          SwitchListTile(
            title: Text(t.uppercase),
            value: _opts.upper,
            onChanged: (v) => _update(_opts.copyWith(upper: v)),
          ),
          SwitchListTile(
            title: Text(t.digits),
            value: _opts.digits,
            onChanged: (v) => _update(_opts.copyWith(digits: v)),
          ),
          SwitchListTile(
            title: Text(t.symbols),
            value: _opts.symbols,
            onChanged: (v) => _update(_opts.copyWith(symbols: v)),
          ),
          SwitchListTile(
            title: Text(t.avoidAmbiguous),
            value: _opts.avoidAmbiguous,
            onChanged: (v) => _update(_opts.copyWith(avoidAmbiguous: v)),
          ),
          if (widget.mode == GeneratorScreenMode.pick) ...[
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.pop(context, _pw),
              child: Text(t.usePassword),
            ),
          ],
          if (widget.mode == GeneratorScreenMode.settings) ...[
            const SizedBox(height: 16),
            FilledButton(onPressed: _saveAndExit, child: Text(t.saveAndExit)),
          ],
        ],
      ),
    );
  }
}
