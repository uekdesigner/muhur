import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_theme.dart';
import '../../core/entitlements/billing_service.dart';
import '../../core/entitlements/entitlements.dart';
import '../../core/entitlements/pro_prices.dart';
import '../../core/widgets/muhur_widgets.dart';
import '../../core/widgets/panel_style.dart';
import '../../l10n/app_localizations.dart';

enum ProPlan { yearly, monthly }

/// Ayarlar ve ana sayfada gösterilen kısa durum: deneme / etkin / ücretsiz.
String proStatusText(AppLocalizations t) {
  final e = Entitlements.instance;
  final b = BillingService.instance;
  if (!b.subscribed) {
    if (b.giftLifetime) return t.proStatusGiftLife;
    final until = b.giftUntil;
    if (until != null) {
      final left = until.difference(e.now).inMinutes / Duration.minutesPerDay;
      return t.proStatusGift(t.daysCount(left < 1 ? 1 : left.ceil()));
    }
  }
  if (e.isSubscribed) return t.proStatusActive;
  if (e.inTrial) return t.proStatusTrial(t.daysCount(e.trialDaysLeft));
  return t.proStatusFree;
}

/// MÜHÜR Pro tanıtım ve satın alma ekranı.
/// Fiyatlar şimdilik sabit; Play Billing adımında Google Play'in verdiği
/// yerel fiyatlar ve gerçek satın alma bağlanacak.
class ProScreen extends StatefulWidget {
  const ProScreen({super.key});

  static Future<void> open(BuildContext context) => Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const ProScreen()),
  );

  @override
  State<ProScreen> createState() => _ProScreenState();
}

class _ProScreenState extends State<ProScreen> {
  static const _packageId = 'com.muhur.app';

  ProPlan _plan = ProPlan.yearly;

  StreamSubscription<BillingEvent>? _events;

  @override
  void initState() {
    super.initState();
    _events = BillingService.instance.events.listen(_onEvent);
  }

  @override
  void dispose() {
    _events?.cancel();
    super.dispose();
  }

  void _toast(String text) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(text)));
  }

  void _onEvent(BillingEvent ev) {
    if (!mounted) return;
    final t = AppLocalizations.of(context)!;
    switch (ev) {
      case BillingEvent.purchased:
        _toast(t.proThanks);
      case BillingEvent.pending:
        _toast(t.proPending);
      case BillingEvent.error:
        _toast(t.proBuyError);
      case BillingEvent.canceled:
        break;
    }
  }

  Future<void> _buy() async {
    final t = AppLocalizations.of(context)!;
    final id = _plan == ProPlan.yearly
        ? BillingService.yearlyId
        : BillingService.monthlyId;
    final ok = await BillingService.instance.buy(id);
    if (!ok && mounted) _toast(t.proStoreUnavailable);
  }

  Future<void> _restore() async {
    final t = AppLocalizations.of(context)!;
    final ok = await BillingService.instance.refresh();
    if (!mounted) return;
    if (!ok) {
      _toast(t.proStoreUnavailable);
    } else {
      _toast(
        Entitlements.instance.isSubscribed
            ? t.proRestoreDone
            : t.proRestoreNone,
      );
    }
  }

  /// Play Store'un "Kodu kullan" ekranı; hediye kodu kartsız kullanılır.
  Future<void> _redeem() async {
    BillingService.instance.expectChange();
    try {
      await launchUrl(
        Uri.parse('https://play.google.com/redeem'),
        mode: LaunchMode.externalApplication,
      );
    } catch (_) {}
  }

  Future<void> _manage() async {
    BillingService.instance.expectChange();
    final uri = Uri.parse(
      'https://play.google.com/store/account/subscriptions?package=$_packageId',
    );
    try {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final lang = Localizations.localeOf(context).languageCode;
    return MuhurBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('${t.brandName} Pro'),
        ),
        body: ListenableBuilder(
          listenable: Listenable.merge([
            Entitlements.instance,
            ProPrices.instance,
            BillingService.instance,
          ]),
          builder: (context, _) {
            final e = Entitlements.instance;
            final paid = e.isSubscribed;
            return ListView(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
              children: [
                _header(t, e),
                const SizedBox(height: 14),
                _features(t),
                const SizedBox(height: 16),
                if (!paid) ...[
                  _planCard(
                    ProPlan.yearly,
                    t.proYearly,
                    ProPrices.instance.yearly(lang) ?? '—',
                    t.proPerYear,
                    badge: t.proBestValue,
                  ),
                  const SizedBox(height: 10),
                  _planCard(
                    ProPlan.monthly,
                    t.proMonthly,
                    ProPrices.instance.monthly(lang) ?? '—',
                    t.proPerMonth,
                  ),
                  const SizedBox(height: 16),
                  FilledButton(onPressed: _buy, child: Text(t.proSubscribe)),
                  TextButton(onPressed: _restore, child: Text(t.proRestore)),
                  TextButton(onPressed: _redeem, child: Text(t.proRedeem)),
                ] else if (BillingService.instance.subscribed)
                  OutlinedButton(onPressed: _manage, child: Text(t.proManage)),
                const SizedBox(height: 10),
                Text(
                  t.proFinePrint,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: MuhurColors.cream.withValues(alpha: 0.6),
                    fontSize: 12,
                    height: 1.4,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _header(AppLocalizations t, Entitlements e) {
    return Column(
      children: [
        Image.asset('assets/images/seal.webp', width: 72, height: 72),
        const SizedBox(height: 8),
        Text(
          '${t.brandName} Pro',
          style: TextStyle(
            color: MuhurColors.cream,
            fontSize: 22,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          proStatusText(t),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: MuhurColors.bronzeLight,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        if (!e.isSubscribed && e.inTrial) ...[
          const SizedBox(height: 6),
          Text(
            t.proTrialInfo,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: MuhurColors.cream.withValues(alpha: 0.7),
              fontSize: 12.5,
              height: 1.4,
            ),
          ),
        ],
      ],
    );
  }

  Widget _features(AppLocalizations t) {
    final items = <(IconData, String, String)>[
      (Icons.all_inclusive, t.proFeatEntries, t.proFeatEntriesDesc),
      (Icons.document_scanner, t.proFeatScan, t.proFeatScanDesc),
      (Icons.playlist_add, t.proFeatFields, t.proFeatFieldsDesc),
      (Icons.fingerprint, t.proFeatBio, t.proFeatBioDesc),
      (Icons.wallpaper, t.proFeatBg, t.proFeatBgDesc),
      (Icons.health_and_safety_outlined, t.proFeatHealth, t.proFeatHealthDesc),
      (Icons.pin_outlined, t.proFeatTotp, t.proFeatTotpDesc),
      (Icons.history, t.proFeatHistory, t.proFeatHistoryDesc),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: panelColor(context, const Color(0xCC14181C)),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: MuhurColors.bronze.withValues(alpha: 0.6)),
      ),
      child: Column(
        children: [
          for (final (icon, title, desc) in items)
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(icon, color: MuhurColors.bronzeLight, size: 22),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            color: MuhurColors.cream,
                            fontSize: 14.5,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                            color: MuhurColors.cream.withValues(alpha: 0.65),
                            fontSize: 12.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _planCard(
    ProPlan plan,
    String title,
    String price,
    String per, {
    String? badge,
  }) {
    final selected = _plan == plan;
    return Material(
      color: panelColor(context, const Color(0xCC14181C)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          color: selected
              ? MuhurColors.bronzeLight
              : MuhurColors.bronze.withValues(alpha: 0.5),
          width: selected ? 2 : 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => setState(() => _plan = plan),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Row(
            children: [
              Icon(
                selected ? Icons.radio_button_checked : Icons.radio_button_off,
                color: MuhurColors.bronzeLight,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Wrap(
                  spacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: MuhurColors.cream,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    if (badge != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFBE7A6),
                              Color(0xFFE3A857),
                              Color(0xFFB4602C),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          badge,
                          style: const TextStyle(
                            color: Color(0xFF2A1B08),
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: price,
                      style: TextStyle(
                        color: MuhurColors.cream,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: ' $per',
                      style: TextStyle(
                        color: MuhurColors.cream.withValues(alpha: 0.65),
                        fontSize: 12.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
