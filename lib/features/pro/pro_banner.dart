import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../core/constants/app_theme.dart';
import '../../core/entitlements/billing_service.dart';
import '../../core/entitlements/entitlements.dart';
import '../../core/entitlements/pro_prices.dart';
import '../../core/widgets/panel_style.dart';
import '../../core/widgets/pro_badge.dart';
import '../../l10n/app_localizations.dart';
import 'pro_screen.dart';

/// Ana ekranda, parola güvenliği panelinin üstünde Pro paneli. Dokununca
/// Pro ekranı açılır. Abonelik ya da hediye Pro varken görünmez.
/// ✕ ile 2 gün gizlenir, sonra yeniden görünür.
class ProBanner extends StatefulWidget {
  const ProBanner({super.key});

  @override
  State<ProBanner> createState() => _ProBannerState();
}

class _ProBannerState extends State<ProBanner> {
  static const _key = 'muhur_pro_banner_until';
  static const _snooze = Duration(days: 2);
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  bool _loaded = false;
  DateTime? _hiddenUntil;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    DateTime? until;
    try {
      until = DateTime.tryParse(await _storage.read(key: _key) ?? '');
    } catch (_) {}
    if (!mounted) return;
    setState(() {
      _hiddenUntil = until;
      _loaded = true;
    });
  }

  Future<void> _hide() async {
    final until = DateTime.now().add(_snooze);
    setState(() => _hiddenUntil = until);
    try {
      await _storage.write(key: _key, value: until.toIso8601String());
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ListenableBuilder(
      listenable: Listenable.merge([
        Entitlements.instance,
        ProPrices.instance,
        BillingService.instance,
      ]),
      builder: (context, _) {
        final e = Entitlements.instance;
        final until = _hiddenUntil;
        if (!_loaded ||
            e.isSubscribed ||
            (until != null && DateTime.now().isBefore(until))) {
          return const SizedBox.shrink();
        }
        final locale = t.localeName;
        final yearly = ProPrices.instance.yearly(locale);
        final month = ProPrices.instance.yearlyPerMonth(locale);
        final subtitle = yearly != null && month != null
            ? t.proBannerPrice(yearly, month)
            : t.proSeePlans;

        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () => ProScreen.open(context),
              child: Ink(
                padding: const EdgeInsets.fromLTRB(12, 8, 2, 8),
                decoration: BoxDecoration(
                  color: panelColor(context, const Color(0xEB161B1F)),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFFE3A857),
                    width: 1.4,
                  ),
                ),
                child: Row(
                  children: [
                    const ProLabel(),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            e.inTrial ? t.proBannerTrial : t.proBannerFree,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: MuhurColors.cream,
                              fontSize: 13.5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            subtitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Color(0xFFE3A857),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, size: 18),
                      color: MuhurColors.cream.withValues(alpha: 0.7),
                      tooltip: t.hideValue,
                      visualDensity: VisualDensity.compact,
                      onPressed: _hide,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
