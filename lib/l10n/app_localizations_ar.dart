// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'مُهُور';

  @override
  String get catBanks => 'البنوك';

  @override
  String get catWebsites => 'المواقع الإلكترونية';

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
      'لا يمكن استعادة كلمة المرور هذه. إذا نسيتها، فلن يمكن فتح بياناتك أبداً.';

  @override
  String get masterPassword => 'كلمة المرور الرئيسية';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get passwordTooShort => 'استخدم 8 أحرف على الأقل.';

  @override
  String get passwordNeedsMix =>
      'استخدم حروفاً صغيرة وكبيرة، رقماً ورمزاً خاصاً.';

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
  String get unlock => 'فتح القفل';

  @override
  String get wrongPassword => 'كلمة المرور الرئيسية غير صحيحة.';

  @override
  String lockedOut(int seconds) {
    return 'محاولات كثيرة جداً. حاول مرة أخرى بعد $seconds ثانية.';
  }

  @override
  String get useBiometrics => 'فتح القفل باستخدام البصمة';

  @override
  String get enableBiometricsQ => 'تفعيل فتح القفل بالبصمة؟';

  @override
  String get enable => 'تفعيل';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get biometricReason => 'فتح قفل مُهُور';

  @override
  String get lockNow => 'قفل';

  @override
  String get vaultUnlocked => 'تم فتح الخزنة';

  @override
  String get all => 'الكل';

  @override
  String get noEntries => 'لا توجد إدخالات بعد';

  @override
  String get searchHint => 'البحث في العنوان، النطاق أو الوسم';

  @override
  String get addEntry => 'إضافة إدخال';

  @override
  String get editEntry => 'تعديل الإدخال';

  @override
  String get title => 'العنوان';

  @override
  String get category => 'الفئة';

  @override
  String get domain => 'النطاق (مثال: example.com)';

  @override
  String get tags => 'الوسم';

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
  String get cancel => 'إلغاء';

  @override
  String get deleteConfirm =>
      'حذف هذا الإدخال؟ لا يمكن التراجع عن هذا الإجراء.';

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
    return 'تم النسخ. سيتم مسح الحافظة خلال $seconds ثوانٍ.';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get autoLock => 'القفل التلقائي';

  @override
  String get immediately => 'فوري';

  @override
  String get seconds15 => '15 ثانية';

  @override
  String get minute1 => 'دقيقة واحدة';

  @override
  String get minutes5 => '5 دقائق';

  @override
  String get biometricUnlock => 'فتح القفل الحيوي';

  @override
  String get generator => 'مولد كلمات المرور';

  @override
  String get generate => 'توليد';

  @override
  String get length => 'الطول';

  @override
  String get lowercase => 'حروف صغيرة (a-z)';

  @override
  String get uppercase => 'حروف كبيرة (A-Z)';

  @override
  String get digits => 'أرقام (0-9)';

  @override
  String get symbols => 'رموز (!@#...)';

  @override
  String get avoidAmbiguous => 'تجنب الأحرف المتشابهة (O/0, l/1)';

  @override
  String get regenerate => 'إعادة التوليد';

  @override
  String get usePassword => 'استخدام كلمة المرور هذه';

  @override
  String get strengthWeak => 'ضعيفة';

  @override
  String get strengthFair => 'مقبولة';

  @override
  String get strengthGood => 'جيدة';

  @override
  String get strengthStrong => 'قوية';

  @override
  String get scan => 'مسح بالكاميرا';

  @override
  String get scanHint =>
      'ثبت الكاميرا بثبات فوق النص. في وضع IBAN يتم اكتشافه تلقائياً.';

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
      'ربما تم التصحيح بعد خطأ في التعرف الضوئي على الحروف. تحقق بعناية.';

  @override
  String get pickLine => 'اضغط على سطر لاستخدامه';

  @override
  String get noTextFound => 'لم يتم العثور على نص.';

  @override
  String get cameraError => 'الكاميرا غير متاحة. تحقق من إذن الكاميرا.';

  @override
  String get editBeforeUse => 'تحقق وقم بالتحرير إذا لزم الأمر';

  @override
  String get useValue => 'استخدام';

  @override
  String get brandName => 'مُهُور';

  @override
  String get brandSubtitle => 'مدير كلمات المرور';

  @override
  String get tagline =>
      'مفاتيحك الرقمية بين يديك بالكامل.\n لا خوادم. فقط أنت وكلمات مرورك.\n مُهُور: خزنتك الرقمية التي لا يمكن لأحد غيرك رؤيتها.';

  @override
  String get login => 'دخول';

  @override
  String get infoTitle => 'حول مُهُور';

  @override
  String get infoBody =>
      'يحفظ مُهُور كلمات المرور مشفرة على هذا الجهاز فقط. لا توجد حسابات ولا خوادم.\n\nلا يمكن استعادة كلمة المرور الرئيسية الخاصة بك. إذا نسيتها، فلن يمكن فتح بياناتك، لذا احتفظ بننسخة احتياطية مشفرة.';

  @override
  String get understandNoRecovery =>
      'أنا أتفهم أن كلمة المرور الرئيسية المنسية لا يمكن استعادتها.';

  @override
  String get close => 'إغلاق';

  @override
  String get language => 'اللغة';

  @override
  String get languageSystem => 'لغة النظام الافتراضية';

  @override
  String get statTotal => 'الإجمالي';

  @override
  String get statReused => 'المعاد استخدامها';

  @override
  String get planFree => 'مجاني';

  @override
  String get statusScreen => 'حماية الشاشة';

  @override
  String get statusBackup => 'النسخ الاحتياطي التلقائي';

  @override
  String get helpTitle => 'المساعدة';

  @override
  String get helpBody => 'سيتم إضافة محتوى المساعدة هنا.';

  @override
  String deleteSelectedConfirm(int count) {
    return 'حذف $count من الإدخالات المحددة؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get fcBankName => 'اسم البنك';

  @override
  String get fcTag => 'الوسم';

  @override
  String get fcInternetBankingPassword =>
      'كلمة مرور الخدمات المصرفية عبر الإنترنت';

  @override
  String get fcCardPin => 'الرمز السري للبطاقة (PIN)';

  @override
  String get fcCardNumber => 'رقم البطاقة';

  @override
  String get fcExpiryDate => 'تاريخ الانتهاء';

  @override
  String get fcCvv => 'رمز الأمان (CVV / CVC)';

  @override
  String get fcCustomerServiceNo => 'رقم خدمة العملاء';

  @override
  String get fcCustomerNoTc => 'رقم العميل / الرقم القومي';

  @override
  String get fcBranchNameCode => 'اسم ورقم الفرع';

  @override
  String get fcAccountType => 'نوع الحساب';

  @override
  String get fcPhoneBankingPassword => 'كلمة مرور الخدمات المصرفية الهاتفية';

  @override
  String get fcSwiftBic => 'رمز سويفت (SWIFT / BIC)';

  @override
  String get fcCardStatementDate => 'تاريخ كشف الحساب واستحقاق الدفع';

  @override
  String get fcAccountTitle => 'عنوان الحساب';

  @override
  String get fcEmailAddress => 'عنوان البريد الإلكتروني';

  @override
  String get fcRecoveryEmail => 'البريد الإلكتروني للاسترداد';

  @override
  String get fcRecoveryPhone => 'هاتف الاسترداد';

  @override
  String get fc2faBackupCodes => 'رمز التحقق الثنائي / رموز النسخ الاحتياطي';

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
  String get fcRegisteredEmail => 'البريد الإلكتروني المسجل';

  @override
  String get fcRegisteredPhone => 'رقم الهاتف المسجل';

  @override
  String get fcProfileUrl => 'رابط الملف الشخصي (URL)';

  @override
  String get fcAccountTypeStatus => 'نوع الحساب / الحالة';

  @override
  String get fcLinkedMainAccount => 'الحساب الرئيسي المرتبط';

  @override
  String get fcProfileNumericId => 'معرف الملف الشخصي الرقمي';

  @override
  String get fc2faSecretKey => 'مفتاح التحقق الثنائي السري (2FA)';

  @override
  String get fcServiceName => 'اسم المؤسسة / الخدمة';

  @override
  String get fcCompanyName => 'اسم الشركة';

  @override
  String get fcCorporateUserId => 'اسم المستخدم / المعرف المؤسسي';

  @override
  String get fcPanelUrl => 'عنوان الخدمة / لوحة التحكم (URL)';

  @override
  String get fcDepartmentPosition => 'القسم / المسمى الوظيفي';

  @override
  String get fcLicenseCode => 'رمز العميل / الترخيص';

  @override
  String get fcSupportContact => 'جهة اتصال الدعم / المسؤول';

  @override
  String get fcLoginMethodVerification => 'طريقة تسجيل الدخول / نوع التحقق';

  @override
  String get fcTaxOffice => 'مكتب الضرائب والرقم الضريبي';

  @override
  String get fcRegistryNo => 'رقم السجل / رمز الوكيل';

  @override
  String get fcIpVpn => 'تقييد عنوان IP / عنوان VPN';

  @override
  String get fcLicenseExpiry => 'تاريخ انتهاء البوابة / الترخيص';

  @override
  String get fcSiteName => 'اسم الموقع / الخدمة';

  @override
  String get fcWebAddress => 'عنوان الويب (URL)';

  @override
  String get fcUsernameEmail => 'اسم المستخدم / البريد الإلكتروني';

  @override
  String get fcSubscriptionFee => 'رسوم الاشتراك والمدة';

  @override
  String get fcRegistrationDate => 'تاريخ التسجيل';

  @override
  String get fcPaymentMethod => 'طريقة الفوترة / الدفع';

  @override
  String get fcPinCode => 'رمز PIN';

  @override
  String get fcLicenseCodeSimple => 'رمز الترخيص';

  @override
  String get pickFieldTitle => 'اختر حقلاً';

  @override
  String get allFieldsAdded => 'تم إضافة جميع الحقول';

  @override
  String get generatorSettings => 'إعدادات المولد';

  @override
  String get saveAndExit => 'حفظ والخروج';

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
}
