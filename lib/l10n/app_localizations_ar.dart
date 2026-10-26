// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Mühür';

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
      'لا يمكن استعادة كلمة المرور هذه. إذا نسيتها، فلن تتمكن من الوصول إلى بياناتك مرة أخرى.';

  @override
  String get masterPassword => 'كلمة المرور الرئيسية';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get passwordTooShort => 'استخدم 8 أحرف على الأقل.';

  @override
  String get passwordNeedsMix =>
      'استخدم أحرفًا صغيرة وكبيرة ورقمًا ورمزًا خاصًا.';

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
  String get unlockTitle => 'إلغاء القفل';

  @override
  String get unlock => 'فتح';

  @override
  String get wrongPassword => 'كلمة المرور الرئيسية غير صحيحة.';

  @override
  String lockedOut(int seconds) {
    return 'محاولات كثيرة جدًا. حاول مرة أخرى بعد $seconds ثوانٍ.';
  }

  @override
  String get useBiometrics => 'إلغاء القفل بالبصمة';

  @override
  String get enableBiometricsQ => 'هل تريد تفعيل الدخول بالبصمة؟';

  @override
  String get enable => 'تفعيل';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get biometricReason => 'إلغاء قفل Mühür';

  @override
  String get lockNow => 'قفل';

  @override
  String get vaultUnlocked => 'تم فتح الخزنة';

  @override
  String get all => 'الكل';

  @override
  String get noEntries => 'لا توجد مدخلات بعد';

  @override
  String get searchHint => 'ابحث عن العنوان أو النطاق أو الوسم';

  @override
  String get addEntry => 'إضافة مدخل';

  @override
  String get editEntry => 'تعديل المدخل';

  @override
  String get title => 'العنوان';

  @override
  String get category => 'الفئة';

  @override
  String get domain => 'النطاق (مثال: example.com)';

  @override
  String get tags => 'الوسوم (مفصولة بفواصل)';

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
  String get typePassword => 'كلمة مرور';

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
      'هل تريد حذف هذا المدخل؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get titleRequired => 'العنوان مطلوب.';

  @override
  String get fieldUsername => 'اسم المستخدم';

  @override
  String get fieldPassword => 'كلمة المرور';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'ملاحظة';

  @override
  String get copy => 'نسخ';

  @override
  String copied(int seconds) {
    return 'تم النسخ. سيتم مسح الحافظة بعد $seconds ثوانٍ.';
  }

  @override
  String get settings => 'الإعدادات';

  @override
  String get autoLock => 'القفل التلقائي';

  @override
  String get immediately => 'فورًا';

  @override
  String get seconds15 => '15 ثانية';

  @override
  String get minute1 => 'دقيقة واحدة';

  @override
  String get minutes5 => '5 دقائق';

  @override
  String get biometricUnlock => 'إلغاء القفل بالبصمة';

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
  String get scan => 'مسح باستخدام الكاميرا';

  @override
  String get scanHint =>
      'ثبّت الكاميرا فوق النص. يتم الاكتشاف تلقائيًا في وضع IBAN.';

  @override
  String get scanRetake => 'إعادة الالتقاط';

  @override
  String get scanning => 'جاري المسح...';

  @override
  String get ibanFound => 'تم العثور على IBAN';

  @override
  String get ibanNotFound =>
      'لم يتم العثور على IBAN صالحة. حاول مرة أخرى في إضاءة أفضل أو اختر سطرًا من الأسفل.';

  @override
  String get ibanCorrected => 'قد تكون تمت معالجتها بعد خطأ OCR. تحقق بعناية.';

  @override
  String get pickLine => 'اضغط على سطر لاستخدامه';

  @override
  String get noTextFound => 'لم يتم العثور على نص.';

  @override
  String get cameraError => 'الكاميرا غير متاحة. تحقق من إذن الكاميرا.';

  @override
  String get editBeforeUse => 'تحقق وعدّل إذا لزم الأمر';

  @override
  String get useValue => 'استخدام';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'مدير كلمات المرور';

  @override
  String get tagline =>
      'مفاتيحك الرقمية بين يديك بالكامل.\nلا خوادم. أنت وكلمات مرورك فقط.\nMÜHÜR: خزنتك الرقمية التي لا يراها أحد سواك.';

  @override
  String get login => 'دخول';

  @override
  String get infoTitle => 'حول Mühür';

  @override
  String get infoBody =>
      'يحفظ Mühür كلمات المرور مشفرة على هذا الجهاز فقط. لا يوجد حساب ولا خادم.\n\nلا يمكن استعادة كلمة المرور الرئيسية. إذا نسيتها، فلن تتمكن من فتح بياناتك، لذا يحتفظ بنسخة احتياطية مشفرة.';

  @override
  String get understandNoRecovery =>
      'أفهم أنه لا يمكن استعادة كلمة المرور الرئيسية المفقودة.';

  @override
  String get close => 'إغلاق';

  @override
  String get language => 'اللغة';

  @override
  String get languageSystem => 'افتراضي النظام';

  @override
  String get statTotal => 'الإجمالي';

  @override
  String get statReused => 'المعاد استخدامها';

  @override
  String get planFree => 'مجاني';

  @override
  String get statusScreen => 'حماية الشاشة';

  @override
  String get statusBackup => 'نسخ احتياطي تلقائي';

  @override
  String get helpTitle => 'المساعدة';

  @override
  String get helpBody => 'سيتم إضافة محتوى المساعدة هنا.';

  @override
  String deleteSelectedConfirm(int count) {
    return 'هل تريد حذف $count من المدخلات المحددة؟ لا يمكن التراجع عن هذا الإجراء.';
  }
}
