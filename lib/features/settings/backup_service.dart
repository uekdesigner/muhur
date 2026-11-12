import 'dart:convert';
import 'dart:typed_data';

import 'package:sqflite_sqlcipher/sqflite.dart';

import '../../core/crypto/crypto_service.dart';
import '../auth/auth_service.dart';

class BackupResult {
  const BackupResult(this.added, this.skipped);
  final int added;
  final int skipped;
}

class BackupService {
  BackupService(this._auth, this._crypto);

  final AuthService _auth;
  final CryptoService _crypto;

  Database get _db => _auth.database.db;

  static const fileExtension = 'muhur';

  String suggestedFileName() {
    final n = DateTime.now();
    String two(int v) => v.toString().padLeft(2, '0');
    return 'muhur-yedek-${n.year}${two(n.month)}${two(n.day)}-'
        '${two(n.hour)}${two(n.minute)}.$fileExtension';
  }

  /// Tüm kasayı (çöp kutusu dahil) çözer ve [password] ile şifrelenmiş dosya baytlarını üretir.
  Future<Uint8List> export(String password) async {
    final dek = _auth.dek;
    final cats = await _db.query('categories');
    final catKey = {
      for (final c in cats) c['id'] as int: c['name_key'] as String,
    };
    final entries = await _db.query('vault_entries', orderBy: 'id');
    final out = <Map<String, Object?>>[];

    for (final e in entries) {
      final id = e['id'] as int;
      final rows = await _db.query(
        'entry_fields',
        where: 'entry_id = ?',
        whereArgs: [id],
        orderBy: 'id',
      );
      final fields = <Map<String, Object?>>[];
      for (final r in rows) {
        final label = r['field_label'] as String;
        fields.add({
          'label': label,
          'key': r['field_key'],
          'value': await _crypto.decryptField(
            r['field_value'] as String,
            dek,
            entryId: id,
            label: label,
          ),
          'type': r['field_type'],
          'sensitive': (r['is_sensitive'] as int) == 1,
        });
      }
      out.add({
        'category': catKey[e['category_id'] as int] ?? 'other',
        'title': e['title'],
        'domain': e['domain'],
        'tags': e['tags'],
        'favorite': (e['is_favorite'] as int) == 1,
        'created_at': e['created_at'],
        'updated_at': e['updated_at'],
        'deleted_at': e['deleted_at'],
        'fields': fields,
      });
    }
    final payload = jsonEncode({
      'exported_at': DateTime.now().toUtc().toIso8601String(),
      'entries': out,
    });
    final env = await _crypto.sealBackup(utf8.encode(payload), password);
    return Uint8List.fromList(utf8.encode(jsonEncode(env)));
  }

  /// Yedeği açar ve kayıtları kasaya ekler. Var olan kayıtlara dokunmaz.
  /// Parola yanlışsa [BackupPasswordException], dosya geçersizse başka bir hata fırlatır.
  Future<BackupResult> restore(Uint8List bytes, String password) async {
    final env = jsonDecode(utf8.decode(bytes)) as Map<String, dynamic>;
    final plain = await _crypto.openBackup(env, password);
    final payload = jsonDecode(utf8.decode(plain)) as Map<String, dynamic>;
    final items = (payload['entries'] as List).cast<Map<String, dynamic>>();

    final dek = _auth.dek;
    final cats = await _db.query('categories');
    final catId = {
      for (final c in cats) c['name_key'] as String: c['id'] as int,
    };
    final fallbackCat = catId['other'] ?? cats.first['id'] as int;

    final existing = <String>{};
    final trashed = <String, int>{}; // çöpteki kayıtlar: anahtar -> id
    final rows = await _db.query(
      'vault_entries',
      columns: [
        'id',
        'category_id',
        'title',
        'domain',
        'created_at',
        'deleted_at',
      ],
    );
    for (final r in rows) {
      final k = _key(
        r['category_id'] as int,
        r['title'] as String,
        r['domain'] as String?,
        r['created_at'] as String,
      );
      existing.add(k);
      if (r['deleted_at'] != null) trashed[k] = r['id'] as int;
    }

    var added = 0;
    var skipped = 0;
    await _db.transaction((txn) async {
      for (final e in items) {
        final cat = catId[e['category'] as String?] ?? fallbackCat;
        final title = e['title'] as String;
        final domain = e['domain'] as String?;
        final created = e['created_at'] as String;
        final k = _key(cat, title, domain, created);
        if (!existing.add(k)) {
          final trashedId = trashed.remove(k);
          if (trashedId != null && e['deleted_at'] == null) {
            await txn.update(
              'vault_entries',
              {'deleted_at': null},
              where: 'id = ?',
              whereArgs: [trashedId],
            );
            added++;
          } else {
            skipped++;
          }
          continue;
        }
        final id = await txn.insert('vault_entries', {
          'category_id': cat,
          'title': title,
          'domain': domain,
          'tags': e['tags'],
          'is_favorite': (e['favorite'] as bool? ?? false) ? 1 : 0,
          'created_at': created,
          'updated_at': e['updated_at'] ?? created,
          'deleted_at': e['deleted_at'],
        });
        final fields = (e['fields'] as List).cast<Map<String, dynamic>>();
        for (final f in fields) {
          final label = f['label'] as String;
          final enc = await _crypto.encryptField(
            f['value'] as String,
            dek,
            entryId: id,
            label: label,
          );
          await txn.insert('entry_fields', {
            'entry_id': id,
            'field_label': label,
            'field_key': f['key'],
            'field_value': enc,
            'field_type': f['type'] ?? 'text',
            'is_sensitive': (f['sensitive'] as bool? ?? false) ? 1 : 0,
          });
        }
        added++;
      }
    });
    return BackupResult(added, skipped);
  }

  String _key(int cat, String title, String? domain, String created) =>
      '$cat|$title|${domain ?? ''}|$created';
}
