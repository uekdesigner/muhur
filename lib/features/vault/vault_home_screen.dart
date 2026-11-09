import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/crypto/crypto_service.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../l10n/app_localizations.dart';
import '../auth/auth_service.dart';
import '../password_gen/password_generator.dart';
import '../settings/settings_screen.dart';
import 'backup_reminder_banner.dart';
import 'category_globe.dart';
import 'entry_detail_screen.dart';
import 'entry_edit_screen.dart';
import 'stats_panel.dart';
import 'vault_header.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import '../../core/storage/app_settings.dart';
import '../../core/widgets/guide_tip.dart';
import '../../core/widgets/panel_style.dart';

class VaultHomeScreen extends StatefulWidget {
  const VaultHomeScreen({super.key, required this.auth, required this.onLock});
  final AuthService auth;
  final VoidCallback onLock;

  @override
  State<VaultHomeScreen> createState() => _VaultHomeScreenState();
}

class _VaultHomeScreenState extends State<VaultHomeScreen> {
  late final VaultRepository _repo = VaultRepository(
    widget.auth,
    CryptoService(),
  );
  List<Category> _cats = [];
  int? _catId;
  String _query = '';
  late Future<List<VaultEntry>> _entries;
  VaultStats? _stats;
  final Set<int> _selected = {};
  bool _searching = false;

  @override
  void initState() {
    super.initState();
    _entries = _repo.entries();
    _repo.categories().then((c) {
      if (mounted) setState(() => _cats = c);
    });
    _loadStats();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      showGuideTip(
        context,
        'long_press',
        AppLocalizations.of(context)!.tipLongPress,
      );
    });
  }

  /// Süresi dolan çöp kayıtlarını kasa açılırken kalıcı siler.
  Future<void> _purgeTrash() async {
    try {
      await _repo.purgeExpired(AppSettings.instance.trashDays);
    } catch (_) {
      // temizlik başarısız olursa bir sonraki açılışta tekrar denenir
    }
  }

  Future<void> _loadStats() async {
    _purgeTrash();
    try {
      final s = await _repo.stats();
      if (mounted) setState(() => _stats = s);
    } catch (_) {
      // istatistik hesaplanamazsa panel boş kalır
    }
  }

  void _reload() {
    setState(() {
      _selected.clear();
      _entries = _repo.entries(categoryId: _catId, query: _query);
    });
  }

  void _refreshAll() {
    _reload();
    _loadStats();
  }

  void _toggleSearch() {
    final closing = _searching;
    setState(() => _searching = !_searching);
    if (closing && _query.isNotEmpty) {
      _query = '';
      _reload();
    }
  }

  Future<void> _openSettings({int section = 0}) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SettingsScreen(
          auth: widget.auth,
          repo: _repo,
          initialSection: section,
        ),
      ),
    );
    if (mounted) _refreshAll();
  }

  void _openBackupSettings() => _openSettings(section: 2);
  Future<void> _add() async {
    if (_cats.isEmpty) return;
    final ok = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => EntryEditScreen(
          repo: _repo,
          categories: _cats,
          initialCategoryId: _catId,
        ),
      ),
    );
    if (ok == true) _refreshAll();
  }

  Future<void> _open(VaultEntry e) async {
    final changed = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) =>
            EntryDetailScreen(repo: _repo, entry: e, categories: _cats),
      ),
    );
    if (changed == true) _refreshAll();
  }

  void _toggleSelect(VaultEntry e) {
    setState(() {
      if (!_selected.remove(e.id!)) _selected.add(e.id!);
    });
  }

  Future<void> _deleteSelected() async {
    final t = AppLocalizations.of(context)!;
    final count = _selected.length;
    if (count == 0) return;
    final yes = await showDialog<bool>(
      context: context,
      animationStyle: Motion.style,
      builder: (c) => AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        content: Text(t.deleteSelectedConfirm(count)),
        actions: [
          IconButton(
            tooltip: t.cancel,
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(c, false),
          ),
          IconButton.filled(
            tooltip: t.moveToTrash,
            icon: const Icon(Icons.delete_outline),
            onPressed: () => Navigator.pop(c, true),
          ),
        ],
      ),
    );
    if (yes != true) return;
    for (final id in _selected.toList()) {
      await _repo.moveToTrash(id);
    }
    if (mounted) _refreshAll();
  }

  Color? _dotColor(Strength? s) => switch (s) {
    null => null,
    Strength.weak => Colors.redAccent,
    Strength.fair => Colors.orangeAccent,
    Strength.good || Strength.strong => Colors.greenAccent,
  };

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final selecting = _selected.isNotEmpty;

    return PopScope(
      canPop: _selected.isEmpty,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && _selected.isNotEmpty) setState(_selected.clear);
      },
      child: MuhurBackground(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          floatingActionButton: FloatingActionButton(
            onPressed: _add,
            tooltip: t.addEntry,
            backgroundColor: const Color(0xE614181C),
            foregroundColor: MuhurColors.cream,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: MuhurColors.bronze, width: 1.4),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: StatsPanel(stats: _stats),
          body: Column(
            children: [
              VaultHeader(
                selectedCount: _selected.length,
                searchActive: _searching,
                onSearch: _toggleSearch,
                onSettings: _openSettings,
                onDelete: _deleteSelected,
                onLock: () {
                  Navigator.of(context).popUntil((r) => r.isFirst);
                  widget.onLock();
                },
              ),
              BackupReminderBanner(onBackup: _openBackupSettings),
              // Arama (başlıktaki ikonla açılır)
              if (_searching)
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: t.searchHint,
                      prefixIcon: const Icon(Icons.search),
                      isDense: true,
                    ),
                    onChanged: (v) {
                      _query = v;
                      _reload();
                    },
                  ),
                ),
              // Dönen küre
              if (_cats.isNotEmpty)
                CategoryGlobe(
                  height: 72, // <-- EKLE (yoksa varsayılan 96 kalır)
                  items: [
                    GlobeItem(t.all, Icons.apps),
                    for (final c in _cats) GlobeItem(c.label(t), c.icon),
                  ],
                  onSelected: (i) {
                    _catId = i == 0 ? null : _cats[i - 1].id;
                    _reload();
                  },
                )
              else
                const SizedBox(height: 72),
              // Kayıt listesi
              Expanded(
                child: FutureBuilder<List<VaultEntry>>(
                  future: _entries,
                  builder: (context, snap) {
                    if (snap.hasError) {
                      return Center(child: Text('${snap.error}'));
                    }
                    if (!snap.hasData) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    final list = snap.data!;
                    if (list.isEmpty) {
                      return Center(
                        child: Text(
                          t.noEntries,
                          style: TextStyle(color: MuhurColors.cream),
                        ),
                      );
                    }
                    return ListView.builder(
                      padding: const EdgeInsets.only(bottom: 80),
                      itemCount: list.length,
                      itemBuilder: (context, i) {
                        final e = list[i];
                        final cat = _cats
                            .where((c) => c.id == e.categoryId)
                            .firstOrNull;
                        final dot = _dotColor(_stats?.levels[e.id]);
                        final picked = _selected.contains(e.id);
                        return Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: panelColor(
                              context,
                              picked
                                  ? const Color(0xE61E262C)
                                  : const Color(0xCC14181C),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                              color: picked
                                  ? MuhurColors.bronzeLight
                                  : MuhurColors.bronze.withValues(alpha: 0.6),
                              width: picked ? 2 : 1,
                            ),
                          ),
                          child: Material(
                            type: MaterialType.transparency,
                            child: ListTile(
                              dense: true,
                              leading: Icon(
                                selecting
                                    ? (picked
                                          ? Icons.check_circle
                                          : Icons.radio_button_unchecked)
                                    : (cat?.icon ?? Icons.folder),
                                color: MuhurColors.bronzeLight,
                              ),
                              title: Text(e.title),
                              subtitle: e.domain == null
                                  ? null
                                  : Text(e.domain!),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (e.isFavorite)
                                    Icon(
                                      Icons.star,
                                      size: 18,
                                      color: MuhurColors.bronzeLight,
                                    ),
                                  if (dot != null) ...[
                                    const SizedBox(width: 8),
                                    Container(
                                      width: 12,
                                      height: 12,
                                      decoration: BoxDecoration(
                                        color: dot,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                              onTap: selecting
                                  ? () => _toggleSelect(e)
                                  : () => _open(e),
                              onLongPress: () => _toggleSelect(e),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
