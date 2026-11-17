// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Muhur';

  @override
  String get catBanks => 'Bancos';

  @override
  String get catWebsites => 'Sites';

  @override
  String get catEmails => 'E-mails';

  @override
  String get catSocial => 'Redes sociais';

  @override
  String get catBusiness => 'Trabalho';

  @override
  String get catOther => 'Outros';

  @override
  String get setupTitle => 'Criar senha mestra';

  @override
  String get setupInfo =>
      'Esta senha não pode ser recuperada. Se você esquecê-la, seus dados nunca poderão ser abertos.';

  @override
  String get masterPassword => 'Senha mestra';

  @override
  String get confirmPassword => 'Confirmar senha';

  @override
  String get changeMasterPassword => 'Alterar senha mestra';

  @override
  String get currentPassword => 'Senha atual';

  @override
  String get newPassword => 'Nova senha';

  @override
  String get newPasswordSame => 'A nova senha deve ser diferente da atual.';

  @override
  String get change => 'Alterar';

  @override
  String get masterPasswordChanged => 'Senha mestra alterada.';

  @override
  String get changePasswordFailed =>
      'Não foi possível alterar a senha. Tente novamente.';

  @override
  String get passwordTooShort => 'Use pelo menos 8 caracteres.';

  @override
  String get passwordNeedsMix =>
      'Use letras minúsculas e maiúsculas e um número.';

  @override
  String get reqLength => 'Pelo menos 8 caracteres';

  @override
  String get reqLower => 'Uma minúscula';

  @override
  String get reqUpper => 'Uma maiúscula';

  @override
  String get reqDigit => 'Um número';

  @override
  String get reqSpecial => 'Um caractere especial (!@#...) – opcional';

  @override
  String get reqOptional => 'opcional';

  @override
  String get passwordsDontMatch => 'As senhas não coincidem.';

  @override
  String get createVault => 'Criar';

  @override
  String get unlock => 'Abrir';

  @override
  String get wrongPassword => 'Senha mestra incorreta.';

  @override
  String lockedOut(int seconds) {
    return 'Muitas tentativas. Tente novamente em $seconds segundos.';
  }

  @override
  String get enableBiometricsQ => 'Ativar o desbloqueio biométrico?';

  @override
  String get enable => 'Ativar';

  @override
  String get notNow => 'Agora não';

  @override
  String get biometricReason => 'Desbloquear o Muhur';

  @override
  String get lockNow => 'Bloquear';

  @override
  String get all => 'Tudo';

  @override
  String get noEntries => 'Nenhum item ainda';

  @override
  String get searchHint => 'Buscar título, domínio, tag';

  @override
  String get addEntry => 'Novo item';

  @override
  String get editEntry => 'Editar item';

  @override
  String get title => 'Título';

  @override
  String get category => 'Categoria';

  @override
  String get domain => 'Domínio (ex.: example.com)';

  @override
  String get tags => 'Tag';

  @override
  String get fields => 'Campos';

  @override
  String get addField => 'Novo campo';

  @override
  String get typeText => 'Texto';

  @override
  String get sensitive => 'Ocultar valor';

  @override
  String get save => 'Salvar';

  @override
  String get delete => 'Excluir';

  @override
  String get moveToTrash => 'Para a lixeira';

  @override
  String get trash => 'Lixeira';

  @override
  String get trashKeepFor => 'Manter na lixeira por';

  @override
  String get trashHint =>
      'Os itens excluídos ficam criptografados na lixeira e podem ser restaurados. Eles são apagados de vez após esse número de dias, na próxima vez que o cofre for desbloqueado. Encurtar o prazo também remove itens mais antigos da lixeira. Esvaziar a lixeira não pode ser desfeito.';

  @override
  String daysCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '$count dia',
    );
    return '$_temp0';
  }

  @override
  String get openTrash => 'Lixeira';

  @override
  String get trashEmpty => 'A lixeira está vazia.';

  @override
  String get restore => 'Restaurar';

  @override
  String get deleteForever => 'Apagar';

  @override
  String get deleteForeverConfirm =>
      'Apagar este item de vez? Não é possível desfazer.';

  @override
  String trashDaysLeft(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Faltam $count dias',
      one: 'Falta $count dia',
    );
    return '$_temp0';
  }

  @override
  String get emptyTrashNow => 'Esvaziar';

  @override
  String emptyTrashConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens',
      one: '$count item',
    );
    return 'Apagar de vez $_temp0 da lixeira? Não é possível desfazer.';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get deleteConfirm =>
      'Mover este item para a lixeira? Você poderá restaurá-lo até a lixeira ser esvaziada.';

  @override
  String get titleRequired => 'O título é obrigatório.';

  @override
  String get fieldUsername => 'Usuário';

  @override
  String get fieldPassword => 'Senha';

  @override
  String get fieldIban => 'IBAN';

  @override
  String get fieldNote => 'Notas';

  @override
  String get copy => 'Copiar';

  @override
  String get settings => 'Ajustes';

  @override
  String get settingsSecurity => 'Segurança';

  @override
  String get settingsBackup => 'Backup';

  @override
  String get settingsGeneral => 'Geral';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String get autoLock => 'Bloqueio automático';

  @override
  String get immediately => 'Imediato';

  @override
  String get copyTimer => 'Tempo de cópia';

  @override
  String get copyTimerHint =>
      'Os dados copiados são apagados da área de transferência após esse tempo, e o cofre fica desbloqueado até lá.';

  @override
  String secondsShort(int seconds) {
    return '$seconds s';
  }

  @override
  String get biometricUnlock => 'Biometria';

  @override
  String get generator => 'Gerador';

  @override
  String get generate => 'Gerar';

  @override
  String get length => 'Tamanho';

  @override
  String get lowercase => 'Minúsculas (a-z)';

  @override
  String get uppercase => 'Maiúsculas (A-Z)';

  @override
  String get digits => 'Números (0-9)';

  @override
  String get symbols => 'Símbolos (!@#...)';

  @override
  String get avoidAmbiguous => 'Sem caracteres parecidos (O/0, l/1)';

  @override
  String get regenerate => 'Nova';

  @override
  String get usePassword => 'Usar';

  @override
  String get strengthWeak => 'Fraca';

  @override
  String get strengthFair => 'Razoável';

  @override
  String get strengthGood => 'Boa';

  @override
  String get strengthStrong => 'Forte';

  @override
  String get scan => 'Escanear';

  @override
  String get scanHint =>
      'Mantenha a câmera parada sobre o texto. No modo IBAN, ele é detectado automaticamente.';

  @override
  String get scanning => 'Escaneando...';

  @override
  String get ibanCorrected =>
      'Possivelmente corrigido após um erro de OCR. Confira com atenção.';

  @override
  String get cameraError =>
      'Câmera indisponível. Verifique a permissão da câmera.';

  @override
  String get editBeforeUse => 'Conferir e editar';

  @override
  String get useValue => 'Usar';

  @override
  String get scanIsThis => 'É este?';

  @override
  String get scanNo => 'Não';

  @override
  String get scanYes => 'Sim';

  @override
  String get brandName => 'MÜHÜR';

  @override
  String get brandSubtitle => 'Gerenciador de senhas';

  @override
  String get tagline =>
      'SELE seus dados digitais.\nSem servidores. Só você e seus dados.\nMÜHÜR: o cadeado mais seguro para sua memória digital.';

  @override
  String get login => 'ENTRAR';

  @override
  String get infoTitle => 'Sobre o Muhur';

  @override
  String get infoBody =>
      'O Muhur guarda suas senhas criptografadas somente neste dispositivo. Não há conta nem servidor.\n\nSua senha mestra não pode ser recuperada. Se você esquecê-la, seus dados não poderão ser abertos, então mantenha um backup criptografado.';

  @override
  String get understandNoRecovery =>
      'Entendo que uma senha mestra esquecida não pode ser recuperada.';

  @override
  String get close => 'Fechar';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystem => 'Padrão do sistema';

  @override
  String get sectionLanguage => 'IDIOMA';

  @override
  String get sectionExperience => 'EXPERIÊNCIA';

  @override
  String get sectionAppearance => 'APARÊNCIA';

  @override
  String get panelDarkness => 'Opacidade dos painéis';

  @override
  String get panelDarknessDesc =>
      'Deixa painéis e cartões mais ou menos transparentes';

  @override
  String get backgroundTitle => 'Fundo';

  @override
  String get backgroundDim => 'Escurecer';

  @override
  String get backgroundDimDesc =>
      'Deixa a imagem de fundo mais escura ou mais clara';

  @override
  String get bgBronze => 'Bronze';

  @override
  String get bgEmber => 'Brasa';

  @override
  String get bgSapphire => 'Safira';

  @override
  String get bgObsidian => 'Obsidiana';

  @override
  String get bgLumen => 'Lumen';

  @override
  String get smartGuide => 'Dicas';

  @override
  String get smartGuideDesc =>
      'Mostra dicas curtas na primeira vez que você usa um recurso';

  @override
  String get haptics => 'Vibração';

  @override
  String get hapticsDesc =>
      'Vibração curta ao desbloquear com a digital e ao copiar';

  @override
  String get reduceAnimations => 'Sem animações';

  @override
  String get reduceAnimationsDesc =>
      'Desativa todas as animações do app: o balanço e o brilho do ícone de ajuda, o menu de ajuda, as transições de página, as caixas de diálogo e a linha do scanner. Útil em aparelhos mais lentos e para pessoas sensíveis a movimento.';

  @override
  String get resetTips => 'Redefinir dicas';

  @override
  String get resetTipsDesc =>
      'Mostrar de novo a animação de ajuda e todas as dicas';

  @override
  String get tipsResetDone => 'As dicas serão mostradas de novo';

  @override
  String get tipLongPress =>
      'Dica: toque e segure um item para selecioná-lo e depois exclua vários de uma vez.';

  @override
  String get statTotal => 'Total';

  @override
  String get statReused => 'Repetidas';

  @override
  String get planFree => 'GRÁTIS';

  @override
  String get screenshotAllow => 'Permitir capturas';

  @override
  String get screenshotAllowHint =>
      'A proteção de tela é desligada pelo tempo definido abaixo e depois volta a ligar sozinha.';

  @override
  String get backupSection => 'BACKUP CRIPTOGRAFADO';

  @override
  String get backupExport => 'Criar backup';

  @override
  String get backupExportDesc =>
      'Salva todos os itens, incluindo a lixeira, em um arquivo protegido por uma senha de backup. Guarde o arquivo em um lugar seguro.';

  @override
  String get backupImport => 'Restaurar';

  @override
  String get backupImportDesc =>
      'Adiciona os itens de um arquivo de backup. Itens existentes nunca são substituídos nem excluídos.';

  @override
  String get backupPasswordTitle => 'Senha do backup';

  @override
  String get backupPasswordInfo =>
      'Esta senha protege o arquivo de backup. Ela pode ser diferente da sua senha mestra. Se você esquecê-la, o backup não poderá ser aberto.';

  @override
  String get backupEnterPassword => 'Digite a senha do backup';

  @override
  String get backupContinue => 'Avançar';

  @override
  String get backupSaved => 'Backup salvo';

  @override
  String get backupFailed => 'Não foi possível criar o backup';

  @override
  String backupRestored(int added, int skipped) {
    return '$added adicionados, $skipped já existiam';
  }

  @override
  String get backupWrongPassword => 'Senha do backup incorreta';

  @override
  String get backupInvalidFile =>
      'Este não é um arquivo de backup válido do Muhur';

  @override
  String get backupReminderTitle => 'Lembrete de backup';

  @override
  String get backupReminderDesc =>
      'Avisa na tela inicial quando seu último backup for mais antigo que isso. Use 0 para desativar.';

  @override
  String get backupReminderOff => 'Desligado';

  @override
  String get backupReminderNever =>
      'Você ainda não fez nenhum backup. Faça agora para não perder suas senhas.';

  @override
  String backupReminderAgo(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Seu último backup foi há $days dias.',
      one: 'Seu último backup foi há $days dia.',
    );
    return '$_temp0';
  }

  @override
  String get backupReminderNow => 'Fazer backup';

  @override
  String get backupReminderLater => 'Depois';

  @override
  String get statusScreenOn =>
      'Proteção de tela ativada: capturas e gravação de tela bloqueadas';

  @override
  String get statusScreenOff =>
      'Proteção de tela desativada por enquanto: capturas permitidas';

  @override
  String get statusBackupNever =>
      'Nenhum backup ainda. Crie um em Ajustes > Backup';

  @override
  String statusBackupOk(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Último backup: há $days dias',
      one: 'Último backup: ontem',
      zero: 'Backup feito hoje',
    );
    return '$_temp0';
  }

  @override
  String statusBackupOverdue(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Backup atrasado: o último foi há $days dias',
      one: 'Backup atrasado: o último foi há $days dia',
    );
    return '$_temp0';
  }

  @override
  String statusTrash(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens na lixeira',
      one: '$count item na lixeira',
      zero: 'A lixeira está vazia',
    );
    return '$_temp0';
  }

  @override
  String get statusBiometricOn => 'Desbloqueio biométrico ativado';

  @override
  String get statusBiometricOff =>
      'Desbloqueio biométrico desativado (toque para configurar)';

  @override
  String get helpStatusScreen =>
      'Ícone de escudo: proteção de tela (verde = ativada, apagado = desativada)';

  @override
  String get helpStatusBackup =>
      'Ícone de backup: status do backup (verde = recente, apagado = backup pendente)';

  @override
  String get helpStatusTrash =>
      'Ícone da lixeira: itens excluídos (número = itens aguardando, toque para abrir)';

  @override
  String get helpStatusBiometric =>
      'Ícone de digital: desbloqueio biométrico (verde = ativado, toque para mudar)';

  @override
  String get helpTitle => 'Ajuda';

  @override
  String get helpMenuTitle => 'Como usar?';

  @override
  String get helpAdd => 'Botão +: adicionar um item';

  @override
  String get helpTap => 'Toque em um cartão: ver detalhes';

  @override
  String get helpLongPress => 'Toque longo: selecionar e excluir';

  @override
  String get helpSearch => 'Busca: encontre rápido';

  @override
  String get helpCategories => 'Categorias: filtre seus itens';

  @override
  String get helpLock => 'Ícone de cadeado: bloquear o cofre agora';

  @override
  String get helpSettings => 'Ajustes: backup, bloqueio automático e mais';

  @override
  String get helpStats => 'Painel inferior: resumo do cofre';

  @override
  String deleteSelectedConfirm(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mover os $count itens selecionados para a lixeira?',
      one: 'Mover o item selecionado para a lixeira?',
    );
    return '$_temp0';
  }

  @override
  String get fcBankName => 'Nome do banco';

  @override
  String get fcInternetBankingPassword => 'Senha do internet banking';

  @override
  String get fcCardPin => 'PIN do cartão';

  @override
  String get fcCardNumber => 'Nº do cartão';

  @override
  String get fcExpiryDate => 'Validade';

  @override
  String get fcCvv => 'CVV / CVC';

  @override
  String get fcCustomerServiceNo => 'Nº do suporte';

  @override
  String get fcCustomerNoTc => 'Nº do cliente / CPF';

  @override
  String get fcAccountType => 'Tipo de conta';

  @override
  String get fcPhoneBankingPassword => 'Senha do telefone';

  @override
  String get fcSwiftBic => 'SWIFT / BIC';

  @override
  String get fcCardStatementDate => 'Fatura / Vencimento';

  @override
  String get fcAccountTitle => 'Titular da conta';

  @override
  String get fcEmailAddress => 'E-mail';

  @override
  String get fcRecoveryEmail => 'E-mail de recuperação';

  @override
  String get fcRecoveryPhone => 'Telefone de recuperação';

  @override
  String get fc2faBackupCodes => '2FA / Códigos de backup';

  @override
  String get fcSecurityQA => 'Pergunta de segurança';

  @override
  String get fcPasswordChangeDate => 'Senha alterada em';

  @override
  String get fcPlatformTitle => 'Plataforma / Título';

  @override
  String get fcUsernameProfileId => 'Usuário / ID do perfil';

  @override
  String get fcRegisteredEmail => 'E-mail cadastrado';

  @override
  String get fcRegisteredPhone => 'Telefone cadastrado';

  @override
  String get fcProfileUrl => 'URL do perfil';

  @override
  String get fcAccountTypeStatus => 'Tipo / Status da conta';

  @override
  String get fcLinkedMainAccount => 'Conta vinculada';

  @override
  String get fc2faSecretKey => 'Chave secreta 2FA';

  @override
  String get fcServiceName => 'Instituição';

  @override
  String get fcCompanyName => 'Nome da empresa';

  @override
  String get fcCorporateUserId => 'Usuário / ID corporativo';

  @override
  String get fcPanelUrl => 'URL do painel';

  @override
  String get fcDepartmentPosition => 'Departamento / Cargo';

  @override
  String get fcLicenseCode => 'Cliente / Licença';

  @override
  String get fcSupportContact => 'Contato de suporte';

  @override
  String get fcSiteName => 'Nome do site';

  @override
  String get fcWebAddress => 'URL do site';

  @override
  String get fcUsernameEmail => 'Usuário / E-mail';

  @override
  String get pickFieldTitle => 'Escolha um campo';

  @override
  String get generatorSettings => 'Ajustes do gerador';

  @override
  String get saveAndExit => 'Salvar e sair';

  @override
  String get customField => 'Campo personalizado';

  @override
  String get customFieldName => 'Nome do campo';

  @override
  String get customFieldType => 'Tipo do campo';

  @override
  String get customTypeText => 'Texto';

  @override
  String get customTypeNote => 'Nota';

  @override
  String get customTypePassword => 'Senha';

  @override
  String get customTypeDate => 'Data';

  @override
  String get customTypePhone => 'Telefone';

  @override
  String get orphanVaultTitle => 'Cofre antigo encontrado';

  @override
  String get orphanVaultBody =>
      'Há um arquivo de cofre antigo neste dispositivo, mas as chaves dele não podem ser lidas, então ele não pode ser aberto. Se você continuar, esses dados antigos serão apagados. Se tiver um backup, crie um novo cofre e restaure-o depois.';

  @override
  String get orphanVaultReplace => 'Apagar e continuar';

  @override
  String get forgotOldPassword => 'Não lembro minha senha atual';

  @override
  String get useCurrentPassword => 'Usar minha senha atual';

  @override
  String get forgotPasswordBioHint =>
      'Confirme com sua digital ou seu rosto para definir uma nova senha mestra. Seus itens continuam como estão.';

  @override
  String get bioConfirmFailed =>
      'A confirmação biométrica falhou ou foi cancelada.';

  @override
  String get biometricChangedBody =>
      'Suas configurações de digital ou rosto mudaram, então o login biométrico foi desativado para sua segurança.';

  @override
  String get limitReachedTitle => 'Limite gratuito atingido';

  @override
  String limitReachedBody(int count) {
    return 'A versão gratuita guarda até $count itens por categoria. Exclua um item ou assine o Pro para ter itens ilimitados.';
  }

  @override
  String get scanLimitTitle => 'Escaneamentos grátis esgotados';

  @override
  String scanLimitBody(int count) {
    return 'Você usou seus $count escaneamentos grátis. Assine o Pro para escanear sem limite.';
  }

  @override
  String backupRestoreLimited(int added, int limited) {
    return '$added adicionados, $limited não restaurados (limite gratuito atingido). Seu arquivo de backup não foi alterado.';
  }

  @override
  String get aboutProtectionTitle => 'Como seus dados são protegidos';

  @override
  String get aboutProtectionBody =>
      'Tudo o que você salva fica protegido por criptografia forte neste celular. Só a sua senha mestra pode abrir; ela não é guardada em lugar nenhum, nem pelo MÜHÜR. Sem ela, os dados são ilegíveis.';

  @override
  String get aboutOfflineTitle => 'Funciona offline';

  @override
  String get aboutOfflineBody =>
      'O MÜHÜR nunca se conecta à internet. Não há conta, servidor nem nuvem. Suas senhas ficam neste celular, a menos que você mesmo as exporte, como backup criptografado ou como arquivo do Excel.';

  @override
  String get aboutRights => 'Todos os direitos reservados.';

  @override
  String statusClipboard(int seconds) {
    return 'A área de transferência será limpa em $seconds s. Toque para limpar agora.';
  }

  @override
  String get helpStatusClipboard =>
      'Ícone da área de transferência: valor copiado (número = segundos até limpar, toque para limpar agora)';

  @override
  String aboutVersionLine(String version) {
    return 'Versão $version';
  }

  @override
  String get aboutReleaseNotes => 'Notas da versão';

  @override
  String get aboutHowTitle => 'Como funciona';

  @override
  String get aboutStoryTitle => 'A história do MÜHÜR';

  @override
  String get aboutDeveloperTitle => 'Quem está por trás do MÜHÜR';

  @override
  String get aboutPrivacySection => 'POLÍTICA DE PRIVACIDADE';

  @override
  String get aboutPermissionsTitle => 'Permissões e dados';

  @override
  String get aboutSupportSection => 'SUPORTE';

  @override
  String get aboutRate => 'Avaliar no Google Play';

  @override
  String get aboutRateDesc =>
      'Deixe uma nota ou um comentário na página da loja';

  @override
  String get aboutInBrief => 'Em resumo';

  @override
  String get aboutTechnical => 'Detalhes técnicos';

  @override
  String get aboutProtectionTech =>
      '• O cofre é criptografado com uma chave aleatória de 256 bits. Essa chave é selada com AES-256-GCM usando uma chave derivada da sua senha mestra com Argon2id (32 MiB de memória, 3 passagens). As configurações de derivação ficam ligadas ao selo, então qualquer adulteração é detectada.\n• O banco de dados é criptografado com SQLCipher; a chave dele é derivada da chave do cofre com HKDF-SHA256.\n• Campos sensíveis são criptografados de novo com AES-256-GCM e ligados ao seu item e campo.\n• Depois de 5 senhas erradas, o app espera 30 segundos, dobrando a cada vez, até 1 hora. Mudar o relógio do celular não encurta a espera.\n• O desbloqueio biométrico só aceita biometria forte (classe 3) e é desativado se uma nova digital ou um novo rosto for cadastrado.\n• Capturas e gravações de tela são bloqueadas, o cofre é bloqueado quando você sai do app e os valores copiados são marcados como sensíveis e apagados automaticamente.';

  @override
  String get aboutOfflineTech =>
      '• A versão publicada do app não tem permissão de internet nem de rede; elas são removidas mesmo que uma biblioteca as peça.\n• O backup na nuvem e a transferência para outro aparelho estão desativados: os dados do app não são copiados para fora do celular.\n• O reconhecimento de texto usa um modelo incluído no app e funciona no celular; as imagens da câmera são processadas na memória e nunca salvas.\n• Os dados só saem do celular se você mesmo os exportar: como arquivo de backup criptografado ou como arquivo do Excel sem criptografia, cuja segurança é sua responsabilidade.';

  @override
  String get aboutPermissionsBody =>
      'O MÜHÜR não coleta dados pessoais, não mostra anúncios, não usa ferramentas de análise e não compartilha nada com ninguém. Ele só pede a câmera (para escanear texto) e a biometria (para desbloquear). As assinaturas são gerenciadas pelo Google Play; o app nunca vê seus dados de pagamento. Ao excluir o app, todos os dados dele são apagados. Antes disso, você pode exportar seus itens para o Excel; a segurança desse arquivo é sua responsabilidade.';

  @override
  String get aboutPermissionsTech =>
      '• Câmera: usada só com o scanner aberto; nenhuma foto é salva e nenhum som é gravado.\n• Biometria: sua digital ou seu rosto são verificados pela janela do sistema do celular; o MÜHÜR nunca recebe esses dados.\n• Arquivos: acesso só quando você escolhe onde salvar ou abrir um backup ou um arquivo do Excel.\n• Sem conta, sem servidor, sem identificadores de rastreamento ou publicidade.\n• O download e a compra de assinaturas são feitos pelo Google Play, conforme a política de privacidade do Google.';

  @override
  String get how1T => 'Cofre e senha mestra';

  @override
  String get how1B =>
      'Tudo fica guardado em um cofre criptografado neste celular. Só a sua senha mestra abre o cofre. Ela não pode ser recuperada: escolha uma que você vá lembrar e faça um backup.';

  @override
  String get how2T => 'Itens e categorias';

  @override
  String get how2B =>
      'As categorias são fixas: Bancos, Sites, E-mails, Redes sociais, Trabalho e Outros. Ao adicionar um item com o botão +, você escolhe a categoria dele, que traz os campos adequados. Não é possível criar novas categorias, mas com \"Novo campo\" você adiciona campos a um item: escolha um da lista ou crie um \"Campo personalizado\" com o nome que quiser.';

  @override
  String get how3T => 'Copiar com segurança';

  @override
  String get how3B =>
      'Toque em um campo para copiá-lo. A área de transferência se limpa sozinha depois do tempo que você definir. O ícone na tela inicial mostra a contagem regressiva; toque nele para limpar na hora.';

  @override
  String get how4T => 'Escanear com a câmera';

  @override
  String get how4B =>
      'Aponte a câmera para um cartão ou documento para ler um IBAN ou texto em vez de digitar. Confira o resultado antes de salvar.';

  @override
  String get how5T => 'Lixeira';

  @override
  String get how5B =>
      'Os itens excluídos ficam criptografados na lixeira e podem ser restaurados até o fim do prazo que você definir.';

  @override
  String get how6T => 'Backup e restauração';

  @override
  String get how6B =>
      'Crie um arquivo de backup criptografado com senha própria e guarde-o em um lugar seguro. A restauração só adiciona itens; os existentes nunca são substituídos.';

  @override
  String get how7T => 'Bloqueio e biometria';

  @override
  String get how7B =>
      'O cofre é bloqueado assim que você sai do app. Ative a biometria para abri-lo com a digital ou o rosto.';

  @override
  String get storyBody =>
      'Toda grande invenção começa com alguém tentando resolver um pequeno problema da própria vida. A história do MÜHÜR é exatamente assim: uma jornada sincera, mas determinada, nascida de uma memória que se perde no caos do mundo digital e do instinto de proteger o que é seu.\n\nTudo começou com aquela pausa irritante causada por uma única senha esquecida. Projetei o MÜHÜR como um refúgio pessoal que funciona só no meu próprio aparelho, sem depender de servidores de nuvem de terceiros. Com o tempo, percebi que outras pessoas também queriam a privacidade digital de volta.\n\nHoje o MÜHÜR existe para todos que querem manter seus dados totalmente sob o próprio controle, sem confiá-los a nenhum servidor.\n\nSele o cadeado mais seguro da sua memória digital.';

  @override
  String get devBody =>
      'O MÜHÜR é um projeto independente de UEK DESIGNER, criado e desenvolvido na Turquia. Obrigado por usar o MÜHÜR.';

  @override
  String get rn100 =>
      '• Primeira versão.\n• Cofre criptografado no celular, aberto com uma senha mestra (Argon2id + AES-256).\n• Campos prontos para bancos, sites, e-mail, redes sociais e contas de trabalho.\n• Gerador de senhas com indicador de força.\n• Leitura de IBAN e texto com a câmera.\n• Desbloqueio com digital e rosto.\n• Backup e restauração criptografados.\n• Exportação para Excel (sem criptografia, sob sua responsabilidade).\n• Lixeira com limpeza automática.\n• Resumo do cofre mostrando senhas repetidas.\n• Bloqueio automático, proteção de tela e contagem regressiva da área de transferência.\n• Funciona totalmente offline.\n• 18 idiomas.';

  @override
  String get excelExport => 'Exportar para Excel';

  @override
  String get excelExportDesc =>
      'Arquivo .xlsx sem criptografia com seus itens, por exemplo antes de excluir o app';

  @override
  String get excelExportWarnTitle => 'Exportação sem criptografia';

  @override
  String get excelExportWarn =>
      'O arquivo do Excel NÃO é criptografado. Qualquer pessoa que tiver o arquivo pode ler todas as suas senhas. Onde você o guarda, com quem compartilha e excluí-lo depois são inteiramente sua responsabilidade. Os itens da lixeira não são incluídos.';

  @override
  String get excelExportAgree =>
      'Entendi: a segurança do arquivo é minha responsabilidade.';

  @override
  String get excelExportSaved =>
      'Arquivo do Excel salvo. Exclua-o quando não precisar mais dele.';

  @override
  String get excelExportFailed => 'Não foi possível criar o arquivo do Excel.';

  @override
  String get excelColDomain => 'Domínio';

  @override
  String get excelColUpdated => 'Última alteração';

  @override
  String get how8T => 'Exportar para Excel';

  @override
  String get how8B =>
      '\"Exportar para Excel\", nas configurações de backup, grava todos os seus itens (exceto a lixeira) em um arquivo .xlsx, com uma planilha por categoria. O arquivo não é criptografado: você confirma com a senha mestra e aceita que a segurança dele é sua responsabilidade. Exclua-o quando não precisar mais.';

  @override
  String get proFeatureTitle => 'Recurso Pro';

  @override
  String get proFieldsBody =>
      'Adicionar campos extras a um item é um recurso Pro. Os campos que você já adicionou continuam e podem ser editados.';

  @override
  String get proBiometricBody =>
      'Desbloquear com digital ou rosto é um recurso Pro. Você sempre pode desbloquear com a senha mestra.';

  @override
  String get proBackgroundsBody =>
      'Fundos extras são um recurso Pro. O fundo padrão está sempre disponível.';

  @override
  String bioGraceWarn(String days) {
    return 'O desbloqueio com digital e rosto continua ativo por mais $days e depois é desativado. Confira se você lembra da sua senha mestra. Se esqueceu, crie uma nova com a digital em Configurações, em \"Alterar senha mestra\".';
  }

  @override
  String get genNewPassword => 'Gerar nova senha';

  @override
  String fieldRemoved(String label) {
    return 'Campo \"$label\" removido';
  }

  @override
  String get undo => 'Desfazer';
}
