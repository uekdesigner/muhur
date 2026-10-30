// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Mühür';

  @override
  String get catBanks => 'Banken';

  @override
  String get catWebsites => 'Websites';

  @override
  String get catEmails => 'E-Mails';

  @override
  String get catSocial => 'Soziale Medien';

  @override
  String get catBusiness => 'Geschäftlich';

  @override
  String get catOther => 'Andere';

  @override
  String get setupTitle => 'Master-Passwort erstellen';

  @override
  String get setupInfo =>
      'Dieses Passwort kann nicht wiederhergestellt werden. Wenn Sie es vergessen, können Ihre Daten nie wieder geöffnet werden.';

  @override
  String get masterPassword => 'Master-Passwort';

  @override
  String get confirmPassword => 'Passwort bestätigen';

  @override
  String get passwordTooShort => 'Verwenden Sie mindestens 8 Zeichen.';

  @override
  String get passwordNeedsMix =>
      'Verwenden Sie Kleinbuchstaben, Großbuchstaben, eine Ziffer und ein Sonderzeichen.';

  @override
  String get reqLength => 'Mindestens 8 Zeichen';

  @override
  String get reqLower => 'Ein Kleinbuchstabe';

  @override
  String get reqUpper => 'Ein Großbuchstabe';

  @override
  String get reqDigit => 'Eine Ziffer';

  @override
  String get reqSpecial => 'Ein Sonderzeichen (!@#...)';

  @override
  String get passwordsDontMatch => 'Passwörter stimmen nicht überein.';

  @override
  String get createVault => 'Tresor erstellen';

  @override
  String get unlockTitle => 'Entsperren';

  @override
  String get unlock => 'Entsperren';

  @override
  String get wrongPassword => 'Falsches Master-Passwort.';

  @override
  String lockedOut(int seconds) {
    return 'Zu viele Versuche. Versuchen Sie es in $seconds Sekunden erneut.';
  }

  @override
  String get useBiometrics => 'Mit Biometrie entsperren';

  @override
  String get enableBiometricsQ => 'Biometrische Entsperrung aktivieren?';

  @override
  String get enable => 'Aktivieren';

  @override
  String get notNow => 'Später';

  @override
  String get biometricReason => 'Mühür entsperren';

  @override
  String get lockNow => 'Sperren';

  @override
  String get vaultUnlocked => 'Tresor entsperrt';

  @override
  String get all => 'Alle';

  @override
  String get noEntries => 'Noch keine Einträge';

  @override
  String get searchHint => 'Titel, Domain oder Tag suchen';

  @override
  String get addEntry => 'Eintrag hinzufügen';

  @override
  String get editEntry => 'Eintrag bearbeiten';

  @override
  String get title => 'Titel';

  @override
  String get category => 'Kategorie';

  @override
  String get domain => 'Domain (z.B. beispiel.de)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Felder';

  @override
  String get addField => 'Feld hinzufügen';

  @override
  String get fieldLabel => 'Bezeichnung';

  @override
  String get fieldValue => 'Wert';

  @override
  String get typeText => 'Text';

  @override
  String get typePassword => 'Passwort';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notizen';

  @override
  String get sensitive => 'Wert verbergen';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get deleteConfirm =>
      'Diesen Eintrag löschen? Dies kann nicht rückgängig gemacht werden.';

  @override
  String get titleRequired => 'Titel ist erforderlich.';

  @override
  String get fieldUsername => 'Benutzername';

  @override
  String get fieldPassword => 'Passwort';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notizen';

  @override
  String get copy => 'Kopieren';

  @override
  String copied(int seconds) {
    return 'Kopiert. Die Zwischenablage wird in $seconds Sekunden geleert.';
  }

  @override
  String get settings => 'Einstellungen';

  @override
  String get settingsSecurity => 'Sicherheit';

  @override
  String get settingsBackup => 'Backup';

  @override
  String get settingsGeneral => 'Allgemein';

  @override
  String get settingsAbout => 'Über';

  @override
  String get autoLock => 'Automatische Sperre';

  @override
  String get immediately => 'Sofort';

  @override
  String get seconds15 => '15 Sekunden';

  @override
  String get minute1 => '1 Minute';

  @override
  String get copyTimer => 'Clipboard timer';

  @override
  String get copyTimerHint =>
      'Copied data is cleared from the clipboard after this time, and the vault stays unlocked until then.';

  @override
  String secondsShort(int seconds) {
    return '$seconds sec';
  }

  @override
  String get biometricUnlock => 'Biometrische Entsperrung';

  @override
  String get generator => 'Passwortgenerator';

  @override
  String get generate => 'Generieren';

  @override
  String get length => 'Länge';

  @override
  String get lowercase => 'Kleinbuchstaben (a-z)';

  @override
  String get uppercase => 'Großbuchstaben (A-Z)';

  @override
  String get digits => 'Ziffern (0-9)';

  @override
  String get symbols => 'Symbole (!@#...)';

  @override
  String get avoidAmbiguous =>
      'Verwechslungsanfällige Zeichen vermeiden (O/0, l/1)';

  @override
  String get regenerate => 'Neu generieren';

  @override
  String get usePassword => 'Dieses Passwort verwenden';

  @override
  String get strengthWeak => 'Schwach';

  @override
  String get strengthFair => 'Mittel';

  @override
  String get strengthGood => 'Gut';

  @override
  String get strengthStrong => 'Stark';

  @override
  String get scan => 'Mit Kamera scannen';

  @override
  String get scanHint =>
      'Halten Sie die Kamera ruhig über den Text. Im IBAN-Modus wird er automatisch erkannt.';

  @override
  String get scanRetake => 'Erneut aufnehmen';

  @override
  String get scanning => 'Scannen...';

  @override
  String get ibanFound => 'IBAN gefunden';

  @override
  String get ibanNotFound =>
      'Keine gültige IBAN gefunden. Versuchen Sie es bei besserem Licht erneut oder wählen Sie eine Zeile unten aus.';

  @override
  String get ibanCorrected =>
      'Möglicherweise nach OCR-Fehler korrigiert. Sorgfältig prüfen.';

  @override
  String get pickLine => 'Tippen Sie auf eine Zeile';

  @override
  String get noTextFound => 'Kein Text gefunden.';

  @override
  String get cameraError =>
      'Kamera nicht verfügbar. Überprüfen Sie die Kameraberechtigung.';

  @override
  String get editBeforeUse => 'Bei Bedarf prüfen und bearbeiten';

  @override
  String get useValue => 'Verwenden';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Passwort-Manager';

  @override
  String get tagline =>
      'Ihre digitalen Schlüssel liegen ganz in Ihren Händen.\n Keine Server. Nur Sie und Ihre Passwörter.\n MÜHÜR: Ihr digitaler Tresor, den nur Sie sehen können.';

  @override
  String get login => 'ANMELDEN';

  @override
  String get infoTitle => 'Über Mühür';

  @override
  String get infoBody =>
      'Mühür speichert Ihre Passwörter ausschließlich verschlüsselt auf diesem Gerät. Es gibt kein Konto und keinen Server.\n\nIhr Master-Passwort kann nicht wiederhergestellt werden. Wenn Sie es vergessen, können Ihre Daten nicht geöffnet werden. Bewahren Sie daher ein verschlüsseltes Backup auf.';

  @override
  String get understandNoRecovery =>
      'Mir ist bewusst, dass ein vergessenes Master-Passwort nicht wiederhergestellt werden kann.';

  @override
  String get close => 'Schließen';

  @override
  String get language => 'Sprache';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get statTotal => 'Gesamt';

  @override
  String get statReused => 'Wiederverwendet';

  @override
  String get planFree => 'KOSTENLOS';

  @override
  String get statusScreen => 'Bildschirmschutz';

  @override
  String get screenshotAllow => 'Allow screenshots';

  @override
  String get screenshotAllowHint =>
      'Screen protection is switched off for the time set below, then turns back on automatically.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get statusBackup => 'Automatisches Backup';

  @override
  String get helpTitle => 'Hilfe';

  @override
  String get helpBody => 'Hilfeinhalte werden hier hinzugefügt.';

  @override
  String deleteSelectedConfirm(int count) {
    return '$count ausgewählte Einträge löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get fcBankName => 'Bankname';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Online-Banking-Passwort';

  @override
  String get fcCardPin => 'Karten-PIN';

  @override
  String get fcCardNumber => 'Kartennummer';

  @override
  String get fcExpiryDate => 'Gültigkeitsdatum';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Kundenservice-Nummer';

  @override
  String get fcCustomerNoTc => 'Kundennummer / Sozialversicherungsnr.';

  @override
  String get fcBranchNameCode => 'Filialname & Code';

  @override
  String get fcAccountType => 'Kontotyp';

  @override
  String get fcPhoneBankingPassword => 'Telefon-Banking-Passwort';

  @override
  String get fcSwiftBic => 'SWIFT / BIC-Code';

  @override
  String get fcCardStatementDate => 'Abrechnungs- und Fälligkeitsdatum';

  @override
  String get fcAccountTitle => 'Konto-Bezeichnung';

  @override
  String get fcEmailAddress => 'E-Mail-Adresse';

  @override
  String get fcRecoveryEmail => 'Wiederherstellungs-E-Mail';

  @override
  String get fcRecoveryPhone => 'Wiederherstellungstelefon';

  @override
  String get fc2faBackupCodes => '2FA / Backup-Codes';

  @override
  String get fcLoginMethodProvider => 'Anmeldemethode / Anbieter';

  @override
  String get fcImapSmtp => 'IMAP / SMTP-Servereinstellungen';

  @override
  String get fcSecurityQA => 'Sicherheitsfrage & Antwort';

  @override
  String get fcPasswordChangeDate => 'Passwortänderungsdatum';

  @override
  String get fcPlatformTitle => 'Plattform / Titel';

  @override
  String get fcUsernameProfileId => 'Benutzername / Profil-ID';

  @override
  String get fcRegisteredEmail => 'Registrierte E-Mail';

  @override
  String get fcRegisteredPhone => 'Registrierte Telefonnummer';

  @override
  String get fcProfileUrl => 'Profil-Link (URL)';

  @override
  String get fcAccountTypeStatus => 'Kontotyp / Status';

  @override
  String get fcLinkedMainAccount => 'Verknüpftes Hauptkonto';

  @override
  String get fcProfileNumericId => 'Profil / Numerische ID';

  @override
  String get fc2faSecretKey => '2FA Geheimschlüssel';

  @override
  String get fcServiceName => 'Organisation / Dienstname';

  @override
  String get fcCompanyName => 'Unternehmensname';

  @override
  String get fcCorporateUserId => 'Benutzername / Firmen-ID';

  @override
  String get fcPanelUrl => 'Dienst- / Panel-Adresse (URL)';

  @override
  String get fcDepartmentPosition => 'Abteilung / Position';

  @override
  String get fcLicenseCode => 'Kunden- / Lizenzcode';

  @override
  String get fcSupportContact => 'Autorisierter / Support-Kontakt';

  @override
  String get fcLoginMethodVerification => 'Anmeldemethode / Verifizierungstyp';

  @override
  String get fcTaxOffice => 'Finanzamt & Steuernummer';

  @override
  String get fcRegistryNo => 'Registernummer / Händlercode';

  @override
  String get fcIpVpn => 'IP-Beschränkung / VPN-Adresse';

  @override
  String get fcLicenseExpiry => 'Portal- / Lizenzablaufdatum';

  @override
  String get fcSiteName => 'Website- / Dienstname';

  @override
  String get fcWebAddress => 'Webadresse (URL)';

  @override
  String get fcUsernameEmail => 'Benutzername / E-Mail';

  @override
  String get fcSubscriptionFee => 'Abonnementgebühr & Zeitraum';

  @override
  String get fcRegistrationDate => 'Registrierungsdatum';

  @override
  String get fcPaymentMethod => 'Abrechnungs- / Zahlungsmethode';

  @override
  String get fcPinCode => 'PIN-Code';

  @override
  String get fcLicenseCodeSimple => 'Lizenzcode';

  @override
  String get pickFieldTitle => 'Feld auswählen';

  @override
  String get allFieldsAdded => 'Alle Felder hinzugefügt';

  @override
  String get generatorSettings => 'Generator-Einstellungen';

  @override
  String get saveAndExit => 'Speichern und beenden';

  @override
  String get customField => 'Benutzerdefiniertes Feld';

  @override
  String get customFieldName => 'Feldname';

  @override
  String get customFieldType => 'Feldtyp';

  @override
  String get customTypeText => 'Text';

  @override
  String get customTypeNote => 'Notiz';

  @override
  String get customTypePassword => 'Verstecktes Passwort';

  @override
  String get customTypeDate => 'Datum';

  @override
  String get customTypePhone => 'Telefon';
}
