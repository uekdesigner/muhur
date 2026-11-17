// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Bankalar';

  @override
  String get catWebsites => 'Web Siteleri';

  @override
  String get catEmails => 'E-postalar';

  @override
  String get catSocial => 'Sosyal Medya';

  @override
  String get catBusiness => 'İş';

  @override
  String get catOther => 'Diğer';

  @override
  String get setupTitle => 'Ana parola oluştur';

  @override
  String get setupInfo =>
      'Bu parola kurtarılamaz. Unutursanız verileriniz asla açılamaz.';

  @override
  String get masterPassword => 'Ana parola';

  @override
  String get confirmPassword => 'Parolayı doğrula';

  @override
  String get changeMasterPassword => 'Ana parolayı değiştir';

  @override
  String get currentPassword => 'Mevcut parola';

  @override
  String get newPassword => 'Yeni parola';

  @override
  String get newPasswordSame => 'Yeni parola mevcut paroladan farklı olmalı.';

  @override
  String get change => 'Değiştir';

  @override
  String get masterPasswordChanged => 'Ana parola değiştirildi.';

  @override
  String get changePasswordFailed =>
      'Parola değiştirilemedi. Lütfen tekrar deneyin.';

  @override
  String get passwordTooShort => 'En az 8 karakter kullanın.';

  @override
  String get passwordNeedsMix => 'Küçük harf, büyük harf ve rakam kullanın.';

  @override
  String get reqLength => 'En az 8 karakter';

  @override
  String get reqLower => 'Küçük harf';

  @override
  String get reqUpper => 'Büyük harf';

  @override
  String get reqDigit => 'Rakam';

  @override
  String get reqSpecial => 'Özel karakter (!@#...) – isteğe bağlı';

  @override
  String get reqOptional => 'isteğe bağlı';

  @override
  String get passwordsDontMatch => 'Parolalar eşleşmiyor.';

  @override
  String get createVault => 'Oluştur';

  @override
  String get unlock => 'Aç';

  @override
  String get wrongPassword => 'Ana parola yanlış.';

  @override
  String lockedOut(int seconds) {
    return 'Çok fazla deneme. $seconds saniye sonra tekrar deneyin.';
  }

  @override
  String get enableBiometricsQ => 'Biyometrik kilit açma etkinleştirilsin mi?';

  @override
  String get enable => 'Etkinleştir';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get biometricReason => 'Muhur\'un kilidini aç';

  @override
  String get lockNow => 'Kilitle';

  @override
  String get all => 'Tümü';

  @override
  String get noEntries => 'Henüz kayıt yok';

  @override
  String get searchHint => 'Başlık, alan adı, etiket ara';

  @override
  String get addEntry => 'Kayıt ekle';

  @override
  String get editEntry => 'Kaydı düzenle';

  @override
  String get title => 'Başlık';

  @override
  String get category => 'Kategori';

  @override
  String get domain => 'Alan adı (örn. example.com)';

  @override
  String get tags => 'Etiket';

  @override
  String get fields => 'Alanlar';

  @override
  String get addField => 'Alan ekle';

  @override
  String get typeText => 'Metin';

  @override
  String get sensitive => 'Değeri gizle';

  @override
  String get save => 'Kaydet';

  @override
  String get delete => 'Sil';

  @override
  String get moveToTrash => 'Çöpe at';

  @override
  String get trash => 'Çöp kutusu';

  @override
  String get trashKeepFor => 'Çöpte saklama süresi';

  @override
  String get trashHint =>
      'Silinen kayıtlar şifreli olarak çöp kutusunda kalır ve geri alınabilir. Bu kadar gün sonra, kasa bir sonraki açıldığında kalıcı olarak silinir. Süreyi kısaltmak daha eski kayıtları da çöp kutusundan kaldırır. Çöp kutusunu boşaltmak geri alınamaz.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Çöp';

  @override
  String get trashEmpty => 'Çöp kutusu boş.';

  @override
  String get restore => 'Geri al';

  @override
  String get deleteForever => 'Kalıcı sil';

  @override
  String get deleteForeverConfirm =>
      'Bu kayıt kalıcı olarak silinsin mi? Bu işlem geri alınamaz.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün kaldı',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Çöpü boşalt';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kayıt',
    );
    return 'Çöp kutusundaki $_temp0 kalıcı olarak silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get cancel => 'İptal';

  @override
  String get deleteConfirm =>
      'Bu kayıt çöp kutusuna taşınsın mı? Çöp kutusu boşaltılana kadar geri alabilirsiniz.';

  @override
  String get titleRequired => 'Başlık gerekli.';

  @override
  String get fieldUsername => 'Kullanıcı adı';

  @override
  String get fieldPassword => 'Parola';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notlar';

  @override
  String get copy => 'Kopyala';

  @override
  String get settings => 'Ayarlar';

  @override
  String get settingsSecurity => 'Güvenlik';

  @override
  String get settingsBackup => 'Yedek';

  @override
  String get settingsGeneral => 'Genel';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get autoLock => 'Otomatik kilit';

  @override
  String get immediately => 'Anında';

  @override
  String get copyTimer => 'Kopyalama süresi';

  @override
  String get copyTimerHint =>
      'Kopyalanan veri bu süre sonunda panodan silinir ve o zamana kadar kasa açık kalır.';

  @override
  String secondsShort(int seconds) {
    return '$seconds sn';
  }

  @override
  String get biometricUnlock => 'Biyometrik';

  @override
  String get generator => 'Üretici';

  @override
  String get generate => 'Üret';

  @override
  String get length => 'Uzunluk';

  @override
  String get lowercase => 'Küçük harf (a-z)';

  @override
  String get uppercase => 'Büyük harf (A-Z)';

  @override
  String get digits => 'Rakam (0-9)';

  @override
  String get symbols => 'Sembol (!@#...)';

  @override
  String get avoidAmbiguous => 'Benzer karakter yok (O/0, l/1)';

  @override
  String get regenerate => 'Yenile';

  @override
  String get usePassword => 'Kullan';

  @override
  String get strengthWeak => 'Zayıf';

  @override
  String get strengthFair => 'Orta';

  @override
  String get strengthGood => 'İyi';

  @override
  String get strengthStrong => 'Güçlü';

  @override
  String get scan => 'Tara';

  @override
  String get scanHint =>
      'Kamerayı metnin üzerinde sabit tutun. IBAN modunda otomatik algılanır.';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get ibanCorrected =>
      'OCR hatasından sonra düzeltilmiş olabilir. Dikkatle kontrol edin.';

  @override
  String get cameraError =>
      'Kamera kullanılamıyor. Kamera iznini kontrol edin.';

  @override
  String get editBeforeUse => 'Kontrol et, gerekirse düzenle';

  @override
  String get useValue => 'Kullan';

  @override
  String get scanIsThis => 'Bu mu?';

  @override
  String get scanNo => 'Hayır';

  @override
  String get scanYes => 'Evet';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Parola Yöneticisi';

  @override
  String get tagline =>
      'Dijital verilerini MÜHÜR\'le.\nSunucu yok. Yalnızca siz ve verileriniz.\nDijital hafızanızın en güvenli kilidini MÜHÜR\'le.';

  @override
  String get login => 'GİRİŞ';

  @override
  String get infoTitle => 'Muhur Hakkında';

  @override
  String get infoBody =>
      'Muhur, parolalarınızı yalnızca bu cihazda şifreli olarak saklar. Hesap ve sunucu yoktur.\n\nAna parolanız kurtarılamaz. Unutursanız verileriniz açılamaz, bu yüzden şifreli bir yedek tutun.';

  @override
  String get understandNoRecovery =>
      'Unutulan ana parolanın kurtarılamayacağını anlıyorum.';

  @override
  String get close => 'Kapat';

  @override
  String get language => 'Dil';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get sectionLanguage => 'DİL';

  @override
  String get sectionExperience => 'DENEYİM';

  @override
  String get sectionAppearance => 'GÖRÜNÜM';

  @override
  String get panelDarkness => 'Panel koyuluğu';

  @override
  String get panelDarknessDesc =>
      'Panelleri ve kartları az ya da çok saydam yapar';

  @override
  String get backgroundTitle => 'Arka plan';

  @override
  String get backgroundDim => 'Karartma';

  @override
  String get backgroundDimDesc => 'Arka plan görselini koyulaştırır veya açar';

  @override
  String get bgBronze => 'Bronz';

  @override
  String get bgEmber => 'Kor';

  @override
  String get bgSapphire => 'Safir';

  @override
  String get bgObsidian => 'Obsidyen';

  @override
  String get bgLumen => 'Lümen';

  @override
  String get smartGuide => 'Akıllı ipuçları';

  @override
  String get smartGuideDesc =>
      'Bir özelliği ilk kullandığınızda kısa ipuçları gösterir';

  @override
  String get haptics => 'Titreşim';

  @override
  String get hapticsDesc =>
      'Parmak izi ile açarken ve kopyalarken kısa titreşim verir';

  @override
  String get reduceAnimations => 'Animasyon kapalı';

  @override
  String get reduceAnimationsDesc =>
      'Uygulamadaki tüm animasyonları kapatır: yardım simgesinin sallanması ve parlaması, yardım menüsü, sayfa geçişleri, diyaloglar ve tarayıcı çizgisi. Yavaş cihazlarda ve harekete duyarlı kişiler için faydalıdır.';

  @override
  String get resetTips => 'İpuçlarını sıfırla';

  @override
  String get resetTipsDesc =>
      'Yardım animasyonunu ve tüm ipuçlarını yeniden göster';

  @override
  String get tipsResetDone => 'İpuçları yeniden gösterilecek';

  @override
  String get tipLongPress =>
      'İpucu: Bir kaydı seçmek için uzun basın, ardından birden fazlasını aynı anda silin.';

  @override
  String get statTotal => 'Toplam';

  @override
  String get statReused => 'Tekrar';

  @override
  String get planFree => 'ÜCRETSİZ';

  @override
  String get screenshotAllow => 'Ekran görüntüsüne izin ver';

  @override
  String get screenshotAllowHint =>
      'Ekran koruması aşağıda ayarlanan süre boyunca kapatılır, sonra otomatik olarak yeniden açılır.';

  @override
  String get backupSection => 'ŞİFRELİ YEDEK';

  @override
  String get backupExport => 'Yedek oluştur';

  @override
  String get backupExportDesc =>
      'Çöp kutusu dahil tüm kayıtları yedek parolasıyla korunan bir dosyaya kaydeder. Dosyayı güvenli bir yerde saklayın.';

  @override
  String get backupImport => 'Geri yükle';

  @override
  String get backupImportDesc =>
      'Yedek dosyasındaki kayıtları ekler. Mevcut kayıtlar asla üzerine yazılmaz veya silinmez.';

  @override
  String get backupPasswordTitle => 'Yedek parolası';

  @override
  String get backupPasswordInfo =>
      'Bu parola yedek dosyasını korur. Ana parolanızdan farklı olabilir. Unutursanız yedek açılamaz.';

  @override
  String get backupEnterPassword => 'Yedek parolasını girin';

  @override
  String get backupContinue => 'İleri';

  @override
  String get backupSaved => 'Yedek kaydedildi';

  @override
  String get backupFailed => 'Yedek oluşturulamadı';

  @override
  String backupRestored(int added, int skipped) {
    return '$added eklendi, $skipped zaten vardı';
  }

  @override
  String get backupWrongPassword => 'Yedek parolası yanlış';

  @override
  String get backupInvalidFile => 'Bu geçerli bir Muhur yedek dosyası değil';

  @override
  String get backupReminderTitle => 'Yedek hatırlatıcı';

  @override
  String get backupReminderDesc =>
      'Son yedeğiniz bundan eskiyse ana ekranda hatırlatır. Kapatmak için 0 yapın.';

  @override
  String get backupReminderOff => 'Kapalı';

  @override
  String get backupReminderNever =>
      'Henüz yedek almadınız. Parolalarınızı kaybetmemek için şimdi yedekleyin.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Son yedeğiniz $days gün önceydi.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Yedekle';

  @override
  String get backupReminderLater => 'Sonra';

  @override
  String get statusScreenOn =>
      'Ekran koruması açık: ekran görüntüsü ve ekran kaydı engellendi';

  @override
  String get statusScreenOff =>
      'Ekran koruması şimdilik kapalı: ekran görüntüsüne izin var';

  @override
  String get statusBackupNever =>
      'Henüz yedek yok. Ayarlar > Yedek bölümünden oluşturun';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Son yedek: $days gün önce',
      one: 'Son yedek: dün',
      zero: 'Bugün yedeklendi',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Yedek gecikti: sonuncusu $days gün önce',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Çöp kutusunda $count kayıt',
      zero: 'Çöp kutusu boş',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Biyometrik kilit açık';

  @override
  String get statusBiometricOff =>
      'Biyometrik kilit kapalı (kurmak için dokunun)';

  @override
  String get helpStatusScreen =>
      'Kalkan simgesi: Ekran koruması (yeşil = açık, soluk = kapalı)';

  @override
  String get helpStatusBackup =>
      'Yedek simgesi: Yedek durumu (yeşil = yeni yedek, soluk = yedek gerekli)';

  @override
  String get helpStatusTrash =>
      'Çöp simgesi: Silinen kayıtlar (rakam = bekleyen kayıt, dokununca açılır)';

  @override
  String get helpStatusBiometric =>
      'Parmak izi simgesi: Biyometrik kilit (yeşil = açık, dokununca ayarlar açılır)';

  @override
  String get helpTitle => 'Yardım';

  @override
  String get helpMenuTitle => 'Nasıl kullanılır?';

  @override
  String get helpAdd => '+ düğmesi: Yeni kayıt ekle';

  @override
  String get helpTap => 'Karta dokun: Ayrıntıları gör';

  @override
  String get helpLongPress => 'Uzun bas: Seç ve sil';

  @override
  String get helpSearch => 'Arama: Hızlıca bul';

  @override
  String get helpCategories => 'Kategoriler: Kayıtları filtrele';

  @override
  String get helpLock => 'Kilit simgesi: Kasayı şimdi kilitle';

  @override
  String get helpSettings => 'Ayarlar: Yedek, otomatik kilit ve daha fazlası';

  @override
  String get helpStats => 'Alt panel: Kasa özeti';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Seçilen $count kayıt çöp kutusuna taşınsın mı?';
  }

  @override
  String get fcBankName => 'Banka Adı';

  @override
  String get fcInternetBankingPassword => 'Bankacılık Parolası';

  @override
  String get fcCardPin => 'Kart PIN\'i';

  @override
  String get fcCardNumber => 'Kart No';

  @override
  String get fcExpiryDate => 'Son Kullanma';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Destek No';

  @override
  String get fcCustomerNoTc => 'Müşteri No / TC';

  @override
  String get fcAccountType => 'Hesap Türü';

  @override
  String get fcPhoneBankingPassword => 'Telefon Parolası';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Ekstre / Son Ödeme';

  @override
  String get fcAccountTitle => 'Hesap Adı';

  @override
  String get fcEmailAddress => 'E-posta';

  @override
  String get fcRecoveryEmail => 'Kurtarma E-postası';

  @override
  String get fcRecoveryPhone => 'Kurtarma Telefonu';

  @override
  String get fc2faBackupCodes => '2FA / Yedek Kodlar';

  @override
  String get fcSecurityQA => 'Güvenlik Sorusu';

  @override
  String get fcPasswordChangeDate => 'Parola Değişimi';

  @override
  String get fcPlatformTitle => 'Platform / Ad';

  @override
  String get fcUsernameProfileId => 'Kullanıcı Adı / Profil ID';

  @override
  String get fcRegisteredEmail => 'Kayıtlı E-posta';

  @override
  String get fcRegisteredPhone => 'Kayıtlı Telefon';

  @override
  String get fcProfileUrl => 'Profil URL';

  @override
  String get fcAccountTypeStatus => 'Hesap Türü / Durum';

  @override
  String get fcLinkedMainAccount => 'Bağlı Hesap';

  @override
  String get fc2faSecretKey => '2FA Gizli Anahtar';

  @override
  String get fcServiceName => 'Kurum';

  @override
  String get fcCompanyName => 'Şirket Adı';

  @override
  String get fcCorporateUserId => 'Kullanıcı Adı / Kurum ID';

  @override
  String get fcPanelUrl => 'Panel URL';

  @override
  String get fcDepartmentPosition => 'Departman / Görev';

  @override
  String get fcLicenseCode => 'Müşteri / Lisans';

  @override
  String get fcSupportContact => 'Destek Kişisi';

  @override
  String get fcSiteName => 'Site Adı';

  @override
  String get fcWebAddress => 'Web URL';

  @override
  String get fcUsernameEmail => 'Kullanıcı Adı / E-posta';

  @override
  String get pickFieldTitle => 'Alan seç';

  @override
  String get generatorSettings => 'Üretici ayarları';

  @override
  String get saveAndExit => 'Kaydet ve çık';

  @override
  String get customField => 'Özel alan';

  @override
  String get customFieldName => 'Alan adı';

  @override
  String get customFieldType => 'Alan türü';

  @override
  String get customTypeText => 'Metin';

  @override
  String get customTypeNote => 'Not';

  @override
  String get customTypePassword => 'Parola';

  @override
  String get customTypeDate => 'Tarih';

  @override
  String get customTypePhone => 'Telefon';

  @override
  String get orphanVaultTitle => 'Eski kasa bulundu';

  @override
  String get orphanVaultBody =>
      'Bu cihazda önceden kalma bir kasa dosyası var, ancak anahtarları okunamadığı için açılamıyor. Devam ederseniz bu eski veriler silinir. Yedeğiniz varsa yeni bir kasa oluşturup ardından yedeği geri yükleyin.';

  @override
  String get orphanVaultReplace => 'Sil ve devam et';

  @override
  String get forgotOldPassword => 'Mevcut parolamı hatırlamıyorum';

  @override
  String get useCurrentPassword => 'Bunun yerine mevcut parolamı kullan';

  @override
  String get forgotPasswordBioHint =>
      'Yeni bir ana parola belirlemek için parmak izinizle veya yüzünüzle onaylayın. Kayıtlarınız olduğu gibi kalır.';

  @override
  String get bioConfirmFailed =>
      'Biyometrik onay başarısız oldu veya iptal edildi.';

  @override
  String get biometricChangedBody =>
      'Parmak izi veya yüz ayarlarınız değiştiği için güvenliğiniz adına biyometrik giriş kapatıldı.';

  @override
  String get limitReachedTitle => 'Ücretsiz sınıra ulaşıldı';

  @override
  String limitReachedBody(int count) {
    return 'Ücretsiz sürümde her kategoride en fazla $count kayıt tutulabilir. Sınırsız kayıt için bir kaydı silin veya Pro\'ya geçin.';
  }

  @override
  String get scanLimitTitle => 'Ücretsiz taramalar bitti';

  @override
  String scanLimitBody(int count) {
    return '$count ücretsiz tarama hakkınızı kullandınız. Sınırsız tarama için Pro\'ya geçin.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added eklendi, $limited geri yüklenmedi (ücretsiz sınıra ulaşıldı). Yedek dosyanız değişmedi.';
  }

  @override
  String get aboutProtectionTitle => 'Verileriniz nasıl korunur';

  @override
  String get aboutProtectionBody =>
      'Kaydettiğiniz her şey bu telefonda güçlü bir şifrelemeyle kilitlenir. Kilidi yalnızca ana parolanız açar; parolanız hiçbir yerde, MÜHÜR\'ün kendisinde bile saklanmaz. O olmadan veriler okunamaz.';

  @override
  String get aboutOfflineTitle => 'İnternetsiz çalışır';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR internete hiç bağlanmaz. Hesap, sunucu ya da bulut yoktur. Parolalarınız, siz kendiniz şifreli bir yedek ya da Excel dosyası olarak dışa aktarmadıkça bu telefondan çıkmaz.';

  @override
  String get aboutRights => 'Tüm hakları saklıdır.';

  @override
  String statusClipboard(int seconds) {
    return 'Pano $seconds sn sonra temizlenecek. Hemen temizlemek için dokunun.';
  }

  @override
  String get helpStatusClipboard =>
      'Pano simgesi: Kopyalanan değer (rakam = silinmeye kalan saniye, dokununca hemen silinir)';

  @override
  String aboutVersionLine(String version) {
    return 'Sürüm $version';
  }

  @override
  String get aboutReleaseNotes => 'Sürüm notları';

  @override
  String get aboutHowTitle => 'Nasıl çalışır';

  @override
  String get aboutStoryTitle => 'MÜHÜR\'ün hikâyesi';

  @override
  String get aboutDeveloperTitle => 'Geliştirici hakkında';

  @override
  String get aboutPrivacySection => 'GİZLİLİK POLİTİKASI';

  @override
  String get aboutPermissionsTitle => 'İzinler ve veriler';

  @override
  String get aboutSupportSection => 'DESTEK';

  @override
  String get aboutRate => 'Google Play\'de değerlendir';

  @override
  String get aboutRateDesc => 'Mağaza sayfasında puan verin veya yorum bırakın';

  @override
  String get aboutInBrief => 'Kısaca';

  @override
  String get aboutTechnical => 'Teknik ayrıntı';

  @override
  String get aboutProtectionTech =>
      '• Kasa, rastgele üretilen 256 bitlik bir anahtarla şifrelenir. Bu anahtar, ana parolanızdan Argon2id (32 MiB bellek, 3 tur) ile türetilen anahtarla AES-256-GCM kullanılarak mühürlenir. Anahtar türetme ayarları mühre bağlıdır; değiştirilirse fark edilir.\n• Veritabanı SQLCipher ile şifrelenir; anahtarı kasa anahtarından HKDF-SHA256 ile türetilir.\n• Hassas alanlar ayrıca AES-256-GCM ile şifrelenir ve ait oldukları kayda ve alana bağlanır.\n• 5 yanlış parolanın ardından uygulama 30 saniye bekletir; süre her seferinde ikiye katlanarak en çok 1 saate çıkar. Telefonun saatini değiştirmek bekleme süresini kısaltmaz.\n• Biyometrik açma yalnızca güçlü (Class 3) biyometriyi kabul eder; yeni bir parmak izi veya yüz eklenirse kendiliğinden kapanır.\n• Ekran görüntüsü ve ekran kaydı engellenir, uygulamadan çıkınca kasa kilitlenir, kopyalanan değerler hassas olarak işaretlenir ve kendiliğinden silinir.';

  @override
  String get aboutOfflineTech =>
      '• Uygulamanın yayın sürümünde internet ve ağ izni yoktur; bir kütüphane istese bile kaldırılır.\n• Bulut yedeği ve cihazdan cihaza aktarım kapalıdır; uygulamanın verileri telefondan kopyalanmaz.\n• Metin tanıma, uygulamanın içinde gelen bir modelle telefonda çalışır; kamera görüntüleri bellekte işlenir ve kaydedilmez.\n• Veriler telefondan yalnızca sizin dışa aktarmanızla çıkar: şifreli bir yedek dosyası ya da güvenliği sizin sorumluluğunuzda olan şifresiz bir Excel dosyası olarak.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR kişisel veri toplamaz, reklam göstermez, analiz aracı kullanmaz ve hiçbir şeyi kimseyle paylaşmaz. Yalnızca kamera (metin taramak için) ve biyometri (kilidi açmak için) izni ister. Abonelikleri Google Play yönetir; uygulama ödeme bilgilerinizi görmez. Uygulamayı silmek tüm verilerini de siler. Silmeden önce kayıtlarınızı Excel\'e aktarabilirsiniz; bu dosyanın güvenliği sizin sorumluluğunuzdadır.';

  @override
  String get aboutPermissionsTech =>
      '• Kamera: yalnızca tarayıcı açıkken kullanılır; fotoğraf kaydedilmez, ses kaydı yapılmaz.\n• Biyometri: parmak izinizi veya yüzünüzü telefonun sistem penceresi doğrular; MÜHÜR bu verileri hiç almaz.\n• Dosyalar: yalnızca bir yedeği veya Excel dosyasını kaydetmek ya da açmak için konum seçtiğinizde erişilir.\n• Hesap, sunucu, izleme veya reklam kimliği yoktur.\n• Uygulamanın indirilmesi ve abonelik satın alımı Google Play tarafından, Google\'ın kendi gizlilik politikasına göre yürütülür.';

  @override
  String get how1T => 'Kasa ve ana parola';

  @override
  String get how1B =>
      'Her şey bu telefonda şifreli bir kasada durur. Kasayı yalnızca ana parolanız açar. Parola kurtarılamaz; hatırlayacağınız bir parola seçin ve yedek alın.';

  @override
  String get how2T => 'Kayıtlar ve kategoriler';

  @override
  String get how2B =>
      'Kategoriler sabittir: Bankalar, Web Siteleri, E-postalar, Sosyal Medya, İş ve Diğer. + düğmesiyle kayıt eklerken kategorisini seçersiniz; kategori o kayda uygun hazır alanları getirir. Yeni kategori eklenemez, ancak \"Alan ekle\" ile kayda alan ekleyebilirsiniz: listeden bir alan seçin ya da adını kendiniz verdiğiniz bir \"Özel alan\" oluşturun.';

  @override
  String get how3T => 'Güvenli kopyalama';

  @override
  String get how3B =>
      'Bir alanı kopyalamak için dokunun. Pano, ayarladığınız süre sonunda kendiliğinden temizlenir. Ana ekrandaki pano simgesi geri sayar; dokunursanız hemen temizler.';

  @override
  String get how4T => 'Kamerayla tarama';

  @override
  String get how4B =>
      'IBAN\'ı veya metni elle yazmak yerine kamerayı karta ya da belgeye tutun. Kaydetmeden önce sonucu kontrol edin.';

  @override
  String get how5T => 'Çöp kutusu';

  @override
  String get how5B =>
      'Silinen kayıtlar şifreli hâlde çöp kutusunda bekler ve ayarladığınız süre dolana kadar geri alınabilir.';

  @override
  String get how6T => 'Yedekleme ve geri yükleme';

  @override
  String get how6B =>
      'Kendi parolası olan şifreli bir yedek dosyası oluşturun ve güvenli bir yerde saklayın. Geri yükleme yalnızca kayıt ekler; mevcut kayıtların üzerine asla yazmaz.';

  @override
  String get how7T => 'Kilit ve biyometri';

  @override
  String get how7B =>
      'Uygulamadan çıktığınızda kasa kendiliğinden kilitlenir. Biyometriyi açarsanız parmak izinizle veya yüzünüzle açabilirsiniz.';

  @override
  String get storyBody =>
      'Her büyük buluş, insanın kendi hayatındaki ufak bir çıkmazı çözme çabasıyla başlar. MÜHÜR\'ün hikâyesi de tam olarak böyle: dijital dünyanın karmaşası içinde kaybolan hafızanın ve \"kendine ait olanı koruma\" içgüdüsünün doğurduğu samimi ama güçlü bir yolculuk.\n\nHer şey, unutulan tek bir şifrenin yarattığı o can sıkıcı duraklamayla başladı. MÜHÜR\'ü yabancı bulut sunucularına bağımlı kalmadan, yalnızca kendi cihazımda çalışan kişisel bir sığınak olarak tasarladım. Zamanla fark ettim ki dijital mahremiyetini geri isteyen tek kişi ben değilim.\n\nBugün MÜHÜR, verilerini hiçbir sunucuya emanet etmeden tamamen kendi kontrolünde tutmak isteyen herkes için var.\n\nDijital hafızanın en güvenli kilidini MÜHÜR\'le.';

  @override
  String get devBody =>
      'MÜHÜR, UEK DESIGNER\'ın bağımsız bir projesidir; Türkiye\'de tasarlanıp geliştirilmektedir. MÜHÜR\'ü kullandığınız için teşekkürler.';

  @override
  String get rn100 =>
      '• İlk sürüm.\n• Ana parolayla açılan, telefonda şifreli kasa (Argon2id + AES-256).\n• Banka, web sitesi, e-posta, sosyal medya ve iş hesapları için hazır alanlar.\n• Güç göstergeli parola üretici.\n• Kamerayla IBAN ve metin tarama.\n• Parmak izi ve yüzle açma.\n• Şifreli yedekleme ve geri yükleme.\n• Excel\'e aktarma (şifresiz; sorumluluk kullanıcıya aittir).\n• Kendiliğinden temizlenen çöp kutusu.\n• Tekrar kullanılan parolaları gösteren kasa özeti.\n• Otomatik kilit, ekran koruması ve pano geri sayımı.\n• Tamamen internetsiz çalışır.\n• 18 dil.';

  @override
  String get excelExport => 'Excel\'e aktar';

  @override
  String get excelExportDesc =>
      'Kayıtlarınızın şifresiz .xlsx dosyası; örneğin uygulamayı silmeden önce';

  @override
  String get excelExportWarnTitle => 'Şifresiz dışa aktarma';

  @override
  String get excelExportWarn =>
      'Excel dosyası ŞİFRELENMEZ. Dosyayı ele geçiren herkes tüm parolalarınızı okuyabilir. Dosyayı nerede sakladığınız, kimle paylaştığınız ve işiniz bitince silmeniz tamamen sizin sorumluluğunuzdadır. Çöp kutusundaki kayıtlar dahil edilmez.';

  @override
  String get excelExportAgree =>
      'Anladım, dosyanın güvenliği benim sorumluluğumda.';

  @override
  String get excelExportSaved =>
      'Excel dosyası kaydedildi. İşiniz bitince dosyayı silin.';

  @override
  String get excelExportFailed => 'Excel dosyası oluşturulamadı.';

  @override
  String get excelColDomain => 'Alan adı';

  @override
  String get excelColUpdated => 'Son güncelleme';

  @override
  String get how8T => 'Excel\'e aktarma';

  @override
  String get how8B =>
      'Yedek ayarlarındaki \"Excel\'e aktar\", çöp kutusu dışındaki tüm kayıtlarınızı her kategori ayrı bir sayfada olacak şekilde .xlsx dosyasına yazar. Dosya şifrelenmez: ana parolanızla onaylarsınız ve dosyanın güvenliğinin sizin sorumluluğunuzda olduğunu kabul edersiniz. İşiniz bitince dosyayı silin.';

  @override
  String get proFeatureTitle => 'Pro özelliği';

  @override
  String get proFieldsBody =>
      'Kayda ek alan eklemek Pro özelliğidir. Daha önce eklediğiniz alanlar yerinde kalır ve düzenlenebilir.';

  @override
  String get proBiometricBody =>
      'Parmak izi veya yüzle açma Pro özelliğidir. Kasayı her zaman ana parolanızla açabilirsiniz.';

  @override
  String get proBackgroundsBody =>
      'Ek arka planlar Pro özelliğidir. Varsayılan arka plan her zaman kullanılabilir.';

  @override
  String bioGraceWarn(String days) {
    return 'Parmak izi ve yüzle açma $days daha açık kalacak, sonra kapanacak. Ana parolanızı hatırladığınızdan emin olun. Unuttuysanız Ayarlar\'daki \"Ana parolayı değiştir\" ile parmak izinizle yeni bir ana parola belirleyin.';
  }

  @override
  String get genNewPassword => 'Yeni parola oluştur';

  @override
  String fieldRemoved(String label) {
    return '\"$label\" kaldırıldı';
  }

  @override
  String get undo => 'Geri al';
}
