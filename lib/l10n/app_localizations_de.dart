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
  String get catSocial => 'Social Media';

  @override
  String get catBusiness => 'Geschäftlich';

  @override
  String get catOther => 'Sonstige';

  @override
  String get setupTitle => 'Master-Passwort erstellen';

  @override
  String get setupInfo =>
      'Dieses Passwort kann nicht wiederhergestellt werden. Wenn du es vergisst, lassen sich deine Daten nie wieder öffnen.';

  @override
  String get masterPassword => 'Master-Passwort';

  @override
  String get confirmPassword => 'Passwort bestätigen';

  @override
  String get changeMasterPassword => 'Master-Passwort ändern';

  @override
  String get currentPassword => 'Aktuelles Passwort';

  @override
  String get newPassword => 'Neues Passwort';

  @override
  String get newPasswordSame =>
      'Das neue Passwort muss sich vom aktuellen unterscheiden.';

  @override
  String get change => 'Ändern';

  @override
  String get masterPasswordChanged => 'Master-Passwort geändert.';

  @override
  String get changePasswordFailed =>
      'Passwort konnte nicht geändert werden. Bitte erneut versuchen.';

  @override
  String get passwordTooShort => 'Mindestens 8 Zeichen verwenden.';

  @override
  String get passwordNeedsMix =>
      'Klein- und Großbuchstaben und eine Ziffer verwenden.';

  @override
  String get reqLength => 'Mindestens 8 Zeichen';

  @override
  String get reqLower => 'Ein Kleinbuchstabe';

  @override
  String get reqUpper => 'Ein Großbuchstabe';

  @override
  String get reqDigit => 'Eine Ziffer';

  @override
  String get reqSpecial => 'Ein Sonderzeichen (!@#...) – optional';

  @override
  String get reqOptional => 'optional';

  @override
  String get passwordsDontMatch => 'Passwörter stimmen nicht überein.';

  @override
  String get createVault => 'Erstellen';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Öffnen';

  @override
  String get wrongPassword => 'Falsches Master-Passwort.';

  @override
  String lockedOut(int seconds) {
    return 'Zu viele Versuche. Erneut versuchen in $seconds Sekunden.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Biometrisches Entsperren aktivieren?';

  @override
  String get enable => 'Aktivieren';

  @override
  String get notNow => 'Später';

  @override
  String get biometricReason => 'Muhur entsperren';

  @override
  String get lockNow => 'Sperren';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Alle';

  @override
  String get noEntries => 'Noch keine Einträge';

  @override
  String get searchHint => 'Titel, Domain, Tag suchen';

  @override
  String get addEntry => 'Neuer Eintrag';

  @override
  String get editEntry => 'Eintrag bearbeiten';

  @override
  String get title => 'Titel';

  @override
  String get category => 'Kategorie';

  @override
  String get domain => 'Domain (z. B. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Felder';

  @override
  String get addField => 'Neues Feld';

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
  String get sensitive => 'Wert verbergen';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get moveToTrash => 'In Papierkorb';

  @override
  String get trash => 'Papierkorb';

  @override
  String get trashKeepFor => 'Im Papierkorb behalten für';

  @override
  String get trashHint =>
      'Gelöschte Einträge bleiben verschlüsselt im Papierkorb und können wiederhergestellt werden. Nach dieser Anzahl Tage werden sie beim nächsten Entsperren des Tresors endgültig gelöscht. Eine kürzere Frist entfernt auch ältere Einträge aus dem Papierkorb. Das Leeren des Papierkorbs kann nicht rückgängig gemacht werden.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Papierkorb';

  @override
  String get trashEmpty => 'Der Papierkorb ist leer.';

  @override
  String get restore => 'Zurückholen';

  @override
  String get deleteForever => 'Endgültig';

  @override
  String get deleteForeverConfirm =>
      'Diesen Eintrag endgültig löschen? Das kann nicht rückgängig gemacht werden.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'noch $count Tage',
      one: 'noch 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Leeren';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return '$_temp0 endgültig aus dem Papierkorb löschen? Das kann nicht rückgängig gemacht werden.';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get deleteConfirm =>
      'Diesen Eintrag in den Papierkorb verschieben? Du kannst ihn wiederherstellen, bis der Papierkorb geleert wird.';

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
    return 'Copied. The clipboard clears in $seconds seconds.';
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
  String get autoLock => 'Auto-Sperre';

  @override
  String get immediately => 'Sofort';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Kopier-Timer';

  @override
  String get copyTimerHint =>
      'Kopierte Daten werden nach dieser Zeit aus der Zwischenablage gelöscht, und der Tresor bleibt bis dahin entsperrt.';

  @override
  String secondsShort(int seconds) {
    return '$seconds Sek.';
  }

  @override
  String get biometricUnlock => 'Biometrie';

  @override
  String get generator => 'Generator';

  @override
  String get generate => 'Erzeugen';

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
  String get avoidAmbiguous => 'Keine ähnlichen Zeichen (O/0, l/1)';

  @override
  String get regenerate => 'Neu';

  @override
  String get usePassword => 'Nutzen';

  @override
  String get strengthWeak => 'Schwach';

  @override
  String get strengthFair => 'Mittel';

  @override
  String get strengthGood => 'Gut';

  @override
  String get strengthStrong => 'Stark';

  @override
  String get scan => 'Scannen';

  @override
  String get scanHint =>
      'Halte die Kamera ruhig über den Text. Im IBAN-Modus wird er automatisch erkannt.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Scannen...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Möglicherweise nach einem OCR-Fehler korrigiert. Bitte genau prüfen.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Kamera nicht verfügbar. Prüfe die Kameraberechtigung.';

  @override
  String get editBeforeUse => 'Prüfen und ggf. ändern';

  @override
  String get useValue => 'Nutzen';

  @override
  String get scanIsThis => 'Ist es diese?';

  @override
  String get scanNo => 'Nein';

  @override
  String get scanYes => 'Ja';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Passwort-Manager';

  @override
  String get tagline =>
      'VERSIEGLE deine digitalen Daten.\nKeine Server. Nur du und deine Daten.\nMÜHÜR: das sicherste Schloss für dein digitales Gedächtnis.';

  @override
  String get login => 'ÖFFNEN';

  @override
  String get infoTitle => 'Über Muhur';

  @override
  String get infoBody =>
      'Muhur speichert deine Passwörter verschlüsselt nur auf diesem Gerät. Es gibt kein Konto und keinen Server.\n\nDein Master-Passwort kann nicht wiederhergestellt werden. Wenn du es vergisst, lassen sich deine Daten nicht öffnen – bewahre daher ein verschlüsseltes Backup auf.';

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
  String get sectionLanguage => 'SPRACHE';

  @override
  String get sectionExperience => 'ERLEBNIS';

  @override
  String get sectionAppearance => 'DESIGN';

  @override
  String get panelDarkness => 'Panel-Dunkelheit';

  @override
  String get panelDarknessDesc =>
      'Macht Panels und Karten mehr oder weniger durchsichtig';

  @override
  String get backgroundTitle => 'Hintergrund';

  @override
  String get backgroundDim => 'Abdunkeln';

  @override
  String get backgroundDimDesc =>
      'Macht das Hintergrundbild dunkler oder heller';

  @override
  String get bgBronze => 'Bronze';

  @override
  String get bgEmber => 'Glut';

  @override
  String get bgSapphire => 'Saphir';

  @override
  String get bgObsidian => 'Obsidian';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Smart-Tipps';

  @override
  String get smartGuideDesc =>
      'Zeigt kurze Tipps beim ersten Nutzen einer Funktion';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Kurze Vibration beim Entsperren per Fingerabdruck und beim Kopieren';

  @override
  String get reduceAnimations => 'Keine Animationen';

  @override
  String get reduceAnimationsDesc =>
      'Schaltet alle Animationen der App aus: Wackeln und Leuchten des Hilfe-Symbols, Hilfemenü, Seitenübergänge, Dialoge und die Scanlinie. Nützlich auf langsameren Geräten und für bewegungsempfindliche Menschen.';

  @override
  String get resetTips => 'Tipps zurücksetzen';

  @override
  String get resetTipsDesc => 'Hilfe-Animation und alle Tipps wieder anzeigen';

  @override
  String get tipsResetDone => 'Tipps werden wieder angezeigt';

  @override
  String get tipLongPress =>
      'Tipp: Einen Eintrag lange drücken, um ihn auszuwählen, und dann mehrere auf einmal löschen.';

  @override
  String get statTotal => 'Gesamt';

  @override
  String get statReused => 'Doppelt';

  @override
  String get planFree => 'GRATIS';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Screenshots erlauben';

  @override
  String get screenshotAllowHint =>
      'Der Bildschirmschutz wird für die unten eingestellte Zeit ausgeschaltet und danach automatisch wieder eingeschaltet.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'VERSCHLÜSSELTES BACKUP';

  @override
  String get backupExport => 'Backup erstellen';

  @override
  String get backupExportDesc =>
      'Speichert alle Einträge, einschließlich Papierkorb, in einer Datei, die durch ein Backup-Passwort geschützt ist. Bewahre die Datei sicher auf.';

  @override
  String get backupImport => 'Einspielen';

  @override
  String get backupImportDesc =>
      'Fügt die Einträge aus einer Backup-Datei hinzu. Vorhandene Einträge werden nie überschrieben oder gelöscht.';

  @override
  String get backupPasswordTitle => 'Backup-Passwort';

  @override
  String get backupPasswordInfo =>
      'Dieses Passwort schützt die Backup-Datei. Es kann sich von deinem Master-Passwort unterscheiden. Wenn du es vergisst, lässt sich das Backup nicht öffnen.';

  @override
  String get backupEnterPassword => 'Backup-Passwort eingeben';

  @override
  String get backupContinue => 'Weiter';

  @override
  String get backupSaved => 'Backup gespeichert';

  @override
  String get backupFailed => 'Backup konnte nicht erstellt werden';

  @override
  String backupRestored(int added, int skipped) {
    return '$added hinzugefügt, $skipped bereits vorhanden';
  }

  @override
  String get backupWrongPassword => 'Falsches Backup-Passwort';

  @override
  String get backupInvalidFile => 'Das ist keine gültige Muhur-Backup-Datei';

  @override
  String get backupReminderTitle => 'Backup-Erinnerung';

  @override
  String get backupReminderDesc =>
      'Erinnert dich auf dem Startbildschirm, wenn dein letztes Backup älter ist. Auf 0 setzen zum Ausschalten.';

  @override
  String get backupReminderOff => 'Aus';

  @override
  String get backupReminderNever =>
      'Du hast noch kein Backup erstellt. Sichere jetzt, damit du deine Passwörter nicht verlierst.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Dein letztes Backup war vor $days Tagen.',
      one: 'Dein letztes Backup war vor 1 Tag.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Sichern';

  @override
  String get backupReminderLater => 'Später';

  @override
  String get statusScreenOn =>
      'Bildschirmschutz ist an: Screenshots und Bildschirmaufnahmen sind blockiert';

  @override
  String get statusScreenOff =>
      'Bildschirmschutz ist vorerst aus: Screenshots sind erlaubt';

  @override
  String get statusBackupNever =>
      'Noch kein Backup. Erstelle eins unter Einstellungen > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Letztes Backup: vor $days Tagen',
      one: 'Letztes Backup: gestern',
      zero: 'Heute gesichert',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup überfällig: das letzte war vor $days Tagen',
      one: 'Backup überfällig: das letzte war vor 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge im Papierkorb',
      one: '1 Eintrag im Papierkorb',
      zero: 'Papierkorb ist leer',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Biometrische Entsperrung ist an';

  @override
  String get statusBiometricOff =>
      'Biometrische Entsperrung ist aus (zum Einrichten tippen)';

  @override
  String get helpStatusScreen =>
      'Schild-Symbol: Bildschirmschutz (grün = an, blass = aus)';

  @override
  String get helpStatusBackup =>
      'Backup-Symbol: Backup-Status (grün = aktuelles Backup, blass = Backup fällig)';

  @override
  String get helpStatusTrash =>
      'Papierkorb-Symbol: Gelöschte Einträge (Zahl = wartende Einträge, Tippen öffnet)';

  @override
  String get helpStatusBiometric =>
      'Fingerabdruck-Symbol: Biometrische Entsperrung (grün = an, Tippen öffnet Einstellungen)';

  @override
  String get helpTitle => 'Hilfe';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Wie benutzen?';

  @override
  String get helpAdd => '+ Taste: Neuen Eintrag hinzufügen';

  @override
  String get helpTap => 'Karte antippen: Details ansehen';

  @override
  String get helpLongPress => 'Lange drücken: Auswählen und löschen';

  @override
  String get helpSearch => 'Suche: Schnell finden';

  @override
  String get helpCategories => 'Kategorien: Einträge filtern';

  @override
  String get helpLock => 'Schloss-Symbol: Tresor jetzt sperren';

  @override
  String get helpSettings => 'Einstellungen: Backup, Auto-Sperre und mehr';

  @override
  String get helpStats => 'Unteres Panel: Tresor-Übersicht';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausgewählte Einträge in den Papierkorb verschieben?',
      one: '1 ausgewählten Eintrag in den Papierkorb verschieben?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Bankname';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Banking-Passwort';

  @override
  String get fcCardPin => 'Karten-PIN';

  @override
  String get fcCardNumber => 'Kartennr.';

  @override
  String get fcExpiryDate => 'Gültig bis';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Service-Nr.';

  @override
  String get fcCustomerNoTc => 'Kundennr. / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Kontoart';

  @override
  String get fcPhoneBankingPassword => 'Telefon-Passwort';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Abrechnung / Fällig';

  @override
  String get fcAccountTitle => 'Kontoinhaber';

  @override
  String get fcEmailAddress => 'E-Mail';

  @override
  String get fcRecoveryEmail => 'Ersatz-E-Mail';

  @override
  String get fcRecoveryPhone => 'Ersatz-Telefon';

  @override
  String get fc2faBackupCodes => '2FA / Backup-Codes';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Sicherheitsfrage';

  @override
  String get fcPasswordChangeDate => 'Passwort geändert';

  @override
  String get fcPlatformTitle => 'Plattform / Titel';

  @override
  String get fcUsernameProfileId => 'Benutzername / Profil-ID';

  @override
  String get fcRegisteredEmail => 'Registrierte E-Mail';

  @override
  String get fcRegisteredPhone => 'Registr. Telefon';

  @override
  String get fcProfileUrl => 'Profil-URL';

  @override
  String get fcAccountTypeStatus => 'Kontotyp / Status';

  @override
  String get fcLinkedMainAccount => 'Verknüpftes Konto';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => '2FA-Schlüssel';

  @override
  String get fcServiceName => 'Organisation';

  @override
  String get fcCompanyName => 'Firmenname';

  @override
  String get fcCorporateUserId => 'Benutzername / Firmen-ID';

  @override
  String get fcPanelUrl => 'Panel-URL';

  @override
  String get fcDepartmentPosition => 'Abteilung / Position';

  @override
  String get fcLicenseCode => 'Kunden- / Lizenzcode';

  @override
  String get fcSupportContact => 'Support-Kontakt';

  @override
  String get fcLoginMethodVerification => 'Verification';

  @override
  String get fcTaxOffice => 'Tax Office / No';

  @override
  String get fcRegistryNo => 'Registry / Dealer No';

  @override
  String get fcIpVpn => 'IP / VPN';

  @override
  String get fcLicenseExpiry => 'License Expiry';

  @override
  String get fcSiteName => 'Seitenname';

  @override
  String get fcWebAddress => 'Web-URL';

  @override
  String get fcUsernameEmail => 'Benutzername / E-Mail';

  @override
  String get fcSubscriptionFee => 'Fee / Period';

  @override
  String get fcRegistrationDate => 'Sign-up Date';

  @override
  String get fcPaymentMethod => 'Payment Method';

  @override
  String get fcPinCode => 'PIN Code';

  @override
  String get fcLicenseCodeSimple => 'License Code';

  @override
  String get pickFieldTitle => 'Feld wählen';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Generator-Einstellungen';

  @override
  String get saveAndExit => 'Speichern & zurück';

  @override
  String get customField => 'Eigenes Feld';

  @override
  String get customFieldName => 'Feldname';

  @override
  String get customFieldType => 'Feldtyp';

  @override
  String get customTypeText => 'Text';

  @override
  String get customTypeNote => 'Notiz';

  @override
  String get customTypePassword => 'Passwort';

  @override
  String get customTypeDate => 'Datum';

  @override
  String get customTypePhone => 'Telefon';

  @override
  String get orphanVaultTitle => 'Alter Tresor gefunden';

  @override
  String get orphanVaultBody =>
      'Auf diesem Gerät gibt es noch eine alte Tresordatei, aber ihre Schlüssel können nicht gelesen werden, daher lässt sie sich nicht öffnen. Wenn du fortfährst, werden diese alten Daten gelöscht. Falls du ein Backup hast, erstelle einen neuen Tresor und spiele es danach ein.';

  @override
  String get orphanVaultReplace => 'Löschen & weiter';

  @override
  String get forgotOldPassword =>
      'Ich kenne mein aktuelles Passwort nicht mehr';

  @override
  String get useCurrentPassword => 'Doch aktuelles Passwort verwenden';

  @override
  String get forgotPasswordBioHint =>
      'Bestätige mit Fingerabdruck oder Gesicht, um ein neues Master-Passwort festzulegen. Deine Einträge bleiben erhalten.';

  @override
  String get bioConfirmFailed =>
      'Biometrische Bestätigung fehlgeschlagen oder abgebrochen.';

  @override
  String get biometricChangedBody =>
      'Deine Fingerabdruck- oder Gesichtsdaten haben sich geändert. Zu deiner Sicherheit wurde die biometrische Anmeldung ausgeschaltet.';

  @override
  String get limitReachedTitle => 'Gratis-Limit erreicht';

  @override
  String limitReachedBody(int count) {
    return 'Die Gratisversion speichert bis zu $count Einträge pro Kategorie. Lösche einen Eintrag oder wechsle zu Pro für unbegrenzte Einträge.';
  }

  @override
  String get scanLimitTitle => 'Gratis-Scans aufgebraucht';

  @override
  String scanLimitBody(int count) {
    return 'Du hast deine $count Gratis-Scans genutzt. Mit Pro scannst du unbegrenzt.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added hinzugefügt, $limited nicht eingespielt (Gratis-Limit erreicht). Deine Backup-Datei bleibt unverändert.';
  }
}
