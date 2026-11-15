// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Banken';

  @override
  String get catWebsites => 'Websites';

  @override
  String get catEmails => 'E-mails';

  @override
  String get catSocial => 'Social media';

  @override
  String get catBusiness => 'Werk';

  @override
  String get catOther => 'Overig';

  @override
  String get setupTitle => 'Hoofdwachtwoord maken';

  @override
  String get setupInfo =>
      'Dit wachtwoord kan niet worden hersteld. Als je het vergeet, kunnen je gegevens nooit meer worden geopend.';

  @override
  String get masterPassword => 'Hoofdwachtwoord';

  @override
  String get confirmPassword => 'Wachtwoord bevestigen';

  @override
  String get changeMasterPassword => 'Hoofdwachtwoord wijzigen';

  @override
  String get currentPassword => 'Huidig wachtwoord';

  @override
  String get newPassword => 'Nieuw wachtwoord';

  @override
  String get newPasswordSame =>
      'Het nieuwe wachtwoord moet anders zijn dan het huidige.';

  @override
  String get change => 'Wijzigen';

  @override
  String get masterPasswordChanged => 'Hoofdwachtwoord gewijzigd.';

  @override
  String get changePasswordFailed =>
      'Wachtwoord kon niet worden gewijzigd. Probeer het opnieuw.';

  @override
  String get passwordTooShort => 'Gebruik minstens 8 tekens.';

  @override
  String get passwordNeedsMix =>
      'Gebruik kleine letters, hoofdletters en een cijfer.';

  @override
  String get reqLength => 'Minstens 8 tekens';

  @override
  String get reqLower => 'Een kleine letter';

  @override
  String get reqUpper => 'Een hoofdletter';

  @override
  String get reqDigit => 'Een cijfer';

  @override
  String get reqSpecial => 'Een speciaal teken (!@#...) – optioneel';

  @override
  String get reqOptional => 'optioneel';

  @override
  String get passwordsDontMatch => 'Wachtwoorden komen niet overeen.';

  @override
  String get createVault => 'Maken';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Openen';

  @override
  String get wrongPassword => 'Onjuist hoofdwachtwoord.';

  @override
  String lockedOut(int seconds) {
    return 'Te veel pogingen. Probeer het over $seconds seconden opnieuw.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Biometrisch ontgrendelen inschakelen?';

  @override
  String get enable => 'Inschakelen';

  @override
  String get notNow => 'Niet nu';

  @override
  String get biometricReason => 'Muhur ontgrendelen';

  @override
  String get lockNow => 'Vergrendel';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Alles';

  @override
  String get noEntries => 'Nog geen items';

  @override
  String get searchHint => 'Zoek titel, domein, tag';

  @override
  String get addEntry => 'Nieuw item';

  @override
  String get editEntry => 'Item bewerken';

  @override
  String get title => 'Titel';

  @override
  String get category => 'Categorie';

  @override
  String get domain => 'Domein (bijv. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Velden';

  @override
  String get addField => 'Nieuw veld';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Tekst';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Waarde verbergen';

  @override
  String get save => 'Opslaan';

  @override
  String get delete => 'Verwijderen';

  @override
  String get moveToTrash => 'Naar prullenbak';

  @override
  String get trash => 'Prullenbak';

  @override
  String get trashKeepFor => 'Bewaren in prullenbak';

  @override
  String get trashHint =>
      'Verwijderde items blijven versleuteld in de prullenbak en kunnen worden hersteld. Na dit aantal dagen worden ze definitief verwijderd, de volgende keer dat de kluis wordt ontgrendeld. Een kortere periode verwijdert ook oudere items uit de prullenbak. Het legen van de prullenbak kan niet ongedaan worden gemaakt.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Prullenbak';

  @override
  String get trashEmpty => 'De prullenbak is leeg.';

  @override
  String get restore => 'Herstellen';

  @override
  String get deleteForever => 'Wissen';

  @override
  String get deleteForeverConfirm =>
      'Dit item definitief verwijderen? Dit kan niet ongedaan worden gemaakt.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nog $count dagen',
      one: 'nog 1 dag',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Legen';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0 definitief uit de prullenbak verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get cancel => 'Annuleren';

  @override
  String get deleteConfirm =>
      'Dit item naar de prullenbak verplaatsen? Je kunt het herstellen totdat de prullenbak wordt geleegd.';

  @override
  String get titleRequired => 'Titel is verplicht.';

  @override
  String get fieldUsername => 'Gebruikersnaam';

  @override
  String get fieldPassword => 'Wachtwoord';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notities';

  @override
  String get copy => 'Kopiëren';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Instellingen';

  @override
  String get settingsSecurity => 'Beveiliging';

  @override
  String get settingsBackup => 'Back-up';

  @override
  String get settingsGeneral => 'Algemeen';

  @override
  String get settingsAbout => 'Over';

  @override
  String get autoLock => 'Auto-vergrendeling';

  @override
  String get immediately => 'Direct';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Kopieertimer';

  @override
  String get copyTimerHint =>
      'Gekopieerde gegevens worden na deze tijd van het klembord gewist, en de kluis blijft tot dan ontgrendeld.';

  @override
  String secondsShort(int seconds) {
    return '$seconds sec';
  }

  @override
  String get biometricUnlock => 'Biometrie';

  @override
  String get generator => 'Generator';

  @override
  String get generate => 'Genereren';

  @override
  String get length => 'Lengte';

  @override
  String get lowercase => 'Kleine letters (a-z)';

  @override
  String get uppercase => 'Hoofdletters (A-Z)';

  @override
  String get digits => 'Cijfers (0-9)';

  @override
  String get symbols => 'Symbolen (!@#...)';

  @override
  String get avoidAmbiguous => 'Geen gelijkende tekens (O/0, l/1)';

  @override
  String get regenerate => 'Nieuw';

  @override
  String get usePassword => 'Gebruiken';

  @override
  String get strengthWeak => 'Zwak';

  @override
  String get strengthFair => 'Matig';

  @override
  String get strengthGood => 'Goed';

  @override
  String get strengthStrong => 'Sterk';

  @override
  String get scan => 'Scannen';

  @override
  String get scanHint =>
      'Houd de camera stil boven de tekst. In IBAN-modus wordt deze automatisch herkend.';

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
      'Mogelijk gecorrigeerd na een OCR-fout. Controleer zorgvuldig.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Camera is niet beschikbaar. Controleer de cameratoestemming.';

  @override
  String get editBeforeUse => 'Controleren en bewerken';

  @override
  String get useValue => 'Gebruiken';

  @override
  String get scanIsThis => 'Is dit het?';

  @override
  String get scanNo => 'Nee';

  @override
  String get scanYes => 'Ja';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Wachtwoordbeheerder';

  @override
  String get tagline =>
      'VERZEGEL je digitale gegevens.\nGeen servers. Alleen jij en je gegevens.\nMÜHÜR: het veiligste slot voor je digitale geheugen.';

  @override
  String get login => 'OPENEN';

  @override
  String get infoTitle => 'Over Muhur';

  @override
  String get infoBody =>
      'Muhur bewaart je wachtwoorden versleuteld, alleen op dit apparaat. Er is geen account en geen server.\n\nJe hoofdwachtwoord kan niet worden hersteld. Als je het vergeet, kunnen je gegevens niet worden geopend, dus bewaar een versleutelde back-up.';

  @override
  String get understandNoRecovery =>
      'Ik begrijp dat een vergeten hoofdwachtwoord niet kan worden hersteld.';

  @override
  String get close => 'Sluiten';

  @override
  String get language => 'Taal';

  @override
  String get languageSystem => 'Systeemstandaard';

  @override
  String get sectionLanguage => 'TAAL';

  @override
  String get sectionExperience => 'ERVARING';

  @override
  String get sectionAppearance => 'WEERGAVE';

  @override
  String get panelDarkness => 'Paneeldonkerte';

  @override
  String get panelDarknessDesc =>
      'Maakt panelen en kaarten meer of minder doorzichtig';

  @override
  String get backgroundTitle => 'Achtergrond';

  @override
  String get backgroundDim => 'Dimmen';

  @override
  String get backgroundDimDesc =>
      'Maakt de achtergrondafbeelding donkerder of lichter';

  @override
  String get bgBronze => 'Brons';

  @override
  String get bgEmber => 'Gloed';

  @override
  String get bgSapphire => 'Saffier';

  @override
  String get bgObsidian => 'Obsidiaan';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Slimme tips';

  @override
  String get smartGuideDesc =>
      'Toont korte tips wanneer je een functie voor het eerst gebruikt';

  @override
  String get haptics => 'Trillen';

  @override
  String get hapticsDesc =>
      'Korte trilling bij ontgrendelen met vingerafdruk en bij kopiëren';

  @override
  String get reduceAnimations => 'Geen animaties';

  @override
  String get reduceAnimationsDesc =>
      'Schakelt alle animaties in de app uit: het wiebelen en gloeien van het help-icoon, het helpmenu, paginaovergangen, dialogen en de scannerlijn. Handig op tragere apparaten en voor mensen die gevoelig zijn voor beweging.';

  @override
  String get resetTips => 'Tips resetten';

  @override
  String get resetTipsDesc => 'Help-animatie en alle tips opnieuw tonen';

  @override
  String get tipsResetDone => 'Tips worden opnieuw getoond';

  @override
  String get tipLongPress =>
      'Tip: houd een item ingedrukt om het te selecteren en verwijder er dan meerdere tegelijk.';

  @override
  String get statTotal => 'Totaal';

  @override
  String get statReused => 'Hergebruikt';

  @override
  String get planFree => 'GRATIS';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Screenshots toestaan';

  @override
  String get screenshotAllowHint =>
      'Schermbeveiliging wordt uitgeschakeld voor de hieronder ingestelde tijd en daarna automatisch weer ingeschakeld.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'VERSLEUTELDE BACK-UP';

  @override
  String get backupExport => 'Back-up maken';

  @override
  String get backupExportDesc =>
      'Slaat alle items op, inclusief de prullenbak, in een bestand dat beschermd is met een back-upwachtwoord. Bewaar het bestand op een veilige plek.';

  @override
  String get backupImport => 'Herstellen';

  @override
  String get backupImportDesc =>
      'Voegt de items uit een back-upbestand toe. Bestaande items worden nooit overschreven of verwijderd.';

  @override
  String get backupPasswordTitle => 'Back-upwachtwoord';

  @override
  String get backupPasswordInfo =>
      'Dit wachtwoord beschermt het back-upbestand. Het mag anders zijn dan je hoofdwachtwoord. Als je het vergeet, kan de back-up niet worden geopend.';

  @override
  String get backupEnterPassword => 'Voer het back-upwachtwoord in';

  @override
  String get backupContinue => 'Volgende';

  @override
  String get backupSaved => 'Back-up opgeslagen';

  @override
  String get backupFailed => 'Back-up kon niet worden gemaakt';

  @override
  String backupRestored(int added, int skipped) {
    return '$added toegevoegd, $skipped bestonden al';
  }

  @override
  String get backupWrongPassword => 'Onjuist back-upwachtwoord';

  @override
  String get backupInvalidFile => 'Dit is geen geldig Muhur-back-upbestand';

  @override
  String get backupReminderTitle => 'Back-upherinnering';

  @override
  String get backupReminderDesc =>
      'Herinnert je op het startscherm wanneer je laatste back-up ouder is dan dit. Zet op 0 om uit te schakelen.';

  @override
  String get backupReminderOff => 'Uit';

  @override
  String get backupReminderNever =>
      'Je hebt nog geen back-up gemaakt. Maak er nu een, zodat je je wachtwoorden niet kwijtraakt.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Je laatste back-up was $days dagen geleden.',
      one: 'Je laatste back-up was 1 dag geleden.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Back-up';

  @override
  String get backupReminderLater => 'Later';

  @override
  String get statusScreenOn =>
      'Schermbeveiliging aan: screenshots en schermopnames zijn geblokkeerd';

  @override
  String get statusScreenOff =>
      'Schermbeveiliging tijdelijk uit: screenshots zijn toegestaan';

  @override
  String get statusBackupNever =>
      'Nog geen back-up. Maak er een via Instellingen > Back-up';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Laatste back-up: $days dagen geleden',
      one: 'Laatste back-up: gisteren',
      zero: 'Vandaag geback-upt',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Back-up te laat: de laatste was $days dagen geleden',
      one: 'Back-up te laat: de laatste was 1 dag geleden',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items in prullenbak',
      one: '1 item in prullenbak',
      zero: 'Prullenbak is leeg',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Biometrisch ontgrendelen staat aan';

  @override
  String get statusBiometricOff =>
      'Biometrisch ontgrendelen staat uit (tik om in te stellen)';

  @override
  String get helpStatusScreen =>
      'Schildicoon: schermbeveiliging (groen = aan, vaag = uit)';

  @override
  String get helpStatusBackup =>
      'Back-upicoon: back-upstatus (groen = recente back-up, vaag = back-up nodig)';

  @override
  String get helpStatusTrash =>
      'Prullenbakicoon: verwijderde items (getal = wachtende items, tik om te openen)';

  @override
  String get helpStatusBiometric =>
      'Vingerafdrukicoon: biometrisch ontgrendelen (groen = aan, tik om te wijzigen)';

  @override
  String get helpTitle => 'Help';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Hoe gebruik je het?';

  @override
  String get helpAdd => '+-knop: nieuw item toevoegen';

  @override
  String get helpTap => 'Tik op een kaart: details bekijken';

  @override
  String get helpLongPress => 'Lang indrukken: selecteren en verwijderen';

  @override
  String get helpSearch => 'Zoeken: snel vinden';

  @override
  String get helpCategories => 'Categorieën: items filteren';

  @override
  String get helpLock => 'Slot-icoon: kluis nu vergrendelen';

  @override
  String get helpSettings =>
      'Instellingen: back-up, auto-vergrendeling en meer';

  @override
  String get helpStats => 'Onderste paneel: kluisoverzicht';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count geselecteerde items naar de prullenbak verplaatsen?',
      one: 'Geselecteerd item naar de prullenbak verplaatsen?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Banknaam';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Wachtwoord internetbankieren';

  @override
  String get fcCardPin => 'Pincode kaart';

  @override
  String get fcCardNumber => 'Kaartnummer';

  @override
  String get fcExpiryDate => 'Vervaldatum';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Klantenservicenr.';

  @override
  String get fcCustomerNoTc => 'Klantnr. / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Rekeningtype';

  @override
  String get fcPhoneBankingPassword => 'Telefonisch wachtwoord';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Afschrift / Vervaldag';

  @override
  String get fcAccountTitle => 'Rekeninghouder';

  @override
  String get fcEmailAddress => 'E-mailadres';

  @override
  String get fcRecoveryEmail => 'Herstel-e-mail';

  @override
  String get fcRecoveryPhone => 'Herstelnummer';

  @override
  String get fc2faBackupCodes => '2FA / Back-upcodes';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Beveiligingsvraag';

  @override
  String get fcPasswordChangeDate => 'Wachtwoord gewijzigd';

  @override
  String get fcPlatformTitle => 'Platform / Titel';

  @override
  String get fcUsernameProfileId => 'Gebruikersnaam / Profiel-ID';

  @override
  String get fcRegisteredEmail => 'Geregistreerd e-mailadres';

  @override
  String get fcRegisteredPhone => 'Geregistreerd nummer';

  @override
  String get fcProfileUrl => 'Profiel-URL';

  @override
  String get fcAccountTypeStatus => 'Accounttype / Status';

  @override
  String get fcLinkedMainAccount => 'Gekoppeld account';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => '2FA-geheime sleutel';

  @override
  String get fcServiceName => 'Organisatie';

  @override
  String get fcCompanyName => 'Bedrijfsnaam';

  @override
  String get fcCorporateUserId => 'Gebruikersnaam / Bedrijfs-ID';

  @override
  String get fcPanelUrl => 'Panel-URL';

  @override
  String get fcDepartmentPosition => 'Afdeling / Functie';

  @override
  String get fcLicenseCode => 'Klant / Licentie';

  @override
  String get fcSupportContact => 'Supportcontact';

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
  String get fcSiteName => 'Sitenaam';

  @override
  String get fcWebAddress => 'Website-URL';

  @override
  String get fcUsernameEmail => 'Gebruikersnaam / E-mail';

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
  String get pickFieldTitle => 'Kies een veld';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Generatorinstellingen';

  @override
  String get saveAndExit => 'Opslaan';

  @override
  String get customField => 'Eigen veld';

  @override
  String get customFieldName => 'Veldnaam';

  @override
  String get customFieldType => 'Veldtype';

  @override
  String get customTypeText => 'Tekst';

  @override
  String get customTypeNote => 'Notitie';

  @override
  String get customTypePassword => 'Wachtwoord';

  @override
  String get customTypeDate => 'Datum';

  @override
  String get customTypePhone => 'Telefoon';

  @override
  String get orphanVaultTitle => 'Oude kluis gevonden';

  @override
  String get orphanVaultBody =>
      'Er staat een oud kluisbestand op dit apparaat, maar de sleutels kunnen niet worden gelezen, dus het kan niet worden geopend. Als je doorgaat, worden die oude gegevens verwijderd. Heb je een back-up, maak dan een nieuwe kluis en herstel de back-up daarna.';

  @override
  String get orphanVaultReplace => 'Verwijderen en doorgaan';

  @override
  String get forgotOldPassword => 'Ik weet mijn huidige wachtwoord niet meer';

  @override
  String get useCurrentPassword => 'Toch mijn huidige wachtwoord gebruiken';

  @override
  String get forgotPasswordBioHint =>
      'Bevestig met je vingerafdruk of gezicht om een nieuw hoofdwachtwoord in te stellen. Je items blijven zoals ze zijn.';

  @override
  String get bioConfirmFailed =>
      'Biometrische bevestiging mislukt of geannuleerd.';

  @override
  String get biometricChangedBody =>
      'Je vingerafdruk- of gezichtsinstellingen zijn gewijzigd, dus biometrisch inloggen is voor je veiligheid uitgeschakeld.';

  @override
  String get limitReachedTitle => 'Gratis limiet bereikt';

  @override
  String limitReachedBody(int count) {
    return 'De gratis versie bewaart tot $count items per categorie. Verwijder een item of stap over op Pro voor onbeperkte items.';
  }

  @override
  String get scanLimitTitle => 'Gratis scans opgebruikt';

  @override
  String scanLimitBody(int count) {
    return 'Je hebt je $count gratis scans gebruikt. Stap over op Pro om onbeperkt te scannen.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added toegevoegd, $limited niet hersteld (gratis limiet bereikt). Je back-upbestand is niet gewijzigd.';
  }
}
