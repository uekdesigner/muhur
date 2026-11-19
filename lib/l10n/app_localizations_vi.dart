// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => 'Mở';

  @override
  String get wrongPassword => 'Sai mật khẩu chính.';

  @override
  String lockedOut(int seconds) {
    return 'Thử quá nhiều lần. Hãy thử lại sau $seconds giây.';
  }

  @override
  String get enableBiometricsQ => 'Bật mở khóa sinh trắc học?';

  @override
  String get enable => 'Bật';

  @override
  String get notNow => 'Để sau';

  @override
  String get biometricReason => 'Mở khóa MÜHÜR';

  @override
  String get lockNow => 'Khóa';

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
  String get typeText => 'Văn bản';

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
  String get scanning => 'Đang quét...';

  @override
  String get ibanCorrected =>
      'Có thể đã được sửa sau lỗi OCR. Hãy kiểm tra kỹ.';

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
  String get infoTitle => 'Về MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR lưu mật khẩu của bạn ở dạng mã hóa, chỉ trên thiết bị này. Không có tài khoản, không có máy chủ.\n\nMật khẩu chính không thể khôi phục. Nếu quên, dữ liệu sẽ không mở được, vì vậy hãy giữ một bản sao lưu đã mã hóa.';

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
  String get screenshotAllow => 'Cho phép chụp màn hình';

  @override
  String get screenshotAllowHint =>
      'Chế độ bảo vệ màn hình tắt trong khoảng thời gian đặt bên dưới, rồi tự bật lại.';

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
  String get backupInvalidFile => 'Đây không phải tệp sao lưu MÜHÜR hợp lệ';

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
  String get fcSiteName => 'Tên trang';

  @override
  String get fcWebAddress => 'URL trang';

  @override
  String get fcUsernameEmail => 'Tên người dùng / Email';

  @override
  String get pickFieldTitle => 'Chọn trường';

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
      'Xác nhận bằng vân tay để đặt mật khẩu chính mới. Các mục của bạn vẫn giữ nguyên.';

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
  String get aboutProtectionTitle => 'Cách dữ liệu của bạn được bảo vệ';

  @override
  String get aboutProtectionBody =>
      'Mọi thứ bạn lưu đều được khóa bằng mã hóa mạnh trên điện thoại này. Chỉ mật khẩu chính của bạn mới mở được; mật khẩu không được lưu ở bất kỳ đâu, kể cả trong MÜHÜR. Không có nó, dữ liệu không thể đọc được.';

  @override
  String get aboutOfflineTitle => 'Hoạt động ngoại tuyến';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR không bao giờ kết nối Internet. Không có tài khoản, máy chủ hay đám mây. Mật khẩu của bạn ở lại trên điện thoại này trừ khi bạn tự xuất ra, dưới dạng bản sao lưu đã mã hóa hoặc tệp Excel.';

  @override
  String get aboutRights => 'Bảo lưu mọi quyền.';

  @override
  String statusClipboard(int seconds) {
    return 'Bộ nhớ tạm sẽ được xóa sau $seconds giây. Chạm để xóa ngay.';
  }

  @override
  String get helpStatusClipboard =>
      'Biểu tượng bộ nhớ tạm: giá trị đã sao chép (số = số giây còn lại trước khi xóa, chạm để xóa ngay)';

  @override
  String aboutVersionLine(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get aboutReleaseNotes => 'Ghi chú phát hành';

  @override
  String get aboutHowTitle => 'Cách hoạt động';

  @override
  String get aboutStoryTitle => 'Câu chuyện về MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Về nhà phát triển';

  @override
  String get aboutPrivacySection => 'CHÍNH SÁCH QUYỀN RIÊNG TƯ';

  @override
  String get aboutPermissionsTitle => 'Quyền và dữ liệu';

  @override
  String get aboutSupportSection => 'HỖ TRỢ';

  @override
  String get aboutRate => 'Đánh giá trên Google Play';

  @override
  String get aboutRateDesc =>
      'Để lại xếp hạng hoặc nhận xét trên trang cửa hàng';

  @override
  String get aboutInBrief => 'Tóm tắt';

  @override
  String get aboutTechnical => 'Chi tiết kỹ thuật';

  @override
  String get aboutProtectionTech =>
      '• Kho được mã hóa bằng một khóa ngẫu nhiên 256 bit. Khóa này được niêm phong bằng AES-256-GCM với một khóa tạo từ mật khẩu chính qua Argon2id (bộ nhớ 32 MiB, 3 vòng). Thiết lập tạo khóa được gắn với niêm phong, nên mọi can thiệp đều bị phát hiện.\n• Cơ sở dữ liệu được mã hóa bằng SQLCipher; khóa của nó được tạo từ khóa kho qua HKDF-SHA256.\n• Các trường nhạy cảm được mã hóa thêm bằng AES-256-GCM và gắn với mục và trường của chúng.\n• Sau 5 lần nhập sai mật khẩu, ứng dụng chờ 30 giây, mỗi lần tăng gấp đôi, tối đa 1 giờ. Đổi giờ trên điện thoại không rút ngắn thời gian chờ.\n• Mở khóa sinh trắc học chỉ chấp nhận sinh trắc học mạnh (Loại 3) và sẽ tự tắt khi thêm vân tay hoặc khuôn mặt mới. Trên hầu hết điện thoại, nhận diện khuôn mặt chưa đạt mức này nên thường chỉ dùng được vân tay.\n• Chụp và quay màn hình bị chặn, kho tự khóa khi bạn rời ứng dụng, và giá trị đã sao chép được đánh dấu nhạy cảm rồi tự động xóa.';

  @override
  String get aboutOfflineTech =>
      '• Phiên bản phát hành của ứng dụng không có quyền Internet hay mạng; các quyền này bị gỡ bỏ kể cả khi một thư viện yêu cầu.\n• Sao lưu đám mây và chuyển sang thiết bị khác đều bị tắt, nên dữ liệu của ứng dụng không bị sao chép ra khỏi điện thoại.\n• Nhận dạng chữ dùng mô hình có sẵn trong ứng dụng và chạy trên điện thoại; hình ảnh từ máy ảnh được xử lý trong bộ nhớ và không bao giờ được lưu.\n• Dữ liệu chỉ rời điện thoại khi chính bạn xuất ra: dưới dạng tệp sao lưu đã mã hóa, hoặc tệp Excel không mã hóa mà sự an toàn là trách nhiệm của bạn.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR không thu thập dữ liệu cá nhân, không hiển thị quảng cáo, không dùng công cụ phân tích và không chia sẻ gì với ai. Ứng dụng chỉ xin quyền máy ảnh (để quét chữ) và sinh trắc học (để mở khóa). Gói đăng ký do Google Play quản lý; ứng dụng không bao giờ thấy thông tin thanh toán của bạn. Xóa ứng dụng sẽ xóa toàn bộ dữ liệu của nó. Trước khi xóa, bạn có thể xuất các mục ra Excel; sự an toàn của tệp đó là trách nhiệm của bạn.';

  @override
  String get aboutPermissionsTech =>
      '• Máy ảnh: chỉ dùng khi trình quét đang mở; không lưu ảnh và không ghi âm.\n• Sinh trắc học: vân tay hoặc khuôn mặt do cửa sổ hệ thống của điện thoại kiểm tra; MÜHÜR không bao giờ nhận dữ liệu đó.\n• Tệp: chỉ truy cập khi bạn tự chọn nơi lưu hoặc mở bản sao lưu hay tệp Excel.\n• Không tài khoản, không máy chủ, không mã định danh theo dõi hay quảng cáo.\n• Việc tải ứng dụng và mua gói đăng ký do Google Play xử lý theo chính sách quyền riêng tư của Google.';

  @override
  String get how1T => 'Kho và mật khẩu chính';

  @override
  String get how1B =>
      'Mọi thứ được giữ trong một kho mã hóa trên điện thoại này. Chỉ mật khẩu chính mới mở được kho. Mật khẩu không thể khôi phục, hãy chọn mật khẩu bạn nhớ được và tạo bản sao lưu.';

  @override
  String get how2T => 'Mục và danh mục';

  @override
  String get how2B =>
      'Các danh mục là cố định: Ngân hàng, Trang web, Email, Mạng xã hội, Công việc và Khác. Khi thêm mục bằng nút +, bạn chọn danh mục cho mục đó và danh mục sẽ mang theo các trường phù hợp. Không thể tạo danh mục mới, nhưng với \"Thêm trường\" bạn có thể thêm trường vào mục: chọn từ danh sách hoặc tạo \"Trường tùy chỉnh\" với tên bạn muốn.';

  @override
  String get how3T => 'Sao chép an toàn';

  @override
  String get how3B =>
      'Chạm vào một trường để sao chép. Bộ nhớ tạm tự xóa sau khoảng thời gian bạn đặt. Biểu tượng trên màn hình chính đếm ngược; chạm vào để xóa ngay.';

  @override
  String get how4T => 'Quét bằng máy ảnh';

  @override
  String get how4B =>
      'Hướng máy ảnh vào thẻ hoặc tài liệu để đọc IBAN hoặc chữ thay vì gõ. Kiểm tra kết quả trước khi lưu.';

  @override
  String get how5T => 'Thùng rác';

  @override
  String get how5B =>
      'Các mục đã xóa vẫn được mã hóa trong thùng rác và có thể khôi phục cho đến khi hết thời hạn bạn đặt.';

  @override
  String get how6T => 'Sao lưu và khôi phục';

  @override
  String get how6B =>
      'Tạo tệp sao lưu mã hóa với mật khẩu riêng và cất ở nơi an toàn. Khôi phục chỉ thêm mục; các mục hiện có không bao giờ bị ghi đè.';

  @override
  String get how7T => 'Khóa và sinh trắc học';

  @override
  String get how7B =>
      'Kho tự khóa khi bạn rời ứng dụng. Bật sinh trắc học để mở bằng vân tay (hoặc khuôn mặt trên điện thoại hỗ trợ).';

  @override
  String get storyBody =>
      'Mọi phát minh lớn đều bắt đầu từ nỗ lực giải quyết một bế tắc nhỏ trong chính cuộc sống của ai đó. Câu chuyện của MÜHÜR cũng vậy: một hành trình chân thành nhưng mạnh mẽ, sinh ra từ ký ức thất lạc giữa sự hỗn loạn của thế giới số và từ bản năng muốn bảo vệ những gì thuộc về mình.\n\nMọi thứ bắt đầu từ khoảnh khắc khó chịu khi quên đúng một mật khẩu. Tôi thiết kế MÜHÜR như một nơi trú ẩn riêng chỉ chạy trên thiết bị của mình, không phụ thuộc vào máy chủ đám mây của người khác. Dần dần tôi nhận ra mình không phải người duy nhất muốn lấy lại quyền riêng tư số.\n\nNgày nay MÜHÜR dành cho tất cả những ai muốn giữ dữ liệu hoàn toàn trong tầm kiểm soát của mình mà không phải gửi gắm cho bất kỳ máy chủ nào.\n\nHãy niêm phong ký ức số của bạn bằng ổ khóa an toàn nhất.';

  @override
  String get devBody =>
      'MÜHÜR là dự án độc lập của UEK DESIGNER, được thiết kế và phát triển tại Thổ Nhĩ Kỳ. Cảm ơn bạn đã dùng MÜHÜR.';

  @override
  String get rn100 =>
      '• Phiên bản đầu tiên.\n• Kho mã hóa trên điện thoại, mở bằng mật khẩu chính (Argon2id + AES-256).\n• Trường có sẵn cho ngân hàng, trang web, email, mạng xã hội và tài khoản công việc.\n• Trình tạo mật khẩu có chỉ báo độ mạnh.\n• Quét IBAN và chữ bằng máy ảnh.\n• Mở khóa bằng vân tay (và khuôn mặt trên điện thoại hỗ trợ).\n• Sao lưu và khôi phục có mã hóa.\n• Xuất ra Excel (không mã hóa, bạn tự chịu trách nhiệm).\n• Thùng rác tự dọn dẹp.\n• Tóm tắt kho cho biết mật khẩu bị dùng lại.\n• Mã xác minh hai bước, thêm bằng mã QR.\n• Lịch sử mật khẩu và sức khỏe kho.\n• Dùng thử Pro miễn phí 14 ngày, không cần thẻ.\n• Tự động khóa, bảo vệ màn hình và đếm ngược bộ nhớ tạm.\n• Hoạt động hoàn toàn ngoại tuyến.\n• 18 ngôn ngữ.';

  @override
  String get excelExport => 'Xuất ra Excel';

  @override
  String get excelExportDesc =>
      'Tệp .xlsx không mã hóa chứa các mục của bạn, ví dụ trước khi xóa ứng dụng';

  @override
  String get excelExportWarnTitle => 'Xuất không mã hóa';

  @override
  String get excelExportWarn =>
      'Tệp Excel KHÔNG được mã hóa. Bất kỳ ai có được tệp này đều đọc được toàn bộ mật khẩu của bạn. Việc cất giữ ở đâu, chia sẻ với ai và xóa tệp sau đó hoàn toàn là trách nhiệm của bạn. Các mục trong thùng rác không được đưa vào.';

  @override
  String get excelExportAgree =>
      'Tôi hiểu, sự an toàn của tệp là trách nhiệm của tôi.';

  @override
  String get excelExportSaved =>
      'Đã lưu tệp Excel. Hãy xóa tệp khi không cần nữa.';

  @override
  String get excelExportFailed => 'Không thể tạo tệp Excel.';

  @override
  String get excelColDomain => 'Tên miền';

  @override
  String get excelColUpdated => 'Cập nhật lần cuối';

  @override
  String get how8T => 'Xuất ra Excel';

  @override
  String get how8B =>
      '\"Xuất ra Excel\" trong phần cài đặt sao lưu ghi toàn bộ mục của bạn (trừ thùng rác) vào một tệp .xlsx, mỗi danh mục một trang tính. Tệp không được mã hóa: bạn xác nhận bằng mật khẩu chính và đồng ý rằng sự an toàn của tệp là trách nhiệm của bạn. Hãy xóa tệp khi không cần nữa.';

  @override
  String get proFeatureTitle => 'Tính năng Pro';

  @override
  String get proFieldsBody =>
      'Thêm trường bổ sung vào mục là tính năng Pro. Các trường đã thêm vẫn được giữ và vẫn chỉnh sửa được.';

  @override
  String get proBiometricBody =>
      'Mở khóa bằng vân tay là tính năng Pro. Bạn luôn có thể mở khóa bằng mật khẩu chính.';

  @override
  String get proBackgroundsBody =>
      'Hình nền bổ sung là tính năng Pro. Hình nền mặc định luôn dùng được.';

  @override
  String bioGraceWarn(String days) {
    return 'Mở khóa bằng vân tay sẽ còn bật thêm $days rồi tắt. Hãy chắc chắn bạn nhớ mật khẩu chính. Nếu đã quên, hãy đặt mật khẩu mới bằng vân tay trong Cài đặt, mục \"Đổi mật khẩu chính\".';
  }

  @override
  String get genNewPassword => 'Tạo mật khẩu mới';

  @override
  String fieldRemoved(String label) {
    return 'Đã xóa trường \"$label\"';
  }

  @override
  String get undo => 'Hoàn tác';

  @override
  String get proStatusActive => 'Gói Pro của bạn đang hoạt động';

  @override
  String proStatusTrial(String days) {
    return 'Dùng thử miễn phí: còn $days';
  }

  @override
  String get proStatusFree => 'Gói miễn phí';

  @override
  String get proTrialInfo =>
      'Khi hết thời gian dùng thử, bạn tự động chuyển sang gói miễn phí. Không cần thẻ và không có gì bị xóa.';

  @override
  String get proFeatEntries => 'Không giới hạn mục';

  @override
  String get proFeatEntriesDesc => 'Miễn phí: 3 mục mỗi danh mục';

  @override
  String get proFeatScan => 'Quét bằng máy ảnh không giới hạn';

  @override
  String get proFeatScanDesc => 'Miễn phí: 3 lần quét';

  @override
  String get proFeatFields => 'Trường bổ sung và tùy chỉnh';

  @override
  String get proFeatFieldsDesc => 'Thêm bất kỳ trường nào bạn cần vào mục';

  @override
  String get proFeatBio => 'Mở khóa bằng vân tay';

  @override
  String get proFeatBioDesc => 'Mở kho chỉ với một chạm';

  @override
  String get proFeatBg => 'Tất cả hình nền';

  @override
  String get proFeatBgDesc => 'Cả 5 hình nền';

  @override
  String get proFeatHealth => 'Sức khỏe kho';

  @override
  String get proFeatHealthDesc =>
      'Xem mật khẩu nào yếu hoặc bị dùng lại và đi thẳng tới mục đó';

  @override
  String get proFeatTotp => 'Mã xác minh hai bước';

  @override
  String get proFeatTotpDesc => 'Mã được tạo ngoại tuyến ngay trong kho';

  @override
  String get proFeatHistory => 'Lịch sử mật khẩu';

  @override
  String get proFeatHistoryDesc => 'Mật khẩu cũ được lưu lại để xem khi cần';

  @override
  String get proYearly => 'Hằng năm';

  @override
  String get proMonthly => 'Hằng tháng';

  @override
  String get proPerYear => '/ năm';

  @override
  String get proPerMonth => '/ tháng';

  @override
  String get proBestValue => 'Tiết kiệm nhất';

  @override
  String get proSubscribe => 'Đăng ký';

  @override
  String get proRestore => 'Khôi phục giao dịch mua';

  @override
  String get proManage => 'Quản lý gói đăng ký';

  @override
  String get proFinePrint =>
      'Thanh toán qua Google Play. Gói đăng ký tự động gia hạn cho đến khi bạn hủy, bạn có thể hủy bất cứ lúc nào trong Google Play. Khi gói đăng ký kết thúc, các mục của bạn không bị xóa.';

  @override
  String get proComingSoon =>
      'Tính năng mua sẽ mở khi MÜHÜR được phát hành trên Google Play.';

  @override
  String get proSeePlans => 'Xem Pro';

  @override
  String get proHealthBody =>
      'Xem mục nào có mật khẩu yếu hoặc bị dùng lại là tính năng Pro. Số lượng luôn hiển thị.';

  @override
  String get healthWeakHint =>
      'Ngắn hoặc dễ đoán. Hãy thay bằng trình tạo mật khẩu.';

  @override
  String get healthReusedHint =>
      'Cùng một mật khẩu được dùng ở nhiều mục. Nếu một mục bị lộ, các mục khác cũng gặp nguy hiểm.';

  @override
  String get healthFairHint =>
      'Chấp nhận được, nhưng có thể dài và đa dạng hơn.';

  @override
  String get healthAllGood =>
      'Không có mật khẩu yếu hoặc bị dùng lại. Kho của bạn đang ổn.';

  @override
  String get proHistoryBody =>
      'Xem các giá trị cũ của mật khẩu là tính năng Pro. Mật khẩu bạn đổi khi dùng Pro sẽ được lưu ở đây.';

  @override
  String get historyEmpty =>
      'Mật khẩu này chưa được đổi. Khi bạn đổi, giá trị cũ sẽ hiện ở đây.';

  @override
  String get historyNote =>
      'Mỗi trường mật khẩu lưu 10 giá trị gần nhất, được mã hóa như phần còn lại của kho. Lịch sử không có trong bản sao lưu.';

  @override
  String get historyClearQ =>
      'Chạm Xóa thêm một lần để xóa lịch sử của trường này.';

  @override
  String get totpHint => 'Khóa thiết lập hoặc liên kết otpauth://';

  @override
  String get totpInvalid =>
      'Khóa này không hợp lệ. Hãy dán khóa thiết lập mà trang web cung cấp.';

  @override
  String get qrScan => 'Quét mã QR';

  @override
  String get qrScanHint =>
      'Hướng camera vào mã QR mà trang web hiển thị khi bạn thiết lập xác minh hai bước.';

  @override
  String get qrNot2fa => 'Mã QR này không phải mã thiết lập 2FA.';

  @override
  String get qrMigration =>
      'Đây là mã chuyển dữ liệu của Google Authenticator. Hãy quét mã QR thiết lập riêng của từng trang web.';

  @override
  String get totpEmpty => 'Chưa có khóa. Quét mã QR để thêm.';

  @override
  String get how9T => 'Xác minh hai bước (2FA)';

  @override
  String get how9B =>
      'Trong một mục, chạm \"Thêm trường\" rồi chọn \"Khóa bí mật 2FA\". Quét mã QR mà trang web hiển thị khi thiết lập 2FA bằng biểu tượng cạnh trường, hoặc dán khóa thiết lập. Nếu lưu trường để trống, trường vẫn nằm trong chi tiết mục và bạn có thể quét mã QR từ đó. Chi tiết hiển thị mã 6 chữ số và thời gian còn lại; sao chép rồi nhập vào trang web. Mã được tạo không cần internet theo đồng hồ điện thoại, nên nếu giờ sai thì mã sẽ không khớp. Các mã hiện có vẫn hoạt động ngay cả khi Pro kết thúc.';

  @override
  String get how10T => 'Lịch sử mật khẩu và sức khỏe kho';

  @override
  String get how10B =>
      'Với Pro, khi bạn đổi mật khẩu, mật khẩu cũ được lưu ở dạng mã hóa; biểu tượng lịch sử trong chi tiết mục hiển thị 10 mật khẩu gần nhất. Biểu tượng khiên trên bảng tóm tắt ở màn hình chính mở sức khỏe kho: mật khẩu yếu và dùng lại được liệt kê, chạm vào một mục để mở mục đó.';

  @override
  String get how11T => 'Pro và thời gian dùng thử';

  @override
  String get how11B =>
      'Sau lần thiết lập đầu tiên, mọi tính năng Pro đều miễn phí trong 14 ngày, không cần thẻ. Khi hết thời gian dùng thử, bạn chuyển sang gói miễn phí: tối đa 3 mục mỗi danh mục và 3 lần quét bằng camera. Không có gì bị xóa, các mã 2FA hiện có vẫn hoạt động và mở khóa bằng vân tay vẫn bật thêm 7 ngày. Bạn có thể nhận ra tính năng Pro nhờ nhãn PRO nhỏ ở góc.';

  @override
  String get showValue => 'Hiện';

  @override
  String get hideValue => 'Ẩn';

  @override
  String get favoriteAdd => 'Thêm vào yêu thích';

  @override
  String get favoriteRemove => 'Xóa khỏi yêu thích';

  @override
  String get proRedeem => 'Đổi mã quà tặng';

  @override
  String get proThanks => 'Cảm ơn bạn! MÜHÜR Pro đã được kích hoạt.';

  @override
  String get proPending =>
      'Thanh toán đang chờ xử lý. Pro sẽ tự bật khi hoàn tất.';

  @override
  String get proBuyError =>
      'Không thể hoàn tất giao dịch mua. Vui lòng thử lại sau.';

  @override
  String get proRestoreDone => 'MÜHÜR Pro đang hoạt động.';

  @override
  String get proRestoreNone =>
      'Không tìm thấy Pro đang hoạt động trên tài khoản Google này.';

  @override
  String get proStoreUnavailable =>
      'Không thể kết nối Google Play. Hãy đảm bảo đã cài Cửa hàng Play và đã đăng nhập.';

  @override
  String proStatusGift(String days) {
    return 'Pro quà tặng: còn $days';
  }

  @override
  String get proStatusGiftLife => 'Pro quà tặng: không giới hạn thời gian';

  @override
  String get scanCodesTitle => 'Quét mã dự phòng';

  @override
  String get scanCodesHint =>
      'Hướng camera vào danh sách mã dự phòng mà trang web cung cấp. Các mã đọc được sẽ dồn vào đây; xác nhận khi đã đủ.';

  @override
  String scanCodesCount(int count) {
    return 'Mã đã đọc: $count';
  }

  @override
  String get scanCodesClear => 'Xóa danh sách';

  @override
  String get totpRemoveTitle => 'Xóa khóa 2FA?';

  @override
  String get totpRemoveBody =>
      'Nếu xác minh hai bước vẫn đang bật trên trang web, bạn có thể không đăng nhập được vào tài khoản đó khi thiếu khóa này. Hãy tắt nó trên trang web trước, hoặc chắc chắn rằng mã dự phòng của bạn đã được lưu.';
}
