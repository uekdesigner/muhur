import 'package:sqflite_sqlcipher/sqflite.dart';

import '../../core/crypto/crypto_service.dart';
import '../auth/auth_service.dart';
import 'vault_models.dart';

import 'dart:convert';

import 'package:cryptography/cryptography.dart' show Sha256;

import '../password_gen/password_generator.dart';

/// "https://www.Example.com/login" -> "example.com" (Gün 5 autofill eşleştirmesi için de kullanılacak)
String? normalizeDomain(String? input) {
  var d = (input ?? '').trim().toLowerCase();
  if (d.isEmpty) return null;
  d = d.replaceFirst(RegExp(r'^[a-z]+://'), '');
  d = d.split('/').first.split('?').first;
  if (d.startsWith('www.')) d = d.substring(4);
  return d.isEmpty ? null : d;
}

String? _nullIfEmpty(String? s) {
  final t = s?.trim() ?? '';
  return t.isEmpty ? null : t;
}

class VaultRepository {
  VaultRepository(this._auth, this._crypto);

  final AuthService _auth;
  final CryptoService _crypto;

  Database get _db => _auth.database.db;

  Future<List<Category>> categories() async {
    final rows = await _db.query('categories', orderBy: 'id');
    return rows.map(Category.fromRow).toList();
  }

  Future<List<VaultEntry>> entries({int? categoryId, String query = ''}) async {
    final where = <String>['deleted_at IS NULL'];
    final args = <Object?>[];
    if (categoryId != null) {
      where.add('category_id = ?');
      args.add(categoryId);
    }
    final q = query.trim();
    if (q.isNotEmpty) {
      where.add('(title LIKE ? OR domain LIKE ? OR tags LIKE ?)');
      final like = '%$q%';
      args.addAll([like, like, like]);
    }
    final rows = await _db.query(
      'vault_entries',
      where: where.join(' AND '),
      whereArgs: args,
      orderBy: 'is_favorite DESC, title COLLATE NOCASE',
    );
    return rows.map(VaultEntry.fromRow).toList();
  }

  /// Alanları okur ve şifresini çözer.
  Future<List<FieldData>> fields(int entryId) async {
    final rows = await _db.query(
      'entry_fields',
      where: 'entry_id = ?',
      whereArgs: [entryId],
      orderBy: 'id',
    );
    final dek = _auth.dek;
    final out = <FieldData>[];
    for (final r in rows) {
      final label = r['field_label'] as String;
      final plain = await _crypto.decryptField(
        r['field_value'] as String,
        dek,
        entryId: entryId,
        label: label,
      );
      out.add(
        FieldData(
          key: r['field_key'] as String?,
          label: label,
          value: plain,
          type: r['field_type'] as String,
          sensitive: (r['is_sensitive'] as int) == 1,
        ),
      );
    }
    return out;
  }

  /// Yeni kayıt ekler ya da (entry.id doluysa) günceller. Kaydın id'sini döndürür.
  Future<int> save(VaultEntry e, List<FieldData> fields) async {
    final now = DateTime.now().toUtc().toIso8601String();
    final dek = _auth.dek;

    return _db.transaction((txn) async {
      final values = <String, Object?>{
        'category_id': e.categoryId,
        'title': e.title,
        'domain': normalizeDomain(e.domain),
        'tags': _nullIfEmpty(e.tags),
        'is_favorite': e.isFavorite ? 1 : 0,
        'updated_at': now,
      };

      int id;
      if (e.id == null) {
        id = await txn.insert('vault_entries', {...values, 'created_at': now});
      } else {
        id = e.id!;
        await txn.update(
          'vault_entries',
          values,
          where: 'id = ?',
          whereArgs: [id],
        );
        await txn.delete(
          'entry_fields',
          where: 'entry_id = ?',
          whereArgs: [id],
        );
      }

      // AAD kayıt id'sini içerdiği için alanlar kayıt oluştuktan sonra şifrelenir.
      for (final f in fields) {
        if (f.label.trim().isEmpty && f.value.isEmpty) continue;
        final enc = await _crypto.encryptField(
          f.value,
          dek,
          entryId: id,
          label: f.label,
        );
        await txn.insert('entry_fields', {
          'entry_id': id,
          'field_label': f.label,
          'field_key': f.key,
          'field_value': enc,
          'field_type': f.type,
          'is_sensitive': f.sensitive ? 1 : 0,
        });
      }
      return id;
    });
  }

  /// Kaydı ve (ON DELETE CASCADE ile) alanlarını siler.
  Future<void> delete(int id) async {
    await _db.delete('vault_entries', where: 'id = ?', whereArgs: [id]);
  }

  /// Parola sağlığı istatistikleri (yalnızca bellekte hesaplanır, kaydedilmez).
  Future<VaultStats> stats() async {
    final rows = await _db.rawQuery('''
      SELECT f.entry_id AS entry_id, f.field_label AS label, f.field_value AS value
      FROM entry_fields f
      JOIN vault_entries e ON e.id = f.entry_id
      WHERE f.field_type = 'password' AND e.deleted_at IS NULL
      ORDER BY f.entry_id, f.id
    ''');
    final dek = _auth.dek;
    final seen = <int>{};
    final levels = <int, Strength>{};
    final hashes = <int, String>{};

    for (final r in rows) {
      final id = r['entry_id'] as int;
      if (!seen.add(id)) continue; // her kayıttan ilk parola alanı
      final plain = await _crypto.decryptField(
        r['value'] as String,
        dek,
        entryId: id,
        label: r['label'] as String,
      );
      if (plain.isEmpty) continue;
      levels[id] = estimateStrength(plain).level;
      hashes[id] = base64Encode(
        (await Sha256().hash(utf8.encode(plain))).bytes,
      );
    }

    final counts = <String, int>{};
    for (final h in hashes.values) {
      counts[h] = (counts[h] ?? 0) + 1;
    }
    final duplicates = hashes.values.where((h) => counts[h]! > 1).length;

    var weak = 0, fair = 0, strong = 0;
    for (final l in levels.values) {
      switch (l) {
        case Strength.weak:
          weak++;
        case Strength.fair:
          fair++;
        case Strength.good:
        case Strength.strong:
          strong++;
      }
    }
    final total = levels.length;
    final score = total == 0
        ? 0
        : ((strong * 100 + fair * 55 + weak * 10) / total).round();

    return VaultStats(
      total: total,
      weak: weak,
      fair: fair,
      strong: strong,
      duplicates: duplicates,
      score: score,
      levels: levels,
    );
  }
}

class VaultStats {
  const VaultStats({
    required this.total,
    required this.weak,
    required this.fair,
    required this.strong,
    required this.duplicates,
    required this.score,
    required this.levels,
  });

  final int total;
  final int weak;
  final int fair;
  final int strong;
  final int duplicates;
  final int score; // 0-100
  final Map<int, Strength> levels; // kayıt id -> parola gücü
}
