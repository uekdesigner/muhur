class DbSchema {
  static const int version = 2;
  static const String fileName = 'muhur.db';

  static const String categories = '''
    CREATE TABLE categories (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name_key TEXT NOT NULL UNIQUE,
      icon_name TEXT NOT NULL
    )''';

  static const String vaultEntries = '''
    CREATE TABLE vault_entries (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      category_id INTEGER NOT NULL,
      title TEXT NOT NULL,
      domain TEXT,
      tags TEXT,
      is_favorite INTEGER NOT NULL DEFAULT 0,
      created_at TEXT NOT NULL,
      updated_at TEXT NOT NULL,
      deleted_at TEXT,
      FOREIGN KEY (category_id) REFERENCES categories(id)
    )''';

  static const String entryFields = '''
    CREATE TABLE entry_fields (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      entry_id INTEGER NOT NULL,
      field_label TEXT NOT NULL,
      field_key TEXT,
      field_value TEXT NOT NULL,
      field_type TEXT NOT NULL DEFAULT 'text',
      is_sensitive INTEGER NOT NULL DEFAULT 0,
      FOREIGN KEY (entry_id) REFERENCES vault_entries(id) ON DELETE CASCADE
    )''';

  static const List<String> indexes = [
    'CREATE INDEX idx_entries_domain ON vault_entries(domain)',
    'CREATE INDEX idx_entries_category ON vault_entries(category_id)',
    'CREATE INDEX idx_fields_entry ON entry_fields(entry_id)',
  ];

  /// Kategori adları dile göre arayüzde çevrilir; veritabanında anahtar saklanır.
  static const List<Map<String, String>> seedCategories = [
    {'name_key': 'banks', 'icon_name': 'account_balance'},
    {'name_key': 'websites', 'icon_name': 'language'},
    {'name_key': 'emails', 'icon_name': 'mail'},
    {'name_key': 'social', 'icon_name': 'groups'},
    {'name_key': 'business', 'icon_name': 'business_center'},
    {'name_key': 'other', 'icon_name': 'folder'},
  ];
}
