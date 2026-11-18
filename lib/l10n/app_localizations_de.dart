// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => 'Öffnen';

  @override
  String get wrongPassword => 'Falsches Master-Passwort.';

  @override
  String lockedOut(int seconds) {
    return 'Zu viele Versuche. Erneut versuchen in $seconds Sekunden.';
  }

  @override
  String get enableBiometricsQ => 'Biometrisches Entsperren aktivieren?';

  @override
  String get enable => 'Aktivieren';

  @override
  String get notNow => 'Später';

  @override
  String get biometricReason => 'MÜHÜR entsperren';

  @override
  String get lockNow => 'Sperren';

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
  String get typeText => 'Text';

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
  String get scanning => 'Scannen...';

  @override
  String get ibanCorrected =>
      'Möglicherweise nach einem OCR-Fehler korrigiert. Bitte genau prüfen.';

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
  String get infoTitle => 'Über MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR speichert deine Passwörter verschlüsselt nur auf diesem Gerät. Es gibt kein Konto und keinen Server.\n\nDein Master-Passwort kann nicht wiederhergestellt werden. Wenn du es vergisst, lassen sich deine Daten nicht öffnen – bewahre daher ein verschlüsseltes Backup auf.';

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
  String get screenshotAllow => 'Screenshots erlauben';

  @override
  String get screenshotAllowHint =>
      'Der Bildschirmschutz wird für die unten eingestellte Zeit ausgeschaltet und danach automatisch wieder eingeschaltet.';

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
  String get backupInvalidFile => 'Das ist keine gültige MÜHÜR-Backup-Datei';

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
  String get fcSiteName => 'Seitenname';

  @override
  String get fcWebAddress => 'Web-URL';

  @override
  String get fcUsernameEmail => 'Benutzername / E-Mail';

  @override
  String get pickFieldTitle => 'Feld wählen';

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
      'Bestätige mit deinem Fingerabdruck, um ein neues Master-Passwort festzulegen. Deine Einträge bleiben erhalten.';

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

  @override
  String get aboutProtectionTitle => 'So werden deine Daten geschützt';

  @override
  String get aboutProtectionBody =>
      'Alles, was du speicherst, wird auf diesem Telefon stark verschlüsselt. Nur dein Master-Passwort öffnet es – und es wird nirgends gespeichert, nicht einmal von MÜHÜR. Ohne es sind die Daten unlesbar.';

  @override
  String get aboutOfflineTitle => 'Funktioniert offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR verbindet sich nie mit dem Internet. Es gibt kein Konto, keinen Server und keine Cloud. Deine Passwörter bleiben auf diesem Telefon, außer du exportierst sie selbst – als verschlüsseltes Backup oder als Excel-Datei.';

  @override
  String get aboutRights => 'Alle Rechte vorbehalten.';

  @override
  String statusClipboard(int seconds) {
    return 'Zwischenablage wird in $seconds Sek. geleert. Tippen, um sie sofort zu leeren.';
  }

  @override
  String get helpStatusClipboard =>
      'Zwischenablage-Symbol: Kopierter Wert (Zahl = Sekunden bis zum Löschen, Tippen löscht sofort)';

  @override
  String aboutVersionLine(String version) {
    return 'Version $version';
  }

  @override
  String get aboutReleaseNotes => 'Versionshinweise';

  @override
  String get aboutHowTitle => 'So funktioniert es';

  @override
  String get aboutStoryTitle => 'Die Geschichte von MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Wer steckt hinter MÜHÜR';

  @override
  String get aboutPrivacySection => 'DATENSCHUTZERKLÄRUNG';

  @override
  String get aboutPermissionsTitle => 'Berechtigungen und Daten';

  @override
  String get aboutSupportSection => 'SUPPORT';

  @override
  String get aboutRate => 'Auf Google Play bewerten';

  @override
  String get aboutRateDesc =>
      'Gib auf der Store-Seite eine Bewertung oder Rezension ab';

  @override
  String get aboutInBrief => 'Kurz gesagt';

  @override
  String get aboutTechnical => 'Technische Details';

  @override
  String get aboutProtectionTech =>
      '• Der Tresor wird mit einem zufälligen 256-Bit-Schlüssel verschlüsselt. Dieser Schlüssel wird mit AES-256-GCM versiegelt – mit einem Schlüssel, der per Argon2id (32 MiB Speicher, 3 Durchläufe) aus deinem Master-Passwort abgeleitet wird. Die Ableitungseinstellungen sind an das Siegel gebunden, Manipulationen werden erkannt.\n• Die Datenbank ist mit SQLCipher verschlüsselt; ihr Schlüssel wird per HKDF-SHA256 aus dem Tresorschlüssel abgeleitet.\n• Sensible Felder werden zusätzlich mit AES-256-GCM verschlüsselt und an ihren Eintrag und ihr Feld gebunden.\n• Nach 5 falschen Passwörtern wartet die App 30 Sekunden, jedes Mal doppelt so lange, bis höchstens 1 Stunde. Das Verstellen der Uhr verkürzt die Wartezeit nicht.\n• Biometrisches Entsperren akzeptiert nur starke Biometrie (Klasse 3) und schaltet sich aus, wenn ein neuer Fingerabdruck oder ein neues Gesicht hinzukommt. Auf den meisten Handys erreicht die Gesichtserkennung diese Stufe nicht, daher ist meist nur der Fingerabdruck nutzbar.\n• Screenshots und Bildschirmaufnahmen werden blockiert, der Tresor sperrt sich beim Verlassen der App, und kopierte Werte werden als sensibel markiert und automatisch gelöscht.';

  @override
  String get aboutOfflineTech =>
      '• Die veröffentlichte Version der App hat keine Internet- oder Netzwerkberechtigung; sie wird entfernt, selbst wenn eine Bibliothek sie anfordert.\n• Cloud-Backup und Übertragung auf ein anderes Gerät sind ausgeschaltet; die Daten der App werden nicht vom Telefon kopiert.\n• Die Texterkennung nutzt ein in die App integriertes Modell und läuft auf dem Telefon; Kamerabilder werden im Speicher verarbeitet und nie gespeichert.\n• Daten verlassen das Telefon nur, wenn du sie selbst exportierst: als verschlüsselte Backup-Datei oder als unverschlüsselte Excel-Datei, für deren Sicherheit du verantwortlich bist.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR sammelt keine personenbezogenen Daten, zeigt keine Werbung, nutzt keine Analysedienste und teilt nichts mit anderen. Die App fragt nur nach der Kamera (zum Scannen von Text) und der Biometrie (zum Entsperren). Abos verwaltet Google Play; die App sieht deine Zahlungsdaten nie. Wenn du die App löschst, werden alle ihre Daten gelöscht. Vorher kannst du deine Einträge nach Excel exportieren; für die Sicherheit dieser Datei bist du selbst verantwortlich.';

  @override
  String get aboutPermissionsTech =>
      '• Kamera: nur bei geöffnetem Scanner; es werden keine Fotos gespeichert und kein Ton aufgenommen.\n• Biometrie: Fingerabdruck oder Gesicht prüft das Systemfenster des Telefons; MÜHÜR erhält diese Daten nie.\n• Dateien: Zugriff nur, wenn du einen Ort zum Speichern oder Öffnen eines Backups oder einer Excel-Datei wählst.\n• Kein Konto, kein Server, keine Tracking- oder Werbe-IDs.\n• Download und Abo-Kauf wickelt Google Play gemäß Googles eigener Datenschutzerklärung ab.';

  @override
  String get how1T => 'Tresor und Master-Passwort';

  @override
  String get how1B =>
      'Alles liegt in einem verschlüsselten Tresor auf diesem Telefon. Nur dein Master-Passwort öffnet ihn. Es lässt sich nicht wiederherstellen – wähle eines, das du dir merkst, und erstelle ein Backup.';

  @override
  String get how2T => 'Einträge und Kategorien';

  @override
  String get how2B =>
      'Die Kategorien sind fest: Banken, Websites, E-Mails, Social Media, Geschäftlich und Sonstige. Wenn du mit der +-Taste einen Eintrag anlegst, wählst du seine Kategorie; sie bringt die passenden Felder mit. Neue Kategorien kannst du nicht anlegen, aber mit „Neues Feld“ fügst du einem Eintrag Felder hinzu: aus der Liste oder als „Eigenes Feld“ mit selbst gewähltem Namen.';

  @override
  String get how3T => 'Sicher kopieren';

  @override
  String get how3B =>
      'Tippe auf ein Feld, um es zu kopieren. Die Zwischenablage leert sich nach der eingestellten Zeit selbst. Das Symbol auf dem Startbildschirm zählt herunter; tippe darauf, um sofort zu leeren.';

  @override
  String get how4T => 'Mit der Kamera scannen';

  @override
  String get how4B =>
      'Halte die Kamera auf eine Karte oder ein Dokument, um eine IBAN oder Text zu lesen, statt zu tippen. Prüfe das Ergebnis vor dem Speichern.';

  @override
  String get how5T => 'Papierkorb';

  @override
  String get how5B =>
      'Gelöschte Einträge warten verschlüsselt im Papierkorb und lassen sich wiederherstellen, bis die eingestellte Frist abläuft.';

  @override
  String get how6T => 'Backup und Wiederherstellung';

  @override
  String get how6B =>
      'Erstelle eine verschlüsselte Backup-Datei mit eigenem Passwort und bewahre sie sicher auf. Beim Einspielen werden nur Einträge hinzugefügt; vorhandene werden nie überschrieben.';

  @override
  String get how7T => 'Sperre und Biometrie';

  @override
  String get how7B =>
      'Der Tresor sperrt sich, sobald du die App verlässt. Mit Biometrie öffnest du ihn per Fingerabdruck (auf unterstützten Handys auch per Gesicht).';

  @override
  String get storyBody =>
      'Jede große Erfindung beginnt damit, dass jemand ein kleines Problem im eigenen Leben lösen will. Genau so ist die Geschichte von MÜHÜR: eine ehrliche, aber entschlossene Reise, geboren aus einem Gedächtnis, das sich im Chaos der digitalen Welt verliert, und aus dem Instinkt, das Eigene zu schützen.\n\nAlles begann mit der lästigen Pause, die ein einziges vergessenes Passwort auslöste. Ich habe MÜHÜR als persönlichen Zufluchtsort entworfen, der nur auf meinem eigenen Gerät läuft – ohne Abhängigkeit von fremden Cloud-Servern. Mit der Zeit wurde mir klar, dass nicht nur ich meine digitale Privatsphäre zurückhaben will.\n\nHeute ist MÜHÜR für alle da, die ihre Daten keinem Server anvertrauen, sondern vollständig selbst kontrollieren möchten.\n\nVersiegle das sicherste Schloss deines digitalen Gedächtnisses.';

  @override
  String get devBody =>
      'MÜHÜR ist ein unabhängiges Projekt von UEK DESIGNER, entworfen und entwickelt in der Türkei. Danke, dass du MÜHÜR nutzt.';

  @override
  String get rn100 =>
      '• Erste Version.\n• Verschlüsselter Tresor auf dem Telefon, geöffnet mit einem Master-Passwort (Argon2id + AES-256).\n• Fertige Felder für Banken, Websites, E-Mail, soziale Medien und geschäftliche Konten.\n• Passwortgenerator mit Stärkeanzeige.\n• Scannen von IBANs und Text mit der Kamera.\n• Entsperren per Fingerabdruck (auf unterstützten Handys auch per Gesicht).\n• Verschlüsseltes Backup und Wiederherstellung.\n• Export nach Excel (unverschlüsselt, auf eigene Verantwortung).\n• Papierkorb mit automatischer Bereinigung.\n• Tresor-Übersicht mit mehrfach verwendeten Passwörtern.\n• Automatische Sperre, Bildschirmschutz und Countdown für die Zwischenablage.\n• Funktioniert komplett offline.\n• 18 Sprachen.';

  @override
  String get excelExport => 'Nach Excel exportieren';

  @override
  String get excelExportDesc =>
      'Unverschlüsselte .xlsx-Datei deiner Einträge, z. B. vor dem Löschen der App';

  @override
  String get excelExportWarnTitle => 'Unverschlüsselter Export';

  @override
  String get excelExportWarn =>
      'Die Excel-Datei ist NICHT verschlüsselt. Wer die Datei bekommt, kann alle deine Passwörter lesen. Wo du sie aufbewahrst, mit wem du sie teilst und dass du sie danach löschst, liegt allein in deiner Verantwortung. Einträge im Papierkorb werden nicht exportiert.';

  @override
  String get excelExportAgree =>
      'Verstanden – die Sicherheit der Datei liegt in meiner Verantwortung.';

  @override
  String get excelExportSaved =>
      'Excel-Datei gespeichert. Lösche sie, sobald du sie nicht mehr brauchst.';

  @override
  String get excelExportFailed =>
      'Die Excel-Datei konnte nicht erstellt werden.';

  @override
  String get excelColDomain => 'Domain';

  @override
  String get excelColUpdated => 'Zuletzt geändert';

  @override
  String get how8T => 'Export nach Excel';

  @override
  String get how8B =>
      '„Nach Excel exportieren“ in den Backup-Einstellungen schreibt alle Einträge (ohne Papierkorb) in eine .xlsx-Datei, je Kategorie ein Tabellenblatt. Die Datei ist nicht verschlüsselt: Du bestätigst mit deinem Master-Passwort und akzeptierst, dass ihre Sicherheit in deiner Verantwortung liegt. Lösche sie, wenn du sie nicht mehr brauchst.';

  @override
  String get proFeatureTitle => 'Pro-Funktion';

  @override
  String get proFieldsBody =>
      'Zusätzliche Felder in einem Eintrag sind eine Pro-Funktion. Bereits hinzugefügte Felder bleiben erhalten und lassen sich weiter bearbeiten.';

  @override
  String get proBiometricBody =>
      'Entsperren per Fingerabdruck ist eine Pro-Funktion. Mit deinem Master-Passwort kannst du jederzeit entsperren.';

  @override
  String get proBackgroundsBody =>
      'Weitere Hintergründe sind eine Pro-Funktion. Der Standardhintergrund ist immer verfügbar.';

  @override
  String bioGraceWarn(String days) {
    return 'Entsperren per Fingerabdruck bleibt noch $days aktiv und wird dann ausgeschaltet. Achte darauf, dass du dein Master-Passwort kennst. Falls du es vergessen hast, lege in den Einstellungen unter „Master-Passwort ändern“ mit deinem Fingerabdruck ein neues fest.';
  }

  @override
  String get genNewPassword => 'Neues Passwort erzeugen';

  @override
  String fieldRemoved(String label) {
    return '„$label“ entfernt';
  }

  @override
  String get undo => 'Rückgängig';

  @override
  String get proStatusActive => 'Dein Pro-Abo ist aktiv';

  @override
  String proStatusTrial(String days) {
    return 'Gratis-Test: noch $days';
  }

  @override
  String get proStatusFree => 'Gratis-Plan';

  @override
  String get proTrialInfo =>
      'Nach dem Test wechselst du automatisch in den Gratis-Plan. Keine Karte nötig, nichts wird gelöscht.';

  @override
  String get proFeatEntries => 'Unbegrenzte Einträge';

  @override
  String get proFeatEntriesDesc => 'Gratis: 3 pro Kategorie';

  @override
  String get proFeatScan => 'Unbegrenztes Scannen mit der Kamera';

  @override
  String get proFeatScanDesc => 'Gratis: 3 Scans';

  @override
  String get proFeatFields => 'Zusätzliche und eigene Felder';

  @override
  String get proFeatFieldsDesc =>
      'Füge einem Eintrag jedes Feld hinzu, das du brauchst';

  @override
  String get proFeatBio => 'Entsperren per Fingerabdruck';

  @override
  String get proFeatBioDesc => 'Öffne deinen Tresor mit einer Berührung';

  @override
  String get proFeatBg => 'Alle Hintergründe';

  @override
  String get proFeatBgDesc => 'Alle 5 Hintergründe';

  @override
  String get proFeatHealth => 'Tresor-Check';

  @override
  String get proFeatHealthDesc =>
      'Sieh, welche Passwörter schwach oder mehrfach genutzt sind, und spring direkt zum Eintrag';

  @override
  String get proFeatTotp => 'Codes für die Zwei-Faktor-Anmeldung';

  @override
  String get proFeatTotpDesc => 'Codes entstehen offline in deinem Tresor';

  @override
  String get proFeatHistory => 'Passwortverlauf';

  @override
  String get proFeatHistoryDesc =>
      'Alte Passwörter bleiben gespeichert, falls du nachsehen musst';

  @override
  String get proYearly => 'Jährlich';

  @override
  String get proMonthly => 'Monatlich';

  @override
  String get proPerYear => '/ Jahr';

  @override
  String get proPerMonth => '/ Monat';

  @override
  String get proBestValue => 'Bestes Angebot';

  @override
  String get proSubscribe => 'Abonnieren';

  @override
  String get proRestore => 'Kauf wiederherstellen';

  @override
  String get proManage => 'Abo verwalten';

  @override
  String get proFinePrint =>
      'Die Zahlung läuft über Google Play. Das Abo verlängert sich automatisch, bis du es kündigst – jederzeit in Google Play. Endet dein Abo, werden deine Einträge nicht gelöscht.';

  @override
  String get proComingSoon =>
      'Käufe sind möglich, sobald MÜHÜR bei Google Play erscheint.';

  @override
  String get proSeePlans => 'Pro ansehen';

  @override
  String get proHealthBody =>
      'Zu sehen, welche Einträge schwache oder mehrfach genutzte Passwörter haben, ist eine Pro-Funktion. Die Zahlen sind immer sichtbar.';

  @override
  String get healthWeakHint =>
      'Kurz oder leicht zu erraten. Ersetze sie mit dem Passwortgenerator.';

  @override
  String get healthReusedHint =>
      'Dasselbe Passwort wird in mehreren Einträgen verwendet. Gelangt eines nach außen, sind auch die anderen in Gefahr.';

  @override
  String get healthFairHint =>
      'In Ordnung, könnte aber länger und vielfältiger sein.';

  @override
  String get healthAllGood =>
      'Keine schwachen oder mehrfach genutzten Passwörter. Dein Tresor ist in gutem Zustand.';

  @override
  String get proHistoryBody =>
      'Frühere Werte eines Passworts zu sehen ist eine Pro-Funktion. Passwörter, die du mit Pro änderst, werden hier aufbewahrt.';

  @override
  String get historyEmpty =>
      'Dieses Passwort wurde noch nicht geändert. Wenn du es änderst, erscheint der alte Wert hier.';

  @override
  String get historyNote =>
      'Pro Passwortfeld werden die letzten 10 Werte gespeichert – verschlüsselt wie der Rest deines Tresors. Der Passwortverlauf ist nicht in Backups enthalten.';

  @override
  String get historyClearQ =>
      'Tippe noch einmal auf Löschen, um den Passwortverlauf dieses Felds zu leeren.';

  @override
  String get totpHint => 'Einrichtungsschlüssel oder otpauth://-Link';

  @override
  String get totpInvalid =>
      'Dieser Schlüssel ist ungültig. Füge den Einrichtungsschlüssel der Website ein.';

  @override
  String get qrScan => 'QR-Code scannen';

  @override
  String get qrScanHint =>
      'Richte die Kamera auf den QR-Code, den die Website beim Einrichten der Zwei-Faktor-Authentifizierung anzeigt.';

  @override
  String get qrNot2fa => 'Dieser QR-Code ist kein 2FA-Einrichtungscode.';

  @override
  String get qrMigration =>
      'Das ist ein Übertragungscode von Google Authenticator. Scanne stattdessen den Einrichtungs-QR-Code der jeweiligen Website.';

  @override
  String get totpEmpty =>
      'Noch kein Schlüssel. Scanne den QR-Code, um ihn hinzuzufügen.';
}
