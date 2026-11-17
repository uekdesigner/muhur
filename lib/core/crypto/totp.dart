import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';

/// İki adımlı doğrulama kodu (RFC 6238 TOTP). Tamamen cihazda, internetsiz
/// ve telefonun saatine göre üretilir.
/// Sır: sitenin verdiği Base32 kurulum anahtarı ya da
/// `otpauth://totp/...?secret=...` bağlantısı.
class Totp {
  const Totp.raw(
    this.secret, {
    this.digits = 6,
    this.period = 30,
    this.algorithm = 'SHA1',
  });

  final List<int> secret;
  final int digits;
  final int period;
  final String algorithm; // SHA1, SHA256, SHA512

  /// Geçersizse null.
  static Totp? parse(String input) {
    final s = input.trim();
    if (s.isEmpty) return null;
    if (s.toLowerCase().startsWith('otpauth://')) {
      final uri = Uri.tryParse(s);
      if (uri == null || uri.host.toLowerCase() != 'totp') return null;
      final q = uri.queryParameters;
      final key = _base32(q['secret'] ?? '');
      if (key == null || key.isEmpty) return null;
      final digits = int.tryParse(q['digits'] ?? '') ?? 6;
      final period = int.tryParse(q['period'] ?? '') ?? 30;
      final alg = (q['algorithm'] ?? 'SHA1').toUpperCase();
      if (!const ['SHA1', 'SHA256', 'SHA512'].contains(alg)) return null;
      if (digits < 6 || digits > 8 || period < 10 || period > 120) return null;
      return Totp.raw(key, digits: digits, period: period, algorithm: alg);
    }
    final key = _base32(s);
    // En az 80 bit (16 Base32 karakter); daha kısası büyük olasılıkla yanlış.
    if (key == null || key.length < 10) return null;
    return Totp.raw(key);
  }

  /// RFC 4648 Base32; boşluk, tire ve "=" yok sayılır, büyük/küçük harf fark etmez.
  static List<int>? _base32(String input) {
    const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567';
    final clean = input.toUpperCase().replaceAll(RegExp(r'[\s=-]'), '');
    if (clean.isEmpty) return null;
    var buffer = 0;
    var bits = 0;
    final out = <int>[];
    for (final ch in clean.split('')) {
      final v = alphabet.indexOf(ch);
      if (v < 0) return null;
      buffer = (buffer << 5) | v;
      bits += 5;
      if (bits >= 8) {
        bits -= 8;
        out.add((buffer >> bits) & 0xFF);
        buffer &= (1 << bits) - 1;
      }
    }
    return out;
  }

  /// Zaman diliminin sırası (Unix saniyesi / süre).
  int counterAt(DateTime t) => t.millisecondsSinceEpoch ~/ 1000 ~/ period;

  /// Geçerli koda kalan saniye.
  int secondsLeft(DateTime t) => period - (t.millisecondsSinceEpoch ~/ 1000) % period;

  Future<String> codeAt(int counter) async {
    final msg = ByteData(8)..setUint64(0, counter);
    final hmac = switch (algorithm) {
      'SHA256' => Hmac.sha256(),
      'SHA512' => Hmac.sha512(),
      _ => Hmac.sha1(),
    };
    final mac = await hmac.calculateMac(
      msg.buffer.asUint8List(),
      secretKey: SecretKey(secret),
    );
    final h = mac.bytes;
    final o = h.last & 0x0f;
    final bin =
        ((h[o] & 0x7f) << 24) |
        (h[o + 1] << 16) |
        (h[o + 2] << 8) |
        h[o + 3];
    var mod = 1;
    for (var i = 0; i < digits; i++) {
      mod *= 10;
    }
    return (bin % mod).toString().padLeft(digits, '0');
  }

  /// "123 456" / "1234 5678" biçiminde, okunması kolay.
  static String pretty(String code) {
    final half = code.length ~/ 2;
    return '${code.substring(0, half)} ${code.substring(half)}';
  }
}
