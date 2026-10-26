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
  String get catWebsites => 'Siteler';

  @override
  String get catEmails => 'Mailler';

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
      'Bu parola kurtarılamaz. Unutursanız verilerinize bir daha erişilemez.';

  @override
  String get masterPassword => 'Ana parola';

  @override
  String get confirmPassword => 'Parolayı doğrula';

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
  String get createVault => 'Kasayı oluştur';

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
  String get useBiometrics => 'Biyometrik ile aç';

  @override
  String get enableBiometricsQ => 'Biyometrik giriş etkinleştirilsin mi?';

  @override
  String get enable => 'Etkinleştir';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get biometricReason => 'Muhur kilidini aç';

  @override
  String get lockNow => 'Kilitle';

  @override
  String get vaultUnlocked => 'Kasa açıldı';

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
  String get domain => 'Alan adı (örn. example.com)';

  @override
  String get tags => 'Etiketler (virgülle ayırın)';

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
  String get typeUrl => 'Bağlantı';

  @override
  String get typeNotes => 'Not';

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
  String get titleRequired => 'Başlık gerekli.';

  @override
  String get fieldUsername => 'Kullanıcı adı';

  @override
  String get fieldPassword => 'Parola';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Not';

  @override
  String get copy => 'Kopyala';

  @override
  String copied(int seconds) {
    return 'Kopyalandı. Pano $seconds saniye sonra temizlenecek.';
  }

  @override
  String get settings => 'Ayarlar';

  @override
  String get autoLock => 'Otomatik kilit';

  @override
  String get immediately => 'Hemen';

  @override
  String get seconds15 => '15 saniye';

  @override
  String get minute1 => '1 dakika';

  @override
  String get minutes5 => '5 dakika';

  @override
  String get biometricUnlock => 'Biyometrik giriş';

  @override
  String get generator => 'Şifre üretici';

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
  String get avoidAmbiguous => 'Benzer karakterlerden kaçın (O/0, l/1)';

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
      'Kamerayı metnin üzerinde sabit tutun. IBAN modunda otomatik algılanır.';

  @override
  String get scanRetake => 'Tekrar çek';

  @override
  String get scanning => 'Taranıyor...';

  @override
  String get ibanFound => 'IBAN bulundu';

  @override
  String get ibanNotFound =>
      'Geçerli IBAN bulunamadı. Daha iyi ışıkta tekrar deneyin ya da aşağıdan bir satır seçin.';

  @override
  String get ibanCorrected =>
      'OCR hatası sonrası düzeltilmiş olabilir. Dikkatle kontrol edin.';

  @override
  String get pickLine => 'Kullanmak için bir satıra dokunun';

  @override
  String get noTextFound => 'Metin bulunamadı.';

  @override
  String get cameraError =>
      'Kamera kullanılamıyor. Kamera iznini kontrol edin.';

  @override
  String get editBeforeUse => 'Kontrol edin, gerekirse düzeltin';

  @override
  String get useValue => 'Kullan';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Şifre Yöneticisi';

  @override
  String get tagline =>
      'Dijital anahtarlarınız tamamen sizin elinizde.\n Sunucu yok. Yalnızca siz ve şifreleriniz.\n MÜHÜR: Sadece sizin görebildiğiniz dijital kasanız.';

  @override
  String get login => 'GİRİŞ';

  @override
  String get infoTitle => 'Muhur hakkında';

  @override
  String get infoBody =>
      'Muhur şifrelerinizi yalnızca bu cihazda, şifreli olarak saklar. Hesap ya da sunucu yoktur.\n\nAna parolanız kurtarılamaz. Unutursanız verilerinize erişilemez, bu yüzden şifreli bir yedek tutun.';

  @override
  String get understandNoRecovery =>
      'Ana parolamı unutursam kurtarılamayacağını anlıyorum.';

  @override
  String get close => 'Kapat';

  @override
  String get language => 'Dil';

  @override
  String get languageSystem => 'Sistem dili';

  @override
  String get statTotal => 'Toplam';

  @override
  String get statReused => 'Tekrar';

  @override
  String get planFree => 'ÜCRETSİZ';

  @override
  String get statusScreen => 'Ekran Koruması';

  @override
  String get statusBackup => 'Oto Yedek';

  @override
  String get helpTitle => 'Yardım';

  @override
  String get helpBody => 'Yardım içeriği buraya eklenecek.';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Seçili $count kayıt silinsin mi? Bu işlem geri alınamaz.';
  }
}
