import 'dart:async';

import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/crypto/totp.dart';
import '../../core/utils/clipboard_service.dart';
import '../../l10n/app_localizations.dart';
import 'vault_models.dart';

/// İki adımlı doğrulama alanı mı? (Eski kayıtlarda tip "text" kalmış olabilir.)
bool isTotpField(FieldData f) => f.type == 'totp' || f.key == '2faSecretKey';

/// Kayıt detayında 2FA alanı: sırrı değil, o anki kodu ve kalan süreyi gösterir.
/// Kopyala düğmesi kodu kopyalar. Abonelik bitse de çalışmaya devam eder;
/// aksi hâlde kullanıcı hesaplarına giremez.
class TotpTile extends StatefulWidget {
  const TotpTile({super.key, required this.field});
  final FieldData field;

  @override
  State<TotpTile> createState() => _TotpTileState();
}

class _TotpTileState extends State<TotpTile> {
  late final Totp? _totp = Totp.parse(widget.field.value);
  Timer? _timer;
  String _code = '';
  int _counter = -1;
  int _left = 0;

  @override
  void initState() {
    super.initState();
    if (_totp != null) {
      _tick();
      _timer = Timer.periodic(const Duration(seconds: 1), (_) => _tick());
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Future<void> _tick() async {
    final totp = _totp!;
    final now = DateTime.now();
    final counter = totp.counterAt(now);
    if (counter != _counter) {
      final code = await totp.codeAt(counter);
      if (!mounted) return;
      _counter = counter;
      _code = code;
    }
    if (mounted) setState(() => _left = totp.secondsLeft(now));
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final totp = _totp;
    if (totp == null) {
      return ListTile(
        title: Text(widget.field.label),
        subtitle: Text(
          t.totpInvalid,
          style: const TextStyle(color: Colors.redAccent),
        ),
      );
    }
    final urgent = _left <= 5;
    return ListTile(
      title: Text(widget.field.label),
      subtitle: Row(
        children: [
          Text(
            _code.isEmpty ? '··· ···' : Totp.pretty(_code),
            style: TextStyle(
              color: MuhurColors.bronzeLight,
              fontSize: 22,
              fontWeight: FontWeight.w800,
              letterSpacing: 2,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              value: _left / totp.period,
              strokeWidth: 2.5,
              color: urgent ? Colors.redAccent : MuhurColors.bronzeLight,
              backgroundColor: MuhurColors.line,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            '$_left',
            style: TextStyle(
              color: urgent ? Colors.redAccent : MuhurColors.cream,
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.copy),
        tooltip: t.copy,
        onPressed: _code.isEmpty
            ? null
            : () => ClipboardService.instance.copy(_code),
      ),
    );
  }
}
