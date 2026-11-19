// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
      'Use lowercase and uppercase letters and a digit.';

  @override
  String get reqLength => 'At least 8 characters';

  @override
  String get reqLower => 'A lowercase letter';

  @override
  String get reqUpper => 'An uppercase letter';

  @override
  String get reqDigit => 'A digit';

  @override
  String get reqSpecial => 'A special character (!@#...) – optional';

  @override
  String get reqOptional => 'optional';

  @override
  String get passwordsDontMatch => 'Passwords do not match.';

  @override
  String get createVault => 'Create';

  @override
  String get unlock => 'Unlock';

  @override
  String get wrongPassword => 'Wrong master password.';

  @override
  String lockedOut(int seconds) {
    return 'Too many attempts. Try again in $seconds seconds.';
  }

  @override
  String get enableBiometricsQ => 'Enable biometric unlock?';

  @override
  String get enable => 'Enable';

  @override
  String get notNow => 'Not now';

  @override
  String get biometricReason => 'Unlock MÜHÜR';

  @override
  String get lockNow => 'Lock';

  @override
  String get all => 'All';

  @override
  String get noEntries => 'No entries yet';

  @override
  String get searchHint => 'Search title, domain, tag';

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
  String get typeText => 'Text';

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
  String get openTrash => 'Trash';

  @override
  String get trashEmpty => 'The trash is empty.';

  @override
  String get restore => 'Restore';

  @override
  String get deleteForever => 'Erase';

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
  String get emptyTrashNow => 'Empty trash';

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
  String get immediately => 'Instant';

  @override
  String get copyTimer => 'Copy timer';

  @override
  String get copyTimerHint =>
      'Copied data is cleared from the clipboard after this time, and the vault stays unlocked until then.';

  @override
  String secondsShort(int seconds) {
    return '$seconds sec';
  }

  @override
  String get biometricUnlock => 'Biometrics';

  @override
  String get generator => 'Generator';

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
  String get avoidAmbiguous => 'No look-alikes (O/0, l/1)';

  @override
  String get regenerate => 'New';

  @override
  String get usePassword => 'Use';

  @override
  String get strengthWeak => 'Weak';

  @override
  String get strengthFair => 'Fair';

  @override
  String get strengthGood => 'Good';

  @override
  String get strengthStrong => 'Strong';

  @override
  String get scan => 'Scan';

  @override
  String get scanHint =>
      'Hold the camera steady over the text. In IBAN mode it is detected automatically.';

  @override
  String get scanning => 'Scanning...';

  @override
  String get ibanCorrected =>
      'Possibly corrected after an OCR error. Check carefully.';

  @override
  String get cameraError =>
      'Camera is unavailable. Check the camera permission.';

  @override
  String get editBeforeUse => 'Check and edit';

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
      'SEAL your digital data.\nNo servers. Just you and your data.\nSEAL: the safest lock for your digital memory.';

  @override
  String get login => 'ENTER';

  @override
  String get infoTitle => 'About MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR keeps your passwords encrypted on this device only. There is no account and no server.\n\nYour master password cannot be recovered. If you forget it, your data cannot be opened, so keep an encrypted backup.';

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
  String get backgroundDim => 'Dimming';

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
  String get smartGuide => 'Smart tips';

  @override
  String get smartGuideDesc =>
      'Shows short tips the first time you use a feature';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Gives a short vibration on fingerprint unlock and when copying';

  @override
  String get reduceAnimations => 'No animations';

  @override
  String get reduceAnimationsDesc =>
      'Turns off every animation in the app: the help icon wiggle and glow, the help menu, page transitions, dialogs and the scanner line. Useful on slower devices and for people sensitive to motion.';

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
  String get screenshotAllow => 'Allow screenshots';

  @override
  String get screenshotAllowHint =>
      'Screen protection is switched off for the time set below, then turns back on automatically.';

  @override
  String get backupSection => 'ENCRYPTED BACKUP';

  @override
  String get backupExport => 'Create backup';

  @override
  String get backupExportDesc =>
      'Saves all entries, including the trash, to a file protected by a backup password. Keep the file somewhere safe.';

  @override
  String get backupImport => 'Restore';

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
  String get backupContinue => 'Next';

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
  String get backupInvalidFile => 'This is not a valid MÜHÜR backup file';

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
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items in trash',
      one: '1 item in trash',
      zero: 'Trash is empty',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Biometric unlock is on';

  @override
  String get statusBiometricOff => 'Biometric unlock is off (tap to set up)';

  @override
  String get helpStatusScreen =>
      'Shield icon: Screen protection (green = on, faded = off)';

  @override
  String get helpStatusBackup =>
      'Backup icon: Backup status (green = recent backup, faded = backup due)';

  @override
  String get helpStatusTrash =>
      'Trash icon: Deleted entries (number = items waiting, tap to open)';

  @override
  String get helpStatusBiometric =>
      'Fingerprint icon: Biometric unlock (green = on, tap to change)';

  @override
  String get helpTitle => 'Help';

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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Move $count selected entries to the trash?',
      one: 'Move 1 selected entry to the trash?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Bank Name';

  @override
  String get fcInternetBankingPassword => 'Online Bank Password';

  @override
  String get fcCardPin => 'Card PIN';

  @override
  String get fcCardNumber => 'Card Number';

  @override
  String get fcExpiryDate => 'Expiry Date';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Support No.';

  @override
  String get fcCustomerNoTc => 'Customer No / ID';

  @override
  String get fcAccountType => 'Account Type';

  @override
  String get fcPhoneBankingPassword => 'Phone Bank Password';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Statement / Due';

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
  String get fcSecurityQA => 'Security Q&A';

  @override
  String get fcPasswordChangeDate => 'Password Changed';

  @override
  String get fcPlatformTitle => 'Platform / Title';

  @override
  String get fcUsernameProfileId => 'Username / Profile ID';

  @override
  String get fcRegisteredEmail => 'Registered Email';

  @override
  String get fcRegisteredPhone => 'Registered Phone';

  @override
  String get fcProfileUrl => 'Profile URL';

  @override
  String get fcAccountTypeStatus => 'Account Type / Status';

  @override
  String get fcLinkedMainAccount => 'Linked Account';

  @override
  String get fc2faSecretKey => '2FA Secret Key';

  @override
  String get fcServiceName => 'Organization';

  @override
  String get fcCompanyName => 'Company Name';

  @override
  String get fcCorporateUserId => 'Username / Corporate ID';

  @override
  String get fcPanelUrl => 'Panel URL';

  @override
  String get fcDepartmentPosition => 'Department / Position';

  @override
  String get fcLicenseCode => 'Customer / License';

  @override
  String get fcSupportContact => 'Support Contact';

  @override
  String get fcSiteName => 'Site Name';

  @override
  String get fcWebAddress => 'Website URL';

  @override
  String get fcUsernameEmail => 'Username / Email';

  @override
  String get pickFieldTitle => 'Pick a field';

  @override
  String get generatorSettings => 'Generator settings';

  @override
  String get saveAndExit => 'Save & exit';

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
  String get customTypePassword => 'Password';

  @override
  String get customTypeDate => 'Date';

  @override
  String get customTypePhone => 'Phone';

  @override
  String get orphanVaultTitle => 'Old vault found';

  @override
  String get orphanVaultBody =>
      'A vault file from before exists on this device, but its keys can\'t be read, so it can\'t be opened. If you continue, that old data will be deleted. If you have a backup, create a new vault and restore it afterwards.';

  @override
  String get orphanVaultReplace => 'Delete and continue';

  @override
  String get forgotOldPassword => 'I don\'t remember my current password';

  @override
  String get useCurrentPassword => 'Use my current password instead';

  @override
  String get forgotPasswordBioHint =>
      'Confirm with your fingerprint to set a new master password. Your entries stay as they are.';

  @override
  String get bioConfirmFailed =>
      'Biometric confirmation failed or was cancelled.';

  @override
  String get biometricChangedBody =>
      'Your fingerprint or face settings changed, so biometric login was turned off for your safety.';

  @override
  String get limitReachedTitle => 'Free limit reached';

  @override
  String limitReachedBody(int count) {
    return 'The free version holds up to $count entries per category. Delete an entry or upgrade to Pro for unlimited entries.';
  }

  @override
  String get scanLimitTitle => 'Free scans used';

  @override
  String scanLimitBody(int count) {
    return 'You\'ve used your $count free scans. Upgrade to Pro for unlimited scanning.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added added, $limited not restored (free limit reached). Your backup file is unchanged.';
  }

  @override
  String get aboutProtectionTitle => 'How your data is protected';

  @override
  String get aboutProtectionBody =>
      'Everything you save is locked with strong encryption on this phone. Only your master password can open it, and it is never stored anywhere, not even by MÜHÜR. Without it, the data cannot be read.';

  @override
  String get aboutOfflineTitle => 'Works offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR never connects to the internet. There is no account, no server and no cloud. Your passwords stay on this phone unless you export them yourself, as an encrypted backup or as an Excel file.';

  @override
  String get aboutRights => 'All rights reserved.';

  @override
  String statusClipboard(int seconds) {
    return 'Clipboard clears in $seconds s. Tap to clear now.';
  }

  @override
  String get helpStatusClipboard =>
      'Clipboard icon: Copied value (number = seconds until cleared, tap to clear now)';

  @override
  String aboutVersionLine(String version) {
    return 'Version $version';
  }

  @override
  String get aboutReleaseNotes => 'Release notes';

  @override
  String get aboutHowTitle => 'How it works';

  @override
  String get aboutStoryTitle => 'The story of MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'About the developer';

  @override
  String get aboutPrivacySection => 'PRIVACY POLICY';

  @override
  String get aboutPermissionsTitle => 'Permissions and data';

  @override
  String get aboutSupportSection => 'SUPPORT';

  @override
  String get aboutRate => 'Rate on Google Play';

  @override
  String get aboutRateDesc => 'Leave a rating or a review on the store page';

  @override
  String get aboutInBrief => 'In brief';

  @override
  String get aboutTechnical => 'Technical details';

  @override
  String get aboutProtectionTech =>
      '• Your vault is encrypted with a random 256-bit key. That key is sealed with AES-256-GCM using a key derived from your master password with Argon2id (32 MiB memory, 3 passes). The key-derivation settings are bound to the seal, so tampering is detected.\n• The database is encrypted with SQLCipher; its key is derived from the vault key with HKDF-SHA256.\n• Sensitive fields are encrypted again with AES-256-GCM and tied to their entry and field.\n• After 5 wrong passwords the app waits 30 seconds, doubling each time up to 1 hour. Changing the phone\'s clock does not shorten the wait.\n• Biometric unlock accepts only strong (Class 3) biometrics and turns itself off when a new fingerprint or face is added. On most phones face unlock does not reach this level, so usually only the fingerprint can be used.\n• Screenshots and screen recording are blocked, the vault locks when you leave the app, and copied values are marked as sensitive and cleared automatically.';

  @override
  String get aboutOfflineTech =>
      '• The released version of the app has no internet or network permission; they are removed even if a library asks for them.\n• Cloud backup and device-to-device transfer are turned off, so the app\'s data is never copied off the phone.\n• Text recognition uses a model built into the app and runs on the phone; camera frames are processed in memory and never saved.\n• Data leaves the phone only when you export it yourself: as an encrypted backup file, or as an unencrypted Excel file whose safety is your responsibility.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR collects no personal data, shows no ads, uses no analytics and shares nothing with anyone. It asks only for the camera (to scan text) and biometrics (to unlock). Subscriptions are handled by Google Play; the app never sees your payment details. Deleting the app deletes all of its data. Before deleting it, you can export your entries to Excel; keeping that file safe is your responsibility.';

  @override
  String get aboutPermissionsTech =>
      '• Camera: used only while the scanner is open; no photos are saved and no sound is recorded.\n• Biometrics: your fingerprint or face is checked by the phone\'s system window; MÜHÜR never receives that data.\n• Files: accessed only when you choose where to save or open a backup or an Excel file.\n• No account, no server, no tracking or advertising identifiers.\n• Downloading the app and buying a subscription are handled by Google Play under Google\'s own privacy policy.';

  @override
  String get how1T => 'Vault and master password';

  @override
  String get how1B =>
      'Everything is kept in an encrypted vault on this phone. Only your master password opens it. It cannot be recovered, so choose one you will remember and keep a backup.';

  @override
  String get how2T => 'Entries and categories';

  @override
  String get how2B =>
      'Categories are fixed: Banks, Websites, Emails, Social Media, Business and Other. When you add an entry with the + button, you choose its category, and the category brings the fields that suit it. You cannot add new categories, but you can add fields to an entry with \"Add field\": pick one from the list or create a \"Custom field\" with a name of your choice.';

  @override
  String get how3T => 'Copying safely';

  @override
  String get how3B =>
      'Tap a field to copy it. The clipboard clears itself after the time you set. The clipboard icon on the home screen counts down; tap it to clear right away.';

  @override
  String get how4T => 'Scanning with the camera';

  @override
  String get how4B =>
      'Point the camera at a card or document to read an IBAN or text instead of typing it. Check the result before saving.';

  @override
  String get how5T => 'Trash';

  @override
  String get how5B =>
      'Deleted entries wait in the trash, still encrypted, and can be restored until the period you set ends.';

  @override
  String get how6T => 'Backup and restore';

  @override
  String get how6B =>
      'Create an encrypted backup file with its own password and keep it somewhere safe. Restoring only adds entries; existing ones are never overwritten.';

  @override
  String get how7T => 'Locking and biometrics';

  @override
  String get how7B =>
      'The vault locks itself when you leave the app. Turn on biometrics to open it with your fingerprint (or your face on phones that support it).';

  @override
  String get storyBody =>
      'Every great invention starts with someone trying to solve a small problem in their own life. The story of MÜHÜR is exactly that: a sincere but determined journey, born from a memory lost in the chaos of the digital world and from the instinct to protect what is your own.\n\nIt all began with the annoying pause caused by a single forgotten password. I designed MÜHÜR as a personal refuge that runs only on my own device, without depending on anyone else\'s cloud servers. Over time I realised I was not the only one who wanted their digital privacy back.\n\nToday MÜHÜR is for everyone who wants to keep their data fully under their own control, without entrusting it to any server.\n\nSeal the safest lock on your digital memory.';

  @override
  String get devBody =>
      'MÜHÜR is an independent project by UEK DESIGNER, designed and developed in Türkiye. Thank you for using MÜHÜR.';

  @override
  String get rn100 =>
      '• First release.\n• Encrypted vault on the phone, opened with a master password (Argon2id + AES-256).\n• Ready-made fields for banks, websites, e-mail, social media and business accounts.\n• Password generator with strength indicator.\n• Camera scanning for IBANs and text.\n• Fingerprint unlock (face on supported phones).\n• Encrypted backup and restore.\n• Excel export (unencrypted, at your own responsibility).\n• Trash with automatic clean-up.\n• Vault summary showing reused passwords.\n• Two-step verification codes, added by QR code.\n• Password history and vault health.\n• 14-day free Pro trial, no card needed.\n• Automatic lock, screen protection and clipboard countdown.\n• Works fully offline.\n• 18 languages.';

  @override
  String get excelExport => 'Export to Excel';

  @override
  String get excelExportDesc =>
      'Unencrypted .xlsx file of your entries, e.g. before deleting the app';

  @override
  String get excelExportWarnTitle => 'Unencrypted export';

  @override
  String get excelExportWarn =>
      'The Excel file is NOT encrypted. Anyone who gets the file can read all your passwords. Where you keep it, who you share it with and deleting it afterwards are entirely your responsibility. Entries in the trash are not included.';

  @override
  String get excelExportAgree =>
      'I understand; the file\'s safety is my responsibility.';

  @override
  String get excelExportSaved =>
      'Excel file saved. Delete it when you no longer need it.';

  @override
  String get excelExportFailed => 'The Excel file could not be created.';

  @override
  String get excelColDomain => 'Domain';

  @override
  String get excelColUpdated => 'Last updated';

  @override
  String get how8T => 'Exporting to Excel';

  @override
  String get how8B =>
      '\"Export to Excel\" in the backup settings writes all your entries (except the trash) to an .xlsx file, one sheet per category. The file is not encrypted: you confirm with your master password and accept that keeping it safe is your responsibility. Delete it when you no longer need it.';

  @override
  String get proFeatureTitle => 'Pro feature';

  @override
  String get proFieldsBody =>
      'Adding extra fields to an entry is a Pro feature. Fields you have already added stay and can still be edited.';

  @override
  String get proBiometricBody =>
      'Fingerprint unlock is a Pro feature. You can always unlock with your master password.';

  @override
  String get proBackgroundsBody =>
      'Extra backgrounds are a Pro feature. The default background is always available.';

  @override
  String bioGraceWarn(String days) {
    return 'Fingerprint unlock stays on for $days more, then turns off. Make sure you remember your master password. If you have forgotten it, set a new one with your fingerprint in Settings under \"Change master password\".';
  }

  @override
  String get genNewPassword => 'Generate new password';

  @override
  String fieldRemoved(String label) {
    return '\"$label\" removed';
  }

  @override
  String get undo => 'Undo';

  @override
  String get proStatusActive => 'Your Pro subscription is active';

  @override
  String proStatusTrial(String days) {
    return 'Free trial: $days left';
  }

  @override
  String get proStatusFree => 'Free plan';

  @override
  String get proTrialInfo =>
      'When the trial ends you move to the free plan automatically. No card needed, and nothing is deleted.';

  @override
  String get proFeatEntries => 'Unlimited entries';

  @override
  String get proFeatEntriesDesc => 'Free plan: 3 per category';

  @override
  String get proFeatScan => 'Unlimited camera scanning';

  @override
  String get proFeatScanDesc => 'Free plan: 3 scans';

  @override
  String get proFeatFields => 'Extra and custom fields';

  @override
  String get proFeatFieldsDesc => 'Add any field you need to an entry';

  @override
  String get proFeatBio => 'Fingerprint unlock';

  @override
  String get proFeatBioDesc => 'Open your vault with a touch';

  @override
  String get proFeatBg => 'All backgrounds';

  @override
  String get proFeatBgDesc => 'Choose from all 5 backgrounds';

  @override
  String get proFeatHealth => 'Vault health';

  @override
  String get proFeatHealthDesc =>
      'See which passwords are weak or reused and jump straight to them';

  @override
  String get proFeatTotp => 'Two-step verification codes';

  @override
  String get proFeatTotpDesc =>
      'Codes are generated inside your vault, offline';

  @override
  String get proFeatHistory => 'Password history';

  @override
  String get proFeatHistoryDesc =>
      'Old passwords are kept so you can look back';

  @override
  String get proYearly => 'Yearly';

  @override
  String get proMonthly => 'Monthly';

  @override
  String get proPerYear => '/ year';

  @override
  String get proPerMonth => '/ month';

  @override
  String get proBestValue => 'Best value';

  @override
  String get proSubscribe => 'Subscribe';

  @override
  String get proRestore => 'Restore purchase';

  @override
  String get proManage => 'Manage subscription';

  @override
  String get proFinePrint =>
      'Payment is made through Google Play. The subscription renews automatically until you cancel it, which you can do at any time in Google Play. If your subscription ends, your entries are not deleted.';

  @override
  String get proComingSoon =>
      'Purchases will open when MÜHÜR is published on Google Play.';

  @override
  String get proSeePlans => 'See Pro';

  @override
  String get proHealthBody =>
      'Seeing which entries have weak or reused passwords is a Pro feature. The counts are always visible.';

  @override
  String get healthWeakHint =>
      'Short or easy to guess. Replace them using the password generator.';

  @override
  String get healthReusedHint =>
      'The same password is used in more than one entry. If one leaks, the others are at risk too.';

  @override
  String get healthFairHint =>
      'Acceptable, but could be longer and more varied.';

  @override
  String get healthAllGood =>
      'No weak or reused passwords. Your vault is in good shape.';

  @override
  String get proHistoryBody =>
      'Seeing a password\'s previous values is a Pro feature. Passwords you change while on Pro are kept here.';

  @override
  String get historyEmpty =>
      'This password hasn\'t been changed yet. When you change it, the old value appears here.';

  @override
  String get historyNote =>
      'The last 10 values of each password field are kept, encrypted like the rest of your vault. Password history is not included in backups.';

  @override
  String get historyClearQ =>
      'Tap delete again to clear this field\'s password history.';

  @override
  String get totpHint => 'Setup key or otpauth:// link';

  @override
  String get totpInvalid =>
      'This key isn\'t valid. Paste the setup key the site gave you.';

  @override
  String get qrScan => 'Scan QR code';

  @override
  String get qrScanHint =>
      'Point the camera at the QR code the site shows when you set up two-step verification.';

  @override
  String get qrNot2fa => 'This QR code is not a 2FA setup code.';

  @override
  String get qrMigration =>
      'This is a Google Authenticator transfer code. Scan each site\'s own setup QR code instead.';

  @override
  String get totpEmpty => 'No key yet. Scan the QR code to add it.';

  @override
  String get how9T => 'Two-step verification (2FA)';

  @override
  String get how9B =>
      'In an entry, tap \"Add field\" and choose \"2FA Secret Key\". Scan the QR code the site shows during 2FA setup with the icon next to the field, or paste the setup key. If you save the field empty, it stays in the entry details and you can scan the QR code from there. The details show a 6-digit code and the time left; copy it and enter it on the site. Codes are made offline from the phone\'s clock, so a wrong clock gives wrong codes. Existing codes keep working even after Pro ends.';

  @override
  String get how10T => 'Password history and vault health';

  @override
  String get how10B =>
      'With Pro, when you change a password the old one is kept encrypted; the history icon in the entry details shows the last 10. The shield icon on the summary panel of the home screen opens vault health: weak and reused passwords are listed, and tapping one takes you to the entry.';

  @override
  String get how11T => 'Pro and the free trial';

  @override
  String get how11B =>
      'After the first setup, all Pro features are free for 14 days, with no card needed. When the trial ends you move to the free plan: up to 3 entries per category and 3 camera scans. Nothing is deleted, existing 2FA codes keep working and fingerprint unlock stays on for 7 more days. You can spot Pro features by the small PRO tag in their corner.';

  @override
  String get showValue => 'Show';

  @override
  String get hideValue => 'Hide';

  @override
  String get favoriteAdd => 'Add to favorites';

  @override
  String get favoriteRemove => 'Remove from favorites';

  @override
  String get proRedeem => 'Redeem a gift code';

  @override
  String get proThanks => 'Thank you! MÜHÜR Pro is active.';

  @override
  String get proPending =>
      'Your payment is pending. Pro turns on by itself once it completes.';

  @override
  String get proBuyError =>
      'The purchase couldn\'t be completed. Please try again later.';

  @override
  String get proRestoreDone => 'MÜHÜR Pro is active.';

  @override
  String get proRestoreNone =>
      'No active Pro was found on this Google account.';

  @override
  String get proStoreUnavailable =>
      'Couldn\'t reach Google Play. Make sure the Play Store is installed and you\'re signed in.';

  @override
  String proStatusGift(String days) {
    return 'Gift Pro: $days left';
  }

  @override
  String get proStatusGiftLife => 'Gift Pro: no expiry';

  @override
  String get scanCodesTitle => 'Scan backup codes';

  @override
  String get scanCodesHint =>
      'Point the camera at the backup code list the site gave you. Codes collect here as they are read; confirm when all of them are in.';

  @override
  String scanCodesCount(int count) {
    return 'Codes read: $count';
  }

  @override
  String get scanCodesClear => 'Clear list';

  @override
  String get totpRemoveTitle => 'Delete the 2FA key?';

  @override
  String get totpRemoveBody =>
      'If two-step verification is still on at the site, you may not be able to sign in to that account without this key. Turn it off at the site first, or make sure your backup codes are saved.';
}
