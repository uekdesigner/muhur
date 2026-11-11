import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:sqflite_sqlcipher/sqflite.dart' show getDatabasesPath;

/// Gizli olmayan kasa başlığını (tuz + sarılmış DEK) düz dosyada tutar.
/// Keystore'a bağlı değildir: secure storage kaybolsa da ana parola yeter.
class VaultHeaderStore {
  static const _fileName = 'muhur_vault.json';
  Map<String, String>? _cache;

  Future<File> _file() async =>
      File(p.join(await getDatabasesPath(), _fileName));

  /// Diskten yeniden okutmak için (göç doğrulaması).
  void invalidate() => _cache = null;

  Future<Map<String, String>?> _parse(File f) async {
    try {
      if (!await f.exists()) return null;
      final raw = jsonDecode(await f.readAsString()) as Map<String, dynamic>;
      return {
        for (final e in raw.entries)
          if (e.key != 'v' && e.value is String) e.key: e.value as String,
      };
    } catch (_) {
      return null;
    }
  }

  Future<Map<String, String>> _load() async {
    final cached = _cache;
    if (cached != null) return cached;
    final f = await _file();
    final data =
        await _parse(f) ??
        await _parse(File('${f.path}.bak')) ??
        <String, String>{};
    return _cache = data;
  }

  Future<void> _save(Map<String, String> data) async {
    final f = await _file();
    final tmp = File('${f.path}.tmp');
    await tmp.writeAsString(jsonEncode({'v': '1', ...data}), flush: true);
    if (await f.exists()) await f.copy('${f.path}.bak');
    await tmp.rename(f.path); // aynı dizinde: atomik
    _cache = data;
  }

  Future<String?> read(String key) async => (await _load())[key];

  Future<bool> containsKey(String key) async =>
      (await _load()).containsKey(key);

  /// Birden çok anahtarı tek atomik yazımda değiştirir (null = sil).
  Future<void> replace(Map<String, String?> changes) async {
    final data = Map<String, String>.from(await _load());
    changes.forEach((k, v) {
      if (v == null) {
        data.remove(k);
      } else {
        data[k] = v;
      }
    });
    await _save(data);
  }
}
