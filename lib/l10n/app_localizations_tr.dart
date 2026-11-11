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
  String get passwordNeedsMix =>
      'Küçük harf, büyük harf, rakam ve özel karakter kullanın.';

  @override
  String get reqLength => 'En az 8 karakter';

  @override
  String get reqLower => 'Küçük harf';

  @override
  String get reqUpper => 'Büyük harf';

  @override
  String get reqDigit => 'Rakam';

  @override
  String get reqSpecial => 'Özel karakter (!@#...)';

  @override
  String get passwordsDontMatch => 'Parolalar eşleşmiyor.';

  @override
  String get createVault => 'Oluştur';

  @override
  String get unlockTitle => 'Kilidi aç';

  @override
  String get unlock => 'Aç';

  @override
  String get wrongPassword => 'Ana parola yanlış.';

  @override
  String lockedOut(int seconds) {
    return 'Çok fazla deneme. $seconds saniye sonra tekrar deneyin.';
  }

  @override
  String get useBiometrics => 'Biyometrik';

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
  String get vaultUnlocked => 'Kasa açıldı';

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
  String get fieldLabel => 'Ad';

  @override
  String get fieldValue => 'Değer';

  @override
  String get typeText => 'Metin';

  @override
  String get typePassword => 'Parola';

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
  String get moveToTrash => 'Çöpe at';

  @override
  String get trash => 'Çöp kutusu';

  @override
  String get trashKeepFor => 'Çöpte saklama süresi';

  @override
  String get trashHint =>
      'Silinen kayıtlar şifreli olarak çöp kutusunda kalır ve geri alınabilir. Bu kadar gün sonra, kasa bir sonraki açıldığında kalıcı olarak silinir. Süreyi kısaltmak daha eski kayıtları da çöp kutusundan kaldırır. Çöp kutusunu boşaltma geri alınamaz.';

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
  String copied(int seconds) {
    return 'Kopyalandı. Pano $seconds saniye içinde temizlenir.';
  }

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
  String get seconds15 => '15 sn';

  @override
  String get minute1 => '1 dk';

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
  String get scanRetake => 'Yeniden çek';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get ibanFound => 'IBAN bulundu';

  @override
  String get ibanNotFound =>
      'Geçerli IBAN bulunamadı. Daha iyi ışıkta tekrar deneyin veya aşağıdan bir satır seçin.';

  @override
  String get ibanCorrected =>
      'OCR hatasından sonra düzeltilmiş olabilir. Dikkatle kontrol edin.';

  @override
  String get pickLine => 'Kullanmak için bir satıra dokunun';

  @override
  String get noTextFound => 'Metin bulunamadı.';

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
      'Uygulamadaki tüm animasyonları kapatır: yardım simgesinin sallanması ve parlaması, yardım menüsü, sayfa geçişleri, diyaloglar ve tarayıcı çizgisi. Yavaş cihazlar ve hassas kullanıcılar için uygundur';

  @override
  String get resetTips => 'İpuçlarını sıfırla';

  @override
  String get resetTipsDesc =>
      'Yardım animasyonunu ve tüm ipuçlarını yeniden göster';

  @override
  String get tipsResetDone => 'İpuçları yeniden gösterilecek';

  @override
  String get tipLongPress =>
      'İpucu: Bir kaydı seçmek için uzun basın, sonra birden çoğunu silin.';

  @override
  String get statTotal => 'Toplam';

  @override
  String get statReused => 'Tekrar';

  @override
  String get planFree => 'ÜCRETSİZ';

  @override
  String get statusScreen => 'Ekran koruması';

  @override
  String get screenshotAllow => 'Ekran görüntüsüne izin ver';

  @override
  String get screenshotAllowHint =>
      'Ekran koruması aşağıda ayarlanan süre boyunca kapatılır, sonra otomatik olarak yeniden açılır.';

  @override
  String get screenshotTimer => 'Görüntü süresi';

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
  String get helpStatusScreen =>
      'Kalkan simgesi: Ekran koruması (yeşil = açık, soluk = kapalı)';

  @override
  String get helpStatusBackup =>
      'Yedek simgesi: Yedek durumu (yeşil = yeni yedek, soluk = yedek gerekli)';

  @override
  String get helpTitle => 'Yardım';

  @override
  String get helpBody => 'Yardım içeriği buraya eklenecek.';

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
  String get fcTag => 'Etiket';

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
  String get fcBranchNameCode => 'Şube / Kod';

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
  String get fcLoginMethodProvider => 'Giriş Yöntemi';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

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
  String get fcProfileNumericId => 'Profil ID';

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
  String get fcLoginMethodVerification => 'Doğrulama';

  @override
  String get fcTaxOffice => 'Vergi Dairesi / No';

  @override
  String get fcRegistryNo => 'Sicil / Bayi No';

  @override
  String get fcIpVpn => 'IP / VPN';

  @override
  String get fcLicenseExpiry => 'Lisans Bitişi';

  @override
  String get fcSiteName => 'Site Adı';

  @override
  String get fcWebAddress => 'Web URL';

  @override
  String get fcUsernameEmail => 'Kullanıcı Adı / E-posta';

  @override
  String get fcSubscriptionFee => 'Ücret / Dönem';

  @override
  String get fcRegistrationDate => 'Kayıt Tarihi';

  @override
  String get fcPaymentMethod => 'Ödeme Yöntemi';

  @override
  String get fcPinCode => 'PIN Kodu';

  @override
  String get fcLicenseCodeSimple => 'Lisans Kodu';

  @override
  String get pickFieldTitle => 'Alan seç';

  @override
  String get allFieldsAdded => 'Tüm alanlar eklendi';

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
  String get orphanVaultTitle => 'Old vault found';

  @override
  String get orphanVaultBody =>
      'A vault file from before exists on this device, but its keys can\'t be read, so it can\'t be opened. If you continue, that old data will be deleted. If you have a backup, create a new vault and restore it afterwards.';

  @override
  String get orphanVaultReplace => 'Delete and continue';
}
