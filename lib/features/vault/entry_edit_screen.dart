import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/app_theme.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../core/widgets/pro_badge.dart';
import '../../l10n/app_localizations.dart';
import '../password_gen/generator_settings.dart';
import '../password_gen/password_generator.dart';
import '../scanner/qr_scan_screen.dart';
import '../scanner/scan_launcher.dart';
import '../scanner/scanner_screen.dart';
import 'field_catalog.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import 'pro_dialog.dart';
import '../../core/entitlements/entitlements.dart';

/// Tek bir text field'ın yaklaşık yüksekliği; "Not" alanı bunun 5 katıdır.
const double _kFieldHeight = 48;

/// Son kullanma tarihi: rakamları AA/YY biçimine sokar (0528 -> 05/28).
class _ExpiryDateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var d = newValue.text.replaceAll(RegExp(r'\D'), '');
    if (d.length > 4) d = d.substring(0, 4);
    final text = d.length > 2 ? '${d.substring(0, 2)}/${d.substring(2)}' : d;
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

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
    sensitive: type == 'password' || type == 'totp',
    generatable: type == 'password',
    keyboard: type == 'phone' ? TextInputType.phone : null,
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
  bool generated = false;

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
      'phone': t.customTypePhone,
      'date': t.customTypeDate,
      'totp': t.fc2faSecretKey,
    };
    return AlertDialog(
      // Klavye açılınca içerik kaydırılabilsin (sarı-siyah taşma şeridi olmasın).
      scrollable: true,
      insetPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
            runSpacing: 8,
            children: [
              for (final e in types.entries)
                // Material çip yerine düz kutu: dolgu yok, ripple/kırmızı
                // parlama yok; seçili olan yeşil çerçeve + yeşil tik.
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => _type = e.key),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: _type == e.key ? Colors.green : Colors.white24,
                        width: _type == e.key ? 1.6 : 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_type == e.key) ...[
                          const Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.green,
                          ),
                          const SizedBox(width: 6),
                        ],
                        Text(
                          e.value,
                          style: TextStyle(color: MuhurColors.cream),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          tooltip: t.cancel,
          onPressed: () => Navigator.pop(context),
        ),
        IconButton(
          icon: const Icon(Icons.check),
          color: Colors.green,
          tooltip: t.addField,
          onPressed: _name.text.trim().isEmpty
              ? null
              : () => Navigator.pop(
                  context,
                  _CustomFieldResult(_name.text.trim(), _type),
                ),
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
  final List<_FieldDraft> _removed = [];
  bool _initialized = false;
  bool _saving = false;
  List<String> _titleHints = [];
  List<String> _tagHints = [];

  Future<void> _loadHints() async {
    final all = await widget.repo.entries();
    final titles = <String>{};
    final tags = <String>{};
    for (final e in all) {
      if (e.title.trim().isNotEmpty) titles.add(e.title.trim());
      for (final tag in (e.tags ?? '').split(',')) {
        if (tag.trim().isNotEmpty) tags.add(tag.trim());
      }
    }
    if (!mounted) return;
    setState(() {
      _titleHints = titles.toList()..sort();
      _tagHints = tags.toList()..sort();
    });
  }

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
    _loadHints();
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
              keyboard: f.type == 'phone' ? TextInputType.phone : null,
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
    if (!Entitlements.instance.isPro) {
      await showProDialog(context, t.proFeatureTitle, t.proFieldsBody);
      return;
    }
    final cat = widget.categories.firstWhere((c) => c.id == _categoryId);
    final added = _drafts.map((d) => d.fieldKey).whereType<String>().toSet();
    final available = FieldCatalog.forCategory(cat.nameKey)
        .where((s) => !added.contains(s.key))
        .toList();

    final chosen = await showModalBottomSheet<Object>(
      context: context,
      sheetAnimationStyle: Motion.style,
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
              leading: Icon(Icons.edit_note, color: MuhurColors.bronzeLight),
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
      animationStyle: Motion.style,
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
    for (final d in [..._drafts, ..._removed]) {
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
    try {
      await widget.repo.save(entry, fields);
    } on LimitReachedException {
      if (mounted) {
        setState(() => _saving = false);
        final t = AppLocalizations.of(context)!;
        await showProDialog(
          context,
          t.limitReachedTitle,
          t.limitReachedBody(Entitlements.freeEntriesPerCategory),
        );
      }
      return;
    }
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
      popUpAnimationStyle: Motion.style,
      tooltip: '${t.category}: ${current.label(t)}',
      position: PopupMenuPosition.under,
      color: const Color(0xF0161B1F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: MuhurColors.bronze, width: 1.2),
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
                  Icon(Icons.check, size: 18, color: MuhurColors.bronzeLight),
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
            Icon(Icons.arrow_drop_down, color: MuhurColors.cream),
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
      d.generated = true;
    });
  }

  /// Listeden ayar değişti: kaydet; alan boşsa ya da parolayı oluşturucu
  /// ürettiyse yeni ayarla hemen yenisini üret (elle yazılana dokunma).
  Future<void> _applyGenOptions(_FieldDraft d, GeneratorOptions o) async {
    await GeneratorSettings.instance.save(o);
    if (!mounted) return;
    if (d.value.text.isEmpty || d.generated) {
      _quickGenerate(d);
    } else {
      setState(() {});
    }
  }

  /// Parola alanındaki liste: yeni parola, uzunluk ve karakter seçenekleri.
  Widget _genMenu(AppLocalizations t, _FieldDraft d) {
    final o = GeneratorSettings.instance.options;
    Widget check(String label, bool on, GeneratorOptions Function(bool) next) =>
        CheckboxMenuButton(
          value: on,
          closeOnActivate: false,
          onChanged: (v) {
            final n = next(v ?? false);
            // En az bir karakter türü açık kalmalı.
            if (!(n.lower || n.upper || n.digits || n.symbols)) return;
            _applyGenOptions(d, n);
          },
          child: Text(label),
        );
    return MenuAnchor(
      style: MenuStyle(
        backgroundColor: const WidgetStatePropertyAll(Color(0xF21E2428)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: MuhurColors.bronze),
          ),
        ),
      ),
      menuChildren: [
        MenuItemButton(
          leadingIcon: Icon(Icons.refresh, color: MuhurColors.bronzeLight),
          onPressed: () => _quickGenerate(d),
          child: Text(t.genNewPassword),
        ),
        const Divider(height: 8),
        _GenLengthSlider(
          label: t.length,
          initial: o.length,
          onChanged: (len) => _applyGenOptions(
            d,
            GeneratorSettings.instance.options.copyWith(length: len),
          ),
        ),
        check(t.uppercase, o.upper, (v) => o.copyWith(upper: v)),
        check(t.digits, o.digits, (v) => o.copyWith(digits: v)),
        check(t.symbols, o.symbols, (v) => o.copyWith(symbols: v)),
        check(
          t.avoidAmbiguous,
          o.avoidAmbiguous,
          (v) => o.copyWith(avoidAmbiguous: v),
        ),
      ],
      builder: (context, controller, _) => IconButton(
        icon: Icon(controller.isOpen ? Icons.expand_less : Icons.expand_more),
        tooltip: t.generatorSettings,
        visualDensity: VisualDensity.compact,
        onPressed: () =>
            controller.isOpen ? controller.close() : controller.open(),
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

  /// Alanı kaldırır; birkaç saniye "Geri al" ile aynı yerine döndürülebilir.
  /// Denetleyici ekran kapanınca atılır (geri alma için saklanır).
  void _removeDraft(_FieldDraft d) {
    final i = _drafts.indexOf(d);
    final cat = _categoryId;
    setState(() => _drafts.remove(d));
    _removed.add(d);
    final t = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(t.fieldRemoved(d.label)),
          action: SnackBarAction(
            label: t.undo,
            onPressed: () {
              if (!mounted || _categoryId != cat || _drafts.contains(d)) return;
              setState(() {
                _removed.remove(d);
                _drafts.insert(i.clamp(0, _drafts.length), d);
              });
            },
          ),
        ),
      );
  }

  /// Tarayıcıyı açar ve okunan değeri alana yazar.
  Future<void> _scanInto(_FieldDraft d, Widget screen) async {
    final v = await openScanner(context, screen);
    if (v == null || !mounted) return;
    setState(() {
      d.value.text = v;
      // 2FA anahtarı gizli kalır; diğer taranan değerler görünür olur.
      d.reveal = d.type != 'totp';
    });
  }

  Widget _fieldCard(AppLocalizations t, _FieldDraft d) {
    final masked = d.sensitive && !d.reveal;
    final isDate = d.type == 'date';
    // Not alanı: 5 text field yüksekliğinde (maskeliyken tek satır).
    final tall = d.type == 'notes' && !masked;
    final empty = d.value.text.isEmpty;
    final suffixIcons = <Widget>[
      if (d.scan != null)
        IconButton(
          icon: const Icon(Icons.document_scanner),
          tooltip: t.scan,
          visualDensity: VisualDensity.compact,
          onPressed: () => _scanInto(
            d,
            ScannerScreen(
              initialMode: d.scan == 'iban' ? ScanMode.iban : ScanMode.text,
            ),
          ),
        ),
      if (isDate)
        IconButton(
          tooltip: MaterialLocalizations.of(context).datePickerHelpText,
          icon: const Icon(Icons.calendar_today),
          visualDensity: VisualDensity.compact,
          onPressed: () => _pickDate(d),
        ),
      // Parola: boşken "oluştur", doluyken "göster/gizle"; ayarlar listede.
      if (d.generatable && empty)
        IconButton(
          icon: Icon(Icons.add_moderator, color: MuhurColors.bronzeLight),
          tooltip: t.generate,
          visualDensity: VisualDensity.compact,
          onPressed: () => _quickGenerate(d),
        )
      else if (d.type == 'totp' && empty)
        IconButton(
          icon: Icon(Icons.qr_code_scanner, color: MuhurColors.bronzeLight),
          tooltip: t.qrScan,
          visualDensity: VisualDensity.compact,
          onPressed: () => _scanInto(d, const QrScanScreen()),
        )
      else if (d.sensitive)
        IconButton(
          tooltip: d.reveal ? t.hideValue : t.showValue,
          icon: Icon(d.reveal ? Icons.visibility_off : Icons.visibility),
          visualDensity: VisualDensity.compact,
          onPressed: () => setState(() => d.reveal = !d.reveal),
        ),
      if (d.generatable) _genMenu(t, d),
    ];

    final field = TextField(
      controller: d.value,
      obscureText: masked,
      enableSuggestions: false,
      autocorrect: false,
      readOnly: isDate,
      onTap: isDate ? () => _pickDate(d) : null,
      keyboardType: tall ? TextInputType.multiline : d.keyboard,
      inputFormatters: d.fieldKey == 'expiryDate'
          ? [_ExpiryDateFormatter()]
          : null,
      textAlignVertical: tall ? TextAlignVertical.top : null,
      maxLines: tall ? null : 1,
      expands: tall,
      // Elle yazılan parola artık "oluşturucudan gelmiş" sayılmaz.
      onChanged: d.generatable
          ? (_) => setState(() => d.generated = false)
          : null,
      decoration: InputDecoration(
        labelText: d.label,
        hintText: d.type == 'totp' ? t.totpHint : null,
        alignLabelWithHint: tall,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
        suffixIcon: suffixIcons.isEmpty
            ? null
            : Row(mainAxisSize: MainAxisSize.min, children: suffixIcons),
      ),
    );

    final body = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        tall ? SizedBox(height: _kFieldHeight * 5, child: field) : field,
        // Parola gücü: oluştur simgesi kalkınca alanın altında ince çizgi.
        if (d.generatable && !empty)
          Padding(
            padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
            child: LinearProgressIndicator(
              value: estimateStrength(d.value.text).fraction,
              color: _shieldColor(d.value.text),
              backgroundColor: MuhurColors.line,
              minHeight: 3,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
      ],
    );

    return Card(
      key: ObjectKey(d),
      color: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: d.removable ? 10 : 4, bottom: 4),
            child: body,
          ),
          if (d.removable)
            Positioned(top: 0, right: 0, child: _removeDot(t, d)),
        ],
      ),
    );
  }

  /// Kaldırılabilir alanın sağ üst köşesindeki küçük X.
  Widget _removeDot(AppLocalizations t, _FieldDraft d) => Tooltip(
    message: t.delete,
    child: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => _removeDraft(d),
      child: SizedBox(
        width: 34,
        height: 20,
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: const Color(0xFF14181C),
              shape: BoxShape.circle,
              border: Border.all(color: MuhurColors.bronzeLight),
            ),
            child: Icon(Icons.close, size: 13, color: MuhurColors.cream),
          ),
        ),
      ),
    ),
  );

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
    return MuhurBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(widget.entry == null ? t.addEntry : t.editEntry),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              tooltip: _favorite ? t.favoriteRemove : t.favoriteAdd,
              icon: Icon(_favorite ? Icons.star : Icons.star_border),
              onPressed: () => setState(() => _favorite = !_favorite),
            ),
          ],
        ),
        body: Form(
          child: Form(
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
                      child: _HintField(
                        controller: _title,
                        hints: _titleHints,
                        label: _titleLabel(t),
                        validator: (v) => (v == null || v.trim().isEmpty)
                            ? t.titleRequired
                            : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                _HintField(
                  controller: _tags,
                  hints: _tagHints,
                  label: t.tags,
                  commaList: true,
                ),
                // "Alanlar" başlığı yok: tüm text field'lar aynı listede.
                const SizedBox(height: 8),
                _fieldsSection(t),
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton.icon(
                    icon: const ProCorner(child: Icon(Icons.add)),
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
        ),
      ),
    );
  }
}

/// Büyük harfle başlayan, önceki kayıtlardan öneri sunan metin alanı.
/// [commaList] açıksa yalnızca son virgülden sonraki parça tamamlanır.
class _HintField extends StatefulWidget {
  const _HintField({
    required this.controller,
    required this.hints,
    required this.label,
    this.validator,
    this.commaList = false,
  });
  final TextEditingController controller;
  final List<String> hints;
  final String label;
  final String? Function(String?)? validator;
  final bool commaList;

  @override
  State<_HintField> createState() => _HintFieldState();
}

class _HintFieldState extends State<_HintField> {
  final FocusNode _focus = FocusNode();
  String _prefix = '';

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RawAutocomplete<String>(
      textEditingController: widget.controller,
      focusNode: _focus,
      optionsBuilder: (value) {
        final text = value.text;
        final cut = widget.commaList ? text.lastIndexOf(',') + 1 : 0;
        _prefix = cut == 0 ? '' : '${text.substring(0, cut)} ';
        final q = text.substring(cut).trim().toLowerCase();
        if (q.isEmpty) return const Iterable<String>.empty();
        return widget.hints
            .where((h) {
              final l = h.toLowerCase();
              return l.startsWith(q) && l != q;
            })
            .take(5);
      },
      onSelected: (s) {
        final c = widget.controller;
        c.text = '$_prefix$s';
        c.selection = TextSelection.collapsed(offset: c.text.length);
      },
      fieldViewBuilder: (context, controller, focusNode, onSubmit) =>
          TextFormField(
            controller: controller,
            focusNode: focusNode,
            textCapitalization: TextCapitalization.words,
            validator: widget.validator,
            decoration: InputDecoration(labelText: widget.label),
          ),
      optionsViewBuilder: (context, onSelected, options) => Align(
        alignment: Alignment.topLeft,
        child: Material(
          elevation: 4,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 200, maxWidth: 320),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                for (final o in options)
                  ListTile(
                    dense: true,
                    title: Text(o),
                    onTap: () => onSelected(o),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Listedeki uzunluk kaydırıcısı (8–64). Bırakınca seçilen değer bildirilir.
class _GenLengthSlider extends StatefulWidget {
  const _GenLengthSlider({
    required this.label,
    required this.initial,
    required this.onChanged,
  });
  final String label;
  final int initial;
  final ValueChanged<int> onChanged;

  @override
  State<_GenLengthSlider> createState() => _GenLengthSliderState();
}

class _GenLengthSliderState extends State<_GenLengthSlider> {
  late double _v = widget.initial.clamp(8, 64).toDouble();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 6, 8, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.label}: ${_v.round()}',
              style: TextStyle(color: MuhurColors.cream, fontSize: 14),
            ),
            Slider(
              value: _v,
              min: 8,
              max: 64,
              divisions: 56,
              onChanged: (x) => setState(() => _v = x),
              onChangeEnd: (x) => widget.onChanged(x.round()),
            ),
          ],
        ),
      ),
    );
  }
}
