// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => '열기';

  @override
  String get wrongPassword => '마스터 비밀번호가 틀렸습니다.';

  @override
  String lockedOut(int seconds) {
    return '시도 횟수가 너무 많습니다. $seconds초 후에 다시 시도하세요.';
  }

  @override
  String get enableBiometricsQ => '생체 인식 잠금 해제를 사용할까요?';

  @override
  String get enable => '사용';

  @override
  String get notNow => '나중에';

  @override
  String get biometricReason => 'MÜHÜR 잠금 해제';

  @override
  String get lockNow => '잠금';

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
  String get typeText => '텍스트';

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
  String get scanning => '스캔 중...';

  @override
  String get ibanCorrected => 'OCR 오류를 보정했을 수 있습니다. 꼼꼼히 확인하세요.';

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
  String get infoTitle => 'MÜHÜR 정보';

  @override
  String get infoBody =>
      'MÜHÜR는 비밀번호를 암호화하여 이 기기에만 저장합니다. 계정도 서버도 없습니다.\n\n마스터 비밀번호는 복구할 수 없습니다. 잊어버리면 데이터를 열 수 없으니 암호화된 백업을 보관하세요.';

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
  String get screenshotAllow => '스크린샷 허용';

  @override
  String get screenshotAllowHint => '아래에 설정한 시간 동안 화면 보호가 꺼진 뒤 자동으로 다시 켜집니다.';

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
  String get backupInvalidFile => '올바른 MÜHÜR 백업 파일이 아닙니다';

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
  String get fcSiteName => '사이트 이름';

  @override
  String get fcWebAddress => '사이트 URL';

  @override
  String get fcUsernameEmail => '사용자 이름 / 이메일';

  @override
  String get pickFieldTitle => '필드 선택';

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
      '지문으로 확인하면 새 마스터 비밀번호를 설정할 수 있습니다. 항목은 그대로 유지됩니다.';

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
  String get aboutProtectionTitle => '데이터 보호 방식';

  @override
  String get aboutProtectionBody =>
      '저장하는 모든 것은 이 휴대폰에서 강력한 암호화로 잠깁니다. 이를 열 수 있는 것은 마스터 비밀번호뿐이며, 비밀번호는 MÜHÜR를 포함해 어디에도 저장되지 않습니다. 비밀번호가 없으면 데이터를 읽을 수 없습니다.';

  @override
  String get aboutOfflineTitle => '오프라인으로 작동';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR는 인터넷에 전혀 연결되지 않습니다. 계정도, 서버도, 클라우드도 없습니다. 암호화된 백업이나 Excel 파일로 직접 내보내지 않는 한 비밀번호는 이 휴대폰을 벗어나지 않습니다.';

  @override
  String get aboutRights => '모든 권리 보유.';

  @override
  String statusClipboard(int seconds) {
    return '클립보드가 $seconds초 후에 지워집니다. 탭하면 지금 지웁니다.';
  }

  @override
  String get helpStatusClipboard =>
      '클립보드 아이콘: 복사한 값 (숫자 = 지워질 때까지 남은 초, 탭하면 지금 지움)';

  @override
  String aboutVersionLine(String version) {
    return '버전 $version';
  }

  @override
  String get aboutReleaseNotes => '릴리스 노트';

  @override
  String get aboutHowTitle => '작동 방식';

  @override
  String get aboutStoryTitle => 'MÜHÜR 이야기';

  @override
  String get aboutDeveloperTitle => '개발자 소개';

  @override
  String get aboutPrivacySection => '개인정보 처리방침';

  @override
  String get aboutPermissionsTitle => '권한 및 데이터';

  @override
  String get aboutSupportSection => '지원';

  @override
  String get aboutRate => 'Google Play에서 평가하기';

  @override
  String get aboutRateDesc => '스토어 페이지에서 별점이나 리뷰를 남겨 주세요';

  @override
  String get aboutInBrief => '요약';

  @override
  String get aboutTechnical => '기술 세부 정보';

  @override
  String get aboutProtectionTech =>
      '• 보관함은 무작위로 생성한 256비트 키로 암호화됩니다. 이 키는 마스터 비밀번호에서 Argon2id(메모리 32 MiB, 3회)로 만든 키를 사용해 AES-256-GCM으로 봉인됩니다. 키 생성 설정이 봉인에 묶여 있어 변조가 감지됩니다.\n• 데이터베이스는 SQLCipher로 암호화되며, 그 키는 보관함 키에서 HKDF-SHA256으로 생성됩니다.\n• 민감한 필드는 AES-256-GCM으로 한 번 더 암호화되고 해당 항목과 필드에 묶입니다.\n• 비밀번호를 5번 틀리면 30초를 기다려야 하며, 매번 두 배씩 늘어나 최대 1시간까지 기다립니다. 휴대폰 시계를 바꿔도 대기 시간은 줄지 않습니다.\n• 생체 인식 잠금 해제는 강력한 생체 인식(클래스 3)만 허용하며, 새 지문이나 얼굴을 등록하면 꺼집니다. 대부분의 휴대폰에서는 얼굴 인식이 이 수준에 미치지 못하므로 보통 지문만 사용할 수 있습니다.\n• 스크린샷과 화면 녹화가 차단되고, 앱을 벗어나면 보관함이 잠기며, 복사한 값은 민감 정보로 표시되어 자동으로 지워집니다.';

  @override
  String get aboutOfflineTech =>
      '• 출시된 앱 버전에는 인터넷이나 네트워크 권한이 없으며, 라이브러리가 요청해도 제거됩니다.\n• 클라우드 백업과 다른 기기로의 이전이 꺼져 있어 앱 데이터가 휴대폰 밖으로 복사되지 않습니다.\n• 텍스트 인식은 앱에 포함된 모델로 휴대폰에서 실행되며, 카메라 화면은 메모리에서 처리되고 저장되지 않습니다.\n• 데이터는 직접 내보낼 때만 휴대폰을 벗어납니다. 암호화된 백업 파일이거나, 보안이 사용자의 책임인 암호화되지 않은 Excel 파일입니다.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR는 개인정보를 수집하지 않고, 광고를 표시하지 않으며, 분석 도구를 사용하지 않고, 누구와도 아무것도 공유하지 않습니다. 요청하는 권한은 카메라(텍스트 스캔용)와 생체 인식(잠금 해제용)뿐입니다. 구독은 Google Play가 관리하며 앱은 결제 정보를 볼 수 없습니다. 앱을 삭제하면 모든 데이터도 삭제됩니다. 삭제하기 전에 항목을 Excel로 내보낼 수 있으며, 그 파일의 보안은 사용자의 책임입니다.';

  @override
  String get aboutPermissionsTech =>
      '• 카메라: 스캐너가 열려 있을 때만 사용하며, 사진을 저장하거나 소리를 녹음하지 않습니다.\n• 생체 인식: 지문이나 얼굴은 휴대폰의 시스템 창이 확인하며, MÜHÜR는 그 데이터를 받지 않습니다.\n• 파일: 백업이나 Excel 파일을 저장하거나 열 위치를 직접 선택할 때만 접근합니다.\n• 계정, 서버, 추적 또는 광고 식별자가 없습니다.\n• 앱 다운로드와 구독 구매는 Google의 개인정보 처리방침에 따라 Google Play가 처리합니다.';

  @override
  String get how1T => '보관함과 마스터 비밀번호';

  @override
  String get how1B =>
      '모든 정보는 이 휴대폰의 암호화된 보관함에 보관됩니다. 보관함은 마스터 비밀번호로만 열립니다. 복구할 수 없으니 기억할 수 있는 비밀번호를 고르고 백업을 만들어 두세요.';

  @override
  String get how2T => '항목과 카테고리';

  @override
  String get how2B =>
      '카테고리는 고정되어 있습니다: 은행, 웹사이트, 이메일, SNS, 업무, 기타. + 버튼으로 항목을 추가할 때 카테고리를 고르면 그에 맞는 필드가 준비됩니다. 새 카테고리는 만들 수 없지만, \'필드 추가\'로 항목에 필드를 더할 수 있습니다. 목록에서 고르거나 원하는 이름으로 \'사용자 지정 필드\'를 만드세요.';

  @override
  String get how3T => '안전한 복사';

  @override
  String get how3B =>
      '필드를 탭하면 복사됩니다. 클립보드는 설정한 시간이 지나면 자동으로 지워집니다. 홈 화면의 클립보드 아이콘이 남은 시간을 보여 주며, 탭하면 바로 지웁니다.';

  @override
  String get how4T => '카메라로 스캔';

  @override
  String get how4B =>
      '카드나 문서에 카메라를 대면 IBAN이나 텍스트를 직접 입력하지 않고 읽을 수 있습니다. 저장하기 전에 결과를 확인하세요.';

  @override
  String get how5T => '휴지통';

  @override
  String get how5B =>
      '삭제한 항목은 암호화된 상태로 휴지통에 남아 있으며, 설정한 기간이 끝날 때까지 복원할 수 있습니다.';

  @override
  String get how6T => '백업과 복원';

  @override
  String get how6B =>
      '별도의 비밀번호가 있는 암호화 백업 파일을 만들어 안전한 곳에 보관하세요. 복원은 항목을 추가만 하며, 기존 항목을 덮어쓰지 않습니다.';

  @override
  String get how7T => '잠금과 생체 인식';

  @override
  String get how7B =>
      '앱을 벗어나면 보관함이 자동으로 잠깁니다. 생체 인식을 켜면 지문으로 열 수 있습니다(지원되는 휴대폰에서는 얼굴로도 가능).';

  @override
  String get storyBody =>
      '모든 위대한 발명은 자기 삶의 작은 막다른 길을 풀어 보려는 노력에서 시작됩니다. MÜHÜR의 이야기도 그렇습니다. 디지털 세상의 혼란 속에서 사라져 가는 기억과 \'내 것을 지키고 싶은\' 본능에서 태어난, 소박하지만 힘 있는 여정입니다.\n\n모든 것은 잊어버린 비밀번호 하나가 만든 그 답답한 멈춤에서 시작되었습니다. 저는 MÜHÜR를 남의 클라우드 서버에 기대지 않고 오직 제 기기에서만 동작하는 개인적인 피난처로 설계했습니다. 시간이 지나면서 디지털 프라이버시를 되찾고 싶은 사람이 저만이 아니라는 것을 깨달았습니다.\n\n오늘 MÜHÜR는 데이터를 어떤 서버에도 맡기지 않고 온전히 스스로 관리하고 싶은 모든 사람을 위해 존재합니다.\n\n디지털 기억에 가장 안전한 자물쇠로 봉인하세요.';

  @override
  String get devBody =>
      'MÜHÜR는 UEK DESIGNER의 독립 프로젝트로, 튀르키예에서 설계하고 개발했습니다. MÜHÜR를 사용해 주셔서 감사합니다.';

  @override
  String get rn100 =>
      '• 첫 번째 버전입니다.\n• 마스터 비밀번호로 여는 휴대폰 속 암호화 보관함(Argon2id + AES-256).\n• 은행, 웹사이트, 이메일, SNS, 업무 계정을 위한 기본 필드.\n• 강도 표시가 있는 비밀번호 생성기.\n• 카메라로 IBAN과 텍스트 스캔.\n• 지문으로 잠금 해제(지원되는 휴대폰에서는 얼굴도).\n• 암호화 백업과 복원.\n• Excel로 내보내기(암호화 없음, 사용자 책임).\n• 자동으로 정리되는 휴지통.\n• 재사용된 비밀번호를 보여 주는 보관함 요약.\n• 자동 잠금, 화면 보호, 클립보드 카운트다운.\n• 완전한 오프라인 동작.\n• 18개 언어 지원.';

  @override
  String get excelExport => 'Excel로 내보내기';

  @override
  String get excelExportDesc => '항목을 암호화하지 않은 .xlsx 파일로 내보냅니다(예: 앱 삭제 전)';

  @override
  String get excelExportWarnTitle => '암호화되지 않은 내보내기';

  @override
  String get excelExportWarn =>
      'Excel 파일은 암호화되지 않습니다. 파일을 손에 넣은 사람은 누구나 모든 비밀번호를 읽을 수 있습니다. 파일을 어디에 보관할지, 누구와 공유할지, 사용 후 삭제하는 것은 전적으로 사용자의 책임입니다. 휴지통의 항목은 포함되지 않습니다.';

  @override
  String get excelExportAgree => '이해했습니다. 파일의 보안은 제 책임입니다.';

  @override
  String get excelExportSaved => 'Excel 파일을 저장했습니다. 더 이상 필요 없으면 삭제하세요.';

  @override
  String get excelExportFailed => 'Excel 파일을 만들지 못했습니다.';

  @override
  String get excelColDomain => '도메인';

  @override
  String get excelColUpdated => '마지막 수정';

  @override
  String get how8T => 'Excel로 내보내기';

  @override
  String get how8B =>
      '백업 설정의 \'Excel로 내보내기\'는 휴지통을 제외한 모든 항목을 카테고리별 시트로 나누어 .xlsx 파일에 기록합니다. 파일은 암호화되지 않습니다. 마스터 비밀번호로 확인하고, 파일의 보안이 사용자의 책임임에 동의해야 합니다. 더 이상 필요 없으면 삭제하세요.';

  @override
  String get proFeatureTitle => 'Pro 기능';

  @override
  String get proFieldsBody =>
      '항목에 필드를 추가하는 것은 Pro 기능입니다. 이미 추가한 필드는 그대로 남고 계속 수정할 수 있습니다.';

  @override
  String get proBiometricBody =>
      '지문으로 잠금 해제하는 것은 Pro 기능입니다. 마스터 비밀번호로는 언제든지 잠금 해제할 수 있습니다.';

  @override
  String get proBackgroundsBody => '추가 배경은 Pro 기능입니다. 기본 배경은 언제든지 사용할 수 있습니다.';

  @override
  String bioGraceWarn(String days) {
    return '지문 잠금 해제는 앞으로 $days 동안 켜져 있다가 꺼집니다. 마스터 비밀번호를 기억하고 있는지 확인하세요. 잊어버렸다면 설정의 \'마스터 비밀번호 변경\'에서 지문으로 새 비밀번호를 설정하세요.';
  }

  @override
  String get genNewPassword => '새 비밀번호 생성';

  @override
  String fieldRemoved(String label) {
    return '\'$label\' 필드를 삭제했습니다';
  }

  @override
  String get undo => '실행 취소';

  @override
  String get proStatusActive => 'Pro 구독이 활성화되어 있습니다';

  @override
  String proStatusTrial(String days) {
    return '무료 체험: $days 남음';
  }

  @override
  String get proStatusFree => '무료 플랜';

  @override
  String get proTrialInfo =>
      '체험이 끝나면 자동으로 무료 플랜으로 전환됩니다. 카드가 필요 없고 아무것도 삭제되지 않습니다.';

  @override
  String get proFeatEntries => '항목 무제한';

  @override
  String get proFeatEntriesDesc => '무료: 카테고리당 3개';

  @override
  String get proFeatScan => '카메라 스캔 무제한';

  @override
  String get proFeatScanDesc => '무료: 3회';

  @override
  String get proFeatFields => '추가 필드 및 사용자 지정 필드';

  @override
  String get proFeatFieldsDesc => '항목에 필요한 필드를 모두 추가하세요';

  @override
  String get proFeatBio => '지문 잠금 해제';

  @override
  String get proFeatBioDesc => '한 번의 터치로 보관함 열기';

  @override
  String get proFeatBg => '모든 배경';

  @override
  String get proFeatBgDesc => '배경 5개 모두';

  @override
  String get proFeatHealth => '보관함 상태 점검';

  @override
  String get proFeatHealthDesc => '약하거나 재사용된 비밀번호를 확인하고 바로 해당 항목으로 이동하세요';

  @override
  String get proFeatTotp => '2단계 인증 코드';

  @override
  String get proFeatTotpDesc => '코드가 보관함 안에서 오프라인으로 생성됩니다';

  @override
  String get proFeatHistory => '비밀번호 기록';

  @override
  String get proFeatHistoryDesc => '이전 비밀번호가 저장되어 다시 확인할 수 있습니다';

  @override
  String get proYearly => '연간';

  @override
  String get proMonthly => '월간';

  @override
  String get proPerYear => '/ 년';

  @override
  String get proPerMonth => '/ 월';

  @override
  String get proBestValue => '가장 알뜰';

  @override
  String get proSubscribe => '구독하기';

  @override
  String get proRestore => '구매 복원';

  @override
  String get proManage => '구독 관리';

  @override
  String get proFinePrint =>
      '결제는 Google Play를 통해 이루어집니다. 구독은 해지할 때까지 자동으로 갱신되며 Google Play에서 언제든지 해지할 수 있습니다. 구독이 끝나도 항목은 삭제되지 않습니다.';

  @override
  String get proComingSoon => 'MÜHÜR가 Google Play에 출시되면 구매할 수 있습니다.';

  @override
  String get proSeePlans => 'Pro 살펴보기';

  @override
  String get proHealthBody =>
      '어떤 항목에 약하거나 재사용된 비밀번호가 있는지 보는 것은 Pro 기능입니다. 개수는 항상 표시됩니다.';

  @override
  String get healthWeakHint => '짧거나 추측하기 쉬운 비밀번호입니다. 비밀번호 생성기로 바꾸세요.';

  @override
  String get healthReusedHint =>
      '같은 비밀번호가 여러 항목에서 쓰이고 있습니다. 하나가 유출되면 나머지도 위험합니다.';

  @override
  String get healthFairHint => '괜찮지만 더 길고 다양하게 만들 수 있습니다.';

  @override
  String get healthAllGood => '약하거나 재사용된 비밀번호가 없습니다. 보관함이 건강합니다.';

  @override
  String get proHistoryBody =>
      '비밀번호의 이전 값을 보는 것은 Pro 기능입니다. Pro에서 변경한 비밀번호가 여기에 보관됩니다.';

  @override
  String get historyEmpty => '이 비밀번호는 아직 변경되지 않았습니다. 변경하면 이전 값이 여기에 표시됩니다.';

  @override
  String get historyNote =>
      '비밀번호 필드마다 최근 10개의 값이 보관함의 다른 데이터처럼 암호화되어 저장됩니다. 비밀번호 기록은 백업에 포함되지 않습니다.';

  @override
  String get historyClearQ => '이 필드의 기록을 지우려면 삭제를 한 번 더 누르세요.';

  @override
  String get totpHint => '설정 키 또는 otpauth:// 링크';

  @override
  String get totpInvalid => '유효하지 않은 키입니다. 사이트에서 받은 설정 키를 붙여 넣으세요.';

  @override
  String get qrScan => 'QR 코드 스캔';

  @override
  String get qrScanHint => '2단계 인증을 설정할 때 사이트에 표시되는 QR 코드에 카메라를 맞추세요.';

  @override
  String get qrNot2fa => '이 QR 코드는 2FA 설정 코드가 아닙니다.';

  @override
  String get qrMigration =>
      'Google Authenticator 내보내기 코드입니다. 대신 각 사이트의 설정 QR 코드를 스캔하세요.';
}
