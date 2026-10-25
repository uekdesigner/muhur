/// Ana parola kuralları (yalnızca yeni parola oluştururken uygulanır).
class PasswordChecks {
  const PasswordChecks({
    required this.length,
    required this.lower,
    required this.upper,
    required this.digit,
    required this.special,
  });

  final bool length;
  final bool lower;
  final bool upper;
  final bool digit;
  final bool special;

  bool get ok => length && lower && upper && digit && special;
}

const int kMinMasterPasswordLength = 8;

PasswordChecks checkPassword(String p) {
  return PasswordChecks(
    length: p.runes.length >= kMinMasterPasswordLength,
    lower: RegExp(r'\p{Ll}', unicode: true).hasMatch(p),
    upper: RegExp(r'\p{Lu}', unicode: true).hasMatch(p),
    digit: RegExp(r'\p{Nd}', unicode: true).hasMatch(p),
    // harf, rakam ve boşluk olmayan her karakter "özel" sayılır
    special: RegExp(r'[^\p{L}\p{N}\s]', unicode: true).hasMatch(p),
  );
}
