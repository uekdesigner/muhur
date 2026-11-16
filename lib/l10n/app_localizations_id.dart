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
  String get unlock => 'Buka';

  @override
  String get wrongPassword => 'Kata sandi utama salah.';

  @override
  String lockedOut(int seconds) {
    return 'Terlalu banyak percobaan. Coba lagi dalam $seconds detik.';
  }

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
  String get typeText => 'Teks';

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
  String get scanning => 'Memindai...';

  @override
  String get ibanCorrected =>
      'Mungkin dikoreksi setelah kesalahan OCR. Periksa dengan teliti.';

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
  String get screenshotAllow => 'Izinkan tangkapan layar';

  @override
  String get screenshotAllowHint =>
      'Perlindungan layar dimatikan selama waktu yang diatur di bawah, lalu aktif kembali secara otomatis.';

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
  String get fcSiteName => 'Nama situs';

  @override
  String get fcWebAddress => 'URL situs';

  @override
  String get fcUsernameEmail => 'Nama pengguna / Email';

  @override
  String get pickFieldTitle => 'Pilih kolom';

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
  String get aboutProtectionTitle => 'Cara data Anda dilindungi';

  @override
  String get aboutProtectionBody =>
      'Semua yang Anda simpan dikunci dengan enkripsi kuat di ponsel ini. Hanya kata sandi utama Anda yang bisa membukanya; kata sandi itu tidak disimpan di mana pun, bahkan oleh MÜHÜR. Tanpanya, data tidak bisa dibaca.';

  @override
  String get aboutOfflineTitle => 'Berfungsi offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR tidak pernah terhubung ke internet. Tidak ada akun, server, maupun cloud. Kata sandi Anda tetap di ponsel ini kecuali Anda sendiri mengekspornya, sebagai cadangan terenkripsi atau file Excel.';

  @override
  String get aboutLicenses => 'Lisensi sumber terbuka';

  @override
  String get aboutLicensesDesc =>
      'Lisensi komponen sumber terbuka yang digunakan di Muhur';

  @override
  String get aboutRights => 'Hak cipta dilindungi undang-undang.';

  @override
  String statusClipboard(int seconds) {
    return 'Papan klip dibersihkan dalam $seconds dtk. Ketuk untuk membersihkan sekarang.';
  }

  @override
  String get helpStatusClipboard =>
      'Ikon papan klip: nilai yang disalin (angka = detik sampai dibersihkan, ketuk untuk membersihkan sekarang)';

  @override
  String aboutVersionLine(String version) {
    return 'Versi $version';
  }

  @override
  String get aboutReleaseNotes => 'Catatan rilis';

  @override
  String get aboutHowTitle => 'Cara kerja';

  @override
  String get aboutStoryTitle => 'Kisah MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Tentang pengembang';

  @override
  String get aboutPrivacySection => 'KEBIJAKAN PRIVASI';

  @override
  String get aboutPermissionsTitle => 'Izin dan data';

  @override
  String get aboutSupportSection => 'DUKUNGAN';

  @override
  String get aboutRate => 'Beri nilai di Google Play';

  @override
  String get aboutRateDesc => 'Beri rating atau ulasan di halaman toko';

  @override
  String get aboutInBrief => 'Singkatnya';

  @override
  String get aboutTechnical => 'Detail teknis';

  @override
  String get aboutProtectionTech =>
      '• Brankas dienkripsi dengan kunci acak 256-bit. Kunci itu disegel dengan AES-256-GCM menggunakan kunci yang diturunkan dari kata sandi utama Anda dengan Argon2id (memori 32 MiB, 3 putaran). Pengaturan penurunan kunci terikat pada segel, sehingga setiap perubahan terdeteksi.\n• Basis data dienkripsi dengan SQLCipher; kuncinya diturunkan dari kunci brankas dengan HKDF-SHA256.\n• Kolom sensitif dienkripsi lagi dengan AES-256-GCM dan terikat pada entri dan kolomnya.\n• Setelah 5 kata sandi salah, aplikasi menunggu 30 detik, berlipat dua setiap kali, hingga 1 jam. Mengubah jam ponsel tidak memperpendek waktu tunggu.\n• Buka kunci biometrik hanya menerima biometrik kuat (Kelas 3) dan mati sendiri jika sidik jari atau wajah baru ditambahkan.\n• Tangkapan dan rekaman layar diblokir, brankas terkunci saat Anda meninggalkan aplikasi, dan nilai yang disalin ditandai sensitif lalu dihapus otomatis.';

  @override
  String get aboutOfflineTech =>
      '• Versi aplikasi yang dirilis tidak memiliki izin internet atau jaringan; izin itu dihapus meski ada pustaka yang memintanya.\n• Cadangan cloud dan transfer ke perangkat lain dimatikan, sehingga data aplikasi tidak disalin keluar dari ponsel.\n• Pengenalan teks memakai model yang tertanam di aplikasi dan berjalan di ponsel; gambar kamera diproses di memori dan tidak pernah disimpan.\n• Data hanya keluar dari ponsel jika Anda sendiri mengekspornya: sebagai file cadangan terenkripsi, atau file Excel tanpa enkripsi yang keamanannya menjadi tanggung jawab Anda.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR tidak mengumpulkan data pribadi, tidak menampilkan iklan, tidak memakai alat analitik, dan tidak membagikan apa pun kepada siapa pun. Aplikasi hanya meminta kamera (untuk memindai teks) dan biometrik (untuk membuka kunci). Langganan dikelola Google Play; aplikasi tidak pernah melihat detail pembayaran Anda. Menghapus aplikasi juga menghapus semua datanya. Sebelum menghapusnya, Anda bisa mengekspor entri ke Excel; keamanan file itu tanggung jawab Anda.';

  @override
  String get aboutPermissionsTech =>
      '• Kamera: hanya dipakai saat pemindai terbuka; tidak ada foto yang disimpan dan tidak ada suara yang direkam.\n• Biometrik: sidik jari atau wajah Anda diperiksa oleh jendela sistem ponsel; MÜHÜR tidak pernah menerima data itu.\n• File: hanya diakses saat Anda sendiri memilih lokasi untuk menyimpan atau membuka cadangan atau file Excel.\n• Tidak ada akun, server, maupun ID pelacakan atau iklan.\n• Pengunduhan aplikasi dan pembelian langganan ditangani Google Play sesuai kebijakan privasi Google.';

  @override
  String get how1T => 'Brankas dan kata sandi utama';

  @override
  String get how1B =>
      'Semuanya disimpan di brankas terenkripsi di ponsel ini. Hanya kata sandi utama yang bisa membukanya. Kata sandi ini tidak bisa dipulihkan, jadi pilih yang Anda ingat dan buat cadangan.';

  @override
  String get how2T => 'Entri dan kategori';

  @override
  String get how2B =>
      'Tambahkan bank, situs web, akun email, dan lainnya. Setiap kategori punya kolom siap pakai, dan Anda bisa menambah kolom sendiri.';

  @override
  String get how3T => 'Menyalin dengan aman';

  @override
  String get how3B =>
      'Ketuk kolom untuk menyalinnya. Papan klip bersih sendiri setelah waktu yang Anda atur. Ikon papan klip di layar utama menghitung mundur; ketuk untuk langsung membersihkannya.';

  @override
  String get how4T => 'Memindai dengan kamera';

  @override
  String get how4B =>
      'Arahkan kamera ke kartu atau dokumen untuk membaca IBAN atau teks tanpa mengetik. Periksa hasilnya sebelum menyimpan.';

  @override
  String get how5T => 'Sampah';

  @override
  String get how5B =>
      'Entri yang dihapus tetap terenkripsi di sampah dan bisa dipulihkan sampai periode yang Anda atur berakhir.';

  @override
  String get how6T => 'Cadangan dan pemulihan';

  @override
  String get how6B =>
      'Buat file cadangan terenkripsi dengan kata sandi sendiri dan simpan di tempat aman. Pemulihan hanya menambah entri; entri yang ada tidak pernah ditimpa.';

  @override
  String get how7T => 'Kunci dan biometrik';

  @override
  String get how7B =>
      'Brankas terkunci otomatis saat Anda meninggalkan aplikasi. Aktifkan biometrik untuk membukanya dengan sidik jari atau wajah.';

  @override
  String get storyBody =>
      'Setiap penemuan besar berawal dari upaya seseorang memecahkan masalah kecil dalam hidupnya. Kisah MÜHÜR pun demikian: perjalanan yang tulus namun teguh, lahir dari ingatan yang hilang di tengah kekacauan dunia digital dan dari naluri untuk melindungi apa yang menjadi milik sendiri.\n\nSemuanya bermula dari jeda menjengkelkan akibat satu kata sandi yang terlupa. Saya merancang MÜHÜR sebagai tempat berlindung pribadi yang hanya berjalan di perangkat saya sendiri, tanpa bergantung pada server cloud milik orang lain. Seiring waktu, saya sadar bahwa bukan hanya saya yang ingin mendapatkan kembali privasi digital.\n\nKini MÜHÜR hadir untuk semua orang yang ingin menjaga datanya sepenuhnya dalam kendali sendiri, tanpa menitipkannya ke server mana pun.\n\nSegel memori digital Anda dengan kunci teraman.';

  @override
  String get devBody =>
      'MÜHÜR adalah proyek independen dari uekdesigner, dirancang dan dikembangkan di Turki. Terima kasih telah menggunakan MÜHÜR.';

  @override
  String get rn100 =>
      '• Rilis pertama.\n• Brankas terenkripsi di ponsel yang dibuka dengan kata sandi utama (Argon2id + AES-256).\n• Kolom siap pakai untuk bank, situs web, email, media sosial, dan akun kerja.\n• Pembuat kata sandi dengan indikator kekuatan.\n• Pindai IBAN dan teks dengan kamera.\n• Buka kunci dengan sidik jari dan wajah.\n• Cadangan dan pemulihan terenkripsi.\n• Ekspor ke Excel (tanpa enkripsi, tanggung jawab Anda).\n• Sampah yang dibersihkan otomatis.\n• Ringkasan brankas yang menunjukkan kata sandi yang dipakai ulang.\n• Kunci otomatis, perlindungan layar, dan hitung mundur papan klip.\n• Berfungsi sepenuhnya offline.\n• 18 bahasa.';

  @override
  String get excelExport => 'Ekspor ke Excel';

  @override
  String get excelExportDesc =>
      'File .xlsx tanpa enkripsi berisi entri Anda, misalnya sebelum menghapus aplikasi';

  @override
  String get excelExportWarnTitle => 'Ekspor tanpa enkripsi';

  @override
  String get excelExportWarn =>
      'File Excel TIDAK dienkripsi. Siapa pun yang mendapatkan file ini bisa membaca semua kata sandi Anda. Tempat menyimpannya, dengan siapa Anda membagikannya, dan menghapusnya setelah itu sepenuhnya menjadi tanggung jawab Anda. Entri di sampah tidak disertakan.';

  @override
  String get excelExportAgree =>
      'Saya mengerti, keamanan file ini tanggung jawab saya.';

  @override
  String get excelExportSaved =>
      'File Excel disimpan. Hapus file itu jika sudah tidak diperlukan.';

  @override
  String get excelExportFailed => 'File Excel tidak dapat dibuat.';

  @override
  String get excelColDomain => 'Domain';

  @override
  String get excelColUpdated => 'Terakhir diubah';

  @override
  String get how8T => 'Ekspor ke Excel';

  @override
  String get how8B =>
      '\"Ekspor ke Excel\" di pengaturan cadangan menulis semua entri Anda (kecuali sampah) ke file .xlsx, dengan satu lembar per kategori. File tidak dienkripsi: Anda mengonfirmasi dengan kata sandi utama dan menyetujui bahwa keamanannya adalah tanggung jawab Anda. Hapus file itu jika sudah tidak diperlukan.';
}
