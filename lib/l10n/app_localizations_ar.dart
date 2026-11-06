// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'البنوك';

  @override
  String get catWebsites => 'مواقع الويب';

  @override
  String get catEmails => 'البريد الإلكتروني';

  @override
  String get catSocial => 'وسائل التواصل الاجتماعي';

  @override
  String get catBusiness => 'الأعمال';

  @override
  String get catOther => 'أخرى';

  @override
  String get setupTitle => 'إنشاء كلمة المرور الرئيسية';

  @override
  String get setupInfo =>
      'لا يمكن استرداد كلمة المرور هذه. إذا نسيتها، فلن يمكن فتح بياناتك أبداً.';

  @override
  String get masterPassword => 'كلمة المرور الرئيسية';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get changeMasterPassword => 'تغيير كلمة المرور الرئيسية';

  @override
  String get currentPassword => 'كلمة المرور الحالية';

  @override
  String get newPassword => 'كلمة المرور الجديدة';

  @override
  String get newPasswordSame =>
      'يجب أن تكون كلمة المرور الجديدة مختلفة عن الحالية.';

  @override
  String get change => 'تغيير';

  @override
  String get masterPasswordChanged => 'تم تغيير كلمة المرور الرئيسية.';

  @override
  String get changePasswordFailed =>
      'تعذر تغيير كلمة المرور. يرجى المحاولة مرة أخرى.';

  @override
  String get passwordTooShort => 'استخدم 8 أحرف على الأقل.';

  @override
  String get passwordNeedsMix =>
      'استخدم أحرفاً صغيرة وكبيرة، رقماً، ورمزاً خاصاً.';

  @override
  String get reqLength => '8 أحرف على الأقل';

  @override
  String get reqLower => 'حرف صغير';

  @override
  String get reqUpper => 'حرف كبير';

  @override
  String get reqDigit => 'رقم';

  @override
  String get reqSpecial => 'رمز خاص (!@#...)';

  @override
  String get passwordsDontMatch => 'كلمات المرور غير متطابقة.';

  @override
  String get createVault => 'إنشاء الخزنة';

  @override
  String get unlockTitle => 'فتح القفل';

  @override
  String get unlock => 'فتح';

  @override
  String get wrongPassword => 'كلمة المرور الرئيسية خاطئة.';

  @override
  String lockedOut(int seconds) {
    return 'محاولات كثيرة جداً. حاول مرة أخرى بعد $seconds ثانية.';
  }

  @override
  String get useBiometrics => 'فتح القفل بالبصمة';

  @override
  String get enableBiometricsQ => 'تفعيل فتح القفل الحيوي؟';

  @override
  String get enable => 'تفعيل';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get biometricReason => 'فتح قفل مِهر';

  @override
  String get lockNow => 'قفل';

  @override
  String get vaultUnlocked => 'تم فتح الخزنة';

  @override
  String get all => 'الكل';

  @override
  String get noEntries => 'لا توجد إدخالات بعد';

  @override
  String get searchHint => 'ابحث عن العنوان، النطاق أو العلامة';

  @override
  String get addEntry => 'إضافة إدخال';

  @override
  String get editEntry => 'تعديل الإدخال';

  @override
  String get title => 'العنوان';

  @override
  String get category => 'الفئة';

  @override
  String get domain => 'النطاق (مثل example.com)';

  @override
  String get tags => 'علامة';

  @override
  String get fields => 'الحقول';

  @override
  String get addField => 'إضافة حقل';

  @override
  String get fieldLabel => 'التسمية';

  @override
  String get fieldValue => 'القيمة';

  @override
  String get typeText => 'نص';

  @override
  String get typePassword => 'كلمة المرور';

  @override
  String get typeUrl => 'رابط';

  @override
  String get typeNotes => 'ملاحظات';

  @override
  String get sensitive => 'إخفاء القيمة';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get moveToTrash => 'نقل إلى سلة المهملات';

  @override
  String get trash => 'سلة المهملات';

  @override
  String get trashKeepFor => 'الاحتفاظ في سلة المهملات لمدة';

  @override
  String get trashHint =>
      'تظل الإدخالات المحذوفة في سلة المهملات مشفرة ويمكن استعادتها. يتم حذفها نهائياً بعد مرور هذا عدد الأيام، في المرة التالية التي يتم فيها فتح الخزنة. كما أن تقليل المدة يؤدي إلى إزالة العناصر الأقدم من سلة المهملات. لا يمكن التراجع عن إفرغ سلة المهملات.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يوماً',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
      zero: 'أقل من يوم',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'فتح سلة المهملات';

  @override
  String get trashEmpty => 'سلة المهملات فارغة.';

  @override
  String get restore => 'استعادة';

  @override
  String get deleteForever => 'حذف نهائي';

  @override
  String get deleteForeverConfirm =>
      'هل تريد حذف هذا الإدخال نهائياً؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'متبقي $count يوم',
      many: 'متبقي $count يوماً',
      few: 'متبقي $count أيام',
      two: 'متبقي يومان',
      one: 'متبقي يوم واحد',
      zero: 'بقي أقل من يوم',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'إفراغ سلة المهملات الآن';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر',
      many: '$count عنصراً',
      few: '$count عناصر',
      two: 'عنصرين',
      one: 'عنصر واحد',
      zero: 'أقل من عنصر',
    );
    return 'هل تريد حذف $_temp0 نهائياً من سلة المهملات؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get cancel => 'إلغاء';

  @override
  String get deleteConfirm =>
      'هل تريد نقل هذا الإدخال إلى سلة المهملات؟ يمكنك استعادته حتى يتم إفراغ سلة المهملات.';

  @override
  String get titleRequired => 'العنوان مطلوب.';

  @override
  String get fieldUsername => 'اسم المستخدم';

  @override
  String get fieldPassword => 'كلمة المرور';

  @override
  String get fieldIban => 'رقم الحساب المصرفي الدولي (IBAN)';

  @override
  String get fieldNote => 'ملاحظات';

  @override
  String get copy => 'نسخ';

  @override
  String copied(int seconds) {
    return 'تم النسخ. سيتم مسح الحافظة خلال $seconds ثانية.';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get settingsSecurity => 'الأمان';

  @override
  String get settingsBackup => 'النسخ الاحتياطي';

  @override
  String get settingsGeneral => 'عام';

  @override
  String get settingsAbout => 'حول';

  @override
  String get autoLock => 'القفل التلقائي';

  @override
  String get immediately => 'فوري';

  @override
  String get seconds15 => '15 ثانية';

  @override
  String get minute1 => 'دقيقة واحدة';

  @override
  String get copyTimer => 'مؤقت الحافظة';

  @override
  String get copyTimerHint =>
      'تتم مسح البيانات المنسوخة من الحافظة بعد هذا الوقت، وتظل الخزنة مفتوحة حتى ذلك الحين.';

  @override
  String secondsShort(int seconds) {
    return '$seconds ثانية';
  }

  @override
  String get biometricUnlock => 'فتح القفل الحيوي';

  @override
  String get generator => 'مولد كلمات المرور';

  @override
  String get generate => 'توليد';

  @override
  String get length => 'الطول';

  @override
  String get lowercase => 'أحرف صغيرة (a-z)';

  @override
  String get uppercase => 'أحرف كبيرة (A-Z)';

  @override
  String get digits => 'أرقام (0-9)';

  @override
  String get symbols => 'رموز (!@#...)';

  @override
  String get avoidAmbiguous => 'تجنب الأحرف المتشابهة (O/0, l/1)';

  @override
  String get regenerate => 'إعادة توليد';

  @override
  String get usePassword => 'استخدام كلمة المرور هذه';

  @override
  String get strengthWeak => 'ضعيف';

  @override
  String get strengthFair => 'مقبول';

  @override
  String get strengthGood => 'جيد';

  @override
  String get strengthStrong => 'قوي';

  @override
  String get scan => 'مسح بالكاميرا';

  @override
  String get scanHint =>
      'اجتز الكاميرا ثابتة فوق النص. في وضع IBAN يتم اكتشافه تلقائياً.';

  @override
  String get scanRetake => 'إعادة التقاط';

  @override
  String get scanning => 'جاري المسح...';

  @override
  String get ibanFound => 'تم العثور على IBAN';

  @override
  String get ibanNotFound =>
      'لم يتم العثور على IBAN صالح. حاول مرة أخرى بإضاءة أفضل، أو اختر سطراً أدناه.';

  @override
  String get ibanCorrected =>
      'ربما تم تصحيحه بعد خطأ في التعرف الضوئي على الحروف (OCR). تحقق بعناية.';

  @override
  String get pickLine => 'اضغط على سطر لاستخدامه';

  @override
  String get noTextFound => 'لم يتم العثور على نص.';

  @override
  String get cameraError => 'الكاميرا غير متاحة. تحقق من إذن الكاميرا.';

  @override
  String get editBeforeUse => 'تحقق وقم بالتعديل إذا لزم الأمر';

  @override
  String get useValue => 'استخدام';

  @override
  String get scanIsThis => 'هل هذا هو النطاق المطلوبة؟';

  @override
  String get scanNo => 'لا';

  @override
  String get scanYes => 'نعم';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'مدير كلمات المرور';

  @override
  String get tagline =>
      'اختم بياناتك الرقمية.\n لا خوادم. فقط أنت وبياناتك.\n MÜHÜR: خزنتك الرقمية التي لا يمكن لأحد سواك رؤيتها.';

  @override
  String get login => 'دخول';

  @override
  String get infoTitle => 'حول مِهر';

  @override
  String get infoBody =>
      'يحفظ مِهر كلمات المرور الخاصة بك مشفرة على هذا الجهاز فقط. لا توجد حسابات ولا خوادم.\n\nلا يمكن استرداد كلمة المرور الرئيسية الخاصة بك. إذا نسيتها، فلن يمكن فتح بياناتك، لذا احرص على الاحتفاظ بنسخة احتياطية مشفرة.';

  @override
  String get understandNoRecovery =>
      'أتفهم أن كلمة المرور الرئيسية المنسية لا يمكن استردادها.';

  @override
  String get close => 'إغلاق';

  @override
  String get language => 'اللغة';

  @override
  String get languageSystem => 'اللغة الافتراضية للنظام';

  @override
  String get sectionLanguage => 'اللغة';

  @override
  String get sectionExperience => 'التجربة';

  @override
  String get sectionAppearance => 'المظهر';

  @override
  String get panelDarkness => 'درجة تعتيم اللوحة';

  @override
  String get panelDarknessDesc => 'يجعل اللوحات والبطاقات أكثر أو أقل شفافية';

  @override
  String get backgroundTitle => 'الخلفية';

  @override
  String get backgroundDim => 'تعتيم الخلفية';

  @override
  String get backgroundDimDesc => 'يجعل صورة الخلفية أكثر دكانة أو إضاءة';

  @override
  String get bgBronze => 'برونزي';

  @override
  String get bgEmber => 'جمر';

  @override
  String get bgSapphire => 'ياقوتي';

  @override
  String get bgObsidian => 'سبجي';

  @override
  String get bgLumen => 'لومين';

  @override
  String get helpAnimation => 'حركة المساعدة';

  @override
  String get helpAnimationDesc =>
      'تجعل أيقونة المساعدة تهتز وتتوهج عند التشغيل الأول لافتات الانتباه';

  @override
  String get smartGuide => 'التوجيه الذكي';

  @override
  String get smartGuideDesc =>
      'يعرض تلميحات قصيرة في المرة الأولى التي تستخدم فيها ميزة ما';

  @override
  String get haptics => 'الاهتزاز';

  @override
  String get hapticsDesc =>
      'يعطي اهتزازاً قصيراً عند فتح القفل بالبصمة وعند النسخ';

  @override
  String get reduceAnimations => 'تقليل الحركات';

  @override
  String get reduceAnimationsDesc =>
      'يوقف حركة قائمة المساعدة وهز الأيقونات وانتقالات الصفحات. مناسب للأجهزة البطئية';

  @override
  String get resetTips => 'إعادة ضبط التلميحات';

  @override
  String get resetTipsDesc => 'إظهار حركة المساعدة وجميع التلميحات مرة أخرى';

  @override
  String get tipsResetDone => 'سيتم عرض التلميحات مرة أخرى';

  @override
  String get tipLongPress =>
      'تلميح: اضغط مطولاً على عنصر لتحديده، ثم احذف عدة عناصر في وقت واحد.';

  @override
  String get statTotal => 'الإجمالي';

  @override
  String get statReused => 'المعاد استخدامها';

  @override
  String get planFree => 'مجاني';

  @override
  String get statusScreen => 'حماية الشاشة';

  @override
  String get screenshotAllow => 'السماح بلقطات الشاشة';

  @override
  String get screenshotAllowHint =>
      'يتم إيقاف حماية الشاشة للمدة المحددة أدناه، ثم تعود للعمل تلقائياً.';

  @override
  String get screenshotTimer => 'وقت لقطة الشاشة';

  @override
  String get statusBackup => 'النسخ الاحتياطي التلقائي';

  @override
  String get statusScreenOn =>
      'حماية الشاشة قيد التشغيل: تم حظر لقطات وتسجيل الشاشة';

  @override
  String get statusScreenOff =>
      'حماية الشاشة متوقفة حالياً: يُسمح بلقطات الشاشة';

  @override
  String get statusBackupOn => 'النسخ الاحتياطي التلقائي قيد التشغيل';

  @override
  String get statusBackupOff => 'النسخ الاحتياطي التلقائي متوقف';

  @override
  String get helpStatusScreen =>
      'أيقونة الدرع: حماية الشاشة (أخضر = مفعّل، باهت = معطّل)';

  @override
  String get helpStatusBackup =>
      'أيقونة النسخ الاحتياطي: النسخ الاحتياطي التلقائي (أخضر = مفعّل، باهت = معطّل)';

  @override
  String get helpTitle => 'المساعدة';

  @override
  String get helpBody => 'سيتم إتمام محتوى المساعدة هنا.';

  @override
  String get helpMenuTitle => 'كيفية الاستخدام؟';

  @override
  String get helpAdd => 'زر +: إضافة عنصر جديد';

  @override
  String get helpTap => 'الضغط على بطاقة: عرض التفاصيل';

  @override
  String get helpLongPress => 'الضغط المطول: التحديد والحذف';

  @override
  String get helpSearch => 'البحث: العثور بسرعة';

  @override
  String get helpCategories => 'الفئات: تصفية عناصرك';

  @override
  String get helpLock => 'أيقونة القفل: قفل الخزنة الآن';

  @override
  String get helpSettings =>
      'الإعدادات: النسخ الاحتياطي والقفل التلقائي والمزيد';

  @override
  String get helpStats => 'اللوحة السفلى: ملخص الخزنة';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر',
      many: '$count عنصراً',
      few: '$count عناصر',
      two: 'عنصرين',
      one: 'عنصر واحد',
      zero: 'أقل من عنصر',
    );
    return 'هل تريد نقل $_temp0 المحدد إلى سلة المهملات؟';
  }

  @override
  String get fcBankName => 'اسم البنك';

  @override
  String get fcTag => 'علامة';

  @override
  String get fcInternetBankingPassword =>
      'كلمة مرور الخدمات المصرفية عبر الإنترنت';

  @override
  String get fcCardPin => 'رمز PIN للبطاقة';

  @override
  String get fcCardNumber => 'رقم البطاقة';

  @override
  String get fcExpiryDate => 'تاريخ الانتهاء';

  @override
  String get fcCvv => 'رمز التحقق (CVV / CVC)';

  @override
  String get fcCustomerServiceNo => 'رقم خدمة العملاء';

  @override
  String get fcCustomerNoTc => 'رقم العميل / رقم الهوية الوطنية';

  @override
  String get fcBranchNameCode => 'اسم ورقم الفرع';

  @override
  String get fcAccountType => 'نوع الحساب';

  @override
  String get fcPhoneBankingPassword => 'كلمة مرور الخدمات المصرفية الهاتفية';

  @override
  String get fcSwiftBic => 'رمز السويفت (SWIFT / BIC)';

  @override
  String get fcCardStatementDate => 'تاريخ كشف الحساب واستحقاق الدفع';

  @override
  String get fcAccountTitle => 'اسم الحساب';

  @override
  String get fcEmailAddress => 'عنوان البريد الإلكتروني';

  @override
  String get fcRecoveryEmail => 'بريد الاسترداد';

  @override
  String get fcRecoveryPhone => 'هاتف الاسترداد';

  @override
  String get fc2faBackupCodes => 'رموز التحقق الثنائي / الاحتياطية';

  @override
  String get fcLoginMethodProvider => 'طريقة تسجيل الدخول / المزود';

  @override
  String get fcImapSmtp => 'إعدادات خادم IMAP / SMTP';

  @override
  String get fcSecurityQA => 'سؤال وجواب الأمان';

  @override
  String get fcPasswordChangeDate => 'تاريخ تغيير كلمة المرور';

  @override
  String get fcPlatformTitle => 'المنصة / العنوان';

  @override
  String get fcUsernameProfileId => 'اسم المستخدم / معرف الملف الشخصي';

  @override
  String get fcRegisteredEmail => 'البريد المسجل';

  @override
  String get fcRegisteredPhone => 'رقم الهاتف المسجل';

  @override
  String get fcProfileUrl => 'رابط الملف الشخصي (URL)';

  @override
  String get fcAccountTypeStatus => 'نوع الحساب / الحالة';

  @override
  String get fcLinkedMainAccount => 'الحساب الرئيسي المرتبط';

  @override
  String get fcProfileNumericId => 'معرف الملف الشخصي / الرقمي';

  @override
  String get fc2faSecretKey => 'مفتاح التحقق الثنائي السري';

  @override
  String get fcServiceName => 'اسم المؤسسة / الخدمة';

  @override
  String get fcCompanyName => 'اسم الشركة';

  @override
  String get fcCorporateUserId => 'اسم المستخدم / المعرف المؤسسي';

  @override
  String get fcPanelUrl => 'عنوان الخدمة / اللوحة (URL)';

  @override
  String get fcDepartmentPosition => 'القسم / الوظيفة';

  @override
  String get fcLicenseCode => 'كود العميل / الترخيص';

  @override
  String get fcSupportContact => 'جهة الاتصال المرخصة / الدعم';

  @override
  String get fcLoginMethodVerification => 'طريقة تسجيل الدخول / نوع التحقق';

  @override
  String get fcTaxOffice => 'مكتب الضرائب ورقم الضريبة';

  @override
  String get fcRegistryNo => 'رقم السجل / كود الموزع';

  @override
  String get fcIpVpn => 'قيود IP / عنوان VPN';

  @override
  String get fcLicenseExpiry => 'تاريخ انتهاء البوابة / الترخيص';

  @override
  String get fcSiteName => 'اسم الموقع / الخدمة';

  @override
  String get fcWebAddress => 'عنوان الويب (URL)';

  @override
  String get fcUsernameEmail => 'اسم المستخدم / البريد الإلكتروني';

  @override
  String get fcSubscriptionFee => 'رسوم الاشتراك والفترة';

  @override
  String get fcRegistrationDate => 'تاريخ التسجيل';

  @override
  String get fcPaymentMethod => 'طريقة الفوترة / الدفع';

  @override
  String get fcPinCode => 'رمز PIN';

  @override
  String get fcLicenseCodeSimple => 'رمز الترخيص';

  @override
  String get pickFieldTitle => 'اختر حقلًا';

  @override
  String get allFieldsAdded => 'تم إضافة جميع الحقول';

  @override
  String get generatorSettings => 'إعدادات المولد';

  @override
  String get saveAndExit => 'حفظ وخروج';

  @override
  String get customField => 'حقل مخصص';

  @override
  String get customFieldName => 'اسم الحقل';

  @override
  String get customFieldType => 'نوع الحقل';

  @override
  String get customTypeText => 'نص';

  @override
  String get customTypeNote => 'ملاحظة';

  @override
  String get customTypePassword => 'كلمة مرور مخفية';

  @override
  String get customTypeDate => 'تاريخ';

  @override
  String get customTypePhone => 'هاتف';
}
