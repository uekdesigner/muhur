// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Banques';

  @override
  String get catWebsites => 'Sites web';

  @override
  String get catEmails => 'E-mails';

  @override
  String get catSocial => 'Réseaux sociaux';

  @override
  String get catBusiness => 'Travail';

  @override
  String get catOther => 'Autres';

  @override
  String get setupTitle => 'Créer le mot de passe principal';

  @override
  String get setupInfo =>
      'Ce mot de passe est irrécupérable. Si vous l\'oubliez, vos données ne pourront jamais être ouvertes.';

  @override
  String get masterPassword => 'Mot de passe principal';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get changeMasterPassword => 'Changer le mot de passe principal';

  @override
  String get currentPassword => 'Mot de passe actuel';

  @override
  String get newPassword => 'Nouveau mot de passe';

  @override
  String get newPasswordSame =>
      'Le nouveau mot de passe doit être différent de l\'actuel.';

  @override
  String get change => 'Changer';

  @override
  String get masterPasswordChanged => 'Mot de passe principal modifié.';

  @override
  String get changePasswordFailed =>
      'Impossible de changer le mot de passe. Réessayez.';

  @override
  String get passwordTooShort => 'Utilisez au moins 8 caractères.';

  @override
  String get passwordNeedsMix =>
      'Utilisez des minuscules, des majuscules et un chiffre.';

  @override
  String get reqLength => 'Au moins 8 caractères';

  @override
  String get reqLower => 'Une minuscule';

  @override
  String get reqUpper => 'Une majuscule';

  @override
  String get reqDigit => 'Un chiffre';

  @override
  String get reqSpecial => 'Un caractère spécial (!@#...) – facultatif';

  @override
  String get reqOptional => 'facultatif';

  @override
  String get passwordsDontMatch => 'Les mots de passe ne correspondent pas.';

  @override
  String get createVault => 'Créer';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Ouvrir';

  @override
  String get wrongPassword => 'Mot de passe principal incorrect.';

  @override
  String lockedOut(int seconds) {
    return 'Trop de tentatives. Réessayez dans $seconds secondes.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => 'Activer le déverrouillage biométrique ?';

  @override
  String get enable => 'Activer';

  @override
  String get notNow => 'Plus tard';

  @override
  String get biometricReason => 'Déverrouiller Muhur';

  @override
  String get lockNow => 'Verrouiller';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Tout';

  @override
  String get noEntries => 'Aucune entrée pour l\'instant';

  @override
  String get searchHint => 'Titre, domaine, tag';

  @override
  String get addEntry => 'Nouvelle entrée';

  @override
  String get editEntry => 'Modifier l\'entrée';

  @override
  String get title => 'Titre';

  @override
  String get category => 'Catégorie';

  @override
  String get domain => 'Domaine (ex. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Champs';

  @override
  String get addField => 'Nouveau champ';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Texte';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Masquer la valeur';

  @override
  String get save => 'Enregistrer';

  @override
  String get delete => 'Supprimer';

  @override
  String get moveToTrash => 'À la corbeille';

  @override
  String get trash => 'Corbeille';

  @override
  String get trashKeepFor => 'Garder dans la corbeille';

  @override
  String get trashHint =>
      'Les entrées supprimées restent chiffrées dans la corbeille et peuvent être restaurées. Elles sont définitivement supprimées après ce nombre de jours, au prochain déverrouillage du coffre. Réduire la durée retire aussi les éléments plus anciens de la corbeille. Vider la corbeille est irréversible.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Corbeille';

  @override
  String get trashEmpty => 'La corbeille est vide.';

  @override
  String get restore => 'Restaurer';

  @override
  String get deleteForever => 'Effacer';

  @override
  String get deleteForeverConfirm =>
      'Supprimer définitivement cette entrée ? Action irréversible.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours restants',
      one: '$count jour restant',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Vider';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entrées',
      one: '$count entrée',
    );
    return 'Supprimer définitivement $_temp0 de la corbeille ? Action irréversible.';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get deleteConfirm =>
      'Mettre cette entrée à la corbeille ? Vous pourrez la restaurer tant que la corbeille n\'est pas vidée.';

  @override
  String get titleRequired => 'Le titre est obligatoire.';

  @override
  String get fieldUsername => 'Nom d\'utilisateur';

  @override
  String get fieldPassword => 'Mot de passe';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notes';

  @override
  String get copy => 'Copier';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Réglages';

  @override
  String get settingsSecurity => 'Sécurité';

  @override
  String get settingsBackup => 'Sauvegarde';

  @override
  String get settingsGeneral => 'Général';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get autoLock => 'Verrouillage auto';

  @override
  String get immediately => 'Immédiat';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Délai de copie';

  @override
  String get copyTimerHint =>
      'Les données copiées sont effacées du presse-papiers après ce délai, et le coffre reste déverrouillé jusque-là.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biométrie';

  @override
  String get generator => 'Générateur';

  @override
  String get generate => 'Générer';

  @override
  String get length => 'Longueur';

  @override
  String get lowercase => 'Minuscules (a-z)';

  @override
  String get uppercase => 'Majuscules (A-Z)';

  @override
  String get digits => 'Chiffres (0-9)';

  @override
  String get symbols => 'Symboles (!@#...)';

  @override
  String get avoidAmbiguous => 'Sans caractères ambigus (O/0, l/1)';

  @override
  String get regenerate => 'Nouveau';

  @override
  String get usePassword => 'Utiliser';

  @override
  String get strengthWeak => 'Faible';

  @override
  String get strengthFair => 'Moyen';

  @override
  String get strengthGood => 'Bon';

  @override
  String get strengthStrong => 'Fort';

  @override
  String get scan => 'Scanner';

  @override
  String get scanHint =>
      'Tenez l\'appareil photo immobile au-dessus du texte. En mode IBAN, il est détecté automatiquement.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Analyse...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Peut-être corrigé après une erreur OCR. Vérifiez attentivement.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'Caméra indisponible. Vérifiez l\'autorisation de la caméra.';

  @override
  String get editBeforeUse => 'Vérifier et modifier';

  @override
  String get useValue => 'Utiliser';

  @override
  String get scanIsThis => 'C\'est celui-ci ?';

  @override
  String get scanNo => 'Non';

  @override
  String get scanYes => 'Oui';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Gestionnaire de mots de passe';

  @override
  String get tagline =>
      'SCELLEZ vos données numériques.\nPas de serveur. Juste vous et vos données.\nMÜHÜR : le verrou le plus sûr pour votre mémoire numérique.';

  @override
  String get login => 'ENTRER';

  @override
  String get infoTitle => 'À propos de Muhur';

  @override
  String get infoBody =>
      'Muhur conserve vos mots de passe chiffrés uniquement sur cet appareil. Pas de compte, pas de serveur.\n\nVotre mot de passe principal est irrécupérable. Si vous l\'oubliez, vos données ne pourront pas être ouvertes : gardez donc une sauvegarde chiffrée.';

  @override
  String get understandNoRecovery =>
      'Je comprends qu\'un mot de passe principal oublié ne peut pas être récupéré.';

  @override
  String get close => 'Fermer';

  @override
  String get language => 'Langue';

  @override
  String get languageSystem => 'Langue du système';

  @override
  String get sectionLanguage => 'LANGUE';

  @override
  String get sectionExperience => 'EXPÉRIENCE';

  @override
  String get sectionAppearance => 'APPARENCE';

  @override
  String get panelDarkness => 'Opacité des panneaux';

  @override
  String get panelDarknessDesc =>
      'Rend les panneaux et les cartes plus ou moins transparents';

  @override
  String get backgroundTitle => 'Arrière-plan';

  @override
  String get backgroundDim => 'Assombrir';

  @override
  String get backgroundDimDesc =>
      'Rend l\'image d\'arrière-plan plus sombre ou plus claire';

  @override
  String get bgBronze => 'Bronze';

  @override
  String get bgEmber => 'Braise';

  @override
  String get bgSapphire => 'Saphir';

  @override
  String get bgObsidian => 'Obsidienne';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Astuces';

  @override
  String get smartGuideDesc =>
      'Affiche de courtes astuces la première fois que vous utilisez une fonction';

  @override
  String get haptics => 'Vibration';

  @override
  String get hapticsDesc =>
      'Courte vibration au déverrouillage par empreinte et lors d\'une copie';

  @override
  String get reduceAnimations => 'Sans animations';

  @override
  String get reduceAnimationsDesc =>
      'Désactive toutes les animations de l\'app : l\'icône d\'aide qui bouge et brille, le menu d\'aide, les transitions de page, les boîtes de dialogue et la ligne du scanner. Utile sur les appareils lents et pour les personnes sensibles au mouvement.';

  @override
  String get resetTips => 'Réinitialiser les astuces';

  @override
  String get resetTipsDesc =>
      'Réafficher l\'animation d\'aide et toutes les astuces';

  @override
  String get tipsResetDone => 'Les astuces seront réaffichées';

  @override
  String get tipLongPress =>
      'Astuce : appuyez longuement sur une entrée pour la sélectionner, puis supprimez-en plusieurs à la fois.';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Réutilisés';

  @override
  String get planFree => 'GRATUIT';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Autoriser les captures';

  @override
  String get screenshotAllowHint =>
      'La protection d\'écran est désactivée pendant la durée choisie ci-dessous, puis se réactive automatiquement.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'SAUVEGARDE CHIFFRÉE';

  @override
  String get backupExport => 'Sauvegarder';

  @override
  String get backupExportDesc =>
      'Enregistre toutes les entrées, corbeille comprise, dans un fichier protégé par un mot de passe de sauvegarde. Gardez ce fichier en lieu sûr.';

  @override
  String get backupImport => 'Restaurer';

  @override
  String get backupImportDesc =>
      'Ajoute les entrées d\'un fichier de sauvegarde. Les entrées existantes ne sont jamais écrasées ni supprimées.';

  @override
  String get backupPasswordTitle => 'Mot de passe de sauvegarde';

  @override
  String get backupPasswordInfo =>
      'Ce mot de passe protège le fichier de sauvegarde. Il peut être différent du mot de passe principal. Si vous l\'oubliez, la sauvegarde ne pourra pas être ouverte.';

  @override
  String get backupEnterPassword => 'Saisissez le mot de passe de sauvegarde';

  @override
  String get backupContinue => 'Suivant';

  @override
  String get backupSaved => 'Sauvegarde enregistrée';

  @override
  String get backupFailed => 'Impossible de créer la sauvegarde';

  @override
  String backupRestored(int added, int skipped) {
    return '$added ajoutées, $skipped déjà présentes';
  }

  @override
  String get backupWrongPassword => 'Mot de passe de sauvegarde incorrect';

  @override
  String get backupInvalidFile =>
      'Ce n\'est pas un fichier de sauvegarde Muhur valide';

  @override
  String get backupReminderTitle => 'Rappel de sauvegarde';

  @override
  String get backupReminderDesc =>
      'Vous prévient sur l\'écran d\'accueil quand votre dernière sauvegarde est plus ancienne. Réglez sur 0 pour désactiver.';

  @override
  String get backupReminderOff => 'Désactivé';

  @override
  String get backupReminderNever =>
      'Vous n\'avez encore fait aucune sauvegarde. Sauvegardez maintenant pour ne pas perdre vos mots de passe.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Votre dernière sauvegarde remonte à $days jours.',
      one: 'Votre dernière sauvegarde remonte à $days jour.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Sauvegarder';

  @override
  String get backupReminderLater => 'Plus tard';

  @override
  String get statusScreenOn =>
      'Protection d\'écran activée : captures et enregistrements d\'écran bloqués';

  @override
  String get statusScreenOff =>
      'Protection d\'écran désactivée pour l\'instant : captures autorisées';

  @override
  String get statusBackupNever =>
      'Aucune sauvegarde. Créez-en une dans Réglages > Sauvegarde';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Dernière sauvegarde : il y a $days jours',
      one: 'Dernière sauvegarde : hier',
      zero: 'Sauvegardé aujourd\'hui',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Sauvegarde en retard : la dernière remonte à $days jours',
      one: 'Sauvegarde en retard : la dernière remonte à $days jour',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments dans la corbeille',
      one: '$count élément dans la corbeille',
      zero: 'Corbeille vide',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Déverrouillage biométrique activé';

  @override
  String get statusBiometricOff =>
      'Déverrouillage biométrique désactivé (touchez pour configurer)';

  @override
  String get helpStatusScreen =>
      'Icône bouclier : protection d\'écran (vert = activée, pâle = désactivée)';

  @override
  String get helpStatusBackup =>
      'Icône sauvegarde : état de la sauvegarde (vert = récente, pâle = à faire)';

  @override
  String get helpStatusTrash =>
      'Icône corbeille : entrées supprimées (nombre = éléments en attente, touchez pour ouvrir)';

  @override
  String get helpStatusBiometric =>
      'Icône empreinte : déverrouillage biométrique (vert = activé, touchez pour modifier)';

  @override
  String get helpTitle => 'Aide';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => 'Comment l\'utiliser ?';

  @override
  String get helpAdd => 'Bouton + : ajouter une entrée';

  @override
  String get helpTap => 'Toucher une carte : voir les détails';

  @override
  String get helpLongPress => 'Appui long : sélectionner et supprimer';

  @override
  String get helpSearch => 'Recherche : trouver vite';

  @override
  String get helpCategories => 'Catégories : filtrer vos entrées';

  @override
  String get helpLock => 'Icône cadenas : verrouiller le coffre';

  @override
  String get helpSettings => 'Réglages : sauvegarde, verrouillage auto et plus';

  @override
  String get helpStats => 'Panneau du bas : résumé du coffre';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mettre les $count entrées sélectionnées à la corbeille ?',
      one: 'Mettre l\'entrée sélectionnée à la corbeille ?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Nom de la banque';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Mot de passe bancaire';

  @override
  String get fcCardPin => 'PIN de la carte';

  @override
  String get fcCardNumber => 'N° de carte';

  @override
  String get fcExpiryDate => 'Expiration';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'N° du support';

  @override
  String get fcCustomerNoTc => 'N° client / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Type de compte';

  @override
  String get fcPhoneBankingPassword => 'Mot de passe téléphone';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Relevé / Échéance';

  @override
  String get fcAccountTitle => 'Titulaire du compte';

  @override
  String get fcEmailAddress => 'Adresse e-mail';

  @override
  String get fcRecoveryEmail => 'E-mail de secours';

  @override
  String get fcRecoveryPhone => 'Téléphone de secours';

  @override
  String get fc2faBackupCodes => '2FA / Codes de secours';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Question de sécurité';

  @override
  String get fcPasswordChangeDate => 'Mot de passe changé';

  @override
  String get fcPlatformTitle => 'Plateforme / Titre';

  @override
  String get fcUsernameProfileId => 'Utilisateur / ID profil';

  @override
  String get fcRegisteredEmail => 'E-mail enregistré';

  @override
  String get fcRegisteredPhone => 'Téléphone enregistré';

  @override
  String get fcProfileUrl => 'URL du profil';

  @override
  String get fcAccountTypeStatus => 'Type / Statut du compte';

  @override
  String get fcLinkedMainAccount => 'Compte lié';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => 'Clé secrète 2FA';

  @override
  String get fcServiceName => 'Organisme';

  @override
  String get fcCompanyName => 'Nom de l\'entreprise';

  @override
  String get fcCorporateUserId => 'Utilisateur / ID entreprise';

  @override
  String get fcPanelUrl => 'URL du panneau';

  @override
  String get fcDepartmentPosition => 'Service / Poste';

  @override
  String get fcLicenseCode => 'Client / Licence';

  @override
  String get fcSupportContact => 'Contact support';

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
  String get fcSiteName => 'Nom du site';

  @override
  String get fcWebAddress => 'URL du site';

  @override
  String get fcUsernameEmail => 'Utilisateur / E-mail';

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
  String get pickFieldTitle => 'Choisir un champ';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Réglages du générateur';

  @override
  String get saveAndExit => 'Enregistrer';

  @override
  String get customField => 'Champ personnalisé';

  @override
  String get customFieldName => 'Nom du champ';

  @override
  String get customFieldType => 'Type de champ';

  @override
  String get customTypeText => 'Texte';

  @override
  String get customTypeNote => 'Note';

  @override
  String get customTypePassword => 'Mot de passe';

  @override
  String get customTypeDate => 'Date';

  @override
  String get customTypePhone => 'Téléphone';

  @override
  String get orphanVaultTitle => 'Ancien coffre trouvé';

  @override
  String get orphanVaultBody =>
      'Un ancien fichier de coffre existe sur cet appareil, mais ses clés sont illisibles : il ne peut pas être ouvert. Si vous continuez, ces anciennes données seront supprimées. Si vous avez une sauvegarde, créez un nouveau coffre puis restaurez-la.';

  @override
  String get orphanVaultReplace => 'Supprimer et continuer';

  @override
  String get forgotOldPassword =>
      'Je ne me souviens plus de mon mot de passe actuel';

  @override
  String get useCurrentPassword => 'Utiliser plutôt mon mot de passe actuel';

  @override
  String get forgotPasswordBioHint =>
      'Confirmez avec votre empreinte ou votre visage pour définir un nouveau mot de passe principal. Vos entrées restent intactes.';

  @override
  String get bioConfirmFailed => 'Confirmation biométrique échouée ou annulée.';

  @override
  String get biometricChangedBody =>
      'Vos empreintes ou votre visage ont changé : la connexion biométrique a été désactivée pour votre sécurité.';

  @override
  String get limitReachedTitle => 'Limite gratuite atteinte';

  @override
  String limitReachedBody(int count) {
    return 'La version gratuite permet jusqu\'à $count entrées par catégorie. Supprimez une entrée ou passez à Pro pour des entrées illimitées.';
  }

  @override
  String get scanLimitTitle => 'Scans gratuits épuisés';

  @override
  String scanLimitBody(int count) {
    return 'Vous avez utilisé vos $count scans gratuits. Passez à Pro pour scanner sans limite.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added ajoutées, $limited non restaurées (limite gratuite atteinte). Votre fichier de sauvegarde n\'a pas changé.';
  }

  @override
  String get aboutSection => 'À PROPOS';

  @override
  String get aboutVersion => 'Version';

  @override
  String get aboutProtectionTitle => 'Comment vos données sont protégées';

  @override
  String get aboutProtectionBody =>
      'Chaque entrée est chiffrée en AES-256 sur cet appareil. La clé qui ouvre le coffre est dérivée de votre mot de passe principal avec Argon2id ; le mot de passe lui-même n\'est jamais stocké.';

  @override
  String get aboutOfflineTitle => 'Fonctionne hors ligne';

  @override
  String get aboutOfflineBody =>
      'Muhur n\'a ni autorisation Internet, ni compte, ni serveur. Vos données ne quittent jamais cet appareil, sauf si vous exportez vous-même une sauvegarde chiffrée.';

  @override
  String get aboutLicenses => 'Licences open source';

  @override
  String get aboutLicensesDesc =>
      'Licences des composants open source utilisés dans Muhur';

  @override
  String get aboutRights => 'Tous droits réservés.';
}
