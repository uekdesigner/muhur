import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'entry_edit_screen.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import '../../core/utils/clipboard_service.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../core/constants/app_theme.dart';
import '../../core/widgets/panel_style.dart';

class EntryDetailScreen extends StatefulWidget {
  const EntryDetailScreen({
    super.key,
    required this.repo,
    required this.entry,
    required this.categories,
  });
  final VaultRepository repo;
  final VaultEntry entry;
  final List<Category> categories;

  @override
  State<EntryDetailScreen> createState() => _EntryDetailScreenState();
}

class _EntryDetailScreenState extends State<EntryDetailScreen> {
  late final Future<List<FieldData>> _fields = widget.repo.fields(
    widget.entry.id!,
  );
  final Set<int> _revealed = {};

  Future<void> _edit() async {
    final fields = await _fields;
    if (!mounted) return;
    final ok = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => EntryEditScreen(
          repo: widget.repo,
          categories: widget.categories,
          entry: widget.entry,
          initialFields: fields,
        ),
      ),
    );
    if (ok == true && mounted) Navigator.pop(context, true);
  }

  Future<void> _delete() async {
    final t = AppLocalizations.of(context)!;
    final yes = await showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        content: Text(t.deleteConfirm),
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
    await widget.repo.moveToTrash(widget.entry.id!);
    if (mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final e = widget.entry;
    return MuhurBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(e.title),
          actions: [
            IconButton(icon: const Icon(Icons.edit), onPressed: _edit),
            IconButton(icon: const Icon(Icons.delete), onPressed: _delete),
          ],
        ),
        body: FutureBuilder<List<FieldData>>(
          future: _fields,
          builder: (context, snap) {
            if (snap.hasError) return Center(child: Text('${snap.error}'));
            if (!snap.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final fields = snap.data!
                .where((f) => f.value.trim().isNotEmpty)
                .toList();
            return ListView(
              children: [
                if (e.domain != null)
                  ListTile(
                    leading: const Icon(Icons.public),
                    title: Text(e.domain!),
                  ),
                if (e.tags != null)
                  ListTile(
                    leading: const Icon(Icons.sell),
                    title: Text(e.tags!),
                  ),
                const Divider(),
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 8, 12, 12),
                  child: Material(
                    color: panelColor(context, const Color(0xAA000000)),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      children: [
                        for (var i = 0; i < fields.length; i++)
                          ListTile(
                            title: Text(fields[i].label),
                            subtitle: Text(
                              fields[i].sensitive && !_revealed.contains(i)
                                  ? '••••••••'
                                  : fields[i].value,
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (fields[i].sensitive)
                                  IconButton(
                                    icon: Icon(
                                      _revealed.contains(i)
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: () => setState(() {
                                      if (!_revealed.remove(i)) {
                                        _revealed.add(i);
                                      }
                                    }),
                                  ),
                                IconButton(
                                  icon: const Icon(Icons.copy),
                                  tooltip: t.copy,
                                  onPressed: () async {
                                    await ClipboardService.instance.copy(
                                      fields[i].value,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        if (fields.isEmpty) ListTile(title: Text(t.noEntries)),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
