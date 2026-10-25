import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import 'entry_edit_screen.dart';
import 'vault_models.dart';
import 'vault_repository.dart';
import '../../core/utils/clipboard_service.dart';

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
        content: Text(t.deleteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(c, false),
            child: Text(t.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(c, true),
            child: Text(t.delete),
          ),
        ],
      ),
    );
    if (yes != true) return;
    await widget.repo.delete(widget.entry.id!);
    if (mounted) Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final e = widget.entry;
    return Scaffold(
      appBar: AppBar(
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
          final fields = snap.data!;
          return ListView(
            children: [
              if (e.domain != null)
                ListTile(
                  leading: const Icon(Icons.public),
                  title: Text(e.domain!),
                ),
              if (e.tags != null)
                ListTile(leading: const Icon(Icons.sell), title: Text(e.tags!)),
              const Divider(),
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
                            if (!_revealed.remove(i)) _revealed.add(i);
                          }),
                        ),
                      IconButton(
                        icon: const Icon(Icons.copy),
                        tooltip: t.copy,
                        onPressed: () async {
                          await ClipboardService.instance.copy(fields[i].value);
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                t.copied(
                                  ClipboardService
                                      .instance
                                      .clearAfter
                                      .inSeconds,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              if (fields.isEmpty) ListTile(title: Text(t.noEntries)),
            ],
          );
        },
      ),
    );
  }
}
