// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Banche';

  @override
  String get catWebsites => 'Siti web';

  @override
  String get catEmails => 'Email';

  @override
  String get catSocial => 'Social';

  @override
  String get catBusiness => 'Lavoro';

  @override
  String get catOther => 'Altro';

  @override
  String get setupTitle => 'Crea la password principale';

  @override
  String get setupInfo =>
      'Questa password non può essere recuperata. Se la dimentichi, i tuoi dati non potranno mai essere aperti.';

  @override
  String get masterPassword => 'Password principale';

  @override
  String get confirmPassword => 'Conferma password';

  @override
  String get changeMasterPassword => 'Cambia password principale';

  @override
  String get currentPassword => 'Password attuale';

  @override
  String get newPassword => 'Nuova password';

  @override
  String get newPasswordSame =>
      'La nuova password deve essere diversa da quella attuale.';

  @override
  String get change => 'Cambia';

  @override
  String get masterPasswordChanged => 'Password principale cambiata.';

  @override
  String get changePasswordFailed =>
      'Impossibile cambiare la password. Riprova.';

  @override
  String get passwordTooShort => 'Usa almeno 8 caratteri.';

  @override
  String get passwordNeedsMix =>
      'Usa lettere minuscole e maiuscole e una cifra.';

  @override
  String get reqLength => 'Almeno 8 caratteri';

  @override
  String get reqLower => 'Una minuscola';

  @override
  String get reqUpper => 'Una maiuscola';

  @override
  String get reqDigit => 'Una cifra';

  @override
  String get reqSpecial => 'Un carattere speciale (!@#...) – facoltativo';

  @override
  String get reqOptional => 'facoltativo';

  @override
  String get passwordsDontMatch => 'Le password non coincidono.';

  @override
  String get createVault => 'Crea';

  @override
  String get unlock => 'Apri';

  @override
  String get wrongPassword => 'Password principale errata.';

  @override
  String lockedOut(int seconds) {
    return 'Troppi tentativi. Riprova tra $seconds secondi.';
  }

  @override
  String get enableBiometricsQ => 'Attivare lo sblocco biometrico?';

  @override
  String get enable => 'Attiva';

  @override
  String get notNow => 'Non ora';

  @override
  String get biometricReason => 'Sblocca Muhur';

  @override
  String get lockNow => 'Blocca';

  @override
  String get all => 'Tutte';

  @override
  String get noEntries => 'Ancora nessuna voce';

  @override
  String get searchHint => 'Cerca titolo, dominio, tag';

  @override
  String get addEntry => 'Nuova voce';

  @override
  String get editEntry => 'Modifica voce';

  @override
  String get title => 'Titolo';

  @override
  String get category => 'Categoria';

  @override
  String get domain => 'Dominio (es. example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Campi';

  @override
  String get addField => 'Nuovo campo';

  @override
  String get typeText => 'Testo';

  @override
  String get sensitive => 'Nascondi valore';

  @override
  String get save => 'Salva';

  @override
  String get delete => 'Elimina';

  @override
  String get moveToTrash => 'Nel cestino';

  @override
  String get trash => 'Cestino';

  @override
  String get trashKeepFor => 'Conserva nel cestino per';

  @override
  String get trashHint =>
      'Le voci eliminate restano cifrate nel cestino e possono essere ripristinate. Vengono eliminate definitivamente dopo questo numero di giorni, al successivo sblocco della cassaforte. Ridurre il periodo rimuove anche le voci più vecchie dal cestino. Svuotare il cestino è irreversibile.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Cestino';

  @override
  String get trashEmpty => 'Il cestino è vuoto.';

  @override
  String get restore => 'Ripristina';

  @override
  String get deleteForever => 'Cancella';

  @override
  String get deleteForeverConfirm =>
      'Eliminare definitivamente questa voce? L\'azione è irreversibile.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni rimasti',
      one: '1 giorno rimasto',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Svuota';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voci',
      one: '1 voce',
    );
    return 'Eliminare definitivamente $_temp0 dal cestino? L\'azione è irreversibile.';
  }

  @override
  String get cancel => 'Annulla';

  @override
  String get deleteConfirm =>
      'Spostare questa voce nel cestino? Potrai ripristinarla finché il cestino non viene svuotato.';

  @override
  String get titleRequired => 'Il titolo è obbligatorio.';

  @override
  String get fieldUsername => 'Nome utente';

  @override
  String get fieldPassword => 'Password';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Note';

  @override
  String get copy => 'Copia';

  @override
  String get settings => 'Impostazioni';

  @override
  String get settingsSecurity => 'Sicurezza';

  @override
  String get settingsBackup => 'Backup';

  @override
  String get settingsGeneral => 'Generali';

  @override
  String get settingsAbout => 'Info';

  @override
  String get autoLock => 'Blocco automatico';

  @override
  String get immediately => 'Subito';

  @override
  String get copyTimer => 'Timer copia';

  @override
  String get copyTimerHint =>
      'I dati copiati vengono cancellati dagli appunti dopo questo tempo e la cassaforte resta sbloccata fino ad allora.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biometria';

  @override
  String get generator => 'Generatore';

  @override
  String get generate => 'Genera';

  @override
  String get length => 'Lunghezza';

  @override
  String get lowercase => 'Minuscole (a-z)';

  @override
  String get uppercase => 'Maiuscole (A-Z)';

  @override
  String get digits => 'Cifre (0-9)';

  @override
  String get symbols => 'Simboli (!@#...)';

  @override
  String get avoidAmbiguous => 'Senza caratteri simili (O/0, l/1)';

  @override
  String get regenerate => 'Nuova';

  @override
  String get usePassword => 'Usa';

  @override
  String get strengthWeak => 'Debole';

  @override
  String get strengthFair => 'Discreta';

  @override
  String get strengthGood => 'Buona';

  @override
  String get strengthStrong => 'Forte';

  @override
  String get scan => 'Scansiona';

  @override
  String get scanHint =>
      'Tieni la fotocamera ferma sopra il testo. In modalità IBAN viene rilevato automaticamente.';

  @override
  String get scanning => 'Scansione...';

  @override
  String get ibanCorrected =>
      'Forse corretto dopo un errore OCR. Controlla con attenzione.';

  @override
  String get cameraError =>
      'Fotocamera non disponibile. Controlla l\'autorizzazione della fotocamera.';

  @override
  String get editBeforeUse => 'Controlla e modifica';

  @override
  String get useValue => 'Usa';

  @override
  String get scanIsThis => 'È questo?';

  @override
  String get scanNo => 'No';

  @override
  String get scanYes => 'Sì';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Gestore di password';

  @override
  String get tagline =>
      'SIGILLA i tuoi dati digitali.\nNessun server. Solo tu e i tuoi dati.\nMÜHÜR: il lucchetto più sicuro per la tua memoria digitale.';

  @override
  String get login => 'ENTRA';

  @override
  String get infoTitle => 'Info su Muhur';

  @override
  String get infoBody =>
      'Muhur conserva le tue password cifrate solo su questo dispositivo. Nessun account, nessun server.\n\nLa password principale non può essere recuperata. Se la dimentichi, i tuoi dati non potranno essere aperti: conserva quindi un backup cifrato.';

  @override
  String get understandNoRecovery =>
      'Ho capito che una password principale dimenticata non può essere recuperata.';

  @override
  String get close => 'Chiudi';

  @override
  String get language => 'Lingua';

  @override
  String get languageSystem => 'Lingua di sistema';

  @override
  String get sectionLanguage => 'LINGUA';

  @override
  String get sectionExperience => 'ESPERIENZA';

  @override
  String get sectionAppearance => 'ASPETTO';

  @override
  String get panelDarkness => 'Opacità pannelli';

  @override
  String get panelDarknessDesc =>
      'Rende pannelli e schede più o meno trasparenti';

  @override
  String get backgroundTitle => 'Sfondo';

  @override
  String get backgroundDim => 'Oscuramento';

  @override
  String get backgroundDimDesc =>
      'Rende l\'immagine di sfondo più scura o più chiara';

  @override
  String get bgBronze => 'Bronzo';

  @override
  String get bgEmber => 'Brace';

  @override
  String get bgSapphire => 'Zaffiro';

  @override
  String get bgObsidian => 'Ossidiana';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Suggerimenti';

  @override
  String get smartGuideDesc =>
      'Mostra brevi suggerimenti la prima volta che usi una funzione';

  @override
  String get haptics => 'Vibrazione';

  @override
  String get hapticsDesc =>
      'Breve vibrazione allo sblocco con impronta e durante la copia';

  @override
  String get reduceAnimations => 'Senza animazioni';

  @override
  String get reduceAnimationsDesc =>
      'Disattiva tutte le animazioni dell\'app: il movimento e il bagliore dell\'icona di aiuto, il menu di aiuto, le transizioni di pagina, le finestre di dialogo e la linea dello scanner. Utile sui dispositivi più lenti e per chi è sensibile al movimento.';

  @override
  String get resetTips => 'Ripristina suggerimenti';

  @override
  String get resetTipsDesc =>
      'Mostra di nuovo l\'animazione di aiuto e tutti i suggerimenti';

  @override
  String get tipsResetDone => 'I suggerimenti verranno mostrati di nuovo';

  @override
  String get tipLongPress =>
      'Suggerimento: tieni premuta una voce per selezionarla, poi eliminane più di una insieme.';

  @override
  String get statTotal => 'Totale';

  @override
  String get statReused => 'Riusate';

  @override
  String get planFree => 'GRATIS';

  @override
  String get screenshotAllow => 'Consenti screenshot';

  @override
  String get screenshotAllowHint =>
      'La protezione dello schermo viene disattivata per il tempo impostato qui sotto, poi si riattiva automaticamente.';

  @override
  String get backupSection => 'BACKUP CIFRATO';

  @override
  String get backupExport => 'Crea backup';

  @override
  String get backupExportDesc =>
      'Salva tutte le voci, cestino compreso, in un file protetto da una password di backup. Conserva il file in un posto sicuro.';

  @override
  String get backupImport => 'Ripristina';

  @override
  String get backupImportDesc =>
      'Aggiunge le voci da un file di backup. Le voci esistenti non vengono mai sovrascritte né eliminate.';

  @override
  String get backupPasswordTitle => 'Password del backup';

  @override
  String get backupPasswordInfo =>
      'Questa password protegge il file di backup. Può essere diversa dalla password principale. Se la dimentichi, il backup non potrà essere aperto.';

  @override
  String get backupEnterPassword => 'Inserisci la password del backup';

  @override
  String get backupContinue => 'Avanti';

  @override
  String get backupSaved => 'Backup salvato';

  @override
  String get backupFailed => 'Impossibile creare il backup';

  @override
  String backupRestored(int added, int skipped) {
    return '$added aggiunte, $skipped già presenti';
  }

  @override
  String get backupWrongPassword => 'Password del backup errata';

  @override
  String get backupInvalidFile => 'Questo non è un file di backup Muhur valido';

  @override
  String get backupReminderTitle => 'Promemoria backup';

  @override
  String get backupReminderDesc =>
      'Te lo ricorda nella schermata iniziale quando l\'ultimo backup è più vecchio di così. Imposta 0 per disattivarlo.';

  @override
  String get backupReminderOff => 'Off';

  @override
  String get backupReminderNever =>
      'Non hai ancora fatto un backup. Fallo ora per non perdere le tue password.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Il tuo ultimo backup risale a $days giorni fa.',
      one: 'Il tuo ultimo backup risale a 1 giorno fa.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Backup';

  @override
  String get backupReminderLater => 'Più tardi';

  @override
  String get statusScreenOn =>
      'Protezione schermo attiva: screenshot e registrazione schermo bloccati';

  @override
  String get statusScreenOff =>
      'Protezione schermo disattivata per ora: screenshot consentiti';

  @override
  String get statusBackupNever =>
      'Nessun backup. Creane uno in Impostazioni > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Ultimo backup: $days giorni fa',
      one: 'Ultimo backup: ieri',
      zero: 'Backup fatto oggi',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup in ritardo: l\'ultimo risale a $days giorni fa',
      one: 'Backup in ritardo: l\'ultimo risale a 1 giorno fa',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count voci nel cestino',
      one: '1 voce nel cestino',
      zero: 'Cestino vuoto',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Sblocco biometrico attivo';

  @override
  String get statusBiometricOff =>
      'Sblocco biometrico disattivato (tocca per configurarlo)';

  @override
  String get helpStatusScreen =>
      'Icona scudo: protezione schermo (verde = attiva, sbiadita = disattivata)';

  @override
  String get helpStatusBackup =>
      'Icona backup: stato del backup (verde = recente, sbiadita = da fare)';

  @override
  String get helpStatusTrash =>
      'Icona cestino: voci eliminate (numero = voci in attesa, tocca per aprire)';

  @override
  String get helpStatusBiometric =>
      'Icona impronta: sblocco biometrico (verde = attivo, tocca per cambiare)';

  @override
  String get helpTitle => 'Aiuto';

  @override
  String get helpMenuTitle => 'Come si usa?';

  @override
  String get helpAdd => 'Pulsante +: aggiungi una voce';

  @override
  String get helpTap => 'Tocca una scheda: vedi i dettagli';

  @override
  String get helpLongPress => 'Pressione lunga: seleziona ed elimina';

  @override
  String get helpSearch => 'Ricerca: trova in fretta';

  @override
  String get helpCategories => 'Categorie: filtra le voci';

  @override
  String get helpLock => 'Icona lucchetto: blocca subito la cassaforte';

  @override
  String get helpSettings => 'Impostazioni: backup, blocco automatico e altro';

  @override
  String get helpStats => 'Pannello in basso: riepilogo della cassaforte';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Spostare le $count voci selezionate nel cestino?',
      one: 'Spostare la voce selezionata nel cestino?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Nome banca';

  @override
  String get fcInternetBankingPassword => 'Password home banking';

  @override
  String get fcCardPin => 'PIN carta';

  @override
  String get fcCardNumber => 'N. carta';

  @override
  String get fcExpiryDate => 'Scadenza';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'N. assistenza';

  @override
  String get fcCustomerNoTc => 'N. cliente / ID';

  @override
  String get fcAccountType => 'Tipo di conto';

  @override
  String get fcPhoneBankingPassword => 'Password telefono';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Estratto / Scadenza';

  @override
  String get fcAccountTitle => 'Intestatario';

  @override
  String get fcEmailAddress => 'Indirizzo email';

  @override
  String get fcRecoveryEmail => 'Email di recupero';

  @override
  String get fcRecoveryPhone => 'Telefono di recupero';

  @override
  String get fc2faBackupCodes => '2FA / Codici di backup';

  @override
  String get fcSecurityQA => 'Domanda di sicurezza';

  @override
  String get fcPasswordChangeDate => 'Password cambiata';

  @override
  String get fcPlatformTitle => 'Piattaforma / Titolo';

  @override
  String get fcUsernameProfileId => 'Utente / ID profilo';

  @override
  String get fcRegisteredEmail => 'Email registrata';

  @override
  String get fcRegisteredPhone => 'Telefono registrato';

  @override
  String get fcProfileUrl => 'URL profilo';

  @override
  String get fcAccountTypeStatus => 'Tipo / Stato account';

  @override
  String get fcLinkedMainAccount => 'Account collegato';

  @override
  String get fc2faSecretKey => 'Chiave segreta 2FA';

  @override
  String get fcServiceName => 'Ente';

  @override
  String get fcCompanyName => 'Nome azienda';

  @override
  String get fcCorporateUserId => 'Utente / ID aziendale';

  @override
  String get fcPanelUrl => 'URL pannello';

  @override
  String get fcDepartmentPosition => 'Reparto / Ruolo';

  @override
  String get fcLicenseCode => 'Cliente / Licenza';

  @override
  String get fcSupportContact => 'Contatto assistenza';

  @override
  String get fcSiteName => 'Nome sito';

  @override
  String get fcWebAddress => 'URL sito';

  @override
  String get fcUsernameEmail => 'Utente / Email';

  @override
  String get pickFieldTitle => 'Scegli un campo';

  @override
  String get generatorSettings => 'Impostazioni generatore';

  @override
  String get saveAndExit => 'Salva ed esci';

  @override
  String get customField => 'Campo personalizzato';

  @override
  String get customFieldName => 'Nome campo';

  @override
  String get customFieldType => 'Tipo campo';

  @override
  String get customTypeText => 'Testo';

  @override
  String get customTypeNote => 'Nota';

  @override
  String get customTypePassword => 'Password';

  @override
  String get customTypeDate => 'Data';

  @override
  String get customTypePhone => 'Telefono';

  @override
  String get orphanVaultTitle => 'Trovata una vecchia cassaforte';

  @override
  String get orphanVaultBody =>
      'Su questo dispositivo c\'è un vecchio file della cassaforte, ma le sue chiavi non sono leggibili e non può essere aperto. Se continui, quei vecchi dati verranno eliminati. Se hai un backup, crea una nuova cassaforte e poi ripristinalo.';

  @override
  String get orphanVaultReplace => 'Elimina e continua';

  @override
  String get forgotOldPassword => 'Non ricordo la password attuale';

  @override
  String get useCurrentPassword => 'Usa invece la password attuale';

  @override
  String get forgotPasswordBioHint =>
      'Conferma con impronta o volto per impostare una nuova password principale. Le tue voci restano invariate.';

  @override
  String get bioConfirmFailed =>
      'Conferma biometrica non riuscita o annullata.';

  @override
  String get biometricChangedBody =>
      'Le impostazioni di impronta o volto sono cambiate, quindi per sicurezza l\'accesso biometrico è stato disattivato.';

  @override
  String get limitReachedTitle => 'Limite gratuito raggiunto';

  @override
  String limitReachedBody(int count) {
    return 'La versione gratuita consente fino a $count voci per categoria. Elimina una voce o passa a Pro per voci illimitate.';
  }

  @override
  String get scanLimitTitle => 'Scansioni gratuite esaurite';

  @override
  String scanLimitBody(int count) {
    return 'Hai usato le tue $count scansioni gratuite. Passa a Pro per scansioni illimitate.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added aggiunte, $limited non ripristinate (limite gratuito raggiunto). Il file di backup non è cambiato.';
  }

  @override
  String get aboutProtectionTitle => 'Come sono protetti i tuoi dati';

  @override
  String get aboutProtectionBody =>
      'Tutto ciò che salvi è protetto da una crittografia robusta su questo telefono. Solo la tua password principale può aprirlo: non viene salvata da nessuna parte, nemmeno da MÜHÜR. Senza di essa i dati sono illeggibili.';

  @override
  String get aboutOfflineTitle => 'Funziona offline';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR non si collega mai a Internet. Niente account, niente server, niente cloud. Le tue password restano su questo telefono, a meno che non le esporti tu stesso, come backup cifrato o come file Excel.';

  @override
  String get aboutRights => 'Tutti i diritti riservati.';

  @override
  String statusClipboard(int seconds) {
    return 'Gli appunti verranno cancellati tra $seconds s. Tocca per cancellarli ora.';
  }

  @override
  String get helpStatusClipboard =>
      'Icona appunti: valore copiato (numero = secondi alla cancellazione, tocca per cancellare ora)';

  @override
  String aboutVersionLine(String version) {
    return 'Versione $version';
  }

  @override
  String get aboutReleaseNotes => 'Note di versione';

  @override
  String get aboutHowTitle => 'Come funziona';

  @override
  String get aboutStoryTitle => 'La storia di MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Chi c\'è dietro MÜHÜR';

  @override
  String get aboutPrivacySection => 'INFORMATIVA SULLA PRIVACY';

  @override
  String get aboutPermissionsTitle => 'Autorizzazioni e dati';

  @override
  String get aboutSupportSection => 'SUPPORTO';

  @override
  String get aboutRate => 'Valuta su Google Play';

  @override
  String get aboutRateDesc =>
      'Lascia un voto o una recensione nella pagina dello Store';

  @override
  String get aboutInBrief => 'In breve';

  @override
  String get aboutTechnical => 'Dettagli tecnici';

  @override
  String get aboutProtectionTech =>
      '• La cassaforte è cifrata con una chiave casuale a 256 bit. Questa chiave è sigillata con AES-256-GCM usando una chiave derivata dalla password principale con Argon2id (32 MiB di memoria, 3 passaggi). I parametri di derivazione sono legati al sigillo: ogni manomissione viene rilevata.\n• Il database è cifrato con SQLCipher; la sua chiave deriva da quella della cassaforte tramite HKDF-SHA256.\n• I campi sensibili sono cifrati una seconda volta con AES-256-GCM e legati alla loro voce e al loro campo.\n• Dopo 5 password errate l\'app attende 30 secondi, raddoppiando ogni volta fino a 1 ora. Cambiare l\'ora del telefono non accorcia l\'attesa.\n• Lo sblocco biometrico accetta solo biometria forte (classe 3) e si disattiva se viene aggiunta una nuova impronta o un nuovo volto.\n• Screenshot e registrazioni dello schermo sono bloccati, la cassaforte si blocca quando esci dall\'app e i valori copiati sono contrassegnati come sensibili e cancellati automaticamente.';

  @override
  String get aboutOfflineTech =>
      '• La versione pubblicata dell\'app non ha autorizzazioni Internet o di rete; vengono rimosse anche se una libreria le richiede.\n• Il backup nel cloud e il trasferimento su un altro dispositivo sono disattivati: i dati dell\'app non vengono copiati fuori dal telefono.\n• Il riconoscimento del testo usa un modello incluso nell\'app e funziona sul telefono; le immagini della fotocamera sono elaborate in memoria e mai salvate.\n• I dati lasciano il telefono solo se li esporti tu: come file di backup cifrato o come file Excel non cifrato, la cui sicurezza è una tua responsabilità.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR non raccoglie dati personali, non mostra pubblicità, non usa strumenti di analisi e non condivide nulla con nessuno. Chiede solo la fotocamera (per scansionare testo) e la biometria (per sbloccare). Gli abbonamenti sono gestiti da Google Play; l\'app non vede mai i tuoi dati di pagamento. Disinstallando l\'app ne elimini tutti i dati. Prima puoi esportare le tue voci in Excel; la sicurezza di quel file è una tua responsabilità.';

  @override
  String get aboutPermissionsTech =>
      '• Fotocamera: usata solo quando lo scanner è aperto; non vengono salvate foto né registrato audio.\n• Biometria: impronta o volto sono verificati dalla finestra di sistema del telefono; MÜHÜR non riceve mai questi dati.\n• File: accesso solo quando scegli dove salvare o aprire un backup o un file Excel.\n• Nessun account, nessun server, nessun identificativo di tracciamento o pubblicitario.\n• Il download e l\'acquisto di un abbonamento sono gestiti da Google Play secondo l\'informativa sulla privacy di Google.';

  @override
  String get how1T => 'Cassaforte e password principale';

  @override
  String get how1B =>
      'Tutto è conservato in una cassaforte cifrata su questo telefono. Solo la password principale la apre. Non è recuperabile: scegline una che ricorderai e fai un backup.';

  @override
  String get how2T => 'Voci e categorie';

  @override
  String get how2B =>
      'Le categorie sono fisse: Banche, Siti web, Email, Social, Lavoro e Altro. Quando aggiungi una voce con il pulsante +, ne scegli la categoria, che porta con sé i campi adatti. Non puoi creare nuove categorie, ma con «Nuovo campo» puoi aggiungere campi a una voce: scegline uno dall\'elenco o crea un «Campo personalizzato» con il nome che preferisci.';

  @override
  String get how3T => 'Copiare in sicurezza';

  @override
  String get how3B =>
      'Tocca un campo per copiarlo. Gli appunti si svuotano da soli dopo il tempo impostato. L\'icona nella schermata principale mostra il conto alla rovescia; toccala per svuotarli subito.';

  @override
  String get how4T => 'Scansione con la fotocamera';

  @override
  String get how4B =>
      'Inquadra una carta o un documento per leggere un IBAN o del testo invece di digitarlo. Controlla il risultato prima di salvare.';

  @override
  String get how5T => 'Cestino';

  @override
  String get how5B =>
      'Le voci eliminate restano cifrate nel cestino e possono essere ripristinate fino alla fine del periodo impostato.';

  @override
  String get how6T => 'Backup e ripristino';

  @override
  String get how6B =>
      'Crea un file di backup cifrato con una sua password e conservalo in un posto sicuro. Il ripristino aggiunge soltanto voci; quelle esistenti non vengono mai sovrascritte.';

  @override
  String get how7T => 'Blocco e biometria';

  @override
  String get how7B =>
      'La cassaforte si blocca appena esci dall\'app. Attiva la biometria per aprirla con l\'impronta o il volto.';

  @override
  String get storyBody =>
      'Ogni grande invenzione nasce dal tentativo di risolvere un piccolo problema della propria vita. La storia di MÜHÜR è proprio questa: un viaggio sincero ma deciso, nato da una memoria che si perde nel caos del mondo digitale e dall\'istinto di proteggere ciò che è nostro.\n\nTutto è cominciato con quella fastidiosa pausa causata da una sola password dimenticata. Ho progettato MÜHÜR come un rifugio personale che funziona solo sul mio dispositivo, senza dipendere dai server cloud di altri. Col tempo ho capito che anche altri volevano riavere la propria privacy digitale.\n\nOggi MÜHÜR è per chiunque voglia tenere i propri dati completamente sotto il proprio controllo, senza affidarli a nessun server.\n\nSigilla il lucchetto più sicuro della tua memoria digitale.';

  @override
  String get devBody =>
      'MÜHÜR è un progetto indipendente di UEK DESIGNER, progettato e sviluppato in Turchia. Grazie per usare MÜHÜR.';

  @override
  String get rn100 =>
      '• Prima versione.\n• Cassaforte cifrata sul telefono, aperta con una password principale (Argon2id + AES-256).\n• Campi pronti per banche, siti web, email, social e account di lavoro.\n• Generatore di password con indicatore di robustezza.\n• Scansione di IBAN e testo con la fotocamera.\n• Sblocco con impronta e volto.\n• Backup e ripristino cifrati.\n• Esportazione in Excel (non cifrata, sotto la tua responsabilità).\n• Cestino con pulizia automatica.\n• Riepilogo della cassaforte con le password riutilizzate.\n• Blocco automatico, protezione dello schermo e conto alla rovescia degli appunti.\n• Funziona completamente offline.\n• 18 lingue.';

  @override
  String get excelExport => 'Esporta in Excel';

  @override
  String get excelExportDesc =>
      'File .xlsx non cifrato delle tue voci, ad esempio prima di disinstallare l\'app';

  @override
  String get excelExportWarnTitle => 'Esportazione non cifrata';

  @override
  String get excelExportWarn =>
      'Il file Excel NON è cifrato. Chiunque ottenga il file può leggere tutte le tue password. Dove lo conservi, con chi lo condividi e la sua eliminazione sono interamente sotto la tua responsabilità. Le voci nel cestino non sono incluse.';

  @override
  String get excelExportAgree =>
      'Ho capito: la sicurezza del file è una mia responsabilità.';

  @override
  String get excelExportSaved =>
      'File Excel salvato. Eliminalo quando non ti serve più.';

  @override
  String get excelExportFailed => 'Impossibile creare il file Excel.';

  @override
  String get excelColDomain => 'Dominio';

  @override
  String get excelColUpdated => 'Ultima modifica';

  @override
  String get how8T => 'Esportare in Excel';

  @override
  String get how8B =>
      '«Esporta in Excel», nelle impostazioni di backup, scrive tutte le tue voci (escluso il cestino) in un file .xlsx, con un foglio per categoria. Il file non è cifrato: confermi con la password principale e accetti che la sua sicurezza sia una tua responsabilità. Eliminalo quando non ti serve più.';

  @override
  String get proFeatureTitle => 'Funzione Pro';

  @override
  String get proFieldsBody =>
      'Aggiungere campi extra a una voce è una funzione Pro. I campi già aggiunti restano e si possono ancora modificare.';

  @override
  String get proBiometricBody =>
      'Lo sblocco con impronta o volto è una funzione Pro. Puoi sempre sbloccare con la password principale.';

  @override
  String get proBackgroundsBody =>
      'Gli sfondi aggiuntivi sono una funzione Pro. Lo sfondo predefinito è sempre disponibile.';

  @override
  String bioGraceWarn(String days) {
    return 'Lo sblocco con impronta e volto resta attivo ancora per $days, poi si disattiva. Assicurati di ricordare la password principale. Se l\'hai dimenticata, impostane una nuova con l\'impronta in Impostazioni, da «Cambia password principale».';
  }

  @override
  String get genNewPassword => 'Genera nuova password';

  @override
  String fieldRemoved(String label) {
    return 'Campo «$label» rimosso';
  }

  @override
  String get undo => 'Annulla';

  @override
  String get proStatusActive => 'Il tuo abbonamento Pro è attivo';

  @override
  String proStatusTrial(String days) {
    return 'Prova gratuita: ancora $days';
  }

  @override
  String get proStatusFree => 'Piano gratuito';

  @override
  String get proTrialInfo =>
      'Alla fine della prova passi automaticamente al piano gratuito. Nessuna carta richiesta e nulla viene eliminato.';

  @override
  String get proFeatEntries => 'Voci illimitate';

  @override
  String get proFeatEntriesDesc => 'Gratis: 3 per categoria';

  @override
  String get proFeatScan => 'Scansioni illimitate con la fotocamera';

  @override
  String get proFeatScanDesc => 'Gratis: 3 scansioni';

  @override
  String get proFeatFields => 'Campi extra e personalizzati';

  @override
  String get proFeatFieldsDesc =>
      'Aggiungi a una voce tutti i campi che ti servono';

  @override
  String get proFeatBio => 'Sblocco con impronta e volto';

  @override
  String get proFeatBioDesc => 'Apri la cassaforte con un tocco';

  @override
  String get proFeatBg => 'Tutti gli sfondi';

  @override
  String get proFeatBgDesc => 'Tutti e 5 gli sfondi';

  @override
  String get proFeatHealth => 'Salute della cassaforte';

  @override
  String get proFeatHealthDesc =>
      'Scopri quali password sono deboli o riutilizzate e apri subito la voce';

  @override
  String get proFeatTotp => 'Codici di verifica in due passaggi';

  @override
  String get proFeatTotpDesc => 'Codici generati offline nella cassaforte';

  @override
  String get proFeatHistory => 'Cronologia password';

  @override
  String get proFeatHistoryDesc =>
      'Le vecchie password restano salvate per poterle rivedere';

  @override
  String get proYearly => 'Annuale';

  @override
  String get proMonthly => 'Mensile';

  @override
  String get proPerYear => '/ anno';

  @override
  String get proPerMonth => '/ mese';

  @override
  String get proBestValue => 'Il più conveniente';

  @override
  String get proSubscribe => 'Abbonati';

  @override
  String get proRestore => 'Ripristina acquisto';

  @override
  String get proManage => 'Gestisci abbonamento';

  @override
  String get proFinePrint =>
      'Il pagamento avviene tramite Google Play. L\'abbonamento si rinnova automaticamente finché non lo annulli, in qualsiasi momento, da Google Play. Se l\'abbonamento termina, le tue voci non vengono eliminate.';

  @override
  String get proComingSoon =>
      'Gli acquisti saranno disponibili quando MÜHÜR sarà pubblicato su Google Play.';

  @override
  String get proSeePlans => 'Scopri Pro';

  @override
  String get proHealthBody =>
      'Vedere quali voci hanno password deboli o riutilizzate è una funzione Pro. I totali sono sempre visibili.';

  @override
  String get healthWeakHint =>
      'Corte o facili da indovinare. Sostituiscile con il generatore di password.';

  @override
  String get healthReusedHint =>
      'La stessa password è usata in più voci. Se una viene violata, anche le altre sono a rischio.';

  @override
  String get healthFairHint =>
      'Accettabili, ma potrebbero essere più lunghe e varie.';

  @override
  String get healthAllGood =>
      'Nessuna password debole o riutilizzata. La tua cassaforte è in buona salute.';

  @override
  String get proHistoryBody =>
      'Vedere i valori precedenti di una password è una funzione Pro. Le password che modifichi con Pro vengono conservate qui.';

  @override
  String get historyEmpty =>
      'Questa password non è ancora stata modificata. Quando la cambi, il valore precedente compare qui.';

  @override
  String get historyNote =>
      'Per ogni campo password vengono conservati gli ultimi 10 valori, cifrati come il resto della cassaforte. La cronologia non è inclusa nei backup.';

  @override
  String get historyClearQ =>
      'Tocca di nuovo Elimina per cancellare la cronologia di questo campo.';

  @override
  String get totpHint => 'Chiave di configurazione o link otpauth://';

  @override
  String get totpInvalid =>
      'Questa chiave non è valida. Incolla la chiave di configurazione fornita dal sito.';
}
