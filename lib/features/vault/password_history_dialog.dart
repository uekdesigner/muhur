import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/entitlements/entitlements.dart';
import '../../core/utils/clipboard_service.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';
import 'pro_dialog.dart';
import 'vault_models.dart';
import 'vault_repository.dart';

/// Parola geçmişi (Pro): alanın eski değerleri, en yeni önce.
/// Ücretsiz planda Pro penceresi açılır.
Future<void> showPasswordHistory(
  BuildContext context, {
  required VaultRepository repo,
  required int entryId,
  required FieldData field,
}) async {
  final t = AppLocalizations.of(context)!;
  if (!Entitlements.instance.isPro) {
    await showProDialog(context, t.proFeatureTitle, t.proHistoryBody);
    return;
  }
  final items = await repo.passwordHistory(
    entryId,
    key: field.key,
    label: field.label,
  );
  if (!context.mounted) return;
  await showDialog<void>(
    context: context,
    animationStyle: Motion.style,
    builder: (_) => _HistoryDialog(
      repo: repo,
      entryId: entryId,
      field: field,
      items: items,
    ),
  );
}

class _HistoryDialog extends StatefulWidget {
  const _HistoryDialog({
    required this.repo,
    required this.entryId,
    required this.field,
    required this.items,
  });
  final VaultRepository repo;
  final int entryId;
  final FieldData field;
  final List<PasswordHistoryItem> items;

  @override
  State<_HistoryDialog> createState() => _HistoryDialogState();
}

class _HistoryDialogState extends State<_HistoryDialog> {
  late List<PasswordHistoryItem> _items = widget.items;
  final _shown = <int>{};
  bool _confirmClear = false;

  String _when(BuildContext context, DateTime d) {
    final m = MaterialLocalizations.of(context);
    final time = TimeOfDay.fromDateTime(d).format(context);
    return '${m.formatShortDate(d)} $time';
  }

  Future<void> _clear() async {
    if (!_confirmClear) {
      setState(() => _confirmClear = true);
      return;
    }
    await widget.repo.clearPasswordHistory(
      widget.entryId,
      key: widget.field.key,
      label: widget.field.label,
    );
    if (mounted) setState(() => _items = const []);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ScrollDialog(
      title: Text('${t.proFeatHistory} · ${widget.field.label}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _items.isEmpty ? t.historyEmpty : t.historyNote,
            style: TextStyle(
              color: MuhurColors.cream.withValues(alpha: 0.7),
              fontSize: 12.5,
              height: 1.35,
            ),
          ),
          if (_confirmClear && _items.isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              t.historyClearQ,
              style: TextStyle(color: Colors.amber.shade200, fontSize: 13),
            ),
          ],
          const SizedBox(height: 6),
          for (final item in _items)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _shown.contains(item.id) ? item.value : '••••••••',
                          style: TextStyle(
                            color: MuhurColors.cream,
                            fontSize: 14.5,
                            fontFamily: 'monospace',
                          ),
                        ),
                        Text(
                          _when(context, item.changedAt),
                          style: TextStyle(
                            color: MuhurColors.cream.withValues(alpha: 0.55),
                            fontSize: 11.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: _shown.contains(item.id)
                        ? t.hideValue
                        : t.showValue,
                    visualDensity: VisualDensity.compact,
                    icon: Icon(
                      _shown.contains(item.id)
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () => setState(() {
                      if (!_shown.remove(item.id)) _shown.add(item.id);
                    }),
                  ),
                  IconButton(
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.copy),
                    tooltip: t.copy,
                    onPressed: () => ClipboardService.instance.copy(item.value),
                  ),
                ],
              ),
            ),
        ],
      ),
      actions: [
        if (_items.isNotEmpty)
          RoundIconButton(
            icon: _confirmClear ? Icons.delete_forever : Icons.delete_outline,
            tooltip: t.delete,
            danger: _confirmClear,
            onPressed: _clear,
          ),
        RoundIconButton(
          icon: Icons.close,
          tooltip: t.close,
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
