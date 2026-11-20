// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => 'खोलें';

  @override
  String get wrongPassword => 'मास्टर पासवर्ड गलत है।';

  @override
  String lockedOut(int seconds) {
    return 'बहुत ज़्यादा कोशिशें। $seconds सेकंड बाद फिर से कोशिश करें।';
  }

  @override
  String get enableBiometricsQ => 'बायोमेट्रिक से अनलॉक चालू करें?';

  @override
  String get enable => 'चालू करें';

  @override
  String get notNow => 'अभी नहीं';

  @override
  String get biometricReason => 'MÜHÜR अनलॉक करें';

  @override
  String get lockNow => 'लॉक करें';

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
  String get typeText => 'टेक्स्ट';

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
      one: '$count दिन',
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
      one: '$count दिन बाकी',
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
      one: '$count एंट्री',
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
  String get scanning => 'स्कैन हो रहा है...';

  @override
  String get ibanCorrected =>
      'OCR गलती के बाद शायद सुधारा गया है। ध्यान से जांचें।';

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
  String get infoTitle => 'MÜHÜR के बारे में';

  @override
  String get infoBody =>
      'MÜHÜR आपके पासवर्ड एन्क्रिप्ट करके सिर्फ़ इसी डिवाइस पर रखता है। कोई खाता नहीं, कोई सर्वर नहीं।\n\nआपका मास्टर पासवर्ड वापस नहीं पाया जा सकता। अगर आप इसे भूल गए, तो आपका डेटा नहीं खुलेगा, इसलिए एन्क्रिप्टेड बैकअप रखें।';

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
  String get screenshotAllow => 'स्क्रीनशॉट की अनुमति दें';

  @override
  String get screenshotAllowHint =>
      'नीचे तय किए गए समय तक स्क्रीन सुरक्षा बंद रहती है, फिर अपने आप चालू हो जाती है।';

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
  String get backupInvalidFile => 'यह मान्य MÜHÜR बैकअप फ़ाइल नहीं है';

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
      one: 'आपका आखिरी बैकअप $days दिन पहले हुआ था।',
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
      one: 'बैकअप बाकी: आखिरी $days दिन पहले',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ट्रैश में $count एंट्री',
      one: 'ट्रैश में $count एंट्री',
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
  String get fcSiteName => 'साइट का नाम';

  @override
  String get fcWebAddress => 'वेबसाइट URL';

  @override
  String get fcUsernameEmail => 'यूज़रनेम / ईमेल';

  @override
  String get pickFieldTitle => 'फ़ील्ड चुनें';

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
      'नया मास्टर पासवर्ड सेट करने के लिए फ़िंगरप्रिंट से पुष्टि करें। आपकी एंट्री जैसी हैं वैसी ही रहेंगी।';

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

  @override
  String get aboutProtectionTitle => 'आपका डेटा कैसे सुरक्षित रहता है';

  @override
  String get aboutProtectionBody =>
      'आप जो कुछ भी सेव करते हैं, वह इस फ़ोन पर मज़बूत एन्क्रिप्शन से लॉक रहता है। उसे सिर्फ़ आपका मास्टर पासवर्ड खोल सकता है; वह कहीं भी सेव नहीं होता, MÜHÜR में भी नहीं। उसके बिना डेटा पढ़ा नहीं जा सकता।';

  @override
  String get aboutOfflineTitle => 'ऑफ़लाइन काम करता है';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR कभी इंटरनेट से नहीं जुड़ता। कोई खाता, सर्वर या क्लाउड नहीं है। जब तक आप खुद एन्क्रिप्टेड बैकअप या Excel फ़ाइल के रूप में एक्सपोर्ट न करें, आपके पासवर्ड इसी फ़ोन पर रहते हैं।';

  @override
  String get aboutRights => 'सर्वाधिकार सुरक्षित।';

  @override
  String statusClipboard(int seconds) {
    return 'क्लिपबोर्ड $seconds से. में साफ़ हो जाएगा। अभी साफ़ करने के लिए टैप करें।';
  }

  @override
  String get helpStatusClipboard =>
      'क्लिपबोर्ड आइकन: कॉपी की गई वैल्यू (संख्या = साफ़ होने में बचे सेकंड, अभी साफ़ करने के लिए टैप करें)';

  @override
  String aboutVersionLine(String version) {
    return 'वर्ज़न $version';
  }

  @override
  String get aboutReleaseNotes => 'रिलीज़ नोट्स';

  @override
  String get aboutHowTitle => 'यह कैसे काम करता है';

  @override
  String get aboutStoryTitle => 'MÜHÜR की कहानी';

  @override
  String get aboutDeveloperTitle => 'MÜHÜR के पीछे कौन है';

  @override
  String get aboutPrivacySection => 'निजता नीति';

  @override
  String get aboutPermissionsTitle => 'अनुमतियां और डेटा';

  @override
  String get aboutSupportSection => 'सहायता';

  @override
  String get aboutRate => 'Google Play पर रेटिंग दें';

  @override
  String get aboutRateDesc => 'स्टोर पेज पर रेटिंग दें या समीक्षा लिखें';

  @override
  String get aboutInBrief => 'संक्षेप में';

  @override
  String get aboutTechnical => 'तकनीकी जानकारी';

  @override
  String get aboutProtectionTech =>
      '• वॉल्ट एक रैंडम 256-बिट कुंजी से एन्क्रिप्ट होता है। यह कुंजी AES-256-GCM से सील की जाती है, उस कुंजी से जो आपके मास्टर पासवर्ड से Argon2id (32 MiB मेमोरी, 3 पास) द्वारा बनाई जाती है। कुंजी बनाने की सेटिंग सील से जुड़ी होती हैं, इसलिए कोई भी छेड़छाड़ पकड़ में आ जाती है।\n• डेटाबेस SQLCipher से एन्क्रिप्ट है; इसकी कुंजी वॉल्ट कुंजी से HKDF-SHA256 द्वारा बनती है।\n• संवेदनशील फ़ील्ड AES-256-GCM से दोबारा एन्क्रिप्ट होते हैं और अपनी एंट्री व फ़ील्ड से जुड़े रहते हैं।\n• 5 गलत पासवर्ड के बाद ऐप 30 सेकंड रुकता है, हर बार दोगुना, अधिकतम 1 घंटे तक। फ़ोन की घड़ी बदलने से इंतज़ार कम नहीं होता।\n• बायोमेट्रिक अनलॉक सिर्फ़ मज़बूत (क्लास 3) बायोमेट्रिक स्वीकार करता है और नया फ़िंगरप्रिंट या चेहरा जोड़ने पर बंद हो जाता है। ज़्यादातर फ़ोन में चेहरे की पहचान इस स्तर तक नहीं पहुँचती, इसलिए आम तौर पर सिर्फ़ फ़िंगरप्रिंट ही इस्तेमाल हो सकता है।\n• स्क्रीनशॉट और स्क्रीन रिकॉर्डिंग ब्लॉक हैं, ऐप से बाहर जाते ही वॉल्ट लॉक हो जाता है, और कॉपी की गई वैल्यू संवेदनशील मार्क होकर अपने आप मिट जाती हैं।';

  @override
  String get aboutOfflineTech =>
      '• ऐप के पब्लिश किए गए वर्ज़न में इंटरनेट या नेटवर्क की कोई अनुमति नहीं है; कोई लाइब्रेरी मांगे तब भी इन्हें हटा दिया जाता है।\n• क्लाउड बैकअप और दूसरे डिवाइस पर ट्रांसफ़र बंद हैं, इसलिए ऐप का डेटा फ़ोन से बाहर कॉपी नहीं होता।\n• टेक्स्ट पहचान ऐप में शामिल मॉडल से फ़ोन पर ही चलती है; कैमरे की तस्वीरें मेमोरी में प्रोसेस होती हैं और कभी सेव नहीं होतीं।\n• डेटा फ़ोन से तभी बाहर जाता है जब आप खुद उसे एक्सपोर्ट करें: एन्क्रिप्टेड बैकअप फ़ाइल के रूप में, या बिना एन्क्रिप्शन वाली Excel फ़ाइल के रूप में जिसकी सुरक्षा आपकी ज़िम्मेदारी है।';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR कोई निजी डेटा इकट्ठा नहीं करता, विज्ञापन नहीं दिखाता, एनालिटिक्स इस्तेमाल नहीं करता और किसी से कुछ भी साझा नहीं करता। यह सिर्फ़ कैमरा (टेक्स्ट स्कैन करने के लिए) और बायोमेट्रिक (अनलॉक करने के लिए) की अनुमति मांगता है। सब्सक्रिप्शन Google Play संभालता है; ऐप कभी आपकी भुगतान जानकारी नहीं देखता। ऐप हटाने पर उसका सारा डेटा भी हट जाता है। हटाने से पहले आप अपनी एंट्री Excel में एक्सपोर्ट कर सकते हैं; उस फ़ाइल की सुरक्षा आपकी ज़िम्मेदारी है।';

  @override
  String get aboutPermissionsTech =>
      '• कैमरा: सिर्फ़ स्कैनर खुला होने पर इस्तेमाल होता है; कोई फ़ोटो सेव नहीं होती और कोई आवाज़ रिकॉर्ड नहीं होती।\n• बायोमेट्रिक: आपका फ़िंगरप्रिंट या चेहरा फ़ोन की सिस्टम विंडो जांचती है; MÜHÜR को यह डेटा कभी नहीं मिलता।\n• फ़ाइलें: सिर्फ़ तब एक्सेस होती हैं जब आप खुद बैकअप या Excel फ़ाइल सेव करने या खोलने की जगह चुनते हैं।\n• कोई खाता, सर्वर, ट्रैकिंग या विज्ञापन ID नहीं।\n• ऐप डाउनलोड और सब्सक्रिप्शन की खरीद Google Play, Google की अपनी निजता नीति के अनुसार संभालता है।';

  @override
  String get how1T => 'वॉल्ट और मास्टर पासवर्ड';

  @override
  String get how1B =>
      'सब कुछ इस फ़ोन पर एक एन्क्रिप्टेड वॉल्ट में रहता है। उसे सिर्फ़ आपका मास्टर पासवर्ड खोलता है। यह वापस नहीं मिल सकता, इसलिए ऐसा चुनें जो याद रहे और बैकअप बनाएं।';

  @override
  String get how2T => 'एंट्री और श्रेणियां';

  @override
  String get how2B =>
      'श्रेणियां तय हैं: बैंक, वेबसाइट, ईमेल, सोशल मीडिया, काम और अन्य। + बटन से एंट्री जोड़ते समय आप उसकी श्रेणी चुनते हैं, और श्रेणी उसके लिए सही फ़ील्ड ले आती है। नई श्रेणी नहीं बनाई जा सकती, लेकिन \"फ़ील्ड जोड़ें\" से एंट्री में फ़ील्ड जोड़े जा सकते हैं: सूची से कोई फ़ील्ड चुनें या अपने चुने नाम से \"कस्टम फ़ील्ड\" बनाएं।';

  @override
  String get how3T => 'सुरक्षित कॉपी';

  @override
  String get how3B =>
      'किसी फ़ील्ड को कॉपी करने के लिए टैप करें। तय समय के बाद क्लिपबोर्ड अपने आप साफ़ हो जाता है। होम स्क्रीन पर क्लिपबोर्ड आइकन उलटी गिनती दिखाता है; तुरंत साफ़ करने के लिए उसे टैप करें।';

  @override
  String get how4T => 'कैमरे से स्कैन';

  @override
  String get how4B =>
      'IBAN या टेक्स्ट टाइप करने के बजाय कैमरे को कार्ड या दस्तावेज़ पर रखें। सेव करने से पहले नतीजा जांच लें।';

  @override
  String get how5T => 'ट्रैश';

  @override
  String get how5B =>
      'हटाई गई एंट्री एन्क्रिप्टेड रूप में ट्रैश में रहती हैं और तय अवधि खत्म होने तक वापस लाई जा सकती हैं।';

  @override
  String get how6T => 'बैकअप और रीस्टोर';

  @override
  String get how6B =>
      'अपने अलग पासवर्ड वाली एन्क्रिप्टेड बैकअप फ़ाइल बनाएं और उसे सुरक्षित जगह रखें। रीस्टोर सिर्फ़ एंट्री जोड़ता है; मौजूदा एंट्री कभी नहीं बदलतीं।';

  @override
  String get how7T => 'लॉक और बायोमेट्रिक';

  @override
  String get how7B =>
      'ऐप से बाहर जाते ही वॉल्ट अपने आप लॉक हो जाता है। फ़िंगरप्रिंट से (और सपोर्ट करने वाले फ़ोन पर चेहरे से) खोलने के लिए बायोमेट्रिक चालू करें।';

  @override
  String get storyBody =>
      'हर बड़ा आविष्कार अपनी ज़िंदगी की किसी छोटी उलझन को सुलझाने की कोशिश से शुरू होता है। MÜHÜR की कहानी भी ठीक ऐसी ही है: डिजिटल दुनिया की भीड़ में खोती याददाश्त और \"जो अपना है उसे बचाने\" की सहज इच्छा से जन्मी एक सच्ची लेकिन मज़बूत यात्रा।\n\nसब कुछ एक भूले हुए पासवर्ड से आई उस खीझ भरी रुकावट से शुरू हुआ। मैंने MÜHÜR को एक निजी ठिकाने के रूप में बनाया, जो किसी और के क्लाउड सर्वर पर निर्भर हुए बिना सिर्फ़ मेरे अपने डिवाइस पर चलता है। समय के साथ मुझे एहसास हुआ कि अपनी डिजिटल निजता वापस चाहने वाले और लोग भी हैं।\n\nआज MÜHÜR उन सभी के लिए है जो अपना डेटा किसी सर्वर को सौंपे बिना पूरी तरह अपने नियंत्रण में रखना चाहते हैं।\n\nअपनी डिजिटल यादों पर सबसे सुरक्षित ताले की मुहर लगाएं।';

  @override
  String get devBody =>
      'MÜHÜR, UEK DESIGNER का एक स्वतंत्र प्रोजेक्ट है, जिसे तुर्किये में डिज़ाइन और डेवलप किया गया है। MÜHÜR इस्तेमाल करने के लिए धन्यवाद।';

  @override
  String get rn100 =>
      '• पहला वर्ज़न।\n• फ़ोन पर एन्क्रिप्टेड वॉल्ट, जो मास्टर पासवर्ड से खुलता है (Argon2id + AES-256)।\n• बैंक, वेबसाइट, ईमेल, सोशल मीडिया और ऑफ़िस खातों के लिए तैयार फ़ील्ड।\n• मज़बूती बताने वाला पासवर्ड जनरेटर।\n• कैमरे से IBAN और टेक्स्ट स्कैन।\n• फ़िंगरप्रिंट से अनलॉक (सपोर्ट करने वाले फ़ोन पर चेहरे से भी)।\n• एन्क्रिप्टेड बैकअप और रीस्टोर।\n• Excel में एक्सपोर्ट (बिना एन्क्रिप्शन, आपकी ज़िम्मेदारी पर)।\n• अपने आप साफ़ होने वाला ट्रैश।\n• दोहराए गए पासवर्ड दिखाने वाला वॉल्ट सारांश।\n• दो-चरणीय सत्यापन कोड, QR कोड से जोड़ें।\n• पासवर्ड इतिहास और वॉल्ट हेल्थ।\n• बिना कार्ड के 14 दिन का मुफ़्त Pro ट्रायल।\n• ऑटो-लॉक, स्क्रीन सुरक्षा और क्लिपबोर्ड की उलटी गिनती।\n• पूरी तरह ऑफ़लाइन काम करता है।\n• 18 भाषाएं।';

  @override
  String get excelExport => 'Excel में एक्सपोर्ट करें';

  @override
  String get excelExportDesc =>
      'आपकी एंट्री की बिना एन्क्रिप्शन वाली .xlsx फ़ाइल, जैसे ऐप हटाने से पहले';

  @override
  String get excelExportWarnTitle => 'बिना एन्क्रिप्शन का एक्सपोर्ट';

  @override
  String get excelExportWarn =>
      'Excel फ़ाइल एन्क्रिप्टेड नहीं होती। जिसके पास भी यह फ़ाइल पहुंचेगी, वह आपके सारे पासवर्ड पढ़ सकेगा। फ़ाइल कहां रखनी है, किससे साझा करनी है और बाद में उसे हटाना पूरी तरह आपकी ज़िम्मेदारी है। ट्रैश की एंट्री शामिल नहीं होतीं।';

  @override
  String get excelExportAgree =>
      'मुझे पता है कि फ़ाइल की सुरक्षा मेरी ज़िम्मेदारी है।';

  @override
  String get excelExportSaved =>
      'Excel फ़ाइल सेव हो गई। ज़रूरत खत्म होने पर इसे हटा दें।';

  @override
  String get excelExportFailed => 'Excel फ़ाइल नहीं बन सकी।';

  @override
  String get excelColDomain => 'डोमेन';

  @override
  String get excelColUpdated => 'पिछला बदलाव';

  @override
  String get how8T => 'Excel में एक्सपोर्ट';

  @override
  String get how8B =>
      'बैकअप सेटिंग में \"Excel में एक्सपोर्ट करें\" आपकी सारी एंट्री (ट्रैश को छोड़कर) एक .xlsx फ़ाइल में लिखता है, हर श्रेणी के लिए अलग शीट में। यह फ़ाइल एन्क्रिप्टेड नहीं होती: आप मास्टर पासवर्ड से पुष्टि करते हैं और मानते हैं कि इसकी सुरक्षा आपकी ज़िम्मेदारी है। ज़रूरत खत्म होने पर इसे हटा दें।';

  @override
  String get proFeatureTitle => 'Pro सुविधा';

  @override
  String get proFieldsBody =>
      'एंट्री में अतिरिक्त फ़ील्ड जोड़ना Pro सुविधा है। पहले से जोड़े गए फ़ील्ड बने रहते हैं और उन्हें बदला जा सकता है।';

  @override
  String get proBiometricBody =>
      'फ़िंगरप्रिंट से अनलॉक करना Pro सुविधा है। आप हमेशा मास्टर पासवर्ड से अनलॉक कर सकते हैं।';

  @override
  String get proBackgroundsBody =>
      'अतिरिक्त बैकग्राउंड Pro सुविधा हैं। डिफ़ॉल्ट बैकग्राउंड हमेशा उपलब्ध रहता है।';

  @override
  String bioGraceWarn(String days) {
    return 'फ़िंगरप्रिंट से अनलॉक $days और चालू रहेगा, फिर बंद हो जाएगा। पक्का करें कि आपको मास्टर पासवर्ड याद है। अगर भूल गए हैं, तो सेटिंग में \"मास्टर पासवर्ड बदलें\" से फ़िंगरप्रिंट की मदद से नया पासवर्ड सेट करें।';
  }

  @override
  String get genNewPassword => 'नया पासवर्ड बनाएं';

  @override
  String fieldRemoved(String label) {
    return '\"$label\" फ़ील्ड हटाया गया';
  }

  @override
  String get undo => 'वापस लाएं';

  @override
  String get proStatusActive => 'आपकी Pro सदस्यता चालू है';

  @override
  String proStatusTrial(String days) {
    return 'मुफ़्त ट्रायल: $days बाकी';
  }

  @override
  String get proStatusFree => 'मुफ़्त प्लान';

  @override
  String get proTrialInfo =>
      'ट्रायल खत्म होने पर आप अपने आप मुफ़्त प्लान पर आ जाते हैं। कार्ड की ज़रूरत नहीं, कुछ भी नहीं हटता।';

  @override
  String get proFeatEntries => 'असीमित एंट्री';

  @override
  String get proFeatEntriesDesc => 'मुफ़्त: हर श्रेणी में 3';

  @override
  String get proFeatScan => 'कैमरे से असीमित स्कैन';

  @override
  String get proFeatScanDesc => 'मुफ़्त: 3 स्कैन';

  @override
  String get proFeatFields => 'अतिरिक्त और कस्टम फ़ील्ड';

  @override
  String get proFeatFieldsDesc => 'एंट्री में ज़रूरत का हर फ़ील्ड जोड़ें';

  @override
  String get proFeatBio => 'फ़िंगरप्रिंट से अनलॉक';

  @override
  String get proFeatBioDesc => 'एक टच में वॉल्ट खोलें';

  @override
  String get proFeatBg => 'सभी बैकग्राउंड';

  @override
  String get proFeatBgDesc => 'सभी 5 बैकग्राउंड';

  @override
  String get proFeatHealth => 'वॉल्ट हेल्थ';

  @override
  String get proFeatHealthDesc =>
      'देखें कौन-से पासवर्ड कमज़ोर या दोहराए गए हैं और सीधे उस एंट्री पर जाएं';

  @override
  String get proFeatTotp => 'दो-चरणीय सत्यापन कोड';

  @override
  String get proFeatTotpDesc => 'कोड वॉल्ट के अंदर ऑफ़लाइन बनते हैं';

  @override
  String get proFeatHistory => 'पासवर्ड इतिहास';

  @override
  String get proFeatHistoryDesc =>
      'पुराने पासवर्ड सहेजे रहते हैं, ताकि आप उन्हें देख सकें';

  @override
  String get proYearly => 'सालाना';

  @override
  String get proMonthly => 'मासिक';

  @override
  String get proPerYear => '/ साल';

  @override
  String get proPerMonth => '/ महीना';

  @override
  String get proBestValue => 'सबसे फ़ायदेमंद';

  @override
  String get proSubscribe => 'सदस्यता लें';

  @override
  String get proRestore => 'खरीदारी बहाल करें';

  @override
  String get proManage => 'सदस्यता प्रबंधित करें';

  @override
  String get proFinePrint =>
      'भुगतान Google Play से होता है। जब तक आप रद्द न करें, सदस्यता अपने आप रिन्यू होती है; आप इसे कभी भी Google Play में रद्द कर सकते हैं। सदस्यता खत्म होने पर आपकी एंट्री नहीं हटतीं।';

  @override
  String get proComingSoon =>
      'MÜHÜR के Google Play पर आने के बाद खरीदारी शुरू होगी।';

  @override
  String get proSeePlans => 'Pro देखें';

  @override
  String get proHealthBody =>
      'किन एंट्री में कमज़ोर या दोहराए गए पासवर्ड हैं, यह देखना Pro सुविधा है। गिनती हमेशा दिखती है।';

  @override
  String get healthWeakHint =>
      'छोटे या आसानी से अंदाज़ा लगने वाले। पासवर्ड जनरेटर से बदलें।';

  @override
  String get healthReusedHint =>
      'एक ही पासवर्ड कई एंट्री में इस्तेमाल हो रहा है। एक लीक हुआ तो बाकी भी खतरे में हैं।';

  @override
  String get healthFairHint => 'ठीक हैं, पर और लंबे और विविध हो सकते हैं।';

  @override
  String get healthAllGood =>
      'कोई कमज़ोर या दोहराया गया पासवर्ड नहीं। आपका वॉल्ट ठीक हालत में है।';

  @override
  String get proHistoryBody =>
      'किसी पासवर्ड के पुराने मान देखना Pro सुविधा है। Pro में बदले गए पासवर्ड यहां सहेजे जाते हैं।';

  @override
  String get historyEmpty =>
      'यह पासवर्ड अभी तक नहीं बदला गया। बदलने पर पुराना मान यहां दिखेगा।';

  @override
  String get historyNote =>
      'हर पासवर्ड फ़ील्ड के पिछले 10 मान, बाकी वॉल्ट की तरह एन्क्रिप्टेड, सहेजे जाते हैं। पासवर्ड इतिहास बैकअप में शामिल नहीं होता।';

  @override
  String get historyClearQ =>
      'इस फ़ील्ड का इतिहास मिटाने के लिए हटाएं पर एक बार और टैप करें।';

  @override
  String get totpHint => 'सेटअप कुंजी या otpauth:// लिंक';

  @override
  String get totpInvalid =>
      'यह कुंजी मान्य नहीं है। साइट से मिली सेटअप कुंजी पेस्ट करें।';

  @override
  String get qrScan => 'QR कोड स्कैन करें';

  @override
  String get qrScanHint =>
      'दो-चरणीय सत्यापन सेट करते समय साइट जो QR कोड दिखाती है, उस पर कैमरा रखें।';

  @override
  String get qrNot2fa => 'यह QR कोड 2FA सेटअप कोड नहीं है।';

  @override
  String get qrMigration =>
      'यह Google Authenticator का ट्रांसफ़र कोड है। इसके बजाय हर साइट का अपना सेटअप QR कोड स्कैन करें।';

  @override
  String get totpEmpty =>
      'अभी कोई कुंजी नहीं है। जोड़ने के लिए QR कोड स्कैन करें।';

  @override
  String get how9T => 'दो-चरणीय सत्यापन (2FA)';

  @override
  String get how9B =>
      'किसी एंट्री में \"फ़ील्ड जोड़ें\" पर टैप करें और \"2FA सीक्रेट की\" चुनें। 2FA सेटअप के दौरान साइट जो QR कोड दिखाती है, उसे फ़ील्ड के पास वाले आइकन से स्कैन करें या सेटअप की पेस्ट करें। अगर आप फ़ील्ड खाली सेव करते हैं, तो वह एंट्री के विवरण में रहता है और आप वहीं से QR कोड स्कैन कर सकते हैं। विवरण में 6 अंकों का कोड और बचा हुआ समय दिखता है; उसे कॉपी करके साइट पर डालें। कोड बिना इंटरनेट के फ़ोन की घड़ी से बनते हैं, इसलिए घड़ी गलत हो तो कोड काम नहीं करेंगे। Pro खत्म होने के बाद भी मौजूदा कोड काम करते रहते हैं।';

  @override
  String get how10T => 'पासवर्ड इतिहास और वॉल्ट हेल्थ';

  @override
  String get how10B =>
      'Pro में पासवर्ड बदलने पर पुराना पासवर्ड एन्क्रिप्ट होकर सुरक्षित रहता है; एंट्री के विवरण में इतिहास आइकन पिछले 10 दिखाता है। होम स्क्रीन के सारांश पैनल का शील्ड आइकन वॉल्ट हेल्थ खोलता है: कमज़ोर और दोहराए गए पासवर्ड की सूची दिखती है, किसी पर टैप करने से उसकी एंट्री खुलती है।';

  @override
  String get how11T => 'Pro और मुफ़्त ट्रायल';

  @override
  String get how11B =>
      'पहली बार सेटअप के बाद 14 दिनों तक सभी Pro सुविधाएँ मुफ़्त हैं, कार्ड की ज़रूरत नहीं। ट्रायल खत्म होने पर आप मुफ़्त प्लान पर आ जाते हैं: हर श्रेणी में अधिकतम 3 एंट्री और कैमरे से 3 स्कैन। कुछ भी डिलीट नहीं होता, मौजूदा 2FA कोड काम करते रहते हैं और फ़िंगरप्रिंट से अनलॉक 7 दिन और चालू रहता है। Pro सुविधाओं को उनके कोने में लगे छोटे PRO टैग से पहचाना जा सकता है।';

  @override
  String get showValue => 'दिखाएँ';

  @override
  String get hideValue => 'छिपाएँ';

  @override
  String get favoriteAdd => 'पसंदीदा में जोड़ें';

  @override
  String get favoriteRemove => 'पसंदीदा से हटाएँ';

  @override
  String get proRedeem => 'गिफ़्ट कोड रिडीम करें';

  @override
  String get proThanks => 'धन्यवाद! MÜHÜR Pro चालू है।';

  @override
  String get proPending =>
      'भुगतान लंबित है। पूरा होते ही Pro अपने आप चालू हो जाएगा।';

  @override
  String get proBuyError => 'खरीदारी पूरी नहीं हो सकी। बाद में फिर कोशिश करें।';

  @override
  String get proRestoreDone => 'MÜHÜR Pro चालू है।';

  @override
  String get proRestoreNone => 'इस Google खाते में कोई सक्रिय Pro नहीं मिला।';

  @override
  String get proStoreUnavailable =>
      'Google Play तक नहीं पहुँच सके। पक्का करें कि Play Store इंस्टॉल है और आप साइन इन हैं।';

  @override
  String proStatusGift(String days) {
    return 'गिफ़्ट Pro: $days बाकी';
  }

  @override
  String get proStatusGiftLife => 'गिफ़्ट Pro: बिना समय-सीमा';

  @override
  String get scanCodesTitle => 'बैकअप कोड स्कैन करें';

  @override
  String get scanCodesHint =>
      'साइट से मिली बैकअप कोड सूची पर कैमरा रखें। पढ़े गए कोड यहाँ जुड़ते जाते हैं; सब आ जाएँ तो पुष्टि करें।';

  @override
  String scanCodesCount(int count) {
    return 'पढ़े गए कोड: $count';
  }

  @override
  String get scanCodesClear => 'सूची साफ़ करें';

  @override
  String get totpRemoveTitle => '2FA कुंजी हटाएँ?';

  @override
  String get totpRemoveBody =>
      'अगर साइट पर दो-चरणीय सत्यापन अभी चालू है, तो इस कुंजी के बिना आप उस खाते में साइन इन नहीं कर पाएँगे। पहले साइट पर इसे बंद करें या पक्का करें कि आपके बैकअप कोड सेव हैं।';

  @override
  String get proBannerTrial => 'ट्रायल के बाद भी जारी रखें';

  @override
  String get proBannerFree => 'सभी सुविधाएँ, बिना सीमा';

  @override
  String proBannerPrice(String yearly, String month) {
    return '$yearly सालाना · लगभग $month महीना';
  }
}
