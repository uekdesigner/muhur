// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'बैंक';

  @override
  String get catWebsites => 'वेबसाइट';

  @override
  String get catEmails => 'ईमेल';

  @override
  String get catSocial => 'सोशल मीडिया';

  @override
  String get catBusiness => 'काम';

  @override
  String get catOther => 'अन्य';

  @override
  String get setupTitle => 'मास्टर पासवर्ड बनाएं';

  @override
  String get setupInfo =>
      'यह पासवर्ड वापस नहीं पाया जा सकता। अगर आप इसे भूल गए, तो आपका डेटा कभी नहीं खुल पाएगा।';

  @override
  String get masterPassword => 'मास्टर पासवर्ड';

  @override
  String get confirmPassword => 'पासवर्ड की पुष्टि करें';

  @override
  String get changeMasterPassword => 'मास्टर पासवर्ड बदलें';

  @override
  String get currentPassword => 'मौजूदा पासवर्ड';

  @override
  String get newPassword => 'नया पासवर्ड';

  @override
  String get newPasswordSame => 'नया पासवर्ड मौजूदा पासवर्ड से अलग होना चाहिए।';

  @override
  String get change => 'बदलें';

  @override
  String get masterPasswordChanged => 'मास्टर पासवर्ड बदल दिया गया।';

  @override
  String get changePasswordFailed =>
      'पासवर्ड नहीं बदल सका। कृपया फिर से कोशिश करें।';

  @override
  String get passwordTooShort => 'कम से कम 8 अक्षर रखें।';

  @override
  String get passwordNeedsMix => 'छोटे अक्षर, बड़े अक्षर और एक अंक शामिल करें।';

  @override
  String get reqLength => 'कम से कम 8 अक्षर';

  @override
  String get reqLower => 'एक छोटा अक्षर';

  @override
  String get reqUpper => 'एक बड़ा अक्षर';

  @override
  String get reqDigit => 'एक अंक';

  @override
  String get reqSpecial => 'एक विशेष चिह्न (!@#...) – वैकल्पिक';

  @override
  String get reqOptional => 'वैकल्पिक';

  @override
  String get passwordsDontMatch => 'पासवर्ड मेल नहीं खाते।';

  @override
  String get createVault => 'बनाएं';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'खोलें';

  @override
  String get wrongPassword => 'मास्टर पासवर्ड गलत है।';

  @override
  String lockedOut(int seconds) {
    return 'बहुत ज़्यादा कोशिशें। $seconds सेकंड बाद फिर से कोशिश करें।';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'बायोमेट्रिक से अनलॉक चालू करें?';

  @override
  String get enable => 'चालू करें';

  @override
  String get notNow => 'अभी नहीं';

  @override
  String get biometricReason => 'Muhur अनलॉक करें';

  @override
  String get lockNow => 'लॉक करें';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'सभी';

  @override
  String get noEntries => 'अभी कोई एंट्री नहीं है';

  @override
  String get searchHint => 'शीर्षक, डोमेन, टैग खोजें';

  @override
  String get addEntry => 'एंट्री जोड़ें';

  @override
  String get editEntry => 'एंट्री बदलें';

  @override
  String get title => 'शीर्षक';

  @override
  String get category => 'श्रेणी';

  @override
  String get domain => 'डोमेन (जैसे example.com)';

  @override
  String get tags => 'टैग';

  @override
  String get fields => 'फ़ील्ड';

  @override
  String get addField => 'फ़ील्ड जोड़ें';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'टेक्स्ट';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'वैल्यू छिपाएं';

  @override
  String get save => 'सेव करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get moveToTrash => 'ट्रैश में डालें';

  @override
  String get trash => 'ट्रैश';

  @override
  String get trashKeepFor => 'ट्रैश में रखने की अवधि';

  @override
  String get trashHint =>
      'हटाई गई एंट्री ट्रैश में एन्क्रिप्ट होकर रहती हैं और वापस लाई जा सकती हैं। इतने दिनों के बाद, अगली बार वॉल्ट खोलने पर वे हमेशा के लिए हट जाती हैं। अवधि छोटी करने पर पुरानी एंट्री भी ट्रैश से हट जाती हैं। ट्रैश खाली करना वापस नहीं किया जा सकता।';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन',
      one: '1 दिन',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'ट्रैश';

  @override
  String get trashEmpty => 'ट्रैश खाली है।';

  @override
  String get restore => 'वापस लाएं';

  @override
  String get deleteForever => 'मिटाएं';

  @override
  String get deleteForeverConfirm =>
      'इस एंट्री को हमेशा के लिए हटाएं? इसे वापस नहीं किया जा सकता।';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count दिन बाकी',
      one: '1 दिन बाकी',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'खाली करें';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count एंट्री',
      one: '1 एंट्री',
    );
    return 'ट्रैश से $_temp0 हमेशा के लिए हटाएं? इसे वापस नहीं किया जा सकता।';
  }

  @override
  String get cancel => 'रद्द करें';

  @override
  String get deleteConfirm =>
      'इस एंट्री को ट्रैश में डालें? ट्रैश खाली होने तक आप इसे वापस ला सकते हैं।';

  @override
  String get titleRequired => 'शीर्षक ज़रूरी है।';

  @override
  String get fieldUsername => 'यूज़रनेम';

  @override
  String get fieldPassword => 'पासवर्ड';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'नोट्स';

  @override
  String get copy => 'कॉपी करें';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'सेटिंग';

  @override
  String get settingsSecurity => 'सुरक्षा';

  @override
  String get settingsBackup => 'बैकअप';

  @override
  String get settingsGeneral => 'सामान्य';

  @override
  String get settingsAbout => 'जानकारी';

  @override
  String get autoLock => 'ऑटो-लॉक';

  @override
  String get immediately => 'तुरंत';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'कॉपी टाइमर';

  @override
  String get copyTimerHint =>
      'कॉपी किया गया डेटा इस समय के बाद क्लिपबोर्ड से हट जाता है, और तब तक वॉल्ट खुला रहता है।';

  @override
  String secondsShort(int seconds) {
    return '$seconds से.';
  }

  @override
  String get biometricUnlock => 'बायोमेट्रिक';

  @override
  String get generator => 'जनरेटर';

  @override
  String get generate => 'बनाएं';

  @override
  String get length => 'लंबाई';

  @override
  String get lowercase => 'छोटे अक्षर (a-z)';

  @override
  String get uppercase => 'बड़े अक्षर (A-Z)';

  @override
  String get digits => 'अंक (0-9)';

  @override
  String get symbols => 'चिह्न (!@#...)';

  @override
  String get avoidAmbiguous => 'मिलते-जुलते अक्षर नहीं (O/0, l/1)';

  @override
  String get regenerate => 'नया';

  @override
  String get usePassword => 'इस्तेमाल करें';

  @override
  String get strengthWeak => 'कमज़ोर';

  @override
  String get strengthFair => 'ठीक-ठाक';

  @override
  String get strengthGood => 'अच्छा';

  @override
  String get strengthStrong => 'मज़बूत';

  @override
  String get scan => 'स्कैन';

  @override
  String get scanHint =>
      'कैमरे को टेक्स्ट के ऊपर स्थिर रखें। IBAN मोड में यह अपने आप पहचान लिया जाता है।';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'स्कैन हो रहा है...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'OCR गलती के बाद शायद सुधारा गया है। ध्यान से जांचें।';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError => 'कैमरा उपलब्ध नहीं है। कैमरे की अनुमति जांचें।';

  @override
  String get editBeforeUse => 'जांचें और बदलें';

  @override
  String get useValue => 'इस्तेमाल करें';

  @override
  String get scanIsThis => 'क्या यही है?';

  @override
  String get scanNo => 'नहीं';

  @override
  String get scanYes => 'हां';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'पासवर्ड मैनेजर';

  @override
  String get tagline =>
      'अपने डिजिटल डेटा पर मुहर लगाएं।\nकोई सर्वर नहीं। बस आप और आपका डेटा।\nMÜHÜR: आपकी डिजिटल यादों का सबसे सुरक्षित ताला।';

  @override
  String get login => 'खोलें';

  @override
  String get infoTitle => 'Muhur के बारे में';

  @override
  String get infoBody =>
      'Muhur आपके पासवर्ड एन्क्रिप्ट करके सिर्फ़ इसी डिवाइस पर रखता है। कोई खाता नहीं, कोई सर्वर नहीं।\n\nआपका मास्टर पासवर्ड वापस नहीं पाया जा सकता। अगर आप इसे भूल गए, तो आपका डेटा नहीं खुलेगा, इसलिए एन्क्रिप्टेड बैकअप रखें।';

  @override
  String get understandNoRecovery =>
      'मुझे पता है कि भूला हुआ मास्टर पासवर्ड वापस नहीं पाया जा सकता।';

  @override
  String get close => 'बंद करें';

  @override
  String get language => 'भाषा';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get sectionLanguage => 'भाषा';

  @override
  String get sectionExperience => 'अनुभव';

  @override
  String get sectionAppearance => 'रूप-रंग';

  @override
  String get panelDarkness => 'पैनल का गहरापन';

  @override
  String get panelDarknessDesc =>
      'पैनल और कार्ड को कम या ज़्यादा पारदर्शी बनाता है';

  @override
  String get backgroundTitle => 'बैकग्राउंड';

  @override
  String get backgroundDim => 'गहरा करें';

  @override
  String get backgroundDimDesc => 'बैकग्राउंड इमेज को गहरा या हल्का करता है';

  @override
  String get bgBronze => 'कांस्य';

  @override
  String get bgEmber => 'अंगारा';

  @override
  String get bgSapphire => 'नीलम';

  @override
  String get bgObsidian => 'ओब्सीडियन';

  @override
  String get bgLumen => 'ल्यूमेन';

  @override
  String get smartGuide => 'स्मार्ट टिप्स';

  @override
  String get smartGuideDesc =>
      'किसी फ़ीचर को पहली बार इस्तेमाल करने पर छोटे टिप्स दिखाता है';

  @override
  String get haptics => 'वाइब्रेशन';

  @override
  String get hapticsDesc =>
      'फ़िंगरप्रिंट से अनलॉक करने और कॉपी करने पर हल्का वाइब्रेशन';

  @override
  String get reduceAnimations => 'एनिमेशन बंद';

  @override
  String get reduceAnimationsDesc =>
      'ऐप के सभी एनिमेशन बंद करता है: मदद आइकन का हिलना और चमकना, मदद मेन्यू, पेज बदलना, डायलॉग और स्कैनर की लाइन। धीमे डिवाइस और हलचल के प्रति संवेदनशील लोगों के लिए उपयोगी।';

  @override
  String get resetTips => 'टिप्स रीसेट करें';

  @override
  String get resetTipsDesc => 'मदद एनिमेशन और सभी टिप्स फिर से दिखाएं';

  @override
  String get tipsResetDone => 'टिप्स फिर से दिखाए जाएंगे';

  @override
  String get tipLongPress =>
      'टिप: किसी एंट्री को चुनने के लिए उसे दबाकर रखें, फिर एक साथ कई एंट्री हटाएं।';

  @override
  String get statTotal => 'कुल';

  @override
  String get statReused => 'दोहराए गए';

  @override
  String get planFree => 'मुफ़्त';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'स्क्रीनशॉट की अनुमति दें';

  @override
  String get screenshotAllowHint =>
      'नीचे तय किए गए समय तक स्क्रीन सुरक्षा बंद रहती है, फिर अपने आप चालू हो जाती है।';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'एन्क्रिप्टेड बैकअप';

  @override
  String get backupExport => 'बैकअप बनाएं';

  @override
  String get backupExportDesc =>
      'ट्रैश समेत सभी एंट्री को बैकअप पासवर्ड से सुरक्षित फ़ाइल में सेव करता है। फ़ाइल को सुरक्षित जगह रखें।';

  @override
  String get backupImport => 'रीस्टोर करें';

  @override
  String get backupImportDesc =>
      'बैकअप फ़ाइल की एंट्री जोड़ता है। मौजूदा एंट्री कभी ओवरराइट या डिलीट नहीं होतीं।';

  @override
  String get backupPasswordTitle => 'बैकअप पासवर्ड';

  @override
  String get backupPasswordInfo =>
      'यह पासवर्ड बैकअप फ़ाइल को सुरक्षित रखता है। यह आपके मास्टर पासवर्ड से अलग हो सकता है। अगर आप इसे भूल गए, तो बैकअप नहीं खुलेगा।';

  @override
  String get backupEnterPassword => 'बैकअप पासवर्ड डालें';

  @override
  String get backupContinue => 'आगे';

  @override
  String get backupSaved => 'बैकअप सेव हो गया';

  @override
  String get backupFailed => 'बैकअप नहीं बन सका';

  @override
  String backupRestored(int added, int skipped) {
    return '$added जोड़ी गईं, $skipped पहले से थीं';
  }

  @override
  String get backupWrongPassword => 'बैकअप पासवर्ड गलत है';

  @override
  String get backupInvalidFile => 'यह मान्य Muhur बैकअप फ़ाइल नहीं है';

  @override
  String get backupReminderTitle => 'बैकअप रिमाइंडर';

  @override
  String get backupReminderDesc =>
      'जब आपका आखिरी बैकअप इससे पुराना हो जाए, तो होम स्क्रीन पर याद दिलाता है। बंद करने के लिए 0 करें।';

  @override
  String get backupReminderOff => 'बंद';

  @override
  String get backupReminderNever =>
      'आपने अभी तक बैकअप नहीं बनाया है। अपने पासवर्ड न खोने के लिए अभी बैकअप लें।';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'आपका आखिरी बैकअप $days दिन पहले हुआ था।',
      one: 'आपका आखिरी बैकअप 1 दिन पहले हुआ था।',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'बैकअप लें';

  @override
  String get backupReminderLater => 'बाद में';

  @override
  String get statusScreenOn =>
      'स्क्रीन सुरक्षा चालू: स्क्रीनशॉट और स्क्रीन रिकॉर्डिंग ब्लॉक हैं';

  @override
  String get statusScreenOff =>
      'स्क्रीन सुरक्षा अभी बंद: स्क्रीनशॉट की अनुमति है';

  @override
  String get statusBackupNever =>
      'अभी कोई बैकअप नहीं। सेटिंग > बैकअप में बनाएं';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'आखिरी बैकअप: $days दिन पहले',
      one: 'आखिरी बैकअप: कल',
      zero: 'आज बैकअप हुआ',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'बैकअप बाकी: आखिरी $days दिन पहले',
      one: 'बैकअप बाकी: आखिरी 1 दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ट्रैश में $count एंट्री',
      one: 'ट्रैश में 1 एंट्री',
      zero: 'ट्रैश खाली है',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'बायोमेट्रिक अनलॉक चालू है';

  @override
  String get statusBiometricOff =>
      'बायोमेट्रिक अनलॉक बंद है (सेट करने के लिए टैप करें)';

  @override
  String get helpStatusScreen =>
      'ढाल आइकन: स्क्रीन सुरक्षा (हरा = चालू, फीका = बंद)';

  @override
  String get helpStatusBackup =>
      'बैकअप आइकन: बैकअप की स्थिति (हरा = हाल का बैकअप, फीका = बैकअप ज़रूरी)';

  @override
  String get helpStatusTrash =>
      'ट्रैश आइकन: हटाई गई एंट्री (संख्या = इंतज़ार में एंट्री, खोलने के लिए टैप करें)';

  @override
  String get helpStatusBiometric =>
      'फ़िंगरप्रिंट आइकन: बायोमेट्रिक अनलॉक (हरा = चालू, बदलने के लिए टैप करें)';

  @override
  String get helpTitle => 'मदद';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'कैसे इस्तेमाल करें?';

  @override
  String get helpAdd => '+ बटन: नई एंट्री जोड़ें';

  @override
  String get helpTap => 'कार्ड पर टैप करें: जानकारी देखें';

  @override
  String get helpLongPress => 'दबाकर रखें: चुनें और हटाएं';

  @override
  String get helpSearch => 'खोज: जल्दी ढूंढें';

  @override
  String get helpCategories => 'श्रेणियां: एंट्री फ़िल्टर करें';

  @override
  String get helpLock => 'ताला आइकन: वॉल्ट अभी लॉक करें';

  @override
  String get helpSettings => 'सेटिंग: बैकअप, ऑटो-लॉक और बहुत कुछ';

  @override
  String get helpStats => 'नीचे का पैनल: वॉल्ट का सारांश';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'चुनी गई $count एंट्री को ट्रैश में डालें?',
      one: 'चुनी गई एंट्री को ट्रैश में डालें?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'बैंक का नाम';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'नेट बैंकिंग पासवर्ड';

  @override
  String get fcCardPin => 'कार्ड PIN';

  @override
  String get fcCardNumber => 'कार्ड नंबर';

  @override
  String get fcExpiryDate => 'एक्सपायरी डेट';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'कस्टमर केयर नंबर';

  @override
  String get fcCustomerNoTc => 'ग्राहक नंबर / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'खाते का प्रकार';

  @override
  String get fcPhoneBankingPassword => 'फ़ोन बैंकिंग पासवर्ड';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'स्टेटमेंट / ड्यू डेट';

  @override
  String get fcAccountTitle => 'खाताधारक का नाम';

  @override
  String get fcEmailAddress => 'ईमेल पता';

  @override
  String get fcRecoveryEmail => 'रिकवरी ईमेल';

  @override
  String get fcRecoveryPhone => 'रिकवरी फ़ोन';

  @override
  String get fc2faBackupCodes => '2FA / बैकअप कोड';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'सुरक्षा प्रश्न';

  @override
  String get fcPasswordChangeDate => 'पासवर्ड बदलने की तारीख';

  @override
  String get fcPlatformTitle => 'प्लेटफ़ॉर्म / नाम';

  @override
  String get fcUsernameProfileId => 'यूज़रनेम / प्रोफ़ाइल ID';

  @override
  String get fcRegisteredEmail => 'रजिस्टर्ड ईमेल';

  @override
  String get fcRegisteredPhone => 'रजिस्टर्ड फ़ोन';

  @override
  String get fcProfileUrl => 'प्रोफ़ाइल URL';

  @override
  String get fcAccountTypeStatus => 'खाते का प्रकार / स्थिति';

  @override
  String get fcLinkedMainAccount => 'जुड़ा हुआ खाता';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => '2FA सीक्रेट की';

  @override
  String get fcServiceName => 'संस्था';

  @override
  String get fcCompanyName => 'कंपनी का नाम';

  @override
  String get fcCorporateUserId => 'यूज़रनेम / कॉर्पोरेट ID';

  @override
  String get fcPanelUrl => 'पैनल URL';

  @override
  String get fcDepartmentPosition => 'विभाग / पद';

  @override
  String get fcLicenseCode => 'ग्राहक / लाइसेंस';

  @override
  String get fcSupportContact => 'सपोर्ट संपर्क';

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
  String get fcSiteName => 'साइट का नाम';

  @override
  String get fcWebAddress => 'वेबसाइट URL';

  @override
  String get fcUsernameEmail => 'यूज़रनेम / ईमेल';

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
  String get pickFieldTitle => 'फ़ील्ड चुनें';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'जनरेटर सेटिंग';

  @override
  String get saveAndExit => 'सेव करके बंद करें';

  @override
  String get customField => 'कस्टम फ़ील्ड';

  @override
  String get customFieldName => 'फ़ील्ड का नाम';

  @override
  String get customFieldType => 'फ़ील्ड का प्रकार';

  @override
  String get customTypeText => 'टेक्स्ट';

  @override
  String get customTypeNote => 'नोट';

  @override
  String get customTypePassword => 'पासवर्ड';

  @override
  String get customTypeDate => 'तारीख';

  @override
  String get customTypePhone => 'फ़ोन';

  @override
  String get orphanVaultTitle => 'पुराना वॉल्ट मिला';

  @override
  String get orphanVaultBody =>
      'इस डिवाइस पर एक पुरानी वॉल्ट फ़ाइल है, लेकिन उसकी कुंजियां पढ़ी नहीं जा सकतीं, इसलिए वह नहीं खुल सकती। आगे बढ़ने पर वह पुराना डेटा हट जाएगा। अगर आपके पास बैकअप है, तो नया वॉल्ट बनाकर बाद में उसे रीस्टोर करें।';

  @override
  String get orphanVaultReplace => 'हटाएं और आगे बढ़ें';

  @override
  String get forgotOldPassword => 'मुझे मौजूदा पासवर्ड याद नहीं है';

  @override
  String get useCurrentPassword => 'मौजूदा पासवर्ड ही इस्तेमाल करें';

  @override
  String get forgotPasswordBioHint =>
      'नया मास्टर पासवर्ड सेट करने के लिए फ़िंगरप्रिंट या चेहरे से पुष्टि करें। आपकी एंट्री जैसी हैं वैसी ही रहेंगी।';

  @override
  String get bioConfirmFailed =>
      'बायोमेट्रिक पुष्टि विफल रही या रद्द कर दी गई।';

  @override
  String get biometricChangedBody =>
      'आपकी फ़िंगरप्रिंट या चेहरे की सेटिंग बदल गई है, इसलिए आपकी सुरक्षा के लिए बायोमेट्रिक लॉगिन बंद कर दिया गया।';

  @override
  String get limitReachedTitle => 'मुफ़्त सीमा पूरी हुई';

  @override
  String limitReachedBody(int count) {
    return 'मुफ़्त वर्ज़न में हर श्रेणी में $count एंट्री तक रखी जा सकती हैं। कोई एंट्री हटाएं या असीमित एंट्री के लिए Pro लें।';
  }

  @override
  String get scanLimitTitle => 'मुफ़्त स्कैन खत्म';

  @override
  String scanLimitBody(int count) {
    return 'आपने अपने $count मुफ़्त स्कैन इस्तेमाल कर लिए हैं। असीमित स्कैन के लिए Pro लें।';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added जोड़ी गईं, $limited रीस्टोर नहीं हुईं (मुफ़्त सीमा पूरी)। आपकी बैकअप फ़ाइल नहीं बदली।';
  }
}
