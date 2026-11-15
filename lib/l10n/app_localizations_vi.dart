// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Ngân hàng';

  @override
  String get catWebsites => 'Trang web';

  @override
  String get catEmails => 'Email';

  @override
  String get catSocial => 'Mạng xã hội';

  @override
  String get catBusiness => 'Công việc';

  @override
  String get catOther => 'Khác';

  @override
  String get setupTitle => 'Tạo mật khẩu chính';

  @override
  String get setupInfo =>
      'Mật khẩu này không thể khôi phục. Nếu quên, dữ liệu của bạn sẽ không bao giờ mở được.';

  @override
  String get masterPassword => 'Mật khẩu chính';

  @override
  String get confirmPassword => 'Xác nhận mật khẩu';

  @override
  String get changeMasterPassword => 'Đổi mật khẩu chính';

  @override
  String get currentPassword => 'Mật khẩu hiện tại';

  @override
  String get newPassword => 'Mật khẩu mới';

  @override
  String get newPasswordSame => 'Mật khẩu mới phải khác mật khẩu hiện tại.';

  @override
  String get change => 'Đổi';

  @override
  String get masterPasswordChanged => 'Đã đổi mật khẩu chính.';

  @override
  String get changePasswordFailed =>
      'Không đổi được mật khẩu. Vui lòng thử lại.';

  @override
  String get passwordTooShort => 'Dùng ít nhất 8 ký tự.';

  @override
  String get passwordNeedsMix => 'Dùng chữ thường, chữ hoa và chữ số.';

  @override
  String get reqLength => 'Ít nhất 8 ký tự';

  @override
  String get reqLower => 'Chữ thường';

  @override
  String get reqUpper => 'Chữ hoa';

  @override
  String get reqDigit => 'Chữ số';

  @override
  String get reqSpecial => 'Ký tự đặc biệt (!@#...) – tùy chọn';

  @override
  String get reqOptional => 'tùy chọn';

  @override
  String get passwordsDontMatch => 'Mật khẩu không khớp.';

  @override
  String get createVault => 'Tạo';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Mở';

  @override
  String get wrongPassword => 'Sai mật khẩu chính.';

  @override
  String lockedOut(int seconds) {
    return 'Thử quá nhiều lần. Hãy thử lại sau $seconds giây.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Bật mở khóa sinh trắc học?';

  @override
  String get enable => 'Bật';

  @override
  String get notNow => 'Để sau';

  @override
  String get biometricReason => 'Mở khóa Muhur';

  @override
  String get lockNow => 'Khóa';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Tất cả';

  @override
  String get noEntries => 'Chưa có mục nào';

  @override
  String get searchHint => 'Tìm tiêu đề, tên miền, thẻ';

  @override
  String get addEntry => 'Thêm mục';

  @override
  String get editEntry => 'Sửa mục';

  @override
  String get title => 'Tiêu đề';

  @override
  String get category => 'Danh mục';

  @override
  String get domain => 'Tên miền (vd: example.com)';

  @override
  String get tags => 'Thẻ';

  @override
  String get fields => 'Trường';

  @override
  String get addField => 'Thêm trường';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Văn bản';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Ẩn giá trị';

  @override
  String get save => 'Lưu';

  @override
  String get delete => 'Xóa';

  @override
  String get moveToTrash => 'Vào thùng rác';

  @override
  String get trash => 'Thùng rác';

  @override
  String get trashKeepFor => 'Giữ trong thùng rác';

  @override
  String get trashHint =>
      'Các mục đã xóa vẫn được mã hóa trong thùng rác và có thể khôi phục. Sau số ngày này, chúng bị xóa vĩnh viễn vào lần mở kho tiếp theo. Rút ngắn thời hạn cũng xóa các mục cũ hơn khỏi thùng rác. Không thể hoàn tác việc dọn sạch thùng rác.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ngày',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Thùng rác';

  @override
  String get trashEmpty => 'Thùng rác trống.';

  @override
  String get restore => 'Khôi phục';

  @override
  String get deleteForever => 'Xóa hẳn';

  @override
  String get deleteForeverConfirm =>
      'Xóa vĩnh viễn mục này? Không thể hoàn tác.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Còn $count ngày',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Dọn sạch';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục',
    );
    return 'Xóa vĩnh viễn $_temp0 khỏi thùng rác? Không thể hoàn tác.';
  }

  @override
  String get cancel => 'Hủy';

  @override
  String get deleteConfirm =>
      'Chuyển mục này vào thùng rác? Bạn có thể khôi phục cho đến khi thùng rác được dọn sạch.';

  @override
  String get titleRequired => 'Cần có tiêu đề.';

  @override
  String get fieldUsername => 'Tên người dùng';

  @override
  String get fieldPassword => 'Mật khẩu';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Ghi chú';

  @override
  String get copy => 'Sao chép';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Cài đặt';

  @override
  String get settingsSecurity => 'Bảo mật';

  @override
  String get settingsBackup => 'Sao lưu';

  @override
  String get settingsGeneral => 'Chung';

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String get autoLock => 'Tự động khóa';

  @override
  String get immediately => 'Ngay lập tức';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Thời gian sao chép';

  @override
  String get copyTimerHint =>
      'Dữ liệu đã sao chép sẽ bị xóa khỏi bộ nhớ tạm sau thời gian này, và kho vẫn mở cho đến lúc đó.';

  @override
  String secondsShort(int seconds) {
    return '$seconds giây';
  }

  @override
  String get biometricUnlock => 'Sinh trắc học';

  @override
  String get generator => 'Trình tạo';

  @override
  String get generate => 'Tạo';

  @override
  String get length => 'Độ dài';

  @override
  String get lowercase => 'Chữ thường (a-z)';

  @override
  String get uppercase => 'Chữ hoa (A-Z)';

  @override
  String get digits => 'Chữ số (0-9)';

  @override
  String get symbols => 'Ký hiệu (!@#...)';

  @override
  String get avoidAmbiguous => 'Không dùng ký tự dễ nhầm (O/0, l/1)';

  @override
  String get regenerate => 'Tạo lại';

  @override
  String get usePassword => 'Dùng';

  @override
  String get strengthWeak => 'Yếu';

  @override
  String get strengthFair => 'Trung bình';

  @override
  String get strengthGood => 'Tốt';

  @override
  String get strengthStrong => 'Mạnh';

  @override
  String get scan => 'Quét';

  @override
  String get scanHint =>
      'Giữ máy ảnh yên trên văn bản. Ở chế độ IBAN, văn bản được nhận diện tự động.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Đang quét...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Có thể đã được sửa sau lỗi OCR. Hãy kiểm tra kỹ.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Không dùng được máy ảnh. Hãy kiểm tra quyền máy ảnh.';

  @override
  String get editBeforeUse => 'Kiểm tra và sửa';

  @override
  String get useValue => 'Dùng';

  @override
  String get scanIsThis => 'Có phải cái này?';

  @override
  String get scanNo => 'Không';

  @override
  String get scanYes => 'Có';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Trình quản lý mật khẩu';

  @override
  String get tagline =>
      'NIÊM PHONG dữ liệu số của bạn.\nKhông máy chủ. Chỉ có bạn và dữ liệu của bạn.\nMÜHÜR: ổ khóa an toàn nhất cho ký ức số của bạn.';

  @override
  String get login => 'VÀO';

  @override
  String get infoTitle => 'Về Muhur';

  @override
  String get infoBody =>
      'Muhur lưu mật khẩu của bạn ở dạng mã hóa, chỉ trên thiết bị này. Không có tài khoản, không có máy chủ.\n\nMật khẩu chính không thể khôi phục. Nếu quên, dữ liệu sẽ không mở được, vì vậy hãy giữ một bản sao lưu đã mã hóa.';

  @override
  String get understandNoRecovery =>
      'Tôi hiểu rằng mật khẩu chính bị quên sẽ không thể khôi phục.';

  @override
  String get close => 'Đóng';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSystem => 'Mặc định hệ thống';

  @override
  String get sectionLanguage => 'NGÔN NGỮ';

  @override
  String get sectionExperience => 'TRẢI NGHIỆM';

  @override
  String get sectionAppearance => 'GIAO DIỆN';

  @override
  String get panelDarkness => 'Độ tối bảng';

  @override
  String get panelDarknessDesc => 'Làm bảng và thẻ trong suốt hơn hoặc ít hơn';

  @override
  String get backgroundTitle => 'Hình nền';

  @override
  String get backgroundDim => 'Làm tối';

  @override
  String get backgroundDimDesc => 'Làm hình nền tối hơn hoặc sáng hơn';

  @override
  String get bgBronze => 'Đồng';

  @override
  String get bgEmber => 'Than hồng';

  @override
  String get bgSapphire => 'Sapphire';

  @override
  String get bgObsidian => 'Hắc diện thạch';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Mẹo thông minh';

  @override
  String get smartGuideDesc =>
      'Hiển thị mẹo ngắn khi bạn dùng một tính năng lần đầu';

  @override
  String get haptics => 'Rung';

  @override
  String get hapticsDesc => 'Rung nhẹ khi mở khóa bằng vân tay và khi sao chép';

  @override
  String get reduceAnimations => 'Tắt hiệu ứng';

  @override
  String get reduceAnimationsDesc =>
      'Tắt mọi hiệu ứng chuyển động trong ứng dụng: biểu tượng trợ giúp lắc và phát sáng, menu trợ giúp, chuyển trang, hộp thoại và vạch quét. Hữu ích cho thiết bị chậm và người nhạy cảm với chuyển động.';

  @override
  String get resetTips => 'Đặt lại mẹo';

  @override
  String get resetTipsDesc => 'Hiện lại hiệu ứng trợ giúp và tất cả mẹo';

  @override
  String get tipsResetDone => 'Mẹo sẽ được hiện lại';

  @override
  String get tipLongPress =>
      'Mẹo: nhấn giữ một mục để chọn, rồi xóa nhiều mục cùng lúc.';

  @override
  String get statTotal => 'Tổng';

  @override
  String get statReused => 'Dùng lại';

  @override
  String get planFree => 'MIỄN PHÍ';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Cho phép chụp màn hình';

  @override
  String get screenshotAllowHint =>
      'Chế độ bảo vệ màn hình tắt trong khoảng thời gian đặt bên dưới, rồi tự bật lại.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'SAO LƯU MÃ HÓA';

  @override
  String get backupExport => 'Tạo bản sao lưu';

  @override
  String get backupExportDesc =>
      'Lưu tất cả các mục, kể cả thùng rác, vào một tệp được bảo vệ bằng mật khẩu sao lưu. Hãy cất tệp ở nơi an toàn.';

  @override
  String get backupImport => 'Khôi phục';

  @override
  String get backupImportDesc =>
      'Thêm các mục từ tệp sao lưu. Các mục hiện có không bao giờ bị ghi đè hay xóa.';

  @override
  String get backupPasswordTitle => 'Mật khẩu sao lưu';

  @override
  String get backupPasswordInfo =>
      'Mật khẩu này bảo vệ tệp sao lưu. Nó có thể khác mật khẩu chính. Nếu quên, bản sao lưu sẽ không mở được.';

  @override
  String get backupEnterPassword => 'Nhập mật khẩu sao lưu';

  @override
  String get backupContinue => 'Tiếp';

  @override
  String get backupSaved => 'Đã lưu bản sao lưu';

  @override
  String get backupFailed => 'Không tạo được bản sao lưu';

  @override
  String backupRestored(int added, int skipped) {
    return 'Đã thêm $added, $skipped đã có sẵn';
  }

  @override
  String get backupWrongPassword => 'Sai mật khẩu sao lưu';

  @override
  String get backupInvalidFile => 'Đây không phải tệp sao lưu Muhur hợp lệ';

  @override
  String get backupReminderTitle => 'Nhắc sao lưu';

  @override
  String get backupReminderDesc =>
      'Nhắc bạn trên màn hình chính khi bản sao lưu gần nhất cũ hơn mức này. Đặt 0 để tắt.';

  @override
  String get backupReminderOff => 'Tắt';

  @override
  String get backupReminderNever =>
      'Bạn chưa sao lưu lần nào. Hãy sao lưu ngay để không mất mật khẩu.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Lần sao lưu gần nhất là $days ngày trước.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Sao lưu';

  @override
  String get backupReminderLater => 'Để sau';

  @override
  String get statusScreenOn =>
      'Bảo vệ màn hình đang bật: chặn chụp và quay màn hình';

  @override
  String get statusScreenOff =>
      'Bảo vệ màn hình tạm tắt: cho phép chụp màn hình';

  @override
  String get statusBackupNever =>
      'Chưa có bản sao lưu. Tạo trong Cài đặt > Sao lưu';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sao lưu gần nhất: $days ngày trước',
      one: 'Sao lưu gần nhất: hôm qua',
      zero: 'Đã sao lưu hôm nay',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Quá hạn sao lưu: lần cuối $days ngày trước',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục trong thùng rác',
      zero: 'Thùng rác trống',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Mở khóa sinh trắc học đang bật';

  @override
  String get statusBiometricOff =>
      'Mở khóa sinh trắc học đang tắt (chạm để thiết lập)';

  @override
  String get helpStatusScreen =>
      'Biểu tượng khiên: bảo vệ màn hình (xanh = bật, mờ = tắt)';

  @override
  String get helpStatusBackup =>
      'Biểu tượng sao lưu: trạng thái sao lưu (xanh = mới sao lưu, mờ = cần sao lưu)';

  @override
  String get helpStatusTrash =>
      'Biểu tượng thùng rác: mục đã xóa (số = mục đang chờ, chạm để mở)';

  @override
  String get helpStatusBiometric =>
      'Biểu tượng vân tay: mở khóa sinh trắc học (xanh = bật, chạm để đổi)';

  @override
  String get helpTitle => 'Trợ giúp';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Cách dùng?';

  @override
  String get helpAdd => 'Nút +: thêm mục mới';

  @override
  String get helpTap => 'Chạm vào thẻ: xem chi tiết';

  @override
  String get helpLongPress => 'Nhấn giữ: chọn và xóa';

  @override
  String get helpSearch => 'Tìm kiếm: tìm nhanh';

  @override
  String get helpCategories => 'Danh mục: lọc các mục';

  @override
  String get helpLock => 'Biểu tượng ổ khóa: khóa kho ngay';

  @override
  String get helpSettings => 'Cài đặt: sao lưu, tự động khóa và hơn thế';

  @override
  String get helpStats => 'Bảng dưới cùng: tóm tắt kho';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Chuyển $count mục đã chọn vào thùng rác?';
  }

  @override
  String get fcBankName => 'Tên ngân hàng';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Mật khẩu ngân hàng điện tử';

  @override
  String get fcCardPin => 'Mã PIN thẻ';

  @override
  String get fcCardNumber => 'Số thẻ';

  @override
  String get fcExpiryDate => 'Ngày hết hạn';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Số tổng đài';

  @override
  String get fcCustomerNoTc => 'Mã khách hàng / CCCD';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Loại tài khoản';

  @override
  String get fcPhoneBankingPassword => 'Mật khẩu qua điện thoại';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Sao kê / Hạn thanh toán';

  @override
  String get fcAccountTitle => 'Chủ tài khoản';

  @override
  String get fcEmailAddress => 'Địa chỉ email';

  @override
  String get fcRecoveryEmail => 'Email khôi phục';

  @override
  String get fcRecoveryPhone => 'SĐT khôi phục';

  @override
  String get fc2faBackupCodes => '2FA / Mã dự phòng';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Câu hỏi bảo mật';

  @override
  String get fcPasswordChangeDate => 'Ngày đổi mật khẩu';

  @override
  String get fcPlatformTitle => 'Nền tảng / Tên';

  @override
  String get fcUsernameProfileId => 'Tên người dùng / ID hồ sơ';

  @override
  String get fcRegisteredEmail => 'Email đăng ký';

  @override
  String get fcRegisteredPhone => 'SĐT đăng ký';

  @override
  String get fcProfileUrl => 'URL hồ sơ';

  @override
  String get fcAccountTypeStatus => 'Loại / Trạng thái tài khoản';

  @override
  String get fcLinkedMainAccount => 'Tài khoản liên kết';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => 'Khóa bí mật 2FA';

  @override
  String get fcServiceName => 'Tổ chức';

  @override
  String get fcCompanyName => 'Tên công ty';

  @override
  String get fcCorporateUserId => 'Tên người dùng / Mã nhân viên';

  @override
  String get fcPanelUrl => 'URL bảng quản trị';

  @override
  String get fcDepartmentPosition => 'Phòng ban / Chức vụ';

  @override
  String get fcLicenseCode => 'Khách hàng / Giấy phép';

  @override
  String get fcSupportContact => 'Liên hệ hỗ trợ';

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
  String get fcSiteName => 'Tên trang';

  @override
  String get fcWebAddress => 'URL trang';

  @override
  String get fcUsernameEmail => 'Tên người dùng / Email';

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
  String get pickFieldTitle => 'Chọn trường';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Cài đặt trình tạo';

  @override
  String get saveAndExit => 'Lưu và thoát';

  @override
  String get customField => 'Trường tùy chỉnh';

  @override
  String get customFieldName => 'Tên trường';

  @override
  String get customFieldType => 'Loại trường';

  @override
  String get customTypeText => 'Văn bản';

  @override
  String get customTypeNote => 'Ghi chú';

  @override
  String get customTypePassword => 'Mật khẩu';

  @override
  String get customTypeDate => 'Ngày';

  @override
  String get customTypePhone => 'Điện thoại';

  @override
  String get orphanVaultTitle => 'Đã tìm thấy kho cũ';

  @override
  String get orphanVaultBody =>
      'Trên thiết bị này có một tệp kho cũ, nhưng không đọc được khóa của nó nên không thể mở. Nếu tiếp tục, dữ liệu cũ đó sẽ bị xóa. Nếu có bản sao lưu, hãy tạo kho mới rồi khôi phục.';

  @override
  String get orphanVaultReplace => 'Xóa và tiếp tục';

  @override
  String get forgotOldPassword => 'Tôi không nhớ mật khẩu hiện tại';

  @override
  String get useCurrentPassword => 'Dùng mật khẩu hiện tại';

  @override
  String get forgotPasswordBioHint =>
      'Xác nhận bằng vân tay hoặc khuôn mặt để đặt mật khẩu chính mới. Các mục của bạn vẫn giữ nguyên.';

  @override
  String get bioConfirmFailed =>
      'Xác nhận sinh trắc học thất bại hoặc đã bị hủy.';

  @override
  String get biometricChangedBody =>
      'Cài đặt vân tay hoặc khuôn mặt đã thay đổi, nên đăng nhập sinh trắc học đã được tắt để bảo vệ bạn.';

  @override
  String get limitReachedTitle => 'Đã đạt giới hạn miễn phí';

  @override
  String limitReachedBody(int count) {
    return 'Bản miễn phí chứa tối đa $count mục mỗi danh mục. Hãy xóa một mục hoặc nâng cấp lên Pro để không giới hạn.';
  }

  @override
  String get scanLimitTitle => 'Đã hết lượt quét miễn phí';

  @override
  String scanLimitBody(int count) {
    return 'Bạn đã dùng hết $count lượt quét miễn phí. Nâng cấp lên Pro để quét không giới hạn.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return 'Đã thêm $added, $limited không được khôi phục (đạt giới hạn miễn phí). Tệp sao lưu của bạn không thay đổi.';
  }

  @override
  String get aboutSection => 'GIỚI THIỆU';

  @override
  String get aboutVersion => 'Phiên bản';

  @override
  String get aboutProtectionTitle => 'Cách dữ liệu của bạn được bảo vệ';

  @override
  String get aboutProtectionBody =>
      'Mọi mục đều được mã hóa AES-256 trên thiết bị này. Khóa mở kho được tạo từ mật khẩu chính bằng Argon2id; bản thân mật khẩu không bao giờ được lưu.';

  @override
  String get aboutOfflineTitle => 'Hoạt động ngoại tuyến';

  @override
  String get aboutOfflineBody =>
      'Muhur không có quyền truy cập Internet, không có tài khoản và không có máy chủ. Dữ liệu không rời khỏi thiết bị này trừ khi bạn tự xuất bản sao lưu đã mã hóa.';

  @override
  String get aboutLicenses => 'Giấy phép nguồn mở';

  @override
  String get aboutLicensesDesc =>
      'Giấy phép của các thành phần nguồn mở dùng trong Muhur';

  @override
  String get aboutRights => 'Bảo lưu mọi quyền.';
}
