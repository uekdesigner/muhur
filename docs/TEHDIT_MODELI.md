# Mühür – Tehdit Modeli

Sürüm 1.1 · Kasım 2026 · Kodla birlikte güncel tutulmalıdır.

## 1. Kapsam ve varsayımlar

- Mühür, parolaları ve hassas kayıtları **yalnızca cihazda** saklayan, hesabı ve sunucusu olmayan bir Android uygulamasıdır.
- Yayın sürümünde internet izni yoktur (`android/app/src/release/AndroidManifest.xml` bu izni eklentiler eklese bile kaldırır).
- Cihazın işletim sistemi güvenilir kabul edilir: root'suz, güncel güvenlik yamaları olan, kilit ekranı açık bir telefon.
- Kullanıcı ana parolasını kimseyle paylaşmaz ve unutursa kurtarma yolu olmadığını bilir.

## 2. Korunan varlıklar

| Varlık | Nerede durur |
|---|---|
| Kayıtlar (parola, kart, IBAN, notlar) | SQLCipher veritabanı + alan düzeyinde şifreleme |
| Veri şifreleme anahtarı (DEK) | Ana paroladan türetilen anahtarla sarılmış hâlde; biyometri açıksa ayrıca donanım korumalı depoda |
| Ana parola | Hiçbir yerde saklanmaz |
| Yedek dosyası | Kullanıcının seçtiği konumda, ayrı yedek parolasıyla şifreli |
| Panoya kopyalanan değer | Sistem panosunda, süre dolunca silinir |
| 2FA gizli anahtarları | Hassas alan olarak şifreli; ekranda gösterilmez, yalnızca o anki kod gösterilir |
| Parola geçmişi (Pro) | Veritabanında, kayıt başına en çok 10 eski değer, alan düzeyinde şifreli |
| Excel dosyası | Kullanıcının seçtiği konumda, **şifresiz** |
| Pro ve deneme durumu | Donanım korumalı güvenli depoda |

## 3. Anahtar mimarisi (özet)

1. Kasa kurulurken rastgele bir **DEK** üretilir.
2. Ana paroladan **Argon2id** (32 MiB bellek, 3 tur, paralellik 1, 32 bayt) ile **KEK** türetilir.
3. DEK, KEK ile **AES-256-GCM** kullanılarak sarılır. Sarım v2'de KDF parametreleri ve tuz AAD'a bağlıdır; başlıktaki değerlerle oynamak sarımı açılmaz hâle getirir.
4. Veritabanı anahtarı DEK'ten **HKDF-SHA256** ile türetilir ve **SQLCipher** veritabanını açar.
5. Hassas alanlar ayrıca **AES-256-GCM** ile şifrelenir; AAD kaydı ve alan etiketini bağlar, şifreli bir değer başka kayda veya alana taşınırsa çözülmez. Her şifrelemede yeni nonce kullanılır.
6. Yedek dosyası ayrı bir paroladan **Argon2id** (64 MiB, 3 tur) ile türetilen anahtarla **AES-256-GCM** ile şifrelenir.
7. Parola geçmişindeki değerler de aynı alan şifrelemesini kullanır; AAD'daki etiket `hist:` önekiyle ayrılır, geçmişteki bir değer canlı alana taşınırsa çözülmez.
8. 2FA kodları (RFC 6238 TOTP; SHA-1/256/512, 6–8 hane) tamamen cihazda, telefonun saatine göre üretilir.

## 4. Tehditler ve önlemler

| # | Tehdit | Önlem | Kalan risk |
|---|---|---|---|
| T1 | Kilitli telefon çalınır veya kaybolur | Veriler şifreli; anahtar ana parola veya güçlü biyometri olmadan açılamaz | Zayıf ana parola çevrimdışı kaba kuvvete açık (aşağıya bakın) |
| T2 | Kasa açıkken telefon başkasının eline geçer | Arka plana geçince otomatik kilit (varsayılan: anında); son uygulamalar ekranında gizleme perdesi | Kullanıcı kilit süresini uzatırsa pencere büyür |
| T3 | Uygulama içinde ana parola tahmini | 5 hatalı denemeden sonra 30 sn'den başlayıp her seferinde ikiye katlanan, en çok 1 saatlik bekleme. Süre monotonik saatle ölçülür; sistem saatini değiştirmek beklemeyi kısaltmaz | Telefon yeniden başlatılırsa bekleme baştan başlar (bilinçli seçim) |
| T4 | Kasa dosyası kopyalanıp çevrimdışı kırılmaya çalışılır | Argon2id ile her deneme pahalı; parola kuralı en az 8 karakter + küçük/büyük harf + rakam | Kısa veya tahmin edilebilir parolalar yine de kırılabilir |
| T5 | Ekran görüntüsü, ekran kaydı, ekran paylaşımı | `FLAG_SECURE` varsayılan açık; kullanıcı geçici olarak kapatırsa süre sonunda kendiliğinden geri açılır | Geçici izin süresince ekran görüntülenebilir |
| T6 | Panodaki parolanın başka uygulamalarca okunması | Kopyalanan değer "hassas" olarak işaretlenir (Android 13+ klavye pano geçmişinde ve önizlemede gizlenir); ayarlanan süre sonunda (varsayılan 30 sn) panodan silinir. Ana ekrandaki pano simgesi geri sayımı gösterir, dokununca hemen siler | Android 12 ve altında bazı klavyelerin pano geçmişi kopyayı saklayabilir |
| T7 | Bulut yedeği veya yeni telefona taşıma ile verinin çıkması | `allowBackup="false"` ve `dataExtractionRules` ile bulut yedeği ve cihazdan cihaza taşıma kapalı | Yok (anahtarlar zaten donanıma bağlı, taşınsa da açılmazdı) |
| T8 | Uygulamanın veriyi internete göndermesi (bilerek veya bir eklenti yüzünden) | Yayın sürümünde `INTERNET` ve `ACCESS_NETWORK_STATE` izinleri kaldırılır | İzinlerin gerçekten kalktığı her sürümde birleşik manifest'ten doğrulanmalı |
| T9 | Biyometri yoluyla yetkisiz açma | Sadece güçlü biyometri (Class 3) kabul edilir; her açılışta doğrulama istenir; yeni parmak izi veya yüz eklenince anahtar geçersiz olur ve biyometri kapanır. Çoğu telefonda yüz tanıma Class 2 olduğu için yalnızca parmak izi kullanılabilir (bilinçli seçim) | Kullanıcı zorla parmağını okutmaya mecbur bırakılabilir |
| T10 | Yedek dosyasının ele geçirilmesi | Ayrı yedek parolası + Argon2id (64 MiB) + AES-256-GCM; geri yükleme mevcut kayıtları asla silmez | Yedek parolası zayıfsa dosya çevrimdışı kırılabilir |
| T11 | Değiştirilmiş başlık veya bozuk dosya ile saldırı | GCM kimlik doğrulaması ve AAD bağlama sayesinde değiştirilmiş veri açılmaz, hata verir | — |
| T12 | Şifresiz Excel dosyasının ele geçirilmesi | Dışa aktarmadan önce uyarı, sorumluluk onayı ve ana parola doğrulaması; dosya yalnızca kullanıcının seçtiği yere yazılır | Dosya şifresizdir ve parolalarla 2FA anahtarlarını içerir; ele geçiren her şeyi okur. Sorumluluk kullanıcıdadır |
| T13 | Parola geçmişinin eski parolaları açığa çıkarması | En çok 10 değer; alan düzeyinde şifreli; kullanıcı tamamen temizleyebilir; kayıt kalıcı silinince birlikte silinir; yedeğe ve Excel'e girmez | Kasa açıkken görüntülenebilir (T2 ile aynı risk) |
| T14 | 2FA gizli anahtarının sızması | Anahtar hassas alan olarak şifreli; detayda anahtar değil yalnızca kod gösterilir; kod panoya hassas işaretle kopyalanır ve süre sonunda silinir | Parola ile 2FA anahtarı aynı kasada durur; kasa açılırsa iki faktörün ayrılığı ortadan kalkar. Telefon saati yanlışsa kodlar tutmaz |
| T15 | Kamerayla taranan görüntünün saklanması veya gönderilmesi | Metin ve QR tanıma cihazda yapılır (ML Kit, model uygulamanın içinde); fotoğraf kaydedilmez, ses alınmaz, internet izni yoktur | — |

## 5. Kapsam dışı (korunamayan durumlar)

- **Root'lu, jailbreak'li veya kötü amaçlı yazılım bulaşmış cihaz.** Kasa açıkken bellekteki veriler, erişilebilirlik hizmetleri veya klavye kaydedicilerle okunabilir.
- **Unutulan ana parola.** Bilinçli tasarım: kurtarma yolu yoktur. Kullanıcı şifreli yedek almalıdır.
- **Kullanıcıyı zorlama** (parolayı söyletme, parmağını okutma).
- **Cihaza fiziksel donanım saldırıları** (çip seviyesinde anahtar çıkarma).
- **Uygulamanın yamalanması** (ör. Pro kontrolünü atlatmak için). Kullanıcı verisine etkisi yoktur, sadece gelir kaybıdır.
- **Deneme süresinin uzatılması.** Telefon saatini geri almak işe yaramaz (görülen en ileri zaman saklanır). Uygulamayı silip yeniden kurmak denemeyi baştan başlatır; kasa da silindiği için kullanıcı verisine etkisi yoktur.

## 6. İyileştirme fikirleri

- Yedek geri yüklemenin gerçek veritabanıyla uçtan uca testi (şifreleme, yanlış parola ve bozulmuş dosya zaten birim testlerle denetleniyor).
- Android otomatik doldurma eklenirse tehdit modelinin yeniden değerlendirilmesi.

## 7. Her yayından önce kontrol

- [ ] Birleşik manifest'te `INTERNET` izni yok (release).
- [ ] `allowBackup="false"` ve `dataExtractionRules` duruyor.
- [ ] Release derlemesi debug anahtarıyla değil, yükleme anahtarıyla imzalı.
- [ ] Kodda `print` veya tanılama çıktısı yok.
- [ ] Commit geçmişinde anahtar, keystore veya parola yok.
- [ ] `flutter test` tamamen geçiyor.
- [ ] Excel dışa aktarma uyarısı ve ana parola doğrulaması çalışıyor.
