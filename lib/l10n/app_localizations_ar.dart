// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

  @override
  String get catBanks => 'البنوك';

  @override
  String get catWebsites => 'المواقع';

  @override
  String get catEmails => 'البريد';

  @override
  String get catSocial => 'شبكات اجتماعية';

  @override
  String get catBusiness => 'العمل';

  @override
  String get catOther => 'أخرى';

  @override
  String get setupTitle => 'إنشاء كلمة المرور الرئيسية';

  @override
  String get setupInfo =>
      'لا يمكن استرداد كلمة المرور هذه. إذا نسيتها، فلن يمكن فتح بياناتك أبدًا.';

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
  String get newPasswordSame => 'يجب أن تختلف كلمة المرور الجديدة عن الحالية.';

  @override
  String get change => 'تغيير';

  @override
  String get masterPasswordChanged => 'تم تغيير كلمة المرور الرئيسية.';

  @override
  String get changePasswordFailed => 'تعذّر تغيير كلمة المرور. حاول مرة أخرى.';

  @override
  String get passwordTooShort => 'استخدم 8 أحرف على الأقل.';

  @override
  String get passwordNeedsMix => 'استخدم أحرفًا صغيرة وكبيرة ورقمًا.';

  @override
  String get reqLength => '8 أحرف على الأقل';

  @override
  String get reqLower => 'حرف صغير';

  @override
  String get reqUpper => 'حرف كبير';

  @override
  String get reqDigit => 'رقم';

  @override
  String get reqSpecial => 'رمز خاص (!@#...) – اختياري';

  @override
  String get reqOptional => 'اختياري';

  @override
  String get passwordsDontMatch => 'كلمتا المرور غير متطابقتين.';

  @override
  String get createVault => 'إنشاء';

  @override
  String get unlock => 'فتح';

  @override
  String get wrongPassword => 'كلمة المرور الرئيسية خاطئة.';

  @override
  String lockedOut(int seconds) {
    return 'محاولات كثيرة جدًا. حاول مرة أخرى بعد $seconds ثانية.';
  }

  @override
  String get enableBiometricsQ => 'تفعيل الفتح بالبصمة أو الوجه؟';

  @override
  String get enable => 'تفعيل';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get biometricReason => 'فتح MÜHÜR';

  @override
  String get lockNow => 'قفل';

  @override
  String get all => 'الكل';

  @override
  String get noEntries => 'لا توجد عناصر بعد';

  @override
  String get searchHint => 'ابحث بالعنوان أو النطاق أو الوسم';

  @override
  String get addEntry => 'إضافة عنصر';

  @override
  String get editEntry => 'تعديل العنصر';

  @override
  String get title => 'العنوان';

  @override
  String get category => 'الفئة';

  @override
  String get domain => 'النطاق (مثل example.com)';

  @override
  String get tags => 'وسم';

  @override
  String get fields => 'الحقول';

  @override
  String get addField => 'إضافة حقل';

  @override
  String get typeText => 'نص';

  @override
  String get sensitive => 'إخفاء القيمة';

  @override
  String get save => 'حفظ';

  @override
  String get delete => 'حذف';

  @override
  String get moveToTrash => 'نقل للمهملات';

  @override
  String get trash => 'المهملات';

  @override
  String get trashKeepFor => 'الاحتفاظ في المهملات لمدة';

  @override
  String get trashHint =>
      'تبقى العناصر المحذوفة في المهملات مشفّرة ويمكن استعادتها. تُحذف نهائيًا بعد هذا العدد من الأيام، عند فتح الخزنة في المرة التالية. تقصير المدة يحذف أيضًا العناصر الأقدم من المهملات. لا يمكن التراجع عن إفراغ المهملات.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count يوم',
      many: '$count يومًا',
      few: '$count أيام',
      two: 'يومان',
      one: 'يوم واحد',
      zero: 'أقل من يوم',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'المهملات';

  @override
  String get trashEmpty => 'المهملات فارغة.';

  @override
  String get restore => 'استعادة';

  @override
  String get deleteForever => 'حذف نهائي';

  @override
  String get deleteForeverConfirm =>
      'حذف هذا العنصر نهائيًا؟ لا يمكن التراجع عن ذلك.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بقي $count يوم',
      many: 'بقي $count يومًا',
      few: 'بقي $count أيام',
      two: 'بقي يومان',
      one: 'بقي يوم واحد',
      zero: 'أقل من يوم',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'إفراغ المهملات';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر',
      many: '$count عنصرًا',
      few: '$count عناصر',
      two: 'عنصرين',
      one: 'عنصر واحد',
      zero: 'لا شيء',
    );
    return 'حذف $_temp0 نهائيًا من المهملات؟ لا يمكن التراجع عن ذلك.';
  }

  @override
  String get cancel => 'إلغاء';

  @override
  String get deleteConfirm =>
      'نقل هذا العنصر إلى المهملات؟ يمكنك استعادته ما لم تُفرَغ المهملات.';

  @override
  String get titleRequired => 'العنوان مطلوب.';

  @override
  String get fieldUsername => 'اسم المستخدم';

  @override
  String get fieldPassword => 'كلمة المرور';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'ملاحظات';

  @override
  String get copy => 'نسخ';

  @override
  String get settings => 'الإعدادات';

  @override
  String get settingsSecurity => 'الأمان';

  @override
  String get settingsBackup => 'نسخ احتياطي';

  @override
  String get settingsGeneral => 'عام';

  @override
  String get settingsAbout => 'حول';

  @override
  String get autoLock => 'القفل التلقائي';

  @override
  String get immediately => 'فورًا';

  @override
  String get copyTimer => 'مدة الحافظة';

  @override
  String get copyTimerHint =>
      'تُمسح البيانات المنسوخة من الحافظة بعد هذه المدة، وتبقى الخزنة مفتوحة حتى ذلك الحين.';

  @override
  String secondsShort(int seconds) {
    return '$seconds ث';
  }

  @override
  String get biometricUnlock => 'الفتح الحيوي';

  @override
  String get generator => 'المولّد';

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
  String get avoidAmbiguous => 'بلا أحرف متشابهة (O/0, l/1)';

  @override
  String get regenerate => 'جديد';

  @override
  String get usePassword => 'استخدام';

  @override
  String get strengthWeak => 'ضعيف';

  @override
  String get strengthFair => 'مقبول';

  @override
  String get strengthGood => 'جيد';

  @override
  String get strengthStrong => 'قوي';

  @override
  String get scan => 'مسح';

  @override
  String get scanHint =>
      'أبقِ الكاميرا ثابتة فوق النص. في وضع IBAN يُكتشف تلقائيًا.';

  @override
  String get scanning => 'جارٍ المسح...';

  @override
  String get ibanCorrected =>
      'ربما صُحّح بعد خطأ في التعرّف على النص. تحقّق بعناية.';

  @override
  String get cameraError => 'الكاميرا غير متاحة. تحقّق من إذن الكاميرا.';

  @override
  String get editBeforeUse => 'تحقّق وعدّل';

  @override
  String get useValue => 'استخدام';

  @override
  String get scanIsThis => 'هل هذا هو؟';

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
      'اختم بياناتك الرقمية.\nلا خوادم. أنت وبياناتك فقط.\nMÜHÜR: أكثر الأقفال أمانًا لذاكرتك الرقمية.';

  @override
  String get login => 'دخول';

  @override
  String get infoTitle => 'حول MÜHÜR';

  @override
  String get infoBody =>
      'يحفظ MÜHÜR كلمات مرورك مشفّرة على هذا الجهاز فقط. لا يوجد حساب ولا خادم.\n\nلا يمكن استرداد كلمة المرور الرئيسية. إذا نسيتها فلن يمكن فتح بياناتك، لذا احتفظ بنسخة احتياطية مشفّرة.';

  @override
  String get understandNoRecovery =>
      'أفهم أن كلمة المرور الرئيسية المنسية لا يمكن استردادها.';

  @override
  String get close => 'إغلاق';

  @override
  String get language => 'اللغة';

  @override
  String get languageSystem => 'لغة النظام';

  @override
  String get sectionLanguage => 'اللغة';

  @override
  String get sectionExperience => 'التجربة';

  @override
  String get sectionAppearance => 'المظهر';

  @override
  String get panelDarkness => 'تعتيم اللوحات';

  @override
  String get panelDarknessDesc => 'يجعل اللوحات والبطاقات أكثر أو أقل شفافية';

  @override
  String get backgroundTitle => 'الخلفية';

  @override
  String get backgroundDim => 'التعتيم';

  @override
  String get backgroundDimDesc => 'يجعل صورة الخلفية أغمق أو أفتح';

  @override
  String get bgBronze => 'برونزي';

  @override
  String get bgEmber => 'جمر';

  @override
  String get bgSapphire => 'ياقوت';

  @override
  String get bgObsidian => 'سَبَج';

  @override
  String get bgLumen => 'لومن';

  @override
  String get smartGuide => 'تلميحات ذكية';

  @override
  String get smartGuideDesc => 'يعرض تلميحات قصيرة عند استخدام ميزة لأول مرة';

  @override
  String get haptics => 'الاهتزاز';

  @override
  String get hapticsDesc => 'اهتزاز قصير عند الفتح بالبصمة وعند النسخ';

  @override
  String get reduceAnimations => 'بلا حركات';

  @override
  String get reduceAnimationsDesc =>
      'يوقف كل الحركات في التطبيق: اهتزاز أيقونة المساعدة وتوهّجها، وقائمة المساعدة، وانتقالات الصفحات، والنوافذ، وخط الماسح. مفيد للأجهزة الأبطأ وللأشخاص الحساسين للحركة.';

  @override
  String get resetTips => 'إعادة التلميحات';

  @override
  String get resetTipsDesc => 'إظهار حركة المساعدة وكل التلميحات مجددًا';

  @override
  String get tipsResetDone => 'ستظهر التلميحات مجددًا';

  @override
  String get tipLongPress =>
      'تلميح: اضغط مطولًا على عنصر لتحديده، ثم احذف عدة عناصر معًا.';

  @override
  String get statTotal => 'الإجمالي';

  @override
  String get statReused => 'مكرّرة';

  @override
  String get planFree => 'مجاني';

  @override
  String get screenshotAllow => 'السماح بلقطات الشاشة';

  @override
  String get screenshotAllowHint =>
      'تُوقَف حماية الشاشة للمدة المحددة أدناه، ثم تعود تلقائيًا.';

  @override
  String get backupSection => 'نسخة احتياطية مشفّرة';

  @override
  String get backupExport => 'إنشاء نسخة';

  @override
  String get backupExportDesc =>
      'يحفظ كل العناصر، بما فيها المهملات، في ملف محمي بكلمة مرور النسخة الاحتياطية. احفظ الملف في مكان آمن.';

  @override
  String get backupImport => 'استعادة';

  @override
  String get backupImportDesc =>
      'يضيف العناصر من ملف نسخة احتياطية. لا يُستبدل أي عنصر موجود ولا يُحذف.';

  @override
  String get backupPasswordTitle => 'كلمة مرور النسخة';

  @override
  String get backupPasswordInfo =>
      'تحمي كلمة المرور هذه ملف النسخة الاحتياطية، ويمكن أن تختلف عن كلمة المرور الرئيسية. إذا نسيتها فلن يمكن فتح النسخة.';

  @override
  String get backupEnterPassword => 'أدخل كلمة مرور النسخة';

  @override
  String get backupContinue => 'التالي';

  @override
  String get backupSaved => 'تم حفظ النسخة';

  @override
  String get backupFailed => 'تعذّر إنشاء النسخة الاحتياطية';

  @override
  String backupRestored(int added, int skipped) {
    return 'أُضيف $added، و$skipped موجود مسبقًا';
  }

  @override
  String get backupWrongPassword => 'كلمة مرور النسخة خاطئة';

  @override
  String get backupInvalidFile => 'هذا ليس ملف نسخة احتياطية صالحًا من MÜHÜR';

  @override
  String get backupReminderTitle => 'تذكير النسخ الاحتياطي';

  @override
  String get backupReminderDesc =>
      'يذكّرك في الشاشة الرئيسية عندما تصبح آخر نسخة أقدم من هذه المدة. اضبطه على 0 لإيقافه.';

  @override
  String get backupReminderOff => 'إيقاف';

  @override
  String get backupReminderNever =>
      'لم تُنشئ نسخة احتياطية بعد. أنشئ واحدة الآن حتى لا تفقد كلمات مرورك.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'آخر نسخة احتياطية كانت قبل $days يوم.',
      many: 'آخر نسخة احتياطية كانت قبل $days يومًا.',
      few: 'آخر نسخة احتياطية كانت قبل $days أيام.',
      two: 'آخر نسخة احتياطية كانت قبل يومين.',
      one: 'آخر نسخة احتياطية كانت قبل يوم واحد.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'نسخ الآن';

  @override
  String get backupReminderLater => 'لاحقًا';

  @override
  String get statusScreenOn =>
      'حماية الشاشة مفعّلة: لقطات الشاشة وتسجيلها محظورة';

  @override
  String get statusScreenOff =>
      'حماية الشاشة متوقفة مؤقتًا: لقطات الشاشة مسموحة';

  @override
  String get statusBackupNever =>
      'لا توجد نسخة احتياطية بعد. أنشئ واحدة من الإعدادات > نسخ احتياطي';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'آخر نسخة: قبل $days يوم',
      many: 'آخر نسخة: قبل $days يومًا',
      few: 'آخر نسخة: قبل $days أيام',
      two: 'آخر نسخة: قبل يومين',
      one: 'آخر نسخة: أمس',
      zero: 'نُسخ احتياطيًا اليوم',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'النسخ متأخر: آخر نسخة قبل $days يوم',
      many: 'النسخ متأخر: آخر نسخة قبل $days يومًا',
      few: 'النسخ متأخر: آخر نسخة قبل $days أيام',
      two: 'النسخ متأخر: آخر نسخة قبل يومين',
      one: 'النسخ متأخر: آخر نسخة قبل يوم واحد',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر في المهملات',
      many: '$count عنصرًا في المهملات',
      few: '$count عناصر في المهملات',
      two: 'عنصران في المهملات',
      one: 'عنصر واحد في المهملات',
      zero: 'المهملات فارغة',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'الفتح الحيوي مفعّل';

  @override
  String get statusBiometricOff => 'الفتح الحيوي متوقف (اضغط للإعداد)';

  @override
  String get helpStatusScreen =>
      'أيقونة الدرع: حماية الشاشة (أخضر = مفعّلة، باهت = متوقفة)';

  @override
  String get helpStatusBackup =>
      'أيقونة النسخ: حالة النسخ الاحتياطي (أخضر = نسخة حديثة، باهت = حان وقت النسخ)';

  @override
  String get helpStatusTrash =>
      'أيقونة المهملات: العناصر المحذوفة (الرقم = العناصر المنتظرة، اضغط للفتح)';

  @override
  String get helpStatusBiometric =>
      'أيقونة البصمة: الفتح الحيوي (أخضر = مفعّل، اضغط للتغيير)';

  @override
  String get helpTitle => 'المساعدة';

  @override
  String get helpMenuTitle => 'كيف أستخدمه؟';

  @override
  String get helpAdd => 'زر +: إضافة عنصر جديد';

  @override
  String get helpTap => 'اضغط على بطاقة: عرض التفاصيل';

  @override
  String get helpLongPress => 'ضغط مطوّل: تحديد وحذف';

  @override
  String get helpSearch => 'البحث: عثور سريع';

  @override
  String get helpCategories => 'الفئات: تصفية العناصر';

  @override
  String get helpLock => 'أيقونة القفل: قفل الخزنة الآن';

  @override
  String get helpSettings =>
      'الإعدادات: النسخ الاحتياطي والقفل التلقائي والمزيد';

  @override
  String get helpStats => 'اللوحة السفلية: ملخص الخزنة';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'نقل $count عنصر محدد إلى المهملات؟',
      many: 'نقل $count عنصرًا محددًا إلى المهملات؟',
      few: 'نقل $count عناصر محددة إلى المهملات؟',
      two: 'نقل العنصرين المحددين إلى المهملات؟',
      one: 'نقل العنصر المحدد إلى المهملات؟',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'اسم البنك';

  @override
  String get fcInternetBankingPassword => 'كلمة مرور البنك';

  @override
  String get fcCardPin => 'رمز PIN';

  @override
  String get fcCardNumber => 'رقم البطاقة';

  @override
  String get fcExpiryDate => 'تاريخ الانتهاء';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'رقم الدعم';

  @override
  String get fcCustomerNoTc => 'رقم العميل / الهوية';

  @override
  String get fcAccountType => 'نوع الحساب';

  @override
  String get fcPhoneBankingPassword => 'كلمة مرور الهاتف';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'الكشف / الاستحقاق';

  @override
  String get fcAccountTitle => 'اسم الحساب';

  @override
  String get fcEmailAddress => 'البريد الإلكتروني';

  @override
  String get fcRecoveryEmail => 'بريد الاسترداد';

  @override
  String get fcRecoveryPhone => 'هاتف الاسترداد';

  @override
  String get fc2faBackupCodes => 'رموز 2FA الاحتياطية';

  @override
  String get fcSecurityQA => 'سؤال الأمان';

  @override
  String get fcPasswordChangeDate => 'تاريخ التغيير';

  @override
  String get fcPlatformTitle => 'المنصة / العنوان';

  @override
  String get fcUsernameProfileId => 'المستخدم / معرّف الملف';

  @override
  String get fcRegisteredEmail => 'البريد المسجل';

  @override
  String get fcRegisteredPhone => 'الهاتف المسجل';

  @override
  String get fcProfileUrl => 'رابط الملف الشخصي';

  @override
  String get fcAccountTypeStatus => 'نوع الحساب / الحالة';

  @override
  String get fcLinkedMainAccount => 'الحساب المرتبط';

  @override
  String get fc2faSecretKey => 'مفتاح 2FA السري';

  @override
  String get fcServiceName => 'المؤسسة';

  @override
  String get fcCompanyName => 'اسم الشركة';

  @override
  String get fcCorporateUserId => 'المستخدم / المعرّف المؤسسي';

  @override
  String get fcPanelUrl => 'رابط اللوحة';

  @override
  String get fcDepartmentPosition => 'القسم / المنصب';

  @override
  String get fcLicenseCode => 'العميل / الترخيص';

  @override
  String get fcSupportContact => 'جهة الدعم';

  @override
  String get fcSiteName => 'اسم الموقع';

  @override
  String get fcWebAddress => 'رابط الموقع';

  @override
  String get fcUsernameEmail => 'المستخدم / البريد';

  @override
  String get pickFieldTitle => 'اختر حقلًا';

  @override
  String get generatorSettings => 'إعدادات المولّد';

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
  String get customTypePassword => 'كلمة مرور';

  @override
  String get customTypeDate => 'تاريخ';

  @override
  String get customTypePhone => 'هاتف';

  @override
  String get orphanVaultTitle => 'تم العثور على خزنة قديمة';

  @override
  String get orphanVaultBody =>
      'يوجد على هذا الجهاز ملف خزنة قديم، لكن مفاتيحه غير قابلة للقراءة، لذا لا يمكن فتحه. إذا تابعت فستُحذف تلك البيانات القديمة. إذا كانت لديك نسخة احتياطية، فأنشئ خزنة جديدة ثم استعدها.';

  @override
  String get orphanVaultReplace => 'حذف ومتابعة';

  @override
  String get forgotOldPassword => 'لا أتذكر كلمة المرور الحالية';

  @override
  String get useCurrentPassword => 'استخدام كلمة المرور الحالية';

  @override
  String get forgotPasswordBioHint =>
      'أكّد ببصمتك لتعيين كلمة مرور رئيسية جديدة. تبقى عناصرك كما هي.';

  @override
  String get bioConfirmFailed => 'فشل التأكيد الحيوي أو أُلغي.';

  @override
  String get biometricChangedBody =>
      'تغيّرت إعدادات البصمة أو الوجه، لذا أُوقف الدخول الحيوي حفاظًا على أمانك.';

  @override
  String get limitReachedTitle => 'بلغت الحد المجاني';

  @override
  String limitReachedBody(int count) {
    return 'تتيح النسخة المجانية حتى $count عناصر في كل فئة. احذف عنصرًا أو انتقل إلى Pro لعناصر غير محدودة.';
  }

  @override
  String get scanLimitTitle => 'انتهت عمليات المسح المجانية';

  @override
  String scanLimitBody(int count) {
    return 'استخدمت عمليات المسح المجانية ($count). انتقل إلى Pro لمسح غير محدود.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return 'أُضيف $added، ولم يُستعد $limited (بلغت الحد المجاني). ملف النسخة الاحتياطية لم يتغيّر.';
  }

  @override
  String get aboutProtectionTitle => 'كيف تُحمى بياناتك';

  @override
  String get aboutProtectionBody =>
      'كل ما تحفظه يُقفل بتشفير قوي على هذا الهاتف. لا يفتحه إلا كلمة المرور الرئيسية، ولا تُخزَّن في أي مكان، ولا حتى لدى MÜHÜR. ومن دونها لا يمكن قراءة البيانات.';

  @override
  String get aboutOfflineTitle => 'يعمل دون إنترنت';

  @override
  String get aboutOfflineBody =>
      'لا يتصل MÜHÜR بالإنترنت أبدًا. لا حساب ولا خادم ولا سحابة. تبقى كلمات مرورك على هذا الهاتف ما لم تصدّرها بنفسك، كنسخة احتياطية مشفّرة أو كملف Excel.';

  @override
  String get aboutRights => 'جميع الحقوق محفوظة.';

  @override
  String statusClipboard(int seconds) {
    return 'ستُمسح الحافظة بعد $seconds ث. اضغط لمسحها الآن.';
  }

  @override
  String get helpStatusClipboard =>
      'أيقونة الحافظة: قيمة منسوخة (الرقم = الثواني المتبقية حتى المسح، اضغط للمسح الآن)';

  @override
  String aboutVersionLine(String version) {
    return 'الإصدار $version';
  }

  @override
  String get aboutReleaseNotes => 'ملاحظات الإصدار';

  @override
  String get aboutHowTitle => 'كيف يعمل';

  @override
  String get aboutStoryTitle => 'قصة MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'من وراء MÜHÜR';

  @override
  String get aboutPrivacySection => 'سياسة الخصوصية';

  @override
  String get aboutPermissionsTitle => 'الأذونات والبيانات';

  @override
  String get aboutSupportSection => 'الدعم';

  @override
  String get aboutRate => 'قيّم على Google Play';

  @override
  String get aboutRateDesc => 'اترك تقييمًا أو مراجعة في صفحة المتجر';

  @override
  String get aboutInBrief => 'باختصار';

  @override
  String get aboutTechnical => 'تفاصيل تقنية';

  @override
  String get aboutProtectionTech =>
      '• تُشفَّر الخزنة بمفتاح عشوائي طوله 256 بت. ويُختَم هذا المفتاح باستخدام AES-256-GCM بمفتاح مشتق من كلمة المرور الرئيسية عبر Argon2id (ذاكرة 32 ميبيبايت، 3 تمريرات). إعدادات الاشتقاق مرتبطة بالختم، لذا يُكتشف أي عبث.\n• قاعدة البيانات مشفّرة بـ SQLCipher، ويُشتق مفتاحها من مفتاح الخزنة عبر HKDF-SHA256.\n• تُشفَّر الحقول الحساسة مرة أخرى بـ AES-256-GCM وتُربط بعنصرها وحقلها.\n• بعد 5 كلمات مرور خاطئة ينتظر التطبيق 30 ثانية، وتتضاعف المدة في كل مرة حتى ساعة واحدة. تغيير ساعة الهاتف لا يقصّر الانتظار.\n• لا يقبل الفتح الحيوي إلا القياسات الحيوية القوية (الفئة 3)، ويتوقف عند إضافة بصمة أو وجه جديد. في معظم الهواتف لا يبلغ التعرّف على الوجه هذا المستوى، لذا تُستخدم البصمة فقط عادةً.\n• تُحظر لقطات الشاشة وتسجيلها، وتُقفل الخزنة عند مغادرة التطبيق، وتُعلَّم القيم المنسوخة كحساسة وتُمسح تلقائيًا.';

  @override
  String get aboutOfflineTech =>
      '• لا يملك الإصدار المنشور من التطبيق أي إذن للإنترنت أو الشبكة، وتُزال هذه الأذونات حتى لو طلبتها مكتبة ما.\n• النسخ الاحتياطي السحابي والنقل إلى جهاز آخر معطّلان، فلا تُنسخ بيانات التطبيق خارج الهاتف.\n• يستخدم التعرّف على النص نموذجًا مدمجًا في التطبيق ويعمل على الهاتف، وتُعالَج صور الكاميرا في الذاكرة ولا تُحفظ أبدًا.\n• لا تغادر البيانات الهاتف إلا إذا صدّرتها بنفسك: كملف نسخة احتياطية مشفّر، أو كملف Excel غير مشفّر تقع مسؤولية أمانه عليك.';

  @override
  String get aboutPermissionsBody =>
      'لا يجمع MÜHÜR أي بيانات شخصية، ولا يعرض إعلانات، ولا يستخدم أدوات تحليل، ولا يشارك شيئًا مع أحد. لا يطلب إلا الكاميرا (لمسح النص) والقياسات الحيوية (لفتح القفل). تدير Google Play الاشتراكات، ولا يرى التطبيق بيانات الدفع أبدًا. حذف التطبيق يحذف كل بياناته. وقبل الحذف يمكنك تصدير عناصرك إلى Excel، وأمان ذلك الملف مسؤوليتك.';

  @override
  String get aboutPermissionsTech =>
      '• الكاميرا: تُستخدم فقط عند فتح الماسح؛ لا تُحفظ صور ولا يُسجَّل صوت.\n• القياسات الحيوية: تتحقق نافذة النظام في الهاتف من بصمتك أو وجهك، ولا يتلقى MÜHÜR هذه البيانات أبدًا.\n• الملفات: لا يتم الوصول إليها إلا عندما تختار بنفسك مكان حفظ أو فتح نسخة احتياطية أو ملف Excel.\n• لا حساب ولا خادم ولا معرّفات تتبّع أو إعلانات.\n• تتولى Google Play تنزيل التطبيق وشراء الاشتراك وفق سياسة الخصوصية الخاصة بـ Google.';

  @override
  String get how1T => 'الخزنة وكلمة المرور الرئيسية';

  @override
  String get how1B =>
      'يُحفظ كل شيء في خزنة مشفّرة على هذا الهاتف، ولا يفتحها إلا كلمة المرور الرئيسية. لا يمكن استردادها، فاختر كلمة تتذكرها واحتفظ بنسخة احتياطية.';

  @override
  String get how2T => 'العناصر والفئات';

  @override
  String get how2B =>
      'الفئات ثابتة: البنوك، المواقع، البريد، شبكات اجتماعية، العمل، أخرى. عند إضافة عنصر بزر + تختار فئته، فتأتي معه الحقول المناسبة. لا يمكن إنشاء فئات جديدة، لكن يمكنك إضافة حقول إلى العنصر عبر «إضافة حقل»: اختر حقلًا من القائمة أو أنشئ «حقل مخصص» بالاسم الذي تريده.';

  @override
  String get how3T => 'النسخ الآمن';

  @override
  String get how3B =>
      'اضغط على حقل لنسخه. تُمسح الحافظة تلقائيًا بعد المدة التي تحددها. تعرض أيقونة الحافظة في الشاشة الرئيسية العدّ التنازلي؛ اضغط عليها للمسح فورًا.';

  @override
  String get how4T => 'المسح بالكاميرا';

  @override
  String get how4B =>
      'وجّه الكاميرا إلى بطاقة أو مستند لقراءة رقم IBAN أو نص بدل كتابته. راجع النتيجة قبل الحفظ.';

  @override
  String get how5T => 'المهملات';

  @override
  String get how5B =>
      'تبقى العناصر المحذوفة مشفّرة في المهملات ويمكن استعادتها حتى تنتهي المدة التي حددتها.';

  @override
  String get how6T => 'النسخ الاحتياطي والاستعادة';

  @override
  String get how6B =>
      'أنشئ ملف نسخة احتياطية مشفّرًا بكلمة مرور خاصة واحفظه في مكان آمن. الاستعادة تضيف العناصر فقط ولا تستبدل الموجودة أبدًا.';

  @override
  String get how7T => 'القفل والقياسات الحيوية';

  @override
  String get how7B =>
      'تُقفل الخزنة تلقائيًا عند مغادرة التطبيق. فعّل القياسات الحيوية لفتحها ببصمتك (أو بوجهك في الهواتف التي تدعم ذلك).';

  @override
  String get storyBody =>
      'يبدأ كل اختراع عظيم بمحاولة إنسان حلّ مشكلة صغيرة في حياته. وقصة MÜHÜR كذلك تمامًا: رحلة صادقة لكنها عازمة، وُلدت من ذاكرة تضيع في فوضى العالم الرقمي ومن غريزة حماية ما يخصّك.\n\nبدأ كل شيء بتلك الوقفة المزعجة التي سببتها كلمة مرور واحدة منسية. صمّمت MÜHÜR ملاذًا شخصيًا يعمل على جهازي فقط، دون الاعتماد على خوادم سحابية لأحد. ومع الوقت أدركت أن غيري أيضًا يريدون استعادة خصوصيتهم الرقمية.\n\nواليوم وُجد MÜHÜR لكل من يريد أن يبقي بياناته تحت سيطرته الكاملة دون أن يأتمن عليها أي خادم.\n\nاختم أكثر الأقفال أمانًا على ذاكرتك الرقمية.';

  @override
  String get devBody =>
      'MÜHÜR مشروع مستقل من UEK DESIGNER، صُمّم وطُوّر في تركيا. شكرًا لاستخدامك MÜHÜR.';

  @override
  String get rn100 =>
      '• الإصدار الأول.\n• خزنة مشفّرة على الهاتف تُفتح بكلمة مرور رئيسية (Argon2id + AES-256).\n• حقول جاهزة للبنوك والمواقع والبريد ووسائل التواصل وحسابات العمل.\n• مولّد كلمات مرور مع مؤشر للقوة.\n• مسح رقم IBAN والنصوص بالكاميرا.\n• الفتح بالبصمة (وبالوجه في الهواتف الداعمة).\n• نسخ احتياطي واستعادة مشفّران.\n• التصدير إلى Excel (غير مشفّر وعلى مسؤوليتك).\n• مهملات تُنظَّف تلقائيًا.\n• ملخص للخزنة يُظهر كلمات المرور المكررة.\n• رموز التحقق بخطوتين مع الإضافة عبر رمز QR.\n• سجل كلمات المرور وصحة الخزنة.\n• تجربة Pro مجانية لمدة 14 يومًا دون بطاقة.\n• قفل تلقائي وحماية للشاشة وعدّ تنازلي للحافظة.\n• يعمل دون إنترنت بالكامل.\n• 18 لغة.';

  @override
  String get excelExport => 'تصدير إلى Excel';

  @override
  String get excelExportDesc =>
      'ملف xlsx غير مشفّر لعناصرك، مثلًا قبل حذف التطبيق';

  @override
  String get excelExportWarnTitle => 'تصدير غير مشفّر';

  @override
  String get excelExportWarn =>
      'ملف Excel غير مشفّر. أي شخص يحصل على الملف يمكنه قراءة جميع كلمات مرورك. مكان حفظه ومن تشاركه معه وحذفه بعد ذلك مسؤوليتك وحدك بالكامل. لا تُضمَّن العناصر الموجودة في المهملات.';

  @override
  String get excelExportAgree => 'فهمت، أمان الملف مسؤوليتي.';

  @override
  String get excelExportSaved =>
      'تم حفظ ملف Excel. احذفه عندما لا تعود بحاجة إليه.';

  @override
  String get excelExportFailed => 'تعذّر إنشاء ملف Excel.';

  @override
  String get excelColDomain => 'النطاق';

  @override
  String get excelColUpdated => 'آخر تعديل';

  @override
  String get how8T => 'التصدير إلى Excel';

  @override
  String get how8B =>
      'يكتب خيار «تصدير إلى Excel» في إعدادات النسخ الاحتياطي جميع عناصرك (عدا المهملات) في ملف xlsx، مع ورقة لكل فئة. الملف غير مشفّر: تؤكد بكلمة المرور الرئيسية وتقبل أن أمانه مسؤوليتك. احذفه عندما لا تعود بحاجة إليه.';

  @override
  String get proFeatureTitle => 'ميزة Pro';

  @override
  String get proFieldsBody =>
      'إضافة حقول إضافية إلى العنصر ميزة Pro. تبقى الحقول التي أضفتها من قبل ويمكنك تعديلها.';

  @override
  String get proBiometricBody =>
      'الفتح بالبصمة ميزة Pro. يمكنك دائمًا الفتح بكلمة المرور الرئيسية.';

  @override
  String get proBackgroundsBody =>
      'الخلفيات الإضافية ميزة Pro. الخلفية الافتراضية متاحة دائمًا.';

  @override
  String bioGraceWarn(String days) {
    return 'المدة المتبقية للفتح بالبصمة: $days، ثم سيتوقف. تأكد من أنك تتذكر كلمة المرور الرئيسية. إذا نسيتها، فعيّن كلمة جديدة ببصمتك من الإعدادات عبر «تغيير كلمة المرور الرئيسية».';
  }

  @override
  String get genNewPassword => 'إنشاء كلمة مرور جديدة';

  @override
  String fieldRemoved(String label) {
    return 'تمت إزالة الحقل «$label»';
  }

  @override
  String get undo => 'تراجع';

  @override
  String get proStatusActive => 'اشتراك Pro مفعّل';

  @override
  String proStatusTrial(String days) {
    return 'التجربة المجانية، المتبقي: $days';
  }

  @override
  String get proStatusFree => 'الخطة المجانية';

  @override
  String get proTrialInfo =>
      'عند انتهاء التجربة تنتقل تلقائيًا إلى الخطة المجانية. لا حاجة إلى بطاقة، ولا يُحذف أي شيء.';

  @override
  String get proFeatEntries => 'عناصر غير محدودة';

  @override
  String get proFeatEntriesDesc => 'مجانًا: 3 لكل فئة';

  @override
  String get proFeatScan => 'مسح غير محدود بالكاميرا';

  @override
  String get proFeatScanDesc => 'مجانًا: 3 عمليات مسح';

  @override
  String get proFeatFields => 'حقول إضافية ومخصصة';

  @override
  String get proFeatFieldsDesc => 'أضف إلى العنصر أي حقل تحتاجه';

  @override
  String get proFeatBio => 'الفتح بالبصمة';

  @override
  String get proFeatBioDesc => 'افتح خزنتك بلمسة واحدة';

  @override
  String get proFeatBg => 'كل الخلفيات';

  @override
  String get proFeatBgDesc => 'الخلفيات الخمس كلها';

  @override
  String get proFeatHealth => 'صحة الخزنة';

  @override
  String get proFeatHealthDesc =>
      'اعرف كلمات المرور الضعيفة أو المكررة وانتقل مباشرة إلى العنصر';

  @override
  String get proFeatTotp => 'رموز التحقق بخطوتين';

  @override
  String get proFeatTotpDesc => 'تُنشأ الرموز داخل خزنتك دون إنترنت';

  @override
  String get proFeatHistory => 'سجل كلمات المرور';

  @override
  String get proFeatHistoryDesc => 'تُحفظ كلمات المرور القديمة لتعود إليها';

  @override
  String get proYearly => 'سنوي';

  @override
  String get proMonthly => 'شهري';

  @override
  String get proPerYear => '/ سنة';

  @override
  String get proPerMonth => '/ شهر';

  @override
  String get proBestValue => 'الأوفر';

  @override
  String get proSubscribe => 'اشترك';

  @override
  String get proRestore => 'استعادة الشراء';

  @override
  String get proManage => 'إدارة الاشتراك';

  @override
  String get proFinePrint =>
      'يتم الدفع عبر Google Play. يتجدد الاشتراك تلقائيًا حتى تلغيه، ويمكنك إلغاؤه في أي وقت من Google Play. إذا انتهى الاشتراك فلن تُحذف عناصرك.';

  @override
  String get proComingSoon => 'سيتاح الشراء عند نشر MÜHÜR على Google Play.';

  @override
  String get proSeePlans => 'تعرّف على Pro';

  @override
  String get proHealthBody =>
      'معرفة العناصر التي تحتوي على كلمات مرور ضعيفة أو مكررة ميزة Pro. الأعداد ظاهرة دائمًا.';

  @override
  String get healthWeakHint =>
      'قصيرة أو سهلة التخمين. استبدلها باستخدام مولّد كلمات المرور.';

  @override
  String get healthReusedHint =>
      'كلمة المرور نفسها مستخدمة في أكثر من عنصر. إذا تسرّبت إحداها أصبحت البقية في خطر أيضًا.';

  @override
  String get healthFairHint => 'مقبولة، لكن يمكن أن تكون أطول وأكثر تنوعًا.';

  @override
  String get healthAllGood =>
      'لا توجد كلمات مرور ضعيفة أو مكررة. خزنتك في حالة جيدة.';

  @override
  String get proHistoryBody =>
      'عرض القيم السابقة لكلمة المرور ميزة Pro. تُحفظ هنا كلمات المرور التي تغيّرها أثناء اشتراك Pro.';

  @override
  String get historyEmpty =>
      'لم تُغيَّر كلمة المرور هذه بعد. عند تغييرها ستظهر القيمة القديمة هنا.';

  @override
  String get historyNote =>
      'تُحفظ آخر 10 قيم لكل حقل كلمة مرور، مشفّرة مثل بقية الخزنة. لا يُضمَّن السجل في النسخ الاحتياطية.';

  @override
  String get historyClearQ => 'اضغط حذف مرة أخرى لمسح سجل هذا الحقل.';

  @override
  String get totpHint => 'مفتاح الإعداد أو رابط otpauth://';

  @override
  String get totpInvalid =>
      'هذا المفتاح غير صالح. الصق مفتاح الإعداد الذي قدّمه الموقع.';

  @override
  String get qrScan => 'مسح رمز QR';

  @override
  String get qrScanHint =>
      'وجّه الكاميرا إلى رمز QR الذي يعرضه الموقع عند إعداد التحقق بخطوتين.';

  @override
  String get qrNot2fa => 'رمز QR هذا ليس رمز إعداد للتحقق بخطوتين.';

  @override
  String get qrMigration =>
      'هذا رمز نقل من Google Authenticator. امسح بدلًا منه رمز QR الخاص بإعداد كل موقع.';

  @override
  String get totpEmpty => 'لا يوجد مفتاح بعد. امسح رمز QR لإضافته.';

  @override
  String get how9T => 'التحقق بخطوتين (2FA)';

  @override
  String get how9B =>
      'في العنصر، اضغط «إضافة حقل» واختر «مفتاح 2FA السري». امسح رمز QR الذي يعرضه الموقع أثناء إعداد 2FA بالأيقونة المجاورة للحقل، أو الصق مفتاح الإعداد. إذا حفظت الحقل فارغًا، يبقى في تفاصيل العنصر ويمكنك مسح الرمز من هناك. تعرض التفاصيل رمزًا من 6 أرقام والوقت المتبقي؛ انسخه وأدخله في الموقع. تُنشأ الرموز دون إنترنت حسب ساعة الهاتف، لذا تكون خاطئة إذا كانت الساعة خاطئة. تستمر الرموز الحالية في العمل حتى بعد انتهاء Pro.';

  @override
  String get how10T => 'سجل كلمات المرور وصحة الخزنة';

  @override
  String get how10B =>
      'مع Pro، عند تغيير كلمة مرور تُحفظ القديمة مشفّرة، وتعرض أيقونة السجل في تفاصيل العنصر آخر 10 قيم. تفتح أيقونة الدرع في لوحة الملخص بالشاشة الرئيسية صحة الخزنة: تُعرض كلمات المرور الضعيفة والمكررة، والضغط على إحداها ينقلك إلى العنصر.';

  @override
  String get how11T => 'Pro والفترة التجريبية';

  @override
  String get how11B =>
      'بعد الإعداد الأول تكون كل ميزات Pro مجانية لمدة 14 يومًا دون الحاجة إلى بطاقة. عند انتهاء التجربة تنتقل إلى الخطة المجانية: حتى 3 عناصر في كل فئة و3 عمليات مسح بالكاميرا. لا يُحذف شيء، وتستمر رموز 2FA الحالية في العمل، ويبقى الفتح بالبصمة مفعّلًا 7 أيام أخرى. يمكنك تمييز ميزات Pro بعلامة PRO الصغيرة في زاويتها.';

  @override
  String get showValue => 'إظهار';

  @override
  String get hideValue => 'إخفاء';

  @override
  String get favoriteAdd => 'إضافة إلى المفضلة';

  @override
  String get favoriteRemove => 'إزالة من المفضلة';

  @override
  String get proRedeem => 'استخدام رمز هدية';

  @override
  String get proThanks => 'شكرًا لك! MÜHÜR Pro مفعّل.';

  @override
  String get proPending =>
      'الدفع قيد الانتظار. سيُفعَّل Pro تلقائيًا عند اكتماله.';

  @override
  String get proBuyError => 'تعذّر إتمام الشراء. حاول مرة أخرى لاحقًا.';

  @override
  String get proRestoreDone => 'MÜHÜR Pro مفعّل.';

  @override
  String get proRestoreNone => 'لم يُعثر على Pro نشط في حساب Google هذا.';

  @override
  String get proStoreUnavailable =>
      'تعذّر الوصول إلى Google Play. تأكد من تثبيت متجر Play ومن تسجيل دخولك.';

  @override
  String proStatusGift(String days) {
    return 'Pro الهدية: متبقٍ $days';
  }

  @override
  String get proStatusGiftLife => 'Pro الهدية: بلا انتهاء';

  @override
  String get scanCodesTitle => 'مسح الرموز الاحتياطية';

  @override
  String get scanCodesHint =>
      'وجّه الكاميرا إلى قائمة الرموز الاحتياطية التي أعطاك إياها الموقع. تتجمع الرموز هنا عند قراءتها؛ أكّد عندما تظهر كلها.';

  @override
  String scanCodesCount(int count) {
    return 'الرموز المقروءة: $count';
  }

  @override
  String get scanCodesClear => 'مسح القائمة';

  @override
  String get totpRemoveTitle => 'حذف مفتاح 2FA؟';

  @override
  String get totpRemoveBody =>
      'إذا كان التحقق بخطوتين لا يزال مفعّلًا في الموقع، فقد لا تتمكن من تسجيل الدخول إلى ذلك الحساب بدون هذا المفتاح. أوقفه في الموقع أولًا، أو تأكد من حفظ رموزك الاحتياطية.';

  @override
  String get proBannerTrial => 'تابع بعد انتهاء التجربة';

  @override
  String get proBannerFree => 'كل الميزات بلا حدود';

  @override
  String proBannerPrice(String yearly, String month) {
    return '$yearly سنويًا · نحو $month شهريًا';
  }
}
