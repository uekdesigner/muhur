// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Банки';

  @override
  String get catWebsites => 'Сайты';

  @override
  String get catEmails => 'Почта';

  @override
  String get catSocial => 'Соцсети';

  @override
  String get catBusiness => 'Работа';

  @override
  String get catOther => 'Другое';

  @override
  String get setupTitle => 'Создайте мастер-пароль';

  @override
  String get setupInfo =>
      'Этот пароль нельзя восстановить. Если вы его забудете, данные больше никогда не откроются.';

  @override
  String get masterPassword => 'Мастер-пароль';

  @override
  String get confirmPassword => 'Подтвердите пароль';

  @override
  String get changeMasterPassword => 'Сменить мастер-пароль';

  @override
  String get currentPassword => 'Текущий пароль';

  @override
  String get newPassword => 'Новый пароль';

  @override
  String get newPasswordSame => 'Новый пароль должен отличаться от текущего.';

  @override
  String get change => 'Сменить';

  @override
  String get masterPasswordChanged => 'Мастер-пароль изменён.';

  @override
  String get changePasswordFailed =>
      'Не удалось сменить пароль. Попробуйте ещё раз.';

  @override
  String get passwordTooShort => 'Используйте не менее 8 символов.';

  @override
  String get passwordNeedsMix =>
      'Используйте строчные и заглавные буквы и цифру.';

  @override
  String get reqLength => 'Не менее 8 символов';

  @override
  String get reqLower => 'Строчная буква';

  @override
  String get reqUpper => 'Заглавная буква';

  @override
  String get reqDigit => 'Цифра';

  @override
  String get reqSpecial => 'Спецсимвол (!@#...) – необязательно';

  @override
  String get reqOptional => 'необязательно';

  @override
  String get passwordsDontMatch => 'Пароли не совпадают.';

  @override
  String get createVault => 'Создать';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Открыть';

  @override
  String get wrongPassword => 'Неверный мастер-пароль.';

  @override
  String lockedOut(int seconds) {
    return 'Слишком много попыток. Повторите через $seconds с.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Включить разблокировку по биометрии?';

  @override
  String get enable => 'Включить';

  @override
  String get notNow => 'Не сейчас';

  @override
  String get biometricReason => 'Разблокировать Muhur';

  @override
  String get lockNow => 'Заблокировать';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Все';

  @override
  String get noEntries => 'Записей пока нет';

  @override
  String get searchHint => 'Поиск: название, домен, тег';

  @override
  String get addEntry => 'Новая запись';

  @override
  String get editEntry => 'Изменить запись';

  @override
  String get title => 'Название';

  @override
  String get category => 'Категория';

  @override
  String get domain => 'Домен (напр. example.com)';

  @override
  String get tags => 'Тег';

  @override
  String get fields => 'Поля';

  @override
  String get addField => 'Новое поле';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Текст';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Скрыть значение';

  @override
  String get save => 'Сохранить';

  @override
  String get delete => 'Удалить';

  @override
  String get moveToTrash => 'В корзину';

  @override
  String get trash => 'Корзина';

  @override
  String get trashKeepFor => 'Хранить в корзине';

  @override
  String get trashHint =>
      'Удалённые записи остаются в корзине в зашифрованном виде, и их можно восстановить. По истечении этого срока они удаляются навсегда при следующей разблокировке хранилища. Если сократить срок, из корзины удалятся и более старые записи. Очистку корзины нельзя отменить.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дня',
      many: '$count дней',
      few: '$count дня',
      one: '$count день',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Корзина';

  @override
  String get trashEmpty => 'Корзина пуста.';

  @override
  String get restore => 'Восстановить';

  @override
  String get deleteForever => 'Стереть';

  @override
  String get deleteForeverConfirm =>
      'Удалить эту запись навсегда? Это нельзя отменить.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Осталось $count дня',
      many: 'Осталось $count дней',
      few: 'Осталось $count дня',
      one: 'Остался $count день',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Очистить';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count записи',
      many: '$count записей',
      few: '$count записи',
      one: '$count запись',
    );
    return 'Удалить из корзины навсегда $_temp0? Это нельзя отменить.';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get deleteConfirm =>
      'Переместить запись в корзину? Её можно восстановить, пока корзина не очищена.';

  @override
  String get titleRequired => 'Укажите название.';

  @override
  String get fieldUsername => 'Имя пользователя';

  @override
  String get fieldPassword => 'Пароль';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Заметки';

  @override
  String get copy => 'Копировать';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Настройки';

  @override
  String get settingsSecurity => 'Защита';

  @override
  String get settingsBackup => 'Резерв';

  @override
  String get settingsGeneral => 'Общие';

  @override
  String get settingsAbout => 'Инфо';

  @override
  String get autoLock => 'Автоблокировка';

  @override
  String get immediately => 'Сразу';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Таймер буфера';

  @override
  String get copyTimerHint =>
      'Скопированные данные удаляются из буфера обмена через это время, и до этого момента хранилище остаётся открытым.';

  @override
  String secondsShort(int seconds) {
    return '$seconds с';
  }

  @override
  String get biometricUnlock => 'Биометрия';

  @override
  String get generator => 'Генератор';

  @override
  String get generate => 'Создать';

  @override
  String get length => 'Длина';

  @override
  String get lowercase => 'Строчные (a-z)';

  @override
  String get uppercase => 'Заглавные (A-Z)';

  @override
  String get digits => 'Цифры (0-9)';

  @override
  String get symbols => 'Символы (!@#...)';

  @override
  String get avoidAmbiguous => 'Без похожих символов (O/0, l/1)';

  @override
  String get regenerate => 'Новый';

  @override
  String get usePassword => 'Вставить';

  @override
  String get strengthWeak => 'Слабый';

  @override
  String get strengthFair => 'Средний';

  @override
  String get strengthGood => 'Хороший';

  @override
  String get strengthStrong => 'Надёжный';

  @override
  String get scan => 'Скан';

  @override
  String get scanHint =>
      'Держите камеру неподвижно над текстом. В режиме IBAN он распознаётся автоматически.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Сканирование...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Возможно, исправлено после ошибки OCR. Проверьте внимательно.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Камера недоступна. Проверьте разрешение на доступ к камере.';

  @override
  String get editBeforeUse => 'Проверьте и исправьте';

  @override
  String get useValue => 'Вставить';

  @override
  String get scanIsThis => 'Это он?';

  @override
  String get scanNo => 'Нет';

  @override
  String get scanYes => 'Да';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Менеджер паролей';

  @override
  String get tagline =>
      'ЗАПЕЧАТАЙТЕ свои цифровые данные.\nНикаких серверов. Только вы и ваши данные.\nMÜHÜR: самый надёжный замок для вашей цифровой памяти.';

  @override
  String get login => 'ВОЙТИ';

  @override
  String get infoTitle => 'О Muhur';

  @override
  String get infoBody =>
      'Muhur хранит ваши пароли в зашифрованном виде только на этом устройстве. Нет ни аккаунта, ни сервера.\n\nМастер-пароль нельзя восстановить. Если вы его забудете, данные не откроются, поэтому храните зашифрованную резервную копию.';

  @override
  String get understandNoRecovery =>
      'Я понимаю, что забытый мастер-пароль нельзя восстановить.';

  @override
  String get close => 'Закрыть';

  @override
  String get language => 'Язык';

  @override
  String get languageSystem => 'Как в системе';

  @override
  String get sectionLanguage => 'ЯЗЫК';

  @override
  String get sectionExperience => 'УДОБСТВО';

  @override
  String get sectionAppearance => 'ОФОРМЛЕНИЕ';

  @override
  String get panelDarkness => 'Затемнение панелей';

  @override
  String get panelDarknessDesc =>
      'Делает панели и карточки более или менее прозрачными';

  @override
  String get backgroundTitle => 'Фон';

  @override
  String get backgroundDim => 'Затемнение';

  @override
  String get backgroundDimDesc =>
      'Делает фоновое изображение темнее или светлее';

  @override
  String get bgBronze => 'Бронза';

  @override
  String get bgEmber => 'Угли';

  @override
  String get bgSapphire => 'Сапфир';

  @override
  String get bgObsidian => 'Обсидиан';

  @override
  String get bgLumen => 'Люмен';

  @override
  String get smartGuide => 'Умные подсказки';

  @override
  String get smartGuideDesc =>
      'Показывает короткие подсказки при первом использовании функции';

  @override
  String get haptics => 'Вибрация';

  @override
  String get hapticsDesc =>
      'Короткая вибрация при разблокировке отпечатком и при копировании';

  @override
  String get reduceAnimations => 'Без анимаций';

  @override
  String get reduceAnimationsDesc =>
      'Отключает все анимации в приложении: покачивание и свечение значка помощи, меню помощи, переходы между экранами, диалоги и линию сканера. Полезно на медленных устройствах и для людей, чувствительных к движению.';

  @override
  String get resetTips => 'Сбросить подсказки';

  @override
  String get resetTipsDesc => 'Снова показать анимацию помощи и все подсказки';

  @override
  String get tipsResetDone => 'Подсказки будут показаны снова';

  @override
  String get tipLongPress =>
      'Совет: удерживайте запись, чтобы выделить её, а затем удалите сразу несколько.';

  @override
  String get statTotal => 'Всего';

  @override
  String get statReused => 'Повторы';

  @override
  String get planFree => 'БЕСПЛАТНО';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Разрешить скриншоты';

  @override
  String get screenshotAllowHint =>
      'Защита экрана отключается на указанное ниже время, а затем снова включается автоматически.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'ЗАШИФРОВАННАЯ КОПИЯ';

  @override
  String get backupExport => 'Создать копию';

  @override
  String get backupExportDesc =>
      'Сохраняет все записи, включая корзину, в файл, защищённый паролем резервной копии. Храните файл в надёжном месте.';

  @override
  String get backupImport => 'Восстановить';

  @override
  String get backupImportDesc =>
      'Добавляет записи из файла резервной копии. Существующие записи никогда не перезаписываются и не удаляются.';

  @override
  String get backupPasswordTitle => 'Пароль копии';

  @override
  String get backupPasswordInfo =>
      'Этот пароль защищает файл резервной копии. Он может отличаться от мастер-пароля. Если вы его забудете, копию не удастся открыть.';

  @override
  String get backupEnterPassword => 'Введите пароль копии';

  @override
  String get backupContinue => 'Далее';

  @override
  String get backupSaved => 'Копия сохранена';

  @override
  String get backupFailed => 'Не удалось создать копию';

  @override
  String backupRestored(int added, int skipped) {
    return 'Добавлено: $added, уже было: $skipped';
  }

  @override
  String get backupWrongPassword => 'Неверный пароль копии';

  @override
  String get backupInvalidFile => 'Это не файл резервной копии Muhur';

  @override
  String get backupReminderTitle => 'Напоминание о копии';

  @override
  String get backupReminderDesc =>
      'Напоминает на главном экране, если последняя копия старше этого срока. Установите 0, чтобы отключить.';

  @override
  String get backupReminderOff => 'Выкл.';

  @override
  String get backupReminderNever =>
      'Вы ещё не создавали резервную копию. Сделайте её сейчас, чтобы не потерять пароли.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Последняя копия была $days дня назад.',
      many: 'Последняя копия была $days дней назад.',
      few: 'Последняя копия была $days дня назад.',
      one: 'Последняя копия была $days день назад.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Создать';

  @override
  String get backupReminderLater => 'Позже';

  @override
  String get statusScreenOn =>
      'Защита экрана включена: скриншоты и запись экрана заблокированы';

  @override
  String get statusScreenOff =>
      'Защита экрана временно выключена: скриншоты разрешены';

  @override
  String get statusBackupNever =>
      'Копий пока нет. Создайте её в Настройки > Резерв';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Последняя копия: $days дня назад',
      many: 'Последняя копия: $days дней назад',
      few: 'Последняя копия: $days дня назад',
      one: 'Последняя копия: $days день назад',
      zero: 'Копия сделана сегодня',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Копия просрочена: последняя $days дня назад',
      many: 'Копия просрочена: последняя $days дней назад',
      few: 'Копия просрочена: последняя $days дня назад',
      one: 'Копия просрочена: последняя $days день назад',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count записи в корзине',
      many: '$count записей в корзине',
      few: '$count записи в корзине',
      one: '$count запись в корзине',
      zero: 'Корзина пуста',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Разблокировка по биометрии включена';

  @override
  String get statusBiometricOff =>
      'Разблокировка по биометрии выключена (нажмите, чтобы настроить)';

  @override
  String get helpStatusScreen =>
      'Значок щита: защита экрана (зелёный = вкл., бледный = выкл.)';

  @override
  String get helpStatusBackup =>
      'Значок копии: состояние копии (зелёный = свежая копия, бледный = пора сделать копию)';

  @override
  String get helpStatusTrash =>
      'Значок корзины: удалённые записи (число = записи в ожидании, нажмите, чтобы открыть)';

  @override
  String get helpStatusBiometric =>
      'Значок отпечатка: разблокировка по биометрии (зелёный = вкл., нажмите, чтобы изменить)';

  @override
  String get helpTitle => 'Помощь';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Как пользоваться?';

  @override
  String get helpAdd => 'Кнопка +: добавить запись';

  @override
  String get helpTap => 'Нажмите на карточку: подробности';

  @override
  String get helpLongPress => 'Удержание: выделить и удалить';

  @override
  String get helpSearch => 'Поиск: быстро найти';

  @override
  String get helpCategories => 'Категории: фильтр записей';

  @override
  String get helpLock => 'Значок замка: заблокировать хранилище';

  @override
  String get helpSettings =>
      'Настройки: резервная копия, автоблокировка и другое';

  @override
  String get helpStats => 'Нижняя панель: сводка хранилища';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Переместить $count выбранной записи в корзину?',
      many: 'Переместить $count выбранных записей в корзину?',
      few: 'Переместить $count выбранные записи в корзину?',
      one: 'Переместить $count выбранную запись в корзину?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Название банка';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Пароль интернет-банка';

  @override
  String get fcCardPin => 'ПИН-код карты';

  @override
  String get fcCardNumber => 'Номер карты';

  @override
  String get fcExpiryDate => 'Срок действия';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Номер поддержки';

  @override
  String get fcCustomerNoTc => 'Номер клиента / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Тип счёта';

  @override
  String get fcPhoneBankingPassword => 'Пароль телефонного банка';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Выписка / Платёж до';

  @override
  String get fcAccountTitle => 'Владелец счёта';

  @override
  String get fcEmailAddress => 'Адрес эл. почты';

  @override
  String get fcRecoveryEmail => 'Резервная почта';

  @override
  String get fcRecoveryPhone => 'Резервный телефон';

  @override
  String get fc2faBackupCodes => '2FA / Резервные коды';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Контрольный вопрос';

  @override
  String get fcPasswordChangeDate => 'Пароль изменён';

  @override
  String get fcPlatformTitle => 'Платформа / Название';

  @override
  String get fcUsernameProfileId => 'Логин / ID профиля';

  @override
  String get fcRegisteredEmail => 'Почта при регистрации';

  @override
  String get fcRegisteredPhone => 'Телефон при регистрации';

  @override
  String get fcProfileUrl => 'URL профиля';

  @override
  String get fcAccountTypeStatus => 'Тип / Статус аккаунта';

  @override
  String get fcLinkedMainAccount => 'Связанный аккаунт';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => 'Секретный ключ 2FA';

  @override
  String get fcServiceName => 'Организация';

  @override
  String get fcCompanyName => 'Название компании';

  @override
  String get fcCorporateUserId => 'Логин / Корпоративный ID';

  @override
  String get fcPanelUrl => 'URL панели';

  @override
  String get fcDepartmentPosition => 'Отдел / Должность';

  @override
  String get fcLicenseCode => 'Клиент / Лицензия';

  @override
  String get fcSupportContact => 'Контакт поддержки';

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
  String get fcSiteName => 'Название сайта';

  @override
  String get fcWebAddress => 'URL сайта';

  @override
  String get fcUsernameEmail => 'Логин / Почта';

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
  String get pickFieldTitle => 'Выберите поле';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Настройки генератора';

  @override
  String get saveAndExit => 'Сохранить и выйти';

  @override
  String get customField => 'Своё поле';

  @override
  String get customFieldName => 'Название поля';

  @override
  String get customFieldType => 'Тип поля';

  @override
  String get customTypeText => 'Текст';

  @override
  String get customTypeNote => 'Заметка';

  @override
  String get customTypePassword => 'Пароль';

  @override
  String get customTypeDate => 'Дата';

  @override
  String get customTypePhone => 'Телефон';

  @override
  String get orphanVaultTitle => 'Найдено старое хранилище';

  @override
  String get orphanVaultBody =>
      'На этом устройстве есть файл старого хранилища, но его ключи не читаются, поэтому открыть его нельзя. Если продолжить, эти старые данные будут удалены. Если у вас есть резервная копия, создайте новое хранилище и затем восстановите её.';

  @override
  String get orphanVaultReplace => 'Удалить и продолжить';

  @override
  String get forgotOldPassword => 'Я не помню текущий пароль';

  @override
  String get useCurrentPassword => 'Ввести текущий пароль';

  @override
  String get forgotPasswordBioHint =>
      'Подтвердите отпечатком пальца или лицом, чтобы задать новый мастер-пароль. Ваши записи останутся без изменений.';

  @override
  String get bioConfirmFailed =>
      'Биометрическое подтверждение не удалось или было отменено.';

  @override
  String get biometricChangedBody =>
      'Настройки отпечатка или лица изменились, поэтому вход по биометрии отключён для вашей безопасности.';

  @override
  String get limitReachedTitle => 'Достигнут лимит бесплатной версии';

  @override
  String limitReachedBody(int count) {
    return 'В бесплатной версии можно хранить до $count записей в каждой категории. Удалите запись или перейдите на Pro, чтобы снять ограничение.';
  }

  @override
  String get scanLimitTitle => 'Бесплатные сканирования закончились';

  @override
  String scanLimitBody(int count) {
    return 'Вы использовали все бесплатные сканирования ($count). Перейдите на Pro для безлимитного сканирования.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return 'Добавлено: $added, не восстановлено: $limited (лимит бесплатной версии). Файл резервной копии не изменился.';
  }

  @override
  String get aboutSection => 'О ПРИЛОЖЕНИИ';

  @override
  String get aboutVersion => 'Версия';

  @override
  String get aboutProtectionTitle => 'Как защищены ваши данные';

  @override
  String get aboutProtectionBody =>
      'Каждая запись шифруется на этом устройстве алгоритмом AES-256. Ключ, открывающий хранилище, создаётся из мастер-пароля с помощью Argon2id; сам пароль нигде не хранится.';

  @override
  String get aboutOfflineTitle => 'Работает без интернета';

  @override
  String get aboutOfflineBody =>
      'У Muhur нет доступа к интернету, аккаунта и сервера. Ваши данные не покидают устройство, если вы сами не экспортируете зашифрованную копию.';

  @override
  String get aboutLicenses => 'Лицензии open source';

  @override
  String get aboutLicensesDesc =>
      'Лицензии компонентов с открытым исходным кодом, используемых в Muhur';

  @override
  String get aboutRights => 'Все права защищены.';
}
