// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Bank';

  @override
  String get catWebsites => 'Situs web';

  @override
  String get catEmails => 'Email';

  @override
  String get catSocial => 'Media sosial';

  @override
  String get catBusiness => 'Kerja';

  @override
  String get catOther => 'Lainnya';

  @override
  String get setupTitle => 'Buat kata sandi utama';

  @override
  String get setupInfo =>
      'Kata sandi ini tidak bisa dipulihkan. Jika Anda lupa, data Anda tidak akan pernah bisa dibuka.';

  @override
  String get masterPassword => 'Kata sandi utama';

  @override
  String get confirmPassword => 'Konfirmasi kata sandi';

  @override
  String get changeMasterPassword => 'Ubah kata sandi utama';

  @override
  String get currentPassword => 'Kata sandi saat ini';

  @override
  String get newPassword => 'Kata sandi baru';

  @override
  String get newPasswordSame =>
      'Kata sandi baru harus berbeda dari yang sekarang.';

  @override
  String get change => 'Ubah';

  @override
  String get masterPasswordChanged => 'Kata sandi utama diubah.';

  @override
  String get changePasswordFailed =>
      'Gagal mengubah kata sandi. Silakan coba lagi.';

  @override
  String get passwordTooShort => 'Gunakan minimal 8 karakter.';

  @override
  String get passwordNeedsMix => 'Gunakan huruf kecil, huruf besar, dan angka.';

  @override
  String get reqLength => 'Minimal 8 karakter';

  @override
  String get reqLower => 'Huruf kecil';

  @override
  String get reqUpper => 'Huruf besar';

  @override
  String get reqDigit => 'Angka';

  @override
  String get reqSpecial => 'Karakter khusus (!@#...) – opsional';

  @override
  String get reqOptional => 'opsional';

  @override
  String get passwordsDontMatch => 'Kata sandi tidak cocok.';

  @override
  String get createVault => 'Buat';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Buka';

  @override
  String get wrongPassword => 'Kata sandi utama salah.';

  @override
  String lockedOut(int seconds) {
    return 'Terlalu banyak percobaan. Coba lagi dalam $seconds detik.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Aktifkan buka kunci biometrik?';

  @override
  String get enable => 'Aktifkan';

  @override
  String get notNow => 'Nanti saja';

  @override
  String get biometricReason => 'Buka kunci Muhur';

  @override
  String get lockNow => 'Kunci';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Semua';

  @override
  String get noEntries => 'Belum ada entri';

  @override
  String get searchHint => 'Cari judul, domain, tag';

  @override
  String get addEntry => 'Tambah entri';

  @override
  String get editEntry => 'Edit entri';

  @override
  String get title => 'Judul';

  @override
  String get category => 'Kategori';

  @override
  String get domain => 'Domain (mis. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Kolom';

  @override
  String get addField => 'Tambah kolom';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Teks';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Sembunyikan nilai';

  @override
  String get save => 'Simpan';

  @override
  String get delete => 'Hapus';

  @override
  String get moveToTrash => 'Ke sampah';

  @override
  String get trash => 'Sampah';

  @override
  String get trashKeepFor => 'Simpan di sampah selama';

  @override
  String get trashHint =>
      'Entri yang dihapus tetap terenkripsi di sampah dan bisa dipulihkan. Setelah jumlah hari ini, entri dihapus permanen saat brankas dibuka berikutnya. Memperpendek periode juga menghapus entri lama dari sampah. Mengosongkan sampah tidak bisa dibatalkan.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hari',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Sampah';

  @override
  String get trashEmpty => 'Sampah kosong.';

  @override
  String get restore => 'Pulihkan';

  @override
  String get deleteForever => 'Hapus permanen';

  @override
  String get deleteForeverConfirm =>
      'Hapus entri ini secara permanen? Tindakan ini tidak bisa dibatalkan.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sisa $count hari',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Kosongkan';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entri',
    );
    return 'Hapus permanen $_temp0 dari sampah? Tindakan ini tidak bisa dibatalkan.';
  }

  @override
  String get cancel => 'Batal';

  @override
  String get deleteConfirm =>
      'Pindahkan entri ini ke sampah? Anda bisa memulihkannya sampai sampah dikosongkan.';

  @override
  String get titleRequired => 'Judul wajib diisi.';

  @override
  String get fieldUsername => 'Nama pengguna';

  @override
  String get fieldPassword => 'Kata sandi';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Catatan';

  @override
  String get copy => 'Salin';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Pengaturan';

  @override
  String get settingsSecurity => 'Keamanan';

  @override
  String get settingsBackup => 'Cadangan';

  @override
  String get settingsGeneral => 'Umum';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get autoLock => 'Kunci otomatis';

  @override
  String get immediately => 'Langsung';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Waktu salin';

  @override
  String get copyTimerHint =>
      'Data yang disalin dihapus dari papan klip setelah waktu ini, dan brankas tetap terbuka sampai saat itu.';

  @override
  String secondsShort(int seconds) {
    return '$seconds dtk';
  }

  @override
  String get biometricUnlock => 'Biometrik';

  @override
  String get generator => 'Generator';

  @override
  String get generate => 'Buat';

  @override
  String get length => 'Panjang';

  @override
  String get lowercase => 'Huruf kecil (a-z)';

  @override
  String get uppercase => 'Huruf besar (A-Z)';

  @override
  String get digits => 'Angka (0-9)';

  @override
  String get symbols => 'Simbol (!@#...)';

  @override
  String get avoidAmbiguous => 'Tanpa karakter mirip (O/0, l/1)';

  @override
  String get regenerate => 'Baru';

  @override
  String get usePassword => 'Pakai';

  @override
  String get strengthWeak => 'Lemah';

  @override
  String get strengthFair => 'Cukup';

  @override
  String get strengthGood => 'Baik';

  @override
  String get strengthStrong => 'Kuat';

  @override
  String get scan => 'Pindai';

  @override
  String get scanHint =>
      'Tahan kamera tetap diam di atas teks. Dalam mode IBAN, teks terdeteksi otomatis.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Memindai...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Mungkin dikoreksi setelah kesalahan OCR. Periksa dengan teliti.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError => 'Kamera tidak tersedia. Periksa izin kamera.';

  @override
  String get editBeforeUse => 'Periksa dan edit';

  @override
  String get useValue => 'Pakai';

  @override
  String get scanIsThis => 'Apakah ini?';

  @override
  String get scanNo => 'Tidak';

  @override
  String get scanYes => 'Ya';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Pengelola Kata Sandi';

  @override
  String get tagline =>
      'SEGEL data digital Anda.\nTanpa server. Hanya Anda dan data Anda.\nMÜHÜR: kunci teraman untuk memori digital Anda.';

  @override
  String get login => 'MASUK';

  @override
  String get infoTitle => 'Tentang Muhur';

  @override
  String get infoBody =>
      'Muhur menyimpan kata sandi Anda secara terenkripsi hanya di perangkat ini. Tidak ada akun dan tidak ada server.\n\nKata sandi utama Anda tidak bisa dipulihkan. Jika lupa, data Anda tidak bisa dibuka, jadi simpan cadangan terenkripsi.';

  @override
  String get understandNoRecovery =>
      'Saya mengerti bahwa kata sandi utama yang terlupa tidak bisa dipulihkan.';

  @override
  String get close => 'Tutup';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSystem => 'Bawaan sistem';

  @override
  String get sectionLanguage => 'BAHASA';

  @override
  String get sectionExperience => 'PENGALAMAN';

  @override
  String get sectionAppearance => 'TAMPILAN';

  @override
  String get panelDarkness => 'Kegelapan panel';

  @override
  String get panelDarknessDesc =>
      'Membuat panel dan kartu lebih atau kurang transparan';

  @override
  String get backgroundTitle => 'Latar belakang';

  @override
  String get backgroundDim => 'Peredupan';

  @override
  String get backgroundDimDesc =>
      'Membuat gambar latar lebih gelap atau lebih terang';

  @override
  String get bgBronze => 'Perunggu';

  @override
  String get bgEmber => 'Bara';

  @override
  String get bgSapphire => 'Safir';

  @override
  String get bgObsidian => 'Obsidian';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Tips pintar';

  @override
  String get smartGuideDesc =>
      'Menampilkan tips singkat saat pertama kali memakai fitur';

  @override
  String get haptics => 'Getaran';

  @override
  String get hapticsDesc =>
      'Getaran singkat saat membuka dengan sidik jari dan saat menyalin';

  @override
  String get reduceAnimations => 'Tanpa animasi';

  @override
  String get reduceAnimationsDesc =>
      'Mematikan semua animasi di aplikasi: goyangan dan cahaya ikon bantuan, menu bantuan, transisi halaman, dialog, dan garis pemindai. Berguna untuk perangkat yang lebih lambat dan orang yang sensitif terhadap gerakan.';

  @override
  String get resetTips => 'Atur ulang tips';

  @override
  String get resetTipsDesc => 'Tampilkan lagi animasi bantuan dan semua tips';

  @override
  String get tipsResetDone => 'Tips akan ditampilkan lagi';

  @override
  String get tipLongPress =>
      'Tips: tekan lama sebuah entri untuk memilihnya, lalu hapus beberapa sekaligus.';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Duplikat';

  @override
  String get planFree => 'GRATIS';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Izinkan tangkapan layar';

  @override
  String get screenshotAllowHint =>
      'Perlindungan layar dimatikan selama waktu yang diatur di bawah, lalu aktif kembali secara otomatis.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'CADANGAN TERENKRIPSI';

  @override
  String get backupExport => 'Buat cadangan';

  @override
  String get backupExportDesc =>
      'Menyimpan semua entri, termasuk sampah, ke file yang dilindungi kata sandi cadangan. Simpan file di tempat yang aman.';

  @override
  String get backupImport => 'Pulihkan';

  @override
  String get backupImportDesc =>
      'Menambahkan entri dari file cadangan. Entri yang ada tidak pernah ditimpa atau dihapus.';

  @override
  String get backupPasswordTitle => 'Kata sandi cadangan';

  @override
  String get backupPasswordInfo =>
      'Kata sandi ini melindungi file cadangan. Boleh berbeda dari kata sandi utama Anda. Jika lupa, cadangan tidak bisa dibuka.';

  @override
  String get backupEnterPassword => 'Masukkan kata sandi cadangan';

  @override
  String get backupContinue => 'Lanjut';

  @override
  String get backupSaved => 'Cadangan disimpan';

  @override
  String get backupFailed => 'Gagal membuat cadangan';

  @override
  String backupRestored(int added, int skipped) {
    return '$added ditambahkan, $skipped sudah ada';
  }

  @override
  String get backupWrongPassword => 'Kata sandi cadangan salah';

  @override
  String get backupInvalidFile => 'Ini bukan file cadangan Muhur yang valid';

  @override
  String get backupReminderTitle => 'Pengingat cadangan';

  @override
  String get backupReminderDesc =>
      'Mengingatkan di layar utama saat cadangan terakhir lebih lama dari ini. Atur ke 0 untuk mematikan.';

  @override
  String get backupReminderOff => 'Mati';

  @override
  String get backupReminderNever =>
      'Anda belum membuat cadangan. Buat sekarang agar kata sandi Anda tidak hilang.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Cadangan terakhir Anda $days hari yang lalu.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Cadangkan';

  @override
  String get backupReminderLater => 'Nanti';

  @override
  String get statusScreenOn =>
      'Perlindungan layar aktif: tangkapan dan rekaman layar diblokir';

  @override
  String get statusScreenOff =>
      'Perlindungan layar sementara mati: tangkapan layar diizinkan';

  @override
  String get statusBackupNever =>
      'Belum ada cadangan. Buat di Pengaturan > Cadangan';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Cadangan terakhir: $days hari lalu',
      one: 'Cadangan terakhir: kemarin',
      zero: 'Dicadangkan hari ini',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Cadangan terlambat: terakhir $days hari lalu',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item di sampah',
      zero: 'Sampah kosong',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Buka kunci biometrik aktif';

  @override
  String get statusBiometricOff =>
      'Buka kunci biometrik mati (ketuk untuk mengatur)';

  @override
  String get helpStatusScreen =>
      'Ikon perisai: perlindungan layar (hijau = aktif, pudar = mati)';

  @override
  String get helpStatusBackup =>
      'Ikon cadangan: status cadangan (hijau = cadangan baru, pudar = perlu dicadangkan)';

  @override
  String get helpStatusTrash =>
      'Ikon sampah: entri yang dihapus (angka = item menunggu, ketuk untuk membuka)';

  @override
  String get helpStatusBiometric =>
      'Ikon sidik jari: buka kunci biometrik (hijau = aktif, ketuk untuk mengubah)';

  @override
  String get helpTitle => 'Bantuan';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Cara pakai?';

  @override
  String get helpAdd => 'Tombol +: tambah entri baru';

  @override
  String get helpTap => 'Ketuk kartu: lihat detail';

  @override
  String get helpLongPress => 'Tekan lama: pilih dan hapus';

  @override
  String get helpSearch => 'Cari: temukan dengan cepat';

  @override
  String get helpCategories => 'Kategori: saring entri';

  @override
  String get helpLock => 'Ikon gembok: kunci brankas sekarang';

  @override
  String get helpSettings =>
      'Pengaturan: cadangan, kunci otomatis, dan lainnya';

  @override
  String get helpStats => 'Panel bawah: ringkasan brankas';

  @override
  String deleteSelectedConfirm(int count) {
    return 'Pindahkan $count entri terpilih ke sampah?';
  }

  @override
  String get fcBankName => 'Nama bank';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Kata sandi internet banking';

  @override
  String get fcCardPin => 'PIN kartu';

  @override
  String get fcCardNumber => 'Nomor kartu';

  @override
  String get fcExpiryDate => 'Masa berlaku';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'No. layanan pelanggan';

  @override
  String get fcCustomerNoTc => 'No. nasabah / NIK';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Jenis rekening';

  @override
  String get fcPhoneBankingPassword => 'Kata sandi phone banking';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Tagihan / Jatuh tempo';

  @override
  String get fcAccountTitle => 'Nama pemilik rekening';

  @override
  String get fcEmailAddress => 'Alamat email';

  @override
  String get fcRecoveryEmail => 'Email pemulihan';

  @override
  String get fcRecoveryPhone => 'Telepon pemulihan';

  @override
  String get fc2faBackupCodes => '2FA / Kode cadangan';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Pertanyaan keamanan';

  @override
  String get fcPasswordChangeDate => 'Kata sandi diubah';

  @override
  String get fcPlatformTitle => 'Platform / Judul';

  @override
  String get fcUsernameProfileId => 'Nama pengguna / ID profil';

  @override
  String get fcRegisteredEmail => 'Email terdaftar';

  @override
  String get fcRegisteredPhone => 'Telepon terdaftar';

  @override
  String get fcProfileUrl => 'URL profil';

  @override
  String get fcAccountTypeStatus => 'Jenis / Status akun';

  @override
  String get fcLinkedMainAccount => 'Akun tertaut';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => 'Kunci rahasia 2FA';

  @override
  String get fcServiceName => 'Institusi';

  @override
  String get fcCompanyName => 'Nama perusahaan';

  @override
  String get fcCorporateUserId => 'Nama pengguna / ID perusahaan';

  @override
  String get fcPanelUrl => 'URL panel';

  @override
  String get fcDepartmentPosition => 'Divisi / Jabatan';

  @override
  String get fcLicenseCode => 'Pelanggan / Lisensi';

  @override
  String get fcSupportContact => 'Kontak dukungan';

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
  String get fcSiteName => 'Nama situs';

  @override
  String get fcWebAddress => 'URL situs';

  @override
  String get fcUsernameEmail => 'Nama pengguna / Email';

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
  String get pickFieldTitle => 'Pilih kolom';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Pengaturan generator';

  @override
  String get saveAndExit => 'Simpan & keluar';

  @override
  String get customField => 'Kolom kustom';

  @override
  String get customFieldName => 'Nama kolom';

  @override
  String get customFieldType => 'Jenis kolom';

  @override
  String get customTypeText => 'Teks';

  @override
  String get customTypeNote => 'Catatan';

  @override
  String get customTypePassword => 'Kata sandi';

  @override
  String get customTypeDate => 'Tanggal';

  @override
  String get customTypePhone => 'Telepon';

  @override
  String get orphanVaultTitle => 'Brankas lama ditemukan';

  @override
  String get orphanVaultBody =>
      'Ada file brankas lama di perangkat ini, tetapi kuncinya tidak bisa dibaca sehingga tidak bisa dibuka. Jika Anda melanjutkan, data lama itu akan dihapus. Jika punya cadangan, buat brankas baru lalu pulihkan cadangannya.';

  @override
  String get orphanVaultReplace => 'Hapus & lanjut';

  @override
  String get forgotOldPassword => 'Saya lupa kata sandi saat ini';

  @override
  String get useCurrentPassword => 'Pakai kata sandi saat ini saja';

  @override
  String get forgotPasswordBioHint =>
      'Konfirmasi dengan sidik jari atau wajah untuk menetapkan kata sandi utama baru. Entri Anda tetap seperti semula.';

  @override
  String get bioConfirmFailed => 'Konfirmasi biometrik gagal atau dibatalkan.';

  @override
  String get biometricChangedBody =>
      'Pengaturan sidik jari atau wajah Anda berubah, jadi login biometrik dimatikan demi keamanan Anda.';

  @override
  String get limitReachedTitle => 'Batas gratis tercapai';

  @override
  String limitReachedBody(int count) {
    return 'Versi gratis menampung hingga $count entri per kategori. Hapus entri atau beralih ke Pro untuk entri tanpa batas.';
  }

  @override
  String get scanLimitTitle => 'Pindaian gratis habis';

  @override
  String scanLimitBody(int count) {
    return 'Anda sudah memakai $count pindaian gratis. Beralih ke Pro untuk memindai tanpa batas.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added ditambahkan, $limited tidak dipulihkan (batas gratis tercapai). File cadangan Anda tidak berubah.';
  }

  @override
  String get aboutSection => 'TENTANG';

  @override
  String get aboutVersion => 'Versi';

  @override
  String get aboutProtectionTitle => 'Cara data Anda dilindungi';

  @override
  String get aboutProtectionBody =>
      'Setiap entri dienkripsi dengan AES-256 di perangkat ini. Kunci pembuka brankas diturunkan dari kata sandi utama Anda dengan Argon2id; kata sandinya sendiri tidak pernah disimpan.';

  @override
  String get aboutOfflineTitle => 'Berfungsi offline';

  @override
  String get aboutOfflineBody =>
      'Muhur tidak memiliki izin internet, akun, maupun server. Data Anda tidak pernah keluar dari perangkat ini kecuali Anda sendiri mengekspor cadangan terenkripsi.';

  @override
  String get aboutLicenses => 'Lisensi sumber terbuka';

  @override
  String get aboutLicensesDesc =>
      'Lisensi komponen sumber terbuka yang digunakan di Muhur';

  @override
  String get aboutRights => 'Hak cipta dilindungi undang-undang.';
}
