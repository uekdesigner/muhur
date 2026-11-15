// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => '銀行';

  @override
  String get catWebsites => 'ウェブサイト';

  @override
  String get catEmails => 'メール';

  @override
  String get catSocial => 'SNS';

  @override
  String get catBusiness => '仕事';

  @override
  String get catOther => 'その他';

  @override
  String get setupTitle => 'マスターパスワードを作成';

  @override
  String get setupInfo => 'このパスワードは復元できません。忘れるとデータを二度と開けなくなります。';

  @override
  String get masterPassword => 'マスターパスワード';

  @override
  String get confirmPassword => 'パスワードを確認';

  @override
  String get changeMasterPassword => 'マスターパスワードを変更';

  @override
  String get currentPassword => '現在のパスワード';

  @override
  String get newPassword => '新しいパスワード';

  @override
  String get newPasswordSame => '新しいパスワードは現在のものと異なる必要があります。';

  @override
  String get change => '変更';

  @override
  String get masterPasswordChanged => 'マスターパスワードを変更しました。';

  @override
  String get changePasswordFailed => 'パスワードを変更できませんでした。もう一度お試しください。';

  @override
  String get passwordTooShort => '8文字以上にしてください。';

  @override
  String get passwordNeedsMix => '小文字・大文字・数字を含めてください。';

  @override
  String get reqLength => '8文字以上';

  @override
  String get reqLower => '小文字';

  @override
  String get reqUpper => '大文字';

  @override
  String get reqDigit => '数字';

  @override
  String get reqSpecial => '記号 (!@#...) – 任意';

  @override
  String get reqOptional => '任意';

  @override
  String get passwordsDontMatch => 'パスワードが一致しません。';

  @override
  String get createVault => '作成';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => '開く';

  @override
  String get wrongPassword => 'マスターパスワードが違います。';

  @override
  String lockedOut(int seconds) {
    return '試行回数が多すぎます。$seconds秒後にもう一度お試しください。';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => '生体認証でのロック解除を有効にしますか？';

  @override
  String get enable => '有効にする';

  @override
  String get notNow => '後で';

  @override
  String get biometricReason => 'Muhurのロックを解除';

  @override
  String get lockNow => 'ロック';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'すべて';

  @override
  String get noEntries => 'まだ項目がありません';

  @override
  String get searchHint => 'タイトル・ドメイン・タグを検索';

  @override
  String get addEntry => '項目を追加';

  @override
  String get editEntry => '項目を編集';

  @override
  String get title => 'タイトル';

  @override
  String get category => 'カテゴリ';

  @override
  String get domain => 'ドメイン（例: example.com）';

  @override
  String get tags => 'タグ';

  @override
  String get fields => 'フィールド';

  @override
  String get addField => 'フィールドを追加';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'テキスト';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => '値を隠す';

  @override
  String get save => '保存';

  @override
  String get delete => '削除';

  @override
  String get moveToTrash => 'ゴミ箱へ';

  @override
  String get trash => 'ゴミ箱';

  @override
  String get trashKeepFor => 'ゴミ箱の保持期間';

  @override
  String get trashHint =>
      '削除した項目は暗号化されたままゴミ箱に残り、復元できます。この日数が過ぎると、次に保管庫を開いたときに完全に削除されます。期間を短くすると、古い項目もゴミ箱から削除されます。ゴミ箱を空にすると元に戻せません。';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count日',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'ゴミ箱';

  @override
  String get trashEmpty => 'ゴミ箱は空です。';

  @override
  String get restore => '復元';

  @override
  String get deleteForever => '完全削除';

  @override
  String get deleteForeverConfirm => 'この項目を完全に削除しますか？元に戻せません。';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '残り$count日',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => '空にする';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件',
    );
    return 'ゴミ箱の$_temp0を完全に削除しますか？元に戻せません。';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get deleteConfirm => 'この項目をゴミ箱に移動しますか？ゴミ箱を空にするまでは復元できます。';

  @override
  String get titleRequired => 'タイトルは必須です。';

  @override
  String get fieldUsername => 'ユーザー名';

  @override
  String get fieldPassword => 'パスワード';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'メモ';

  @override
  String get copy => 'コピー';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => '設定';

  @override
  String get settingsSecurity => 'セキュリティ';

  @override
  String get settingsBackup => 'バックアップ';

  @override
  String get settingsGeneral => '一般';

  @override
  String get settingsAbout => '情報';

  @override
  String get autoLock => '自動ロック';

  @override
  String get immediately => 'すぐに';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'コピー保持時間';

  @override
  String get copyTimerHint =>
      'コピーしたデータはこの時間が経つとクリップボードから消去され、それまでは保管庫が開いたままになります。';

  @override
  String secondsShort(int seconds) {
    return '$seconds秒';
  }

  @override
  String get biometricUnlock => '生体認証';

  @override
  String get generator => 'パスワード生成';

  @override
  String get generate => '生成';

  @override
  String get length => '長さ';

  @override
  String get lowercase => '小文字 (a-z)';

  @override
  String get uppercase => '大文字 (A-Z)';

  @override
  String get digits => '数字 (0-9)';

  @override
  String get symbols => '記号 (!@#...)';

  @override
  String get avoidAmbiguous => '紛らわしい文字を除く (O/0, l/1)';

  @override
  String get regenerate => '再生成';

  @override
  String get usePassword => '使用';

  @override
  String get strengthWeak => '弱い';

  @override
  String get strengthFair => '普通';

  @override
  String get strengthGood => '良い';

  @override
  String get strengthStrong => '強い';

  @override
  String get scan => 'スキャン';

  @override
  String get scanHint => 'カメラを文字の上で動かさずに保持してください。IBANモードでは自動で検出されます。';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'スキャン中...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected => 'OCRの誤りを修正した可能性があります。よく確認してください。';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError => 'カメラを使用できません。カメラの権限を確認してください。';

  @override
  String get editBeforeUse => '確認して編集';

  @override
  String get useValue => '使用';

  @override
  String get scanIsThis => 'これですか？';

  @override
  String get scanNo => 'いいえ';

  @override
  String get scanYes => 'はい';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'パスワードマネージャー';

  @override
  String get tagline =>
      'デジタルデータに封印を。\nサーバーなし。あなたとあなたのデータだけ。\nMÜHÜR：デジタルの記憶を守る最も安全な鍵。';

  @override
  String get login => '開く';

  @override
  String get infoTitle => 'Muhurについて';

  @override
  String get infoBody =>
      'Muhurはパスワードを暗号化して、この端末にだけ保存します。アカウントもサーバーもありません。\n\nマスターパスワードは復元できません。忘れるとデータを開けなくなるため、暗号化バックアップを保管してください。';

  @override
  String get understandNoRecovery => '忘れたマスターパスワードは復元できないことを理解しました。';

  @override
  String get close => '閉じる';

  @override
  String get language => '言語';

  @override
  String get languageSystem => 'システムの設定';

  @override
  String get sectionLanguage => '言語';

  @override
  String get sectionExperience => '操作';

  @override
  String get sectionAppearance => '外観';

  @override
  String get panelDarkness => 'パネルの濃さ';

  @override
  String get panelDarknessDesc => 'パネルとカードの透明度を変えます';

  @override
  String get backgroundTitle => '背景';

  @override
  String get backgroundDim => '暗さ';

  @override
  String get backgroundDimDesc => '背景画像を暗く、または明るくします';

  @override
  String get bgBronze => 'ブロンズ';

  @override
  String get bgEmber => '残り火';

  @override
  String get bgSapphire => 'サファイア';

  @override
  String get bgObsidian => '黒曜石';

  @override
  String get bgLumen => 'ルーメン';

  @override
  String get smartGuide => 'スマートヒント';

  @override
  String get smartGuideDesc => '機能を初めて使うときに短いヒントを表示します';

  @override
  String get haptics => '振動';

  @override
  String get hapticsDesc => '指紋でのロック解除時とコピー時に短く振動します';

  @override
  String get reduceAnimations => 'アニメーションなし';

  @override
  String get reduceAnimationsDesc =>
      'アプリ内のすべてのアニメーションをオフにします：ヘルプアイコンの揺れと光、ヘルプメニュー、画面遷移、ダイアログ、スキャナーの線。動作の遅い端末や、動きに敏感な方に便利です。';

  @override
  String get resetTips => 'ヒントをリセット';

  @override
  String get resetTipsDesc => 'ヘルプのアニメーションとすべてのヒントを再表示します';

  @override
  String get tipsResetDone => 'ヒントが再び表示されます';

  @override
  String get tipLongPress => 'ヒント：項目を長押しして選択すると、まとめて削除できます。';

  @override
  String get statTotal => '合計';

  @override
  String get statReused => '使い回し';

  @override
  String get planFree => '無料';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'スクリーンショットを許可';

  @override
  String get screenshotAllowHint => '下で設定した時間だけ画面保護がオフになり、その後自動でオンに戻ります。';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => '暗号化バックアップ';

  @override
  String get backupExport => 'バックアップ作成';

  @override
  String get backupExportDesc =>
      'ゴミ箱を含むすべての項目を、バックアップ用パスワードで保護されたファイルに保存します。ファイルは安全な場所に保管してください。';

  @override
  String get backupImport => '復元';

  @override
  String get backupImportDesc => 'バックアップファイルの項目を追加します。既存の項目が上書きや削除されることはありません。';

  @override
  String get backupPasswordTitle => 'バックアップのパスワード';

  @override
  String get backupPasswordInfo =>
      'このパスワードはバックアップファイルを保護します。マスターパスワードと違っていても構いません。忘れるとバックアップを開けません。';

  @override
  String get backupEnterPassword => 'バックアップのパスワードを入力';

  @override
  String get backupContinue => '次へ';

  @override
  String get backupSaved => 'バックアップを保存しました';

  @override
  String get backupFailed => 'バックアップを作成できませんでした';

  @override
  String backupRestored(int added, int skipped) {
    return '$added件追加、$skipped件は既存';
  }

  @override
  String get backupWrongPassword => 'バックアップのパスワードが違います';

  @override
  String get backupInvalidFile => '有効なMuhurバックアップファイルではありません';

  @override
  String get backupReminderTitle => 'バックアップのリマインダー';

  @override
  String get backupReminderDesc =>
      '最後のバックアップがこれより古くなるとホーム画面でお知らせします。0にするとオフになります。';

  @override
  String get backupReminderOff => 'オフ';

  @override
  String get backupReminderNever =>
      'まだバックアップしていません。パスワードを失わないよう、今すぐバックアップしましょう。';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '最後のバックアップは$days日前です。',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'バックアップ';

  @override
  String get backupReminderLater => '後で';

  @override
  String get statusScreenOn => '画面保護オン：スクリーンショットと画面録画をブロック中';

  @override
  String get statusScreenOff => '画面保護は一時的にオフ：スクリーンショットを許可中';

  @override
  String get statusBackupNever => 'バックアップはまだありません。設定 > バックアップで作成してください';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '最後のバックアップ：$days日前',
      one: '最後のバックアップ：昨日',
      zero: '今日バックアップ済み',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'バックアップ期限切れ：最後は$days日前',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ゴミ箱に$count件',
      zero: 'ゴミ箱は空です',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => '生体認証でのロック解除：オン';

  @override
  String get statusBiometricOff => '生体認証でのロック解除：オフ（タップして設定）';

  @override
  String get helpStatusScreen => '盾アイコン：画面保護（緑＝オン、薄い＝オフ）';

  @override
  String get helpStatusBackup => 'バックアップアイコン：バックアップ状況（緑＝最近、薄い＝要バックアップ）';

  @override
  String get helpStatusTrash => 'ゴミ箱アイコン：削除した項目（数字＝待機中の件数、タップで開く）';

  @override
  String get helpStatusBiometric => '指紋アイコン：生体認証（緑＝オン、タップで変更）';

  @override
  String get helpTitle => 'ヘルプ';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => '使い方';

  @override
  String get helpAdd => '＋ボタン：新しい項目を追加';

  @override
  String get helpTap => 'カードをタップ：詳細を表示';

  @override
  String get helpLongPress => '長押し：選択して削除';

  @override
  String get helpSearch => '検索：すばやく探す';

  @override
  String get helpCategories => 'カテゴリ：項目を絞り込む';

  @override
  String get helpLock => '鍵アイコン：今すぐ保管庫をロック';

  @override
  String get helpSettings => '設定：バックアップ、自動ロックなど';

  @override
  String get helpStats => '下のパネル：保管庫の概要';

  @override
  String deleteSelectedConfirm(int count) {
    return '選択した$count件をゴミ箱に移動しますか？';
  }

  @override
  String get fcBankName => '銀行名';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'ネットバンキングのパスワード';

  @override
  String get fcCardPin => 'カードの暗証番号';

  @override
  String get fcCardNumber => 'カード番号';

  @override
  String get fcExpiryDate => '有効期限';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'サポート番号';

  @override
  String get fcCustomerNoTc => '顧客番号 / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => '口座種別';

  @override
  String get fcPhoneBankingPassword => 'テレフォンバンキングのパスワード';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => '締め日 / 支払日';

  @override
  String get fcAccountTitle => '口座名義';

  @override
  String get fcEmailAddress => 'メールアドレス';

  @override
  String get fcRecoveryEmail => '予備のメール';

  @override
  String get fcRecoveryPhone => '予備の電話番号';

  @override
  String get fc2faBackupCodes => '2FA / バックアップコード';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => '秘密の質問';

  @override
  String get fcPasswordChangeDate => 'パスワード変更日';

  @override
  String get fcPlatformTitle => 'サービス / 名称';

  @override
  String get fcUsernameProfileId => 'ユーザー名 / プロフィールID';

  @override
  String get fcRegisteredEmail => '登録メール';

  @override
  String get fcRegisteredPhone => '登録電話番号';

  @override
  String get fcProfileUrl => 'プロフィールURL';

  @override
  String get fcAccountTypeStatus => 'アカウント種別 / 状態';

  @override
  String get fcLinkedMainAccount => '連携アカウント';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => '2FAシークレットキー';

  @override
  String get fcServiceName => '組織';

  @override
  String get fcCompanyName => '会社名';

  @override
  String get fcCorporateUserId => 'ユーザー名 / 社員ID';

  @override
  String get fcPanelUrl => '管理画面URL';

  @override
  String get fcDepartmentPosition => '部署 / 役職';

  @override
  String get fcLicenseCode => '顧客 / ライセンス';

  @override
  String get fcSupportContact => 'サポート窓口';

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
  String get fcSiteName => 'サイト名';

  @override
  String get fcWebAddress => 'サイトURL';

  @override
  String get fcUsernameEmail => 'ユーザー名 / メール';

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
  String get pickFieldTitle => 'フィールドを選択';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => '生成の設定';

  @override
  String get saveAndExit => '保存して戻る';

  @override
  String get customField => 'カスタムフィールド';

  @override
  String get customFieldName => 'フィールド名';

  @override
  String get customFieldType => '種類';

  @override
  String get customTypeText => 'テキスト';

  @override
  String get customTypeNote => 'メモ';

  @override
  String get customTypePassword => 'パスワード';

  @override
  String get customTypeDate => '日付';

  @override
  String get customTypePhone => '電話番号';

  @override
  String get orphanVaultTitle => '古い保管庫が見つかりました';

  @override
  String get orphanVaultBody =>
      'この端末に以前の保管庫ファイルがありますが、鍵を読み取れないため開けません。続けると古いデータは削除されます。バックアップがある場合は、新しい保管庫を作成してから復元してください。';

  @override
  String get orphanVaultReplace => '削除して続行';

  @override
  String get forgotOldPassword => '現在のパスワードを忘れました';

  @override
  String get useCurrentPassword => '現在のパスワードを使う';

  @override
  String get forgotPasswordBioHint =>
      '指紋または顔で確認すると、新しいマスターパスワードを設定できます。項目はそのまま残ります。';

  @override
  String get bioConfirmFailed => '生体認証での確認に失敗したか、キャンセルされました。';

  @override
  String get biometricChangedBody =>
      '指紋または顔の設定が変更されたため、安全のため生体認証でのログインをオフにしました。';

  @override
  String get limitReachedTitle => '無料版の上限に達しました';

  @override
  String limitReachedBody(int count) {
    return '無料版では各カテゴリに$count件まで保存できます。項目を削除するか、Proにアップグレードすると無制限になります。';
  }

  @override
  String get scanLimitTitle => '無料スキャンを使い切りました';

  @override
  String scanLimitBody(int count) {
    return '無料スキャン$count回をすべて使いました。Proにアップグレードすると無制限にスキャンできます。';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added件追加、$limited件は復元されませんでした（無料版の上限）。バックアップファイルは変更されていません。';
  }

  @override
  String get aboutSection => '情報';

  @override
  String get aboutVersion => 'バージョン';

  @override
  String get aboutProtectionTitle => 'データの保護方法';

  @override
  String get aboutProtectionBody =>
      'すべての項目はこの端末上でAES-256により暗号化されます。保管庫を開く鍵はマスターパスワードからArgon2idで生成され、パスワード自体はどこにも保存されません。';

  @override
  String get aboutOfflineTitle => 'オフラインで動作';

  @override
  String get aboutOfflineBody =>
      'Muhurにはインターネット権限、アカウント、サーバーがありません。暗号化バックアップを自分でエクスポートしない限り、データがこの端末の外に出ることはありません。';

  @override
  String get aboutLicenses => 'オープンソースライセンス';

  @override
  String get aboutLicensesDesc => 'Muhurで使用しているオープンソース部品のライセンス';

  @override
  String get aboutRights => '無断複製・転載を禁じます。';
}
