// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Muhur';

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
      'Verwenden Sie Klein- und Großbuchstaben, eine Ziffer und ein Sonderzeichen.';

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
  String get biometricReason => 'Muhur entsperren';

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
  String get domain => 'Domain (z.B. example.com)';

  @override
  String get tags => 'Tags (durch Komma getrennt)';

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
  String get fieldNote => 'Notiz';

  @override
  String get copy => 'Kopieren';

  @override
  String copied(int seconds) {
    return 'Kopiert. Die Zwischenablage wird in $seconds Sekunden geleert.';
  }

  @override
  String get settings => 'Einstellungen';

  @override
  String get autoLock => 'Automatische Sperre';

  @override
  String get immediately => 'Sofort';

  @override
  String get seconds15 => '15 Sekunden';

  @override
  String get minute1 => '1 Minute';

  @override
  String get minutes5 => '5 Minuten';

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
  String get avoidAmbiguous => 'Ähnliche Zeichen vermeiden (O/0, l/1)';

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
      'Halten Sie die Kamera ruhig über den Text. Im IBAN-Modus wird dieser automatisch erkannt.';

  @override
  String get scanRetake => 'Erneut aufnehmen';

  @override
  String get scanning => 'Scannen...';

  @override
  String get ibanFound => 'IBAN gefunden';

  @override
  String get ibanNotFound =>
      'Keine gültige IBAN gefunden. Versuchen Sie es bei besserem Licht oder wählen Sie eine Zeile unten aus.';

  @override
  String get ibanCorrected =>
      'Möglicherweise nach einem OCR-Fehler korrigiert. Sorgfältig prüfen.';

  @override
  String get pickLine => 'Tippen Sie auf eine Zeile, um sie zu verwenden';

  @override
  String get noTextFound => 'Kein Text gefunden.';

  @override
  String get cameraError =>
      'Kamera nicht verfügbar. Überprüfen Sie die Kameraberechtigung.';

  @override
  String get editBeforeUse => 'Prüfen und ggf. bearbeiten';

  @override
  String get useValue => 'Verwenden';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Passwortmanager';

  @override
  String get tagline =>
      'Ihre digitalen Schlüssel liegen vollständig in Ihrer Hand.\n Keine Server. Nur Sie und Ihre Passwörter.\n MÜHÜR: Ihr digitaler Tresor, den nur Sie sehen können.';

  @override
  String get login => 'ANMELDEN';

  @override
  String get infoTitle => 'Über Muhur';

  @override
  String get infoBody =>
      'Muhur speichert Ihre Passwörter verschlüsselt nur auf diesem Gerät. Es gibt kein Konto und keinen Server.\n\nIhr Master-Passwort kann nicht wiederhergestellt werden. Wenn Sie es vergessen, können Ihre Daten nicht geöffnet werden, erstellen Sie daher ein verschlüsseltes Backup.';

  @override
  String get understandNoRecovery =>
      'Ich verstehe, dass ein vergessenes Master-Passwort nicht wiederhergestellt werden kann.';

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
  String get statusBackup => 'Auto-Backup';

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
  String get fcTag => 'Etikett';

  @override
  String get fcInternetBankingPassword => 'Online-Banking-Passwort';

  @override
  String get fcCardPin => 'Karten-PIN';

  @override
  String get fcCardNumber => 'Kartennummer';

  @override
  String get fcExpiryDate => 'Ablaufdatum';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Kundendienstnummer';

  @override
  String get fcCustomerNoTc => 'Kundennummer / Personalausweisnummer';

  @override
  String get fcBranchNameCode => 'Filialname und -code';

  @override
  String get fcAccountType => 'Kontotyp';

  @override
  String get fcPhoneBankingPassword => 'Telefonbanking-Passwort';

  @override
  String get fcSwiftBic => 'SWIFT / BIC-Code';

  @override
  String get fcCardStatementDate => 'Abrechnungs- und Fälligkeitsdatum';

  @override
  String get fcAccountTitle => 'Kontobezeichnung';

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
  String get fcSecurityQA => 'Sicherheitsfrage und Antwort';

  @override
  String get fcPasswordChangeDate => 'Datum der Passwortänderung';

  @override
  String get fcPlatformTitle => 'Plattform / Bezeichnung';

  @override
  String get fcUsernameProfileId => 'Benutzername / Profil-ID';

  @override
  String get fcRegisteredEmail => 'Registrierte E-Mail';

  @override
  String get fcRegisteredPhone => 'Registrierte Telefonnummer';

  @override
  String get fcProfileUrl => 'Profillink (URL)';

  @override
  String get fcAccountTypeStatus => 'Kontotyp / Status';

  @override
  String get fcLinkedMainAccount => 'Verknüpftes Hauptkonto';

  @override
  String get fcProfileNumericId => 'Profil / Numerische ID';

  @override
  String get fc2faSecretKey => '2FA-Geheimschlüssel';

  @override
  String get fcServiceName => 'Organisation / Servicename';

  @override
  String get fcCompanyName => 'Firmenname';

  @override
  String get fcCorporateUserId => 'Benutzername / Unternehmens-ID';

  @override
  String get fcPanelUrl => 'Service- / Paneladresse (URL)';

  @override
  String get fcDepartmentPosition => 'Abteilung / Position';

  @override
  String get fcLicenseCode => 'Kunden- / Lizenzcode';

  @override
  String get fcSupportContact => 'Verantwortlicher / Support-Kontakt';

  @override
  String get fcLoginMethodVerification => 'Anmeldemethode / Verifizierungsart';

  @override
  String get fcTaxOffice => 'Finanzamt & Steuernummer';

  @override
  String get fcRegistryNo => 'Registernummer / Händlercode';

  @override
  String get fcIpVpn => 'IP-Beschränkung / VPN-Adresse';

  @override
  String get fcLicenseExpiry => 'Portal- / Lizenzablaufdatum';

  @override
  String get fcSiteName => 'Seiten- / Servicename';

  @override
  String get fcWebAddress => 'Webadresse (URL)';

  @override
  String get fcUsernameEmail => 'Benutzername / E-Mail';

  @override
  String get fcSubscriptionFee => 'Abogebühr und -zeitraum';

  @override
  String get fcRegistrationDate => 'Registrierungsdatum';

  @override
  String get fcPaymentMethod => 'Rechnungs- / Zahlungsmethode';

  @override
  String get fcPinCode => 'PIN-Code';

  @override
  String get fcLicenseCodeSimple => 'Lizenzcode';

  @override
  String get pickFieldTitle => 'Feld auswählen';

  @override
  String get allFieldsAdded => 'Alle Felder hinzugefügt';

  @override
  String get generatorSettings => 'Generator settings';

  @override
  String get saveAndExit => 'Save and exit';
}
