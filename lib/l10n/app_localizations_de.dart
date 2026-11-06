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
  String get catBusiness => 'Unternehmen';

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
      'Passwort konnte nicht geändert werden. Bitte versuchen Sie es erneut.';

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
  String get domain => 'Domain (z. B. beispiel.de)';

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
  String get sensitive => 'Wert ausblenden';

  @override
  String get save => 'Speichern';

  @override
  String get delete => 'Löschen';

  @override
  String get moveToTrash => 'In den Papierkorb verschieben';

  @override
  String get trash => 'Papierkorb';

  @override
  String get trashKeepFor => 'Im Papierkorb behalten für';

  @override
  String get trashHint =>
      'Gelöschte Einträge bleiben weiterhin verschlüsselt im Papierkorb und können wiederhergestellt werden. Sie werden nach dieser Anzahl von Tagen beim nächsten Entsperren des Tresors endgültig gelöscht. Eine Verkürzung des Zeitraums entfernt auch ältere Einträge aus dem Papierkorb. Das Leeren des Papierkorbs kann nicht rückgängig gemacht werden.';

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
  String get openTrash => 'Papierkorb öffnen';

  @override
  String get trashEmpty => 'Der Papierkorb ist leer.';

  @override
  String get restore => 'Wiederherstellen';

  @override
  String get deleteForever => 'Endgültig löschen';

  @override
  String get deleteForeverConfirm =>
      'Diesen Eintrag endgültig löschen? Dies kann nicht rückgängig gemacht werden.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Tage',
      one: 'Noch 1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Papierkorb jetzt leeren';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge',
      one: '1 Eintrag',
    );
    return '$_temp0 endgültig aus dem Papierkorb löschen? Dies kann nicht rückgängig gemacht werden.';
  }

  @override
  String get cancel => 'Abbrechen';

  @override
  String get deleteConfirm =>
      'Diesen Eintrag in den Papierkorb verschieben? Sie können ihn wiederherstellen, bis der Papierkorb geleert wird.';

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
  String get settingsBackup => 'Sicherung';

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
  String get copyTimer => 'Zwischenablage-Timer';

  @override
  String get copyTimerHint =>
      'Kopierte Daten werden nach dieser Zeit aus der Zwischenablage gelöscht und der Tresor bleibt bis dahin entsperrt.';

  @override
  String secondsShort(int seconds) {
    return '$seconds Sek.';
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
  String get avoidAmbiguous => 'Verwechselbare Zeichen vermeiden (O/0, l/1)';

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
  String get scanning => 'Wird gescannt...';

  @override
  String get ibanFound => 'IBAN gefunden';

  @override
  String get ibanNotFound =>
      'Keine gültige IBAN gefunden. Versuchen Sie es bei besserem Licht erneut oder wählen Sie eine Zeile unten aus.';

  @override
  String get ibanCorrected =>
      'Möglicherweise nach einem OCR-Fehler korrigiert. Sorgfältig prüfen.';

  @override
  String get pickLine => 'Tippen Sie auf eine Zeile, um sie zu verwenden';

  @override
  String get noTextFound => 'Kein Text gefunden.';

  @override
  String get cameraError =>
      'Kamera ist nicht verfügbar. Überprüfen Sie die Kameraerlaubnis.';

  @override
  String get editBeforeUse => 'Überprüfen und ggf. bearbeiten';

  @override
  String get useValue => 'Verwenden';

  @override
  String get scanIsThis => 'Ist das der richtige?';

  @override
  String get scanNo => 'Nein';

  @override
  String get scanYes => 'Ja';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Passwortmanager';

  @override
  String get tagline =>
      'SIEGELN Sie Ihre digitalen Daten.\n Keine Server. Nur Sie und Ihre Daten.\n MÜHÜR: Ihr digitaler Tresor, den nur Sie sehen können.';

  @override
  String get login => 'ANMELDEN';

  @override
  String get infoTitle => 'Über Muhur';

  @override
  String get infoBody =>
      'Muhur speichert Ihre Passwörter ausschließlich verschlüsselt auf diesem Gerät. Es gibt kein Konto und keinen Server.\n\nIhr Master-Passwort kann nicht wiederhergestellt werden. Wenn Sie es vergessen, können Ihre Daten nicht geöffnet werden. Bewahren Sie daher ein verschlüsseltes Backup auf.';

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
  String get sectionExperience => 'ERFAHRUNG';

  @override
  String get sectionAppearance => 'ERSCHEINUNGSBILD';

  @override
  String get panelDarkness => 'Panel-Dunkelheit';

  @override
  String get panelDarknessDesc =>
      'Macht Panels und Karten mehr oder weniger transparent';

  @override
  String get backgroundTitle => 'Hintergrund';

  @override
  String get backgroundDim => 'Hintergrundabdunkelung';

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
  String get helpAnimation => 'Hilfe-Animation';

  @override
  String get helpAnimationDesc =>
      'Lässt das Hilfe-Icon beim ersten Start wackeln und leuchten, damit es auffällt';

  @override
  String get smartGuide => 'Intelligente Führung';

  @override
  String get smartGuideDesc =>
      'Zeigt kurze Tipps, wenn Sie eine Funktion zum ersten Mal verwenden';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Gibt eine kurze Vibration beim Entsperren per Fingerabdruck und beim Kopieren';

  @override
  String get reduceAnimations => 'Animationen reduzieren';

  @override
  String get reduceAnimationsDesc =>
      'Schaltet Hilfe-Menü-Animation, Icon-Wackeln und Seitenübergänge aus. Ideal für langsamere Geräte';

  @override
  String get resetTips => 'Tipps zurücksetzen';

  @override
  String get resetTipsDesc => 'Hilfe-Animation und alle Tipps erneut anzeigen';

  @override
  String get tipsResetDone => 'Tipps werden wieder angezeigt';

  @override
  String get tipLongPress =>
      'Tipp: Drücken Sie lange auf einen Eintrag, um ihn auszuwählen, und löschen Sie mehrere auf einmal.';

  @override
  String get statTotal => 'Gesamt';

  @override
  String get statReused => 'Wiederverwendet';

  @override
  String get planFree => 'KOSTENLOS';

  @override
  String get statusScreen => 'Bildschirmschutz';

  @override
  String get screenshotAllow => 'Screenshots erlauben';

  @override
  String get screenshotAllowHint =>
      'Der Bildschirmschutz wird für die unten eingestellte Zeit ausgeschaltet und schaltet sich danach automatisch wieder ein.';

  @override
  String get screenshotTimer => 'Screenshot-Zeit';

  @override
  String get statusBackup => 'Automatische Sicherung';

  @override
  String get statusScreenOn =>
      'Bildschirmschutz ist aktiv: Screenshots und Bildschirmaufnahmen sind blockiert';

  @override
  String get statusScreenOff =>
      'Bildschirmschutz ist vorübergehend aus: Screenshots sind erlaubt';

  @override
  String get statusBackupOn => 'Automatische Sicherung ist aktiv';

  @override
  String get statusBackupOff => 'Automatische Sicherung ist aus';

  @override
  String get helpStatusScreen =>
      'Schild-Icon: Bildschirmschutz (Grün = An, Ausgebleicht = Aus)';

  @override
  String get helpStatusBackup =>
      'Backup-Icon: Automatische Sicherung (Grün = An, Ausgebleicht = Aus)';

  @override
  String get helpTitle => 'Hilfe';

  @override
  String get helpBody => 'Hilfeinhalte werden hier hinzugefügt.';

  @override
  String get helpMenuTitle => 'Wie benutzt man es?';

  @override
  String get helpAdd => '+ Taste: Neuen Eintrag hinzufügen';

  @override
  String get helpTap => 'Karte tippen: Details anzeigen';

  @override
  String get helpLongPress => 'Lange drücken: Auswählen und löschen';

  @override
  String get helpSearch => 'Suche: Schnell finden';

  @override
  String get helpCategories => 'Kategorien: Einträge filtern';

  @override
  String get helpLock => 'Schloss-Icon: Tresor sofort sperren';

  @override
  String get helpSettings =>
      'Einstellungen: Backup, automatische Sperre und mehr';

  @override
  String get helpStats => 'Unteres Panel: Tresor-Zusammenfassung';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ausgewählte Einträge',
      one: '1 ausgewählten Eintrag',
    );
    return '$_temp0 in den Papierkorb verschieben?';
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
  String get fcExpiryDate => 'Ablaufdatum';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Kundendienstnummer';

  @override
  String get fcCustomerNoTc => 'Kundennummer / Steuernummer';

  @override
  String get fcBranchNameCode => 'Filialname & -code';

  @override
  String get fcAccountType => 'Kontotyp';

  @override
  String get fcPhoneBankingPassword => 'Telefon-Banking-Passwort';

  @override
  String get fcSwiftBic => 'SWIFT / BIC-Code';

  @override
  String get fcCardStatementDate => 'Auszugs- & Fälligkeitsdatum';

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
  String get fcSecurityQA => 'Sicherheitsfrage & -antwort';

  @override
  String get fcPasswordChangeDate => 'Passwort-Änderungsdatum';

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
  String get fc2faSecretKey => '2FA-Geheimschlüssel';

  @override
  String get fcServiceName => 'Organisation / Dienstname';

  @override
  String get fcCompanyName => 'Unternehmensname';

  @override
  String get fcCorporateUserId => 'Benutzername / Unternehmens-ID';

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
  String get fcRegistryNo => 'Registernummer / Händlernummer';

  @override
  String get fcIpVpn => 'IP-Beschränkung / VPN-Adresse';

  @override
  String get fcLicenseExpiry => 'Portal- / Lizenzablaufdatum';

  @override
  String get fcSiteName => 'Site- / Dienstname';

  @override
  String get fcWebAddress => 'Webadresse (URL)';

  @override
  String get fcUsernameEmail => 'Benutzername / E-Mail';

  @override
  String get fcSubscriptionFee => 'Abonnementgebühr & -zeitraum';

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
