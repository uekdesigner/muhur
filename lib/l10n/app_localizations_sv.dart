// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appName => 'Muhur';

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
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Öppna';

  @override
  String get wrongPassword => 'Fel huvudlösenord.';

  @override
  String lockedOut(int seconds) {
    return 'För många försök. Försök igen om $seconds sekunder.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Aktivera biometrisk upplåsning?';

  @override
  String get enable => 'Aktivera';

  @override
  String get notNow => 'Inte nu';

  @override
  String get biometricReason => 'Lås upp Muhur';

  @override
  String get lockNow => 'Lås';

  @override
  String get vaultUnlocked => 'Vault unlocked';

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
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

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
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

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
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Skannar...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Kan ha rättats efter ett OCR-fel. Kontrollera noga.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

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
  String get infoTitle => 'Om Muhur';

  @override
  String get infoBody =>
      'Muhur sparar dina lösenord krypterade, bara på den här enheten. Det finns inget konto och ingen server.\n\nDitt huvudlösenord kan inte återställas. Om du glömmer det kan dina data inte öppnas, så spara en krypterad backup.';

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
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Tillåt skärmbilder';

  @override
  String get screenshotAllowHint =>
      'Skärmskyddet stängs av under tiden som anges nedan och slås sedan på igen automatiskt.';

  @override
  String get screenshotTimer => 'Screenshot time';

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
  String get backupInvalidFile => 'Det här är ingen giltig Muhur-backupfil';

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
  String get helpBody => 'Help content will be added here.';

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
  String get fcTag => 'Tag';

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
  String get fcBranchNameCode => 'Branch / Code';

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
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

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
  String get fcProfileNumericId => 'Profile ID';

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
  String get fcSiteName => 'Webbplatsnamn';

  @override
  String get fcWebAddress => 'Webbplats-URL';

  @override
  String get fcUsernameEmail => 'Användarnamn / E-post';

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
  String get pickFieldTitle => 'Välj ett fält';

  @override
  String get allFieldsAdded => 'All fields added';

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
      'Bekräfta med fingeravtryck eller ansikte för att ange ett nytt huvudlösenord. Dina poster förblir som de är.';

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
  String get aboutSection => 'OM';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutProtectionTitle => 'Så skyddas dina data';

  @override
  String get aboutProtectionBody =>
      'Varje post krypteras med AES-256 på den här enheten. Nyckeln som öppnar valvet härleds från ditt huvudlösenord med Argon2id; själva lösenordet sparas aldrig.';

  @override
  String get aboutOfflineTitle => 'Fungerar offline';

  @override
  String get aboutOfflineBody =>
      'Muhur har ingen internetbehörighet, inget konto och ingen server. Dina data lämnar aldrig enheten om du inte själv exporterar en krypterad backup.';

  @override
  String get aboutLicenses => 'Licenser för öppen källkod';

  @override
  String get aboutLicensesDesc =>
      'Licenser för komponenter med öppen källkod som används i Muhur';

  @override
  String get aboutRights => 'Med ensamrätt.';

  @override
  String statusClipboard(int seconds) {
    return 'Urklipp rensas om $seconds s. Tryck för att rensa nu.';
  }

  @override
  String get helpStatusClipboard =>
      'Urklippsikon: kopierat värde (siffra = sekunder tills det rensas, tryck för att rensa nu)';
}
