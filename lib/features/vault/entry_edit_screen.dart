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

/// Tek bir text field'ın yaklaşık yüksekliği; "Not" alanı bunun 5 katıdır.
const double _kFieldHeight = 56;

/// Formdaki bir alan satırı. Ya [FieldCatalog]'dan bir tanıma (`spec`)
/// dayanır, ya da kullanıcının oluşturduğu özel alandır (spec == null).
class _FieldDraft {
  _FieldDraft({
    this.spec,
    required this.label,
    String value = '',
    this.type = 'text',
    this.sensitive = false,
    this.generatable = false,
    this.scan,
    this.keyboard,
    this.removable = true,
    this.group,
  }) : value = TextEditingController(text: value);

  factory _FieldDraft.fromSpec(
    FieldSpec s,
    AppLocalizations t, {
    String value = '',
  }) => _FieldDraft(
    spec: s,
    label: s.labelOf(t),
    value: value,
    type: s.type,
    sensitive: s.sensitive,
    generatable: s.generatable,
    scan: s.scan,
    keyboard: s.keyboard ?? (s.type == 'url' ? TextInputType.url : null),
    removable: !s.isDefault, // Sabit alanlarda X yok
    group: s.group,
  );

  /// Özel alan (katalogda olmayan). Tipi kullanıcı seçer.
  factory _FieldDraft.custom(String name, String type) => _FieldDraft(
    label: name,
    type: type,
    sensitive: type == 'password',
    generatable: type == 'password',
  );

  final FieldSpec? spec;
  final String label;
  final TextEditingController value;
  final String type;
  final bool sensitive;
  final bool generatable;
  final String? scan; // 'iban' | 'text' | null
  final TextInputType? keyboard;
  final bool removable;
  final String? group;
  bool reveal = false;

  /// Veritabanına yazılan, dilden bağımsız alan anahtarı (özel alanda null).
  String? get fieldKey => spec?.key;

  void dispose() {
    value.dispose();
  }
}

class _CustomFieldResult {
  const _CustomFieldResult(this.name, this.type);
  final String name;
  final String type;
}

/// "Özel alan" penceresi: ad + tür (Metin / Not / Gizli Parola / Tarih).
/// Kendi denetleyicisini kendi yönettiği için güvenle dispose edilir.
class _CustomFieldDialog extends StatefulWidget {
  const _CustomFieldDialog();

  @override
  State<_CustomFieldDialog> createState() => _CustomFieldDialogState();
}

class _CustomFieldDialogState extends State<_CustomFieldDialog> {
  final TextEditingController _name = TextEditingController();
  String _type = 'text';

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final types = <String, String>{
      'text': t.customTypeText,
      'notes': t.customTypeNote,
      'password': t.customTypePassword,
      'date': t.customTypeDate,
    };
    return AlertDialog(
      title: Text(t.customField),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _name,
            autofocus: true,
            decoration: InputDecoration(labelText: t.customFieldName),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 16),
          Text(
            t.customFieldType,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            children: [
              for (final e in types.entries)
                ChoiceChip(
                  label: Text(e.value),
                  selected: _type == e.key,
                  onSelected: (_) => setState(() => _type = e.key),
                ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(t.cancel),
        ),
        FilledButton(
          onPressed: _name.text.trim().isEmpty
              ? null
              : () => Navigator.pop(
                  context,
                  _CustomFieldResult(_name.text.trim(), _type),
                ),
          child: Text(t.addField),
        ),
      ],
    );
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
        // Önce dilden bağımsız anahtarla, yoksa (eski kayıt) etiketle eşleştir.
        FieldSpec? match;
        for (final s in specs) {
          if (f.key != null ? s.key == f.key : s.labelOf(t) == f.label) {
            match = s;
            break;
          }
        }
        if (match != null) {
          _drafts.add(_FieldDraft.fromSpec(match, t, value: f.value));
        } else {
          // Katalogda karşılığı olmayan (özel / eski) alan: verisi korunur.
          _drafts.add(
            _FieldDraft(
              label: f.label,
              value: f.value,
              type: f.type,
              sensitive: f.sensitive,
              generatable: f.type == 'password',
            ),
          );
        }
      }
    } else {
      _drafts.addAll(_draftsFor(t, cat.nameKey));
    }
  }

  List<_FieldDraft> _draftsFor(AppLocalizations t, String key) =>
      FieldCatalog.defaultsFor(key)
          .map((s) => _FieldDraft.fromSpec(s, t))
          .toList();

  /// Kullanıcı hazır alanlara hiç dokunmadı mı?
  bool _isPristine() {
    final base = FieldCatalog.defaultsFor(_templateKey);
    if (base.length != _drafts.length) return false;
    for (var i = 0; i < base.length; i++) {
      final d = _drafts[i];
      final b = base[i];
      if (d.value.text.isNotEmpty || d.fieldKey != b.key) {
        return false;
      }
    }
    return true;
  }

  void _onCategory(int id) {
    if (id == _categoryId) return;
    final t = AppLocalizations.of(context)!;
    final newCat = widget.categories.firstWhere((c) => c.id == id);
    final swap = _applyTemplates && _isPristine();

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

  /// "Alan ekle": önce "Özel alan", sonra seçili kategoride henüz eklenmemiş
  /// katalog alanları listelenir.
  Future<void> _addField() async {
    final t = AppLocalizations.of(context)!;
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    final added = _drafts.map((d) => d.fieldKey).whereType<String>().toSet();
    final available = FieldCatalog.forCategory(cat.nameKey)
        .where((s) => !added.contains(s.key))
        .toList();

    final chosen = await showModalBottomSheet<Object>(
      context: context,
      backgroundColor: const Color(0xF0161B1F),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (sheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                t.pickFieldTitle,
                style: Theme.of(sheetContext).textTheme.titleMedium,
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.edit_note,
                color: MuhurColors.bronzeLight,
              ),
              title: Text(t.customField),
              onTap: () => Navigator.pop(sheetContext, 'custom'),
            ),
            const Divider(height: 1),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (final s in available)
                    ListTile(
                      title: Text(s.labelOf(t)),
                      onTap: () => Navigator.pop(sheetContext, s),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    if (chosen == null || !mounted) return;

    if (chosen is FieldSpec) {
      setState(() => _drafts.add(_FieldDraft.fromSpec(chosen, t)));
      return;
    }

    final custom = await showDialog<_CustomFieldResult>(
      context: context,
      builder: (_) => const _CustomFieldDialog(),
    );
    if (custom == null || !mounted) return;
    setState(() => _drafts.add(_FieldDraft.custom(custom.name, custom.type)));
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
            key: d.fieldKey,
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

  /// Üstteki "Başlık" alanı kategoriye göre adlandırılır (tablodaki ilk alan).
  String _titleLabel(AppLocalizations t) {
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    return switch (cat.nameKey) {
      'banks' => t.fcBankName,
      'emails' => t.fcAccountTitle,
      'social' => t.fcPlatformTitle,
      'business' => t.fcServiceName,
      'websites' => t.fcSiteName,
      _ => t.title,
    };
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

  // --- Tarih alanı yardımcıları (gg.aa.yyyy) ---
  String _fmtDate(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}.${d.year}';

  DateTime? _parseDate(String s) {
    final p = s.split('.');
    if (p.length != 3) return null;
    final dd = int.tryParse(p[0]);
    final mm = int.tryParse(p[1]);
    final yy = int.tryParse(p[2]);
    if (dd == null || mm == null || yy == null) return null;
    if (yy < 1950 || yy > 2100 || mm < 1 || mm > 12 || dd < 1 || dd > 31) {
      return null;
    }
    return DateTime(yy, mm, dd);
  }

  Future<void> _pickDate(_FieldDraft d) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _parseDate(d.value.text) ?? DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (picked != null && mounted) {
      setState(() => d.value.text = _fmtDate(picked));
    }
  }

  void _removeDraft(_FieldDraft d) {
    setState(() => _drafts.remove(d));
    // Alan bu çerçevede hâlâ çiziliyor; denetleyiciyi çerçeveden sonra at.
    WidgetsBinding.instance.addPostFrameCallback((_) => d.dispose());
  }

  Widget _fieldCard(AppLocalizations t, _FieldDraft d) {
    final masked = d.sensitive && !d.reveal;
    final isDate = d.type == 'date';
    // Not alanı: 5 text field yüksekliğinde (maskeliyken tek satır).
    final tall = d.type == 'notes' && !masked;
    final suffixIcons = <Widget>[
      if (d.scan != null)
        IconButton(
          icon: const Icon(Icons.document_scanner),
          tooltip: t.scan,
          onPressed: () async {
            final v = await Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (_) => ScannerScreen(
                  initialMode: d.scan == 'iban' ? ScanMode.iban : ScanMode.text,
                ),
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
      if (isDate)
        IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _pickDate(d),
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
      // X yalnızca opsiyonel (eklenebilir) alanlarda.
      if (d.removable)
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => _removeDraft(d),
        ),
    ];

    final field = TextField(
      controller: d.value,
      obscureText: masked,
      enableSuggestions: false,
      autocorrect: false,
      readOnly: isDate,
      onTap: isDate ? () => _pickDate(d) : null,
      keyboardType: tall ? TextInputType.multiline : d.keyboard,
      textAlignVertical: tall ? TextAlignVertical.top : null,
      maxLines: tall ? null : 1,
      expands: tall,
      onChanged: d.generatable ? (_) => setState(() {}) : null,
      decoration: InputDecoration(
        labelText: d.label,
        alignLabelWithHint: tall,
        suffixIcon: Row(mainAxisSize: MainAxisSize.min, children: suffixIcons),
      ),
    );

    return Card(
      key: ObjectKey(d),
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: tall ? SizedBox(height: _kFieldHeight * 5, child: field) : field,
      ),
    );
  }

  /// Aynı gruptaki alanları (örn. Son K.T. / CVV) tek satırda yan yana
  /// gösterir; diğerleri tam genişlikte sıralanır.
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
              controller: _tags,
              decoration: InputDecoration(labelText: t.tags),
            ),
            // "Alanlar" başlığı yok: tüm text field'lar aynı listede.
            const SizedBox(height: 8),
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
