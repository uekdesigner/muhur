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
  String get unlock => 'Abrir';

  @override
  String get wrongPassword => 'Contraseña maestra incorrecta.';

  @override
  String lockedOut(int seconds) {
    return 'Demasiados intentos. Vuelve a intentarlo en $seconds segundos.';
  }

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
  String get typeText => 'Texto';

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
  String get scanning => 'Escaneando...';

  @override
  String get ibanCorrected =>
      'Posiblemente corregido tras un error de OCR. Revísalo con atención.';

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
  String get screenshotAllow => 'Permitir capturas';

  @override
  String get screenshotAllowHint =>
      'La protección de pantalla se desactiva durante el tiempo indicado abajo y luego se vuelve a activar sola.';

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
  String get fcSiteName => 'Nombre del sitio';

  @override
  String get fcWebAddress => 'URL del sitio';

  @override
  String get fcUsernameEmail => 'Usuario / Correo';

  @override
  String get pickFieldTitle => 'Elige un campo';

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
  String get aboutProtectionTitle => 'Cómo se protegen tus datos';

  @override
  String get aboutProtectionBody =>
      'Todo lo que guardas queda protegido con un cifrado fuerte en este teléfono. Solo tu contraseña maestra puede abrirlo; no se guarda en ningún sitio, ni siquiera en MÜHÜR. Sin ella, los datos son ilegibles.';

  @override
  String get aboutOfflineTitle => 'Funciona sin conexión';

  @override
  String get aboutOfflineBody =>
      'MÜHÜR nunca se conecta a Internet. No hay cuenta, ni servidor, ni nube. Tus contraseñas se quedan en este teléfono, salvo que las exportes tú mismo, como copia cifrada o como archivo de Excel.';

  @override
  String get aboutRights => 'Todos los derechos reservados.';

  @override
  String statusClipboard(int seconds) {
    return 'El portapapeles se borrará en $seconds s. Toca para borrarlo ya.';
  }

  @override
  String get helpStatusClipboard =>
      'Icono de portapapeles: valor copiado (número = segundos hasta borrarse, toca para borrar ya)';

  @override
  String aboutVersionLine(String version) {
    return 'Versión $version';
  }

  @override
  String get aboutReleaseNotes => 'Notas de la versión';

  @override
  String get aboutHowTitle => 'Cómo funciona';

  @override
  String get aboutStoryTitle => 'La historia de MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Quién está detrás de MÜHÜR';

  @override
  String get aboutPrivacySection => 'POLÍTICA DE PRIVACIDAD';

  @override
  String get aboutPermissionsTitle => 'Permisos y datos';

  @override
  String get aboutSupportSection => 'SOPORTE';

  @override
  String get aboutRate => 'Valorar en Google Play';

  @override
  String get aboutRateDesc =>
      'Deja una valoración o reseña en la página de la tienda';

  @override
  String get aboutInBrief => 'En resumen';

  @override
  String get aboutTechnical => 'Detalles técnicos';

  @override
  String get aboutProtectionTech =>
      '• La bóveda se cifra con una clave aleatoria de 256 bits. Esa clave se sella con AES-256-GCM usando una clave derivada de tu contraseña maestra con Argon2id (32 MiB de memoria, 3 pasadas). Los ajustes de derivación van ligados al sello, así que cualquier manipulación se detecta.\n• La base de datos se cifra con SQLCipher; su clave se deriva de la clave de la bóveda con HKDF-SHA256.\n• Los campos sensibles se cifran de nuevo con AES-256-GCM y quedan ligados a su entrada y su campo.\n• Tras 5 contraseñas incorrectas, la app espera 30 segundos y duplica la espera cada vez, hasta 1 hora. Cambiar la hora del teléfono no acorta la espera.\n• El desbloqueo biométrico solo acepta biometría fuerte (clase 3) y se desactiva si se añade una huella o una cara nueva.\n• Se bloquean las capturas y grabaciones de pantalla, la bóveda se bloquea al salir de la app y los valores copiados se marcan como sensibles y se borran solos.';

  @override
  String get aboutOfflineTech =>
      '• La versión publicada de la app no tiene permiso de Internet ni de red; se eliminan aunque una biblioteca los pida.\n• La copia en la nube y la transferencia a otro dispositivo están desactivadas: los datos de la app no se copian fuera del teléfono.\n• El reconocimiento de texto usa un modelo incluido en la app y funciona en el teléfono; las imágenes de la cámara se procesan en memoria y nunca se guardan.\n• Los datos solo salen del teléfono si los exportas tú: como archivo de copia cifrado o como archivo de Excel sin cifrar, cuya seguridad es tu responsabilidad.';

  @override
  String get aboutPermissionsBody =>
      'MÜHÜR no recopila datos personales, no muestra anuncios, no usa herramientas de análisis y no comparte nada con nadie. Solo pide la cámara (para escanear texto) y la biometría (para desbloquear). Las suscripciones las gestiona Google Play; la app nunca ve tus datos de pago. Al borrar la app se borran todos sus datos. Antes puedes exportar tus entradas a Excel; la seguridad de ese archivo es tu responsabilidad.';

  @override
  String get aboutPermissionsTech =>
      '• Cámara: solo se usa con el escáner abierto; no se guardan fotos ni se graba sonido.\n• Biometría: tu huella o tu cara las comprueba la ventana del sistema del teléfono; MÜHÜR nunca recibe esos datos.\n• Archivos: solo se accede cuando eliges dónde guardar o abrir una copia o un archivo de Excel.\n• Sin cuenta, sin servidor y sin identificadores de seguimiento o publicidad.\n• La descarga y la compra de suscripciones las gestiona Google Play según la política de privacidad de Google.';

  @override
  String get how1T => 'Bóveda y contraseña maestra';

  @override
  String get how1B =>
      'Todo se guarda en una bóveda cifrada en este teléfono. Solo tu contraseña maestra la abre. No se puede recuperar: elige una que recuerdes y haz una copia de seguridad.';

  @override
  String get how2T => 'Entradas y categorías';

  @override
  String get how2B =>
      'Las categorías son fijas: Bancos, Sitios web, Correos, Redes sociales, Trabajo y Otros. Al añadir una entrada con el botón +, eliges su categoría, que trae los campos adecuados. No se pueden crear categorías nuevas, pero con «Nuevo campo» puedes añadir campos a una entrada: elige uno de la lista o crea un «Campo personalizado» con el nombre que quieras.';

  @override
  String get how3T => 'Copiar con seguridad';

  @override
  String get how3B =>
      'Toca un campo para copiarlo. El portapapeles se borra solo tras el tiempo que elijas. El icono de la pantalla de inicio muestra la cuenta atrás; tócalo para borrarlo al instante.';

  @override
  String get how4T => 'Escanear con la cámara';

  @override
  String get how4B =>
      'Apunta la cámara a una tarjeta o documento para leer un IBAN o texto en lugar de escribirlo. Revisa el resultado antes de guardar.';

  @override
  String get how5T => 'Papelera';

  @override
  String get how5B =>
      'Las entradas eliminadas esperan cifradas en la papelera y se pueden restaurar hasta que acabe el plazo que elijas.';

  @override
  String get how6T => 'Copia y restauración';

  @override
  String get how6B =>
      'Crea un archivo de copia cifrado con su propia contraseña y guárdalo en un lugar seguro. Restaurar solo añade entradas; las existentes nunca se sobrescriben.';

  @override
  String get how7T => 'Bloqueo y biometría';

  @override
  String get how7B =>
      'La bóveda se bloquea sola al salir de la app. Activa la biometría para abrirla con tu huella o tu cara.';

  @override
  String get storyBody =>
      'Todo gran invento empieza cuando alguien intenta resolver un pequeño problema de su propia vida. La historia de MÜHÜR es exactamente eso: un viaje sincero pero decidido, nacido de una memoria que se pierde en el caos del mundo digital y del instinto de proteger lo que es tuyo.\n\nTodo empezó con esa molesta pausa que provoca una sola contraseña olvidada. Diseñé MÜHÜR como un refugio personal que funciona solo en mi propio dispositivo, sin depender de servidores en la nube ajenos. Con el tiempo me di cuenta de que otras personas también querían recuperar su privacidad digital.\n\nHoy MÜHÜR es para todos los que quieren mantener sus datos totalmente bajo su control, sin confiarlos a ningún servidor.\n\nSella el candado más seguro de tu memoria digital.';

  @override
  String get devBody =>
      'MÜHÜR es un proyecto independiente de UEK DESIGNER, diseñado y desarrollado en Turquía. Gracias por usar MÜHÜR.';

  @override
  String get rn100 =>
      '• Primera versión.\n• Bóveda cifrada en el teléfono, abierta con una contraseña maestra (Argon2id + AES-256).\n• Campos listos para bancos, sitios web, correo, redes sociales y cuentas de trabajo.\n• Generador de contraseñas con indicador de seguridad.\n• Escaneo de IBAN y texto con la cámara.\n• Desbloqueo con huella y cara.\n• Copia de seguridad y restauración cifradas.\n• Exportación a Excel (sin cifrar, bajo tu responsabilidad).\n• Papelera con limpieza automática.\n• Resumen de la bóveda con las contraseñas repetidas.\n• Bloqueo automático, protección de pantalla y cuenta atrás del portapapeles.\n• Funciona totalmente sin conexión.\n• 18 idiomas.';

  @override
  String get excelExport => 'Exportar a Excel';

  @override
  String get excelExportDesc =>
      'Archivo .xlsx sin cifrar con tus entradas, por ejemplo antes de borrar la app';

  @override
  String get excelExportWarnTitle => 'Exportación sin cifrar';

  @override
  String get excelExportWarn =>
      'El archivo de Excel NO está cifrado. Cualquiera que lo obtenga puede leer todas tus contraseñas. Dónde lo guardas, con quién lo compartes y borrarlo después son exclusivamente tu responsabilidad. Las entradas de la papelera no se incluyen.';

  @override
  String get excelExportAgree =>
      'Lo entiendo: la seguridad del archivo es mi responsabilidad.';

  @override
  String get excelExportSaved =>
      'Archivo de Excel guardado. Bórralo cuando ya no lo necesites.';

  @override
  String get excelExportFailed => 'No se pudo crear el archivo de Excel.';

  @override
  String get excelColDomain => 'Dominio';

  @override
  String get excelColUpdated => 'Última modificación';

  @override
  String get how8T => 'Exportar a Excel';

  @override
  String get how8B =>
      '«Exportar a Excel», en los ajustes de copia de seguridad, guarda todas tus entradas (salvo la papelera) en un archivo .xlsx, con una hoja por categoría. El archivo no está cifrado: confirmas con tu contraseña maestra y aceptas que su seguridad es tu responsabilidad. Bórralo cuando ya no lo necesites.';

  @override
  String get proFeatureTitle => 'Función Pro';

  @override
  String get proFieldsBody =>
      'Añadir campos extra a una entrada es una función Pro. Los campos que ya añadiste se mantienen y se pueden seguir editando.';

  @override
  String get proBiometricBody =>
      'Desbloquear con huella o cara es una función Pro. Siempre puedes desbloquear con tu contraseña maestra.';

  @override
  String get proBackgroundsBody =>
      'Los fondos adicionales son una función Pro. El fondo predeterminado siempre está disponible.';

  @override
  String bioGraceWarn(String days) {
    return 'El desbloqueo con huella y cara seguirá activo $days más y luego se desactivará. Asegúrate de recordar tu contraseña maestra. Si la olvidaste, crea una nueva con tu huella en Ajustes, en «Cambiar contraseña maestra».';
  }

  @override
  String get genNewPassword => 'Generar contraseña nueva';

  @override
  String fieldRemoved(String label) {
    return 'Campo «$label» eliminado';
  }

  @override
  String get undo => 'Deshacer';

  @override
  String get proStatusActive => 'Tu suscripción Pro está activa';

  @override
  String proStatusTrial(String days) {
    return 'Prueba gratis: quedan $days';
  }

  @override
  String get proStatusFree => 'Plan gratuito';

  @override
  String get proTrialInfo =>
      'Al terminar la prueba pasas automáticamente al plan gratuito. No se pide tarjeta y no se borra nada.';

  @override
  String get proFeatEntries => 'Entradas ilimitadas';

  @override
  String get proFeatEntriesDesc => 'Gratis: 3 por categoría';

  @override
  String get proFeatScan => 'Escaneo ilimitado con la cámara';

  @override
  String get proFeatScanDesc => 'Gratis: 3 escaneos';

  @override
  String get proFeatFields => 'Campos extra y personalizados';

  @override
  String get proFeatFieldsDesc =>
      'Añade a una entrada todos los campos que necesites';

  @override
  String get proFeatBio => 'Desbloqueo con huella y cara';

  @override
  String get proFeatBioDesc => 'Abre tu bóveda con un toque';

  @override
  String get proFeatBg => 'Todos los fondos';

  @override
  String get proFeatBgDesc => 'Los 5 fondos';

  @override
  String get proFeatHealth => 'Salud de la bóveda';

  @override
  String get proFeatHealthDesc =>
      'Mira qué contraseñas son débiles o repetidas y ve directo a la entrada';

  @override
  String get proFeatTotp => 'Códigos de verificación en dos pasos';

  @override
  String get proFeatTotpDesc =>
      'Códigos generados sin conexión dentro de tu bóveda';

  @override
  String get proFeatHistory => 'Historial de contraseñas';

  @override
  String get proFeatHistoryDesc =>
      'Las contraseñas antiguas se guardan para consultarlas';

  @override
  String get proYearly => 'Anual';

  @override
  String get proMonthly => 'Mensual';

  @override
  String get proPerYear => '/ año';

  @override
  String get proPerMonth => '/ mes';

  @override
  String get proBestValue => 'La mejor opción';

  @override
  String get proSubscribe => 'Suscribirse';

  @override
  String get proRestore => 'Restaurar compra';

  @override
  String get proManage => 'Gestionar suscripción';

  @override
  String get proFinePrint =>
      'El pago se hace a través de Google Play. La suscripción se renueva automáticamente hasta que la canceles, cuando quieras, en Google Play. Si la suscripción termina, tus entradas no se borran.';

  @override
  String get proComingSoon =>
      'Las compras se activarán cuando MÜHÜR se publique en Google Play.';

  @override
  String get proSeePlans => 'Ver Pro';

  @override
  String get proHealthBody =>
      'Ver qué entradas tienen contraseñas débiles o repetidas es una función Pro. Los totales siempre están visibles.';

  @override
  String get healthWeakHint =>
      'Cortas o fáciles de adivinar. Cámbialas con el generador de contraseñas.';

  @override
  String get healthReusedHint =>
      'La misma contraseña se usa en varias entradas. Si una se filtra, las demás también corren riesgo.';

  @override
  String get healthFairHint =>
      'Aceptables, pero podrían ser más largas y variadas.';

  @override
  String get healthAllGood =>
      'No hay contraseñas débiles ni repetidas. Tu bóveda está en buen estado.';

  @override
  String get proHistoryBody =>
      'Ver los valores anteriores de una contraseña es una función Pro. Las contraseñas que cambies con Pro se guardan aquí.';

  @override
  String get historyEmpty =>
      'Esta contraseña aún no se ha cambiado. Cuando la cambies, el valor anterior aparecerá aquí.';

  @override
  String get historyNote =>
      'Se guardan los últimos 10 valores de cada campo de contraseña, cifrados como el resto de tu bóveda. El historial no se incluye en las copias de seguridad.';

  @override
  String get historyClearQ =>
      'Toca Eliminar otra vez para borrar el historial de este campo.';

  @override
  String get totpHint => 'Clave de configuración o enlace otpauth://';

  @override
  String get totpInvalid =>
      'Esta clave no es válida. Pega la clave de configuración que te dio el sitio.';
}
