import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';

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
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR'**
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

  /// No description provided for @changeMasterPassword.
  ///
  /// In en, this message translates to:
  /// **'Change master password'**
  String get changeMasterPassword;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get newPassword;

  /// No description provided for @newPasswordSame.
  ///
  /// In en, this message translates to:
  /// **'The new password must be different from the current one.'**
  String get newPasswordSame;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @masterPasswordChanged.
  ///
  /// In en, this message translates to:
  /// **'Master password changed.'**
  String get masterPasswordChanged;

  /// No description provided for @changePasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not change the password. Please try again.'**
  String get changePasswordFailed;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Use at least 8 characters.'**
  String get passwordTooShort;

  /// No description provided for @passwordNeedsMix.
  ///
  /// In en, this message translates to:
  /// **'Use lowercase and uppercase letters and a digit.'**
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
  /// **'A special character (!@#...) – optional'**
  String get reqSpecial;

  /// No description provided for @reqOptional.
  ///
  /// In en, this message translates to:
  /// **'optional'**
  String get reqOptional;

  /// No description provided for @passwordsDontMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match.'**
  String get passwordsDontMatch;

  /// No description provided for @createVault.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get createVault;

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
  /// **'Unlock MÜHÜR'**
  String get biometricReason;

  /// No description provided for @lockNow.
  ///
  /// In en, this message translates to:
  /// **'Lock'**
  String get lockNow;

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
  /// **'Search title, domain, tag'**
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

  /// No description provided for @typeText.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get typeText;

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

  /// No description provided for @moveToTrash.
  ///
  /// In en, this message translates to:
  /// **'Move to trash'**
  String get moveToTrash;

  /// No description provided for @trash.
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get trash;

  /// No description provided for @trashKeepFor.
  ///
  /// In en, this message translates to:
  /// **'Keep in trash for'**
  String get trashKeepFor;

  /// No description provided for @trashHint.
  ///
  /// In en, this message translates to:
  /// **'Deleted entries stay in the trash, still encrypted, and can be restored. They are permanently deleted after this many days, the next time the vault is unlocked. Shortening the period also removes older items from the trash. Emptying the trash cannot be undone.'**
  String get trashHint;

  /// No description provided for @daysCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String daysCount(int count);

  /// No description provided for @openTrash.
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get openTrash;

  /// No description provided for @trashEmpty.
  ///
  /// In en, this message translates to:
  /// **'The trash is empty.'**
  String get trashEmpty;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @deleteForever.
  ///
  /// In en, this message translates to:
  /// **'Erase'**
  String get deleteForever;

  /// No description provided for @deleteForeverConfirm.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete this entry? This cannot be undone.'**
  String get deleteForeverConfirm;

  /// No description provided for @trashDaysLeft.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day left} other{{count} days left}}'**
  String trashDaysLeft(int count);

  /// No description provided for @emptyTrashNow.
  ///
  /// In en, this message translates to:
  /// **'Empty trash'**
  String get emptyTrashNow;

  /// No description provided for @emptyTrashConfirm.
  ///
  /// In en, this message translates to:
  /// **'Permanently delete {count, plural, =1{1 entry} other{{count} entries}} from the trash? This cannot be undone.'**
  String emptyTrashConfirm(int count);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @deleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Move this entry to the trash? You can restore it until the trash is emptied.'**
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
  /// **'Instant'**
  String get immediately;

  /// No description provided for @copyTimer.
  ///
  /// In en, this message translates to:
  /// **'Copy timer'**
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
  /// **'Biometrics'**
  String get biometricUnlock;

  /// No description provided for @generator.
  ///
  /// In en, this message translates to:
  /// **'Generator'**
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
  /// **'No look-alikes (O/0, l/1)'**
  String get avoidAmbiguous;

  /// No description provided for @regenerate.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get regenerate;

  /// No description provided for @usePassword.
  ///
  /// In en, this message translates to:
  /// **'Use'**
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
  /// **'Scan'**
  String get scan;

  /// No description provided for @scanHint.
  ///
  /// In en, this message translates to:
  /// **'Hold the camera steady over the text. In IBAN mode it is detected automatically.'**
  String get scanHint;

  /// No description provided for @scanning.
  ///
  /// In en, this message translates to:
  /// **'Scanning...'**
  String get scanning;

  /// No description provided for @ibanCorrected.
  ///
  /// In en, this message translates to:
  /// **'Possibly corrected after an OCR error. Check carefully.'**
  String get ibanCorrected;

  /// No description provided for @cameraError.
  ///
  /// In en, this message translates to:
  /// **'Camera is unavailable. Check the camera permission.'**
  String get cameraError;

  /// No description provided for @editBeforeUse.
  ///
  /// In en, this message translates to:
  /// **'Check and edit'**
  String get editBeforeUse;

  /// No description provided for @useValue.
  ///
  /// In en, this message translates to:
  /// **'Use'**
  String get useValue;

  /// No description provided for @scanIsThis.
  ///
  /// In en, this message translates to:
  /// **'Is this the one?'**
  String get scanIsThis;

  /// No description provided for @scanNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get scanNo;

  /// No description provided for @scanYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get scanYes;

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
  /// **'SEAL your digital data.\nNo servers. Just you and your data.\nSEAL: the safest lock for your digital memory.'**
  String get tagline;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'ENTER'**
  String get login;

  /// No description provided for @infoTitle.
  ///
  /// In en, this message translates to:
  /// **'About MÜHÜR'**
  String get infoTitle;

  /// No description provided for @infoBody.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR keeps your passwords encrypted on this device only. There is no account and no server.\n\nYour master password cannot be recovered. If you forget it, your data cannot be opened, so keep an encrypted backup.'**
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

  /// No description provided for @sectionLanguage.
  ///
  /// In en, this message translates to:
  /// **'LANGUAGE'**
  String get sectionLanguage;

  /// No description provided for @sectionExperience.
  ///
  /// In en, this message translates to:
  /// **'EXPERIENCE'**
  String get sectionExperience;

  /// No description provided for @sectionAppearance.
  ///
  /// In en, this message translates to:
  /// **'APPEARANCE'**
  String get sectionAppearance;

  /// No description provided for @panelDarkness.
  ///
  /// In en, this message translates to:
  /// **'Panel darkness'**
  String get panelDarkness;

  /// No description provided for @panelDarknessDesc.
  ///
  /// In en, this message translates to:
  /// **'Makes panels and cards more or less see-through'**
  String get panelDarknessDesc;

  /// No description provided for @backgroundTitle.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get backgroundTitle;

  /// No description provided for @backgroundDim.
  ///
  /// In en, this message translates to:
  /// **'Dimming'**
  String get backgroundDim;

  /// No description provided for @backgroundDimDesc.
  ///
  /// In en, this message translates to:
  /// **'Makes the background image darker or lighter'**
  String get backgroundDimDesc;

  /// No description provided for @bgBronze.
  ///
  /// In en, this message translates to:
  /// **'Bronze'**
  String get bgBronze;

  /// No description provided for @bgEmber.
  ///
  /// In en, this message translates to:
  /// **'Ember'**
  String get bgEmber;

  /// No description provided for @bgSapphire.
  ///
  /// In en, this message translates to:
  /// **'Sapphire'**
  String get bgSapphire;

  /// No description provided for @bgObsidian.
  ///
  /// In en, this message translates to:
  /// **'Obsidian'**
  String get bgObsidian;

  /// No description provided for @bgLumen.
  ///
  /// In en, this message translates to:
  /// **'Lumen'**
  String get bgLumen;

  /// No description provided for @smartGuide.
  ///
  /// In en, this message translates to:
  /// **'Smart tips'**
  String get smartGuide;

  /// No description provided for @smartGuideDesc.
  ///
  /// In en, this message translates to:
  /// **'Shows short tips the first time you use a feature'**
  String get smartGuideDesc;

  /// No description provided for @haptics.
  ///
  /// In en, this message translates to:
  /// **'Vibration'**
  String get haptics;

  /// No description provided for @hapticsDesc.
  ///
  /// In en, this message translates to:
  /// **'Gives a short vibration on fingerprint unlock and when copying'**
  String get hapticsDesc;

  /// No description provided for @reduceAnimations.
  ///
  /// In en, this message translates to:
  /// **'No animations'**
  String get reduceAnimations;

  /// No description provided for @reduceAnimationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Turns off every animation in the app: the help icon wiggle and glow, the help menu, page transitions, dialogs and the scanner line. Useful on slower devices and for people sensitive to motion.'**
  String get reduceAnimationsDesc;

  /// No description provided for @resetTips.
  ///
  /// In en, this message translates to:
  /// **'Reset tips'**
  String get resetTips;

  /// No description provided for @resetTipsDesc.
  ///
  /// In en, this message translates to:
  /// **'Show the help animation and all tips again'**
  String get resetTipsDesc;

  /// No description provided for @tipsResetDone.
  ///
  /// In en, this message translates to:
  /// **'Tips will be shown again'**
  String get tipsResetDone;

  /// No description provided for @tipLongPress.
  ///
  /// In en, this message translates to:
  /// **'Tip: long press an entry to select it, then delete several at once.'**
  String get tipLongPress;

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

  /// No description provided for @backupSection.
  ///
  /// In en, this message translates to:
  /// **'ENCRYPTED BACKUP'**
  String get backupSection;

  /// No description provided for @backupExport.
  ///
  /// In en, this message translates to:
  /// **'Create backup'**
  String get backupExport;

  /// No description provided for @backupExportDesc.
  ///
  /// In en, this message translates to:
  /// **'Saves all entries, including the trash, to a file protected by a backup password. Keep the file somewhere safe.'**
  String get backupExportDesc;

  /// No description provided for @backupImport.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get backupImport;

  /// No description provided for @backupImportDesc.
  ///
  /// In en, this message translates to:
  /// **'Adds the entries from a backup file. Existing entries are never overwritten or deleted.'**
  String get backupImportDesc;

  /// No description provided for @backupPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup password'**
  String get backupPasswordTitle;

  /// No description provided for @backupPasswordInfo.
  ///
  /// In en, this message translates to:
  /// **'This password protects the backup file. It can be different from your master password. If you forget it, the backup cannot be opened.'**
  String get backupPasswordInfo;

  /// No description provided for @backupEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter the backup password'**
  String get backupEnterPassword;

  /// No description provided for @backupContinue.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get backupContinue;

  /// No description provided for @backupSaved.
  ///
  /// In en, this message translates to:
  /// **'Backup saved'**
  String get backupSaved;

  /// No description provided for @backupFailed.
  ///
  /// In en, this message translates to:
  /// **'The backup could not be created'**
  String get backupFailed;

  /// No description provided for @backupRestored.
  ///
  /// In en, this message translates to:
  /// **'{added} added, {skipped} already existed'**
  String backupRestored(int added, int skipped);

  /// No description provided for @backupWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong backup password'**
  String get backupWrongPassword;

  /// No description provided for @backupInvalidFile.
  ///
  /// In en, this message translates to:
  /// **'This is not a valid MÜHÜR backup file'**
  String get backupInvalidFile;

  /// No description provided for @backupReminderTitle.
  ///
  /// In en, this message translates to:
  /// **'Backup reminder'**
  String get backupReminderTitle;

  /// No description provided for @backupReminderDesc.
  ///
  /// In en, this message translates to:
  /// **'Reminds you on the home screen when your last backup is older than this. Set to 0 to turn it off.'**
  String get backupReminderDesc;

  /// No description provided for @backupReminderOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get backupReminderOff;

  /// No description provided for @backupReminderNever.
  ///
  /// In en, this message translates to:
  /// **'You have not made a backup yet. Back up now so you do not lose your passwords.'**
  String get backupReminderNever;

  /// No description provided for @backupReminderAgo.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{Your last backup was 1 day ago.} other{Your last backup was {days} days ago.}}'**
  String backupReminderAgo(int days);

  /// No description provided for @backupReminderNow.
  ///
  /// In en, this message translates to:
  /// **'Back up'**
  String get backupReminderNow;

  /// No description provided for @backupReminderLater.
  ///
  /// In en, this message translates to:
  /// **'Later'**
  String get backupReminderLater;

  /// No description provided for @statusScreenOn.
  ///
  /// In en, this message translates to:
  /// **'Screen protection is on: screenshots and screen recording are blocked'**
  String get statusScreenOn;

  /// No description provided for @statusScreenOff.
  ///
  /// In en, this message translates to:
  /// **'Screen protection is off for now: screenshots are allowed'**
  String get statusScreenOff;

  /// No description provided for @statusBackupNever.
  ///
  /// In en, this message translates to:
  /// **'No backup yet. Create one in Settings > Backup'**
  String get statusBackupNever;

  /// No description provided for @statusBackupOk.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0{Backed up today} =1{Last backup: yesterday} other{Last backup: {days} days ago}}'**
  String statusBackupOk(int days);

  /// No description provided for @statusBackupOverdue.
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{Backup overdue: last one was 1 day ago} other{Backup overdue: last one was {days} days ago}}'**
  String statusBackupOverdue(int days);

  /// No description provided for @statusTrash.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Trash is empty} =1{1 item in trash} other{{count} items in trash}}'**
  String statusTrash(int count);

  /// No description provided for @statusBiometricOn.
  ///
  /// In en, this message translates to:
  /// **'Biometric unlock is on'**
  String get statusBiometricOn;

  /// No description provided for @statusBiometricOff.
  ///
  /// In en, this message translates to:
  /// **'Biometric unlock is off (tap to set up)'**
  String get statusBiometricOff;

  /// No description provided for @helpStatusScreen.
  ///
  /// In en, this message translates to:
  /// **'Shield icon: Screen protection (green = on, faded = off)'**
  String get helpStatusScreen;

  /// No description provided for @helpStatusBackup.
  ///
  /// In en, this message translates to:
  /// **'Backup icon: Backup status (green = recent backup, faded = backup due)'**
  String get helpStatusBackup;

  /// No description provided for @helpStatusTrash.
  ///
  /// In en, this message translates to:
  /// **'Trash icon: Deleted entries (number = items waiting, tap to open)'**
  String get helpStatusTrash;

  /// No description provided for @helpStatusBiometric.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint icon: Biometric unlock (green = on, tap to change)'**
  String get helpStatusBiometric;

  /// No description provided for @helpTitle.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get helpTitle;

  /// No description provided for @helpMenuTitle.
  ///
  /// In en, this message translates to:
  /// **'How to use?'**
  String get helpMenuTitle;

  /// No description provided for @helpAdd.
  ///
  /// In en, this message translates to:
  /// **'+ button: Add a new entry'**
  String get helpAdd;

  /// No description provided for @helpTap.
  ///
  /// In en, this message translates to:
  /// **'Tap a card: View details'**
  String get helpTap;

  /// No description provided for @helpLongPress.
  ///
  /// In en, this message translates to:
  /// **'Long press: Select and delete'**
  String get helpLongPress;

  /// No description provided for @helpSearch.
  ///
  /// In en, this message translates to:
  /// **'Search: Find quickly'**
  String get helpSearch;

  /// No description provided for @helpCategories.
  ///
  /// In en, this message translates to:
  /// **'Categories: Filter your entries'**
  String get helpCategories;

  /// No description provided for @helpLock.
  ///
  /// In en, this message translates to:
  /// **'Lock icon: Lock the vault now'**
  String get helpLock;

  /// No description provided for @helpSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings: Backup, auto-lock and more'**
  String get helpSettings;

  /// No description provided for @helpStats.
  ///
  /// In en, this message translates to:
  /// **'Bottom panel: Vault summary'**
  String get helpStats;

  /// No description provided for @deleteSelectedConfirm.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Move 1 selected entry to the trash?} other{Move {count} selected entries to the trash?}}'**
  String deleteSelectedConfirm(int count);

  /// No description provided for @fcBankName.
  ///
  /// In en, this message translates to:
  /// **'Bank Name'**
  String get fcBankName;

  /// No description provided for @fcInternetBankingPassword.
  ///
  /// In en, this message translates to:
  /// **'Online Bank Password'**
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
  /// **'Support No.'**
  String get fcCustomerServiceNo;

  /// No description provided for @fcCustomerNoTc.
  ///
  /// In en, this message translates to:
  /// **'Customer No / ID'**
  String get fcCustomerNoTc;

  /// No description provided for @fcAccountType.
  ///
  /// In en, this message translates to:
  /// **'Account Type'**
  String get fcAccountType;

  /// No description provided for @fcPhoneBankingPassword.
  ///
  /// In en, this message translates to:
  /// **'Phone Bank Password'**
  String get fcPhoneBankingPassword;

  /// No description provided for @fcSwiftBic.
  ///
  /// In en, this message translates to:
  /// **'SWIFT / BIC'**
  String get fcSwiftBic;

  /// No description provided for @fcCardStatementDate.
  ///
  /// In en, this message translates to:
  /// **'Statement / Due'**
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

  /// No description provided for @fcSecurityQA.
  ///
  /// In en, this message translates to:
  /// **'Security Q&A'**
  String get fcSecurityQA;

  /// No description provided for @fcPasswordChangeDate.
  ///
  /// In en, this message translates to:
  /// **'Password Changed'**
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
  /// **'Registered Phone'**
  String get fcRegisteredPhone;

  /// No description provided for @fcProfileUrl.
  ///
  /// In en, this message translates to:
  /// **'Profile URL'**
  String get fcProfileUrl;

  /// No description provided for @fcAccountTypeStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Type / Status'**
  String get fcAccountTypeStatus;

  /// No description provided for @fcLinkedMainAccount.
  ///
  /// In en, this message translates to:
  /// **'Linked Account'**
  String get fcLinkedMainAccount;

  /// No description provided for @fc2faSecretKey.
  ///
  /// In en, this message translates to:
  /// **'2FA Secret Key'**
  String get fc2faSecretKey;

  /// No description provided for @fcServiceName.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
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
  /// **'Panel URL'**
  String get fcPanelUrl;

  /// No description provided for @fcDepartmentPosition.
  ///
  /// In en, this message translates to:
  /// **'Department / Position'**
  String get fcDepartmentPosition;

  /// No description provided for @fcLicenseCode.
  ///
  /// In en, this message translates to:
  /// **'Customer / License'**
  String get fcLicenseCode;

  /// No description provided for @fcSupportContact.
  ///
  /// In en, this message translates to:
  /// **'Support Contact'**
  String get fcSupportContact;

  /// No description provided for @fcSiteName.
  ///
  /// In en, this message translates to:
  /// **'Site Name'**
  String get fcSiteName;

  /// No description provided for @fcWebAddress.
  ///
  /// In en, this message translates to:
  /// **'Website URL'**
  String get fcWebAddress;

  /// No description provided for @fcUsernameEmail.
  ///
  /// In en, this message translates to:
  /// **'Username / Email'**
  String get fcUsernameEmail;

  /// No description provided for @pickFieldTitle.
  ///
  /// In en, this message translates to:
  /// **'Pick a field'**
  String get pickFieldTitle;

  /// No description provided for @generatorSettings.
  ///
  /// In en, this message translates to:
  /// **'Generator settings'**
  String get generatorSettings;

  /// No description provided for @saveAndExit.
  ///
  /// In en, this message translates to:
  /// **'Save & exit'**
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
  /// **'Password'**
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

  /// No description provided for @orphanVaultTitle.
  ///
  /// In en, this message translates to:
  /// **'Old vault found'**
  String get orphanVaultTitle;

  /// No description provided for @orphanVaultBody.
  ///
  /// In en, this message translates to:
  /// **'A vault file from before exists on this device, but its keys can\'t be read, so it can\'t be opened. If you continue, that old data will be deleted. If you have a backup, create a new vault and restore it afterwards.'**
  String get orphanVaultBody;

  /// No description provided for @orphanVaultReplace.
  ///
  /// In en, this message translates to:
  /// **'Delete and continue'**
  String get orphanVaultReplace;

  /// No description provided for @forgotOldPassword.
  ///
  /// In en, this message translates to:
  /// **'I don\'t remember my current password'**
  String get forgotOldPassword;

  /// No description provided for @useCurrentPassword.
  ///
  /// In en, this message translates to:
  /// **'Use my current password instead'**
  String get useCurrentPassword;

  /// No description provided for @forgotPasswordBioHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm with your fingerprint to set a new master password. Your entries stay as they are.'**
  String get forgotPasswordBioHint;

  /// No description provided for @bioConfirmFailed.
  ///
  /// In en, this message translates to:
  /// **'Biometric confirmation failed or was cancelled.'**
  String get bioConfirmFailed;

  /// No description provided for @biometricChangedBody.
  ///
  /// In en, this message translates to:
  /// **'Your fingerprint or face settings changed, so biometric login was turned off for your safety.'**
  String get biometricChangedBody;

  /// No description provided for @limitReachedTitle.
  ///
  /// In en, this message translates to:
  /// **'Free limit reached'**
  String get limitReachedTitle;

  /// No description provided for @limitReachedBody.
  ///
  /// In en, this message translates to:
  /// **'The free version holds up to {count} entries per category. Delete an entry or upgrade to Pro for unlimited entries.'**
  String limitReachedBody(int count);

  /// No description provided for @scanLimitTitle.
  ///
  /// In en, this message translates to:
  /// **'Free scans used'**
  String get scanLimitTitle;

  /// No description provided for @scanLimitBody.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used your {count} free scans. Upgrade to Pro for unlimited scanning.'**
  String scanLimitBody(int count);

  /// No description provided for @backupRestoreLimited.
  ///
  /// In en, this message translates to:
  /// **'{added} added, {limited} not restored (free limit reached). Your backup file is unchanged.'**
  String backupRestoreLimited(int added, int limited);

  /// No description provided for @aboutProtectionTitle.
  ///
  /// In en, this message translates to:
  /// **'How your data is protected'**
  String get aboutProtectionTitle;

  /// No description provided for @aboutProtectionBody.
  ///
  /// In en, this message translates to:
  /// **'Everything you save is locked with strong encryption on this phone. Only your master password can open it, and it is never stored anywhere, not even by MÜHÜR. Without it, the data cannot be read.'**
  String get aboutProtectionBody;

  /// No description provided for @aboutOfflineTitle.
  ///
  /// In en, this message translates to:
  /// **'Works offline'**
  String get aboutOfflineTitle;

  /// No description provided for @aboutOfflineBody.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR never connects to the internet. There is no account, no server and no cloud. Your passwords stay on this phone unless you export them yourself, as an encrypted backup or as an Excel file.'**
  String get aboutOfflineBody;

  /// No description provided for @aboutRights.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved.'**
  String get aboutRights;

  /// No description provided for @statusClipboard.
  ///
  /// In en, this message translates to:
  /// **'Clipboard clears in {seconds} s. Tap to clear now.'**
  String statusClipboard(int seconds);

  /// No description provided for @helpStatusClipboard.
  ///
  /// In en, this message translates to:
  /// **'Clipboard icon: Copied value (number = seconds until cleared, tap to clear now)'**
  String get helpStatusClipboard;

  /// No description provided for @aboutVersionLine.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String aboutVersionLine(String version);

  /// No description provided for @aboutReleaseNotes.
  ///
  /// In en, this message translates to:
  /// **'Release notes'**
  String get aboutReleaseNotes;

  /// No description provided for @aboutHowTitle.
  ///
  /// In en, this message translates to:
  /// **'How it works'**
  String get aboutHowTitle;

  /// No description provided for @aboutStoryTitle.
  ///
  /// In en, this message translates to:
  /// **'The story of MÜHÜR'**
  String get aboutStoryTitle;

  /// No description provided for @aboutDeveloperTitle.
  ///
  /// In en, this message translates to:
  /// **'About the developer'**
  String get aboutDeveloperTitle;

  /// No description provided for @aboutPrivacySection.
  ///
  /// In en, this message translates to:
  /// **'PRIVACY POLICY'**
  String get aboutPrivacySection;

  /// No description provided for @aboutPermissionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Permissions and data'**
  String get aboutPermissionsTitle;

  /// No description provided for @aboutSupportSection.
  ///
  /// In en, this message translates to:
  /// **'SUPPORT'**
  String get aboutSupportSection;

  /// No description provided for @aboutRate.
  ///
  /// In en, this message translates to:
  /// **'Rate on Google Play'**
  String get aboutRate;

  /// No description provided for @aboutRateDesc.
  ///
  /// In en, this message translates to:
  /// **'Leave a rating or a review on the store page'**
  String get aboutRateDesc;

  /// No description provided for @aboutInBrief.
  ///
  /// In en, this message translates to:
  /// **'In brief'**
  String get aboutInBrief;

  /// No description provided for @aboutTechnical.
  ///
  /// In en, this message translates to:
  /// **'Technical details'**
  String get aboutTechnical;

  /// No description provided for @aboutProtectionTech.
  ///
  /// In en, this message translates to:
  /// **'• Your vault is encrypted with a random 256-bit key. That key is sealed with AES-256-GCM using a key derived from your master password with Argon2id (32 MiB memory, 3 passes). The key-derivation settings are bound to the seal, so tampering is detected.\n• The database is encrypted with SQLCipher; its key is derived from the vault key with HKDF-SHA256.\n• Sensitive fields are encrypted again with AES-256-GCM and tied to their entry and field.\n• After 5 wrong passwords the app waits 30 seconds, doubling each time up to 1 hour. Changing the phone\'s clock does not shorten the wait.\n• Biometric unlock accepts only strong (Class 3) biometrics and turns itself off when a new fingerprint or face is added. On most phones face unlock does not reach this level, so usually only the fingerprint can be used.\n• Screenshots and screen recording are blocked, the vault locks when you leave the app, and copied values are marked as sensitive and cleared automatically.'**
  String get aboutProtectionTech;

  /// No description provided for @aboutOfflineTech.
  ///
  /// In en, this message translates to:
  /// **'• The released version of the app has no internet or network permission; they are removed even if a library asks for them.\n• Cloud backup and device-to-device transfer are turned off, so the app\'s data is never copied off the phone.\n• Text recognition uses a model built into the app and runs on the phone; camera frames are processed in memory and never saved.\n• Data leaves the phone only when you export it yourself: as an encrypted backup file, or as an unencrypted Excel file whose safety is your responsibility.'**
  String get aboutOfflineTech;

  /// No description provided for @aboutPermissionsBody.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR collects no personal data, shows no ads, uses no analytics and shares nothing with anyone. It asks only for the camera (to scan text) and biometrics (to unlock). Subscriptions are handled by Google Play; the app never sees your payment details. Deleting the app deletes all of its data. Before deleting it, you can export your entries to Excel; keeping that file safe is your responsibility.'**
  String get aboutPermissionsBody;

  /// No description provided for @aboutPermissionsTech.
  ///
  /// In en, this message translates to:
  /// **'• Camera: used only while the scanner is open; no photos are saved and no sound is recorded.\n• Biometrics: your fingerprint or face is checked by the phone\'s system window; MÜHÜR never receives that data.\n• Files: accessed only when you choose where to save or open a backup or an Excel file.\n• No account, no server, no tracking or advertising identifiers.\n• Downloading the app and buying a subscription are handled by Google Play under Google\'s own privacy policy.'**
  String get aboutPermissionsTech;

  /// No description provided for @how1T.
  ///
  /// In en, this message translates to:
  /// **'Vault and master password'**
  String get how1T;

  /// No description provided for @how1B.
  ///
  /// In en, this message translates to:
  /// **'Everything is kept in an encrypted vault on this phone. Only your master password opens it. It cannot be recovered, so choose one you will remember and keep a backup.'**
  String get how1B;

  /// No description provided for @how2T.
  ///
  /// In en, this message translates to:
  /// **'Entries and categories'**
  String get how2T;

  /// No description provided for @how2B.
  ///
  /// In en, this message translates to:
  /// **'Categories are fixed: Banks, Websites, Emails, Social Media, Business and Other. When you add an entry with the + button, you choose its category, and the category brings the fields that suit it. You cannot add new categories, but you can add fields to an entry with \"Add field\": pick one from the list or create a \"Custom field\" with a name of your choice.'**
  String get how2B;

  /// No description provided for @how3T.
  ///
  /// In en, this message translates to:
  /// **'Copying safely'**
  String get how3T;

  /// No description provided for @how3B.
  ///
  /// In en, this message translates to:
  /// **'Tap a field to copy it. The clipboard clears itself after the time you set. The clipboard icon on the home screen counts down; tap it to clear right away.'**
  String get how3B;

  /// No description provided for @how4T.
  ///
  /// In en, this message translates to:
  /// **'Scanning with the camera'**
  String get how4T;

  /// No description provided for @how4B.
  ///
  /// In en, this message translates to:
  /// **'Point the camera at a card or document to read an IBAN or text instead of typing it. Check the result before saving.'**
  String get how4B;

  /// No description provided for @how5T.
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get how5T;

  /// No description provided for @how5B.
  ///
  /// In en, this message translates to:
  /// **'Deleted entries wait in the trash, still encrypted, and can be restored until the period you set ends.'**
  String get how5B;

  /// No description provided for @how6T.
  ///
  /// In en, this message translates to:
  /// **'Backup and restore'**
  String get how6T;

  /// No description provided for @how6B.
  ///
  /// In en, this message translates to:
  /// **'Create an encrypted backup file with its own password and keep it somewhere safe. Restoring only adds entries; existing ones are never overwritten.'**
  String get how6B;

  /// No description provided for @how7T.
  ///
  /// In en, this message translates to:
  /// **'Locking and biometrics'**
  String get how7T;

  /// No description provided for @how7B.
  ///
  /// In en, this message translates to:
  /// **'The vault locks itself when you leave the app. Turn on biometrics to open it with your fingerprint (or your face on phones that support it).'**
  String get how7B;

  /// No description provided for @storyBody.
  ///
  /// In en, this message translates to:
  /// **'Every great invention starts with someone trying to solve a small problem in their own life. The story of MÜHÜR is exactly that: a sincere but determined journey, born from a memory lost in the chaos of the digital world and from the instinct to protect what is your own.\n\nIt all began with the annoying pause caused by a single forgotten password. I designed MÜHÜR as a personal refuge that runs only on my own device, without depending on anyone else\'s cloud servers. Over time I realised I was not the only one who wanted their digital privacy back.\n\nToday MÜHÜR is for everyone who wants to keep their data fully under their own control, without entrusting it to any server.\n\nSeal the safest lock on your digital memory.'**
  String get storyBody;

  /// No description provided for @devBody.
  ///
  /// In en, this message translates to:
  /// **'MÜHÜR is an independent project by UEK DESIGNER, designed and developed in Türkiye. Thank you for using MÜHÜR.'**
  String get devBody;

  /// No description provided for @rn100.
  ///
  /// In en, this message translates to:
  /// **'• First release.\n• Encrypted vault on the phone, opened with a master password (Argon2id + AES-256).\n• Ready-made fields for banks, websites, e-mail, social media and business accounts.\n• Password generator with strength indicator.\n• Camera scanning for IBANs and text.\n• Fingerprint unlock (face on supported phones).\n• Encrypted backup and restore.\n• Excel export (unencrypted, at your own responsibility).\n• Trash with automatic clean-up.\n• Vault summary showing reused passwords.\n• Automatic lock, screen protection and clipboard countdown.\n• Works fully offline.\n• 18 languages.'**
  String get rn100;

  /// No description provided for @excelExport.
  ///
  /// In en, this message translates to:
  /// **'Export to Excel'**
  String get excelExport;

  /// No description provided for @excelExportDesc.
  ///
  /// In en, this message translates to:
  /// **'Unencrypted .xlsx file of your entries, e.g. before deleting the app'**
  String get excelExportDesc;

  /// No description provided for @excelExportWarnTitle.
  ///
  /// In en, this message translates to:
  /// **'Unencrypted export'**
  String get excelExportWarnTitle;

  /// No description provided for @excelExportWarn.
  ///
  /// In en, this message translates to:
  /// **'The Excel file is NOT encrypted. Anyone who gets the file can read all your passwords. Where you keep it, who you share it with and deleting it afterwards are entirely your responsibility. Entries in the trash are not included.'**
  String get excelExportWarn;

  /// No description provided for @excelExportAgree.
  ///
  /// In en, this message translates to:
  /// **'I understand; the file\'s safety is my responsibility.'**
  String get excelExportAgree;

  /// No description provided for @excelExportSaved.
  ///
  /// In en, this message translates to:
  /// **'Excel file saved. Delete it when you no longer need it.'**
  String get excelExportSaved;

  /// No description provided for @excelExportFailed.
  ///
  /// In en, this message translates to:
  /// **'The Excel file could not be created.'**
  String get excelExportFailed;

  /// No description provided for @excelColDomain.
  ///
  /// In en, this message translates to:
  /// **'Domain'**
  String get excelColDomain;

  /// No description provided for @excelColUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated'**
  String get excelColUpdated;

  /// No description provided for @how8T.
  ///
  /// In en, this message translates to:
  /// **'Exporting to Excel'**
  String get how8T;

  /// No description provided for @how8B.
  ///
  /// In en, this message translates to:
  /// **'\"Export to Excel\" in the backup settings writes all your entries (except the trash) to an .xlsx file, one sheet per category. The file is not encrypted: you confirm with your master password and accept that keeping it safe is your responsibility. Delete it when you no longer need it.'**
  String get how8B;

  /// No description provided for @proFeatureTitle.
  ///
  /// In en, this message translates to:
  /// **'Pro feature'**
  String get proFeatureTitle;

  /// No description provided for @proFieldsBody.
  ///
  /// In en, this message translates to:
  /// **'Adding extra fields to an entry is a Pro feature. Fields you have already added stay and can still be edited.'**
  String get proFieldsBody;

  /// No description provided for @proBiometricBody.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint unlock is a Pro feature. You can always unlock with your master password.'**
  String get proBiometricBody;

  /// No description provided for @proBackgroundsBody.
  ///
  /// In en, this message translates to:
  /// **'Extra backgrounds are a Pro feature. The default background is always available.'**
  String get proBackgroundsBody;

  /// No description provided for @bioGraceWarn.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint unlock stays on for {days} more, then turns off. Make sure you remember your master password. If you have forgotten it, set a new one with your fingerprint in Settings under \"Change master password\".'**
  String bioGraceWarn(String days);

  /// No description provided for @genNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Generate new password'**
  String get genNewPassword;

  /// No description provided for @fieldRemoved.
  ///
  /// In en, this message translates to:
  /// **'\"{label}\" removed'**
  String fieldRemoved(String label);

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @proStatusActive.
  ///
  /// In en, this message translates to:
  /// **'Your Pro subscription is active'**
  String get proStatusActive;

  /// No description provided for @proStatusTrial.
  ///
  /// In en, this message translates to:
  /// **'Free trial: {days} left'**
  String proStatusTrial(String days);

  /// No description provided for @proStatusFree.
  ///
  /// In en, this message translates to:
  /// **'Free plan'**
  String get proStatusFree;

  /// No description provided for @proTrialInfo.
  ///
  /// In en, this message translates to:
  /// **'When the trial ends you move to the free plan automatically. No card needed, and nothing is deleted.'**
  String get proTrialInfo;

  /// No description provided for @proFeatEntries.
  ///
  /// In en, this message translates to:
  /// **'Unlimited entries'**
  String get proFeatEntries;

  /// No description provided for @proFeatEntriesDesc.
  ///
  /// In en, this message translates to:
  /// **'Free plan: 3 per category'**
  String get proFeatEntriesDesc;

  /// No description provided for @proFeatScan.
  ///
  /// In en, this message translates to:
  /// **'Unlimited camera scanning'**
  String get proFeatScan;

  /// No description provided for @proFeatScanDesc.
  ///
  /// In en, this message translates to:
  /// **'Free plan: 3 scans'**
  String get proFeatScanDesc;

  /// No description provided for @proFeatFields.
  ///
  /// In en, this message translates to:
  /// **'Extra and custom fields'**
  String get proFeatFields;

  /// No description provided for @proFeatFieldsDesc.
  ///
  /// In en, this message translates to:
  /// **'Add any field you need to an entry'**
  String get proFeatFieldsDesc;

  /// No description provided for @proFeatBio.
  ///
  /// In en, this message translates to:
  /// **'Fingerprint unlock'**
  String get proFeatBio;

  /// No description provided for @proFeatBioDesc.
  ///
  /// In en, this message translates to:
  /// **'Open your vault with a touch'**
  String get proFeatBioDesc;

  /// No description provided for @proFeatBg.
  ///
  /// In en, this message translates to:
  /// **'All backgrounds'**
  String get proFeatBg;

  /// No description provided for @proFeatBgDesc.
  ///
  /// In en, this message translates to:
  /// **'Choose from all 5 backgrounds'**
  String get proFeatBgDesc;

  /// No description provided for @proFeatHealth.
  ///
  /// In en, this message translates to:
  /// **'Vault health'**
  String get proFeatHealth;

  /// No description provided for @proFeatHealthDesc.
  ///
  /// In en, this message translates to:
  /// **'See which passwords are weak or reused and jump straight to them'**
  String get proFeatHealthDesc;

  /// No description provided for @proFeatTotp.
  ///
  /// In en, this message translates to:
  /// **'Two-step verification codes'**
  String get proFeatTotp;

  /// No description provided for @proFeatTotpDesc.
  ///
  /// In en, this message translates to:
  /// **'Codes are generated inside your vault, offline'**
  String get proFeatTotpDesc;

  /// No description provided for @proFeatHistory.
  ///
  /// In en, this message translates to:
  /// **'Password history'**
  String get proFeatHistory;

  /// No description provided for @proFeatHistoryDesc.
  ///
  /// In en, this message translates to:
  /// **'Old passwords are kept so you can look back'**
  String get proFeatHistoryDesc;

  /// No description provided for @proYearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get proYearly;

  /// No description provided for @proMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get proMonthly;

  /// No description provided for @proPerYear.
  ///
  /// In en, this message translates to:
  /// **'/ year'**
  String get proPerYear;

  /// No description provided for @proPerMonth.
  ///
  /// In en, this message translates to:
  /// **'/ month'**
  String get proPerMonth;

  /// No description provided for @proBestValue.
  ///
  /// In en, this message translates to:
  /// **'Best value'**
  String get proBestValue;

  /// No description provided for @proSubscribe.
  ///
  /// In en, this message translates to:
  /// **'Subscribe'**
  String get proSubscribe;

  /// No description provided for @proRestore.
  ///
  /// In en, this message translates to:
  /// **'Restore purchase'**
  String get proRestore;

  /// No description provided for @proManage.
  ///
  /// In en, this message translates to:
  /// **'Manage subscription'**
  String get proManage;

  /// No description provided for @proFinePrint.
  ///
  /// In en, this message translates to:
  /// **'Payment is made through Google Play. The subscription renews automatically until you cancel it, which you can do at any time in Google Play. If your subscription ends, your entries are not deleted.'**
  String get proFinePrint;

  /// No description provided for @proComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Purchases will open when MÜHÜR is published on Google Play.'**
  String get proComingSoon;

  /// No description provided for @proSeePlans.
  ///
  /// In en, this message translates to:
  /// **'See Pro'**
  String get proSeePlans;

  /// No description provided for @proHealthBody.
  ///
  /// In en, this message translates to:
  /// **'Seeing which entries have weak or reused passwords is a Pro feature. The counts are always visible.'**
  String get proHealthBody;

  /// No description provided for @healthWeakHint.
  ///
  /// In en, this message translates to:
  /// **'Short or easy to guess. Replace them using the password generator.'**
  String get healthWeakHint;

  /// No description provided for @healthReusedHint.
  ///
  /// In en, this message translates to:
  /// **'The same password is used in more than one entry. If one leaks, the others are at risk too.'**
  String get healthReusedHint;

  /// No description provided for @healthFairHint.
  ///
  /// In en, this message translates to:
  /// **'Acceptable, but could be longer and more varied.'**
  String get healthFairHint;

  /// No description provided for @healthAllGood.
  ///
  /// In en, this message translates to:
  /// **'No weak or reused passwords. Your vault is in good shape.'**
  String get healthAllGood;

  /// No description provided for @proHistoryBody.
  ///
  /// In en, this message translates to:
  /// **'Seeing a password\'s previous values is a Pro feature. Passwords you change while on Pro are kept here.'**
  String get proHistoryBody;

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'This password hasn\'t been changed yet. When you change it, the old value appears here.'**
  String get historyEmpty;

  /// No description provided for @historyNote.
  ///
  /// In en, this message translates to:
  /// **'The last 10 values of each password field are kept, encrypted like the rest of your vault. Password history is not included in backups.'**
  String get historyNote;

  /// No description provided for @historyClearQ.
  ///
  /// In en, this message translates to:
  /// **'Tap delete again to clear this field\'s password history.'**
  String get historyClearQ;

  /// No description provided for @totpHint.
  ///
  /// In en, this message translates to:
  /// **'Setup key or otpauth:// link'**
  String get totpHint;

  /// No description provided for @totpInvalid.
  ///
  /// In en, this message translates to:
  /// **'This key isn\'t valid. Paste the setup key the site gave you.'**
  String get totpInvalid;

  /// No description provided for @qrScan.
  ///
  /// In en, this message translates to:
  /// **'Scan QR code'**
  String get qrScan;

  /// No description provided for @qrScanHint.
  ///
  /// In en, this message translates to:
  /// **'Point the camera at the QR code the site shows when you set up two-step verification.'**
  String get qrScanHint;

  /// No description provided for @qrNot2fa.
  ///
  /// In en, this message translates to:
  /// **'This QR code is not a 2FA setup code.'**
  String get qrNot2fa;

  /// No description provided for @qrMigration.
  ///
  /// In en, this message translates to:
  /// **'This is a Google Authenticator transfer code. Scan each site\'s own setup QR code instead.'**
  String get qrMigration;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'nl',
    'pl',
    'pt',
    'ru',
    'sv',
    'th',
    'tr',
    'vi',
  ].contains(locale.languageCode);

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
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'sv':
      return AppLocalizationsSv();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
