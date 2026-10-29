import 'package:flutter/services.dart' show TextInputType;

import '../../l10n/app_localizations.dart';

/// Bir kategoriye ait önceden tanımlanmış alan açıklaması.
/// `key` sabittir (dile bağlı değildir); veritabanına da yazılır ve hangi
/// alanların zaten eklendiğini anlamak için kullanılır.
/// `labelOf` ise o an seçili dildeki görünen adı verir.
class FieldSpec {
  const FieldSpec(
    this.key,
    this.labelOf, {
    this.type = 'text',
    this.sensitive = false,
    this.isDefault = false,
    this.preAdded = false,
    this.generatable = false,
    this.scan,
    this.keyboard,
    this.group,
  });

  final String key;
  final String Function(AppLocalizations t) labelOf;

  /// text, password, url, notes, date
  final String type;
  final bool sensitive;

  /// Tablodaki "Sabit" alan: kategori seçilince otomatik gelir ve X ile
  /// kaldırılamaz. false ise "Opsiyonel"dir: yalnızca "Alan ekle" ile eklenir
  /// ve X ile kaldırılabilir.
  final bool isDefault;

  /// Opsiyonel olduğu halde form açılırken hazır gelen alan (Diğer kategorisi).
  /// X ile kaldırılabilir.
  final bool preAdded;

  /// true ise gerçek bir parola alanıdır: kalkan+ (üret) ve ayarlar ikonları.
  final bool generatable;

  /// Kamera ile tarama ikonu: 'iban' veya 'text'. null ise ikon yok.
  final String? scan;

  final TextInputType? keyboard;

  /// Aynı grup adına sahip alanlar tek satırda yan yana gösterilir.
  final String? group;

  /// Alanın formda ilk açılışta görünüp görünmediği.
  bool get startsAdded => isDefault || preAdded;

  /// Aynı alanın opsiyonel kopyası (Diğer kategorisinde kullanılır).
  FieldSpec asOptional() => FieldSpec(
    key,
    labelOf,
    type: type,
    sensitive: sensitive,
    generatable: generatable,
    scan: scan,
    keyboard: keyboard,
  );
}

/// MÜHÜR kategori alan yapıları.
/// Kaynak: Mühür_Katagori_Tablo.xlsx (Sabit = isDefault, Opsiyonel = diğerleri).
/// Başlık ve Etiket alanları katalogda yoktur; formun üstündeki Başlık
/// (kategoriye göre adlandırılır) ve Etiket alanları bu görevi görür.
/// "Not" her kategoride opsiyoneldir. "Özel alan" formda ayrıca sunulur.
class FieldCatalog {
  const FieldCatalog._();

  static List<FieldSpec> forCategory(String key) => switch (key) {
    'banks' => banks,
    'emails' => emails,
    'social' => social,
    'business' => business,
    'websites' => websites,
    _ => other,
  };

  /// Form ilk açıldığında görünen alanlar.
  static List<FieldSpec> defaultsFor(String key) =>
      forCategory(key).where((f) => f.startsAdded).toList();

  // --- 1. Bankalar ---
  static final List<FieldSpec> banks = [
    // Sabit
    FieldSpec('iban', (t) => t.fieldIban, isDefault: true, scan: 'iban'),
    FieldSpec(
      'internetBankingPassword',
      (t) => t.fcInternetBankingPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
    ),
    FieldSpec(
      'cardPin',
      (t) => t.fcCardPin,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
      keyboard: TextInputType.number,
    ),
    FieldSpec(
      'cardNumber',
      (t) => t.fcCardNumber,
      isDefault: true,
      scan: 'text',
      keyboard: TextInputType.number,
    ),
    FieldSpec(
      'expiryDate',
      (t) => t.fcExpiryDate,
      isDefault: true,
      group: 'expRow',
      keyboard: TextInputType.datetime,
    ),
    FieldSpec(
      'cvv',
      (t) => t.fcCvv,
      sensitive: true,
      isDefault: true,
      group: 'expRow',
      keyboard: TextInputType.number,
    ),
    FieldSpec(
      'customerServiceNo',
      (t) => t.fcCustomerServiceNo,
      isDefault: true,
      keyboard: TextInputType.phone,
    ),
    // Opsiyonel
    FieldSpec('customerNoTc', (t) => t.fcCustomerNoTc),
    FieldSpec('accountType', (t) => t.fcAccountType),
    FieldSpec(
      'phoneBankingPassword',
      (t) => t.fcPhoneBankingPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
    ),
    FieldSpec('swiftBic', (t) => t.fcSwiftBic),
    FieldSpec('cardStatementDate', (t) => t.fcCardStatementDate),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
  ];

  // --- 2. E-postalar ---
  static final List<FieldSpec> emails = [
    // Sabit
    FieldSpec(
      'emailAddress',
      (t) => t.fcEmailAddress,
      isDefault: true,
      keyboard: TextInputType.emailAddress,
    ),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
    ),
    FieldSpec(
      'recoveryEmail',
      (t) => t.fcRecoveryEmail,
      isDefault: true,
      keyboard: TextInputType.emailAddress,
    ),
    FieldSpec(
      'recoveryPhone',
      (t) => t.fcRecoveryPhone,
      isDefault: true,
      keyboard: TextInputType.phone,
    ),
    // Opsiyonel
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
    ),
    FieldSpec('securityQA', (t) => t.fcSecurityQA, sensitive: true),
    FieldSpec('passwordChangeDate', (t) => t.fcPasswordChangeDate, type: 'date'),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
  ];

  // --- 3. Sosyal Medya ---
  static final List<FieldSpec> social = [
    // Sabit
    FieldSpec('usernameProfileId', (t) => t.fcUsernameProfileId, isDefault: true),
    FieldSpec(
      'registeredEmail',
      (t) => t.fcRegisteredEmail,
      isDefault: true,
      keyboard: TextInputType.emailAddress,
    ),
    FieldSpec(
      'registeredPhone',
      (t) => t.fcRegisteredPhone,
      isDefault: true,
      keyboard: TextInputType.phone,
    ),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
    ),
    FieldSpec('profileUrl', (t) => t.fcProfileUrl, type: 'url', isDefault: true),
    // Opsiyonel
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
    ),
    FieldSpec('accountTypeStatus', (t) => t.fcAccountTypeStatus),
    FieldSpec('linkedMainAccount', (t) => t.fcLinkedMainAccount),
    FieldSpec('2faSecretKey', (t) => t.fc2faSecretKey, sensitive: true),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
  ];

  // --- 4. Siteler ---
  static final List<FieldSpec> websites = [
    // Sabit
    FieldSpec('webAddress', (t) => t.fcWebAddress, type: 'url', isDefault: true),
    FieldSpec('usernameEmail', (t) => t.fcUsernameEmail, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
    ),
    FieldSpec(
      'registeredPhone',
      (t) => t.fcRegisteredPhone,
      isDefault: true,
      keyboard: TextInputType.phone,
    ),
    // Opsiyonel
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
    ),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
  ];

  // --- 5. Kurumsal ---
  static final List<FieldSpec> business = [
    // Sabit
    FieldSpec('companyName', (t) => t.fcCompanyName, isDefault: true),
    FieldSpec('corporateUserId', (t) => t.fcCorporateUserId, isDefault: true),
    FieldSpec(
      'emailAddress',
      (t) => t.fcEmailAddress,
      isDefault: true,
      keyboard: TextInputType.emailAddress,
    ),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      generatable: true,
      isDefault: true,
    ),
    FieldSpec('panelUrl', (t) => t.fcPanelUrl, type: 'url', isDefault: true),
    // Opsiyonel
    FieldSpec('departmentPosition', (t) => t.fcDepartmentPosition),
    FieldSpec('licenseCode', (t) => t.fcLicenseCode),
    FieldSpec('supportContact', (t) => t.fcSupportContact),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
  ];

  // --- 6. Diğer ---
  // Kullanıcı Adı / Parola / Not hazır gelir ama opsiyoneldir (X ile
  // kaldırılabilir). Diğer kategorilerin tüm alanları da opsiyonel olarak
  // eklenebilir.
  static final List<FieldSpec> other = _buildOther();

  static List<FieldSpec> _buildOther() {
    final out = <FieldSpec>[
      FieldSpec('username', (t) => t.fieldUsername, preAdded: true),
      FieldSpec(
        'password',
        (t) => t.fieldPassword,
        type: 'password',
        sensitive: true,
        generatable: true,
        preAdded: true,
      ),
      FieldSpec('note', (t) => t.fieldNote, type: 'notes', preAdded: true),
    ];
    final seen = out.map((s) => s.key).toSet();
    for (final list in [banks, emails, social, websites, business]) {
      for (final s in list) {
        if (seen.add(s.key)) out.add(s.asOptional());
      }
    }
    return out;
  }
}
