// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'ธนาคาร';

  @override
  String get catWebsites => 'เว็บไซต์';

  @override
  String get catEmails => 'อีเมล';

  @override
  String get catSocial => 'โซเชียล';

  @override
  String get catBusiness => 'งาน';

  @override
  String get catOther => 'อื่นๆ';

  @override
  String get setupTitle => 'สร้างรหัสผ่านหลัก';

  @override
  String get setupInfo =>
      'รหัสผ่านนี้กู้คืนไม่ได้ หากลืม ข้อมูลของคุณจะเปิดไม่ได้อีกเลย';

  @override
  String get masterPassword => 'รหัสผ่านหลัก';

  @override
  String get confirmPassword => 'ยืนยันรหัสผ่าน';

  @override
  String get changeMasterPassword => 'เปลี่ยนรหัสผ่านหลัก';

  @override
  String get currentPassword => 'รหัสผ่านปัจจุบัน';

  @override
  String get newPassword => 'รหัสผ่านใหม่';

  @override
  String get newPasswordSame => 'รหัสผ่านใหม่ต้องไม่ซ้ำกับรหัสผ่านปัจจุบัน';

  @override
  String get change => 'เปลี่ยน';

  @override
  String get masterPasswordChanged => 'เปลี่ยนรหัสผ่านหลักแล้ว';

  @override
  String get changePasswordFailed => 'เปลี่ยนรหัสผ่านไม่สำเร็จ โปรดลองอีกครั้ง';

  @override
  String get passwordTooShort => 'ใช้อย่างน้อย 8 ตัวอักษร';

  @override
  String get passwordNeedsMix => 'ใช้ตัวพิมพ์เล็ก ตัวพิมพ์ใหญ่ และตัวเลข';

  @override
  String get reqLength => 'อย่างน้อย 8 ตัวอักษร';

  @override
  String get reqLower => 'ตัวพิมพ์เล็ก';

  @override
  String get reqUpper => 'ตัวพิมพ์ใหญ่';

  @override
  String get reqDigit => 'ตัวเลข';

  @override
  String get reqSpecial => 'อักขระพิเศษ (!@#...) – ไม่บังคับ';

  @override
  String get reqOptional => 'ไม่บังคับ';

  @override
  String get passwordsDontMatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get createVault => 'สร้าง';

  @override
  String get unlock => 'เปิด';

  @override
  String get wrongPassword => 'รหัสผ่านหลักไม่ถูกต้อง';

  @override
  String lockedOut(int seconds) {
    return 'ลองหลายครั้งเกินไป โปรดลองอีกครั้งใน $seconds วินาที';
  }

  @override
  String get enableBiometricsQ => 'เปิดใช้การปลดล็อกด้วยไบโอเมตริกไหม';

  @override
  String get enable => 'เปิดใช้';

  @override
  String get notNow => 'ไว้ทีหลัง';

  @override
  String get biometricReason => 'ปลดล็อก Muhur';

  @override
  String get lockNow => 'ล็อก';

  @override
  String get all => 'ทั้งหมด';

  @override
  String get noEntries => 'ยังไม่มีรายการ';

  @override
  String get searchHint => 'ค้นหาชื่อ โดเมน แท็ก';

  @override
  String get addEntry => 'เพิ่มรายการ';

  @override
  String get editEntry => 'แก้ไขรายการ';

  @override
  String get title => 'ชื่อ';

  @override
  String get category => 'หมวดหมู่';

  @override
  String get domain => 'โดเมน (เช่น example.com)';

  @override
  String get tags => 'แท็ก';

  @override
  String get fields => 'ช่องข้อมูล';

  @override
  String get addField => 'เพิ่มช่อง';

  @override
  String get typeText => 'ข้อความ';

  @override
  String get sensitive => 'ซ่อนค่า';

  @override
  String get save => 'บันทึก';

  @override
  String get delete => 'ลบ';

  @override
  String get moveToTrash => 'ย้ายไปถังขยะ';

  @override
  String get trash => 'ถังขยะ';

  @override
  String get trashKeepFor => 'เก็บในถังขยะนาน';

  @override
  String get trashHint =>
      'รายการที่ลบยังคงถูกเข้ารหัสอยู่ในถังขยะและกู้คืนได้ เมื่อครบจำนวนวันนี้ รายการจะถูกลบถาวรในครั้งถัดไปที่ปลดล็อกตู้นิรภัย การลดระยะเวลาจะลบรายการที่เก่ากว่าออกจากถังขยะด้วย การล้างถังขยะไม่สามารถย้อนกลับได้';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count วัน',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'ถังขยะ';

  @override
  String get trashEmpty => 'ถังขยะว่างเปล่า';

  @override
  String get restore => 'กู้คืน';

  @override
  String get deleteForever => 'ลบถาวร';

  @override
  String get deleteForeverConfirm =>
      'ลบรายการนี้ถาวรไหม การกระทำนี้ย้อนกลับไม่ได้';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'เหลือ $count วัน',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'ล้างถังขยะ';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
    );
    return 'ลบ $_temp0 ออกจากถังขยะถาวรไหม การกระทำนี้ย้อนกลับไม่ได้';
  }

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get deleteConfirm =>
      'ย้ายรายการนี้ไปถังขยะไหม คุณกู้คืนได้จนกว่าจะล้างถังขยะ';

  @override
  String get titleRequired => 'ต้องระบุชื่อ';

  @override
  String get fieldUsername => 'ชื่อผู้ใช้';

  @override
  String get fieldPassword => 'รหัสผ่าน';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'บันทึก';

  @override
  String get copy => 'คัดลอก';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get settingsSecurity => 'ความปลอดภัย';

  @override
  String get settingsBackup => 'สำรอง';

  @override
  String get settingsGeneral => 'ทั่วไป';

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String get autoLock => 'ล็อกอัตโนมัติ';

  @override
  String get immediately => 'ทันที';

  @override
  String get copyTimer => 'เวลาคัดลอก';

  @override
  String get copyTimerHint =>
      'ข้อมูลที่คัดลอกจะถูกล้างออกจากคลิปบอร์ดเมื่อครบเวลานี้ และตู้นิรภัยจะยังเปิดอยู่จนถึงตอนนั้น';

  @override
  String secondsShort(int seconds) {
    return '$seconds วิ';
  }

  @override
  String get biometricUnlock => 'ไบโอเมตริก';

  @override
  String get generator => 'ตัวสร้าง';

  @override
  String get generate => 'สร้าง';

  @override
  String get length => 'ความยาว';

  @override
  String get lowercase => 'ตัวพิมพ์เล็ก (a-z)';

  @override
  String get uppercase => 'ตัวพิมพ์ใหญ่ (A-Z)';

  @override
  String get digits => 'ตัวเลข (0-9)';

  @override
  String get symbols => 'สัญลักษณ์ (!@#...)';

  @override
  String get avoidAmbiguous => 'ไม่ใช้อักขระที่คล้ายกัน (O/0, l/1)';

  @override
  String get regenerate => 'สร้างใหม่';

  @override
  String get usePassword => 'ใช้';

  @override
  String get strengthWeak => 'อ่อน';

  @override
  String get strengthFair => 'พอใช้';

  @override
  String get strengthGood => 'ดี';

  @override
  String get strengthStrong => 'แข็งแรง';

  @override
  String get scan => 'สแกน';

  @override
  String get scanHint =>
      'ถือกล้องให้นิ่งเหนือข้อความ ในโหมด IBAN ระบบจะตรวจจับให้อัตโนมัติ';

  @override
  String get scanning => 'กำลังสแกน...';

  @override
  String get ibanCorrected => 'อาจถูกแก้ไขหลังจาก OCR ผิดพลาด โปรดตรวจสอบให้ดี';

  @override
  String get cameraError => 'ใช้กล้องไม่ได้ โปรดตรวจสอบสิทธิ์การใช้กล้อง';

  @override
  String get editBeforeUse => 'ตรวจสอบและแก้ไข';

  @override
  String get useValue => 'ใช้';

  @override
  String get scanIsThis => 'ใช่อันนี้ไหม';

  @override
  String get scanNo => 'ไม่ใช่';

  @override
  String get scanYes => 'ใช่';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'ตัวจัดการรหัสผ่าน';

  @override
  String get tagline =>
      'ผนึกข้อมูลดิจิทัลของคุณ\nไม่มีเซิร์ฟเวอร์ มีแค่คุณกับข้อมูลของคุณ\nMÜHÜR: กุญแจที่ปลอดภัยที่สุดสำหรับความทรงจำดิจิทัลของคุณ';

  @override
  String get login => 'เข้า';

  @override
  String get infoTitle => 'เกี่ยวกับ Muhur';

  @override
  String get infoBody =>
      'Muhur เก็บรหัสผ่านของคุณแบบเข้ารหัสไว้ในอุปกรณ์นี้เท่านั้น ไม่มีบัญชีและไม่มีเซิร์ฟเวอร์\n\nรหัสผ่านหลักกู้คืนไม่ได้ หากลืม ข้อมูลของคุณจะเปิดไม่ได้ ดังนั้นโปรดเก็บข้อมูลสำรองที่เข้ารหัสไว้';

  @override
  String get understandNoRecovery =>
      'ฉันเข้าใจว่ารหัสผ่านหลักที่ลืมไปแล้วจะกู้คืนไม่ได้';

  @override
  String get close => 'ปิด';

  @override
  String get language => 'ภาษา';

  @override
  String get languageSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get sectionLanguage => 'ภาษา';

  @override
  String get sectionExperience => 'การใช้งาน';

  @override
  String get sectionAppearance => 'รูปลักษณ์';

  @override
  String get panelDarkness => 'ความเข้มของแผง';

  @override
  String get panelDarknessDesc => 'ทำให้แผงและการ์ดโปร่งใสมากขึ้นหรือน้อยลง';

  @override
  String get backgroundTitle => 'พื้นหลัง';

  @override
  String get backgroundDim => 'ลดความสว่าง';

  @override
  String get backgroundDimDesc => 'ทำให้ภาพพื้นหลังมืดลงหรือสว่างขึ้น';

  @override
  String get bgBronze => 'บรอนซ์';

  @override
  String get bgEmber => 'ถ่านแดง';

  @override
  String get bgSapphire => 'ไพลิน';

  @override
  String get bgObsidian => 'ออบซิเดียน';

  @override
  String get bgLumen => 'ลูเมน';

  @override
  String get smartGuide => 'เคล็ดลับอัจฉริยะ';

  @override
  String get smartGuideDesc => 'แสดงเคล็ดลับสั้นๆ เมื่อใช้ฟีเจอร์ครั้งแรก';

  @override
  String get haptics => 'การสั่น';

  @override
  String get hapticsDesc =>
      'สั่นสั้นๆ เมื่อปลดล็อกด้วยลายนิ้วมือและเมื่อคัดลอก';

  @override
  String get reduceAnimations => 'ปิดแอนิเมชัน';

  @override
  String get reduceAnimationsDesc =>
      'ปิดแอนิเมชันทั้งหมดในแอป: การสั่นและเรืองแสงของไอคอนช่วยเหลือ เมนูช่วยเหลือ การเปลี่ยนหน้า กล่องโต้ตอบ และเส้นสแกน เหมาะกับอุปกรณ์ที่ช้าและผู้ที่ไวต่อการเคลื่อนไหว';

  @override
  String get resetTips => 'รีเซ็ตเคล็ดลับ';

  @override
  String get resetTipsDesc =>
      'แสดงแอนิเมชันช่วยเหลือและเคล็ดลับทั้งหมดอีกครั้ง';

  @override
  String get tipsResetDone => 'จะแสดงเคล็ดลับอีกครั้ง';

  @override
  String get tipLongPress =>
      'เคล็ดลับ: กดค้างที่รายการเพื่อเลือก แล้วลบหลายรายการพร้อมกัน';

  @override
  String get statTotal => 'ทั้งหมด';

  @override
  String get statReused => 'ใช้ซ้ำ';

  @override
  String get planFree => 'ฟรี';

  @override
  String get screenshotAllow => 'อนุญาตให้จับภาพหน้าจอ';

  @override
  String get screenshotAllowHint =>
      'การป้องกันหน้าจอจะปิดตามเวลาที่ตั้งไว้ด้านล่าง แล้วเปิดกลับเองโดยอัตโนมัติ';

  @override
  String get backupSection => 'ข้อมูลสำรองที่เข้ารหัส';

  @override
  String get backupExport => 'สร้างข้อมูลสำรอง';

  @override
  String get backupExportDesc =>
      'บันทึกทุกรายการ รวมถึงถังขยะ ลงในไฟล์ที่ป้องกันด้วยรหัสผ่านสำรอง โปรดเก็บไฟล์ไว้ในที่ปลอดภัย';

  @override
  String get backupImport => 'กู้คืน';

  @override
  String get backupImportDesc =>
      'เพิ่มรายการจากไฟล์สำรอง รายการเดิมจะไม่ถูกเขียนทับหรือลบ';

  @override
  String get backupPasswordTitle => 'รหัสผ่านสำรอง';

  @override
  String get backupPasswordInfo =>
      'รหัสผ่านนี้ป้องกันไฟล์สำรอง ซึ่งอาจต่างจากรหัสผ่านหลักได้ หากลืม จะเปิดไฟล์สำรองไม่ได้';

  @override
  String get backupEnterPassword => 'ป้อนรหัสผ่านสำรอง';

  @override
  String get backupContinue => 'ถัดไป';

  @override
  String get backupSaved => 'บันทึกข้อมูลสำรองแล้ว';

  @override
  String get backupFailed => 'สร้างข้อมูลสำรองไม่สำเร็จ';

  @override
  String backupRestored(int added, int skipped) {
    return 'เพิ่ม $added รายการ, มีอยู่แล้ว $skipped รายการ';
  }

  @override
  String get backupWrongPassword => 'รหัสผ่านสำรองไม่ถูกต้อง';

  @override
  String get backupInvalidFile => 'ไฟล์นี้ไม่ใช่ไฟล์สำรอง Muhur ที่ถูกต้อง';

  @override
  String get backupReminderTitle => 'เตือนให้สำรองข้อมูล';

  @override
  String get backupReminderDesc =>
      'เตือนบนหน้าหลักเมื่อข้อมูลสำรองล่าสุดเก่ากว่านี้ ตั้งเป็น 0 เพื่อปิด';

  @override
  String get backupReminderOff => 'ปิด';

  @override
  String get backupReminderNever =>
      'คุณยังไม่เคยสำรองข้อมูล สำรองตอนนี้เพื่อไม่ให้รหัสผ่านสูญหาย';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'สำรองข้อมูลล่าสุดเมื่อ $days วันก่อน',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'สำรอง';

  @override
  String get backupReminderLater => 'ไว้ทีหลัง';

  @override
  String get statusScreenOn =>
      'การป้องกันหน้าจอเปิดอยู่: บล็อกการจับภาพและบันทึกหน้าจอ';

  @override
  String get statusScreenOff =>
      'การป้องกันหน้าจอปิดชั่วคราว: อนุญาตให้จับภาพหน้าจอ';

  @override
  String get statusBackupNever =>
      'ยังไม่มีข้อมูลสำรอง สร้างได้ที่ การตั้งค่า > สำรอง';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'สำรองล่าสุด: $days วันก่อน',
      one: 'สำรองล่าสุด: เมื่อวาน',
      zero: 'สำรองแล้ววันนี้',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'เลยกำหนดสำรอง: ล่าสุด $days วันก่อน',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการในถังขยะ',
      zero: 'ถังขยะว่างเปล่า',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'เปิดการปลดล็อกด้วยไบโอเมตริกอยู่';

  @override
  String get statusBiometricOff =>
      'ปิดการปลดล็อกด้วยไบโอเมตริกอยู่ (แตะเพื่อตั้งค่า)';

  @override
  String get helpStatusScreen =>
      'ไอคอนโล่: การป้องกันหน้าจอ (เขียว = เปิด, จาง = ปิด)';

  @override
  String get helpStatusBackup =>
      'ไอคอนสำรอง: สถานะข้อมูลสำรอง (เขียว = สำรองล่าสุด, จาง = ถึงเวลาสำรอง)';

  @override
  String get helpStatusTrash =>
      'ไอคอนถังขยะ: รายการที่ลบ (ตัวเลข = รายการที่รอ, แตะเพื่อเปิด)';

  @override
  String get helpStatusBiometric =>
      'ไอคอนลายนิ้วมือ: ปลดล็อกด้วยไบโอเมตริก (เขียว = เปิด, แตะเพื่อเปลี่ยน)';

  @override
  String get helpTitle => 'ช่วยเหลือ';

  @override
  String get helpMenuTitle => 'ใช้งานอย่างไร';

  @override
  String get helpAdd => 'ปุ่ม +: เพิ่มรายการใหม่';

  @override
  String get helpTap => 'แตะการ์ด: ดูรายละเอียด';

  @override
  String get helpLongPress => 'กดค้าง: เลือกและลบ';

  @override
  String get helpSearch => 'ค้นหา: หาได้รวดเร็ว';

  @override
  String get helpCategories => 'หมวดหมู่: กรองรายการ';

  @override
  String get helpLock => 'ไอคอนแม่กุญแจ: ล็อกตู้นิรภัยทันที';

  @override
  String get helpSettings => 'การตั้งค่า: สำรองข้อมูล ล็อกอัตโนมัติ และอื่นๆ';

  @override
  String get helpStats => 'แผงด้านล่าง: สรุปตู้นิรภัย';

  @override
  String deleteSelectedConfirm(int count) {
    return 'ย้าย $count รายการที่เลือกไปถังขยะไหม';
  }

  @override
  String get fcBankName => 'ชื่อธนาคาร';

  @override
  String get fcInternetBankingPassword => 'รหัสผ่านอินเทอร์เน็ตแบงก์กิ้ง';

  @override
  String get fcCardPin => 'PIN บัตร';

  @override
  String get fcCardNumber => 'หมายเลขบัตร';

  @override
  String get fcExpiryDate => 'วันหมดอายุ';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'เบอร์ฝ่ายบริการ';

  @override
  String get fcCustomerNoTc => 'รหัสลูกค้า / เลขบัตรประชาชน';

  @override
  String get fcAccountType => 'ประเภทบัญชี';

  @override
  String get fcPhoneBankingPassword => 'รหัสผ่านโฟนแบงก์กิ้ง';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'รอบบิล / ครบกำหนด';

  @override
  String get fcAccountTitle => 'ชื่อบัญชี';

  @override
  String get fcEmailAddress => 'ที่อยู่อีเมล';

  @override
  String get fcRecoveryEmail => 'อีเมลกู้คืน';

  @override
  String get fcRecoveryPhone => 'โทรศัพท์กู้คืน';

  @override
  String get fc2faBackupCodes => '2FA / รหัสสำรอง';

  @override
  String get fcSecurityQA => 'คำถามความปลอดภัย';

  @override
  String get fcPasswordChangeDate => 'วันที่เปลี่ยนรหัสผ่าน';

  @override
  String get fcPlatformTitle => 'แพลตฟอร์ม / ชื่อ';

  @override
  String get fcUsernameProfileId => 'ชื่อผู้ใช้ / ID โปรไฟล์';

  @override
  String get fcRegisteredEmail => 'อีเมลที่ลงทะเบียน';

  @override
  String get fcRegisteredPhone => 'โทรศัพท์ที่ลงทะเบียน';

  @override
  String get fcProfileUrl => 'URL โปรไฟล์';

  @override
  String get fcAccountTypeStatus => 'ประเภท / สถานะบัญชี';

  @override
  String get fcLinkedMainAccount => 'บัญชีที่เชื่อมโยง';

  @override
  String get fc2faSecretKey => 'คีย์ลับ 2FA';

  @override
  String get fcServiceName => 'หน่วยงาน';

  @override
  String get fcCompanyName => 'ชื่อบริษัท';

  @override
  String get fcCorporateUserId => 'ชื่อผู้ใช้ / รหัสพนักงาน';

  @override
  String get fcPanelUrl => 'URL แผงควบคุม';

  @override
  String get fcDepartmentPosition => 'แผนก / ตำแหน่ง';

  @override
  String get fcLicenseCode => 'ลูกค้า / ไลเซนส์';

  @override
  String get fcSupportContact => 'ผู้ติดต่อฝ่ายสนับสนุน';

  @override
  String get fcSiteName => 'ชื่อเว็บไซต์';

  @override
  String get fcWebAddress => 'URL เว็บไซต์';

  @override
  String get fcUsernameEmail => 'ชื่อผู้ใช้ / อีเมล';

  @override
  String get pickFieldTitle => 'เลือกช่องข้อมูล';

  @override
  String get generatorSettings => 'ตั้งค่าตัวสร้าง';

  @override
  String get saveAndExit => 'บันทึกและออก';

  @override
  String get customField => 'ช่องที่กำหนดเอง';

  @override
  String get customFieldName => 'ชื่อช่อง';

  @override
  String get customFieldType => 'ประเภทช่อง';

  @override
  String get customTypeText => 'ข้อความ';

  @override
  String get customTypeNote => 'บันทึก';

  @override
  String get customTypePassword => 'รหัสผ่าน';

  @override
  String get customTypeDate => 'วันที่';

  @override
  String get customTypePhone => 'โทรศัพท์';

  @override
  String get orphanVaultTitle => 'พบตู้นิรภัยเก่า';

  @override
  String get orphanVaultBody =>
      'มีไฟล์ตู้นิรภัยเก่าอยู่ในอุปกรณ์นี้ แต่อ่านคีย์ของไฟล์ไม่ได้ จึงเปิดไม่ได้ หากดำเนินการต่อ ข้อมูลเก่านั้นจะถูกลบ หากคุณมีข้อมูลสำรอง ให้สร้างตู้นิรภัยใหม่แล้วกู้คืนภายหลัง';

  @override
  String get orphanVaultReplace => 'ลบและดำเนินการต่อ';

  @override
  String get forgotOldPassword => 'ฉันจำรหัสผ่านปัจจุบันไม่ได้';

  @override
  String get useCurrentPassword => 'ใช้รหัสผ่านปัจจุบันแทน';

  @override
  String get forgotPasswordBioHint =>
      'ยืนยันด้วยลายนิ้วมือหรือใบหน้าเพื่อตั้งรหัสผ่านหลักใหม่ รายการของคุณจะยังอยู่เหมือนเดิม';

  @override
  String get bioConfirmFailed => 'การยืนยันด้วยไบโอเมตริกล้มเหลวหรือถูกยกเลิก';

  @override
  String get biometricChangedBody =>
      'การตั้งค่าลายนิ้วมือหรือใบหน้าของคุณเปลี่ยนไป จึงปิดการเข้าสู่ระบบด้วยไบโอเมตริกเพื่อความปลอดภัย';

  @override
  String get limitReachedTitle => 'ถึงขีดจำกัดเวอร์ชันฟรีแล้ว';

  @override
  String limitReachedBody(int count) {
    return 'เวอร์ชันฟรีเก็บได้สูงสุด $count รายการต่อหมวดหมู่ ลบรายการหรืออัปเกรดเป็น Pro เพื่อเก็บได้ไม่จำกัด';
  }

  @override
  String get scanLimitTitle => 'ใช้สิทธิ์สแกนฟรีหมดแล้ว';

  @override
  String scanLimitBody(int count) {
    return 'คุณใช้สิทธิ์สแกนฟรีครบ $count ครั้งแล้ว อัปเกรดเป็น Pro เพื่อสแกนได้ไม่จำกัด';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return 'เพิ่ม $added รายการ, ไม่ได้กู้คืน $limited รายการ (ถึงขีดจำกัดเวอร์ชันฟรี) ไฟล์สำรองของคุณไม่เปลี่ยนแปลง';
  }

  @override
  String get aboutProtectionTitle => 'วิธีปกป้องข้อมูลของคุณ';

  @override
  String get aboutProtectionBody =>
      'ทุกอย่างที่คุณบันทึกจะถูกล็อกด้วยการเข้ารหัสที่แข็งแรงบนโทรศัพท์เครื่องนี้ มีเพียงรหัสผ่านหลักของคุณเท่านั้นที่เปิดได้ และรหัสผ่านนั้นไม่ถูกเก็บไว้ที่ใดเลย แม้แต่ใน MÜHÜR หากไม่มีรหัสผ่าน ข้อมูลจะอ่านไม่ได้';

  @override
  String get aboutOfflineTitle => 'ใช้งานแบบออฟไลน์';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR ไม่เชื่อมต่ออินเทอร์เน็ตเลย ไม่มีบัญชี ไม่มีเซิร์ฟเวอร์ และไม่มีคลาวด์ รหัสผ่านของคุณจะอยู่ในโทรศัพท์เครื่องนี้ เว้นแต่คุณจะส่งออกเองเป็นข้อมูลสำรองที่เข้ารหัสหรือไฟล์ Excel';

  @override
  String get aboutRights => 'สงวนลิขสิทธิ์';

  @override
  String statusClipboard(int seconds) {
    return 'คลิปบอร์ดจะถูกล้างใน $seconds วิ แตะเพื่อล้างทันที';
  }

  @override
  String get helpStatusClipboard =>
      'ไอคอนคลิปบอร์ด: ค่าที่คัดลอก (ตัวเลข = วินาทีที่เหลือก่อนล้าง, แตะเพื่อล้างทันที)';

  @override
  String aboutVersionLine(String version) {
    return 'เวอร์ชัน $version';
  }

  @override
  String get aboutReleaseNotes => 'บันทึกประจำรุ่น';

  @override
  String get aboutHowTitle => 'วิธีการทำงาน';

  @override
  String get aboutStoryTitle => 'เรื่องราวของ MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'เกี่ยวกับผู้พัฒนา';

  @override
  String get aboutPrivacySection => 'นโยบายความเป็นส่วนตัว';

  @override
  String get aboutPermissionsTitle => 'สิทธิ์และข้อมูล';

  @override
  String get aboutSupportSection => 'การสนับสนุน';

  @override
  String get aboutRate => 'ให้คะแนนบน Google Play';

  @override
  String get aboutRateDesc => 'ให้คะแนนหรือเขียนรีวิวในหน้าร้านค้า';

  @override
  String get aboutInBrief => 'โดยสรุป';

  @override
  String get aboutTechnical => 'รายละเอียดทางเทคนิค';

  @override
  String get aboutProtectionTech =>
      '• ตู้นิรภัยถูกเข้ารหัสด้วยคีย์สุ่มขนาด 256 บิต คีย์นี้ถูกผนึกด้วย AES-256-GCM โดยใช้คีย์ที่สร้างจากรหัสผ่านหลักด้วย Argon2id (หน่วยความจำ 32 MiB, 3 รอบ) ค่าตั้งการสร้างคีย์ผูกอยู่กับผนึก จึงตรวจพบการดัดแปลงได้\n• ฐานข้อมูลถูกเข้ารหัสด้วย SQLCipher และคีย์ของฐานข้อมูลสร้างจากคีย์ตู้นิรภัยด้วย HKDF-SHA256\n• ช่องข้อมูลที่ละเอียดอ่อนถูกเข้ารหัสซ้ำด้วย AES-256-GCM และผูกกับรายการและช่องของตัวเอง\n• หลังใส่รหัสผ่านผิด 5 ครั้ง แอปจะรอ 30 วินาที และเพิ่มเป็นสองเท่าทุกครั้งจนถึง 1 ชั่วโมง การเปลี่ยนเวลาบนโทรศัพท์ไม่ทำให้เวลารอสั้นลง\n• การปลดล็อกด้วยไบโอเมตริกยอมรับเฉพาะไบโอเมตริกที่แข็งแรง (Class 3) และจะปิดเองเมื่อมีการเพิ่มลายนิ้วมือหรือใบหน้าใหม่\n• การจับภาพและบันทึกหน้าจอถูกบล็อก ตู้นิรภัยจะล็อกเมื่อคุณออกจากแอป และค่าที่คัดลอกจะถูกทำเครื่องหมายว่าละเอียดอ่อนแล้วล้างให้อัตโนมัติ';

  @override
  String get aboutOfflineTech =>
      '• แอปเวอร์ชันที่เผยแพร่ไม่มีสิทธิ์อินเทอร์เน็ตหรือเครือข่าย สิทธิ์เหล่านี้จะถูกลบออกแม้ไลบรารีใดจะขอก็ตาม\n• การสำรองข้อมูลบนคลาวด์และการย้ายไปยังอุปกรณ์อื่นถูกปิดไว้ ข้อมูลของแอปจึงไม่ถูกคัดลอกออกจากโทรศัพท์\n• การจดจำข้อความใช้โมเดลที่มาพร้อมแอปและทำงานบนโทรศัพท์ ภาพจากกล้องถูกประมวลผลในหน่วยความจำและไม่ถูกบันทึก\n• ข้อมูลจะออกจากโทรศัพท์ก็ต่อเมื่อคุณส่งออกเองเท่านั้น ทั้งในรูปไฟล์สำรองที่เข้ารหัส หรือไฟล์ Excel ที่ไม่เข้ารหัสซึ่งความปลอดภัยเป็นความรับผิดชอบของคุณ';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR ไม่เก็บข้อมูลส่วนบุคคล ไม่แสดงโฆษณา ไม่ใช้เครื่องมือวิเคราะห์ และไม่แชร์อะไรกับใคร แอปขอเพียงสิทธิ์กล้อง (สำหรับสแกนข้อความ) และไบโอเมตริก (สำหรับปลดล็อก) Google Play เป็นผู้จัดการการสมัครสมาชิก แอปไม่เคยเห็นข้อมูลการชำระเงินของคุณ การลบแอปจะลบข้อมูลทั้งหมดของแอปด้วย ก่อนลบแอป คุณส่งออกรายการเป็นไฟล์ Excel ได้ โดยความปลอดภัยของไฟล์นั้นเป็นความรับผิดชอบของคุณ';

  @override
  String get aboutPermissionsTech =>
      '• กล้อง: ใช้เฉพาะเมื่อเปิดตัวสแกน ไม่บันทึกรูปภาพและไม่บันทึกเสียง\n• ไบโอเมตริก: หน้าต่างระบบของโทรศัพท์เป็นผู้ตรวจลายนิ้วมือหรือใบหน้า MÜHÜR ไม่เคยได้รับข้อมูลนั้น\n• ไฟล์: เข้าถึงเฉพาะเมื่อคุณเลือกตำแหน่งบันทึกหรือเปิดข้อมูลสำรองหรือไฟล์ Excel เอง\n• ไม่มีบัญชี ไม่มีเซิร์ฟเวอร์ ไม่มีรหัสติดตามหรือรหัสโฆษณา\n• การดาวน์โหลดแอปและการซื้อการสมัครสมาชิกดำเนินการโดย Google Play ตามนโยบายความเป็นส่วนตัวของ Google';

  @override
  String get how1T => 'ตู้นิรภัยและรหัสผ่านหลัก';

  @override
  String get how1B =>
      'ทุกอย่างถูกเก็บไว้ในตู้นิรภัยที่เข้ารหัสบนโทรศัพท์เครื่องนี้ มีเพียงรหัสผ่านหลักที่เปิดได้ รหัสผ่านนี้กู้คืนไม่ได้ จึงควรเลือกรหัสที่จำได้และสร้างข้อมูลสำรองไว้';

  @override
  String get how2T => 'รายการและหมวดหมู่';

  @override
  String get how2B =>
      'หมวดหมู่เป็นแบบคงที่ ได้แก่ ธนาคาร เว็บไซต์ อีเมล โซเชียล งาน และอื่นๆ เมื่อเพิ่มรายการด้วยปุ่ม + คุณจะเลือกหมวดหมู่ของรายการ และหมวดหมู่นั้นจะเตรียมช่องข้อมูลที่เหมาะสมให้ คุณสร้างหมวดหมู่ใหม่ไม่ได้ แต่เพิ่มช่องในรายการได้ด้วย \"เพิ่มช่อง\" โดยเลือกจากรายการหรือสร้าง \"ช่องที่กำหนดเอง\" ด้วยชื่อที่ต้องการ';

  @override
  String get how3T => 'คัดลอกอย่างปลอดภัย';

  @override
  String get how3B =>
      'แตะช่องข้อมูลเพื่อคัดลอก คลิปบอร์ดจะล้างเองเมื่อครบเวลาที่ตั้งไว้ ไอคอนคลิปบอร์ดบนหน้าหลักจะนับถอยหลัง แตะเพื่อล้างทันที';

  @override
  String get how4T => 'สแกนด้วยกล้อง';

  @override
  String get how4B =>
      'หันกล้องไปที่บัตรหรือเอกสารเพื่ออ่าน IBAN หรือข้อความแทนการพิมพ์ ตรวจสอบผลลัพธ์ก่อนบันทึก';

  @override
  String get how5T => 'ถังขยะ';

  @override
  String get how5B =>
      'รายการที่ลบยังคงถูกเข้ารหัสอยู่ในถังขยะและกู้คืนได้จนกว่าจะครบระยะเวลาที่ตั้งไว้';

  @override
  String get how6T => 'สำรองและกู้คืน';

  @override
  String get how6B =>
      'สร้างไฟล์สำรองที่เข้ารหัสพร้อมรหัสผ่านของตัวเองแล้วเก็บไว้ในที่ปลอดภัย การกู้คืนจะเพิ่มรายการเท่านั้น และไม่เขียนทับรายการเดิม';

  @override
  String get how7T => 'ล็อกและไบโอเมตริก';

  @override
  String get how7B =>
      'ตู้นิรภัยจะล็อกเองเมื่อคุณออกจากแอป เปิดไบโอเมตริกเพื่อเปิดด้วยลายนิ้วมือหรือใบหน้า';

  @override
  String get storyBody =>
      'สิ่งประดิษฐ์ยิ่งใหญ่ทุกชิ้นเริ่มต้นจากความพยายามแก้ปัญหาเล็กๆ ในชีวิตของใครสักคน เรื่องราวของ MÜHÜR ก็เป็นเช่นนั้น เป็นการเดินทางที่จริงใจแต่มุ่งมั่น ซึ่งเกิดจากความทรงจำที่หลงหายในความวุ่นวายของโลกดิจิทัล และจากสัญชาตญาณที่อยากปกป้องสิ่งที่เป็นของตัวเอง\n\nทุกอย่างเริ่มจากการชะงักอันน่าหงุดหงิดเพราะลืมรหัสผ่านเพียงตัวเดียว MÜHÜR จึงถูกออกแบบให้เป็นที่หลบภัยส่วนตัวที่ทำงานบนอุปกรณ์ของตัวเองเท่านั้น โดยไม่ต้องพึ่งเซิร์ฟเวอร์คลาวด์ของใคร เมื่อเวลาผ่านไปจึงได้รู้ว่าไม่ได้มีเพียงคนเดียวที่อยากได้ความเป็นส่วนตัวทางดิจิทัลกลับคืนมา\n\nวันนี้ MÜHÜR มีไว้สำหรับทุกคนที่อยากเก็บข้อมูลไว้ในการควบคุมของตัวเองทั้งหมด โดยไม่ต้องฝากไว้กับเซิร์ฟเวอร์ใด\n\nผนึกความทรงจำดิจิทัลของคุณด้วยกุญแจที่ปลอดภัยที่สุด';

  @override
  String get devBody =>
      'MÜHÜR เป็นโปรเจกต์อิสระของ UEK DESIGNER ออกแบบและพัฒนาในประเทศตุรกี ขอบคุณที่ใช้ MÜHÜR';

  @override
  String get rn100 =>
      '• รุ่นแรก\n• ตู้นิรภัยที่เข้ารหัสบนโทรศัพท์ เปิดด้วยรหัสผ่านหลัก (Argon2id + AES-256)\n• ช่องข้อมูลพร้อมใช้สำหรับธนาคาร เว็บไซต์ อีเมล โซเชียลมีเดีย และบัญชีงาน\n• ตัวสร้างรหัสผ่านพร้อมตัวบอกความแข็งแรง\n• สแกน IBAN และข้อความด้วยกล้อง\n• ปลดล็อกด้วยลายนิ้วมือและใบหน้า\n• สำรองและกู้คืนแบบเข้ารหัส\n• ส่งออกเป็น Excel (ไม่เข้ารหัส ผู้ใช้รับผิดชอบเอง)\n• ถังขยะที่ล้างอัตโนมัติ\n• สรุปตู้นิรภัยที่แสดงรหัสผ่านที่ใช้ซ้ำ\n• ล็อกอัตโนมัติ ป้องกันหน้าจอ และนับถอยหลังคลิปบอร์ด\n• ทำงานแบบออฟไลน์ทั้งหมด\n• 18 ภาษา';

  @override
  String get excelExport => 'ส่งออกเป็น Excel';

  @override
  String get excelExportDesc =>
      'ไฟล์ .xlsx ที่ไม่เข้ารหัสของรายการทั้งหมด เช่น ก่อนลบแอป';

  @override
  String get excelExportWarnTitle => 'การส่งออกแบบไม่เข้ารหัส';

  @override
  String get excelExportWarn =>
      'ไฟล์ Excel จะไม่ถูกเข้ารหัส ใครก็ตามที่ได้ไฟล์นี้ไปจะอ่านรหัสผ่านทั้งหมดของคุณได้ การเลือกที่เก็บ การแชร์ให้ใคร และการลบไฟล์หลังใช้งานเป็นความรับผิดชอบของคุณทั้งหมด รายการในถังขยะจะไม่ถูกรวมไว้';

  @override
  String get excelExportAgree =>
      'ฉันเข้าใจแล้ว ความปลอดภัยของไฟล์เป็นความรับผิดชอบของฉัน';

  @override
  String get excelExportSaved =>
      'บันทึกไฟล์ Excel แล้ว ลบไฟล์เมื่อไม่ต้องการใช้อีก';

  @override
  String get excelExportFailed => 'สร้างไฟล์ Excel ไม่ได้';

  @override
  String get excelColDomain => 'โดเมน';

  @override
  String get excelColUpdated => 'แก้ไขล่าสุด';

  @override
  String get how8T => 'ส่งออกเป็น Excel';

  @override
  String get how8B =>
      '\"ส่งออกเป็น Excel\" ในการตั้งค่าการสำรองข้อมูลจะเขียนรายการทั้งหมด (ยกเว้นถังขยะ) ลงในไฟล์ .xlsx โดยแยกแผ่นงานตามหมวดหมู่ ไฟล์นี้ไม่ถูกเข้ารหัส คุณต้องยืนยันด้วยรหัสผ่านหลักและยอมรับว่าความปลอดภัยของไฟล์เป็นความรับผิดชอบของคุณ ลบไฟล์เมื่อไม่ต้องการใช้อีก';

  @override
  String get proFeatureTitle => 'ฟีเจอร์ Pro';

  @override
  String get proFieldsBody =>
      'การเพิ่มช่องในรายการเป็นฟีเจอร์ Pro ช่องที่เพิ่มไว้แล้วจะยังอยู่และแก้ไขได้';

  @override
  String get proBiometricBody =>
      'การปลดล็อกด้วยลายนิ้วมือหรือใบหน้าเป็นฟีเจอร์ Pro คุณปลดล็อกด้วยรหัสผ่านหลักได้เสมอ';

  @override
  String get proBackgroundsBody =>
      'พื้นหลังเพิ่มเติมเป็นฟีเจอร์ Pro พื้นหลังเริ่มต้นใช้ได้เสมอ';

  @override
  String bioGraceWarn(String days) {
    return 'การปลดล็อกด้วยลายนิ้วมือและใบหน้าจะยังเปิดอยู่อีก $days แล้วจะปิด โปรดตรวจสอบว่าคุณจำรหัสผ่านหลักได้ หากลืม ให้ตั้งรหัสผ่านใหม่ด้วยลายนิ้วมือที่ \"เปลี่ยนรหัสผ่านหลัก\" ในการตั้งค่า';
  }

  @override
  String get genNewPassword => 'สร้างรหัสผ่านใหม่';

  @override
  String fieldRemoved(String label) {
    return 'ลบช่อง \"$label\" แล้ว';
  }

  @override
  String get undo => 'เลิกทำ';

  @override
  String get proStatusActive => 'การสมัครสมาชิก Pro ของคุณใช้งานอยู่';

  @override
  String proStatusTrial(String days) {
    return 'ทดลองใช้ฟรี: เหลืออีก $days';
  }

  @override
  String get proStatusFree => 'แผนฟรี';

  @override
  String get proTrialInfo =>
      'เมื่อสิ้นสุดช่วงทดลอง ระบบจะเปลี่ยนเป็นแผนฟรีให้อัตโนมัติ ไม่ต้องใช้บัตร และไม่มีข้อมูลใดถูกลบ';

  @override
  String get proFeatEntries => 'รายการไม่จำกัด';

  @override
  String get proFeatEntriesDesc => 'ฟรี: หมวดหมู่ละ 3 รายการ';

  @override
  String get proFeatScan => 'สแกนด้วยกล้องไม่จำกัด';

  @override
  String get proFeatScanDesc => 'ฟรี: 3 ครั้ง';

  @override
  String get proFeatFields => 'ช่องเพิ่มเติมและช่องที่กำหนดเอง';

  @override
  String get proFeatFieldsDesc => 'เพิ่มช่องที่ต้องการลงในรายการได้';

  @override
  String get proFeatBio => 'ปลดล็อกด้วยลายนิ้วมือและใบหน้า';

  @override
  String get proFeatBioDesc => 'เปิดตู้นิรภัยได้ในแตะเดียว';

  @override
  String get proFeatBg => 'พื้นหลังทั้งหมด';

  @override
  String get proFeatBgDesc => 'พื้นหลังครบทั้ง 5 แบบ';

  @override
  String get proFeatHealth => 'สุขภาพตู้นิรภัย';

  @override
  String get proFeatHealthDesc =>
      'ดูว่ารหัสผ่านใดอ่อนหรือใช้ซ้ำ แล้วไปที่รายการนั้นได้ทันที';

  @override
  String get proFeatTotp => 'รหัสยืนยันแบบสองขั้นตอน';

  @override
  String get proFeatTotpDesc => 'สร้างรหัสแบบออฟไลน์ภายในตู้นิรภัย';

  @override
  String get proFeatHistory => 'ประวัติรหัสผ่าน';

  @override
  String get proFeatHistoryDesc => 'เก็บรหัสผ่านเก่าไว้ให้ย้อนดูได้';

  @override
  String get proYearly => 'รายปี';

  @override
  String get proMonthly => 'รายเดือน';

  @override
  String get proPerYear => '/ ปี';

  @override
  String get proPerMonth => '/ เดือน';

  @override
  String get proBestValue => 'คุ้มที่สุด';

  @override
  String get proSubscribe => 'สมัครสมาชิก';

  @override
  String get proRestore => 'กู้คืนการซื้อ';

  @override
  String get proManage => 'จัดการการสมัครสมาชิก';

  @override
  String get proFinePrint =>
      'ชำระเงินผ่าน Google Play การสมัครสมาชิกจะต่ออายุอัตโนมัติจนกว่าคุณจะยกเลิก ซึ่งยกเลิกได้ทุกเมื่อใน Google Play หากการสมัครสมาชิกสิ้นสุด รายการของคุณจะไม่ถูกลบ';

  @override
  String get proComingSoon => 'จะซื้อได้เมื่อ MÜHÜR เผยแพร่บน Google Play';

  @override
  String get proSeePlans => 'ดู Pro';

  @override
  String get proHealthBody =>
      'การดูว่ารายการใดมีรหัสผ่านที่อ่อนหรือใช้ซ้ำเป็นฟีเจอร์ Pro ส่วนจำนวนจะแสดงเสมอ';

  @override
  String get healthWeakHint => 'สั้นหรือเดาง่าย เปลี่ยนด้วยตัวสร้างรหัสผ่าน';

  @override
  String get healthReusedHint =>
      'รหัสผ่านเดียวกันถูกใช้ในหลายรายการ หากรายการหนึ่งรั่วไหล รายการอื่นก็เสี่ยงด้วย';

  @override
  String get healthFairHint => 'พอใช้ได้ แต่อาจยาวและหลากหลายกว่านี้';

  @override
  String get healthAllGood =>
      'ไม่มีรหัสผ่านที่อ่อนหรือใช้ซ้ำ ตู้นิรภัยของคุณอยู่ในสภาพดี';

  @override
  String get proHistoryBody =>
      'การดูค่าเก่าของรหัสผ่านเป็นฟีเจอร์ Pro รหัสผ่านที่คุณเปลี่ยนขณะใช้ Pro จะถูกเก็บไว้ที่นี่';

  @override
  String get historyEmpty =>
      'รหัสผ่านนี้ยังไม่เคยเปลี่ยน เมื่อคุณเปลี่ยน ค่าเก่าจะแสดงที่นี่';

  @override
  String get historyNote =>
      'ระบบเก็บ 10 ค่าล่าสุดของแต่ละช่องรหัสผ่าน โดยเข้ารหัสเหมือนข้อมูลอื่นในตู้นิรภัย ประวัติจะไม่รวมอยู่ในข้อมูลสำรอง';

  @override
  String get historyClearQ => 'แตะลบอีกครั้งเพื่อล้างประวัติของช่องนี้';
}
