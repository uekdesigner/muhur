import 'package:flutter/material.dart';

import '../constants/app_theme.dart';
import '../../l10n/app_localizations.dart';

/// Diyalog alanlarında kullanılan dar (alçak) iç boşluk.
const kDenseFieldPadding = EdgeInsets.symmetric(horizontal: 12, vertical: 10);

/// Yuvarlak çerçeveli ikon buton. Açıklama (tooltip) zorunludur; ekran
/// okuyucular da bu metni okur. [primary] ana eylemi, [danger] silme gibi
/// geri dönüşsüz eylemleri belirginleştirir. [busy] iken ikon yerine
/// dönen gösterge çıkar.
class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
    this.primary = false,
    this.danger = false,
    this.busy = false,
    this.size = 44,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;
  final bool primary;
  final bool danger;
  final bool busy;
  final double size;

  @override
  Widget build(BuildContext context) {
    final frame = danger
        ? Colors.redAccent
        : (primary ? MuhurColors.bronze : MuhurColors.line);
    final iconColor = danger ? Colors.redAccent : MuhurColors.cream;
    return Tooltip(
      message: tooltip,
      child: Opacity(
        opacity: onPressed == null && !busy ? 0.45 : 1,
        child: Material(
          color: primary || danger
              ? const Color(0xCC14181C)
              : const Color(0xCC1B2024),
          shape: CircleBorder(
            side: BorderSide(color: frame, width: primary || danger ? 1.4 : 1),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPressed,
            customBorder: const CircleBorder(),
            child: SizedBox(
              width: size,
              height: size,
              child: busy
                  ? Padding(
                      padding: EdgeInsets.all(size * 0.28),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: MuhurColors.cream,
                      ),
                    )
                  : Icon(icon, size: size * 0.5, color: iconColor),
            ),
          ),
        ),
      ),
    );
  }
}

/// Kayan içerik ile sabit başlık/butonlar arasına yatay çizgi koyar.
/// AlertDialog'da `contentPadding: EdgeInsets.zero` ile birlikte kullanın;
/// yatay boşluğu bu widget kendisi verir.
class DividedScroll extends StatelessWidget {
  const DividedScroll({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final line = Container(height: 1, color: MuhurColors.line);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        line,
        Flexible(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24, 14, 24, 14),
            child: child,
          ),
        ),
        line,
      ],
    );
  }
}

/// Parola alanının sonundaki göster/gizle düğmesi (alçak alanlara uygun).
class PasswordToggleButton extends StatelessWidget {
  const PasswordToggleButton({
    super.key,
    required this.shown,
    required this.onPressed,
  });
  final bool shown;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: shown
          ? AppLocalizations.of(context)!.hideValue
          : AppLocalizations.of(context)!.showValue,
      iconSize: 20,
      style: IconButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(36, 36),
        padding: EdgeInsets.zero,
      ),
      icon: Icon(shown ? Icons.visibility_off : Icons.visibility),
      onPressed: onPressed,
    );
  }
}

/// Başlığı sabit, içeriği kayan pencere. Boyu ekranın [maxHeightFactor]
/// kadarıyla sınırlıdır; uzun metinli bütün bilgi pencereleri bunu kullanır.
class ScrollDialog extends StatelessWidget {
  const ScrollDialog({
    super.key,
    required this.title,
    required this.content,
    this.actions = const [],
    this.maxHeightFactor = 0.6,
  });

  final Widget title;
  final Widget content;
  final List<Widget> actions;
  final double maxHeightFactor;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.sizeOf(context).height * maxHeightFactor;
    return AlertDialog(
      title: title,
      titlePadding: const EdgeInsets.fromLTRB(24, 20, 24, 12),
      contentPadding: EdgeInsets.zero,
      actionsPadding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      content: SizedBox(
        width: double.maxFinite,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: maxHeight),
          child: DividedScroll(child: content),
        ),
      ),
      actions: actions,
    );
  }
}
