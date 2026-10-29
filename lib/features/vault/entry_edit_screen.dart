import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../l10n/app_localizations.dart';
import '../password_gen/generator_settings.dart';
import '../password_gen/password_generator.dart';
import '../password_gen/password_generator_screen.dart';
import '../scanner/scanner_screen.dart';
import 'field_catalog.dart';
import 'vault_models.dart';
import 'vault_repository.dart';

/// Formdaki bir alan satırı. Alan adı artık serbest metin değildir;
/// ya [FieldCatalog]'dan seçilen sabit bir tanıma (`spec`) sahiptir,
/// ya da (eski kayıtlarla uyumluluk için) kaydedilmiş özel bir ad taşır.
class _FieldDraft {
  _FieldDraft({
    this.spec,
    required this.label,
    String value = '',
    this.type = 'text',
    this.sensitive = false,
  }) : value = TextEditingController(text: value);

  /// Katalogdaki sabit alan tanımı; eşleşmeyen eski kayıtlarda null olur.
  final FieldSpec? spec;
  final String label;
  final TextEditingController value;
  final String type;
  final bool sensitive;
  bool reveal = false;

  String? get specKey => spec?.key;
  bool get locked => spec?.locked ?? false;
  bool get scannable => spec?.scannable ?? false;
  bool get generatable => spec?.generatable ?? false;
  String? get group => spec?.group;

  void dispose() {
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

  /// Şu an yüklü olan hazır alanların ait olduğu kategori anahtarı.
  String _templateKey = '';

  /// Yalnızca yeni kayıtta hazır alanlar kategoriyle birlikte değişir.
  bool get _applyTemplates =>
      widget.entry == null && widget.initialFields == null;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialized) return;
    _initialized = true;
    final t = AppLocalizations.of(context)!;
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    _templateKey = cat.nameKey;
    if (widget.initialFields != null) {
      final specs = FieldCatalog.forCategory(cat.nameKey);
      for (final f in widget.initialFields!) {
        FieldSpec? match;
        for (final s in specs) {
          if (s.labelOf(t) == f.label) {
            match = s;
            break;
          }
        }
        _drafts.add(
          _FieldDraft(
            spec: match,
            label: f.label,
            value: f.value,
            type: f.type,
            sensitive: f.sensitive,
          ),
        );
      }
    } else {
      _drafts.addAll(_draftsFor(t, cat.nameKey));
    }
  }

  List<_FieldDraft> _draftsFor(AppLocalizations t, String key) =>
      FieldCatalog.defaultsFor(key)
          .map(
            (s) => _FieldDraft(
              spec: s,
              label: s.labelOf(t),
              type: s.type,
              sensitive: s.sensitive,
            ),
          )
          .toList();

  /// Kullanıcı hazır alanlara hiç dokunmadı mı?
  bool _isPristine(AppLocalizations t) {
    final base = FieldCatalog.defaultsFor(_templateKey);
    if (base.length != _drafts.length) return false;
    for (var i = 0; i < base.length; i++) {
      final d = _drafts[i];
      final b = base[i];
      if (d.value.text.isNotEmpty || d.specKey != b.key) {
        return false;
      }
    }
    return true;
  }

  void _onCategory(int id) {
    if (id == _categoryId) return;
    final t = AppLocalizations.of(context)!;
    final newCat = widget.categories.firstWhere((c) => c.id == id);
    final swap = _applyTemplates && _isPristine(t);

    List<_FieldDraft> old = const [];
    setState(() {
      _categoryId = id;
      if (swap) {
        old = List.of(_drafts);
        _drafts
          ..clear()
          ..addAll(_draftsFor(t, newCat.nameKey));
        _templateKey = newCat.nameKey;
      }
    });
    // Eski denetleyicileri çerçeve çizildikten sonra güvenle at
    if (old.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        for (final d in old) {
          d.dispose();
        }
      });
    }
  }

  /// "Alan ekle": seçili kategoride henüz eklenmemiş katalog alanlarını
  /// alt menüde listeler; seçilen alan forma eklenir.
  Future<void> _addField() async {
    final t = AppLocalizations.of(context)!;
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    final added = _drafts.map((d) => d.specKey).whereType<String>().toSet();
    final available = FieldCatalog.forCategory(
      cat.nameKey,
    ).where((s) => !added.contains(s.key)).toList();

    if (available.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.allFieldsAdded)));
      return;
    }

    final chosen = await showModalBottomSheet<FieldSpec>(
      context: context,
      backgroundColor: const Color(0xF0161B1F),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                t.pickFieldTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (final s in available)
                    ListTile(
                      title: Text(s.labelOf(t)),
                      onTap: () => Navigator.pop(context, s),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    if (chosen == null) return;
    setState(
      () => _drafts.add(
        _FieldDraft(
          spec: chosen,
          label: chosen.labelOf(t),
          type: chosen.type,
          sensitive: chosen.sensitive,
        ),
      ),
    );
  }

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
            label: d.label,
            value: d.value.text,
            type: d.type,
            sensitive: d.sensitive,
          ),
        )
        .toList();
    await widget.repo.save(entry, fields);
    if (mounted) Navigator.pop(context, true);
  }

  /// Bankalar kategorisinde "Başlık" alanı Banka Adı görevi görür.
  String _titleLabel(AppLocalizations t) {
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    return cat.nameKey == 'banks' ? t.fcBankName : t.title;
  }

  /// Başlığın solundaki kategori ikonu + açılır menü.
  Widget _categoryMenu(AppLocalizations t) {
    final current = widget.categories.firstWhere((c) => c.id == _categoryId);
    return PopupMenuButton<int>(
      tooltip: '${t.category}: ${current.label(t)}',
      position: PopupMenuPosition.under,
      color: const Color(0xF0161B1F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: MuhurColors.bronze, width: 1.2),
      ),
      onSelected: _onCategory,
      itemBuilder: (context) => [
        for (final c in widget.categories)
          PopupMenuItem<int>(
            value: c.id,
            child: Row(
              children: [
                Icon(c.icon, color: MuhurColors.bronzeLight, size: 22),
                const SizedBox(width: 12),
                Expanded(child: Text(c.label(t))),
                if (c.id == _categoryId)
                  const Icon(
                    Icons.check,
                    size: 18,
                    color: MuhurColors.bronzeLight,
                  ),
              ],
            ),
          ),
      ],
      child: Container(
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xAA000000),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: MuhurColors.bronze, width: 1.2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(current.icon, color: MuhurColors.bronzeLight),
            const Icon(Icons.arrow_drop_down, color: MuhurColors.cream),
          ],
        ),
      ),
    );
  }

  /// Hızlı üretim: kayıtlı [GeneratorSettings] ayarlarıyla doğrudan şifre
  /// üretir (kalkan+ ikonu).
  void _quickGenerate(_FieldDraft d) {
    final pw = PasswordGenerator().generate(GeneratorSettings.instance.options);
    setState(() {
      d.value.text = pw;
      d.reveal = true;
    });
  }

  /// Ayarlar ikonu: şifre oluşturucuyu "ayarla, kaydet ve çık" modunda açar.
  Future<void> _openGeneratorSettings() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const PasswordGeneratorScreen(mode: GeneratorScreenMode.settings),
      ),
    );
  }

  Color _shieldColor(String value) {
    if (value.isEmpty) return MuhurColors.bronzeLight;
    return switch (estimateStrength(value).level) {
      Strength.weak => Colors.redAccent,
      Strength.fair => Colors.orangeAccent,
      Strength.good => Colors.lightGreen,
      Strength.strong => Colors.green,
    };
  }

  Widget _fieldCard(AppLocalizations t, _FieldDraft d) {
    final masked = d.sensitive && !d.reveal;
    final suffixIcons = <Widget>[
      if (d.scannable)
        IconButton(
          icon: const Icon(Icons.document_scanner),
          tooltip: t.scan,
          onPressed: () async {
            final v = await Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (_) => const ScannerScreen(initialMode: ScanMode.iban),
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
      if (d.generatable) ...[
        IconButton(
          icon: Icon(Icons.add_moderator, color: _shieldColor(d.value.text)),
          tooltip: t.generate,
          onPressed: () => _quickGenerate(d),
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          tooltip: t.generatorSettings,
          onPressed: _openGeneratorSettings,
        ),
      ],
      if (d.sensitive)
        IconButton(
          icon: Icon(d.reveal ? Icons.visibility_off : Icons.visibility),
          onPressed: () => setState(() => d.reveal = !d.reveal),
        ),
      if (!d.locked)
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => setState(() {
            _drafts.remove(d);
            d.dispose();
          }),
        ),
    ];
    return Card(
      key: ObjectKey(d),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: d.value,
              obscureText: masked,
              enableSuggestions: false,
              autocorrect: false,
              maxLines: (d.type == 'notes' && !masked) ? 4 : 1,
              onChanged: d.generatable ? (_) => setState(() {}) : null,
              decoration: InputDecoration(
                labelText: d.label,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: suffixIcons,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Ardışık aynı gruptaki alanları (örn. Kart No / Son K.T. / CVV) tek
  /// satırda yan yana gösterir; diğerleri tam genişlikte sıralanır.
  Widget _fieldsSection(AppLocalizations t) {
    final widgets = <Widget>[];
    final handled = <_FieldDraft>{};
    for (final d in _drafts) {
      if (handled.contains(d)) continue;
      final group = d.group;
      if (group != null) {
        final groupItems = _drafts.where((x) => x.group == group).toList();
        handled.addAll(groupItems);
        widgets.add(
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < groupItems.length; i++) ...[
                if (i > 0) const SizedBox(width: 8),
                Expanded(child: _fieldCard(t, groupItems[i])),
              ],
            ],
          ),
        );
      } else {
        handled.add(d);
        widgets.add(_fieldCard(t, d));
      }
    }
    return Column(children: widgets);
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _categoryMenu(t),
                const SizedBox(width: 8),
                Expanded(
                  child: TextFormField(
                    controller: _title,
                    decoration: InputDecoration(labelText: _titleLabel(t)),
                    validator: (v) => (v == null || v.trim().isEmpty)
                        ? t.titleRequired
                        : null,
                  ),
                ),
              ],
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
            _fieldsSection(t),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                icon: const Icon(Icons.add),
                label: Text(t.addField),
                onPressed: _addField,
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
