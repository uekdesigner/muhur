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
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'فتح';

  @override
  String get wrongPassword => 'كلمة المرور الرئيسية خاطئة.';

  @override
  String lockedOut(int seconds) {
    return 'محاولات كثيرة جدًا. حاول مرة أخرى بعد $seconds ثانية.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'تفعيل الفتح بالبصمة أو الوجه؟';

  @override
  String get enable => 'تفعيل';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get biometricReason => 'فتح Muhur';

  @override
  String get lockNow => 'قفل';

  @override
  String get vaultUnlocked => 'Vault unlocked';

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
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'نص';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

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
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

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
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

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
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'جارٍ المسح...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'ربما صُحّح بعد خطأ في التعرّف على النص. تحقّق بعناية.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

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
  String get infoTitle => 'حول Muhur';

  @override
  String get infoBody =>
      'يحفظ Muhur كلمات مرورك مشفّرة على هذا الجهاز فقط. لا يوجد حساب ولا خادم.\n\nلا يمكن استرداد كلمة المرور الرئيسية. إذا نسيتها فلن يمكن فتح بياناتك، لذا احتفظ بنسخة احتياطية مشفّرة.';

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
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'السماح بلقطات الشاشة';

  @override
  String get screenshotAllowHint =>
      'تُوقَف حماية الشاشة للمدة المحددة أدناه، ثم تعود تلقائيًا.';

  @override
  String get screenshotTimer => 'Screenshot time';

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
  String get backupInvalidFile => 'هذا ليس ملف نسخة احتياطية صالحًا من Muhur';

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
  String get helpBody => 'Help content will be added here.';

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
  String get fcTag => 'Tag';

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
  String get fcBranchNameCode => 'Branch / Code';

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
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

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
  String get fcProfileNumericId => 'Profile ID';

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
  String get fcSiteName => 'اسم الموقع';

  @override
  String get fcWebAddress => 'رابط الموقع';

  @override
  String get fcUsernameEmail => 'المستخدم / البريد';

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
  String get pickFieldTitle => 'اختر حقلًا';

  @override
  String get allFieldsAdded => 'All fields added';

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
      'أكّد ببصمتك أو وجهك لتعيين كلمة مرور رئيسية جديدة. تبقى عناصرك كما هي.';

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
}
