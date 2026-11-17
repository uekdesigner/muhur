import 'package:sqflite_sqlcipher/sqflite.dart';

import '../../core/crypto/crypto_service.dart';
import '../auth/auth_service.dart';
import 'vault_models.dart';
import '../../core/entitlements/entitlements.dart';

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

  /// Kategorideki aktif (çöpte olmayan) kayıt sayısı.
  Future<int> activeCount(int categoryId) async {
    final r = await _db.rawQuery(
      'SELECT COUNT(*) AS c FROM vault_entries '
      'WHERE category_id = ? AND deleted_at IS NULL',
      [categoryId],
    );
    return (r.first['c'] as int?) ?? 0;
  }

  Future<bool> canAddTo(int categoryId) async =>
      Entitlements.instance.canAdd(await activeCount(categoryId));

  /// Yeni kayıt ekler ya da (entry.id doluysa) günceller. Kaydın id'sini döndürür.
  Future<int> save(VaultEntry e, List<FieldData> fields) async {
    // Ücretsiz sınır: yeni kayıt ya da başka kategoriye taşıma.
    if (e.id == null) {
      if (!await canAddTo(e.categoryId)) throw const LimitReachedException();
    } else {
      final cur = await _db.query(
        'vault_entries',
        columns: ['category_id'],
        where: 'id = ?',
        whereArgs: [e.id],
      );
      if (cur.isNotEmpty &&
          cur.first['category_id'] != e.categoryId &&
          !await canAddTo(e.categoryId)) {
        throw const LimitReachedException();
      }
    }
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

  /// Alan başına saklanan en fazla eski parola sayısı.
  static const historyLimit = 10;

  /// Parola alanının değeri değiştiyse eski değeri geçmişe yazar (alanlar
  /// silinmeden önce, aynı işlemde). Kaldırılan alanlar kaydedilmez.
  Future<void> _recordHistory(
    Transaction txn,
    int id,
    List<FieldData> fields,
    String now,
  ) async {
    final dek = _auth.dek;
    final old = await txn.query(
      'entry_fields',
      columns: ['field_label', 'field_key', 'field_value'],
      where: "entry_id = ? AND field_type = 'password'",
      whereArgs: [id],
    );
    for (final r in old) {
      final label = r['field_label'] as String;
      final key = r['field_key'] as String?;
      final match = fields.where(
        (f) =>
            f.type == 'password' &&
            (key != null ? f.key == key : f.key == null && f.label == label),
      );
      if (match.isEmpty) continue;
      final next = match.first.value;
      final prev = await _crypto.decryptField(
        r['field_value'] as String,
        dek,
        entryId: id,
        label: label,
      );
      if (prev.isEmpty || next.isEmpty || next == prev) continue;
      await txn.insert('password_history', {
        'entry_id': id,
        'field_label': label,
        'field_key': key,
        'value': await _crypto.encryptField(
          prev,
          dek,
          entryId: id,
          label: 'hist:$label',
        ),
        'changed_at': now,
      });
      final (w, a) = _histWhere(id, key, label);
      await txn.delete(
        'password_history',
        where:
            '$w AND id NOT IN (SELECT id FROM password_history WHERE $w '
            'ORDER BY id DESC LIMIT $historyLimit)',
        whereArgs: [...a, ...a],
      );
    }
  }

  static (String, List<Object?>) _histWhere(
    int id,
    String? key,
    String label,
  ) => key != null
      ? ('entry_id = ? AND field_key = ?', [id, key])
      : ('entry_id = ? AND field_key IS NULL AND field_label = ?', [id, label]);

  /// Bir parola alanının eski değerleri, en yeni önce (çözülmüş).
  Future<List<PasswordHistoryItem>> passwordHistory(
    int entryId, {
    String? key,
    required String label,
  }) async {
    final (w, a) = _histWhere(entryId, key, label);
    final rows = await _db.query(
      'password_history',
      where: w,
      whereArgs: a,
      orderBy: 'id DESC',
    );
    final dek = _auth.dek;
    final out = <PasswordHistoryItem>[];
    for (final r in rows) {
      out.add(
        PasswordHistoryItem(
          r['id'] as int,
          await _crypto.decryptField(
            r['value'] as String,
            dek,
            entryId: entryId,
            label: 'hist:${r['field_label']}',
          ),
          DateTime.tryParse(r['changed_at'] as String)?.toLocal() ??
              DateTime.now(),
        ),
      );
    }
    return out;
  }

  Future<void> clearPasswordHistory(
    int entryId, {
    String? key,
    required String label,
  }) async {
    final (w, a) = _histWhere(entryId, key, label);
    await _db.delete('password_history', where: w, whereArgs: a);
  }

  /// Kaydı çöp kutusuna taşır (kalıcı silmez).
  Future<void> moveToTrash(int id) async {
    await _db.update(
      'vault_entries',
      {'deleted_at': DateTime.now().toUtc().toIso8601String()},
      where: 'id = ? AND deleted_at IS NULL',
      whereArgs: [id],
    );
  }

  Future<int> trashCount() async {
    final r = await _db.rawQuery(
      'SELECT COUNT(*) AS c FROM vault_entries WHERE deleted_at IS NOT NULL',
    );
    return (r.first['c'] as int?) ?? 0;
  }

  Future<List<VaultEntry>> trashed() async {
    final rows = await _db.query(
      'vault_entries',
      where: 'deleted_at IS NOT NULL',
      orderBy: 'deleted_at DESC',
    );
    return rows.map(VaultEntry.fromRow).toList();
  }

  Future<void> restore(int id) async {
    final rows = await _db.query(
      'vault_entries',
      columns: ['category_id'],
      where: 'id = ?',
      whereArgs: [id],
    );
    if (rows.isEmpty) return;
    if (!await canAddTo(rows.first['category_id'] as int)) {
      throw const LimitReachedException();
    }
    await _db.update(
      'vault_entries',
      {'deleted_at': null},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> deleteForever(int id) async {
    await _purge('id = ? AND deleted_at IS NOT NULL', [id]);
  }

  /// Çöp kutusundaki her şeyi kalıcı siler.
  Future<int> emptyTrash() => _purge('deleted_at IS NOT NULL', const []);

  /// [days] günden eski çöp kayıtlarını kalıcı siler.
  Future<int> purgeExpired(int days) {
    final cutoff = DateTime.now()
        .toUtc()
        .subtract(Duration(days: days))
        .toIso8601String();
    return _purge('deleted_at IS NOT NULL AND deleted_at < ?', [cutoff]);
  }

  Future<int> _purge(String where, List<Object?> args) {
    return _db.transaction((txn) async {
      await txn.delete(
        'entry_fields',
        where: 'entry_id IN (SELECT id FROM vault_entries WHERE $where)',
        whereArgs: args,
      );
      return txn.delete('vault_entries', where: where, whereArgs: args);
    });
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
    final reusedIds = {
      for (final e in hashes.entries)
        if (counts[e.value]! > 1) e.key,
    };
    final duplicates = reusedIds.length;

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
      reusedIds: reusedIds,
    );
  }
}

class PasswordHistoryItem {
  const PasswordHistoryItem(this.id, this.value, this.changedAt);
  final int id;
  final String value;
  final DateTime changedAt;
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
    required this.reusedIds,
  });

  final int total;
  final int weak;
  final int fair;
  final int strong;
  final int duplicates;
  final int score; // 0-100
  final Map<int, Strength> levels; // kayıt id -> parola gücü
  final Set<int> reusedIds;
}
