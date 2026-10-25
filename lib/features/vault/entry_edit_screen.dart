import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import '../password_gen/password_generator_screen.dart';
import '../password_gen/strength_bar.dart';
import '../scanner/scanner_screen.dart';

class _FieldDraft {
  _FieldDraft({
    String label = '',
    String value = '',
    this.type = 'text',
    this.sensitive = false,
  }) : label = TextEditingController(text: label),
       value = TextEditingController(text: value);

  final TextEditingController label;
  final TextEditingController value;
  String type;
  bool sensitive;
  bool reveal = false;

  void dispose() {
    label.dispose();
    value.dispose();
  }
}

class EntryEditScreen extends StatefulWidget {
  const EntryEditScreen({
    super.key,
    required this.repo,
    required this.categories,
    this.entry,
    this.initialFields,
    this.initialCategoryId,
  });

  final VaultRepository repo;
  final List<Category> categories;
  final VaultEntry? entry; // null ise yeni kayıt
  final List<FieldData>? initialFields;
  final int? initialCategoryId;

  @override
  State<EntryEditScreen> createState() => _EntryEditScreenState();
}

class _EntryEditScreenState extends State<EntryEditScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _title = TextEditingController(
    text: widget.entry?.title ?? '',
  );
  late final TextEditingController _domain = TextEditingController(
    text: widget.entry?.domain ?? '',
  );
  late final TextEditingController _tags = TextEditingController(
    text: widget.entry?.tags ?? '',
  );
  late int _categoryId =
      widget.entry?.categoryId ??
      widget.initialCategoryId ??
      widget.categories.first.id;
  late bool _favorite = widget.entry?.isFavorite ?? false;
  final List<_FieldDraft> _drafts = [];
  bool _initialized = false;
  bool _saving = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    final t = AppLocalizations.of(context)!;
    if (widget.initialFields != null) {
      for (final f in widget.initialFields!) {
        _drafts.add(
          _FieldDraft(
            label: f.label,
            value: f.value,
            type: f.type,
            sensitive: f.sensitive,
          ),
        );
      }
    } else {
      final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
      _drafts.addAll(_defaults(t, cat.nameKey));
    }
  }

  List<_FieldDraft> _defaults(AppLocalizations t, String key) => switch (key) {
    'banks' => [
      _FieldDraft(label: t.fieldIban, sensitive: true),
      _FieldDraft(label: t.fieldUsername),
      _FieldDraft(label: t.fieldPassword, type: 'password', sensitive: true),
    ],
    'other' => [_FieldDraft(label: t.fieldNote, type: 'notes')],
    _ => [
      _FieldDraft(label: t.fieldUsername),
      _FieldDraft(label: t.fieldPassword, type: 'password', sensitive: true),
    ],
  };

  @override
  void dispose() {
    _title.dispose();
    _domain.dispose();
    _tags.dispose();
    for (final d in _drafts) {
      d.dispose();
    }
    super.dispose();
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _saving = true);
    final entry = VaultEntry(
      id: widget.entry?.id,
      categoryId: _categoryId,
      title: _title.text.trim(),
      domain: _domain.text,
      tags: _tags.text,
      isFavorite: _favorite,
    );
    final fields = _drafts
        .map(
          (d) => FieldData(
            label: d.label.text.trim(),
            value: d.value.text,
            type: d.type,
            sensitive: d.sensitive,
          ),
        )
        .toList();
    await widget.repo.save(entry, fields);
    if (mounted) Navigator.pop(context, true);
  }

  Widget _fieldCard(AppLocalizations t, _FieldDraft d) {
    final masked = d.sensitive && !d.reveal;
    return Card(
      key: ObjectKey(d),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: d.label,
                    decoration: InputDecoration(labelText: t.fieldLabel),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => setState(() {
                    _drafts.remove(d);
                    d.dispose();
                  }),
                ),
              ],
            ),
            TextField(
              controller: d.value,
              obscureText: masked,
              enableSuggestions: false,
              autocorrect: false,
              maxLines: (d.type == 'notes' && !masked) ? 4 : 1,
              onChanged: d.type == 'password' ? (_) => setState(() {}) : null,
              decoration: InputDecoration(
                labelText: t.fieldValue,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.document_scanner),
                      tooltip: t.scan,
                      onPressed: () async {
                        final mode = d.label.text.toLowerCase().contains('iban')
                            ? ScanMode.iban
                            : ScanMode.text;
                        final v = await Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ScannerScreen(initialMode: mode),
                          ),
                        );
                        if (v != null) {
                          setState(() {
                            d.value.text = v;
                            d.reveal = true;
                          });
                        }
                      },
                    ),
                    if (d.type == 'password') StrengthBar(d.value.text),
                    const SizedBox(height: 8),
                    IconButton(
                      icon: const Icon(Icons.auto_fix_high),
                      tooltip: t.generate,
                      onPressed: () async {
                        final pw = await Navigator.push<String>(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const PasswordGeneratorScreen(pick: true),
                          ),
                        );
                        if (pw != null) {
                          setState(() {
                            d.value.text = pw;
                            d.reveal = true;
                          });
                        }
                      },
                    ),
                    if (d.sensitive)
                      IconButton(
                        icon: Icon(
                          d.reveal ? Icons.visibility_off : Icons.visibility,
                        ),
                        onPressed: () => setState(() => d.reveal = !d.reveal),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.entry == null ? t.addEntry : t.editEntry),
        actions: [
          IconButton(
            icon: Icon(_favorite ? Icons.star : Icons.star_border),
            onPressed: () => setState(() => _favorite = !_favorite),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _title,
              decoration: InputDecoration(labelText: t.title),
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? t.titleRequired : null,
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<int>(
              initialValue: _categoryId,
              decoration: InputDecoration(labelText: t.category),
              items: [
                for (final c in widget.categories)
                  DropdownMenuItem(value: c.id, child: Text(c.label(t))),
              ],
              onChanged: (v) => setState(() => _categoryId = v!),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _domain,
              keyboardType: TextInputType.url,
              autocorrect: false,
              decoration: InputDecoration(labelText: t.domain),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: _tags,
              decoration: InputDecoration(labelText: t.tags),
            ),
            const SizedBox(height: 20),
            Text(t.fields, style: Theme.of(context).textTheme.titleMedium),
            for (final d in _drafts) _fieldCard(t, d),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                icon: const Icon(Icons.add),
                label: Text(t.addField),
                onPressed: () => setState(() => _drafts.add(_FieldDraft())),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: _saving ? null : _save,
              child: Text(t.save),
            ),
          ],
        ),
      ),
    );
  }
}
