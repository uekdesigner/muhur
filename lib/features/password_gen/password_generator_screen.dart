import 'package:flutter/material.dart';

import '../../core/utils/clipboard_service.dart';
import '../../l10n/app_localizations.dart';
import 'password_generator.dart';
import 'strength_bar.dart';

class PasswordGeneratorScreen extends StatefulWidget {
  const PasswordGeneratorScreen({super.key, this.pick = false});

  /// true ise "Bu parolayı kullan" butonu çıkar ve seçilen parola geri döner.
  final bool pick;

  @override
  State<PasswordGeneratorScreen> createState() =>
      _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  final PasswordGenerator _gen = PasswordGenerator();
  GeneratorOptions _opts = const GeneratorOptions();
  late String _pw = _gen.generate(_opts);

  void _update(GeneratorOptions o) {
    // En az bir karakter türü açık kalmalı
    if (!(o.lower || o.upper || o.digits || o.symbols)) return;
    setState(() {
      _opts = o;
      _pw = _gen.generate(o);
    });
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
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                t.copied(
                                  ClipboardService
                                      .instance
                                      .clearAfter
                                      .inSeconds,
                                ),
                              ),
                            ),
                          );
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
          if (widget.pick) ...[
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.pop(context, _pw),
              child: Text(t.usePassword),
            ),
          ],
        ],
      ),
    );
  }
}
