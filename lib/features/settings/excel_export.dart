import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../core/crypto/crypto_service.dart';
import '../../core/utils/motion.dart';
import '../../core/utils/xlsx_writer.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';
import '../vault/field_catalog.dart';
import '../vault/vault_models.dart';

/// Kasadaki kayıtları (çöp kutusu hariç) ŞİFRESİZ bir Excel dosyasına yazar.
/// Her kategori ayrı bir sayfa, her kayıt bir satır, her alan bir sütundur.
class ExcelExporter {
  ExcelExporter(this._auth, this._crypto);

  final AuthService _auth;
  final CryptoService _crypto;

  String suggestedFileName() {
    final n = DateTime.now();
    String two(int v) => v.toString().padLeft(2, '0');
    return 'muhur-excel-${n.year}${two(n.month)}${two(n.day)}-'
        '${two(n.hour)}${two(n.minute)}.xlsx';
  }

  Future<Uint8List> build(AppLocalizations t, {bool rtl = false}) async {
    final db = _auth.database.db;
    final dek = _auth.dek;
    final cats = (await db.query('categories', orderBy: 'id'))
        .map(Category.fromRow)
        .toList();
    final sheets = <XlsxSheet>[];

    for (final cat in cats) {
      final entries = await db.query(
        'vault_entries',
        where: 'category_id = ? AND deleted_at IS NULL',
        whereArgs: [cat.id],
        orderBy: 'title COLLATE NOCASE',
      );
      if (entries.isEmpty) continue;

      final specs = FieldCatalog.forCategory(cat.nameKey);
      final cols = <String>[]; // ilk görülme sırası
      final heads = <String, String>{};
      final rows = <({Map<String, Object?> e, Map<String, String> cells})>[];

      for (final e in entries) {
        final id = e['id'] as int;
        final fields = await db.query(
          'entry_fields',
          where: 'entry_id = ?',
          whereArgs: [id],
          orderBy: 'id',
        );
        final cells = <String, String>{};
        for (final f in fields) {
          final label = f['field_label'] as String;
          final key = f['field_key'] as String?;
          final value = await _crypto.decryptField(
            f['field_value'] as String,
            dek,
            entryId: id,
            label: label,
          );
          if (value.isEmpty) continue;
          final col = key != null ? 'k:$key' : 'l:${label.trim().toLowerCase()}';
          if (!heads.containsKey(col)) {
            heads[col] = _fieldHeader(t, specs, key, label);
            cols.add(col);
          }
          final prev = cells[col];
          cells[col] = prev == null ? value : '$prev\n$value';
        }
        rows.add((e: e, cells: cells));
      }

      // Katalogdaki alanlar katalog sırasıyla, özel alanlar sonda.
      int rank(String c) {
        if (c.startsWith('k:')) {
          final i = specs.indexWhere((s) => s.key == c.substring(2));
          if (i >= 0) return i;
        }
        return 1000 + cols.indexOf(c);
      }

      final ordered = [...cols]..sort((a, b) => rank(a).compareTo(rank(b)));
      String text(Map<String, Object?> e, String k) =>
          ((e[k] as String?) ?? '').trim();
      final hasDomain = rows.any((r) => text(r.e, 'domain').isNotEmpty);
      final hasTags = rows.any((r) => text(r.e, 'tags').isNotEmpty);

      sheets.add(
        XlsxSheet(
          cat.label(t),
          [
            _titleHeader(t, cat.nameKey),
            if (hasDomain) t.excelColDomain,
            for (final c in ordered) heads[c]!,
            if (hasTags) t.tags,
            t.excelColUpdated,
          ],
          [
            for (final r in rows)
              [
                text(r.e, 'title'),
                if (hasDomain) text(r.e, 'domain'),
                for (final c in ordered) r.cells[c] ?? '',
                if (hasTags) text(r.e, 'tags'),
                _date(r.e['updated_at'] as String?),
              ],
          ],
          widths: [
            28,
            if (hasDomain) 24,
            for (final _ in ordered) 22,
            if (hasTags) 16,
            18,
          ],
        ),
      );
    }

    if (sheets.isEmpty) {
      sheets.add(XlsxSheet(t.brandName, [t.title], const []));
    }
    return XlsxWriter.build(sheets, rtl: rtl);
  }

  static String _titleHeader(AppLocalizations t, String cat) => switch (cat) {
    'banks' => t.fcBankName,
    'emails' => t.fcAccountTitle,
    'social' => t.fcPlatformTitle,
    'business' => t.fcServiceName,
    'websites' => t.fcSiteName,
    _ => t.title,
  };

  /// Katalogdaki alanın o anki dildeki adı; özel alanlarda kayıtlı ad.
  static String _fieldHeader(
    AppLocalizations t,
    List<FieldSpec> specs,
    String? key,
    String label,
  ) {
    if (key != null) {
      for (final s in [...specs, ...FieldCatalog.other]) {
        if (s.key == key) return s.labelOf(t);
      }
    }
    return label;
  }

  static String _date(String? raw) {
    final d = DateTime.tryParse(raw ?? '')?.toLocal();
    if (d == null) return raw ?? '';
    String two(int v) => v.toString().padLeft(2, '0');
    return '${d.year}-${two(d.month)}-${two(d.day)} '
        '${two(d.hour)}:${two(d.minute)}';
  }
}

/// Şifresiz dışa aktarma uyarısı + sorumluluk onayı + ana parola doğrulaması.
/// Onaylanıp parola doğruysa true döner.
Future<bool> confirmPlainExport(BuildContext context, AuthService auth) async {
  final ok = await showDialog<bool>(
    context: context,
    animationStyle: Motion.style,
    barrierDismissible: false,
    builder: (_) => _PlainExportDialog(auth: auth),
  );
  return ok == true;
}

class _PlainExportDialog extends StatefulWidget {
  const _PlainExportDialog({required this.auth});
  final AuthService auth;

  @override
  State<_PlainExportDialog> createState() => _PlainExportDialogState();
}

class _PlainExportDialogState extends State<_PlainExportDialog> {
  final _pw = TextEditingController();
  bool _agree = false;
  bool _show = false;
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _pw.dispose();
    super.dispose();
  }

  bool get _ready => _agree && _pw.text.isNotEmpty && !_busy;

  Future<void> _submit() async {
    if (!_ready) return;
    final t = AppLocalizations.of(context)!;
    setState(() {
      _busy = true;
      _error = null;
    });
    String? error;
    try {
      await widget.auth.verifyPassword(_pw.text);
    } on WrongPasswordException {
      error = t.wrongPassword;
    } on LockedOutException catch (e) {
      error = t.lockedOut(e.remaining.inSeconds);
    } catch (_) {
      error = t.excelExportFailed;
    }
    if (!mounted) return;
    if (error == null) {
      Navigator.pop(context, true);
      return;
    }
    setState(() {
      _busy = false;
      _error = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ScrollDialog(
      title: Text(t.excelExportWarnTitle),
      actions: [
        RoundIconButton(
          icon: Icons.close,
          tooltip: t.cancel,
          onPressed: _busy ? null : () => Navigator.pop(context, false),
        ),
        RoundIconButton(
          icon: Icons.table_view_outlined,
          tooltip: t.excelExport,
          primary: true,
          busy: _busy,
          onPressed: _ready ? _submit : null,
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.warning_amber_rounded, color: Colors.amber),
              const SizedBox(width: 10),
              Expanded(child: Text(t.excelExportWarn)),
            ],
          ),
          const SizedBox(height: 8),
          CheckboxListTile(
            value: _agree,
            onChanged: _busy
                ? null
                : (v) => setState(() => _agree = v ?? false),
            title: Text(t.excelExportAgree, style: const TextStyle(fontSize: 14)),
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
            dense: true,
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _pw,
            obscureText: !_show,
            enabled: !_busy,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (_) => setState(() => _error = null),
            onSubmitted: (_) => _submit(),
            decoration: InputDecoration(
              labelText: t.masterPassword,
              isDense: true,
              contentPadding: kDenseFieldPadding,
              suffixIcon: PasswordToggleButton(
                shown: _show,
                onPressed: () => setState(() => _show = !_show),
              ),
            ),
          ),
          if (_error != null)
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                _error!,
                style: const TextStyle(color: Colors.redAccent),
              ),
            ),
        ],
      ),
    );
  }
}
