import 'package:flutter/material.dart';

import '../../core/constants/app_theme.dart';
import '../../core/utils/motion.dart';
import '../../core/widgets/dialog_parts.dart';
import '../../l10n/app_localizations.dart';

/// Hakkında sekmesinden açılan metin sayfalarındaki bir bölüm.
/// [brief] herkes için yalın açıklama; [tech] verilirse "Teknik ayrıntı"
/// başlığıyla açılır kapanır bir alan olarak gösterilir.
class AboutBlock {
  const AboutBlock({this.title, required this.brief, this.tech});
  final String? title;
  final String brief;
  final String? tech;
}

/// Sürüm notları, nasıl çalışır, hikâye, geliştirici ve gizlilik pencereleri.
/// Başlık sabit kalır, içerik pencerenin içinde kayar.
class AboutTextPage extends StatelessWidget {
  const AboutTextPage({
    super.key,
    required this.title,
    required this.blocks,
    required this.briefLabel,
    required this.techLabel,
  });

  final String title;
  final List<AboutBlock> blocks;
  final String briefLabel;
  final String techLabel;

  static Future<void> open(BuildContext context, AboutTextPage page) =>
      showDialog<void>(
        context: context,
        animationStyle: Motion.style,
        builder: (_) => page,
      );

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ScrollDialog(
      title: Text(title),
      actions: [
        RoundIconButton(
          icon: Icons.close,
          tooltip: t.close,
          onPressed: () => Navigator.pop(context),
        ),
      ],
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < blocks.length; i++) ...[
            if (i > 0)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(height: 1, color: MuhurColors.line),
              ),
            _block(context, blocks[i]),
          ],
        ],
      ),
    );
  }

  Widget _block(BuildContext context, AboutBlock b) {
    final cream = MuhurColors.cream;
    final tech = b.tech;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (b.title != null) ...[
          Text(
            b.title!,
            style: TextStyle(
              color: cream,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
        ],
        if (tech != null) ...[
          Text(
            briefLabel.toUpperCase(),
            style: TextStyle(
              color: MuhurColors.bronzeLight,
              fontSize: 11,
              fontWeight: FontWeight.w800,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 6),
        ],
        Text(
          b.brief,
          style: TextStyle(
            color: cream.withValues(alpha: 0.88),
            fontSize: 14,
            height: 1.45,
          ),
        ),
        if (tech != null)
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.only(bottom: 6),
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              shape: const Border(),
              collapsedShape: const Border(),
              iconColor: MuhurColors.bronzeLight,
              collapsedIconColor: MuhurColors.bronzeLight,
              title: Text(
                techLabel,
                style: TextStyle(
                  color: MuhurColors.bronzeLight,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              children: [
                Text(
                  tech,
                  style: TextStyle(
                    color: cream.withValues(alpha: 0.72),
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
