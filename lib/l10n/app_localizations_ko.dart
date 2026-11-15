// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => '은행';

  @override
  String get catWebsites => '웹사이트';

  @override
  String get catEmails => '이메일';

  @override
  String get catSocial => 'SNS';

  @override
  String get catBusiness => '업무';

  @override
  String get catOther => '기타';

  @override
  String get setupTitle => '마스터 비밀번호 만들기';

  @override
  String get setupInfo => '이 비밀번호는 복구할 수 없습니다. 잊어버리면 데이터를 영영 열 수 없습니다.';

  @override
  String get masterPassword => '마스터 비밀번호';

  @override
  String get confirmPassword => '비밀번호 확인';

  @override
  String get changeMasterPassword => '마스터 비밀번호 변경';

  @override
  String get currentPassword => '현재 비밀번호';

  @override
  String get newPassword => '새 비밀번호';

  @override
  String get newPasswordSame => '새 비밀번호는 현재 비밀번호와 달라야 합니다.';

  @override
  String get change => '변경';

  @override
  String get masterPasswordChanged => '마스터 비밀번호가 변경되었습니다.';

  @override
  String get changePasswordFailed => '비밀번호를 변경하지 못했습니다. 다시 시도하세요.';

  @override
  String get passwordTooShort => '8자 이상 사용하세요.';

  @override
  String get passwordNeedsMix => '소문자, 대문자, 숫자를 포함하세요.';

  @override
  String get reqLength => '8자 이상';

  @override
  String get reqLower => '소문자';

  @override
  String get reqUpper => '대문자';

  @override
  String get reqDigit => '숫자';

  @override
  String get reqSpecial => '특수문자 (!@#...) – 선택';

  @override
  String get reqOptional => '선택';

  @override
  String get passwordsDontMatch => '비밀번호가 일치하지 않습니다.';

  @override
  String get createVault => '만들기';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => '열기';

  @override
  String get wrongPassword => '마스터 비밀번호가 틀렸습니다.';

  @override
  String lockedOut(int seconds) {
    return '시도 횟수가 너무 많습니다. $seconds초 후에 다시 시도하세요.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => '생체 인식 잠금 해제를 사용할까요?';

  @override
  String get enable => '사용';

  @override
  String get notNow => '나중에';

  @override
  String get biometricReason => 'Muhur 잠금 해제';

  @override
  String get lockNow => '잠금';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => '전체';

  @override
  String get noEntries => '아직 항목이 없습니다';

  @override
  String get searchHint => '제목, 도메인, 태그 검색';

  @override
  String get addEntry => '항목 추가';

  @override
  String get editEntry => '항목 편집';

  @override
  String get title => '제목';

  @override
  String get category => '카테고리';

  @override
  String get domain => '도메인 (예: example.com)';

  @override
  String get tags => '태그';

  @override
  String get fields => '필드';

  @override
  String get addField => '필드 추가';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => '텍스트';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => '값 숨기기';

  @override
  String get save => '저장';

  @override
  String get delete => '삭제';

  @override
  String get moveToTrash => '휴지통으로';

  @override
  String get trash => '휴지통';

  @override
  String get trashKeepFor => '휴지통 보관 기간';

  @override
  String get trashHint =>
      '삭제한 항목은 암호화된 채로 휴지통에 남아 있으며 복원할 수 있습니다. 이 기간이 지나면 다음에 보관함을 열 때 영구 삭제됩니다. 기간을 줄이면 오래된 항목도 휴지통에서 삭제됩니다. 휴지통 비우기는 되돌릴 수 없습니다.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => '휴지통';

  @override
  String get trashEmpty => '휴지통이 비어 있습니다.';

  @override
  String get restore => '복원';

  @override
  String get deleteForever => '영구 삭제';

  @override
  String get deleteForeverConfirm => '이 항목을 영구 삭제할까요? 되돌릴 수 없습니다.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count일 남음',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => '비우기';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목 $count개',
    );
    return '휴지통의 $_temp0를 영구 삭제할까요? 되돌릴 수 없습니다.';
  }

  @override
  String get cancel => '취소';

  @override
  String get deleteConfirm => '이 항목을 휴지통으로 옮길까요? 휴지통을 비우기 전까지 복원할 수 있습니다.';

  @override
  String get titleRequired => '제목을 입력하세요.';

  @override
  String get fieldUsername => '사용자 이름';

  @override
  String get fieldPassword => '비밀번호';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => '메모';

  @override
  String get copy => '복사';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => '설정';

  @override
  String get settingsSecurity => '보안';

  @override
  String get settingsBackup => '백업';

  @override
  String get settingsGeneral => '일반';

  @override
  String get settingsAbout => '정보';

  @override
  String get autoLock => '자동 잠금';

  @override
  String get immediately => '즉시';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => '복사 유지 시간';

  @override
  String get copyTimerHint =>
      '복사한 데이터는 이 시간이 지나면 클립보드에서 지워지며, 그때까지 보관함이 열린 상태로 유지됩니다.';

  @override
  String secondsShort(int seconds) {
    return '$seconds초';
  }

  @override
  String get biometricUnlock => '생체 인식';

  @override
  String get generator => '생성기';

  @override
  String get generate => '생성';

  @override
  String get length => '길이';

  @override
  String get lowercase => '소문자 (a-z)';

  @override
  String get uppercase => '대문자 (A-Z)';

  @override
  String get digits => '숫자 (0-9)';

  @override
  String get symbols => '기호 (!@#...)';

  @override
  String get avoidAmbiguous => '비슷한 문자 제외 (O/0, l/1)';

  @override
  String get regenerate => '다시 생성';

  @override
  String get usePassword => '사용';

  @override
  String get strengthWeak => '약함';

  @override
  String get strengthFair => '보통';

  @override
  String get strengthGood => '좋음';

  @override
  String get strengthStrong => '강함';

  @override
  String get scan => '스캔';

  @override
  String get scanHint => '카메라를 글자 위에서 흔들리지 않게 유지하세요. IBAN 모드에서는 자동으로 인식됩니다.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => '스캔 중...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected => 'OCR 오류를 보정했을 수 있습니다. 꼼꼼히 확인하세요.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError => '카메라를 사용할 수 없습니다. 카메라 권한을 확인하세요.';

  @override
  String get editBeforeUse => '확인 후 편집';

  @override
  String get useValue => '사용';

  @override
  String get scanIsThis => '이것이 맞나요?';

  @override
  String get scanNo => '아니요';

  @override
  String get scanYes => '예';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => '비밀번호 관리자';

  @override
  String get tagline =>
      '디지털 데이터를 봉인하세요.\n서버 없음. 오직 당신과 당신의 데이터.\nMÜHÜR: 디지털 기억을 지키는 가장 안전한 자물쇠.';

  @override
  String get login => '열기';

  @override
  String get infoTitle => 'Muhur 정보';

  @override
  String get infoBody =>
      'Muhur는 비밀번호를 암호화하여 이 기기에만 저장합니다. 계정도 서버도 없습니다.\n\n마스터 비밀번호는 복구할 수 없습니다. 잊어버리면 데이터를 열 수 없으니 암호화된 백업을 보관하세요.';

  @override
  String get understandNoRecovery => '잊어버린 마스터 비밀번호는 복구할 수 없다는 것을 이해합니다.';

  @override
  String get close => '닫기';

  @override
  String get language => '언어';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get sectionLanguage => '언어';

  @override
  String get sectionExperience => '사용 환경';

  @override
  String get sectionAppearance => '화면';

  @override
  String get panelDarkness => '패널 농도';

  @override
  String get panelDarknessDesc => '패널과 카드의 투명도를 조절합니다';

  @override
  String get backgroundTitle => '배경';

  @override
  String get backgroundDim => '어둡게';

  @override
  String get backgroundDimDesc => '배경 이미지를 더 어둡거나 밝게 합니다';

  @override
  String get bgBronze => '브론즈';

  @override
  String get bgEmber => '불씨';

  @override
  String get bgSapphire => '사파이어';

  @override
  String get bgObsidian => '흑요석';

  @override
  String get bgLumen => '루멘';

  @override
  String get smartGuide => '스마트 팁';

  @override
  String get smartGuideDesc => '기능을 처음 사용할 때 짧은 팁을 보여줍니다';

  @override
  String get haptics => '진동';

  @override
  String get hapticsDesc => '지문 잠금 해제와 복사 시 짧게 진동합니다';

  @override
  String get reduceAnimations => '애니메이션 끄기';

  @override
  String get reduceAnimationsDesc =>
      '앱의 모든 애니메이션을 끕니다: 도움말 아이콘의 흔들림과 빛, 도움말 메뉴, 화면 전환, 대화상자, 스캐너 선. 느린 기기나 움직임에 민감한 분께 유용합니다.';

  @override
  String get resetTips => '팁 초기화';

  @override
  String get resetTipsDesc => '도움말 애니메이션과 모든 팁을 다시 표시합니다';

  @override
  String get tipsResetDone => '팁이 다시 표시됩니다';

  @override
  String get tipLongPress => '팁: 항목을 길게 눌러 선택한 뒤 여러 개를 한 번에 삭제하세요.';

  @override
  String get statTotal => '전체';

  @override
  String get statReused => '재사용';

  @override
  String get planFree => '무료';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => '스크린샷 허용';

  @override
  String get screenshotAllowHint => '아래에 설정한 시간 동안 화면 보호가 꺼진 뒤 자동으로 다시 켜집니다.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => '암호화 백업';

  @override
  String get backupExport => '백업 만들기';

  @override
  String get backupExportDesc =>
      '휴지통을 포함한 모든 항목을 백업 비밀번호로 보호된 파일에 저장합니다. 파일을 안전한 곳에 보관하세요.';

  @override
  String get backupImport => '복원';

  @override
  String get backupImportDesc => '백업 파일의 항목을 추가합니다. 기존 항목은 절대 덮어쓰거나 삭제되지 않습니다.';

  @override
  String get backupPasswordTitle => '백업 비밀번호';

  @override
  String get backupPasswordInfo =>
      '이 비밀번호는 백업 파일을 보호합니다. 마스터 비밀번호와 달라도 됩니다. 잊어버리면 백업을 열 수 없습니다.';

  @override
  String get backupEnterPassword => '백업 비밀번호 입력';

  @override
  String get backupContinue => '다음';

  @override
  String get backupSaved => '백업을 저장했습니다';

  @override
  String get backupFailed => '백업을 만들지 못했습니다';

  @override
  String backupRestored(int added, int skipped) {
    return '$added개 추가, $skipped개는 이미 있음';
  }

  @override
  String get backupWrongPassword => '백업 비밀번호가 틀렸습니다';

  @override
  String get backupInvalidFile => '올바른 Muhur 백업 파일이 아닙니다';

  @override
  String get backupReminderTitle => '백업 알림';

  @override
  String get backupReminderDesc =>
      '마지막 백업이 이 기간보다 오래되면 홈 화면에서 알려줍니다. 0으로 설정하면 꺼집니다.';

  @override
  String get backupReminderOff => '끔';

  @override
  String get backupReminderNever => '아직 백업하지 않았습니다. 비밀번호를 잃지 않도록 지금 백업하세요.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '마지막 백업은 $days일 전입니다.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => '백업';

  @override
  String get backupReminderLater => '나중에';

  @override
  String get statusScreenOn => '화면 보호 켜짐: 스크린샷과 화면 녹화가 차단됩니다';

  @override
  String get statusScreenOff => '화면 보호 일시 꺼짐: 스크린샷이 허용됩니다';

  @override
  String get statusBackupNever => '아직 백업이 없습니다. 설정 > 백업에서 만드세요';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '마지막 백업: $days일 전',
      one: '마지막 백업: 어제',
      zero: '오늘 백업함',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '백업 기한 지남: 마지막 백업 $days일 전',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '휴지통에 $count개',
      zero: '휴지통이 비어 있음',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => '생체 인식 잠금 해제 켜짐';

  @override
  String get statusBiometricOff => '생체 인식 잠금 해제 꺼짐 (탭하여 설정)';

  @override
  String get helpStatusScreen => '방패 아이콘: 화면 보호 (초록 = 켜짐, 흐림 = 꺼짐)';

  @override
  String get helpStatusBackup => '백업 아이콘: 백업 상태 (초록 = 최근 백업, 흐림 = 백업 필요)';

  @override
  String get helpStatusTrash => '휴지통 아이콘: 삭제한 항목 (숫자 = 대기 중인 항목, 탭하여 열기)';

  @override
  String get helpStatusBiometric => '지문 아이콘: 생체 인식 잠금 해제 (초록 = 켜짐, 탭하여 변경)';

  @override
  String get helpTitle => '도움말';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => '사용 방법';

  @override
  String get helpAdd => '+ 버튼: 새 항목 추가';

  @override
  String get helpTap => '카드 탭: 세부 정보 보기';

  @override
  String get helpLongPress => '길게 누르기: 선택 후 삭제';

  @override
  String get helpSearch => '검색: 빠르게 찾기';

  @override
  String get helpCategories => '카테고리: 항목 필터링';

  @override
  String get helpLock => '자물쇠 아이콘: 지금 보관함 잠그기';

  @override
  String get helpSettings => '설정: 백업, 자동 잠금 등';

  @override
  String get helpStats => '하단 패널: 보관함 요약';

  @override
  String deleteSelectedConfirm(int count) {
    return '선택한 항목 $count개를 휴지통으로 옮길까요?';
  }

  @override
  String get fcBankName => '은행 이름';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => '인터넷 뱅킹 비밀번호';

  @override
  String get fcCardPin => '카드 비밀번호';

  @override
  String get fcCardNumber => '카드 번호';

  @override
  String get fcExpiryDate => '유효기간';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => '고객센터 번호';

  @override
  String get fcCustomerNoTc => '고객 번호 / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => '계좌 종류';

  @override
  String get fcPhoneBankingPassword => '폰뱅킹 비밀번호';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => '명세서 / 결제일';

  @override
  String get fcAccountTitle => '예금주';

  @override
  String get fcEmailAddress => '이메일 주소';

  @override
  String get fcRecoveryEmail => '복구 이메일';

  @override
  String get fcRecoveryPhone => '복구 전화번호';

  @override
  String get fc2faBackupCodes => '2FA / 백업 코드';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => '보안 질문';

  @override
  String get fcPasswordChangeDate => '비밀번호 변경일';

  @override
  String get fcPlatformTitle => '플랫폼 / 이름';

  @override
  String get fcUsernameProfileId => '사용자 이름 / 프로필 ID';

  @override
  String get fcRegisteredEmail => '가입 이메일';

  @override
  String get fcRegisteredPhone => '가입 전화번호';

  @override
  String get fcProfileUrl => '프로필 URL';

  @override
  String get fcAccountTypeStatus => '계정 유형 / 상태';

  @override
  String get fcLinkedMainAccount => '연결된 계정';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => '2FA 비밀 키';

  @override
  String get fcServiceName => '기관';

  @override
  String get fcCompanyName => '회사 이름';

  @override
  String get fcCorporateUserId => '사용자 이름 / 사번';

  @override
  String get fcPanelUrl => '관리 패널 URL';

  @override
  String get fcDepartmentPosition => '부서 / 직책';

  @override
  String get fcLicenseCode => '고객 / 라이선스';

  @override
  String get fcSupportContact => '지원 담당자';

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
  String get fcSiteName => '사이트 이름';

  @override
  String get fcWebAddress => '사이트 URL';

  @override
  String get fcUsernameEmail => '사용자 이름 / 이메일';

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
  String get pickFieldTitle => '필드 선택';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => '생성기 설정';

  @override
  String get saveAndExit => '저장 후 닫기';

  @override
  String get customField => '사용자 지정 필드';

  @override
  String get customFieldName => '필드 이름';

  @override
  String get customFieldType => '필드 유형';

  @override
  String get customTypeText => '텍스트';

  @override
  String get customTypeNote => '메모';

  @override
  String get customTypePassword => '비밀번호';

  @override
  String get customTypeDate => '날짜';

  @override
  String get customTypePhone => '전화번호';

  @override
  String get orphanVaultTitle => '이전 보관함 발견';

  @override
  String get orphanVaultBody =>
      '이 기기에 이전 보관함 파일이 있지만 키를 읽을 수 없어 열 수 없습니다. 계속하면 이전 데이터가 삭제됩니다. 백업이 있다면 새 보관함을 만든 뒤 복원하세요.';

  @override
  String get orphanVaultReplace => '삭제 후 계속';

  @override
  String get forgotOldPassword => '현재 비밀번호가 기억나지 않습니다';

  @override
  String get useCurrentPassword => '현재 비밀번호 사용';

  @override
  String get forgotPasswordBioHint =>
      '지문이나 얼굴로 확인하면 새 마스터 비밀번호를 설정할 수 있습니다. 항목은 그대로 유지됩니다.';

  @override
  String get bioConfirmFailed => '생체 인식 확인에 실패했거나 취소되었습니다.';

  @override
  String get biometricChangedBody =>
      '지문 또는 얼굴 설정이 변경되어 보안을 위해 생체 인식 로그인을 껐습니다.';

  @override
  String get limitReachedTitle => '무료 한도 도달';

  @override
  String limitReachedBody(int count) {
    return '무료 버전은 카테고리당 최대 $count개까지 저장할 수 있습니다. 항목을 삭제하거나 Pro로 업그레이드하면 무제한으로 저장할 수 있습니다.';
  }

  @override
  String get scanLimitTitle => '무료 스캔 소진';

  @override
  String scanLimitBody(int count) {
    return '무료 스캔 $count회를 모두 사용했습니다. Pro로 업그레이드하면 무제한으로 스캔할 수 있습니다.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added개 추가, $limited개는 복원되지 않음 (무료 한도 도달). 백업 파일은 변경되지 않았습니다.';
  }

  @override
  String get aboutSection => '정보';

  @override
  String get aboutVersion => '버전';

  @override
  String get aboutProtectionTitle => '데이터 보호 방식';

  @override
  String get aboutProtectionBody =>
      '모든 항목은 이 기기에서 AES-256으로 암호화됩니다. 보관함을 여는 키는 마스터 비밀번호에서 Argon2id로 생성되며, 비밀번호 자체는 어디에도 저장되지 않습니다.';

  @override
  String get aboutOfflineTitle => '오프라인으로 작동';

  @override
  String get aboutOfflineBody =>
      'Muhur에는 인터넷 권한, 계정, 서버가 없습니다. 암호화된 백업을 직접 내보내지 않는 한 데이터는 이 기기를 벗어나지 않습니다.';

  @override
  String get aboutLicenses => '오픈소스 라이선스';

  @override
  String get aboutLicensesDesc => 'Muhur에 사용된 오픈소스 구성 요소의 라이선스';

  @override
  String get aboutRights => '모든 권리 보유.';
}
