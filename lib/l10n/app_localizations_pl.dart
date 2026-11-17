// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Banki';

  @override
  String get catWebsites => 'Strony WWW';

  @override
  String get catEmails => 'E-maile';

  @override
  String get catSocial => 'Social media';

  @override
  String get catBusiness => 'Praca';

  @override
  String get catOther => 'Inne';

  @override
  String get setupTitle => 'Utwórz hasło główne';

  @override
  String get setupInfo =>
      'Tego hasła nie da się odzyskać. Jeśli je zapomnisz, Twoich danych nigdy nie będzie można otworzyć.';

  @override
  String get masterPassword => 'Hasło główne';

  @override
  String get confirmPassword => 'Potwierdź hasło';

  @override
  String get changeMasterPassword => 'Zmień hasło główne';

  @override
  String get currentPassword => 'Obecne hasło';

  @override
  String get newPassword => 'Nowe hasło';

  @override
  String get newPasswordSame => 'Nowe hasło musi różnić się od obecnego.';

  @override
  String get change => 'Zmień';

  @override
  String get masterPasswordChanged => 'Hasło główne zostało zmienione.';

  @override
  String get changePasswordFailed =>
      'Nie udało się zmienić hasła. Spróbuj ponownie.';

  @override
  String get passwordTooShort => 'Użyj co najmniej 8 znaków.';

  @override
  String get passwordNeedsMix => 'Użyj małych i wielkich liter oraz cyfry.';

  @override
  String get reqLength => 'Co najmniej 8 znaków';

  @override
  String get reqLower => 'Mała litera';

  @override
  String get reqUpper => 'Wielka litera';

  @override
  String get reqDigit => 'Cyfra';

  @override
  String get reqSpecial => 'Znak specjalny (!@#...) – opcjonalnie';

  @override
  String get reqOptional => 'opcjonalnie';

  @override
  String get passwordsDontMatch => 'Hasła nie są zgodne.';

  @override
  String get createVault => 'Utwórz';

  @override
  String get unlock => 'Otwórz';

  @override
  String get wrongPassword => 'Nieprawidłowe hasło główne.';

  @override
  String lockedOut(int seconds) {
    return 'Zbyt wiele prób. Spróbuj ponownie za $seconds s.';
  }

  @override
  String get enableBiometricsQ => 'Włączyć odblokowanie biometryczne?';

  @override
  String get enable => 'Włącz';

  @override
  String get notNow => 'Nie teraz';

  @override
  String get biometricReason => 'Odblokuj Muhur';

  @override
  String get lockNow => 'Zablokuj';

  @override
  String get all => 'Wszystkie';

  @override
  String get noEntries => 'Brak wpisów';

  @override
  String get searchHint => 'Szukaj tytułu, domeny, tagu';

  @override
  String get addEntry => 'Dodaj wpis';

  @override
  String get editEntry => 'Edytuj wpis';

  @override
  String get title => 'Tytuł';

  @override
  String get category => 'Kategoria';

  @override
  String get domain => 'Domena (np. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Pola';

  @override
  String get addField => 'Dodaj pole';

  @override
  String get typeText => 'Tekst';

  @override
  String get sensitive => 'Ukryj wartość';

  @override
  String get save => 'Zapisz';

  @override
  String get delete => 'Usuń';

  @override
  String get moveToTrash => 'Do kosza';

  @override
  String get trash => 'Kosz';

  @override
  String get trashKeepFor => 'Trzymaj w koszu przez';

  @override
  String get trashHint =>
      'Usunięte wpisy pozostają zaszyfrowane w koszu i można je przywrócić. Po tej liczbie dni zostaną trwale usunięte przy następnym odblokowaniu sejfu. Skrócenie okresu usuwa też starsze wpisy z kosza. Opróżnienia kosza nie można cofnąć.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dnia',
      many: '$count dni',
      few: '$count dni',
      one: '1 dzień',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Kosz';

  @override
  String get trashEmpty => 'Kosz jest pusty.';

  @override
  String get restore => 'Przywróć';

  @override
  String get deleteForever => 'Usuń trwale';

  @override
  String get deleteForeverConfirm =>
      'Trwale usunąć ten wpis? Tego nie można cofnąć.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zostało $count dnia',
      many: 'Zostało $count dni',
      few: 'Zostały $count dni',
      one: 'Został 1 dzień',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Opróżnij';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisu',
      many: '$count wpisów',
      few: '$count wpisy',
      one: '1 wpis',
    );
    return 'Trwale usunąć z kosza $_temp0? Tego nie można cofnąć.';
  }

  @override
  String get cancel => 'Anuluj';

  @override
  String get deleteConfirm =>
      'Przenieść ten wpis do kosza? Możesz go przywrócić, dopóki kosz nie zostanie opróżniony.';

  @override
  String get titleRequired => 'Tytuł jest wymagany.';

  @override
  String get fieldUsername => 'Nazwa użytkownika';

  @override
  String get fieldPassword => 'Hasło';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notatki';

  @override
  String get copy => 'Kopiuj';

  @override
  String get settings => 'Ustawienia';

  @override
  String get settingsSecurity => 'Ochrona';

  @override
  String get settingsBackup => 'Kopia';

  @override
  String get settingsGeneral => 'Ogólne';

  @override
  String get settingsAbout => 'Info';

  @override
  String get autoLock => 'Autoblokada';

  @override
  String get immediately => 'Od razu';

  @override
  String get copyTimer => 'Czas schowka';

  @override
  String get copyTimerHint =>
      'Skopiowane dane są usuwane ze schowka po tym czasie, a sejf pozostaje do tego momentu odblokowany.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biometria';

  @override
  String get generator => 'Generator';

  @override
  String get generate => 'Generuj';

  @override
  String get length => 'Długość';

  @override
  String get lowercase => 'Małe litery (a-z)';

  @override
  String get uppercase => 'Wielkie litery (A-Z)';

  @override
  String get digits => 'Cyfry (0-9)';

  @override
  String get symbols => 'Symbole (!@#...)';

  @override
  String get avoidAmbiguous => 'Bez podobnych znaków (O/0, l/1)';

  @override
  String get regenerate => 'Nowe';

  @override
  String get usePassword => 'Użyj';

  @override
  String get strengthWeak => 'Słabe';

  @override
  String get strengthFair => 'Średnie';

  @override
  String get strengthGood => 'Dobre';

  @override
  String get strengthStrong => 'Silne';

  @override
  String get scan => 'Skanuj';

  @override
  String get scanHint =>
      'Trzymaj aparat nieruchomo nad tekstem. W trybie IBAN jest wykrywany automatycznie.';

  @override
  String get scanning => 'Skanowanie...';

  @override
  String get ibanCorrected =>
      'Możliwe, że poprawiono błąd OCR. Sprawdź dokładnie.';

  @override
  String get cameraError =>
      'Aparat jest niedostępny. Sprawdź uprawnienia aparatu.';

  @override
  String get editBeforeUse => 'Sprawdź i popraw';

  @override
  String get useValue => 'Użyj';

  @override
  String get scanIsThis => 'Czy to ten?';

  @override
  String get scanNo => 'Nie';

  @override
  String get scanYes => 'Tak';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Menedżer haseł';

  @override
  String get tagline =>
      'ZAPIECZĘTUJ swoje cyfrowe dane.\nBez serwerów. Tylko Ty i Twoje dane.\nMÜHÜR: najbezpieczniejszy zamek dla Twojej cyfrowej pamięci.';

  @override
  String get login => 'WEJDŹ';

  @override
  String get infoTitle => 'O Muhur';

  @override
  String get infoBody =>
      'Muhur przechowuje Twoje hasła zaszyfrowane wyłącznie na tym urządzeniu. Bez konta i bez serwera.\n\nHasła głównego nie da się odzyskać. Jeśli je zapomnisz, Twoich danych nie będzie można otworzyć, dlatego trzymaj zaszyfrowaną kopię zapasową.';

  @override
  String get understandNoRecovery =>
      'Rozumiem, że zapomnianego hasła głównego nie da się odzyskać.';

  @override
  String get close => 'Zamknij';

  @override
  String get language => 'Język';

  @override
  String get languageSystem => 'Domyślny systemu';

  @override
  String get sectionLanguage => 'JĘZYK';

  @override
  String get sectionExperience => 'OBSŁUGA';

  @override
  String get sectionAppearance => 'WYGLĄD';

  @override
  String get panelDarkness => 'Przyciemnienie paneli';

  @override
  String get panelDarknessDesc =>
      'Sprawia, że panele i karty są bardziej lub mniej przezroczyste';

  @override
  String get backgroundTitle => 'Tło';

  @override
  String get backgroundDim => 'Przyciemnienie';

  @override
  String get backgroundDimDesc => 'Przyciemnia lub rozjaśnia obraz tła';

  @override
  String get bgBronze => 'Brąz';

  @override
  String get bgEmber => 'Żar';

  @override
  String get bgSapphire => 'Szafir';

  @override
  String get bgObsidian => 'Obsydian';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Wskazówki';

  @override
  String get smartGuideDesc =>
      'Pokazuje krótkie wskazówki przy pierwszym użyciu funkcji';

  @override
  String get haptics => 'Wibracje';

  @override
  String get hapticsDesc =>
      'Krótka wibracja przy odblokowaniu odciskiem palca i przy kopiowaniu';

  @override
  String get reduceAnimations => 'Bez animacji';

  @override
  String get reduceAnimationsDesc =>
      'Wyłącza wszystkie animacje w aplikacji: drganie i świecenie ikony pomocy, menu pomocy, przejścia między ekranami, okna dialogowe i linię skanera. Przydatne na wolniejszych urządzeniach i dla osób wrażliwych na ruch.';

  @override
  String get resetTips => 'Resetuj wskazówki';

  @override
  String get resetTipsDesc =>
      'Pokaż ponownie animację pomocy i wszystkie wskazówki';

  @override
  String get tipsResetDone => 'Wskazówki zostaną pokazane ponownie';

  @override
  String get tipLongPress =>
      'Wskazówka: przytrzymaj wpis, aby go zaznaczyć, a potem usuń kilka naraz.';

  @override
  String get statTotal => 'Razem';

  @override
  String get statReused => 'Powtórzone';

  @override
  String get planFree => 'DARMOWY';

  @override
  String get screenshotAllow => 'Zezwalaj na zrzuty ekranu';

  @override
  String get screenshotAllowHint =>
      'Ochrona ekranu wyłącza się na ustawiony niżej czas, a potem włącza się automatycznie.';

  @override
  String get backupSection => 'ZASZYFROWANA KOPIA';

  @override
  String get backupExport => 'Utwórz kopię';

  @override
  String get backupExportDesc =>
      'Zapisuje wszystkie wpisy, łącznie z koszem, w pliku chronionym hasłem kopii. Przechowuj plik w bezpiecznym miejscu.';

  @override
  String get backupImport => 'Przywróć';

  @override
  String get backupImportDesc =>
      'Dodaje wpisy z pliku kopii. Istniejące wpisy nigdy nie są nadpisywane ani usuwane.';

  @override
  String get backupPasswordTitle => 'Hasło kopii';

  @override
  String get backupPasswordInfo =>
      'To hasło chroni plik kopii zapasowej. Może różnić się od hasła głównego. Jeśli je zapomnisz, kopii nie da się otworzyć.';

  @override
  String get backupEnterPassword => 'Wpisz hasło kopii';

  @override
  String get backupContinue => 'Dalej';

  @override
  String get backupSaved => 'Kopia zapisana';

  @override
  String get backupFailed => 'Nie udało się utworzyć kopii';

  @override
  String backupRestored(int added, int skipped) {
    return 'Dodano: $added, istniało już: $skipped';
  }

  @override
  String get backupWrongPassword => 'Nieprawidłowe hasło kopii';

  @override
  String get backupInvalidFile => 'To nie jest prawidłowy plik kopii Muhur';

  @override
  String get backupReminderTitle => 'Przypomnienie o kopii';

  @override
  String get backupReminderDesc =>
      'Przypomina na ekranie głównym, gdy ostatnia kopia jest starsza niż ten okres. Ustaw 0, aby wyłączyć.';

  @override
  String get backupReminderOff => 'Wył.';

  @override
  String get backupReminderNever =>
      'Nie masz jeszcze kopii zapasowej. Zrób ją teraz, aby nie stracić haseł.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ostatnia kopia była $days dnia temu.',
      many: 'Ostatnia kopia była $days dni temu.',
      few: 'Ostatnia kopia była $days dni temu.',
      one: 'Ostatnia kopia była 1 dzień temu.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Zrób kopię';

  @override
  String get backupReminderLater => 'Później';

  @override
  String get statusScreenOn =>
      'Ochrona ekranu włączona: zrzuty i nagrywanie ekranu są zablokowane';

  @override
  String get statusScreenOff =>
      'Ochrona ekranu tymczasowo wyłączona: zrzuty ekranu są dozwolone';

  @override
  String get statusBackupNever => 'Brak kopii. Utwórz ją w Ustawienia > Kopia';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ostatnia kopia: $days dnia temu',
      many: 'Ostatnia kopia: $days dni temu',
      few: 'Ostatnia kopia: $days dni temu',
      one: 'Ostatnia kopia: wczoraj',
      zero: 'Kopia z dzisiaj',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Kopia zaległa: ostatnia $days dnia temu',
      many: 'Kopia zaległa: ostatnia $days dni temu',
      few: 'Kopia zaległa: ostatnia $days dni temu',
      one: 'Kopia zaległa: ostatnia 1 dzień temu',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wpisu w koszu',
      many: '$count wpisów w koszu',
      few: '$count wpisy w koszu',
      one: '1 wpis w koszu',
      zero: 'Kosz jest pusty',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Odblokowanie biometryczne włączone';

  @override
  String get statusBiometricOff =>
      'Odblokowanie biometryczne wyłączone (dotknij, aby ustawić)';

  @override
  String get helpStatusScreen =>
      'Ikona tarczy: ochrona ekranu (zielona = wł., blada = wył.)';

  @override
  String get helpStatusBackup =>
      'Ikona kopii: stan kopii zapasowej (zielona = świeża kopia, blada = czas na kopię)';

  @override
  String get helpStatusTrash =>
      'Ikona kosza: usunięte wpisy (liczba = oczekujące wpisy, dotknij, aby otworzyć)';

  @override
  String get helpStatusBiometric =>
      'Ikona odcisku: odblokowanie biometryczne (zielona = wł., dotknij, aby zmienić)';

  @override
  String get helpTitle => 'Pomoc';

  @override
  String get helpMenuTitle => 'Jak używać?';

  @override
  String get helpAdd => 'Przycisk +: dodaj nowy wpis';

  @override
  String get helpTap => 'Dotknij karty: zobacz szczegóły';

  @override
  String get helpLongPress => 'Przytrzymaj: zaznacz i usuń';

  @override
  String get helpSearch => 'Szukaj: znajdź szybko';

  @override
  String get helpCategories => 'Kategorie: filtruj wpisy';

  @override
  String get helpLock => 'Ikona kłódki: zablokuj sejf teraz';

  @override
  String get helpSettings => 'Ustawienia: kopia, autoblokada i więcej';

  @override
  String get helpStats => 'Dolny panel: podsumowanie sejfu';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Przenieść $count zaznaczonego wpisu do kosza?',
      many: 'Przenieść $count zaznaczonych wpisów do kosza?',
      few: 'Przenieść $count zaznaczone wpisy do kosza?',
      one: 'Przenieść zaznaczony wpis do kosza?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Nazwa banku';

  @override
  String get fcInternetBankingPassword => 'Hasło do bankowości';

  @override
  String get fcCardPin => 'PIN karty';

  @override
  String get fcCardNumber => 'Nr karty';

  @override
  String get fcExpiryDate => 'Data ważności';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Nr infolinii';

  @override
  String get fcCustomerNoTc => 'Nr klienta / PESEL';

  @override
  String get fcAccountType => 'Typ konta';

  @override
  String get fcPhoneBankingPassword => 'Hasło telefoniczne';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Wyciąg / Termin';

  @override
  String get fcAccountTitle => 'Właściciel konta';

  @override
  String get fcEmailAddress => 'Adres e-mail';

  @override
  String get fcRecoveryEmail => 'E-mail zapasowy';

  @override
  String get fcRecoveryPhone => 'Telefon zapasowy';

  @override
  String get fc2faBackupCodes => '2FA / Kody zapasowe';

  @override
  String get fcSecurityQA => 'Pytanie bezpieczeństwa';

  @override
  String get fcPasswordChangeDate => 'Zmiana hasła';

  @override
  String get fcPlatformTitle => 'Platforma / Nazwa';

  @override
  String get fcUsernameProfileId => 'Użytkownik / ID profilu';

  @override
  String get fcRegisteredEmail => 'E-mail rejestracji';

  @override
  String get fcRegisteredPhone => 'Telefon rejestracji';

  @override
  String get fcProfileUrl => 'URL profilu';

  @override
  String get fcAccountTypeStatus => 'Typ / Status konta';

  @override
  String get fcLinkedMainAccount => 'Powiązane konto';

  @override
  String get fc2faSecretKey => 'Klucz tajny 2FA';

  @override
  String get fcServiceName => 'Instytucja';

  @override
  String get fcCompanyName => 'Nazwa firmy';

  @override
  String get fcCorporateUserId => 'Użytkownik / ID firmowe';

  @override
  String get fcPanelUrl => 'URL panelu';

  @override
  String get fcDepartmentPosition => 'Dział / Stanowisko';

  @override
  String get fcLicenseCode => 'Klient / Licencja';

  @override
  String get fcSupportContact => 'Kontakt do wsparcia';

  @override
  String get fcSiteName => 'Nazwa strony';

  @override
  String get fcWebAddress => 'URL strony';

  @override
  String get fcUsernameEmail => 'Użytkownik / E-mail';

  @override
  String get pickFieldTitle => 'Wybierz pole';

  @override
  String get generatorSettings => 'Ustawienia generatora';

  @override
  String get saveAndExit => 'Zapisz i wyjdź';

  @override
  String get customField => 'Własne pole';

  @override
  String get customFieldName => 'Nazwa pola';

  @override
  String get customFieldType => 'Typ pola';

  @override
  String get customTypeText => 'Tekst';

  @override
  String get customTypeNote => 'Notatka';

  @override
  String get customTypePassword => 'Hasło';

  @override
  String get customTypeDate => 'Data';

  @override
  String get customTypePhone => 'Telefon';

  @override
  String get orphanVaultTitle => 'Znaleziono stary sejf';

  @override
  String get orphanVaultBody =>
      'Na tym urządzeniu jest plik starego sejfu, ale jego kluczy nie da się odczytać, więc nie można go otworzyć. Jeśli przejdziesz dalej, te stare dane zostaną usunięte. Jeśli masz kopię zapasową, utwórz nowy sejf, a potem ją przywróć.';

  @override
  String get orphanVaultReplace => 'Usuń i kontynuuj';

  @override
  String get forgotOldPassword => 'Nie pamiętam obecnego hasła';

  @override
  String get useCurrentPassword => 'Użyj jednak obecnego hasła';

  @override
  String get forgotPasswordBioHint =>
      'Potwierdź odciskiem palca lub twarzą, aby ustawić nowe hasło główne. Twoje wpisy pozostaną bez zmian.';

  @override
  String get bioConfirmFailed =>
      'Potwierdzenie biometryczne nie powiodło się lub zostało anulowane.';

  @override
  String get biometricChangedBody =>
      'Twoje ustawienia odcisku palca lub twarzy się zmieniły, więc dla bezpieczeństwa logowanie biometryczne zostało wyłączone.';

  @override
  String get limitReachedTitle => 'Osiągnięto limit darmowej wersji';

  @override
  String limitReachedBody(int count) {
    return 'Darmowa wersja mieści do $count wpisów w każdej kategorii. Usuń wpis lub przejdź na Pro, aby mieć nieograniczoną liczbę wpisów.';
  }

  @override
  String get scanLimitTitle => 'Darmowe skany wykorzystane';

  @override
  String scanLimitBody(int count) {
    return 'Wykorzystano wszystkie darmowe skany ($count). Przejdź na Pro, aby skanować bez limitu.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return 'Dodano: $added, nie przywrócono: $limited (limit darmowej wersji). Plik kopii pozostał bez zmian.';
  }

  @override
  String get aboutProtectionTitle => 'Jak chronione są Twoje dane';

  @override
  String get aboutProtectionBody =>
      'Wszystko, co zapisujesz, jest zamknięte silnym szyfrowaniem na tym telefonie. Otworzyć to może tylko Twoje hasło główne – nie jest ono nigdzie zapisywane, nawet przez MÜHÜR. Bez niego dane są nieczytelne.';

  @override
  String get aboutOfflineTitle => 'Działa offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR nigdy nie łączy się z internetem. Nie ma konta, serwera ani chmury. Twoje hasła zostają na tym telefonie, chyba że sam je wyeksportujesz jako zaszyfrowaną kopię lub plik Excela.';

  @override
  String get aboutRights => 'Wszelkie prawa zastrzeżone.';

  @override
  String statusClipboard(int seconds) {
    return 'Schowek zostanie wyczyszczony za $seconds s. Dotknij, aby wyczyścić teraz.';
  }

  @override
  String get helpStatusClipboard =>
      'Ikona schowka: skopiowana wartość (liczba = sekundy do wyczyszczenia, dotknij, aby wyczyścić teraz)';

  @override
  String aboutVersionLine(String version) {
    return 'Wersja $version';
  }

  @override
  String get aboutReleaseNotes => 'Informacje o wersji';

  @override
  String get aboutHowTitle => 'Jak to działa';

  @override
  String get aboutStoryTitle => 'Historia MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Kto stoi za MÜHÜR';

  @override
  String get aboutPrivacySection => 'POLITYKA PRYWATNOŚCI';

  @override
  String get aboutPermissionsTitle => 'Uprawnienia i dane';

  @override
  String get aboutSupportSection => 'POMOC';

  @override
  String get aboutRate => 'Oceń w Google Play';

  @override
  String get aboutRateDesc => 'Wystaw ocenę lub opinię na stronie sklepu';

  @override
  String get aboutInBrief => 'W skrócie';

  @override
  String get aboutTechnical => 'Szczegóły techniczne';

  @override
  String get aboutProtectionTech =>
      '• Sejf jest szyfrowany losowym kluczem 256-bitowym. Ten klucz jest pieczętowany algorytmem AES-256-GCM kluczem wyprowadzonym z hasła głównego za pomocą Argon2id (32 MiB pamięci, 3 przebiegi). Ustawienia wyprowadzania są powiązane z pieczęcią, więc każda manipulacja zostaje wykryta.\n• Baza danych jest szyfrowana przez SQLCipher; jej klucz powstaje z klucza sejfu za pomocą HKDF-SHA256.\n• Wrażliwe pola są dodatkowo szyfrowane AES-256-GCM i powiązane ze swoim wpisem i polem.\n• Po 5 błędnych hasłach aplikacja czeka 30 sekund, za każdym razem dwa razy dłużej, maksymalnie 1 godzinę. Zmiana zegara telefonu nie skraca oczekiwania.\n• Odblokowanie biometryczne akceptuje tylko silną biometrię (klasa 3) i wyłącza się po dodaniu nowego odcisku palca lub twarzy.\n• Zrzuty i nagrywanie ekranu są blokowane, sejf blokuje się po wyjściu z aplikacji, a skopiowane wartości są oznaczane jako wrażliwe i automatycznie usuwane.';

  @override
  String get aboutOfflineTech =>
      '• Opublikowana wersja aplikacji nie ma uprawnień do internetu ani sieci; są usuwane, nawet jeśli poprosi o nie jakaś biblioteka.\n• Kopia w chmurze i przenoszenie na inne urządzenie są wyłączone, więc dane aplikacji nie są kopiowane poza telefon.\n• Rozpoznawanie tekstu używa modelu wbudowanego w aplikację i działa na telefonie; obrazy z aparatu są przetwarzane w pamięci i nigdy nie są zapisywane.\n• Dane opuszczają telefon tylko wtedy, gdy sam je wyeksportujesz: jako zaszyfrowany plik kopii lub niezaszyfrowany plik Excela, za którego bezpieczeństwo odpowiadasz Ty.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR nie zbiera danych osobowych, nie wyświetla reklam, nie używa narzędzi analitycznych i niczego nikomu nie udostępnia. Prosi tylko o dostęp do aparatu (do skanowania tekstu) i biometrii (do odblokowania). Subskrypcjami zarządza Google Play; aplikacja nigdy nie widzi Twoich danych płatniczych. Usunięcie aplikacji usuwa wszystkie jej dane. Wcześniej możesz wyeksportować wpisy do Excela; za bezpieczeństwo tego pliku odpowiadasz Ty.';

  @override
  String get aboutPermissionsTech =>
      '• Aparat: używany tylko przy otwartym skanerze; zdjęcia nie są zapisywane, a dźwięk nie jest nagrywany.\n• Biometria: odcisk palca lub twarz sprawdza okno systemowe telefonu; MÜHÜR nigdy nie otrzymuje tych danych.\n• Pliki: dostęp tylko wtedy, gdy sam wybierasz miejsce zapisu lub otwarcia kopii albo pliku Excela.\n• Brak konta, serwera oraz identyfikatorów śledzących i reklamowych.\n• Pobieranie aplikacji i zakup subskrypcji obsługuje Google Play zgodnie z polityką prywatności Google.';

  @override
  String get how1T => 'Sejf i hasło główne';

  @override
  String get how1B =>
      'Wszystko jest przechowywane w zaszyfrowanym sejfie na tym telefonie. Otwiera go tylko Twoje hasło główne. Nie da się go odzyskać – wybierz takie, które zapamiętasz, i zrób kopię zapasową.';

  @override
  String get how2T => 'Wpisy i kategorie';

  @override
  String get how2B =>
      'Kategorie są stałe: Banki, Strony WWW, E-maile, Social media, Praca i Inne. Dodając wpis przyciskiem +, wybierasz jego kategorię, a ona dodaje pasujące pola. Nie można tworzyć nowych kategorii, ale przyciskiem „Dodaj pole” dodasz do wpisu kolejne pola: wybierz jedno z listy albo utwórz „Własne pole” z dowolną nazwą.';

  @override
  String get how3T => 'Bezpieczne kopiowanie';

  @override
  String get how3B =>
      'Dotknij pola, aby je skopiować. Schowek czyści się sam po ustawionym czasie. Ikona na ekranie głównym odlicza czas; dotknij jej, aby wyczyścić od razu.';

  @override
  String get how4T => 'Skanowanie aparatem';

  @override
  String get how4B =>
      'Skieruj aparat na kartę lub dokument, aby odczytać IBAN lub tekst zamiast go wpisywać. Sprawdź wynik przed zapisaniem.';

  @override
  String get how5T => 'Kosz';

  @override
  String get how5B =>
      'Usunięte wpisy czekają zaszyfrowane w koszu i można je przywrócić do końca ustawionego okresu.';

  @override
  String get how6T => 'Kopia i przywracanie';

  @override
  String get how6B =>
      'Utwórz zaszyfrowany plik kopii z osobnym hasłem i przechowuj go w bezpiecznym miejscu. Przywracanie tylko dodaje wpisy; istniejące nigdy nie są nadpisywane.';

  @override
  String get how7T => 'Blokada i biometria';

  @override
  String get how7B =>
      'Sejf blokuje się, gdy tylko wyjdziesz z aplikacji. Włącz biometrię, aby otwierać go odciskiem palca lub twarzą.';

  @override
  String get storyBody =>
      'Każdy wielki wynalazek zaczyna się od próby rozwiązania małego problemu z własnego życia. Historia MÜHÜR jest właśnie taka: to szczera, ale zdecydowana podróż, zrodzona z pamięci gubiącej się w chaosie cyfrowego świata i z instynktu ochrony tego, co własne.\n\nWszystko zaczęło się od irytującej przerwy spowodowanej jednym zapomnianym hasłem. MÜHÜR powstał jako osobista przystań, która działa tylko na moim własnym urządzeniu, bez zależności od cudzych serwerów w chmurze. Z czasem stało się jasne, że nie tylko ja chcę odzyskać swoją cyfrową prywatność.\n\nDziś MÜHÜR jest dla wszystkich, którzy chcą mieć pełną kontrolę nad swoimi danymi, nie powierzając ich żadnemu serwerowi.\n\nZapieczętuj najbezpieczniejszy zamek swojej cyfrowej pamięci.';

  @override
  String get devBody =>
      'MÜHÜR to niezależny projekt UEK DESIGNER, zaprojektowany i rozwijany w Turcji. Dziękujemy za korzystanie z MÜHÜR.';

  @override
  String get rn100 =>
      '• Pierwsza wersja.\n• Zaszyfrowany sejf na telefonie, otwierany hasłem głównym (Argon2id + AES-256).\n• Gotowe pola dla banków, stron, poczty, mediów społecznościowych i kont firmowych.\n• Generator haseł ze wskaźnikiem siły.\n• Skanowanie IBAN i tekstu aparatem.\n• Odblokowanie odciskiem palca i twarzą.\n• Zaszyfrowana kopia zapasowa i przywracanie.\n• Eksport do Excela (bez szyfrowania, na własną odpowiedzialność).\n• Kosz z automatycznym czyszczeniem.\n• Podsumowanie sejfu z powtórzonymi hasłami.\n• Automatyczna blokada, ochrona ekranu i odliczanie schowka.\n• Działa całkowicie offline.\n• 18 języków.';

  @override
  String get excelExport => 'Eksportuj do Excela';

  @override
  String get excelExportDesc =>
      'Niezaszyfrowany plik .xlsx z Twoimi wpisami, np. przed usunięciem aplikacji';

  @override
  String get excelExportWarnTitle => 'Eksport bez szyfrowania';

  @override
  String get excelExportWarn =>
      'Plik Excela NIE jest zaszyfrowany. Każdy, kto go zdobędzie, odczyta wszystkie Twoje hasła. Za to, gdzie go przechowujesz, komu go udostępniasz i czy potem go usuniesz, odpowiadasz wyłącznie Ty. Wpisy z kosza nie są uwzględniane.';

  @override
  String get excelExportAgree =>
      'Rozumiem – za bezpieczeństwo pliku odpowiadam ja.';

  @override
  String get excelExportSaved =>
      'Zapisano plik Excela. Usuń go, gdy nie będzie już potrzebny.';

  @override
  String get excelExportFailed => 'Nie udało się utworzyć pliku Excela.';

  @override
  String get excelColDomain => 'Domena';

  @override
  String get excelColUpdated => 'Ostatnia zmiana';

  @override
  String get how8T => 'Eksport do Excela';

  @override
  String get how8B =>
      '„Eksportuj do Excela” w ustawieniach kopii zapisuje wszystkie wpisy (bez kosza) w pliku .xlsx, z osobnym arkuszem dla każdej kategorii. Plik nie jest zaszyfrowany: potwierdzasz hasłem głównym i akceptujesz, że za jego bezpieczeństwo odpowiadasz Ty. Usuń go, gdy nie będzie już potrzebny.';

  @override
  String get proFeatureTitle => 'Funkcja Pro';

  @override
  String get proFieldsBody =>
      'Dodawanie dodatkowych pól do wpisu to funkcja Pro. Pola dodane wcześniej zostają i nadal można je edytować.';

  @override
  String get proBiometricBody =>
      'Odblokowanie odciskiem palca lub twarzą to funkcja Pro. Zawsze możesz odblokować hasłem głównym.';

  @override
  String get proBackgroundsBody =>
      'Dodatkowe tła to funkcja Pro. Tło domyślne jest zawsze dostępne.';

  @override
  String bioGraceWarn(String days) {
    return 'Odblokowanie odciskiem palca i twarzą pozostanie włączone jeszcze przez $days, a potem się wyłączy. Upewnij się, że pamiętasz hasło główne. Jeśli go nie pamiętasz, ustaw nowe odciskiem palca w Ustawieniach, w „Zmień hasło główne”.';
  }

  @override
  String get genNewPassword => 'Wygeneruj nowe hasło';

  @override
  String fieldRemoved(String label) {
    return 'Usunięto pole „$label”';
  }

  @override
  String get undo => 'Cofnij';

  @override
  String get proStatusActive => 'Twoja subskrypcja Pro jest aktywna';

  @override
  String proStatusTrial(String days) {
    return 'Darmowy okres próbny, pozostało: $days';
  }

  @override
  String get proStatusFree => 'Plan darmowy';

  @override
  String get proTrialInfo =>
      'Po okresie próbnym automatycznie przechodzisz na plan darmowy. Karta nie jest potrzebna i nic nie zostanie usunięte.';

  @override
  String get proFeatEntries => 'Nieograniczona liczba wpisów';

  @override
  String get proFeatEntriesDesc => 'Za darmo: 3 na kategorię';

  @override
  String get proFeatScan => 'Nieograniczone skanowanie aparatem';

  @override
  String get proFeatScanDesc => 'Za darmo: 3 skany';

  @override
  String get proFeatFields => 'Dodatkowe i własne pola';

  @override
  String get proFeatFieldsDesc => 'Dodaj do wpisu każde potrzebne pole';

  @override
  String get proFeatBio => 'Odblokowanie odciskiem palca i twarzą';

  @override
  String get proFeatBioDesc => 'Otwieraj sejf jednym dotknięciem';

  @override
  String get proFeatBg => 'Wszystkie tła';

  @override
  String get proFeatBgDesc => 'Wszystkie 5 teł';

  @override
  String get proFeatHealth => 'Kondycja sejfu';

  @override
  String get proFeatHealthDesc =>
      'Zobacz, które hasła są słabe lub powtórzone, i przejdź prosto do wpisu';

  @override
  String get proFeatTotp => 'Kody weryfikacji dwuetapowej';

  @override
  String get proFeatTotpDesc => 'Kody powstają offline w sejfie';

  @override
  String get proFeatHistory => 'Historia haseł';

  @override
  String get proFeatHistoryDesc =>
      'Stare hasła są zachowane, aby można było do nich wrócić';

  @override
  String get proYearly => 'Rocznie';

  @override
  String get proMonthly => 'Miesięcznie';

  @override
  String get proPerYear => '/ rok';

  @override
  String get proPerMonth => '/ miesiąc';

  @override
  String get proBestValue => 'Najkorzystniej';

  @override
  String get proSubscribe => 'Subskrybuj';

  @override
  String get proRestore => 'Przywróć zakup';

  @override
  String get proManage => 'Zarządzaj subskrypcją';

  @override
  String get proFinePrint =>
      'Płatność odbywa się przez Google Play. Subskrypcja odnawia się automatycznie, dopóki jej nie anulujesz – możesz to zrobić w każdej chwili w Google Play. Gdy subskrypcja wygaśnie, Twoje wpisy nie zostaną usunięte.';

  @override
  String get proComingSoon =>
      'Zakupy będą dostępne, gdy MÜHÜR pojawi się w Google Play.';

  @override
  String get proSeePlans => 'Zobacz Pro';

  @override
  String get proHealthBody =>
      'Podgląd wpisów ze słabymi lub powtórzonymi hasłami to funkcja Pro. Liczby są zawsze widoczne.';

  @override
  String get healthWeakHint =>
      'Krótkie lub łatwe do odgadnięcia. Zmień je za pomocą generatora haseł.';

  @override
  String get healthReusedHint =>
      'To samo hasło jest użyte w kilku wpisach. Jeśli jedno wycieknie, pozostałe też są zagrożone.';

  @override
  String get healthFairHint =>
      'Do przyjęcia, ale mogłyby być dłuższe i bardziej zróżnicowane.';

  @override
  String get healthAllGood =>
      'Brak słabych i powtórzonych haseł. Twój sejf jest w dobrej kondycji.';

  @override
  String get proHistoryBody =>
      'Podgląd wcześniejszych wartości hasła to funkcja Pro. Hasła zmienione w Pro są tu przechowywane.';

  @override
  String get historyEmpty =>
      'To hasło nie było jeszcze zmieniane. Gdy je zmienisz, poprzednia wartość pojawi się tutaj.';

  @override
  String get historyNote =>
      'Dla każdego pola hasła przechowywanych jest 10 ostatnich wartości, zaszyfrowanych jak reszta sejfu. Historia nie trafia do kopii zapasowych.';

  @override
  String get historyClearQ =>
      'Dotknij Usuń jeszcze raz, aby wyczyścić historię tego pola.';
}
