import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/storage/app_settings.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../l10n/app_localizations.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import '../../core/widgets/panel_style.dart';

/// Silinen kayıtlar: geri yükle veya kalıcı sil.
class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key, required this.repo});
  final VaultRepository repo;

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  List<VaultEntry>? _items;
  List<Category> _cats = const [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final cats = await widget.repo.categories();
    final items = await widget.repo.trashed();
    if (mounted) {
      setState(() {
        _cats = cats;
        _items = items;
      });
    }
  }

  int _daysLeft(VaultEntry e) {
    final at = e.deletedAt;
    if (at == null) return 0;
    final used = DateTime.now().toUtc().difference(at.toUtc()).inDays;
    return (AppSettings.instance.trashDays - used)
        .clamp(0, AppSettings.maxTrashDays)
        .toInt();
  }

  Future<void> _restore(VaultEntry e) async {
    await widget.repo.restore(e.id!);
    await _load();
  }

  Future<void> _deleteForever(VaultEntry e) async {
    final t = AppLocalizations.of(context)!;
    final yes = await showDialog<bool>(
      context: context,
      animationStyle: Motion.style,
      builder: (c) => AlertDialog(
        content: Text(t.deleteForeverConfirm),
        actions: [
          IconButton(
            tooltip: t.cancel,
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.pop(c, false),
          ),
          IconButton.filled(
            tooltip: t.delete,
            icon: const Icon(Icons.delete_forever_outlined),
            onPressed: () => Navigator.pop(c, true),
          ),
        ],
      ),
    );
    if (yes != true) return;
    await widget.repo.deleteForever(e.id!);
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final items = _items;
    return MuhurBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(t.trash),
          backgroundColor: Colors.transparent,
        ),
        body: items == null
            ? const Center(child: CircularProgressIndicator())
            : items.isEmpty
            ? Center(
                child: Text(
                  t.trashEmpty,
                  style: TextStyle(
                    color: MuhurColors.cream.withValues(alpha: 0.7),
                  ),
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.only(top: 8, bottom: 24),
                itemCount: items.length,
                itemBuilder: (context, i) {
                  final e = items[i];
                  final cat = _cats
                      .where((c) => c.id == e.categoryId)
                      .firstOrNull;
                  return Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: panelColor(context, const Color(0xCC14181C)),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: MuhurColors.bronze.withValues(alpha: 0.6),
                      ),
                    ),
                    child: Material(
                      type: MaterialType.transparency,
                      child: ListTile(
                        dense: true,
                        leading: Icon(
                          cat?.icon ?? Icons.folder,
                          color: MuhurColors.bronzeLight,
                        ),
                        title: Text(e.title),
                        subtitle: Text(t.trashDaysLeft(_daysLeft(e))),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.restore_from_trash),
                              color: MuhurColors.bronzeLight,
                              visualDensity: VisualDensity.compact,
                              tooltip: t.restore,
                              onPressed: () => _restore(e),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_forever),
                              color: Colors.redAccent,
                              visualDensity: VisualDensity.compact,
                              tooltip: t.deleteForever,
                              onPressed: () => _deleteForever(e),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
