// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Bancos';

  @override
  String get catWebsites => 'Sitios web';

  @override
  String get catEmails => 'Correos';

  @override
  String get catSocial => 'Redes sociales';

  @override
  String get catBusiness => 'Trabajo';

  @override
  String get catOther => 'Otros';

  @override
  String get setupTitle => 'Crear contraseña maestra';

  @override
  String get setupInfo =>
      'Esta contraseña no se puede recuperar. Si la olvidas, tus datos nunca podrán abrirse.';

  @override
  String get masterPassword => 'Contraseña maestra';

  @override
  String get confirmPassword => 'Confirmar contraseña';

  @override
  String get changeMasterPassword => 'Cambiar contraseña maestra';

  @override
  String get currentPassword => 'Contraseña actual';

  @override
  String get newPassword => 'Nueva contraseña';

  @override
  String get newPasswordSame =>
      'La nueva contraseña debe ser distinta de la actual.';

  @override
  String get change => 'Cambiar';

  @override
  String get masterPasswordChanged => 'Contraseña maestra cambiada.';

  @override
  String get changePasswordFailed =>
      'No se pudo cambiar la contraseña. Inténtalo de nuevo.';

  @override
  String get passwordTooShort => 'Usa al menos 8 caracteres.';

  @override
  String get passwordNeedsMix => 'Usa minúsculas, mayúsculas y un número.';

  @override
  String get reqLength => 'Al menos 8 caracteres';

  @override
  String get reqLower => 'Una minúscula';

  @override
  String get reqUpper => 'Una mayúscula';

  @override
  String get reqDigit => 'Un número';

  @override
  String get reqSpecial => 'Un carácter especial (!@#...) – opcional';

  @override
  String get reqOptional => 'opcional';

  @override
  String get passwordsDontMatch => 'Las contraseñas no coinciden.';

  @override
  String get createVault => 'Crear';

  @override
  String get unlockTitle => 'Unlock';

  @override
  String get unlock => 'Abrir';

  @override
  String get wrongPassword => 'Contraseña maestra incorrecta.';

  @override
  String lockedOut(int seconds) {
    return 'Demasiados intentos. Vuelve a intentarlo en $seconds segundos.';
  }

  @override
  String get useBiometrics => 'Biometrics';

  @override
  String get enableBiometricsQ => '¿Activar el desbloqueo biométrico?';

  @override
  String get enable => 'Activar';

  @override
  String get notNow => 'Ahora no';

  @override
  String get biometricReason => 'Desbloquear Muhur';

  @override
  String get lockNow => 'Bloquear';

  @override
  String get vaultUnlocked => 'Vault unlocked';

  @override
  String get all => 'Todo';

  @override
  String get noEntries => 'Aún no hay entradas';

  @override
  String get searchHint => 'Buscar título, dominio, etiqueta';

  @override
  String get addEntry => 'Nueva entrada';

  @override
  String get editEntry => 'Editar entrada';

  @override
  String get title => 'Título';

  @override
  String get category => 'Categoría';

  @override
  String get domain => 'Dominio (p. ej. example.com)';

  @override
  String get tags => 'Etiqueta';

  @override
  String get fields => 'Campos';

  @override
  String get addField => 'Nuevo campo';

  @override
  String get fieldLabel => 'Label';

  @override
  String get fieldValue => 'Value';

  @override
  String get typeText => 'Texto';

  @override
  String get typePassword => 'Password';

  @override
  String get typeUrl => 'URL';

  @override
  String get typeNotes => 'Notes';

  @override
  String get sensitive => 'Ocultar valor';

  @override
  String get save => 'Guardar';

  @override
  String get delete => 'Eliminar';

  @override
  String get moveToTrash => 'A la papelera';

  @override
  String get trash => 'Papelera';

  @override
  String get trashKeepFor => 'Guardar en la papelera';

  @override
  String get trashHint =>
      'Las entradas eliminadas permanecen cifradas en la papelera y se pueden restaurar. Se borran definitivamente tras este número de días, la próxima vez que se desbloquee la bóveda. Acortar el plazo también elimina de la papelera los elementos más antiguos. Vaciar la papelera no se puede deshacer.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Papelera';

  @override
  String get trashEmpty => 'La papelera está vacía.';

  @override
  String get restore => 'Restaurar';

  @override
  String get deleteForever => 'Borrar';

  @override
  String get deleteForeverConfirm =>
      '¿Borrar definitivamente esta entrada? No se puede deshacer.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Quedan $count días',
      one: 'Queda 1 día',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Vaciar';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entradas',
      one: '1 entrada',
    );
    return '¿Borrar definitivamente $_temp0 de la papelera? No se puede deshacer.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get deleteConfirm =>
      '¿Mover esta entrada a la papelera? Podrás restaurarla hasta que se vacíe la papelera.';

  @override
  String get titleRequired => 'El título es obligatorio.';

  @override
  String get fieldUsername => 'Usuario';

  @override
  String get fieldPassword => 'Contraseña';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notas';

  @override
  String get copy => 'Copiar';

  @override
  String copied(int seconds) {
    return 'Copied. The clipboard clears in $seconds seconds.';
  }

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsSecurity => 'Seguridad';

  @override
  String get settingsBackup => 'Copia';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get autoLock => 'Bloqueo automático';

  @override
  String get immediately => 'Al instante';

  @override
  String get seconds15 => '15 sec';

  @override
  String get minute1 => '1 min';

  @override
  String get copyTimer => 'Tiempo de copia';

  @override
  String get copyTimerHint =>
      'Los datos copiados se borran del portapapeles tras este tiempo, y la bóveda sigue desbloqueada hasta entonces.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biometría';

  @override
  String get generator => 'Generador';

  @override
  String get generate => 'Generar';

  @override
  String get length => 'Longitud';

  @override
  String get lowercase => 'Minúsculas (a-z)';

  @override
  String get uppercase => 'Mayúsculas (A-Z)';

  @override
  String get digits => 'Números (0-9)';

  @override
  String get symbols => 'Símbolos (!@#...)';

  @override
  String get avoidAmbiguous => 'Sin caracteres parecidos (O/0, l/1)';

  @override
  String get regenerate => 'Nueva';

  @override
  String get usePassword => 'Usar';

  @override
  String get strengthWeak => 'Débil';

  @override
  String get strengthFair => 'Aceptable';

  @override
  String get strengthGood => 'Buena';

  @override
  String get strengthStrong => 'Fuerte';

  @override
  String get scan => 'Escanear';

  @override
  String get scanHint =>
      'Mantén la cámara quieta sobre el texto. En modo IBAN se detecta automáticamente.';

  @override
  String get scanRetake => 'Retake';

  @override
  String get scanning => 'Escaneando...';

  @override
  String get ibanFound => 'IBAN found';

  @override
  String get ibanNotFound =>
      'No valid IBAN found. Try again with better light, or pick a line below.';

  @override
  String get ibanCorrected =>
      'Posiblemente corregido tras un error de OCR. Revísalo con atención.';

  @override
  String get pickLine => 'Tap a line to use it';

  @override
  String get noTextFound => 'No text found.';

  @override
  String get cameraError =>
      'La cámara no está disponible. Revisa el permiso de cámara.';

  @override
  String get editBeforeUse => 'Revisar y editar';

  @override
  String get useValue => 'Usar';

  @override
  String get scanIsThis => '¿Es este?';

  @override
  String get scanNo => 'No';

  @override
  String get scanYes => 'Sí';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Gestor de contraseñas';

  @override
  String get tagline =>
      'SELLA tus datos digitales.\nSin servidores. Solo tú y tus datos.\nMÜHÜR: el candado más seguro para tu memoria digital.';

  @override
  String get login => 'ENTRAR';

  @override
  String get infoTitle => 'Acerca de Muhur';

  @override
  String get infoBody =>
      'Muhur guarda tus contraseñas cifradas solo en este dispositivo. No hay cuenta ni servidor.\n\nTu contraseña maestra no se puede recuperar. Si la olvidas, tus datos no podrán abrirse, así que guarda una copia de seguridad cifrada.';

  @override
  String get understandNoRecovery =>
      'Entiendo que una contraseña maestra olvidada no se puede recuperar.';

  @override
  String get close => 'Cerrar';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystem => 'Idioma del sistema';

  @override
  String get sectionLanguage => 'IDIOMA';

  @override
  String get sectionExperience => 'EXPERIENCIA';

  @override
  String get sectionAppearance => 'APARIENCIA';

  @override
  String get panelDarkness => 'Opacidad de paneles';

  @override
  String get panelDarknessDesc =>
      'Hace que paneles y tarjetas sean más o menos transparentes';

  @override
  String get backgroundTitle => 'Fondo';

  @override
  String get backgroundDim => 'Oscurecer';

  @override
  String get backgroundDimDesc =>
      'Hace la imagen de fondo más oscura o más clara';

  @override
  String get bgBronze => 'Bronce';

  @override
  String get bgEmber => 'Brasa';

  @override
  String get bgSapphire => 'Zafiro';

  @override
  String get bgObsidian => 'Obsidiana';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Consejos';

  @override
  String get smartGuideDesc =>
      'Muestra consejos breves la primera vez que usas una función';

  @override
  String get haptics => 'Vibración';

  @override
  String get hapticsDesc =>
      'Vibración breve al desbloquear con huella y al copiar';

  @override
  String get reduceAnimations => 'Sin animaciones';

  @override
  String get reduceAnimationsDesc =>
      'Desactiva todas las animaciones de la app: el movimiento y brillo del icono de ayuda, el menú de ayuda, las transiciones de página, los diálogos y la línea del escáner. Útil en dispositivos lentos y para personas sensibles al movimiento.';

  @override
  String get resetTips => 'Restablecer consejos';

  @override
  String get resetTipsDesc =>
      'Volver a mostrar la animación de ayuda y todos los consejos';

  @override
  String get tipsResetDone => 'Los consejos se volverán a mostrar';

  @override
  String get tipLongPress =>
      'Consejo: mantén pulsada una entrada para seleccionarla y luego elimina varias a la vez.';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Repetidas';

  @override
  String get planFree => 'GRATIS';

  @override
  String get statusScreen => 'Screen protection';

  @override
  String get screenshotAllow => 'Permitir capturas';

  @override
  String get screenshotAllowHint =>
      'La protección de pantalla se desactiva durante el tiempo indicado abajo y luego se vuelve a activar sola.';

  @override
  String get screenshotTimer => 'Screenshot time';

  @override
  String get backupSection => 'COPIA CIFRADA';

  @override
  String get backupExport => 'Crear copia';

  @override
  String get backupExportDesc =>
      'Guarda todas las entradas, incluida la papelera, en un archivo protegido con una contraseña de copia. Guarda el archivo en un lugar seguro.';

  @override
  String get backupImport => 'Restaurar';

  @override
  String get backupImportDesc =>
      'Añade las entradas de un archivo de copia. Las entradas existentes nunca se sobrescriben ni se eliminan.';

  @override
  String get backupPasswordTitle => 'Contraseña de la copia';

  @override
  String get backupPasswordInfo =>
      'Esta contraseña protege el archivo de copia. Puede ser distinta de tu contraseña maestra. Si la olvidas, la copia no podrá abrirse.';

  @override
  String get backupEnterPassword => 'Introduce la contraseña de la copia';

  @override
  String get backupContinue => 'Siguiente';

  @override
  String get backupSaved => 'Copia guardada';

  @override
  String get backupFailed => 'No se pudo crear la copia';

  @override
  String backupRestored(int added, int skipped) {
    return '$added añadidas, $skipped ya existían';
  }

  @override
  String get backupWrongPassword => 'Contraseña de la copia incorrecta';

  @override
  String get backupInvalidFile =>
      'Este no es un archivo de copia de Muhur válido';

  @override
  String get backupReminderTitle => 'Recordatorio de copia';

  @override
  String get backupReminderDesc =>
      'Te avisa en la pantalla de inicio cuando tu última copia es más antigua que esto. Pon 0 para desactivarlo.';

  @override
  String get backupReminderOff => 'Apagado';

  @override
  String get backupReminderNever =>
      'Aún no has hecho ninguna copia. Hazla ahora para no perder tus contraseñas.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Tu última copia fue hace $days días.',
      one: 'Tu última copia fue hace 1 día.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Hacer copia';

  @override
  String get backupReminderLater => 'Más tarde';

  @override
  String get statusScreenOn =>
      'Protección de pantalla activada: capturas y grabación de pantalla bloqueadas';

  @override
  String get statusScreenOff =>
      'Protección de pantalla desactivada por ahora: se permiten capturas';

  @override
  String get statusBackupNever =>
      'Aún no hay copia. Crea una en Ajustes > Copia';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Última copia: hace $days días',
      one: 'Última copia: ayer',
      zero: 'Copia hecha hoy',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Copia atrasada: la última fue hace $days días',
      one: 'Copia atrasada: la última fue hace 1 día',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos en la papelera',
      one: '1 elemento en la papelera',
      zero: 'La papelera está vacía',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Desbloqueo biométrico activado';

  @override
  String get statusBiometricOff =>
      'Desbloqueo biométrico desactivado (toca para configurarlo)';

  @override
  String get helpStatusScreen =>
      'Icono de escudo: protección de pantalla (verde = activada, tenue = desactivada)';

  @override
  String get helpStatusBackup =>
      'Icono de copia: estado de la copia (verde = reciente, tenue = toca hacer copia)';

  @override
  String get helpStatusTrash =>
      'Icono de papelera: entradas eliminadas (número = elementos en espera, toca para abrir)';

  @override
  String get helpStatusBiometric =>
      'Icono de huella: desbloqueo biométrico (verde = activado, toca para cambiar)';

  @override
  String get helpTitle => 'Ayuda';

  @override
  String get helpBody => 'Help content will be added here.';

  @override
  String get helpMenuTitle => '¿Cómo se usa?';

  @override
  String get helpAdd => 'Botón +: añadir una entrada';

  @override
  String get helpTap => 'Toca una tarjeta: ver detalles';

  @override
  String get helpLongPress => 'Pulsación larga: seleccionar y eliminar';

  @override
  String get helpSearch => 'Búsqueda: encuentra rápido';

  @override
  String get helpCategories => 'Categorías: filtra tus entradas';

  @override
  String get helpLock => 'Icono de candado: bloquear la bóveda ya';

  @override
  String get helpSettings => 'Ajustes: copia, bloqueo automático y más';

  @override
  String get helpStats => 'Panel inferior: resumen de la bóveda';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '¿Mover las $count entradas seleccionadas a la papelera?',
      one: '¿Mover la entrada seleccionada a la papelera?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Nombre del banco';

  @override
  String get fcTag => 'Tag';

  @override
  String get fcInternetBankingPassword => 'Contraseña de banca online';

  @override
  String get fcCardPin => 'PIN de la tarjeta';

  @override
  String get fcCardNumber => 'N.º de tarjeta';

  @override
  String get fcExpiryDate => 'Caducidad';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'N.º de atención';

  @override
  String get fcCustomerNoTc => 'N.º de cliente / ID';

  @override
  String get fcBranchNameCode => 'Branch / Code';

  @override
  String get fcAccountType => 'Tipo de cuenta';

  @override
  String get fcPhoneBankingPassword => 'Contraseña telefónica';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Extracto / Vencimiento';

  @override
  String get fcAccountTitle => 'Titular';

  @override
  String get fcEmailAddress => 'Correo electrónico';

  @override
  String get fcRecoveryEmail => 'Correo de recuperación';

  @override
  String get fcRecoveryPhone => 'Teléfono de recuperación';

  @override
  String get fc2faBackupCodes => '2FA / Códigos de respaldo';

  @override
  String get fcLoginMethodProvider => 'Login Method';

  @override
  String get fcImapSmtp => 'IMAP / SMTP';

  @override
  String get fcSecurityQA => 'Pregunta de seguridad';

  @override
  String get fcPasswordChangeDate => 'Contraseña cambiada';

  @override
  String get fcPlatformTitle => 'Plataforma / Título';

  @override
  String get fcUsernameProfileId => 'Usuario / ID de perfil';

  @override
  String get fcRegisteredEmail => 'Correo registrado';

  @override
  String get fcRegisteredPhone => 'Teléfono registrado';

  @override
  String get fcProfileUrl => 'URL del perfil';

  @override
  String get fcAccountTypeStatus => 'Tipo / Estado de cuenta';

  @override
  String get fcLinkedMainAccount => 'Cuenta vinculada';

  @override
  String get fcProfileNumericId => 'Profile ID';

  @override
  String get fc2faSecretKey => 'Clave secreta 2FA';

  @override
  String get fcServiceName => 'Organización';

  @override
  String get fcCompanyName => 'Nombre de la empresa';

  @override
  String get fcCorporateUserId => 'Usuario / ID corporativo';

  @override
  String get fcPanelUrl => 'URL del panel';

  @override
  String get fcDepartmentPosition => 'Departamento / Cargo';

  @override
  String get fcLicenseCode => 'Cliente / Licencia';

  @override
  String get fcSupportContact => 'Contacto de soporte';

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
  String get fcSiteName => 'Nombre del sitio';

  @override
  String get fcWebAddress => 'URL del sitio';

  @override
  String get fcUsernameEmail => 'Usuario / Correo';

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
  String get pickFieldTitle => 'Elige un campo';

  @override
  String get allFieldsAdded => 'All fields added';

  @override
  String get generatorSettings => 'Ajustes del generador';

  @override
  String get saveAndExit => 'Guardar y salir';

  @override
  String get customField => 'Campo personalizado';

  @override
  String get customFieldName => 'Nombre del campo';

  @override
  String get customFieldType => 'Tipo de campo';

  @override
  String get customTypeText => 'Texto';

  @override
  String get customTypeNote => 'Nota';

  @override
  String get customTypePassword => 'Contraseña';

  @override
  String get customTypeDate => 'Fecha';

  @override
  String get customTypePhone => 'Teléfono';

  @override
  String get orphanVaultTitle => 'Se encontró una bóveda antigua';

  @override
  String get orphanVaultBody =>
      'En este dispositivo hay un archivo de bóveda antiguo, pero sus claves no se pueden leer, así que no se puede abrir. Si continúas, esos datos antiguos se eliminarán. Si tienes una copia, crea una bóveda nueva y restáurala después.';

  @override
  String get orphanVaultReplace => 'Eliminar y seguir';

  @override
  String get forgotOldPassword => 'No recuerdo mi contraseña actual';

  @override
  String get useCurrentPassword => 'Usar mi contraseña actual';

  @override
  String get forgotPasswordBioHint =>
      'Confirma con tu huella o tu cara para crear una nueva contraseña maestra. Tus entradas no cambian.';

  @override
  String get bioConfirmFailed =>
      'La confirmación biométrica falló o se canceló.';

  @override
  String get biometricChangedBody =>
      'Tu huella o tu cara cambiaron en los ajustes, así que el acceso biométrico se desactivó por tu seguridad.';

  @override
  String get limitReachedTitle => 'Límite gratuito alcanzado';

  @override
  String limitReachedBody(int count) {
    return 'La versión gratuita admite hasta $count entradas por categoría. Elimina una entrada o pásate a Pro para tener entradas ilimitadas.';
  }

  @override
  String get scanLimitTitle => 'Escaneos gratuitos agotados';

  @override
  String scanLimitBody(int count) {
    return 'Has usado tus $count escaneos gratuitos. Pásate a Pro para escanear sin límite.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added añadidas, $limited sin restaurar (límite gratuito alcanzado). Tu archivo de copia no ha cambiado.';
  }

  @override
  String get aboutSection => 'ACERCA DE';

  @override
  String get aboutVersion => 'Versión';

  @override
  String get aboutProtectionTitle => 'Cómo se protegen tus datos';

  @override
  String get aboutProtectionBody =>
      'Cada entrada se cifra con AES-256 en este dispositivo. La clave que abre la bóveda se deriva de tu contraseña maestra con Argon2id; la contraseña nunca se guarda.';

  @override
  String get aboutOfflineTitle => 'Funciona sin conexión';

  @override
  String get aboutOfflineBody =>
      'Muhur no tiene permiso de Internet, ni cuenta ni servidor. Tus datos no salen de este dispositivo salvo que exportes tú mismo una copia cifrada.';

  @override
  String get aboutLicenses => 'Licencias de código abierto';

  @override
  String get aboutLicensesDesc =>
      'Licencias de los componentes de código abierto que usa Muhur';

  @override
  String get aboutRights => 'Todos los derechos reservados.';
}
