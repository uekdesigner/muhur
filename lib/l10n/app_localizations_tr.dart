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
  String get catBusiness => 'İş / Kurumsal';

  @override
  String get catOther => 'Diğer';

  @override
  String get setupTitle => 'Ana şifre oluşturun';

  @override
  String get setupInfo =>
      'Bu şifre geri kurtarılamaz. Unutursanız verilerinize bir daha asla erişemezsiniz.';

  @override
  String get masterPassword => 'Ana şifre';

  @override
  String get confirmPassword => 'Şifreyi doğrula';

  @override
  String get changeMasterPassword => 'Ana şifreyi değiştir';

  @override
  String get currentPassword => 'Mevcut şifre';

  @override
  String get newPassword => 'Yeni şifre';

  @override
  String get newPasswordSame => 'Yeni şifre mevcut şifreden farklı olmalıdır.';

  @override
  String get change => 'Değiştir';

  @override
  String get masterPasswordChanged => 'Ana şifre değiştirildi.';

  @override
  String get changePasswordFailed =>
      'Şifre değiştirilemedi. Lütfen tekrar deneyin.';

  @override
  String get passwordTooShort => 'En az 8 karakter kullanın.';

  @override
  String get passwordNeedsMix =>
      'Küçük harf, büyük harf, rakam ve özel karakter kullanın.';

  @override
  String get reqLength => 'En az 8 karakter';

  @override
  String get reqLower => 'Bir küçük harf';

  @override
  String get reqUpper => 'Bir büyük harf';

  @override
  String get reqDigit => 'Bir rakam';

  @override
  String get reqSpecial => 'Bir özel karakter (!@#...)';

  @override
  String get passwordsDontMatch => 'Şifreler eşleşmiyor.';

  @override
  String get createVault => 'Kasa oluştur';

  @override
  String get unlockTitle => 'Kilidi Aç';

  @override
  String get unlock => 'Kilidi Aç';

  @override
  String get wrongPassword => 'Yanlış ana şifre.';

  @override
  String lockedOut(int seconds) {
    return 'Çok fazla hatalı deneme. $seconds saniye sonra tekrar deneyin.';
  }

  @override
  String get useBiometrics => 'Biyometrik ile aç';

  @override
  String get enableBiometricsQ => 'Biyometrik kilit etkinleştirilsin mi?';

  @override
  String get enable => 'Etkinleştir';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get biometricReason => 'Mühür\'ün kilidini aç';

  @override
  String get lockNow => 'Kilitle';

  @override
  String get vaultUnlocked => 'Kasa açıldı';

  @override
  String get all => 'Tümü';

  @override
  String get noEntries => 'Henüz öge yok';

  @override
  String get searchHint => 'Başlık, alan adı veya etiket ara';

  @override
  String get addEntry => 'Öge ekle';

  @override
  String get editEntry => 'Ögeyi düzenle';

  @override
  String get title => 'Başlık';

  @override
  String get category => 'Kategori';

  @override
  String get domain => 'Alan adı (örn. ornek.com)';

  @override
  String get tags => 'Etiket';

  @override
  String get fields => 'Alanlar';

  @override
  String get addField => 'Alan ekle';

  @override
  String get fieldLabel => 'Etiket';

  @override
  String get fieldValue => 'Değer';

  @override
  String get typeText => 'Metin';

  @override
  String get typePassword => 'Şifre';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notlar';

  @override
  String get sensitive => 'Değeri gizle';

  @override
  String get save => 'Kaydet';

  @override
  String get delete => 'Sil';

  @override
  String get moveToTrash => 'Çöp kutusuna taşı';

  @override
  String get trash => 'Çöp Kutusu';

  @override
  String get trashKeepFor => 'Çöp kutusunda tutma süresi';

  @override
  String get trashHint =>
      'Silinen ögeler çöp kutusunda hâlâ şifreli olarak kalır ve geri yüklenebilir. Belirtilen gün sayısı dolduğunda, kasanın bir sonraki açılışında kalıcı olarak silinirler. Süreyi kısaltmak eski ögeleri de çöp kutusundan kaldırır. Çöp kutusunu boşaltma işlemi geri alınamaz.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün',
      one: '1 gün',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Çöp kutusunu aç';

  @override
  String get trashEmpty => 'Çöp kutusu boş.';

  @override
  String get restore => 'Geri yükle';

  @override
  String get deleteForever => 'Kalıcı olarak sil';

  @override
  String get deleteForeverConfirm =>
      'Bu öge kalıcı olarak silinsin mi? Bu işlem geri alınamaz.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gün kaldı',
      one: '1 gün kaldı',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Çöp kutusunu şimdi boşalt';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öge',
      one: '1 öge',
    );
    return 'Çöp kutusundaki $_temp0 kalıcı olarak silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get cancel => 'İptal';

  @override
  String get deleteConfirm =>
      'Bu öge çöp kutusuna taşınsın mı? Çöp kutusu boşaltılana kadar geri yükleyebilirsiniz.';

  @override
  String get titleRequired => 'Başlık zorunludur.';

  @override
  String get fieldUsername => 'Kullanıcı adı';

  @override
  String get fieldPassword => 'Şifre';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notlar';

  @override
  String get copy => 'Kopyala';

  @override
  String copied(int seconds) {
    return 'Kopyalandı. Pano $seconds saniye içinde temizlenecek.';
  }

  @override
  String get settings => 'Ayarlar';

  @override
  String get settingsSecurity => 'Güvenlik';

  @override
  String get settingsBackup => 'Yedekleme';

  @override
  String get settingsGeneral => 'Genel';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get autoLock => 'Otomatik kilitleme';

  @override
  String get immediately => 'Hemen';

  @override
  String get seconds15 => '15 saniye';

  @override
  String get minute1 => '1 dakika';

  @override
  String get copyTimer => 'Pano zamanlayıcısı';

  @override
  String get copyTimerHint =>
      'Kopyalanan veriler bu süreden sonra panodan temizlenir ve kasa o zamana kadar açık kalır.';

  @override
  String secondsShort(int seconds) {
    return '$seconds sn';
  }

  @override
  String get biometricUnlock => 'Biyometrik kilit';

  @override
  String get generator => 'Şifre oluşturucu';

  @override
  String get generate => 'Oluştur';

  @override
  String get length => 'Uzunluk';

  @override
  String get lowercase => 'Küçük harf (a-z)';

  @override
  String get uppercase => 'Büyük harf (A-Z)';

  @override
  String get digits => 'Rakamlar (0-9)';

  @override
  String get symbols => 'Semboller (!@#...)';

  @override
  String get avoidAmbiguous => 'Benzer karakterlerden kaçın (O/0, l/1)';

  @override
  String get regenerate => 'Yeniden oluştur';

  @override
  String get usePassword => 'Bu şifreyi kullan';

  @override
  String get strengthWeak => 'Zayıf';

  @override
  String get strengthFair => 'Orta';

  @override
  String get strengthGood => 'İyi';

  @override
  String get strengthStrong => 'Güçlü';

  @override
  String get scan => 'Kamera ile tara';

  @override
  String get scanHint =>
      'Kamerayı metnin üzerinde sabit tutun. IBAN modunda otomatik olarak algılanır.';

  @override
  String get scanRetake => 'Yeniden çek';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get ibanFound => 'IBAN bulundu';

  @override
  String get ibanNotFound =>
      'Geçerli bir IBAN bulunamadı. Daha iyi bir ışıkla tekrar deneyin veya aşağıdan bir satır seçin.';

  @override
  String get ibanCorrected =>
      'OCR hatasından sonra düzeltilmiş olabilir. Dikkatlice kontrol edin.';

  @override
  String get pickLine => 'Kullanmak için bir satıra dokunun';

  @override
  String get noTextFound => 'Metin bulunamadı.';

  @override
  String get cameraError =>
      'Kamera kullanılabilir değil. Kamera iznini kontrol edin.';

  @override
  String get editBeforeUse => 'Gerekirse kontrol edin ve düzenleyin';

  @override
  String get useValue => 'Kullan';

  @override
  String get scanIsThis => 'Aradığınız bu mu?';

  @override
  String get scanNo => 'Hayır';

  @override
  String get scanYes => 'Evet';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Şifre Yöneticisi';

  @override
  String get tagline =>
      'Dijital verilerini MÜHÜR\'le.\n Sunucu yok. Yalnızca siz ve verileriniz.\n MÜHÜR: Yalnızca sizin görebileceğiniz dijital kasanız.';

  @override
  String get login => 'GİRİŞ';

  @override
  String get infoTitle => 'Muhur Hakkında';

  @override
  String get infoBody =>
      'Muhur, şifrelerinizi yalnızca bu cihazda şifrelenmiş olarak tutar. Hesap ve sunucu yoktur.\n\nAna şifreniz geri kurtarılamaz. Unutursanız verileriniz açılamaz, bu nedenle şifreli bir yedek tutun.';

  @override
  String get understandNoRecovery =>
      'Unutulan bir ana şifrenin geri kurtarılamayacağını anlıyorum.';

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
      'Panellerin ve kartların saydamlığını ayarlar';

  @override
  String get backgroundTitle => 'Arka plan';

  @override
  String get backgroundDim => 'Arka plan karartması';

  @override
  String get backgroundDimDesc =>
      'Arka plan görselini daha koyu veya açık yapar';

  @override
  String get bgBronze => 'Bronz';

  @override
  String get bgEmber => 'Köz';

  @override
  String get bgSapphire => 'Safir';

  @override
  String get bgObsidian => 'Obsidyen';

  @override
  String get bgLumen => 'Lümen';

  @override
  String get smartGuide => 'Akıllı rehberlik';

  @override
  String get smartGuideDesc =>
      'Bir özelliği ilk kez kullandığınızda kısa ipuçları gösterir';

  @override
  String get haptics => 'Titreşim';

  @override
  String get hapticsDesc =>
      'Parmak iziyle kilit açarken ve kopyalarken kısa bir titreşim verir';

  @override
  String get reduceAnimations => 'Animasyonları azalt';

  @override
  String get reduceAnimationsDesc =>
      'Yardım menüsü animasyonunu, simge sallanmasını ve sayfa geçişlerini kapatır. Yavaş cihazlar için idealdir';

  @override
  String get resetTips => 'İpuçlarını sıfırla';

  @override
  String get resetTipsDesc =>
      'Yardım animasyonunu ve tüm ipuçlarını tekrar gösterir';

  @override
  String get tipsResetDone => 'İpuçları tekrar gösterilecek';

  @override
  String get tipLongPress =>
      'İpucu: Seçmek için bir ögeye uzun basın, ardından birden fazlasını aynı anda silin.';

  @override
  String get statTotal => 'Toplam';

  @override
  String get statReused => 'Yeniden kullanılan';

  @override
  String get planFree => 'ÜCRETSİZ';

  @override
  String get statusScreen => 'Ekran koruması';

  @override
  String get screenshotAllow => 'Ekran görüntülerine izin ver';

  @override
  String get screenshotAllowHint =>
      'Ekran koruması aşağıda ayarlanan süre boyunca kapatılır, ardından otomatik olarak tekrar açılır.';

  @override
  String get screenshotTimer => 'Ekran görüntüsü süresi';

  @override
  String get statusBackup => 'Otomatik yedekleme';

  @override
  String get backupSection => 'ENCRYPTED BACKUP';

  @override
  String get backupExport => 'Create encrypted backup';

  @override
  String get backupExportDesc =>
      'Saves all entries, including the trash, to a file protected by a backup password. Keep the file somewhere safe.';

  @override
  String get backupImport => 'Restore from backup';

  @override
  String get backupImportDesc =>
      'Adds the entries from a backup file. Existing entries are never overwritten or deleted.';

  @override
  String get backupPasswordTitle => 'Backup password';

  @override
  String get backupPasswordInfo =>
      'This password protects the backup file. It can be different from your master password. If you forget it, the backup cannot be opened.';

  @override
  String get backupEnterPassword => 'Enter the backup password';

  @override
  String get backupContinue => 'Continue';

  @override
  String get backupSaved => 'Backup saved';

  @override
  String get backupFailed => 'The backup could not be created';

  @override
  String backupRestored(int added, int skipped) {
    return '$added added, $skipped already existed';
  }

  @override
  String get backupWrongPassword => 'Wrong backup password';

  @override
  String get backupInvalidFile => 'This is not a valid Muhur backup file';

  @override
  String get backupReminderTitle => 'Backup reminder';

  @override
  String get backupReminderDesc =>
      'Reminds you on the home screen when your last backup is older than this. Set to 0 to turn it off.';

  @override
  String get backupReminderOff => 'Off';

  @override
  String get backupReminderNever =>
      'You have not made a backup yet. Back up now so you do not lose your passwords.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Your last backup was $days days ago.',
      one: 'Your last backup was 1 day ago.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Back up';

  @override
  String get backupReminderLater => 'Later';

  @override
  String get statusScreenOn =>
      'Ekran koruması açık: ekran görüntüleri ve kaydı engellenir';

  @override
  String get statusScreenOff =>
      'Ekran koruması geçici olarak kapalı: ekran görüntülerine izin verilir';

  @override
  String get statusBackupNever =>
      'No backup yet. Create one in Settings > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Last backup: $days days ago',
      one: 'Last backup: yesterday',
      zero: 'Backed up today',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup overdue: last one was $days days ago',
      one: 'Backup overdue: last one was 1 day ago',
    );
    return '$_temp0';
  }

  @override
  String get helpStatusScreen =>
      'Kalkan simgesi: Ekran koruması (yeşil = açık, soluk = kapalı)';

  @override
  String get helpStatusBackup =>
      'Yedekleme simgesi: Otomatik yedekleme (yeşil = açık, soluk = kapalı)';

  @override
  String get helpTitle => 'Yardım';

  @override
  String get helpBody => 'Yardım içeriği buraya eklenecektir.';

  @override
  String get helpMenuTitle => 'Nasıl kullanılır?';

  @override
  String get helpAdd => '+ butonu: Yeni öge ekleyin';

  @override
  String get helpTap => 'Karta dokunun: Detayları görüntüleyin';

  @override
  String get helpLongPress => 'Uzun basın: Seçin ve silin';

  @override
  String get helpSearch => 'Arama: Hızlıca bulun';

  @override
  String get helpCategories => 'Kategoriler: Ögelerinizi filtreleyin';

  @override
  String get helpLock => 'Kilit simgesi: Kasayı hemen kilitleyin';

  @override
  String get helpSettings =>
      'Ayarlar: Yedekleme, otomatik kilitleme ve daha fazlası';

  @override
  String get helpStats => 'Alt panel: Kasa özeti';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Seçilen $count öge çöp kutusuna taşınsın mı?';
  }

  @override
  String get fcBankName => 'Banka Adı';

  @override
  String get fcTag => 'Etiket';

  @override
  String get fcInternetBankingPassword => 'İnternet Bankacılığı Şifresi';

  @override
  String get fcCardPin => 'Kart PIN';

  @override
  String get fcCardNumber => 'Kart Numarası';

  @override
  String get fcExpiryDate => 'Son Kullanma Tarihi';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Müşteri Hizmetleri Numarası';

  @override
  String get fcCustomerNoTc => 'Müşteri Numarası / T.C. Kimlik No';

  @override
  String get fcBranchNameCode => 'Şube Adı ve Kodu';

  @override
  String get fcAccountType => 'Hesap Türü';

  @override
  String get fcPhoneBankingPassword => 'Telefon Bankacılığı Şifresi';

  @override
  String get fcSwiftBic => 'SWIFT / BIC Kodu';

  @override
  String get fcCardStatementDate => 'Hesap Kesim ve Son Ödeme Tarihi';

  @override
  String get fcAccountTitle => 'Hesap Unvanı';

  @override
  String get fcEmailAddress => 'E-posta Adresi';

  @override
  String get fcRecoveryEmail => 'Kurtarma E-postası';

  @override
  String get fcRecoveryPhone => 'Kurtarma Telefonu';

  @override
  String get fc2faBackupCodes => '2FA / Yedekleme Kodları';

  @override
  String get fcLoginMethodProvider => 'Giriş Yöntemi / Sağlayıcı';

  @override
  String get fcImapSmtp => 'IMAP / SMTP Sunucu Ayarları';

  @override
  String get fcSecurityQA => 'Güvenlik Sorusu ve Cevabı';

  @override
  String get fcPasswordChangeDate => 'Şifre Değiştirme Tarihi';

  @override
  String get fcPlatformTitle => 'Platform / Başlık';

  @override
  String get fcUsernameProfileId => 'Kullanıcı Adı / Profil ID';

  @override
  String get fcRegisteredEmail => 'Kayıtlı E-posta';

  @override
  String get fcRegisteredPhone => 'Kayıtlı Telefon Numarası';

  @override
  String get fcProfileUrl => 'Profil Bağlantısı (URL)';

  @override
  String get fcAccountTypeStatus => 'Hesap Türü / Durumu';

  @override
  String get fcLinkedMainAccount => 'Bağlı Ana Hesap';

  @override
  String get fcProfileNumericId => 'Profil / Sayısal ID';

  @override
  String get fc2faSecretKey => '2FA Gizli Anahtarı';

  @override
  String get fcServiceName => 'Kurum / Servis Adı';

  @override
  String get fcCompanyName => 'Şirket Adı';

  @override
  String get fcCorporateUserId => 'Kullanıcı Adı / Kurumsal ID';

  @override
  String get fcPanelUrl => 'Servis / Panel Adresi (URL)';

  @override
  String get fcDepartmentPosition => 'Departman / Pozisyon';

  @override
  String get fcLicenseCode => 'Müşteri / Lisans Kodu';

  @override
  String get fcSupportContact => 'Yetkili / Destek İletişim';

  @override
  String get fcLoginMethodVerification => 'Giriş Yöntemi / Doğrulama Türü';

  @override
  String get fcTaxOffice => 'Vergi Dairesi ve Vergi No';

  @override
  String get fcRegistryNo => 'Sicil No / Bayi Kodu';

  @override
  String get fcIpVpn => 'IP Sınırlaması / VPN Adresi';

  @override
  String get fcLicenseExpiry => 'Portal / Lisans Bitiş Tarihi';

  @override
  String get fcSiteName => 'Site / Servis Adı';

  @override
  String get fcWebAddress => 'Web Adresi (URL)';

  @override
  String get fcUsernameEmail => 'Kullanıcı Adı / E-posta';

  @override
  String get fcSubscriptionFee => 'Abonelik Ücreti ve Periyodu';

  @override
  String get fcRegistrationDate => 'Kayıt Tarihi';

  @override
  String get fcPaymentMethod => 'Fatura / Ödeme Yöntemi';

  @override
  String get fcPinCode => 'PIN Kodu';

  @override
  String get fcLicenseCodeSimple => 'Lisans Kodu';

  @override
  String get pickFieldTitle => 'Bir alan seçin';

  @override
  String get allFieldsAdded => 'Tüm alanlar eklendi';

  @override
  String get generatorSettings => 'Oluşturucu ayarları';

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
  String get customTypePassword => 'Gizli şifre';

  @override
  String get customTypeDate => 'Tarih';

  @override
  String get customTypePhone => 'Telefon';
}
