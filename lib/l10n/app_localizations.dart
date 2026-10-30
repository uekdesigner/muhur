import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('tr'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Muhur'**
  String get appName;

  /// No description provided for @catBanks.
  ///
  /// In en, this message translates to:
  /// **'Banks'**
  String get catBanks;

  /// No description provided for @catWebsites.
  ///
  /// In en, this message translates to:
  /// **'Websites'**
  String get catWebsites;

  /// No description provided for @catEmails.
  ///
  /// In en, this message translates to:
  /// **'Emails'**
  String get catEmails;

  /// No description provided for @catSocial.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get catSocial;

  /// No description provided for @catBusiness.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get catBusiness;

  /// No description provided for @catOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get catOther;

  /// No description provided for @setupTitle.
  ///
  /// In en, this message translates to:
  /// **'Create master password'**
  String get setupTitle;

  /// No description provided for @setupInfo.
  ///
  /// In en, this message translates to:
  /// **'This password cannot be recovered. If you forget it, your data can never be opened.'**
  String get setupInfo;

  /// No description provided for @masterPassword.
  ///
  /// In en, this message translates to:
  /// **'Master password'**
  String get masterPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Use at least 8 characters.'**
  String get passwordTooShort;

  /// No description provided for @passwordNeedsMix.
  ///
  /// In en, this message translates to:
  /// **'Use lowercase, uppercase, a digit and a special character.'**
  String get passwordNeedsMix;

  /// No description provided for @reqLength.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get reqLength;

  /// No description provided for @reqLower.
  ///
  /// In en, this message translates to:
  /// **'A lowercase letter'**
  String get reqLower;

  /// No description provided for @reqUpper.
  ///
  /// In en, this message translates to:
  /// **'An uppercase letter'**
  String get reqUpper;

  /// No description provided for @reqDigit.
  ///
  /// In en, this message translates to:
  /// **'A digit'**
  String get reqDigit;

  /// No description provided for @reqSpecial.
  ///
  /// In en, this message translates to:
  /// **'A special character (!@#...)'**
  String get reqSpecial;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match.'**
  String get passwordsDontMatch;

  /// No description provided for @createVault.
  ///
  /// In en, this message translates to:
  /// **'Create vault'**
  String get createVault;

  /// No description provided for @unlockTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlockTitle;

  /// No description provided for @unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock'**
  String get unlock;

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong master password.'**
  String get wrongPassword;

  /// No description provided for @lockedOut.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Try again in {seconds} seconds.'**
  String lockedOut(int seconds);

  /// No description provided for @useBiometrics.
  ///
  /// In en, this message translates to:
  /// **'Unlock with biometrics'**
  String get useBiometrics;

  /// No description provided for @enableBiometricsQ.
  ///
  /// In en, this message translates to:
  /// **'Enable biometric unlock?'**
  String get enableBiometricsQ;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get enable;

  /// No description provided for @notNow.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get notNow;

  /// No description provided for @biometricReason.
  ///
  /// In en, this message translates to:
  /// **'Unlock Muhur'**
  String get biometricReason;

  /// No description provided for @lockNow.
  ///
  /// In en, this message translates to:
  /// **'Lock'**
  String get lockNow;

  /// No description provided for @vaultUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Vault unlocked'**
  String get vaultUnlocked;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @noEntries.
  ///
  /// In en, this message translates to:
  /// **'No entries yet'**
  String get noEntries;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Search title, domain or tag'**
  String get searchHint;

  /// No description provided for @addEntry.
  ///
  /// In en, this message translates to:
  /// **'Add entry'**
  String get addEntry;

  /// No description provided for @editEntry.
  ///
  /// In en, this message translates to:
  /// **'Edit entry'**
  String get editEntry;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @domain.
  ///
  /// In en, this message translates to:
  /// **'Domain (e.g. example.com)'**
  String get domain;

  /// No description provided for @tags.
  ///
  /// In en, this message translates to:
  /// **'Tag'**
  String get tags;

  /// No description provided for @fields.
  ///
  /// In en, this message translates to:
  /// **'Fields'**
  String get fields;

  /// No description provided for @addField.
  ///
  /// In en, this message translates to:
  /// **'Add field'**
  String get addField;

  /// No description provided for @fieldLabel.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get fieldLabel;

  /// No description provided for @fieldValue.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get fieldValue;

  /// No description provided for @typeText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get typeText;

  /// No description provided for @typePassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get typePassword;

  /// No description provided for @typeUrl.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get typeUrl;

  /// No description provided for @typeNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get typeNotes;

  /// No description provided for @sensitive.
  ///
  /// In en, this message translates to:
  /// **'Hide value'**
  String get sensitive;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @deleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete this entry? This cannot be undone.'**
  String get deleteConfirm;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Title is required.'**
  String get titleRequired;

  /// No description provided for @fieldUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get fieldUsername;

  /// No description provided for @fieldPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get fieldPassword;

  /// No description provided for @fieldIban.
  ///
  /// In en, this message translates to:
  /// **'IBAN'**
  String get fieldIban;

  /// No description provided for @fieldNote.
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get fieldNote;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @copied.
  ///
  /// In en, this message translates to:
  /// **'Copied. The clipboard clears in {seconds} seconds.'**
  String copied(int seconds);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get settingsSecurity;

  /// No description provided for @settingsBackup.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get settingsBackup;

  /// No description provided for @settingsGeneral.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settingsGeneral;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @autoLock.
  ///
  /// In en, this message translates to:
  /// **'Auto-lock'**
  String get autoLock;

  /// No description provided for @immediately.
  ///
  /// In en, this message translates to:
  /// **'Immediately'**
  String get immediately;

  /// No description provided for @seconds15.
  ///
  /// In en, this message translates to:
  /// **'15 seconds'**
  String get seconds15;

  /// No description provided for @minute1.
  ///
  /// In en, this message translates to:
  /// **'1 minute'**
  String get minute1;

  /// No description provided for @copyTimer.
  ///
  /// In en, this message translates to:
  /// **'Clipboard timer'**
  String get copyTimer;

  /// No description provided for @copyTimerHint.
  ///
  /// In en, this message translates to:
  /// **'Copied data is cleared from the clipboard after this time, and the vault stays unlocked until then.'**
  String get copyTimerHint;

  /// No description provided for @secondsShort.
  ///
  /// In en, this message translates to:
  /// **'{seconds} sec'**
  String secondsShort(int seconds);

  /// No description provided for @biometricUnlock.
  ///
  /// In en, this message translates to:
  /// **'Biometric unlock'**
  String get biometricUnlock;

  /// No description provided for @generator.
  ///
  /// In en, this message translates to:
  /// **'Password generator'**
  String get generator;

  /// No description provided for @generate.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get generate;

  /// No description provided for @length.
  ///
  /// In en, this message translates to:
  /// **'Length'**
  String get length;

  /// No description provided for @lowercase.
  ///
  /// In en, this message translates to:
  /// **'Lowercase (a-z)'**
  String get lowercase;

  /// No description provided for @uppercase.
  ///
  /// In en, this message translates to:
  /// **'Uppercase (A-Z)'**
  String get uppercase;

  /// No description provided for @digits.
  ///
  /// In en, this message translates to:
  /// **'Digits (0-9)'**
  String get digits;

  /// No description provided for @symbols.
  ///
  /// In en, this message translates to:
  /// **'Symbols (!@#...)'**
  String get symbols;

  /// No description provided for @avoidAmbiguous.
  ///
  /// In en, this message translates to:
  /// **'Avoid look-alike characters (O/0, l/1)'**
  String get avoidAmbiguous;

  /// No description provided for @regenerate.
  ///
  /// In en, this message translates to:
  /// **'Regenerate'**
  String get regenerate;

  /// No description provided for @usePassword.
  ///
  /// In en, this message translates to:
  /// **'Use this password'**
  String get usePassword;

  /// No description provided for @strengthWeak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get strengthWeak;

  /// No description provided for @strengthFair.
  ///
  /// In en, this message translates to:
  /// **'Fair'**
  String get strengthFair;

  /// No description provided for @strengthGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get strengthGood;

  /// No description provided for @strengthStrong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get strengthStrong;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan with camera'**
  String get scan;

  /// No description provided for @scanHint.
  ///
  /// In en, this message translates to:
  /// **'Hold the camera steady over the text. In IBAN mode it is detected automatically.'**
  String get scanHint;

  /// No description provided for @scanRetake.
  ///
  /// In en, this message translates to:
  /// **'Retake'**
  String get scanRetake;

  /// No description provided for @scanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get scanning;

  /// No description provided for @ibanFound.
  ///
  /// In en, this message translates to:
  /// **'IBAN found'**
  String get ibanFound;

  /// No description provided for @ibanNotFound.
  ///
  /// In en, this message translates to:
  /// **'No valid IBAN found. Try again with better light, or pick a line below.'**
  String get ibanNotFound;

  /// No description provided for @ibanCorrected.
  ///
  /// In en, this message translates to:
  /// **'Possibly corrected after an OCR error. Check carefully.'**
  String get ibanCorrected;

  /// No description provided for @pickLine.
  ///
  /// In en, this message translates to:
  /// **'Tap a line to use it'**
  String get pickLine;

  /// No description provided for @noTextFound.
  ///
  /// In en, this message translates to:
  /// **'No text found.'**
  String get noTextFound;

  /// No description provided for @cameraError.
  ///
  /// In en, this message translates to:
  /// **'Camera is unavailable. Check the camera permission.'**
  String get cameraError;

  /// No description provided for @editBeforeUse.
  ///
  /// In en, this message translates to:
  /// **'Check and edit if needed'**
  String get editBeforeUse;

  /// No description provided for @useValue.
  ///
  /// In en, this message translates to:
  /// **'Use'**
  String get useValue;

  /// No description provided for @brandName.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR'**
  String get brandName;

  /// No description provided for @brandSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Password Manager'**
  String get brandSubtitle;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'SEAL your digital data.\n No servers. Just you and your data.\n MÜHÜR: Your digital vault that only you can see.'**
  String get tagline;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'ENTER'**
  String get login;

  /// No description provided for @infoTitle.
  ///
  /// In en, this message translates to:
  /// **'About Muhur'**
  String get infoTitle;

  /// No description provided for @infoBody.
  ///
  /// In en, this message translates to:
  /// **'Muhur keeps your passwords encrypted on this device only. There is no account and no server.\n\nYour master password cannot be recovered. If you forget it, your data cannot be opened, so keep an encrypted backup.'**
  String get infoBody;

  /// No description provided for @understandNoRecovery.
  ///
  /// In en, this message translates to:
  /// **'I understand that a forgotten master password cannot be recovered.'**
  String get understandNoRecovery;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get languageSystem;

  /// No description provided for @statTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get statTotal;

  /// No description provided for @statReused.
  ///
  /// In en, this message translates to:
  /// **'Reused'**
  String get statReused;

  /// No description provided for @planFree.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get planFree;

  /// No description provided for @statusScreen.
  ///
  /// In en, this message translates to:
  /// **'Screen protection'**
  String get statusScreen;

  /// No description provided for @screenshotAllow.
  ///
  /// In en, this message translates to:
  /// **'Allow screenshots'**
  String get screenshotAllow;

  /// No description provided for @screenshotAllowHint.
  ///
  /// In en, this message translates to:
  /// **'Screen protection is switched off for the time set below, then turns back on automatically.'**
  String get screenshotAllowHint;

  /// No description provided for @screenshotTimer.
  ///
  /// In en, this message translates to:
  /// **'Screenshot time'**
  String get screenshotTimer;

  /// No description provided for @statusBackup.
  ///
  /// In en, this message translates to:
  /// **'Auto backup'**
  String get statusBackup;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get helpTitle;

  /// No description provided for @helpBody.
  ///
  /// In en, this message translates to:
  /// **'Help content will be added here.'**
  String get helpBody;

  /// No description provided for @deleteSelectedConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete {count} selected entries? This cannot be undone.'**
  String deleteSelectedConfirm(int count);

  /// No description provided for @fcBankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get fcBankName;

  /// No description provided for @fcTag.
  ///
  /// In en, this message translates to:
  /// **'Tag'**
  String get fcTag;

  /// No description provided for @fcInternetBankingPassword.
  ///
  /// In en, this message translates to:
  /// **'Online Banking Password'**
  String get fcInternetBankingPassword;

  /// No description provided for @fcCardPin.
  ///
  /// In en, this message translates to:
  /// **'Card PIN'**
  String get fcCardPin;

  /// No description provided for @fcCardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get fcCardNumber;

  /// No description provided for @fcExpiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get fcExpiryDate;

  /// No description provided for @fcCvv.
  ///
  /// In en, this message translates to:
  /// **'CVV / CVC'**
  String get fcCvv;

  /// No description provided for @fcCustomerServiceNo.
  ///
  /// In en, this message translates to:
  /// **'Customer Service Number'**
  String get fcCustomerServiceNo;

  /// No description provided for @fcCustomerNoTc.
  ///
  /// In en, this message translates to:
  /// **'Customer Number / National ID'**
  String get fcCustomerNoTc;

  /// No description provided for @fcBranchNameCode.
  ///
  /// In en, this message translates to:
  /// **'Branch Name & Code'**
  String get fcBranchNameCode;

  /// No description provided for @fcAccountType.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get fcAccountType;

  /// No description provided for @fcPhoneBankingPassword.
  ///
  /// In en, this message translates to:
  /// **'Phone Banking Password'**
  String get fcPhoneBankingPassword;

  /// No description provided for @fcSwiftBic.
  ///
  /// In en, this message translates to:
  /// **'SWIFT / BIC Code'**
  String get fcSwiftBic;

  /// No description provided for @fcCardStatementDate.
  ///
  /// In en, this message translates to:
  /// **'Statement & Due Date'**
  String get fcCardStatementDate;

  /// No description provided for @fcAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Account Title'**
  String get fcAccountTitle;

  /// No description provided for @fcEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get fcEmailAddress;

  /// No description provided for @fcRecoveryEmail.
  ///
  /// In en, this message translates to:
  /// **'Recovery Email'**
  String get fcRecoveryEmail;

  /// No description provided for @fcRecoveryPhone.
  ///
  /// In en, this message translates to:
  /// **'Recovery Phone'**
  String get fcRecoveryPhone;

  /// No description provided for @fc2faBackupCodes.
  ///
  /// In en, this message translates to:
  /// **'2FA / Backup Codes'**
  String get fc2faBackupCodes;

  /// No description provided for @fcLoginMethodProvider.
  ///
  /// In en, this message translates to:
  /// **'Login Method / Provider'**
  String get fcLoginMethodProvider;

  /// No description provided for @fcImapSmtp.
  ///
  /// In en, this message translates to:
  /// **'IMAP / SMTP Server Settings'**
  String get fcImapSmtp;

  /// No description provided for @fcSecurityQA.
  ///
  /// In en, this message translates to:
  /// **'Security Question & Answer'**
  String get fcSecurityQA;

  /// No description provided for @fcPasswordChangeDate.
  ///
  /// In en, this message translates to:
  /// **'Password Change Date'**
  String get fcPasswordChangeDate;

  /// No description provided for @fcPlatformTitle.
  ///
  /// In en, this message translates to:
  /// **'Platform / Title'**
  String get fcPlatformTitle;

  /// No description provided for @fcUsernameProfileId.
  ///
  /// In en, this message translates to:
  /// **'Username / Profile ID'**
  String get fcUsernameProfileId;

  /// No description provided for @fcRegisteredEmail.
  ///
  /// In en, this message translates to:
  /// **'Registered Email'**
  String get fcRegisteredEmail;

  /// No description provided for @fcRegisteredPhone.
  ///
  /// In en, this message translates to:
  /// **'Registered Phone Number'**
  String get fcRegisteredPhone;

  /// No description provided for @fcProfileUrl.
  ///
  /// In en, this message translates to:
  /// **'Profile Link (URL)'**
  String get fcProfileUrl;

  /// No description provided for @fcAccountTypeStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Type / Status'**
  String get fcAccountTypeStatus;

  /// No description provided for @fcLinkedMainAccount.
  ///
  /// In en, this message translates to:
  /// **'Linked Main Account'**
  String get fcLinkedMainAccount;

  /// No description provided for @fcProfileNumericId.
  ///
  /// In en, this message translates to:
  /// **'Profile / Numeric ID'**
  String get fcProfileNumericId;

  /// No description provided for @fc2faSecretKey.
  ///
  /// In en, this message translates to:
  /// **'2FA Secret Key'**
  String get fc2faSecretKey;

  /// No description provided for @fcServiceName.
  ///
  /// In en, this message translates to:
  /// **'Organization / Service Name'**
  String get fcServiceName;

  /// No description provided for @fcCompanyName.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get fcCompanyName;

  /// No description provided for @fcCorporateUserId.
  ///
  /// In en, this message translates to:
  /// **'Username / Corporate ID'**
  String get fcCorporateUserId;

  /// No description provided for @fcPanelUrl.
  ///
  /// In en, this message translates to:
  /// **'Service / Panel Address (URL)'**
  String get fcPanelUrl;

  /// No description provided for @fcDepartmentPosition.
  ///
  /// In en, this message translates to:
  /// **'Department / Position'**
  String get fcDepartmentPosition;

  /// No description provided for @fcLicenseCode.
  ///
  /// In en, this message translates to:
  /// **'Customer / License Code'**
  String get fcLicenseCode;

  /// No description provided for @fcSupportContact.
  ///
  /// In en, this message translates to:
  /// **'Authorized / Support Contact'**
  String get fcSupportContact;

  /// No description provided for @fcLoginMethodVerification.
  ///
  /// In en, this message translates to:
  /// **'Login Method / Verification Type'**
  String get fcLoginMethodVerification;

  /// No description provided for @fcTaxOffice.
  ///
  /// In en, this message translates to:
  /// **'Tax Office & Tax No'**
  String get fcTaxOffice;

  /// No description provided for @fcRegistryNo.
  ///
  /// In en, this message translates to:
  /// **'Registry No / Dealer Code'**
  String get fcRegistryNo;

  /// No description provided for @fcIpVpn.
  ///
  /// In en, this message translates to:
  /// **'IP Restriction / VPN Address'**
  String get fcIpVpn;

  /// No description provided for @fcLicenseExpiry.
  ///
  /// In en, this message translates to:
  /// **'Portal / License Expiry Date'**
  String get fcLicenseExpiry;

  /// No description provided for @fcSiteName.
  ///
  /// In en, this message translates to:
  /// **'Site / Service Name'**
  String get fcSiteName;

  /// No description provided for @fcWebAddress.
  ///
  /// In en, this message translates to:
  /// **'Web Address (URL)'**
  String get fcWebAddress;

  /// No description provided for @fcUsernameEmail.
  ///
  /// In en, this message translates to:
  /// **'Username / Email'**
  String get fcUsernameEmail;

  /// No description provided for @fcSubscriptionFee.
  ///
  /// In en, this message translates to:
  /// **'Subscription Fee & Period'**
  String get fcSubscriptionFee;

  /// No description provided for @fcRegistrationDate.
  ///
  /// In en, this message translates to:
  /// **'Registration Date'**
  String get fcRegistrationDate;

  /// No description provided for @fcPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Billing / Payment Method'**
  String get fcPaymentMethod;

  /// No description provided for @fcPinCode.
  ///
  /// In en, this message translates to:
  /// **'PIN Code'**
  String get fcPinCode;

  /// No description provided for @fcLicenseCodeSimple.
  ///
  /// In en, this message translates to:
  /// **'License Code'**
  String get fcLicenseCodeSimple;

  /// No description provided for @pickFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Pick a field'**
  String get pickFieldTitle;

  /// No description provided for @allFieldsAdded.
  ///
  /// In en, this message translates to:
  /// **'All fields added'**
  String get allFieldsAdded;

  /// No description provided for @generatorSettings.
  ///
  /// In en, this message translates to:
  /// **'Generator settings'**
  String get generatorSettings;

  /// No description provided for @saveAndExit.
  ///
  /// In en, this message translates to:
  /// **'Save and exit'**
  String get saveAndExit;

  /// No description provided for @customField.
  ///
  /// In en, this message translates to:
  /// **'Custom field'**
  String get customField;

  /// No description provided for @customFieldName.
  ///
  /// In en, this message translates to:
  /// **'Field name'**
  String get customFieldName;

  /// No description provided for @customFieldType.
  ///
  /// In en, this message translates to:
  /// **'Field type'**
  String get customFieldType;

  /// No description provided for @customTypeText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get customTypeText;

  /// No description provided for @customTypeNote.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get customTypeNote;

  /// No description provided for @customTypePassword.
  ///
  /// In en, this message translates to:
  /// **'Hidden password'**
  String get customTypePassword;

  /// No description provided for @customTypeDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get customTypeDate;

  /// No description provided for @customTypePhone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get customTypePhone;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'de', 'en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'tr':
      return AppLocalizationsTr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
