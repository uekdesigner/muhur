// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => 'Openen';

  @override
  String get wrongPassword => 'Onjuist hoofdwachtwoord.';

  @override
  String lockedOut(int seconds) {
    return 'Te veel pogingen. Probeer het over $seconds seconden opnieuw.';
  }

  @override
  String get enableBiometricsQ => 'Biometrisch ontgrendelen inschakelen?';

  @override
  String get enable => 'Inschakelen';

  @override
  String get notNow => 'Niet nu';

  @override
  String get biometricReason => 'MÜHÜR ontgrendelen';

  @override
  String get lockNow => 'Vergrendel';

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
  String get typeText => 'Tekst';

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
  String get scanning => 'Scannen...';

  @override
  String get ibanCorrected =>
      'Mogelijk gecorrigeerd na een OCR-fout. Controleer zorgvuldig.';

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
  String get infoTitle => 'Over MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR bewaart je wachtwoorden versleuteld, alleen op dit apparaat. Er is geen account en geen server.\n\nJe hoofdwachtwoord kan niet worden hersteld. Als je het vergeet, kunnen je gegevens niet worden geopend, dus bewaar een versleutelde back-up.';

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
  String get screenshotAllow => 'Screenshots toestaan';

  @override
  String get screenshotAllowHint =>
      'Schermbeveiliging wordt uitgeschakeld voor de hieronder ingestelde tijd en daarna automatisch weer ingeschakeld.';

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
  String get backupInvalidFile => 'Dit is geen geldig MÜHÜR-back-upbestand';

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
  String get fcSiteName => 'Sitenaam';

  @override
  String get fcWebAddress => 'Website-URL';

  @override
  String get fcUsernameEmail => 'Gebruikersnaam / E-mail';

  @override
  String get pickFieldTitle => 'Kies een veld';

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
      'Bevestig met je vingerafdruk om een nieuw hoofdwachtwoord in te stellen. Je items blijven zoals ze zijn.';

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

  @override
  String get aboutProtectionTitle => 'Zo worden je gegevens beschermd';

  @override
  String get aboutProtectionBody =>
      'Alles wat je opslaat, wordt op deze telefoon met sterke versleuteling vergrendeld. Alleen je hoofdwachtwoord kan het openen; het wordt nergens opgeslagen, ook niet door MÜHÜR. Zonder dat wachtwoord zijn de gegevens onleesbaar.';

  @override
  String get aboutOfflineTitle => 'Werkt offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR maakt nooit verbinding met internet. Er is geen account, geen server en geen cloud. Je wachtwoorden blijven op deze telefoon, tenzij je ze zelf exporteert, als versleutelde back-up of als Excel-bestand.';

  @override
  String get aboutRights => 'Alle rechten voorbehouden.';

  @override
  String statusClipboard(int seconds) {
    return 'Klembord wordt over $seconds sec gewist. Tik om nu te wissen.';
  }

  @override
  String get helpStatusClipboard =>
      'Klembordicoon: gekopieerde waarde (getal = seconden tot wissen, tik om nu te wissen)';

  @override
  String aboutVersionLine(String version) {
    return 'Versie $version';
  }

  @override
  String get aboutReleaseNotes => 'Release-opmerkingen';

  @override
  String get aboutHowTitle => 'Zo werkt het';

  @override
  String get aboutStoryTitle => 'Het verhaal van MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Wie zit er achter MÜHÜR';

  @override
  String get aboutPrivacySection => 'PRIVACYBELEID';

  @override
  String get aboutPermissionsTitle => 'Toestemmingen en gegevens';

  @override
  String get aboutSupportSection => 'ONDERSTEUNING';

  @override
  String get aboutRate => 'Beoordelen op Google Play';

  @override
  String get aboutRateDesc =>
      'Geef een beoordeling of schrijf een review op de Store-pagina';

  @override
  String get aboutInBrief => 'In het kort';

  @override
  String get aboutTechnical => 'Technische details';

  @override
  String get aboutProtectionTech =>
      '• De kluis wordt versleuteld met een willekeurige sleutel van 256 bits. Die sleutel wordt verzegeld met AES-256-GCM, met een sleutel die met Argon2id (32 MiB geheugen, 3 rondes) uit je hoofdwachtwoord wordt afgeleid. De afleidingsinstellingen zijn aan het zegel gekoppeld, dus knoeien wordt opgemerkt.\n• De database is versleuteld met SQLCipher; de sleutel wordt met HKDF-SHA256 uit de kluissleutel afgeleid.\n• Gevoelige velden worden nogmaals versleuteld met AES-256-GCM en gekoppeld aan hun item en veld.\n• Na 5 verkeerde wachtwoorden wacht de app 30 seconden, telkens het dubbele, tot maximaal 1 uur. De klok van de telefoon verzetten maakt het wachten niet korter.\n• Biometrisch ontgrendelen accepteert alleen sterke biometrie (klasse 3) en schakelt zichzelf uit als er een nieuwe vingerafdruk of een nieuw gezicht wordt toegevoegd. Op de meeste telefoons haalt gezichtsherkenning dit niveau niet, dus meestal kan alleen de vingerafdruk worden gebruikt.\n• Screenshots en schermopnames worden geblokkeerd, de kluis vergrendelt zodra je de app verlaat, en gekopieerde waarden worden als gevoelig gemarkeerd en automatisch gewist.';

  @override
  String get aboutOfflineTech =>
      '• De gepubliceerde versie van de app heeft geen internet- of netwerktoestemming; die wordt verwijderd, zelfs als een bibliotheek erom vraagt.\n• Cloudback-up en overzetten naar een ander apparaat staan uit: de gegevens van de app worden niet van de telefoon gekopieerd.\n• Tekstherkenning gebruikt een model dat in de app zit en draait op de telefoon; camerabeelden worden in het geheugen verwerkt en nooit opgeslagen.\n• Gegevens verlaten de telefoon alleen als je ze zelf exporteert: als versleuteld back-upbestand of als onversleuteld Excel-bestand waarvan de veiligheid jouw verantwoordelijkheid is.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR verzamelt geen persoonsgegevens, toont geen advertenties, gebruikt geen analysetools en deelt niets met anderen. De app vraagt alleen om de camera (om tekst te scannen) en biometrie (om te ontgrendelen). Abonnementen worden door Google Play beheerd; de app ziet je betaalgegevens nooit. Als je de app verwijdert, worden al haar gegevens verwijderd. Daarvoor kun je je items naar Excel exporteren; de veiligheid van dat bestand is jouw verantwoordelijkheid.';

  @override
  String get aboutPermissionsTech =>
      '• Camera: alleen gebruikt als de scanner open is; er worden geen foto\'s bewaard en geen geluid opgenomen.\n• Biometrie: je vingerafdruk of gezicht wordt gecontroleerd door het systeemvenster van de telefoon; MÜHÜR krijgt die gegevens nooit.\n• Bestanden: alleen toegang als je zelf een plek kiest om een back-up of Excel-bestand op te slaan of te openen.\n• Geen account, geen server, geen tracking- of advertentie-ID\'s.\n• Downloaden en een abonnement kopen verloopt via Google Play, volgens het privacybeleid van Google.';

  @override
  String get how1T => 'Kluis en hoofdwachtwoord';

  @override
  String get how1B =>
      'Alles staat in een versleutelde kluis op deze telefoon. Alleen je hoofdwachtwoord opent hem. Het is niet te herstellen: kies er een die je onthoudt en maak een back-up.';

  @override
  String get how2T => 'Items en categorieën';

  @override
  String get how2B =>
      'De categorieën liggen vast: Banken, Websites, E-mails, Social media, Werk en Overig. Als je met de +-knop een item toevoegt, kies je de categorie; die brengt de passende velden mee. Nieuwe categorieën kun je niet maken, maar met \'Nieuw veld\' voeg je velden aan een item toe: kies er een uit de lijst of maak een \'Eigen veld\' met een zelfgekozen naam.';

  @override
  String get how3T => 'Veilig kopiëren';

  @override
  String get how3B =>
      'Tik op een veld om het te kopiëren. Het klembord wist zichzelf na de ingestelde tijd. Het icoon op het startscherm telt af; tik erop om meteen te wissen.';

  @override
  String get how4T => 'Scannen met de camera';

  @override
  String get how4B =>
      'Richt de camera op een kaart of document om een IBAN of tekst te lezen in plaats van te typen. Controleer het resultaat voordat je opslaat.';

  @override
  String get how5T => 'Prullenbak';

  @override
  String get how5B =>
      'Verwijderde items wachten versleuteld in de prullenbak en zijn te herstellen tot de ingestelde periode voorbij is.';

  @override
  String get how6T => 'Back-up en herstel';

  @override
  String get how6B =>
      'Maak een versleuteld back-upbestand met een eigen wachtwoord en bewaar het op een veilige plek. Herstellen voegt alleen items toe; bestaande worden nooit overschreven.';

  @override
  String get how7T => 'Vergrendeling en biometrie';

  @override
  String get how7B =>
      'De kluis vergrendelt zodra je de app verlaat. Zet biometrie aan om hem met je vingerafdruk te openen (of met je gezicht op telefoons die dat ondersteunen).';

  @override
  String get storyBody =>
      'Elke grote uitvinding begint met iemand die een klein probleem in het eigen leven wil oplossen. Het verhaal van MÜHÜR is precies dat: een oprechte maar vastberaden reis, geboren uit een geheugen dat verdwaalt in de chaos van de digitale wereld en uit het instinct om te beschermen wat van jou is.\n\nHet begon allemaal met die vervelende pauze door één vergeten wachtwoord. Ik ontwierp MÜHÜR als een persoonlijke schuilplaats die alleen op mijn eigen apparaat draait, zonder afhankelijk te zijn van andermans cloudservers. Na verloop van tijd besefte ik dat meer mensen hun digitale privacy terug wilden.\n\nVandaag is MÜHÜR er voor iedereen die zijn gegevens volledig in eigen hand wil houden, zonder ze aan een server toe te vertrouwen.\n\nVerzegel het veiligste slot op je digitale geheugen.';

  @override
  String get devBody =>
      'MÜHÜR is een onafhankelijk project van UEK DESIGNER, ontworpen en ontwikkeld in Turkije. Bedankt dat je MÜHÜR gebruikt.';

  @override
  String get rn100 =>
      '• Eerste versie.\n• Versleutelde kluis op de telefoon, geopend met een hoofdwachtwoord (Argon2id + AES-256).\n• Kant-en-klare velden voor banken, websites, e-mail, sociale media en zakelijke accounts.\n• Wachtwoordgenerator met sterkte-indicator.\n• IBAN\'s en tekst scannen met de camera.\n• Ontgrendelen met vingerafdruk (en gezicht op ondersteunde telefoons).\n• Versleutelde back-up en herstel.\n• Exporteren naar Excel (onversleuteld, op eigen verantwoordelijkheid).\n• Prullenbak die zichzelf opruimt.\n• Kluisoverzicht met hergebruikte wachtwoorden.\n• Automatische vergrendeling, schermbeveiliging en aftellen van het klembord.\n• Werkt volledig offline.\n• 18 talen.';

  @override
  String get excelExport => 'Exporteren naar Excel';

  @override
  String get excelExportDesc =>
      'Onversleuteld .xlsx-bestand van je items, bijvoorbeeld voordat je de app verwijdert';

  @override
  String get excelExportWarnTitle => 'Onversleutelde export';

  @override
  String get excelExportWarn =>
      'Het Excel-bestand is NIET versleuteld. Iedereen die het bestand in handen krijgt, kan al je wachtwoorden lezen. Waar je het bewaart, met wie je het deelt en het daarna verwijderen zijn volledig jouw verantwoordelijkheid. Items in de prullenbak worden niet meegenomen.';

  @override
  String get excelExportAgree =>
      'Ik begrijp het: de veiligheid van het bestand is mijn verantwoordelijkheid.';

  @override
  String get excelExportSaved =>
      'Excel-bestand opgeslagen. Verwijder het als je het niet meer nodig hebt.';

  @override
  String get excelExportFailed => 'Het Excel-bestand kon niet worden gemaakt.';

  @override
  String get excelColDomain => 'Domein';

  @override
  String get excelColUpdated => 'Laatst gewijzigd';

  @override
  String get how8T => 'Exporteren naar Excel';

  @override
  String get how8B =>
      '\'Exporteren naar Excel\' in de back-upinstellingen schrijft al je items (behalve de prullenbak) naar een .xlsx-bestand, met één tabblad per categorie. Het bestand is niet versleuteld: je bevestigt met je hoofdwachtwoord en accepteert dat de veiligheid ervan jouw verantwoordelijkheid is. Verwijder het als je het niet meer nodig hebt.';

  @override
  String get proFeatureTitle => 'Pro-functie';

  @override
  String get proFieldsBody =>
      'Extra velden aan een item toevoegen is een Pro-functie. Velden die je al hebt toegevoegd blijven staan en kun je nog bewerken.';

  @override
  String get proBiometricBody =>
      'Ontgrendelen met vingerafdruk is een Pro-functie. Je kunt altijd ontgrendelen met je hoofdwachtwoord.';

  @override
  String get proBackgroundsBody =>
      'Extra achtergronden zijn een Pro-functie. De standaardachtergrond is altijd beschikbaar.';

  @override
  String bioGraceWarn(String days) {
    return 'Ontgrendelen met vingerafdruk blijft nog $days aan en wordt daarna uitgeschakeld. Zorg dat je je hoofdwachtwoord weet. Ben je het vergeten, stel dan met je vingerafdruk een nieuw in via \'Hoofdwachtwoord wijzigen\' in Instellingen.';
  }

  @override
  String get genNewPassword => 'Nieuw wachtwoord genereren';

  @override
  String fieldRemoved(String label) {
    return 'Veld \'$label\' verwijderd';
  }

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get proStatusActive => 'Je Pro-abonnement is actief';

  @override
  String proStatusTrial(String days) {
    return 'Gratis proefperiode: nog $days';
  }

  @override
  String get proStatusFree => 'Gratis versie';

  @override
  String get proTrialInfo =>
      'Na de proefperiode ga je automatisch naar de gratis versie. Geen kaart nodig en er wordt niets verwijderd.';

  @override
  String get proFeatEntries => 'Onbeperkt items';

  @override
  String get proFeatEntriesDesc => 'Gratis: 3 per categorie';

  @override
  String get proFeatScan => 'Onbeperkt scannen met de camera';

  @override
  String get proFeatScanDesc => 'Gratis: 3 scans';

  @override
  String get proFeatFields => 'Extra en eigen velden';

  @override
  String get proFeatFieldsDesc => 'Voeg elk veld toe dat je nodig hebt';

  @override
  String get proFeatBio => 'Ontgrendelen met vingerafdruk';

  @override
  String get proFeatBioDesc => 'Open je kluis met één aanraking';

  @override
  String get proFeatBg => 'Alle achtergronden';

  @override
  String get proFeatBgDesc => 'Alle 5 achtergronden';

  @override
  String get proFeatHealth => 'Kluiscontrole';

  @override
  String get proFeatHealthDesc =>
      'Zie welke wachtwoorden zwak of hergebruikt zijn en ga direct naar het item';

  @override
  String get proFeatTotp => 'Codes voor tweestapsverificatie';

  @override
  String get proFeatTotpDesc => 'Codes worden offline in je kluis gemaakt';

  @override
  String get proFeatHistory => 'Wachtwoordgeschiedenis';

  @override
  String get proFeatHistoryDesc =>
      'Oude wachtwoorden blijven bewaard om terug te kijken';

  @override
  String get proYearly => 'Jaarlijks';

  @override
  String get proMonthly => 'Maandelijks';

  @override
  String get proPerYear => '/ jaar';

  @override
  String get proPerMonth => '/ maand';

  @override
  String get proBestValue => 'Voordeligst';

  @override
  String get proSubscribe => 'Abonneren';

  @override
  String get proRestore => 'Aankoop herstellen';

  @override
  String get proManage => 'Abonnement beheren';

  @override
  String get proFinePrint =>
      'Je betaalt via Google Play. Het abonnement wordt automatisch verlengd tot je het opzegt; dat kan altijd in Google Play. Als je abonnement afloopt, worden je items niet verwijderd.';

  @override
  String get proComingSoon =>
      'Aankopen worden mogelijk zodra MÜHÜR in Google Play verschijnt.';

  @override
  String get proSeePlans => 'Bekijk Pro';

  @override
  String get proHealthBody =>
      'Zien welke items zwakke of hergebruikte wachtwoorden hebben is een Pro-functie. De aantallen zijn altijd zichtbaar.';

  @override
  String get healthWeakHint =>
      'Kort of makkelijk te raden. Vervang ze met de wachtwoordgenerator.';

  @override
  String get healthReusedHint =>
      'Hetzelfde wachtwoord wordt in meerdere items gebruikt. Lekt er één uit, dan lopen de andere ook risico.';

  @override
  String get healthFairHint => 'Acceptabel, maar kan langer en gevarieerder.';

  @override
  String get healthAllGood =>
      'Geen zwakke of hergebruikte wachtwoorden. Je kluis is in goede staat.';

  @override
  String get proHistoryBody =>
      'Eerdere waarden van een wachtwoord bekijken is een Pro-functie. Wachtwoorden die je met Pro wijzigt, worden hier bewaard.';

  @override
  String get historyEmpty =>
      'Dit wachtwoord is nog niet gewijzigd. Als je het wijzigt, verschijnt de oude waarde hier.';

  @override
  String get historyNote =>
      'Per wachtwoordveld worden de laatste 10 waarden bewaard, versleuteld zoals de rest van je kluis. De geschiedenis zit niet in back-ups.';

  @override
  String get historyClearQ =>
      'Tik nog een keer op Verwijderen om de geschiedenis van dit veld te wissen.';

  @override
  String get totpHint => 'Instelsleutel of otpauth://-link';

  @override
  String get totpInvalid =>
      'Deze sleutel is ongeldig. Plak de instelsleutel van de website.';

  @override
  String get qrScan => 'QR-code scannen';

  @override
  String get qrScanHint =>
      'Richt de camera op de QR-code die de site toont bij het instellen van tweestapsverificatie.';

  @override
  String get qrNot2fa => 'Deze QR-code is geen 2FA-instelcode.';

  @override
  String get qrMigration =>
      'Dit is een overdrachtscode van Google Authenticator. Scan in plaats daarvan de instel-QR-code van elke site.';
}
