import '../../l10n/app_localizations.dart';

/// Bir kategoriye ait önceden tanımlanmış alan açıklaması.
/// `key` sabittir (dile bağlı değildir) ve hangi alanların zaten eklendiğini
/// anlamak için kullanılır. `labelOf` ise o an seçili dildeki görünen adı verir.
class FieldSpec {
  const FieldSpec(
    this.key,
    this.labelOf, {
    this.type = 'text',
    this.sensitive = false,
    this.isDefault = false,
    this.generatable = false,
    this.locked = false,
    this.scannable = false,
    this.group,
  });

  final String key;
  final String Function(AppLocalizations t) labelOf;
  final String type; // text, password, url, notes
  final bool sensitive;

  /// true ise kategori seçildiğinde otomatik olarak forma eklenir.
  /// false ise yalnızca "Alan ekle" kataloğunda opsiyonel olarak sunulur.
  final bool isDefault;

  /// true ise bu alan "gerçek" bir giriş şifresidir; şifre oluşturucu
  /// (kalkan+ayarlar) ikonları gösterilir. PIN/CVV gibi alanlar için false.
  final bool generatable;

  /// true ise alan formdan silinemez (X butonu gösterilmez).
  final bool locked;

  /// true ise kamera ile tarama ikonu gösterilir (yalnızca IBAN gibi alanlar).
  final bool scannable;

  /// Aynı grup adına sahip alanlar tek satırda yan yana gösterilir.
  final String? group;
}

/// MÜHÜR kategori alan yapıları ve opsiyonel özel alanlar kataloğu.
/// Kaynak: MUHUR_Kategori_Alan_Yapilari.docx (varsayılan alanlar) ve
/// MUHUR_Opsiyonel_Ozel_Alanlar.docx (ek/opsiyonel alanlar).
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

  static List<FieldSpec> defaultsFor(String key) =>
      forCategory(key).where((f) => f.isDefault).toList();

  // --- 1. Bankalar (catBanks) ---
  // Not: Banka adı artık ayrı bir alan değil; kayıt "Başlık" alanı bu amaçla
  // kullanılır (bkz. entry_edit_screen.dart kategoriye özel başlık etiketi).
  static final List<FieldSpec> banks = [
    FieldSpec('tag', (t) => t.fcTag, isDefault: true),
    FieldSpec(
      'iban',
      (t) => t.fieldIban,
      sensitive: true,
      isDefault: true,
      locked: true,
      scannable: true,
    ),
    FieldSpec(
      'internetBankingPassword',
      (t) => t.fcInternetBankingPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      locked: true,
      generatable: true,
    ),
    FieldSpec(
      'cardPin',
      (t) => t.fcCardPin,
      type: 'password',
      sensitive: true,
      isDefault: true,
    ),
    FieldSpec(
      'cardNumber',
      (t) => t.fcCardNumber,
      isDefault: true,
      group: 'cardRow',
    ),
    FieldSpec(
      'expiryDate',
      (t) => t.fcExpiryDate,
      isDefault: true,
      group: 'cardRow',
    ),
    FieldSpec('cvv', (t) => t.fcCvv, isDefault: true, group: 'cardRow'),
    // Opsiyonel (MUHUR_Opsiyonel_Ozel_Alanlar.docx - Bankalar)
    FieldSpec('customerServiceNo', (t) => t.fcCustomerServiceNo),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes'),
    FieldSpec('customerNoTc', (t) => t.fcCustomerNoTc),
    FieldSpec('branchNameCode', (t) => t.fcBranchNameCode),
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
  ];

  // --- 2. E-postalar (catEmails) ---
  static final List<FieldSpec> emails = [
    FieldSpec('accountTitle', (t) => t.fcAccountTitle, isDefault: true),
    FieldSpec('tag', (t) => t.fcTag, isDefault: true),
    FieldSpec('emailAddress', (t) => t.fcEmailAddress, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      generatable: true,
    ),
    FieldSpec('recoveryEmail', (t) => t.fcRecoveryEmail, isDefault: true),
    FieldSpec('recoveryPhone', (t) => t.fcRecoveryPhone, isDefault: true),
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
      isDefault: true,
    ),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes', isDefault: true),
    // Opsiyonel (MUHUR_Opsiyonel_Ozel_Alanlar.docx - E-postalar)
    FieldSpec('loginMethodProvider', (t) => t.fcLoginMethodProvider),
    FieldSpec('imapSmtp', (t) => t.fcImapSmtp),
    FieldSpec('securityQA', (t) => t.fcSecurityQA, sensitive: true),
    FieldSpec('passwordChangeDate', (t) => t.fcPasswordChangeDate),
  ];

  // --- 3. Sosyal Medya (catSocial) ---
  static final List<FieldSpec> social = [
    FieldSpec('platformTitle', (t) => t.fcPlatformTitle, isDefault: true),
    FieldSpec('tag', (t) => t.fcTag, isDefault: true),
    FieldSpec(
      'usernameProfileId',
      (t) => t.fcUsernameProfileId,
      isDefault: true,
    ),
    FieldSpec('registeredEmail', (t) => t.fcRegisteredEmail, isDefault: true),
    FieldSpec('registeredPhone', (t) => t.fcRegisteredPhone, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      generatable: true,
    ),
    FieldSpec(
      'profileUrl',
      (t) => t.fcProfileUrl,
      type: 'url',
      isDefault: true,
    ),
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
      isDefault: true,
    ),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes', isDefault: true),
    // Opsiyonel (MUHUR_Opsiyonel_Ozel_Alanlar.docx - Sosyal Medya)
    FieldSpec('accountTypeStatus', (t) => t.fcAccountTypeStatus),
    FieldSpec('linkedMainAccount', (t) => t.fcLinkedMainAccount),
    FieldSpec('profileNumericId', (t) => t.fcProfileNumericId),
    FieldSpec('2faSecretKey', (t) => t.fc2faSecretKey, sensitive: true),
  ];

  // --- 4. Kurumsal (catBusiness) ---
  static final List<FieldSpec> business = [
    FieldSpec('serviceName', (t) => t.fcServiceName, isDefault: true),
    FieldSpec('tag', (t) => t.fcTag, isDefault: true),
    FieldSpec('companyName', (t) => t.fcCompanyName, isDefault: true),
    FieldSpec('corporateUserId', (t) => t.fcCorporateUserId, isDefault: true),
    FieldSpec('emailAddress', (t) => t.fcEmailAddress, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      generatable: true,
    ),
    FieldSpec('panelUrl', (t) => t.fcPanelUrl, type: 'url', isDefault: true),
    FieldSpec(
      'departmentPosition',
      (t) => t.fcDepartmentPosition,
      isDefault: true,
    ),
    FieldSpec('licenseCode', (t) => t.fcLicenseCode, isDefault: true),
    FieldSpec('supportContact', (t) => t.fcSupportContact, isDefault: true),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes', isDefault: true),
    // Opsiyonel (MUHUR_Opsiyonel_Ozel_Alanlar.docx - Kurumsal & Kamu)
    FieldSpec('loginMethodVerification', (t) => t.fcLoginMethodVerification),
    FieldSpec('taxOffice', (t) => t.fcTaxOffice),
    FieldSpec('registryNo', (t) => t.fcRegistryNo),
    FieldSpec('ipVpn', (t) => t.fcIpVpn),
    FieldSpec('licenseExpiry', (t) => t.fcLicenseExpiry),
  ];

  // --- 5. Siteler (catWebsites) ---
  static final List<FieldSpec> websites = [
    FieldSpec('siteName', (t) => t.fcSiteName, isDefault: true),
    FieldSpec('tag', (t) => t.fcTag, isDefault: true),
    FieldSpec(
      'webAddress',
      (t) => t.fcWebAddress,
      type: 'url',
      isDefault: true,
    ),
    FieldSpec('usernameEmail', (t) => t.fcUsernameEmail, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      generatable: true,
    ),
    FieldSpec('registeredPhone', (t) => t.fcRegisteredPhone, isDefault: true),
    FieldSpec(
      '2faBackupCodes',
      (t) => t.fc2faBackupCodes,
      type: 'notes',
      sensitive: true,
      isDefault: true,
    ),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes', isDefault: true),
    // Opsiyonel (MUHUR_Opsiyonel_Ozel_Alanlar.docx - Siteler)
    FieldSpec('subscriptionFee', (t) => t.fcSubscriptionFee),
    FieldSpec('registrationDate', (t) => t.fcRegistrationDate),
    FieldSpec('paymentMethod', (t) => t.fcPaymentMethod),
  ];

  // --- 6. Diğer (catOther) ---
  static final List<FieldSpec> other = [
    FieldSpec('username', (t) => t.fieldUsername, isDefault: true),
    FieldSpec(
      'password',
      (t) => t.fieldPassword,
      type: 'password',
      sensitive: true,
      isDefault: true,
      generatable: true,
    ),
    FieldSpec('note', (t) => t.fieldNote, type: 'notes', isDefault: true),
    // Opsiyonel
    FieldSpec('webAddress', (t) => t.fcWebAddress, type: 'url'),
    FieldSpec(
      'pinCode',
      (t) => t.fcPinCode,
      type: 'password',
      sensitive: true,
    ),
    FieldSpec('licenseCodeSimple', (t) => t.fcLicenseCodeSimple),
  ];
}
