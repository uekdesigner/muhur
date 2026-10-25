class IbanMatch {
  const IbanMatch(this.value, {this.corrected = false});
  final String value; // boşluksuz
  final bool corrected; // OCR hatası düzeltildiyse true
}

/// Bilinen ülkeler için IBAN uzunlukları. Listede olmayan ülkelerde 15-34 kabul edilir.
const Map<String, int> _lengths = {
  'TR': 26,
  'DE': 22,
  'GB': 22,
  'FR': 27,
  'ES': 24,
  'IT': 27,
  'NL': 18,
  'BE': 16,
  'AT': 20,
  'CH': 21,
  'PT': 25,
  'PL': 28,
  'GR': 27,
  'IE': 22,
  'SE': 24,
  'SA': 24,
  'AE': 23,
};

/// OCR'ın sık karıştırdığı harf -> rakam çiftleri.
const Map<String, String> _confusable = {
  'O': '0',
  'I': '1',
  'L': '1',
  'S': '5',
  'B': '8',
  'Z': '2',
};

bool isValidIban(String iban) {
  if (iban.length < 15 || iban.length > 34) return false;
  if (!RegExp(r'^[A-Z]{2}[0-9]{2}[A-Z0-9]+$').hasMatch(iban)) return false;
  final expected = _lengths[iban.substring(0, 2)];
  if (expected != null && expected != iban.length) return false;

  final rearranged = iban.substring(4) + iban.substring(0, 4);
  var rem = 0;
  for (final c in rearranged.codeUnits) {
    if (c >= 48 && c <= 57) {
      rem = (rem * 10 + (c - 48)) % 97;
    } else {
      rem = (rem * 100 + (c - 55)) % 97; // A=10 ... Z=35
    }
  }
  return rem == 1;
}

String groupIban(String iban) =>
    RegExp(r'.{1,4}').allMatches(iban).map((m) => m[0]!).join(' ');

bool _isLetter(int c) => c >= 65 && c <= 90;

String _digitize(String s) =>
    s.split('').map((c) => _confusable[c] ?? c).join();

String? _tryFix(String cand) {
  for (var i = 2; i < cand.length; i++) {
    final alt = _confusable[cand[i]];
    if (alt == null) continue;
    final t = cand.replaceRange(i, i + 1, alt);
    if (isValidIban(t)) return t;
  }
  return null;
}

/// OCR metninden geçerli IBAN'ları bulur.
List<IbanMatch> findIbans(String ocrText) {
  final s = ocrText.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), '');
  final found = <IbanMatch>[];
  final seen = <String>{};

  void add(IbanMatch m) {
    if (seen.add(m.value)) found.add(m);
  }

  for (var i = 0; i + 15 <= s.length; i++) {
    if (!_isLetter(s.codeUnitAt(i)) || !_isLetter(s.codeUnitAt(i + 1))) {
      continue;
    }
    final known = _lengths[s.substring(i, i + 2)];
    final lengths = known != null
        ? [known]
        : [for (var l = 15; l <= 34; l++) l];

    for (final len in lengths) {
      if (i + len > s.length) continue;
      final raw = s.substring(i, i + len);
      // Kontrol hanelerinde harf okunduysa rakama çevir
      final cand =
          raw.substring(0, 2) +
          _digitize(raw.substring(2, 4)) +
          raw.substring(4);
      if (isValidIban(cand)) {
        add(IbanMatch(cand, corrected: cand != raw));
        break;
      }
      if (known != null) {
        final fixed = _tryFix(cand);
        if (fixed != null) {
          add(IbanMatch(fixed, corrected: true));
          break;
        }
      }
    }
  }
  return found;
}
