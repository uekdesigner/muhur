// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'MÜHÜR';

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
  String get unlock => 'Ouvrir';

  @override
  String get wrongPassword => 'Mot de passe principal incorrect.';

  @override
  String lockedOut(int seconds) {
    return 'Trop de tentatives. Réessayez dans $seconds secondes.';
  }

  @override
  String get enableBiometricsQ => 'Activer le déverrouillage biométrique ?';

  @override
  String get enable => 'Activer';

  @override
  String get notNow => 'Plus tard';

  @override
  String get biometricReason => 'Déverrouiller MÜHÜR';

  @override
  String get lockNow => 'Verrouiller';

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
  String get typeText => 'Texte';

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
  String get scanning => 'Analyse...';

  @override
  String get ibanCorrected =>
      'Peut-être corrigé après une erreur OCR. Vérifiez attentivement.';

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
  String get infoTitle => 'À propos de MÜHÜR';

  @override
  String get infoBody =>
      'MÜHÜR conserve vos mots de passe chiffrés uniquement sur cet appareil. Pas de compte, pas de serveur.\n\nVotre mot de passe principal est irrécupérable. Si vous l\'oubliez, vos données ne pourront pas être ouvertes : gardez donc une sauvegarde chiffrée.';

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
  String get screenshotAllow => 'Autoriser les captures';

  @override
  String get screenshotAllowHint =>
      'La protection d\'écran est désactivée pendant la durée choisie ci-dessous, puis se réactive automatiquement.';

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
      'Ce n\'est pas un fichier de sauvegarde MÜHÜR valide';

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
  String get fcSiteName => 'Nom du site';

  @override
  String get fcWebAddress => 'URL du site';

  @override
  String get fcUsernameEmail => 'Utilisateur / E-mail';

  @override
  String get pickFieldTitle => 'Choisir un champ';

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
      'Confirmez avec votre empreinte pour définir un nouveau mot de passe principal. Vos entrées restent intactes.';

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
  String get aboutProtectionTitle => 'Comment vos données sont protégées';

  @override
  String get aboutProtectionBody =>
      'Tout ce que vous enregistrez est verrouillé par un chiffrement fort sur ce téléphone. Seul votre mot de passe principal peut l\'ouvrir ; il n\'est stocké nulle part, pas même par MÜHÜR. Sans lui, les données sont illisibles.';

  @override
  String get aboutOfflineTitle => 'Fonctionne hors ligne';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR ne se connecte jamais à Internet. Pas de compte, pas de serveur, pas de cloud. Vos mots de passe restent sur ce téléphone, sauf si vous les exportez vous-même, sous forme de sauvegarde chiffrée ou de fichier Excel.';

  @override
  String get aboutRights => 'Tous droits réservés.';

  @override
  String statusClipboard(int seconds) {
    return 'Le presse-papiers sera vidé dans $seconds s. Touchez pour le vider maintenant.';
  }

  @override
  String get helpStatusClipboard =>
      'Icône presse-papiers : valeur copiée (nombre = secondes avant effacement, touchez pour effacer)';

  @override
  String aboutVersionLine(String version) {
    return 'Version $version';
  }

  @override
  String get aboutReleaseNotes => 'Notes de version';

  @override
  String get aboutHowTitle => 'Comment ça marche';

  @override
  String get aboutStoryTitle => 'L\'histoire de MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Qui est derrière MÜHÜR';

  @override
  String get aboutPrivacySection => 'POLITIQUE DE CONFIDENTIALITÉ';

  @override
  String get aboutPermissionsTitle => 'Autorisations et données';

  @override
  String get aboutSupportSection => 'ASSISTANCE';

  @override
  String get aboutRate => 'Noter sur Google Play';

  @override
  String get aboutRateDesc =>
      'Laissez une note ou un avis sur la page du Store';

  @override
  String get aboutInBrief => 'En bref';

  @override
  String get aboutTechnical => 'Détails techniques';

  @override
  String get aboutProtectionTech =>
      '• Le coffre est chiffré avec une clé aléatoire de 256 bits. Cette clé est scellée en AES-256-GCM avec une clé dérivée de votre mot de passe principal par Argon2id (32 Mio de mémoire, 3 passes). Les paramètres de dérivation sont liés au sceau : toute modification est détectée.\n• La base de données est chiffrée avec SQLCipher ; sa clé est dérivée de la clé du coffre par HKDF-SHA256.\n• Les champs sensibles sont chiffrés une seconde fois en AES-256-GCM et liés à leur entrée et à leur champ.\n• Après 5 mots de passe erronés, l\'application attend 30 secondes, puis deux fois plus à chaque fois, jusqu\'à 1 heure. Changer l\'heure du téléphone ne raccourcit pas l\'attente.\n• Le déverrouillage biométrique n\'accepte que la biométrie forte (classe 3) et se désactive si une nouvelle empreinte ou un nouveau visage est ajouté. Sur la plupart des téléphones, la reconnaissance faciale n\'atteint pas ce niveau ; seule l\'empreinte est donc généralement utilisable.\n• Les captures et enregistrements d\'écran sont bloqués, le coffre se verrouille quand vous quittez l\'application, et les valeurs copiées sont marquées comme sensibles puis effacées automatiquement.';

  @override
  String get aboutOfflineTech =>
      '• La version publiée de l\'application n\'a aucune autorisation Internet ou réseau ; elles sont retirées même si une bibliothèque les demande.\n• La sauvegarde dans le cloud et le transfert vers un autre appareil sont désactivés : les données de l\'application ne sont pas copiées hors du téléphone.\n• La reconnaissance de texte utilise un modèle intégré à l\'application et fonctionne sur le téléphone ; les images de la caméra sont traitées en mémoire et jamais enregistrées.\n• Les données ne quittent le téléphone que si vous les exportez vous-même : sous forme de sauvegarde chiffrée, ou de fichier Excel non chiffré dont la sécurité relève de votre responsabilité.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR ne collecte aucune donnée personnelle, n\'affiche pas de publicité, n\'utilise aucun outil d\'analyse et ne partage rien avec personne. Il ne demande que la caméra (pour scanner du texte) et la biométrie (pour déverrouiller). Les abonnements sont gérés par Google Play ; l\'application ne voit jamais vos informations de paiement. Supprimer l\'application supprime toutes ses données. Avant cela, vous pouvez exporter vos entrées vers Excel ; la sécurité de ce fichier relève de votre responsabilité.';

  @override
  String get aboutPermissionsTech =>
      '• Caméra : utilisée uniquement quand le scanner est ouvert ; aucune photo n\'est enregistrée et aucun son n\'est capté.\n• Biométrie : votre empreinte ou votre visage sont vérifiés par la fenêtre système du téléphone ; MÜHÜR ne reçoit jamais ces données.\n• Fichiers : accès uniquement quand vous choisissez où enregistrer ou ouvrir une sauvegarde ou un fichier Excel.\n• Aucun compte, aucun serveur, aucun identifiant de suivi ou publicitaire.\n• Le téléchargement et l\'achat d\'un abonnement sont gérés par Google Play selon la politique de confidentialité de Google.';

  @override
  String get how1T => 'Coffre et mot de passe principal';

  @override
  String get how1B =>
      'Tout est conservé dans un coffre chiffré sur ce téléphone. Seul votre mot de passe principal l\'ouvre. Il est irrécupérable : choisissez-en un dont vous vous souviendrez et faites une sauvegarde.';

  @override
  String get how2T => 'Entrées et catégories';

  @override
  String get how2B =>
      'Les catégories sont fixes : Banques, Sites web, E-mails, Réseaux sociaux, Travail et Autres. Quand vous ajoutez une entrée avec le bouton +, vous choisissez sa catégorie, qui apporte les champs adaptés. Vous ne pouvez pas créer de catégorie, mais « Nouveau champ » permet d\'ajouter des champs à une entrée : choisissez-en un dans la liste ou créez un « Champ personnalisé » avec le nom de votre choix.';

  @override
  String get how3T => 'Copier en toute sécurité';

  @override
  String get how3B =>
      'Touchez un champ pour le copier. Le presse-papiers se vide tout seul après le délai choisi. L\'icône sur l\'écran d\'accueil affiche le compte à rebours ; touchez-la pour vider tout de suite.';

  @override
  String get how4T => 'Scanner avec la caméra';

  @override
  String get how4B =>
      'Pointez la caméra vers une carte ou un document pour lire un IBAN ou du texte au lieu de le taper. Vérifiez le résultat avant d\'enregistrer.';

  @override
  String get how5T => 'Corbeille';

  @override
  String get how5B =>
      'Les entrées supprimées attendent dans la corbeille, toujours chiffrées, et peuvent être restaurées jusqu\'à la fin du délai choisi.';

  @override
  String get how6T => 'Sauvegarde et restauration';

  @override
  String get how6B =>
      'Créez un fichier de sauvegarde chiffré avec son propre mot de passe et rangez-le en lieu sûr. La restauration ne fait qu\'ajouter des entrées ; les existantes ne sont jamais écrasées.';

  @override
  String get how7T => 'Verrouillage et biométrie';

  @override
  String get how7B =>
      'Le coffre se verrouille dès que vous quittez l\'application. Activez la biométrie pour l\'ouvrir avec votre empreinte (ou votre visage sur les téléphones compatibles).';

  @override
  String get storyBody =>
      'Toute grande invention commence par l\'envie de résoudre un petit problème de sa propre vie. L\'histoire de MÜHÜR est exactement celle-là : un voyage sincère mais déterminé, né d\'une mémoire perdue dans le chaos du monde numérique et de l\'instinct de protéger ce qui nous appartient.\n\nTout a commencé par cette pause agaçante causée par un seul mot de passe oublié. J\'ai conçu MÜHÜR comme un refuge personnel qui ne fonctionne que sur mon propre appareil, sans dépendre des serveurs cloud de qui que ce soit. Avec le temps, j\'ai compris que d\'autres que moi voulaient reprendre le contrôle de leur vie privée numérique.\n\nAujourd\'hui, MÜHÜR est là pour tous ceux qui veulent garder leurs données entièrement sous leur contrôle, sans les confier à aucun serveur.\n\nScellez le verrou le plus sûr de votre mémoire numérique.';

  @override
  String get devBody =>
      'MÜHÜR est un projet indépendant de UEK DESIGNER, conçu et développé en Turquie. Merci d\'utiliser MÜHÜR.';

  @override
  String get rn100 =>
      '• Première version.\n• Coffre chiffré sur le téléphone, ouvert avec un mot de passe principal (Argon2id + AES-256).\n• Champs prêts à l\'emploi pour banques, sites web, e-mail, réseaux sociaux et comptes professionnels.\n• Générateur de mots de passe avec indicateur de robustesse.\n• Scan d\'IBAN et de texte avec la caméra.\n• Déverrouillage par empreinte (et visage sur les téléphones compatibles).\n• Sauvegarde et restauration chiffrées.\n• Export vers Excel (non chiffré, sous votre responsabilité).\n• Corbeille avec nettoyage automatique.\n• Résumé du coffre indiquant les mots de passe réutilisés.\n• Codes de validation en deux étapes, ajoutés par code QR.\n• Historique des mots de passe et santé du coffre.\n• Essai gratuit de Pro pendant 14 jours, sans carte.\n• Verrouillage automatique, protection d\'écran et compte à rebours du presse-papiers.\n• Fonctionne entièrement hors ligne.\n• 18 langues.';

  @override
  String get excelExport => 'Exporter vers Excel';

  @override
  String get excelExportDesc =>
      'Fichier .xlsx non chiffré de vos entrées, par exemple avant de supprimer l\'application';

  @override
  String get excelExportWarnTitle => 'Export non chiffré';

  @override
  String get excelExportWarn =>
      'Le fichier Excel n\'est PAS chiffré. Quiconque obtient ce fichier peut lire tous vos mots de passe. L\'endroit où vous le conservez, les personnes avec qui vous le partagez et sa suppression ensuite relèvent entièrement de votre responsabilité. Les entrées de la corbeille ne sont pas incluses.';

  @override
  String get excelExportAgree =>
      'J\'ai compris : la sécurité du fichier relève de ma responsabilité.';

  @override
  String get excelExportSaved =>
      'Fichier Excel enregistré. Supprimez-le dès que vous n\'en avez plus besoin.';

  @override
  String get excelExportFailed => 'Impossible de créer le fichier Excel.';

  @override
  String get excelColDomain => 'Domaine';

  @override
  String get excelColUpdated => 'Dernière modification';

  @override
  String get how8T => 'Exporter vers Excel';

  @override
  String get how8B =>
      '« Exporter vers Excel », dans les réglages de sauvegarde, écrit toutes vos entrées (hors corbeille) dans un fichier .xlsx, avec une feuille par catégorie. Le fichier n\'est pas chiffré : vous confirmez avec votre mot de passe principal et acceptez que sa sécurité relève de votre responsabilité. Supprimez-le quand vous n\'en avez plus besoin.';

  @override
  String get proFeatureTitle => 'Fonction Pro';

  @override
  String get proFieldsBody =>
      'Ajouter des champs supplémentaires à une entrée est une fonction Pro. Les champs déjà ajoutés restent et peuvent toujours être modifiés.';

  @override
  String get proBiometricBody =>
      'Le déverrouillage par empreinte est une fonction Pro. Vous pouvez toujours déverrouiller avec votre mot de passe principal.';

  @override
  String get proBackgroundsBody =>
      'Les arrière-plans supplémentaires sont une fonction Pro. L\'arrière-plan par défaut reste toujours disponible.';

  @override
  String bioGraceWarn(String days) {
    return 'Le déverrouillage par empreinte reste actif encore $days, puis se désactive. Assurez-vous de connaître votre mot de passe principal. Si vous l\'avez oublié, définissez-en un nouveau avec votre empreinte dans Réglages, via « Changer le mot de passe principal ».';
  }

  @override
  String get genNewPassword => 'Générer un nouveau mot de passe';

  @override
  String fieldRemoved(String label) {
    return 'Champ « $label » supprimé';
  }

  @override
  String get undo => 'Annuler';

  @override
  String get proStatusActive => 'Votre abonnement Pro est actif';

  @override
  String proStatusTrial(String days) {
    return 'Essai gratuit : encore $days';
  }

  @override
  String get proStatusFree => 'Formule gratuite';

  @override
  String get proTrialInfo =>
      'À la fin de l\'essai, vous passez automatiquement à la formule gratuite. Aucune carte n\'est demandée et rien n\'est supprimé.';

  @override
  String get proFeatEntries => 'Entrées illimitées';

  @override
  String get proFeatEntriesDesc => 'Gratuit : 3 par catégorie';

  @override
  String get proFeatScan => 'Scan illimité avec la caméra';

  @override
  String get proFeatScanDesc => 'Gratuit : 3 scans';

  @override
  String get proFeatFields => 'Champs supplémentaires et personnalisés';

  @override
  String get proFeatFieldsDesc =>
      'Ajoutez à une entrée tous les champs nécessaires';

  @override
  String get proFeatBio => 'Déverrouillage par empreinte';

  @override
  String get proFeatBioDesc => 'Ouvrez votre coffre d\'un simple geste';

  @override
  String get proFeatBg => 'Tous les arrière-plans';

  @override
  String get proFeatBgDesc => 'Les 5 arrière-plans';

  @override
  String get proFeatHealth => 'Santé du coffre';

  @override
  String get proFeatHealthDesc =>
      'Voyez quels mots de passe sont faibles ou réutilisés et ouvrez directement l\'entrée';

  @override
  String get proFeatTotp => 'Codes de validation en deux étapes';

  @override
  String get proFeatTotpDesc => 'Codes générés hors ligne, dans votre coffre';

  @override
  String get proFeatHistory => 'Historique des mots de passe';

  @override
  String get proFeatHistoryDesc =>
      'Les anciens mots de passe sont conservés pour y revenir';

  @override
  String get proYearly => 'Annuel';

  @override
  String get proMonthly => 'Mensuel';

  @override
  String get proPerYear => '/ an';

  @override
  String get proPerMonth => '/ mois';

  @override
  String get proBestValue => 'Le plus avantageux';

  @override
  String get proSubscribe => 'S\'abonner';

  @override
  String get proRestore => 'Restaurer l\'achat';

  @override
  String get proManage => 'Gérer l\'abonnement';

  @override
  String get proFinePrint =>
      'Le paiement passe par Google Play. L\'abonnement se renouvelle automatiquement jusqu\'à ce que vous l\'annuliez, à tout moment, dans Google Play. Si l\'abonnement prend fin, vos entrées ne sont pas supprimées.';

  @override
  String get proComingSoon =>
      'Les achats seront possibles dès la publication de MÜHÜR sur Google Play.';

  @override
  String get proSeePlans => 'Découvrir Pro';

  @override
  String get proHealthBody =>
      'Voir quelles entrées ont des mots de passe faibles ou réutilisés est une fonction Pro. Les totaux restent toujours visibles.';

  @override
  String get healthWeakHint =>
      'Courts ou faciles à deviner. Remplacez-les avec le générateur de mots de passe.';

  @override
  String get healthReusedHint =>
      'Le même mot de passe sert dans plusieurs entrées. S\'il fuite, les autres sont aussi en danger.';

  @override
  String get healthFairHint =>
      'Acceptables, mais ils pourraient être plus longs et plus variés.';

  @override
  String get healthAllGood =>
      'Aucun mot de passe faible ou réutilisé. Votre coffre est en bonne santé.';

  @override
  String get proHistoryBody =>
      'Voir les anciennes valeurs d\'un mot de passe est une fonction Pro. Les mots de passe que vous modifiez avec Pro sont conservés ici.';

  @override
  String get historyEmpty =>
      'Ce mot de passe n\'a pas encore été modifié. Quand vous le modifierez, l\'ancienne valeur apparaîtra ici.';

  @override
  String get historyNote =>
      'Les 10 dernières valeurs de chaque champ de mot de passe sont conservées, chiffrées comme le reste du coffre. L\'historique n\'est pas inclus dans les sauvegardes.';

  @override
  String get historyClearQ =>
      'Touchez encore une fois Supprimer pour effacer l\'historique de ce champ.';

  @override
  String get totpHint => 'Clé de configuration ou lien otpauth://';

  @override
  String get totpInvalid =>
      'Cette clé n\'est pas valide. Collez la clé de configuration fournie par le site.';

  @override
  String get qrScan => 'Scanner un code QR';

  @override
  String get qrScanHint =>
      'Dirigez la caméra vers le code QR affiché par le site lors de la configuration de la validation en deux étapes.';

  @override
  String get qrNot2fa => 'Ce code QR n\'est pas un code de configuration 2FA.';

  @override
  String get qrMigration =>
      'Il s\'agit d\'un code de transfert Google Authenticator. Scannez plutôt le code QR de configuration de chaque site.';

  @override
  String get totpEmpty =>
      'Pas encore de clé. Scannez le code QR pour l\'ajouter.';

  @override
  String get how9T => 'Validation en deux étapes (2FA)';

  @override
  String get how9B =>
      'Dans une entrée, touchez « Nouveau champ » et choisissez « Clé secrète 2FA ». Scannez avec l\'icône à côté du champ le code QR que le site affiche lors de la configuration de la 2FA, ou collez la clé de configuration. Si vous enregistrez le champ vide, il reste dans les détails de l\'entrée et vous pouvez scanner le code QR depuis cet écran. Les détails affichent un code à 6 chiffres et le temps restant ; copiez-le et saisissez-le sur le site. Les codes sont générés hors ligne à partir de l\'horloge du téléphone ; si l\'heure est fausse, les codes ne fonctionnent pas. Les codes existants continuent de fonctionner même après la fin de Pro.';

  @override
  String get how10T => 'Historique des mots de passe et santé du coffre';

  @override
  String get how10B =>
      'Avec Pro, quand vous changez un mot de passe, l\'ancien est conservé chiffré ; l\'icône d\'historique dans les détails de l\'entrée affiche les 10 derniers. L\'icône de bouclier du panneau de résumé de l\'écran d\'accueil ouvre la santé du coffre : les mots de passe faibles et réutilisés y sont listés, et un appui ouvre l\'entrée.';

  @override
  String get how11T => 'Pro et l\'essai gratuit';

  @override
  String get how11B =>
      'Après la première configuration, toutes les fonctions Pro sont gratuites pendant 14 jours, sans carte bancaire. À la fin de l\'essai, vous passez au plan gratuit : jusqu\'à 3 entrées par catégorie et 3 scans avec la caméra. Rien n\'est supprimé, les codes 2FA existants continuent de fonctionner et le déverrouillage par empreinte reste actif encore 7 jours. Les fonctions Pro se reconnaissent à la petite étiquette PRO dans leur coin.';

  @override
  String get showValue => 'Afficher';

  @override
  String get hideValue => 'Masquer';

  @override
  String get favoriteAdd => 'Ajouter aux favoris';

  @override
  String get favoriteRemove => 'Retirer des favoris';

  @override
  String get proRedeem => 'Utiliser un code cadeau';

  @override
  String get proThanks => 'Merci ! MÜHÜR Pro est actif.';

  @override
  String get proPending =>
      'Le paiement est en attente. Pro s\'activera automatiquement une fois terminé.';

  @override
  String get proBuyError =>
      'L\'achat n\'a pas pu aboutir. Réessayez plus tard.';

  @override
  String get proRestoreDone => 'MÜHÜR Pro est actif.';

  @override
  String get proRestoreNone =>
      'Aucun Pro actif n\'a été trouvé sur ce compte Google.';

  @override
  String get proStoreUnavailable =>
      'Impossible d\'accéder à Google Play. Vérifiez que le Play Store est installé et que vous êtes connecté.';

  @override
  String proStatusGift(String days) {
    return 'Pro offert : encore $days';
  }

  @override
  String get proStatusGiftLife => 'Pro offert : sans limite de durée';

  @override
  String get scanCodesTitle => 'Scanner les codes de secours';

  @override
  String get scanCodesHint =>
      'Dirigez la caméra vers la liste de codes de secours fournie par le site. Les codes lus s\'ajoutent ici ; validez quand ils y sont tous.';

  @override
  String scanCodesCount(int count) {
    return 'Codes lus : $count';
  }

  @override
  String get scanCodesClear => 'Vider la liste';

  @override
  String get totpRemoveTitle => 'Supprimer la clé 2FA ?';

  @override
  String get totpRemoveBody =>
      'Si la validation en deux étapes est toujours active sur le site, vous risquez de ne plus pouvoir vous connecter à ce compte sans cette clé. Désactivez-la d\'abord sur le site ou vérifiez que vos codes de secours sont enregistrés.';

  @override
  String get proBannerTrial => 'Continuez après l\'essai';

  @override
  String get proBannerFree => 'Toutes les fonctions, sans limite';

  @override
  String proBannerPrice(String yearly, String month) {
    return '$yearly par an · environ $month par mois';
  }
}
