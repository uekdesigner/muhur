import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cryptography/cryptography.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../storage/app_settings.dart';

class ClipboardService with WidgetsBindingObserver {
  ClipboardService._();
  static final ClipboardService instance = ClipboardService._();

  static const _channel = MethodChannel('com.muhur.app/clipboard');
  static const _kPending = 'muhur_clip_pending';
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  /// Ayarlardaki kopyalama süresi (varsayılan 30 sn).
  Duration get clearAfter =>
      Duration(seconds: AppSettings.instance.copySeconds);

  DateTime? _expiresAt;

  /// Kopyalanan veri hâlâ panodaysa silinme anı, yoksa null.
  DateTime? get activeUntil {
    final e = _expiresAt;
    return (e != null && e.isAfter(DateTime.now())) ? e : null;
  }

  Timer? _timer;
  List<int>? _hash; // kopyalanan değerin hash'i (düz metin bellekte tutulmaz)

  /// main() içinde bir kez çağrılır.
  void init() {
    WidgetsBinding.instance.addObserver(this);
    checkPending();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) checkPending();
  }

  Future<void> copy(String value) async {
    _timer?.cancel();
    await _setSensitive(value);
    _hash = (await Sha256().hash(utf8.encode(value))).bytes;
    final expires = DateTime.now().add(clearAfter);
    _expiresAt = expires;
    await _storage.write(
      key: _kPending,
      value: '${expires.millisecondsSinceEpoch}|${base64Encode(_hash!)}',
    );
    _timer = Timer(clearAfter, _clearIfOurs);
  }

  /// Uygulama açılırken / öne gelirken: bekleyen temizlik var mı?
  Future<void> checkPending() async {
    final raw = await _storage.read(key: _kPending);
    if (raw == null) return;
    final parts = raw.split('|');
    final expires = DateTime.fromMillisecondsSinceEpoch(int.parse(parts[0]));
    if (parts.length > 1) _hash ??= base64Decode(parts[1]);
    final left = expires.difference(DateTime.now());
    if (left <= Duration.zero) {
      // Öne gelirken pencere odağı henüz gelmemiş olabilir; biraz bekleyip oku.
      await Future.delayed(const Duration(milliseconds: 500));
      await _clearIfOurs(lastTry: true);
    } else if (_timer == null || !_timer!.isActive) {
      _timer = Timer(left, _clearIfOurs);
    }
  }

  Future<void> _setSensitive(String value) async {
    if (Platform.isAndroid) {
      try {
        await _channel.invokeMethod('copySensitive', {'text': value});
        return;
      } catch (_) {
        // köprü çalışmazsa normal kopyalamaya düş
      }
    }
    await Clipboard.setData(ClipboardData(text: value));
  }

  Future<void> _clear() async {
    if (Platform.isAndroid) {
      try {
        await _channel.invokeMethod('clear');
        return;
      } catch (_) {}
    }
    await Clipboard.setData(const ClipboardData(text: ''));
  }

  Future<void> _clearIfOurs({bool lastTry = false}) async {
    _timer?.cancel();
    final mine = _hash;
    if (mine != null) {
      final text = (await Clipboard.getData(Clipboard.kTextPlain))?.text;
      // Arka planda pano okunamaz: sahibini doğrulayamadan silme,
      // uygulama öne gelince checkPending() yeniden dener.
      if (text == null && !lastTry) return;
      if (text != null && text.isNotEmpty) {
        final h = (await Sha256().hash(utf8.encode(text))).bytes;
        if (_same(h, mine)) await _clear();
      }
    }
    _hash = null;
    _expiresAt = null;
    await _storage.delete(key: _kPending);
  }

  bool _same(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
