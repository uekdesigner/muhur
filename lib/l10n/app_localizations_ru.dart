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
  String get unlock => 'Открыть';

  @override
  String get wrongPassword => 'Неверный мастер-пароль.';

  @override
  String lockedOut(int seconds) {
    return 'Слишком много попыток. Повторите через $seconds с.';
  }

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
  String get typeText => 'Текст';

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
  String get scanning => 'Сканирование...';

  @override
  String get ibanCorrected =>
      'Возможно, исправлено после ошибки OCR. Проверьте внимательно.';

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
  String get screenshotAllow => 'Разрешить скриншоты';

  @override
  String get screenshotAllowHint =>
      'Защита экрана отключается на указанное ниже время, а затем снова включается автоматически.';

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
  String get fcSiteName => 'Название сайта';

  @override
  String get fcWebAddress => 'URL сайта';

  @override
  String get fcUsernameEmail => 'Логин / Почта';

  @override
  String get pickFieldTitle => 'Выберите поле';

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
  String get aboutProtectionTitle => 'Как защищены ваши данные';

  @override
  String get aboutProtectionBody =>
      'Всё, что вы сохраняете, надёжно зашифровано на этом телефоне. Открыть это может только ваш мастер-пароль — он нигде не хранится, даже в самом MÜHÜR. Без него данные невозможно прочитать.';

  @override
  String get aboutOfflineTitle => 'Работает без интернета';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR никогда не подключается к интернету. Нет ни аккаунта, ни сервера, ни облака. Ваши пароли остаются на этом телефоне, если только вы сами не экспортируете их — в виде зашифрованной копии или файла Excel.';

  @override
  String get aboutRights => 'Все права защищены.';

  @override
  String statusClipboard(int seconds) {
    return 'Буфер обмена очистится через $seconds с. Нажмите, чтобы очистить сейчас.';
  }

  @override
  String get helpStatusClipboard =>
      'Значок буфера: скопированное значение (число = секунды до очистки, нажмите, чтобы очистить сейчас)';

  @override
  String aboutVersionLine(String version) {
    return 'Версия $version';
  }

  @override
  String get aboutReleaseNotes => 'Что нового';

  @override
  String get aboutHowTitle => 'Как это работает';

  @override
  String get aboutStoryTitle => 'История MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Кто создаёт MÜHÜR';

  @override
  String get aboutPrivacySection => 'ПОЛИТИКА КОНФИДЕНЦИАЛЬНОСТИ';

  @override
  String get aboutPermissionsTitle => 'Разрешения и данные';

  @override
  String get aboutSupportSection => 'ПОДДЕРЖКА';

  @override
  String get aboutRate => 'Оценить в Google Play';

  @override
  String get aboutRateDesc =>
      'Поставьте оценку или оставьте отзыв на странице магазина';

  @override
  String get aboutInBrief => 'Кратко';

  @override
  String get aboutTechnical => 'Технические подробности';

  @override
  String get aboutProtectionTech =>
      '• Хранилище шифруется случайным 256-битным ключом. Этот ключ запечатывается алгоритмом AES-256-GCM с помощью ключа, полученного из мастер-пароля через Argon2id (32 МиБ памяти, 3 прохода). Параметры получения ключа привязаны к печати, поэтому любая подмена обнаруживается.\n• База данных зашифрована SQLCipher; её ключ получается из ключа хранилища через HKDF-SHA256.\n• Конфиденциальные поля дополнительно шифруются AES-256-GCM и привязываются к своей записи и полю.\n• После 5 неверных паролей приложение ждёт 30 секунд, каждый раз вдвое дольше, до 1 часа. Изменение часов телефона не сокращает ожидание.\n• Биометрическая разблокировка принимает только сильную биометрию (класс 3) и отключается при добавлении нового отпечатка или лица.\n• Снимки и запись экрана блокируются, хранилище закрывается при выходе из приложения, а скопированные значения помечаются как конфиденциальные и удаляются автоматически.';

  @override
  String get aboutOfflineTech =>
      '• В опубликованной версии приложения нет разрешений на интернет и сеть; они удаляются, даже если их запрашивает какая-либо библиотека.\n• Облачное резервное копирование и перенос на другое устройство отключены, поэтому данные приложения не копируются с телефона.\n• Распознавание текста использует встроенную в приложение модель и работает на телефоне; кадры с камеры обрабатываются в памяти и никогда не сохраняются.\n• Данные покидают телефон, только если вы сами их экспортируете: в виде зашифрованного файла копии или незашифрованного файла Excel, за безопасность которого отвечаете вы.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR не собирает персональные данные, не показывает рекламу, не использует аналитику и ничем ни с кем не делится. Приложение запрашивает только камеру (для сканирования текста) и биометрию (для разблокировки). Подписками управляет Google Play; приложение никогда не видит ваши платёжные данные. Удаление приложения удаляет все его данные. Перед этим можно экспортировать записи в Excel; за безопасность этого файла отвечаете вы.';

  @override
  String get aboutPermissionsTech =>
      '• Камера: используется только при открытом сканере; фото не сохраняются, звук не записывается.\n• Биометрия: отпечаток или лицо проверяет системное окно телефона; MÜHÜR никогда не получает эти данные.\n• Файлы: доступ только когда вы сами выбираете, куда сохранить или откуда открыть копию или файл Excel.\n• Нет аккаунта, сервера, идентификаторов отслеживания и рекламы.\n• Загрузку приложения и покупку подписки обрабатывает Google Play согласно политике конфиденциальности Google.';

  @override
  String get how1T => 'Хранилище и мастер-пароль';

  @override
  String get how1B =>
      'Всё хранится в зашифрованном хранилище на этом телефоне. Открыть его может только мастер-пароль. Восстановить его нельзя — выберите тот, что запомните, и сделайте резервную копию.';

  @override
  String get how2T => 'Записи и категории';

  @override
  String get how2B =>
      'Категории фиксированы: Банки, Сайты, Почта, Соцсети, Работа и Другое. Добавляя запись кнопкой +, вы выбираете её категорию, и она подставляет подходящие поля. Новые категории создать нельзя, но кнопкой «Новое поле» к записи можно добавить поля: выберите из списка или создайте «Своё поле» с любым названием.';

  @override
  String get how3T => 'Безопасное копирование';

  @override
  String get how3B =>
      'Нажмите на поле, чтобы скопировать его. Буфер обмена очищается сам через заданное время. Значок на главном экране показывает обратный отсчёт; нажмите на него, чтобы очистить сразу.';

  @override
  String get how4T => 'Сканирование камерой';

  @override
  String get how4B =>
      'Наведите камеру на карту или документ, чтобы считать IBAN или текст вместо ручного ввода. Проверьте результат перед сохранением.';

  @override
  String get how5T => 'Корзина';

  @override
  String get how5B =>
      'Удалённые записи хранятся в корзине в зашифрованном виде, и их можно восстановить до конца заданного срока.';

  @override
  String get how6T => 'Резервная копия и восстановление';

  @override
  String get how6B =>
      'Создайте зашифрованный файл копии с отдельным паролем и храните его в надёжном месте. Восстановление только добавляет записи; существующие никогда не перезаписываются.';

  @override
  String get how7T => 'Блокировка и биометрия';

  @override
  String get how7B =>
      'Хранилище блокируется, как только вы выходите из приложения. Включите биометрию, чтобы открывать его отпечатком пальца или лицом.';

  @override
  String get storyBody =>
      'Любое большое изобретение начинается с попытки решить маленькую проблему в собственной жизни. История MÜHÜR именно такая: искреннее, но целеустремлённое путешествие, рождённое из памяти, теряющейся в хаосе цифрового мира, и из инстинкта беречь своё.\n\nВсё началось с досадной паузы из-за одного забытого пароля. MÜHÜR был задуман как личное убежище, которое работает только на моём собственном устройстве и не зависит от чужих облачных серверов. Со временем стало ясно, что вернуть себе цифровую приватность хочу не только я.\n\nСегодня MÜHÜR — для всех, кто хочет полностью контролировать свои данные, не доверяя их никакому серверу.\n\nЗапечатайте самый надёжный замок своей цифровой памяти.';

  @override
  String get devBody =>
      'MÜHÜR — независимый проект UEK DESIGNER, созданный и развиваемый в Турции. Спасибо, что пользуетесь MÜHÜR.';

  @override
  String get rn100 =>
      '• Первая версия.\n• Зашифрованное хранилище на телефоне, открываемое мастер-паролем (Argon2id + AES-256).\n• Готовые поля для банков, сайтов, почты, соцсетей и рабочих аккаунтов.\n• Генератор паролей с индикатором надёжности.\n• Сканирование IBAN и текста камерой.\n• Разблокировка отпечатком пальца и лицом.\n• Зашифрованное резервное копирование и восстановление.\n• Экспорт в Excel (без шифрования, под вашу ответственность).\n• Корзина с автоматической очисткой.\n• Сводка хранилища с повторяющимися паролями.\n• Автоблокировка, защита экрана и обратный отсчёт буфера обмена.\n• Полностью работает без интернета.\n• 18 языков.';

  @override
  String get excelExport => 'Экспорт в Excel';

  @override
  String get excelExportDesc =>
      'Незашифрованный файл .xlsx с вашими записями, например перед удалением приложения';

  @override
  String get excelExportWarnTitle => 'Экспорт без шифрования';

  @override
  String get excelExportWarn =>
      'Файл Excel НЕ зашифрован. Любой, кто получит этот файл, сможет прочитать все ваши пароли. Где его хранить, кому передавать и удалить ли его потом — полностью ваша ответственность. Записи из корзины не включаются.';

  @override
  String get excelExportAgree => 'Понимаю: за безопасность файла отвечаю я.';

  @override
  String get excelExportSaved =>
      'Файл Excel сохранён. Удалите его, когда он больше не нужен.';

  @override
  String get excelExportFailed => 'Не удалось создать файл Excel.';

  @override
  String get excelColDomain => 'Домен';

  @override
  String get excelColUpdated => 'Последнее изменение';

  @override
  String get how8T => 'Экспорт в Excel';

  @override
  String get how8B =>
      '«Экспорт в Excel» в настройках резервного копирования записывает все ваши записи (кроме корзины) в файл .xlsx, по листу на каждую категорию. Файл не зашифрован: вы подтверждаете действие мастер-паролем и принимаете, что за его безопасность отвечаете вы. Удалите его, когда он больше не нужен.';

  @override
  String get proFeatureTitle => 'Функция Pro';

  @override
  String get proFieldsBody =>
      'Добавление дополнительных полей в запись — функция Pro. Уже добавленные поля остаются, и их можно редактировать.';

  @override
  String get proBiometricBody =>
      'Разблокировка отпечатком или лицом — функция Pro. Вы всегда можете разблокировать хранилище мастер-паролем.';

  @override
  String get proBackgroundsBody =>
      'Дополнительные фоны — функция Pro. Стандартный фон доступен всегда.';

  @override
  String bioGraceWarn(String days) {
    return 'Разблокировка отпечатком и лицом останется включённой ещё $days, затем отключится. Убедитесь, что помните мастер-пароль. Если вы его забыли, задайте новый с помощью отпечатка в настройках, в разделе «Сменить мастер-пароль».';
  }

  @override
  String get genNewPassword => 'Создать новый пароль';

  @override
  String fieldRemoved(String label) {
    return 'Поле «$label» удалено';
  }

  @override
  String get undo => 'Отменить';

  @override
  String get proStatusActive => 'Ваша подписка Pro активна';

  @override
  String proStatusTrial(String days) {
    return 'Бесплатный период, осталось: $days';
  }

  @override
  String get proStatusFree => 'Бесплатная версия';

  @override
  String get proTrialInfo =>
      'Когда пробный период закончится, вы автоматически перейдёте на бесплатную версию. Карта не нужна, ничего не удаляется.';

  @override
  String get proFeatEntries => 'Неограниченное число записей';

  @override
  String get proFeatEntriesDesc => 'Бесплатно: 3 в каждой категории';

  @override
  String get proFeatScan => 'Неограниченное сканирование камерой';

  @override
  String get proFeatScanDesc => 'Бесплатно: 3 сканирования';

  @override
  String get proFeatFields => 'Дополнительные и свои поля';

  @override
  String get proFeatFieldsDesc => 'Добавляйте в запись любые нужные поля';

  @override
  String get proFeatBio => 'Разблокировка отпечатком и лицом';

  @override
  String get proFeatBioDesc => 'Открывайте хранилище одним касанием';

  @override
  String get proFeatBg => 'Все фоны';

  @override
  String get proFeatBgDesc => 'Все 5 фонов';

  @override
  String get proFeatHealth => 'Проверка хранилища';

  @override
  String get proFeatHealthDesc =>
      'Узнайте, какие пароли слабые или повторяются, и сразу откройте нужную запись';

  @override
  String get proFeatTotp => 'Коды двухэтапной проверки';

  @override
  String get proFeatTotpDesc => 'Коды создаются офлайн прямо в хранилище';

  @override
  String get proFeatHistory => 'История паролей';

  @override
  String get proFeatHistoryDesc =>
      'Старые пароли сохраняются, чтобы к ним можно было вернуться';

  @override
  String get proYearly => 'Ежегодно';

  @override
  String get proMonthly => 'Ежемесячно';

  @override
  String get proPerYear => '/ год';

  @override
  String get proPerMonth => '/ месяц';

  @override
  String get proBestValue => 'Выгоднее всего';

  @override
  String get proSubscribe => 'Оформить подписку';

  @override
  String get proRestore => 'Восстановить покупку';

  @override
  String get proManage => 'Управлять подпиской';

  @override
  String get proFinePrint =>
      'Оплата проходит через Google Play. Подписка продлевается автоматически, пока вы её не отмените; отменить можно в любой момент в Google Play. Если подписка закончится, ваши записи не удаляются.';

  @override
  String get proComingSoon =>
      'Покупки станут доступны, когда MÜHÜR появится в Google Play.';

  @override
  String get proSeePlans => 'Подробнее о Pro';

  @override
  String get proHealthBody =>
      'Просмотр записей со слабыми или повторяющимися паролями — функция Pro. Количество видно всегда.';

  @override
  String get healthWeakHint =>
      'Короткие или легко угадываемые. Замените их с помощью генератора паролей.';

  @override
  String get healthReusedHint =>
      'Один и тот же пароль используется в нескольких записях. Если он утечёт, под угрозой окажутся и остальные.';

  @override
  String get healthFairHint =>
      'Допустимые, но могли бы быть длиннее и разнообразнее.';

  @override
  String get healthAllGood =>
      'Нет слабых или повторяющихся паролей. Хранилище в порядке.';

  @override
  String get proHistoryBody =>
      'Просмотр прежних значений пароля — функция Pro. Пароли, которые вы меняете с Pro, сохраняются здесь.';

  @override
  String get historyEmpty =>
      'Этот пароль ещё не меняли. Когда вы его измените, старое значение появится здесь.';

  @override
  String get historyNote =>
      'Для каждого поля пароля хранятся последние 10 значений, зашифрованных как и всё хранилище. История не входит в резервные копии.';

  @override
  String get historyClearQ =>
      'Нажмите «Удалить» ещё раз, чтобы очистить историю этого поля.';
}
