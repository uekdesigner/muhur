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
  String get changeMasterPassword => 'Change master password';

  @override
  String get currentPassword => 'Current password';

  @override
  String get newPassword => 'New password';

  @override
  String get newPasswordSame =>
      'The new password must be different from the current one.';

  @override
  String get change => 'Change';

  @override
  String get masterPasswordChanged => 'Master password changed.';

  @override
  String get changePasswordFailed =>
      'Could not change the password. Please try again.';

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
  String get tags => 'Tag';

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
  String get moveToTrash => 'Move to trash';

  @override
  String get trash => 'Trash';

  @override
  String get trashKeepFor => 'Keep in trash for';

  @override
  String get trashHint =>
      'Deleted entries stay in the trash, still encrypted, and can be restored. They are permanently deleted after this many days, the next time the vault is unlocked. Shortening the period also removes older items from the trash. Emptying the trash cannot be undone.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Open trash';

  @override
  String get trashEmpty => 'The trash is empty.';

  @override
  String get restore => 'Restore';

  @override
  String get deleteForever => 'Delete permanently';

  @override
  String get deleteForeverConfirm =>
      'Permanently delete this entry? This cannot be undone.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days left',
      one: '1 day left',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Empty trash now';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entries',
      one: '1 entry',
    );
    return 'Permanently delete $_temp0 from the trash? This cannot be undone.';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get deleteConfirm =>
      'Move this entry to the trash? You can restore it until the trash is emptied.';

  @override
  String get titleRequired => 'Title is required.';

  @override
  String get fieldUsername => 'Username';

  @override
  String get fieldPassword => 'Password';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notes';

  @override
  String get copy => 'Copy';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Settings';

  @override
  String get settingsSecurity => 'Security';

  @override
  String get settingsBackup => 'Backup';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsAbout => 'About';

  @override
  String get autoLock => 'Auto-lock';

  @override
  String get immediately => 'Immediately';

  @override
  String get seconds15 => '15 seconds';

  @override
  String get minute1 => '1 minute';

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
  String get scanIsThis => 'Is this the one?';

  @override
  String get scanNo => 'No';

  @override
  String get scanYes => 'Yes';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Password Manager';

  @override
  String get tagline =>
      'SEAL your digital data.\n No servers. Just you and your data.\n MÜHÜR: Your digital vault that only you can see.';

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
  String get sectionLanguage => 'LANGUAGE';

  @override
  String get sectionExperience => 'EXPERIENCE';

  @override
  String get sectionAppearance => 'APPEARANCE';

  @override
  String get panelDarkness => 'Panel darkness';

  @override
  String get panelDarknessDesc =>
      'Makes panels and cards more or less see-through';

  @override
  String get backgroundTitle => 'Background';

  @override
  String get backgroundDim => 'Background dimming';

  @override
  String get backgroundDimDesc =>
      'Makes the background image darker or lighter';

  @override
  String get bgBronze => 'Bronze';

  @override
  String get bgEmber => 'Ember';

  @override
  String get bgSapphire => 'Sapphire';

  @override
  String get bgObsidian => 'Obsidian';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Smart guidance';

  @override
  String get smartGuideDesc =>
      'Shows short tips the first time you use a feature';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Gives a short vibration on fingerprint unlock and when copying';

  @override
  String get reduceAnimations => 'Turn off animations';

  @override
  String get reduceAnimationsDesc =>
      'Turns off every animation in the app: the help icon wiggle and glow, the help menu, page transitions, dialogs and the scanner line. Good for slower devices and sensitive users';

  @override
  String get resetTips => 'Reset tips';

  @override
  String get resetTipsDesc => 'Show the help animation and all tips again';

  @override
  String get tipsResetDone => 'Tips will be shown again';

  @override
  String get tipLongPress =>
      'Tip: long press an entry to select it, then delete several at once.';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Reused';

  @override
  String get planFree => 'FREE';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Allow screenshots';

  @override
  String get screenshotAllowHint =>
      'Screen protection is switched off for the time set below, then turns back on automatically.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get statusBackup => 'Auto backup';

  @override
  String get backupSection => 'ENCRYPTED BACKUP';

  @override
  String get backupExport => 'Create encrypted backup';

  @override
  String get backupExportDesc =>
      'Saves all entries, including the trash, to a file protected by a backup password. Keep the file somewhere safe.';

  @override
  String get backupImport => 'Restore from backup';

  @override
  String get backupImportDesc =>
      'Adds the entries from a backup file. Existing entries are never overwritten or deleted.';

  @override
  String get backupPasswordTitle => 'Backup password';

  @override
  String get backupPasswordInfo =>
      'This password protects the backup file. It can be different from your master password. If you forget it, the backup cannot be opened.';

  @override
  String get backupEnterPassword => 'Enter the backup password';

  @override
  String get backupContinue => 'Continue';

  @override
  String get backupSaved => 'Backup saved';

  @override
  String get backupFailed => 'The backup could not be created';

  @override
  String backupRestored(int added, int skipped) {
    return '$added added, $skipped already existed';
  }

  @override
  String get backupWrongPassword => 'Wrong backup password';

  @override
  String get backupInvalidFile => 'This is not a valid Muhur backup file';

  @override
  String get backupReminderTitle => 'Backup reminder';

  @override
  String get backupReminderDesc =>
      'Reminds you on the home screen when your last backup is older than this. Set to 0 to turn it off.';

  @override
  String get backupReminderOff => 'Off';

  @override
  String get backupReminderNever =>
      'You have not made a backup yet. Back up now so you do not lose your passwords.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Your last backup was $days days ago.',
      one: 'Your last backup was 1 day ago.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Back up';

  @override
  String get backupReminderLater => 'Later';

  @override
  String get statusScreenOn =>
      'Screen protection is on: screenshots and screen recording are blocked';

  @override
  String get statusScreenOff =>
      'Screen protection is off for now: screenshots are allowed';

  @override
  String get statusBackupNever =>
      'No backup yet. Create one in Settings > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Last backup: $days days ago',
      one: 'Last backup: yesterday',
      zero: 'Backed up today',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup overdue: last one was $days days ago',
      one: 'Backup overdue: last one was 1 day ago',
    );
    return '$_temp0';
  }

  @override
  String get helpStatusScreen =>
      'Shield icon: Screen protection (green = on, faded = off)';

  @override
  String get helpStatusBackup =>
      'Backup icon: Backup status (green = recent backup, faded = backup due)';

  @override
  String get helpTitle => 'Help';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'How to use?';

  @override
  String get helpAdd => '+ button: Add a new entry';

  @override
  String get helpTap => 'Tap a card: View details';

  @override
  String get helpLongPress => 'Long press: Select and delete';

  @override
  String get helpSearch => 'Search: Find quickly';

  @override
  String get helpCategories => 'Categories: Filter your entries';

  @override
  String get helpLock => 'Lock icon: Lock the vault now';

  @override
  String get helpSettings => 'Settings: Backup, auto-lock and more';

  @override
  String get helpStats => 'Bottom panel: Vault summary';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Move $count selected entries to the trash?';
  }

  @override
  String get fcBankName => 'Bank Name';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Online Banking Password';

  @override
  String get fcCardPin => 'Card PIN';

  @override
  String get fcCardNumber => 'Card Number';

  @override
  String get fcExpiryDate => 'Expiry Date';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Customer Service Number';

  @override
  String get fcCustomerNoTc => 'Customer Number / National ID';

  @override
  String get fcBranchNameCode => 'Branch Name & Code';

  @override
  String get fcAccountType => 'Account Type';

  @override
  String get fcPhoneBankingPassword => 'Phone Banking Password';

  @override
  String get fcSwiftBic => 'SWIFT / BIC Code';

  @override
  String get fcCardStatementDate => 'Statement & Due Date';

  @override
  String get fcAccountTitle => 'Account Title';

  @override
  String get fcEmailAddress => 'Email Address';

  @override
  String get fcRecoveryEmail => 'Recovery Email';

  @override
  String get fcRecoveryPhone => 'Recovery Phone';

  @override
  String get fc2faBackupCodes => '2FA / Backup Codes';

  @override
  String get fcLoginMethodProvider => 'Login Method / Provider';

  @override
  String get fcImapSmtp => 'IMAP / SMTP Server Settings';

  @override
  String get fcSecurityQA => 'Security Question & Answer';

  @override
  String get fcPasswordChangeDate => 'Password Change Date';

  @override
  String get fcPlatformTitle => 'Platform / Title';

  @override
  String get fcUsernameProfileId => 'Username / Profile ID';

  @override
  String get fcRegisteredEmail => 'Registered Email';

  @override
  String get fcRegisteredPhone => 'Registered Phone Number';

  @override
  String get fcProfileUrl => 'Profile Link (URL)';

  @override
  String get fcAccountTypeStatus => 'Account Type / Status';

  @override
  String get fcLinkedMainAccount => 'Linked Main Account';

  @override
  String get fcProfileNumericId => 'Profile / Numeric ID';

  @override
  String get fc2faSecretKey => '2FA Secret Key';

  @override
  String get fcServiceName => 'Organization / Service Name';

  @override
  String get fcCompanyName => 'Company Name';

  @override
  String get fcCorporateUserId => 'Username / Corporate ID';

  @override
  String get fcPanelUrl => 'Service / Panel Address (URL)';

  @override
  String get fcDepartmentPosition => 'Department / Position';

  @override
  String get fcLicenseCode => 'Customer / License Code';

  @override
  String get fcSupportContact => 'Authorized / Support Contact';

  @override
  String get fcLoginMethodVerification => 'Login Method / Verification Type';

  @override
  String get fcTaxOffice => 'Tax Office & Tax No';

  @override
  String get fcRegistryNo => 'Registry No / Dealer Code';

  @override
  String get fcIpVpn => 'IP Restriction / VPN Address';

  @override
  String get fcLicenseExpiry => 'Portal / License Expiry Date';

  @override
  String get fcSiteName => 'Site / Service Name';

  @override
  String get fcWebAddress => 'Web Address (URL)';

  @override
  String get fcUsernameEmail => 'Username / Email';

  @override
  String get fcSubscriptionFee => 'Subscription Fee & Period';

  @override
  String get fcRegistrationDate => 'Registration Date';

  @override
  String get fcPaymentMethod => 'Billing / Payment Method';

  @override
  String get fcPinCode => 'PIN Code';

  @override
  String get fcLicenseCodeSimple => 'License Code';

  @override
  String get pickFieldTitle => 'Pick a field';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Generator settings';

  @override
  String get saveAndExit => 'Save and exit';

  @override
  String get customField => 'Custom field';

  @override
  String get customFieldName => 'Field name';

  @override
  String get customFieldType => 'Field type';

  @override
  String get customTypeText => 'Text';

  @override
  String get customTypeNote => 'Note';

  @override
  String get customTypePassword => 'Hidden password';

  @override
  String get customTypeDate => 'Date';

  @override
  String get customTypePhone => 'Phone';
}
