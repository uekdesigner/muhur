// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Banks';

  @override
  String get catWebsites => 'Websites';

  @override
  String get catEmails => 'Emails';

  @override
  String get catSocial => 'Social Media';

  @override
  String get catBusiness => 'Business';

  @override
  String get catOther => 'Other';

  @override
  String get setupTitle => 'Create master password';

  @override
  String get setupInfo =>
      'This password cannot be recovered. If you forget it, your data can never be opened.';

  @override
  String get masterPassword => 'Master password';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get passwordTooShort => 'Use at least 8 characters.';

  @override
  String get passwordNeedsMix =>
      'Use lowercase, uppercase, a digit and a special character.';

  @override
  String get reqLength => 'At least 8 characters';

  @override
  String get reqLower => 'A lowercase letter';

  @override
  String get reqUpper => 'An uppercase letter';

  @override
  String get reqDigit => 'A digit';

  @override
  String get reqSpecial => 'A special character (!@#...)';

  @override
  String get passwordsDontMatch => 'Passwords do not match.';

  @override
  String get createVault => 'Create vault';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Unlock';

  @override
  String get wrongPassword => 'Wrong master password.';

  @override
  String lockedOut(int seconds) {
    return 'Too many attempts. Try again in $seconds seconds.';
  }

  @override
  String get useBiometrics => 'Unlock with biometrics';

  @override
  String get enableBiometricsQ => 'Enable biometric unlock?';

  @override
  String get enable => 'Enable';

  @override
  String get notNow => 'Not now';

  @override
  String get biometricReason => 'Unlock Muhur';

  @override
  String get lockNow => 'Lock';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'All';

  @override
  String get noEntries => 'No entries yet';

  @override
  String get searchHint => 'Search title, domain or tag';

  @override
  String get addEntry => 'Add entry';

  @override
  String get editEntry => 'Edit entry';

  @override
  String get title => 'Title';

  @override
  String get category => 'Category';

  @override
  String get domain => 'Domain (e.g. example.com)';

  @override
  String get tags => 'Tags (comma separated)';

  @override
  String get fields => 'Fields';

  @override
  String get addField => 'Add field';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Text';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Hide value';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get cancel => 'Cancel';

  @override
  String get deleteConfirm => 'Delete this entry? This cannot be undone.';

  @override
  String get titleRequired => 'Title is required.';

  @override
  String get fieldUsername => 'Username';

  @override
  String get fieldPassword => 'Password';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Note';

  @override
  String get copy => 'Copy';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Settings';

  @override
  String get autoLock => 'Auto-lock';

  @override
  String get immediately => 'Immediately';

  @override
  String get seconds15 => '15 seconds';

  @override
  String get minute1 => '1 minute';

  @override
  String get minutes5 => '5 minutes';

  @override
  String get biometricUnlock => 'Biometric unlock';

  @override
  String get generator => 'Password generator';

  @override
  String get generate => 'Generate';

  @override
  String get length => 'Length';

  @override
  String get lowercase => 'Lowercase (a-z)';

  @override
  String get uppercase => 'Uppercase (A-Z)';

  @override
  String get digits => 'Digits (0-9)';

  @override
  String get symbols => 'Symbols (!@#...)';

  @override
  String get avoidAmbiguous => 'Avoid look-alike characters (O/0, l/1)';

  @override
  String get regenerate => 'Regenerate';

  @override
  String get usePassword => 'Use this password';

  @override
  String get strengthWeak => 'Weak';

  @override
  String get strengthFair => 'Fair';

  @override
  String get strengthGood => 'Good';

  @override
  String get strengthStrong => 'Strong';

  @override
  String get scan => 'Scan with camera';

  @override
  String get scanHint =>
      'Hold the camera steady over the text. In IBAN mode it is detected automatically.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Scanning...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Possibly corrected after an OCR error. Check carefully.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Camera is unavailable. Check the camera permission.';

  @override
  String get editBeforeUse => 'Check and edit if needed';

  @override
  String get useValue => 'Use';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Password Manager';

  @override
  String get tagline =>
      'Your digital keys are entirely in your hands.\n No servers. Just you and your passwords.\n MÜHÜR: Your digital vault that only you can see.';

  @override
  String get login => 'ENTER';

  @override
  String get infoTitle => 'About Muhur';

  @override
  String get infoBody =>
      'Muhur keeps your passwords encrypted on this device only. There is no account and no server.\n\nYour master password cannot be recovered. If you forget it, your data cannot be opened, so keep an encrypted backup.';

  @override
  String get understandNoRecovery =>
      'I understand that a forgotten master password cannot be recovered.';

  @override
  String get close => 'Close';

  @override
  String get language => 'Language';

  @override
  String get languageSystem => 'System default';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Reused';
}
