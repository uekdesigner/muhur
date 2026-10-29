import 'package:path/path.dart' as p;
import 'package:sqflite_sqlcipher/sqflite.dart';

import 'db_schema.dart';

class DatabaseManager {
  Database? _db;

  bool get isOpen => _db != null;

  Database get db {
    final d = _db;
    if (d == null) throw StateError('Veritabanı kilitli (açık değil).');
    return d;
  }

  /// [dbKey] ile SQLCipher veritabanını açar. Anahtar yanlışsa hata fırlatır.
  Future<void> open(String dbKey) async {
    if (_db != null) return;
    final dir = await getDatabasesPath();
    _db = await openDatabase(
      p.join(dir, DbSchema.fileName),
      password: dbKey,
      version: DbSchema.version,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> close() async {
    await _db?.close();
    _db = null;
  }

  /// İlk kurulumda eski/test veritabanı dosyasını siler.
  Future<void> deleteFile() async {
    await close();
    final dir = await getDatabasesPath();
    await deleteDatabase(p.join(dir, DbSchema.fileName));
  }

  Future<void> _onCreate(Database db, int version) async {
    final batch = db.batch();
    batch.execute(DbSchema.categories);
    batch.execute(DbSchema.vaultEntries);
    batch.execute(DbSchema.entryFields);
    for (final sql in DbSchema.indexes) {
      batch.execute(sql);
    }
    for (final c in DbSchema.seedCategories) {
      batch.insert('categories', c);
    }
    await batch.commit(noResult: true);
  }

  Future<void> _onUpgrade(Database db, int oldV, int newV) async {
    // v2: dilden bağımsız alan anahtarı (field_key).
    if (oldV < 2) {
      await db.execute('ALTER TABLE entry_fields ADD COLUMN field_key TEXT');
    }
  }
}
