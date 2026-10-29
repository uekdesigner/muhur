// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Mühür';

  @override
  String get catBanks => 'Bankalar';

  @override
  String get catWebsites => 'Siteler';

  @override
  String get catEmails => 'E-postalar';

  @override
  String get catSocial => 'Sosyal Medya';

  @override
  String get catBusiness => 'Kurumsal';

  @override
  String get catOther => 'Diğer';

  @override
  String get setupTitle => 'Ana parola oluştur';

  @override
  String get setupInfo =>
      'Bu parola kurtarılamaz. Eğer unutursanız, verileriniz asla açılamaz.';

  @override
  String get masterPassword => 'Ana parola';

  @override
  String get confirmPassword => 'Parolayı onayla';

  @override
  String get passwordTooShort => 'En az 8 karakter kullanın.';

  @override
  String get passwordNeedsMix =>
      'Küçük harf, büyük harf, bir rakam ve bir özel karakter kullanın.';

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
  String get passwordsDontMatch => 'Parolalar eşleşmiyor.';

  @override
  String get createVault => 'Kasa oluştur';

  @override
  String get unlockTitle => 'Kilidi aç';

  @override
  String get unlock => 'Kilidi aç';

  @override
  String get wrongPassword => 'Hatalı ana parola.';

  @override
  String lockedOut(int seconds) {
    return 'Çok fazla deneme yapıldı. $seconds saniye sonra tekrar deneyin.';
  }

  @override
  String get useBiometrics => 'Biyometri ile aç';

  @override
  String get enableBiometricsQ => 'Biyometrik kilit açılsın mı?';

  @override
  String get enable => 'Etkinleştir';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get biometricReason => 'Mühür\'ün kilidini aç';

  @override
  String get lockNow => 'Kilitle';

  @override
  String get vaultUnlocked => 'Kasa kilidi açıldı';

  @override
  String get all => 'Tümü';

  @override
  String get noEntries => 'Henüz kayıt yok';

  @override
  String get searchHint => 'Başlık, alan adı veya etiket ara';

  @override
  String get addEntry => 'Kayıt ekle';

  @override
  String get editEntry => 'Kaydı düzenle';

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
  String get cancel => 'İptal';

  @override
  String get deleteConfirm => 'Bu kayıt silinsin mi? Bu işlem geri alınamaz.';

  @override
  String get titleRequired => 'Başlık gereklidir.';

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
    return 'Kopyalandı. Pano $seconds saniye içinde temizlenecek.';
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
  String get autoLock => 'Otomatik kilitleme';

  @override
  String get immediately => 'Hemen';

  @override
  String get seconds15 => '15 saniye';

  @override
  String get minute1 => '1 dakika';

  @override
  String get minutes5 => '5 dakika';

  @override
  String get biometricUnlock => 'Biyometrik kilit';

  @override
  String get generator => 'Parola üretici';

  @override
  String get generate => 'Üret';

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
  String get avoidAmbiguous => 'Benzer karakterleri kaçın (O/0, l/1)';

  @override
  String get regenerate => 'Yeniden üret';

  @override
  String get usePassword => 'Bu parolayı kullan';

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
  String get scanRetake => 'Tekrar çek';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get ibanFound => 'IBAN bulundu';

  @override
  String get ibanNotFound =>
      'Geçerli bir IBAN bulunamadı. Daha iyi ışıkta tekrar deneyin veya aşağıdaki bir satırı seçin.';

  @override
  String get ibanCorrected =>
      'OCR hatasından sonra düzeltilmiş olabilir. Dikkatlice kontrol edin.';

  @override
  String get pickLine => 'Kullanmak için bir satıra dokunun';

  @override
  String get noTextFound => 'Metin bulunamadı.';

  @override
  String get cameraError =>
      'Kamera kullanılamıyor. Kamera iznini kontrol edin.';

  @override
  String get editBeforeUse => 'Gerekirse kontrol edip düzenleyin';

  @override
  String get useValue => 'Kullan';

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
  String get infoTitle => 'Mühür Hakkında';

  @override
  String get infoBody =>
      'Mühür, parolalarınızı yalnızca bu cihazda şifrelenmiş olarak saklar. Hesap ve sunucu yoktur.\n\nAna parolanız kurtarılamaz. Eğer unutursanız verileriniz açılamaz, bu nedenle şifreli bir yedek saklayın.';

  @override
  String get understandNoRecovery =>
      'Unutulan bir ana parolanın kurtarılamayacağını anlıyorum.';

  @override
  String get close => 'Kapat';

  @override
  String get language => 'Dil';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get statTotal => 'Toplam';

  @override
  String get statReused => 'Tekrar';

  @override
  String get planFree => 'ÜCRETSİZ';

  @override
  String get statusScreen => 'Ekran koruması';

  @override
  String get statusBackup => 'Oto yedek';

  @override
  String get helpTitle => 'Yardım';

  @override
  String get helpBody => 'Yardım içeriği buraya eklenecektir.';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Seçilen $count kayıt silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get fcBankName => 'Banka Adı';

  @override
  String get fcTag => 'Etiket';

  @override
  String get fcInternetBankingPassword => 'İnternet Bankacılığı Şifresi';

  @override
  String get fcCardPin => 'Kart Şifresi (PIN)';

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
  String get fcCardStatementDate => 'Hesap Özeti ve Son Ödeme Tarihi';

  @override
  String get fcAccountTitle => 'Hesap Başlığı';

  @override
  String get fcEmailAddress => 'E-posta Adresi';

  @override
  String get fcRecoveryEmail => 'Kurtarma E-postası';

  @override
  String get fcRecoveryPhone => 'Kurtarma Telefonu';

  @override
  String get fc2faBackupCodes => '2FA / Yedek Kodlar';

  @override
  String get fcLoginMethodProvider => 'Giriş Yöntemi / Sağlayıcı';

  @override
  String get fcImapSmtp => 'IMAP / SMTP Sunucu Ayarları';

  @override
  String get fcSecurityQA => 'Güvenlik Sorusu ve Yanıtı';

  @override
  String get fcPasswordChangeDate => 'Parola Değiştirme Tarihi';

  @override
  String get fcPlatformTitle => 'Platform / Başlık';

  @override
  String get fcUsernameProfileId => 'Kullanıcı Adı / Profil ID';

  @override
  String get fcRegisteredEmail => 'Kayıtlı E-posta Adresi';

  @override
  String get fcRegisteredPhone => 'Kayıtlı Telefon Numarası';

  @override
  String get fcProfileUrl => 'Profil Bağlantısı (URL)';

  @override
  String get fcAccountTypeStatus => 'Hesap Türü / Statü';

  @override
  String get fcLinkedMainAccount => 'Bağlı Ana Hesap';

  @override
  String get fcProfileNumericId => 'Profil / Sayısal ID';

  @override
  String get fc2faSecretKey => '2FA Gizli Anahtarı';

  @override
  String get fcServiceName => 'Kurum / Servis Adı';

  @override
  String get fcCompanyName => 'Şirket / Firma Adı';

  @override
  String get fcCorporateUserId => 'Kullanıcı Adı / Kurumsal ID';

  @override
  String get fcPanelUrl => 'Servis / Panel Adresi (URL)';

  @override
  String get fcDepartmentPosition => 'Departman / Pozisyon';

  @override
  String get fcLicenseCode => 'Müşteri / Lisans Kodu';

  @override
  String get fcSupportContact => 'Yetkili / Destek Kişisi';

  @override
  String get fcLoginMethodVerification => 'Giriş Yöntemi / Doğrulama Türü';

  @override
  String get fcTaxOffice => 'Vergi Dairesi ve Vergi No';

  @override
  String get fcRegistryNo => 'Sicil No / Bayi Kodu';

  @override
  String get fcIpVpn => 'IP Kısıtlaması / VPN Adresi';

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
  String get generatorSettings => 'Üretici ayarları';

  @override
  String get saveAndExit => 'Kaydet ve çık';

  @override
  String get customField => 'Özel alan';

  @override
  String get customFieldName => 'Alan adı';

  @override
  String get customFieldType => 'Alan tipi';

  @override
  String get customTypeText => 'Metin';

  @override
  String get customTypeNote => 'Not';

  @override
  String get customTypePassword => 'Gizli parola';

  @override
  String get customTypeDate => 'Tarih';

  @override
  String get customTypePhone => 'Telefon';
}
