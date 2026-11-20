// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

  @override
  String get catBanks => 'Banker';

  @override
  String get catWebsites => 'Webbplatser';

  @override
  String get catEmails => 'E-post';

  @override
  String get catSocial => 'Sociala medier';

  @override
  String get catBusiness => 'Jobb';

  @override
  String get catOther => 'Övrigt';

  @override
  String get setupTitle => 'Skapa huvudlösenord';

  @override
  String get setupInfo =>
      'Lösenordet kan inte återställas. Om du glömmer det kan dina data aldrig öppnas.';

  @override
  String get masterPassword => 'Huvudlösenord';

  @override
  String get confirmPassword => 'Bekräfta lösenord';

  @override
  String get changeMasterPassword => 'Byt huvudlösenord';

  @override
  String get currentPassword => 'Nuvarande lösenord';

  @override
  String get newPassword => 'Nytt lösenord';

  @override
  String get newPasswordSame =>
      'Det nya lösenordet måste skilja sig från det nuvarande.';

  @override
  String get change => 'Byt';

  @override
  String get masterPasswordChanged => 'Huvudlösenordet har bytts.';

  @override
  String get changePasswordFailed =>
      'Det gick inte att byta lösenord. Försök igen.';

  @override
  String get passwordTooShort => 'Använd minst 8 tecken.';

  @override
  String get passwordNeedsMix =>
      'Använd små och stora bokstäver och en siffra.';

  @override
  String get reqLength => 'Minst 8 tecken';

  @override
  String get reqLower => 'En liten bokstav';

  @override
  String get reqUpper => 'En stor bokstav';

  @override
  String get reqDigit => 'En siffra';

  @override
  String get reqSpecial => 'Ett specialtecken (!@#...) – valfritt';

  @override
  String get reqOptional => 'valfritt';

  @override
  String get passwordsDontMatch => 'Lösenorden matchar inte.';

  @override
  String get createVault => 'Skapa';

  @override
  String get unlock => 'Öppna';

  @override
  String get wrongPassword => 'Fel huvudlösenord.';

  @override
  String lockedOut(int seconds) {
    return 'För många försök. Försök igen om $seconds sekunder.';
  }

  @override
  String get enableBiometricsQ => 'Aktivera biometrisk upplåsning?';

  @override
  String get enable => 'Aktivera';

  @override
  String get notNow => 'Inte nu';

  @override
  String get biometricReason => 'Lås upp MÜHÜR';

  @override
  String get lockNow => 'Lås';

  @override
  String get all => 'Alla';

  @override
  String get noEntries => 'Inga poster ännu';

  @override
  String get searchHint => 'Sök titel, domän, tagg';

  @override
  String get addEntry => 'Ny post';

  @override
  String get editEntry => 'Redigera post';

  @override
  String get title => 'Titel';

  @override
  String get category => 'Kategori';

  @override
  String get domain => 'Domän (t.ex. example.com)';

  @override
  String get tags => 'Tagg';

  @override
  String get fields => 'Fält';

  @override
  String get addField => 'Nytt fält';

  @override
  String get typeText => 'Text';

  @override
  String get sensitive => 'Dölj värde';

  @override
  String get save => 'Spara';

  @override
  String get delete => 'Radera';

  @override
  String get moveToTrash => 'Till papperskorgen';

  @override
  String get trash => 'Papperskorg';

  @override
  String get trashKeepFor => 'Behåll i papperskorgen';

  @override
  String get trashHint =>
      'Raderade poster ligger kvar krypterade i papperskorgen och kan återställas. Efter så här många dagar raderas de permanent nästa gång valvet låses upp. En kortare period tar också bort äldre poster från papperskorgen. Att tömma papperskorgen kan inte ångras.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '1 dag',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Papperskorg';

  @override
  String get trashEmpty => 'Papperskorgen är tom.';

  @override
  String get restore => 'Återställ';

  @override
  String get deleteForever => 'Radera helt';

  @override
  String get deleteForeverConfirm =>
      'Radera posten permanent? Det kan inte ångras.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar kvar',
      one: '1 dag kvar',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Töm';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster',
      one: '1 post',
    );
    return 'Radera $_temp0 permanent från papperskorgen? Det kan inte ångras.';
  }

  @override
  String get cancel => 'Avbryt';

  @override
  String get deleteConfirm =>
      'Flytta posten till papperskorgen? Du kan återställa den tills papperskorgen töms.';

  @override
  String get titleRequired => 'Titel krävs.';

  @override
  String get fieldUsername => 'Användarnamn';

  @override
  String get fieldPassword => 'Lösenord';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Anteckningar';

  @override
  String get copy => 'Kopiera';

  @override
  String get settings => 'Inställningar';

  @override
  String get settingsSecurity => 'Säkerhet';

  @override
  String get settingsBackup => 'Backup';

  @override
  String get settingsGeneral => 'Allmänt';

  @override
  String get settingsAbout => 'Om';

  @override
  String get autoLock => 'Autolås';

  @override
  String get immediately => 'Direkt';

  @override
  String get copyTimer => 'Kopieringstid';

  @override
  String get copyTimerHint =>
      'Kopierade data rensas från urklipp efter den här tiden, och valvet förblir upplåst tills dess.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biometri';

  @override
  String get generator => 'Generator';

  @override
  String get generate => 'Generera';

  @override
  String get length => 'Längd';

  @override
  String get lowercase => 'Små bokstäver (a-z)';

  @override
  String get uppercase => 'Stora bokstäver (A-Z)';

  @override
  String get digits => 'Siffror (0-9)';

  @override
  String get symbols => 'Symboler (!@#...)';

  @override
  String get avoidAmbiguous => 'Inga förväxlingsbara tecken (O/0, l/1)';

  @override
  String get regenerate => 'Nytt';

  @override
  String get usePassword => 'Använd';

  @override
  String get strengthWeak => 'Svagt';

  @override
  String get strengthFair => 'Okej';

  @override
  String get strengthGood => 'Bra';

  @override
  String get strengthStrong => 'Starkt';

  @override
  String get scan => 'Skanna';

  @override
  String get scanHint =>
      'Håll kameran stilla över texten. I IBAN-läge känns det igen automatiskt.';

  @override
  String get scanning => 'Skannar...';

  @override
  String get ibanCorrected =>
      'Kan ha rättats efter ett OCR-fel. Kontrollera noga.';

  @override
  String get cameraError =>
      'Kameran är inte tillgänglig. Kontrollera kamerabehörigheten.';

  @override
  String get editBeforeUse => 'Kontrollera och redigera';

  @override
  String get useValue => 'Använd';

  @override
  String get scanIsThis => 'Är det den här?';

  @override
  String get scanNo => 'Nej';

  @override
  String get scanYes => 'Ja';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Lösenordshanterare';

  @override
  String get tagline =>
      'FÖRSEGLA dina digitala data.\nInga servrar. Bara du och dina data.\nMÜHÜR: det säkraste låset för ditt digitala minne.';

  @override
  String get login => 'ÖPPNA';

  @override
  String get infoTitle => 'Om MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR sparar dina lösenord krypterade, bara på den här enheten. Det finns inget konto och ingen server.\n\nDitt huvudlösenord kan inte återställas. Om du glömmer det kan dina data inte öppnas, så spara en krypterad backup.';

  @override
  String get understandNoRecovery =>
      'Jag förstår att ett glömt huvudlösenord inte kan återställas.';

  @override
  String get close => 'Stäng';

  @override
  String get language => 'Språk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get sectionLanguage => 'SPRÅK';

  @override
  String get sectionExperience => 'UPPLEVELSE';

  @override
  String get sectionAppearance => 'UTSEENDE';

  @override
  String get panelDarkness => 'Panelmörker';

  @override
  String get panelDarknessDesc =>
      'Gör paneler och kort mer eller mindre genomskinliga';

  @override
  String get backgroundTitle => 'Bakgrund';

  @override
  String get backgroundDim => 'Dämpning';

  @override
  String get backgroundDimDesc => 'Gör bakgrundsbilden mörkare eller ljusare';

  @override
  String get bgBronze => 'Brons';

  @override
  String get bgEmber => 'Glöd';

  @override
  String get bgSapphire => 'Safir';

  @override
  String get bgObsidian => 'Obsidian';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Smarta tips';

  @override
  String get smartGuideDesc =>
      'Visar korta tips första gången du använder en funktion';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Kort vibration vid upplåsning med fingeravtryck och vid kopiering';

  @override
  String get reduceAnimations => 'Inga animationer';

  @override
  String get reduceAnimationsDesc =>
      'Stänger av alla animationer i appen: hjälpikonens vickning och glöd, hjälpmenyn, sidövergångar, dialoger och skannerlinjen. Bra på långsammare enheter och för personer som är känsliga för rörelse.';

  @override
  String get resetTips => 'Återställ tips';

  @override
  String get resetTipsDesc => 'Visa hjälpanimationen och alla tips igen';

  @override
  String get tipsResetDone => 'Tipsen visas igen';

  @override
  String get tipLongPress =>
      'Tips: håll in en post för att markera den och radera sedan flera på en gång.';

  @override
  String get statTotal => 'Totalt';

  @override
  String get statReused => 'Återanvända';

  @override
  String get planFree => 'GRATIS';

  @override
  String get screenshotAllow => 'Tillåt skärmbilder';

  @override
  String get screenshotAllowHint =>
      'Skärmskyddet stängs av under tiden som anges nedan och slås sedan på igen automatiskt.';

  @override
  String get backupSection => 'KRYPTERAD BACKUP';

  @override
  String get backupExport => 'Skapa backup';

  @override
  String get backupExportDesc =>
      'Sparar alla poster, även papperskorgen, i en fil som skyddas av ett backup-lösenord. Förvara filen på ett säkert ställe.';

  @override
  String get backupImport => 'Återställ';

  @override
  String get backupImportDesc =>
      'Lägger till posterna från en backupfil. Befintliga poster skrivs aldrig över eller raderas.';

  @override
  String get backupPasswordTitle => 'Backup-lösenord';

  @override
  String get backupPasswordInfo =>
      'Det här lösenordet skyddar backupfilen. Det kan skilja sig från ditt huvudlösenord. Om du glömmer det kan backupen inte öppnas.';

  @override
  String get backupEnterPassword => 'Ange backup-lösenordet';

  @override
  String get backupContinue => 'Nästa';

  @override
  String get backupSaved => 'Backup sparad';

  @override
  String get backupFailed => 'Det gick inte att skapa backup';

  @override
  String backupRestored(int added, int skipped) {
    return '$added tillagda, $skipped fanns redan';
  }

  @override
  String get backupWrongPassword => 'Fel backup-lösenord';

  @override
  String get backupInvalidFile => 'Det här är ingen giltig MÜHÜR-backupfil';

  @override
  String get backupReminderTitle => 'Backup-påminnelse';

  @override
  String get backupReminderDesc =>
      'Påminner dig på startskärmen när din senaste backup är äldre än så här. Sätt till 0 för att stänga av.';

  @override
  String get backupReminderOff => 'Av';

  @override
  String get backupReminderNever =>
      'Du har inte gjort någon backup än. Gör en nu så att du inte förlorar dina lösenord.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Din senaste backup gjordes för $days dagar sedan.',
      one: 'Din senaste backup gjordes för 1 dag sedan.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Gör backup';

  @override
  String get backupReminderLater => 'Senare';

  @override
  String get statusScreenOn =>
      'Skärmskydd på: skärmbilder och skärminspelning blockeras';

  @override
  String get statusScreenOff =>
      'Skärmskydd tillfälligt av: skärmbilder tillåts';

  @override
  String get statusBackupNever =>
      'Ingen backup än. Skapa en under Inställningar > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Senaste backup: för $days dagar sedan',
      one: 'Senaste backup: i går',
      zero: 'Backup gjord i dag',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup försenad: senaste för $days dagar sedan',
      one: 'Backup försenad: senaste för 1 dag sedan',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count poster i papperskorgen',
      one: '1 post i papperskorgen',
      zero: 'Papperskorgen är tom',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Biometrisk upplåsning är på';

  @override
  String get statusBiometricOff =>
      'Biometrisk upplåsning är av (tryck för att ställa in)';

  @override
  String get helpStatusScreen => 'Sköldikon: skärmskydd (grön = på, blek = av)';

  @override
  String get helpStatusBackup =>
      'Backupikon: backupstatus (grön = ny backup, blek = dags för backup)';

  @override
  String get helpStatusTrash =>
      'Papperskorgsikon: raderade poster (siffra = väntande poster, tryck för att öppna)';

  @override
  String get helpStatusBiometric =>
      'Fingeravtrycksikon: biometrisk upplåsning (grön = på, tryck för att ändra)';

  @override
  String get helpTitle => 'Hjälp';

  @override
  String get helpMenuTitle => 'Hur används den?';

  @override
  String get helpAdd => '+-knappen: lägg till en ny post';

  @override
  String get helpTap => 'Tryck på ett kort: visa detaljer';

  @override
  String get helpLongPress => 'Håll in: markera och radera';

  @override
  String get helpSearch => 'Sök: hitta snabbt';

  @override
  String get helpCategories => 'Kategorier: filtrera poster';

  @override
  String get helpLock => 'Låsikon: lås valvet nu';

  @override
  String get helpSettings => 'Inställningar: backup, autolås med mera';

  @override
  String get helpStats => 'Nedre panelen: valvöversikt';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Flytta $count markerade poster till papperskorgen?',
      one: 'Flytta den markerade posten till papperskorgen?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Banknamn';

  @override
  String get fcInternetBankingPassword => 'Internetbankslösenord';

  @override
  String get fcCardPin => 'Kortets PIN';

  @override
  String get fcCardNumber => 'Kortnummer';

  @override
  String get fcExpiryDate => 'Giltigt till';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Kundtjänstnr';

  @override
  String get fcCustomerNoTc => 'Kundnr / Personnr';

  @override
  String get fcAccountType => 'Kontotyp';

  @override
  String get fcPhoneBankingPassword => 'Telefonbankslösenord';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Faktura / Förfallodag';

  @override
  String get fcAccountTitle => 'Kontoinnehavare';

  @override
  String get fcEmailAddress => 'E-postadress';

  @override
  String get fcRecoveryEmail => 'Återställnings-e-post';

  @override
  String get fcRecoveryPhone => 'Återställningstelefon';

  @override
  String get fc2faBackupCodes => '2FA / Reservkoder';

  @override
  String get fcSecurityQA => 'Säkerhetsfråga';

  @override
  String get fcPasswordChangeDate => 'Lösenord bytt';

  @override
  String get fcPlatformTitle => 'Plattform / Titel';

  @override
  String get fcUsernameProfileId => 'Användarnamn / Profil-ID';

  @override
  String get fcRegisteredEmail => 'Registrerad e-post';

  @override
  String get fcRegisteredPhone => 'Registrerad telefon';

  @override
  String get fcProfileUrl => 'Profil-URL';

  @override
  String get fcAccountTypeStatus => 'Kontotyp / Status';

  @override
  String get fcLinkedMainAccount => 'Länkat konto';

  @override
  String get fc2faSecretKey => '2FA-hemlig nyckel';

  @override
  String get fcServiceName => 'Organisation';

  @override
  String get fcCompanyName => 'Företagsnamn';

  @override
  String get fcCorporateUserId => 'Användarnamn / Företags-ID';

  @override
  String get fcPanelUrl => 'Panel-URL';

  @override
  String get fcDepartmentPosition => 'Avdelning / Roll';

  @override
  String get fcLicenseCode => 'Kund / Licens';

  @override
  String get fcSupportContact => 'Supportkontakt';

  @override
  String get fcSiteName => 'Webbplatsnamn';

  @override
  String get fcWebAddress => 'Webbplats-URL';

  @override
  String get fcUsernameEmail => 'Användarnamn / E-post';

  @override
  String get pickFieldTitle => 'Välj ett fält';

  @override
  String get generatorSettings => 'Generatorinställningar';

  @override
  String get saveAndExit => 'Spara och stäng';

  @override
  String get customField => 'Eget fält';

  @override
  String get customFieldName => 'Fältnamn';

  @override
  String get customFieldType => 'Fälttyp';

  @override
  String get customTypeText => 'Text';

  @override
  String get customTypeNote => 'Anteckning';

  @override
  String get customTypePassword => 'Lösenord';

  @override
  String get customTypeDate => 'Datum';

  @override
  String get customTypePhone => 'Telefon';

  @override
  String get orphanVaultTitle => 'Gammalt valv hittades';

  @override
  String get orphanVaultBody =>
      'Det finns en gammal valvfil på enheten, men dess nycklar kan inte läsas, så den kan inte öppnas. Om du fortsätter raderas de gamla data. Om du har en backup kan du skapa ett nytt valv och sedan återställa den.';

  @override
  String get orphanVaultReplace => 'Radera och fortsätt';

  @override
  String get forgotOldPassword => 'Jag minns inte mitt nuvarande lösenord';

  @override
  String get useCurrentPassword => 'Använd mitt nuvarande lösenord';

  @override
  String get forgotPasswordBioHint =>
      'Bekräfta med fingeravtryck för att ange ett nytt huvudlösenord. Dina poster förblir som de är.';

  @override
  String get bioConfirmFailed =>
      'Biometrisk bekräftelse misslyckades eller avbröts.';

  @override
  String get biometricChangedBody =>
      'Dina inställningar för fingeravtryck eller ansikte har ändrats, så biometrisk inloggning har stängts av för din säkerhet.';

  @override
  String get limitReachedTitle => 'Gratisgränsen nådd';

  @override
  String limitReachedBody(int count) {
    return 'Gratisversionen rymmer upp till $count poster per kategori. Radera en post eller uppgradera till Pro för obegränsat antal poster.';
  }

  @override
  String get scanLimitTitle => 'Gratisskanningar slut';

  @override
  String scanLimitBody(int count) {
    return 'Du har använt dina $count gratisskanningar. Uppgradera till Pro för obegränsad skanning.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added tillagda, $limited inte återställda (gratisgränsen nådd). Din backupfil är oförändrad.';
  }

  @override
  String get aboutProtectionTitle => 'Så skyddas dina data';

  @override
  String get aboutProtectionBody =>
      'Allt du sparar låses med stark kryptering på den här telefonen. Bara ditt huvudlösenord kan öppna det – det sparas ingenstans, inte ens av MÜHÜR. Utan det går data inte att läsa.';

  @override
  String get aboutOfflineTitle => 'Fungerar offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR ansluter aldrig till internet. Det finns inget konto, ingen server och inget moln. Dina lösenord stannar på den här telefonen, om du inte själv exporterar dem som en krypterad backup eller en Excel-fil.';

  @override
  String get aboutRights => 'Med ensamrätt.';

  @override
  String statusClipboard(int seconds) {
    return 'Urklipp rensas om $seconds s. Tryck för att rensa nu.';
  }

  @override
  String get helpStatusClipboard =>
      'Urklippsikon: kopierat värde (siffra = sekunder tills det rensas, tryck för att rensa nu)';

  @override
  String aboutVersionLine(String version) {
    return 'Version $version';
  }

  @override
  String get aboutReleaseNotes => 'Versionsinformation';

  @override
  String get aboutHowTitle => 'Så fungerar det';

  @override
  String get aboutStoryTitle => 'Berättelsen om MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Vem står bakom MÜHÜR';

  @override
  String get aboutPrivacySection => 'INTEGRITETSPOLICY';

  @override
  String get aboutPermissionsTitle => 'Behörigheter och data';

  @override
  String get aboutSupportSection => 'SUPPORT';

  @override
  String get aboutRate => 'Betygsätt på Google Play';

  @override
  String get aboutRateDesc =>
      'Lämna ett betyg eller en recension på butikssidan';

  @override
  String get aboutInBrief => 'I korthet';

  @override
  String get aboutTechnical => 'Tekniska detaljer';

  @override
  String get aboutProtectionTech =>
      '• Valvet krypteras med en slumpmässig 256-bitarsnyckel. Den nyckeln förseglas med AES-256-GCM med en nyckel som härleds från ditt huvudlösenord med Argon2id (32 MiB minne, 3 varv). Härledningsinställningarna är bundna till förseglingen, så manipulation upptäcks.\n• Databasen krypteras med SQLCipher; dess nyckel härleds från valvnyckeln med HKDF-SHA256.\n• Känsliga fält krypteras ytterligare med AES-256-GCM och knyts till sin post och sitt fält.\n• Efter 5 felaktiga lösenord väntar appen 30 sekunder, dubbelt så länge varje gång, upp till 1 timme. Att ändra telefonens klocka förkortar inte väntan.\n• Biometrisk upplåsning godtar bara stark biometri (klass 3) och stängs av om ett nytt fingeravtryck eller ansikte läggs till. På de flesta telefoner når ansiktsigenkänning inte den nivån, så oftast kan bara fingeravtrycket användas.\n• Skärmbilder och skärminspelning blockeras, valvet låses när du lämnar appen och kopierade värden markeras som känsliga och rensas automatiskt.';

  @override
  String get aboutOfflineTech =>
      '• Den publicerade versionen av appen har ingen internet- eller nätverksbehörighet; den tas bort även om ett bibliotek begär den.\n• Molnbackup och överföring till en annan enhet är avstängda, så appens data kopieras aldrig från telefonen.\n• Textigenkänningen använder en modell som följer med appen och körs på telefonen; kamerabilder behandlas i minnet och sparas aldrig.\n• Data lämnar bara telefonen om du själv exporterar dem: som en krypterad backupfil eller som en okrypterad Excel-fil vars säkerhet är ditt ansvar.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR samlar inte in personuppgifter, visar inga annonser, använder inga analysverktyg och delar inget med någon. Appen ber bara om kameran (för att skanna text) och biometri (för att låsa upp). Prenumerationer hanteras av Google Play; appen ser aldrig dina betalningsuppgifter. Om du tar bort appen raderas alla dess data. Innan dess kan du exportera dina poster till Excel; den filens säkerhet är ditt ansvar.';

  @override
  String get aboutPermissionsTech =>
      '• Kamera: används bara när skannern är öppen; inga foton sparas och inget ljud spelas in.\n• Biometri: ditt fingeravtryck eller ansikte kontrolleras av telefonens systemfönster; MÜHÜR får aldrig de uppgifterna.\n• Filer: åtkomst bara när du själv väljer var en backup eller Excel-fil ska sparas eller öppnas.\n• Inget konto, ingen server, inga spårnings- eller annons-ID:n.\n• Nedladdning och köp av prenumeration hanteras av Google Play enligt Googles integritetspolicy.';

  @override
  String get how1T => 'Valv och huvudlösenord';

  @override
  String get how1B =>
      'Allt förvaras i ett krypterat valv på den här telefonen. Bara ditt huvudlösenord öppnar det. Det kan inte återställas – välj ett du kommer ihåg och gör en backup.';

  @override
  String get how2T => 'Poster och kategorier';

  @override
  String get how2B =>
      'Kategorierna är fasta: Banker, Webbplatser, E-post, Sociala medier, Jobb och Övrigt. När du lägger till en post med +-knappen väljer du dess kategori, som ger passande fält. Du kan inte skapa nya kategorier, men med ”Nytt fält” lägger du till fält i en post: välj ett i listan eller skapa ett ”Eget fält” med valfritt namn.';

  @override
  String get how3T => 'Kopiera säkert';

  @override
  String get how3B =>
      'Tryck på ett fält för att kopiera det. Urklipp rensas automatiskt efter den tid du valt. Ikonen på startskärmen räknar ner; tryck på den för att rensa direkt.';

  @override
  String get how4T => 'Skanna med kameran';

  @override
  String get how4B =>
      'Rikta kameran mot ett kort eller dokument för att läsa ett IBAN eller en text i stället för att skriva. Kontrollera resultatet innan du sparar.';

  @override
  String get how5T => 'Papperskorg';

  @override
  String get how5B =>
      'Raderade poster väntar krypterade i papperskorgen och kan återställas tills perioden du valt löper ut.';

  @override
  String get how6T => 'Backup och återställning';

  @override
  String get how6B =>
      'Skapa en krypterad backupfil med eget lösenord och förvara den säkert. Återställning lägger bara till poster; befintliga skrivs aldrig över.';

  @override
  String get how7T => 'Lås och biometri';

  @override
  String get how7B =>
      'Valvet låses när du lämnar appen. Slå på biometri för att öppna det med fingeravtryck (eller ansikte på telefoner som stöder det).';

  @override
  String get storyBody =>
      'Varje stor uppfinning börjar med att någon försöker lösa ett litet problem i sitt eget liv. Berättelsen om MÜHÜR är precis så: en uppriktig men målmedveten resa, född ur ett minne som går vilse i den digitala världens kaos och ur instinkten att skydda det som är ens eget.\n\nAllt började med den irriterande pausen som ett enda glömt lösenord orsakade. Jag utformade MÜHÜR som en personlig fristad som bara körs på min egen enhet, utan att vara beroende av andras molnservrar. Med tiden insåg jag att jag inte var ensam om att vilja ha tillbaka min digitala integritet.\n\nI dag finns MÜHÜR för alla som vill ha full kontroll över sina data utan att anförtro dem åt någon server.\n\nFörsegla det säkraste låset för ditt digitala minne.';

  @override
  String get devBody =>
      'MÜHÜR är ett oberoende projekt av UEK DESIGNER, utformat och utvecklat i Turkiet. Tack för att du använder MÜHÜR.';

  @override
  String get rn100 =>
      '• Första versionen.\n• Krypterat valv på telefonen som öppnas med ett huvudlösenord (Argon2id + AES-256).\n• Färdiga fält för banker, webbplatser, e-post, sociala medier och jobbkonton.\n• Lösenordsgenerator med styrkeindikator.\n• Skanning av IBAN och text med kameran.\n• Upplåsning med fingeravtryck (och ansikte på telefoner som stöder det).\n• Krypterad backup och återställning.\n• Export till Excel (okrypterad, på eget ansvar).\n• Papperskorg som rensas automatiskt.\n• Valvöversikt som visar återanvända lösenord.\n• Koder för tvåstegsverifiering, läggs till med QR-kod.\n• Lösenordshistorik och valvkontroll.\n• Prova Pro gratis i 14 dagar, utan kort.\n• Automatiskt lås, skärmskydd och nedräkning för urklipp.\n• Fungerar helt offline.\n• 18 språk.';

  @override
  String get excelExport => 'Exportera till Excel';

  @override
  String get excelExportDesc =>
      'Okrypterad .xlsx-fil med dina poster, t.ex. innan du tar bort appen';

  @override
  String get excelExportWarnTitle => 'Okrypterad export';

  @override
  String get excelExportWarn =>
      'Excel-filen är INTE krypterad. Alla som får tag på filen kan läsa alla dina lösenord. Var du förvarar den, vem du delar den med och att du raderar den efteråt är helt ditt ansvar. Poster i papperskorgen tas inte med.';

  @override
  String get excelExportAgree =>
      'Jag förstår – filens säkerhet är mitt ansvar.';

  @override
  String get excelExportSaved =>
      'Excel-filen har sparats. Radera den när du inte behöver den längre.';

  @override
  String get excelExportFailed => 'Excel-filen kunde inte skapas.';

  @override
  String get excelColDomain => 'Domän';

  @override
  String get excelColUpdated => 'Senast ändrad';

  @override
  String get how8T => 'Exportera till Excel';

  @override
  String get how8B =>
      '”Exportera till Excel” i backupinställningarna skriver alla dina poster (utom papperskorgen) till en .xlsx-fil, med ett blad per kategori. Filen är inte krypterad: du bekräftar med ditt huvudlösenord och godkänner att dess säkerhet är ditt ansvar. Radera den när du inte behöver den längre.';

  @override
  String get proFeatureTitle => 'Pro-funktion';

  @override
  String get proFieldsBody =>
      'Att lägga till extra fält i en post är en Pro-funktion. Fält som du redan har lagt till finns kvar och kan fortfarande redigeras.';

  @override
  String get proBiometricBody =>
      'Upplåsning med fingeravtryck är en Pro-funktion. Du kan alltid låsa upp med ditt huvudlösenord.';

  @override
  String get proBackgroundsBody =>
      'Extra bakgrunder är en Pro-funktion. Standardbakgrunden finns alltid tillgänglig.';

  @override
  String bioGraceWarn(String days) {
    return 'Upplåsning med fingeravtryck är på i $days till och stängs sedan av. Se till att du kommer ihåg ditt huvudlösenord. Om du har glömt det kan du ange ett nytt med fingeravtrycket under ”Byt huvudlösenord” i Inställningar.';
  }

  @override
  String get genNewPassword => 'Generera nytt lösenord';

  @override
  String fieldRemoved(String label) {
    return 'Fältet ”$label” togs bort';
  }

  @override
  String get undo => 'Ångra';

  @override
  String get proStatusActive => 'Ditt Pro-abonnemang är aktivt';

  @override
  String proStatusTrial(String days) {
    return 'Gratis provperiod: $days kvar';
  }

  @override
  String get proStatusFree => 'Gratisversion';

  @override
  String get proTrialInfo =>
      'När provperioden är slut går du automatiskt över till gratisversionen. Inget kort behövs och inget raderas.';

  @override
  String get proFeatEntries => 'Obegränsat antal poster';

  @override
  String get proFeatEntriesDesc => 'Gratis: 3 per kategori';

  @override
  String get proFeatScan => 'Obegränsad skanning med kameran';

  @override
  String get proFeatScanDesc => 'Gratis: 3 skanningar';

  @override
  String get proFeatFields => 'Extra och egna fält';

  @override
  String get proFeatFieldsDesc => 'Lägg till alla fält du behöver i en post';

  @override
  String get proFeatBio => 'Upplåsning med fingeravtryck';

  @override
  String get proFeatBioDesc => 'Öppna valvet med en beröring';

  @override
  String get proFeatBg => 'Alla bakgrunder';

  @override
  String get proFeatBgDesc => 'Alla 5 bakgrunder';

  @override
  String get proFeatHealth => 'Valvkontroll';

  @override
  String get proFeatHealthDesc =>
      'Se vilka lösenord som är svaga eller återanvända och gå direkt till posten';

  @override
  String get proFeatTotp => 'Koder för tvåstegsverifiering';

  @override
  String get proFeatTotpDesc => 'Koderna skapas offline i valvet';

  @override
  String get proFeatHistory => 'Lösenordshistorik';

  @override
  String get proFeatHistoryDesc =>
      'Gamla lösenord sparas så att du kan titta tillbaka';

  @override
  String get proYearly => 'Årsvis';

  @override
  String get proMonthly => 'Månadsvis';

  @override
  String get proPerYear => '/ år';

  @override
  String get proPerMonth => '/ månad';

  @override
  String get proBestValue => 'Bäst värde';

  @override
  String get proSubscribe => 'Prenumerera';

  @override
  String get proRestore => 'Återställ köp';

  @override
  String get proManage => 'Hantera prenumeration';

  @override
  String get proFinePrint =>
      'Betalningen sker via Google Play. Prenumerationen förnyas automatiskt tills du säger upp den, vilket du kan göra när som helst i Google Play. Om prenumerationen upphör raderas inte dina poster.';

  @override
  String get proComingSoon =>
      'Köp blir möjliga när MÜHÜR publiceras på Google Play.';

  @override
  String get proSeePlans => 'Visa Pro';

  @override
  String get proHealthBody =>
      'Att se vilka poster som har svaga eller återanvända lösenord är en Pro-funktion. Antalen syns alltid.';

  @override
  String get healthWeakHint =>
      'Korta eller lätta att gissa. Byt ut dem med lösenordsgeneratorn.';

  @override
  String get healthReusedHint =>
      'Samma lösenord används i flera poster. Läcker ett, är de andra också i fara.';

  @override
  String get healthFairHint =>
      'Godtagbara, men kunde vara längre och mer varierade.';

  @override
  String get healthAllGood =>
      'Inga svaga eller återanvända lösenord. Ditt valv mår bra.';

  @override
  String get proHistoryBody =>
      'Att se tidigare värden för ett lösenord är en Pro-funktion. Lösenord som du ändrar med Pro sparas här.';

  @override
  String get historyEmpty =>
      'Lösenordet har inte ändrats ännu. När du ändrar det visas det gamla värdet här.';

  @override
  String get historyNote =>
      'De 10 senaste värdena för varje lösenordsfält sparas, krypterade som resten av valvet. Historiken ingår inte i backuper.';

  @override
  String get historyClearQ =>
      'Tryck på Ta bort en gång till för att rensa fältets historik.';

  @override
  String get totpHint => 'Konfigurationsnyckel eller otpauth://-länk';

  @override
  String get totpInvalid =>
      'Nyckeln är ogiltig. Klistra in konfigurationsnyckeln från webbplatsen.';

  @override
  String get qrScan => 'Skanna QR-kod';

  @override
  String get qrScanHint =>
      'Rikta kameran mot QR-koden som webbplatsen visar när du konfigurerar tvåstegsverifiering.';

  @override
  String get qrNot2fa => 'Den här QR-koden är ingen 2FA-konfigurationskod.';

  @override
  String get qrMigration =>
      'Det här är en överföringskod från Google Authenticator. Skanna i stället varje webbplats egen konfigurations-QR-kod.';

  @override
  String get totpEmpty =>
      'Ingen nyckel än. Skanna QR-koden för att lägga till den.';

  @override
  String get how9T => 'Tvåstegsverifiering (2FA)';

  @override
  String get how9B =>
      'Tryck på ”Nytt fält” i en post och välj ”2FA-hemlig nyckel”. Skanna QR-koden som webbplatsen visar vid 2FA-konfigurationen med ikonen bredvid fältet, eller klistra in konfigurationsnyckeln. Om du sparar fältet tomt finns det kvar i postens detaljer och du kan skanna QR-koden därifrån. Detaljerna visar en 6-siffrig kod och återstående tid; kopiera den och ange den på webbplatsen. Koderna skapas offline utifrån telefonens klocka, så om klockan går fel stämmer inte koderna. Befintliga koder fortsätter att fungera även när Pro har gått ut.';

  @override
  String get how10T => 'Lösenordshistorik och valvkontroll';

  @override
  String get how10B =>
      'Med Pro sparas det gamla lösenordet krypterat när du byter lösenord; historikikonen i postens detaljer visar de 10 senaste. Sköldikonen i översiktspanelen på startskärmen öppnar valvkontrollen: svaga och återanvända lösenord listas, och ett tryck tar dig till posten.';

  @override
  String get how11T => 'Pro och den kostnadsfria provperioden';

  @override
  String get how11B =>
      'Efter den första konfigurationen är alla Pro-funktioner gratis i 14 dagar, utan kort. När provperioden är slut går du över till gratisplanen: upp till 3 poster per kategori och 3 kameraskanningar. Inget raderas, befintliga 2FA-koder fortsätter att fungera och upplåsning med fingeravtryck är på i 7 dagar till. Pro-funktioner känner du igen på den lilla PRO-etiketten i hörnet.';

  @override
  String get showValue => 'Visa';

  @override
  String get hideValue => 'Dölj';

  @override
  String get favoriteAdd => 'Lägg till i favoriter';

  @override
  String get favoriteRemove => 'Ta bort från favoriter';

  @override
  String get proRedeem => 'Lös in presentkod';

  @override
  String get proThanks => 'Tack! MÜHÜR Pro är aktivt.';

  @override
  String get proPending =>
      'Betalningen väntar. Pro aktiveras av sig själv när den är klar.';

  @override
  String get proBuyError => 'Köpet kunde inte slutföras. Försök igen senare.';

  @override
  String get proRestoreDone => 'MÜHÜR Pro är aktivt.';

  @override
  String get proRestoreNone =>
      'Inget aktivt Pro hittades på det här Google-kontot.';

  @override
  String get proStoreUnavailable =>
      'Det gick inte att nå Google Play. Kontrollera att Play Butik är installerat och att du är inloggad.';

  @override
  String proStatusGift(String days) {
    return 'Present-Pro: $days kvar';
  }

  @override
  String get proStatusGiftLife => 'Present-Pro: utan tidsgräns';

  @override
  String get scanCodesTitle => 'Skanna reservkoder';

  @override
  String get scanCodesHint =>
      'Rikta kameran mot listan med reservkoder som webbplatsen gav dig. Lästa koder samlas här; bekräfta när alla är med.';

  @override
  String scanCodesCount(int count) {
    return 'Lästa koder: $count';
  }

  @override
  String get scanCodesClear => 'Rensa listan';

  @override
  String get totpRemoveTitle => 'Ta bort 2FA-nyckeln?';

  @override
  String get totpRemoveBody =>
      'Om tvåstegsverifiering fortfarande är på för webbplatsen kan du kanske inte logga in på kontot utan den här nyckeln. Stäng av den på webbplatsen först eller se till att dina reservkoder är sparade.';

  @override
  String get proBannerTrial => 'Fortsätt efter provperioden';

  @override
  String get proBannerFree => 'Alla funktioner utan gränser';

  @override
  String proBannerPrice(String yearly, String month) {
    return '$yearly per år · cirka $month i månaden';
  }
}
