import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class Category {
  const Category(this.id, this.nameKey, this.iconName);
  final int id;
  final String nameKey;
  final String iconName;

  factory Category.fromRow(Map<String, Object?> r) => Category(
    r['id'] as int,
    r['name_key'] as String,
    r['icon_name'] as String,
  );

  IconData get icon => switch (iconName) {
    'account_balance' => Icons.account_balance,
    'language' => Icons.language,
    'mail' => Icons.mail,
    'groups' => Icons.groups,
    'business_center' => Icons.business_center,
    _ => Icons.folder,
  };

  String label(AppLocalizations t) => switch (nameKey) {
    'banks' => t.catBanks,
    'websites' => t.catWebsites,
    'emails' => t.catEmails,
    'social' => t.catSocial,
    'business' => t.catBusiness,
    _ => t.catOther,
  };
}

class VaultEntry {
  const VaultEntry({
    this.id,
    required this.categoryId,
    required this.title,
    this.domain,
    this.tags,
    this.isFavorite = false,
  });

  final int? id;
  final int categoryId;
  final String title;
  final String? domain;
  final String? tags;
  final bool isFavorite;

  factory VaultEntry.fromRow(Map<String, Object?> r) => VaultEntry(
    id: r['id'] as int,
    categoryId: r['category_id'] as int,
    title: r['title'] as String,
    domain: r['domain'] as String?,
    tags: r['tags'] as String?,
    isFavorite: (r['is_favorite'] as int) == 1,
  );
}

class FieldData {
  FieldData({
    this.key,
    required this.label,
    required this.value,
    this.type = 'text',
    this.sensitive = false,
  });

  /// Dilden bağımsız alan anahtarı (özel / eski alanlarda null).
  String? key;
  String label;
  String value;
  String type; // text, password, url, notes
  bool sensitive;
}
