using TypeSpec.JsonSchema;

namespace Ladesa.Schemas;

@doc("Define os nomes de indentificação das entidades.")
enum Tokens {
  Shared_SearchInput_View: "SearchInputView",
  Shared_Pagination_SortBy_View: "PaginatedSortByView",
  Shared_Pagination_Filter_View: "PaginatedFilterView",
  Shared_Pagination_Input_View: "PaginatedInputView",
  Shared_Pagination_Input_Base_View: "PaginatedInputBaseView",
  Shared_Pagination_Result_Meta_View: "PaginatedResultMetaView",
  Shared_Pagination_Result_Links_View: "PaginatedResultLinksView",
  Shared_Pagination_Result_View: "PaginatedResultView",

  //

  Arquivo: "Arquivo",

  Arquivo_View: "ArquivoView",
  Arquivo_FindOneInput_View: "ArquivoFindOneInputView",
  Arquivo_FindOneResult_View: "ArquivoFindOneResultView",
  Arquivo_Operations_GetFile: "ArquivoGetFile",

  //

  Usuario: "Usuario",

  Usuario_View: "UsuarioView",
  Usuario_FindOneInput_View: "UsuarioFindOneInputView",
  Usuario_FindOneResult_View: "UsuarioFindOneResultView",
  Usuario_ListResult_View: "UsuarioListResultView",
  Usuario_InputCreate_View: "UsuarioInputCreateView",
  Usuario_InputUpdate_View: "UsuarioInputUpdateView",
  Usuario_Operations_FindOneById: "UsuarioFindOneById",
  Usuario_Operations_DeleteOneById: "UsuarioDeleteOneById",
  Usuario_Operations_List: "UsuarioList",
  Usuario_Operations_Create: "UsuarioCreate",
  Usuario_Operations_UpdateOneById: "UsuarioUpdateOneById",
  Usuario_Operations_GetImagemCapa: "UsuarioGetImagemCapa",
  Usuario_Operations_SetImagemCapa: "UsuarioSetImagemCapa",
  Usuario_Operations_GetImagemPerfil: "UsuarioGetImagemPerfil",
  Usuario_Operations_SetImagemPerfil: "UsuarioSetImagemPerfil",

  //
  Auth_LoginInput_View: "AuthLoginInputView",

  Auth_RecoverPasswordInput_View: "AuthRecoverPasswordInputView",
  Auth_WhoAmIResult_View: "AuthWhoAmIInputView",
  Auth_RefreshInput_View: "AuthRefreshInputView",
  Auth_SessionCredentials_View: "AuthSessionCredentialsView",
  Auth_SetInitialPasswordInput_View: "AuthSetInitialPasswordInputView",
  Auth_Operations_Login: "AuthLogin",
  Auth_Operations_Refresh: "AuthRefresh",
  Auth_Operations_WhoAmI: "AuthWhoAmI",
  Auth_Operations_SetInitialPassword: "AuthSetInitialPassword",
  Auth_Operations_RecoverPassword: "AuthRecoverPassword",

  //

  Imagem: "Imagem",

  Imagem_View: "ImagemView",
  Imagem_FindOneInput_View: "ImagemFindOneInputView",
  Imagem_FindOneResult_View: "ImagemFindOneResultView",
  Imagem_FindOneFromImagemArquivoResult_View: "ImageFindOneFromImagemArquivoResultView",
  Imagem_Operations_GetImagem: "GetImagem",
  Imagem_Operations_SetImagem: "SetImagem",

  //

  ImagemArquivo: "ImagemArquivo",

  ImagemArquivo_View: "ImagemArquivoView",
  ImagemArquivo_FindOneInput_View: "ImagemArquivoFindOneInputView",
  ImagemArquivo_FindOneResult_View: "ImagemArquivoFindOneResultView",
  ImagemArquivo_FindOneFromImagemResult_View: "ImagemArquivoFindOneFromImagemResultView",

  //

  IntervaloDeTempo: "IntervaloDeTempo",

  IntervaloDeTempo_View: "IntervaloDeTempoView",
  IntervaloDeTempo_FindOneResult_View: "IntervaloDeTempoFindOneResultView",
  IntervaloDeTempo_Input_View: "IntervaloDeTempoInputView",

  //

  Estado: "Estado",

  Estado_View: "EstadoView",
  Estado_FindOneInput_View: "EstadoFindOneInputView",
  Estado_FindOneResult_View: "EstadoFindOneResultView",
  Estado_ListResult_View: "EstadoListResultView",
  Estado_Operations_FindOneById: "EstadoFindOneById",
  Estado_Operations_List: "EstadoList",

  //

  Cidade: "Cidade",

  Cidade_View: "CidadeView",
  Cidade_FindOneInput_View: "CidadeFindOneInputView",
  Cidade_FindOneResult_View: "CidadeFindOneResultView",
  Cidade_ListResult_View: "CidadeListResultView",
  Cidade_Operations_FindOneById: "CidadeFindOneById",
  Cidade_Operations_List: "CidadeList",

  //

  Endereco: "Endereco",

  Endereco_View: "EnderecoView",
  Endereco_FindOneInput_View: "EnderecoFindOneInputView",
  Endereco_FindOneResult_View: "EnderecoFindOneResultView",
  Endereco_Operations_FindOneById: "EnderecoFindOneById",
  Endereco_Input_View: "EnderecoInputView",

  //
  Campus: "Campus",

  Campus_View: "CampusView",
  Campus_FindOneInput_View: "CampusFindOneInputView",
  Campus_FindOneResult_View: "CampusFindOneResultView",
  Campus_ListResult_View: "CampusListResultView",
  Campus_InputUpdate_View: "CampusInputUpdateView",
  Campus_InputCreate_View: "CampusInputCreateView",
  Campus_Operations_FindOneById: "CampusFindOneById",
  Campus_Operations_DeleteOneById: "CampusDeleteOneById",
  Campus_Operations_List: "CampusList",
  Campus_Operations_Create: "CampusCreate",
  Campus_Operations_UpdateOneById: "CampusUpdateOneById",

  //
  Bloco: "Bloco",

  Bloco_View: "BlocoView",
  Bloco_InputUpdate_View: "BlocoInputUpdateView",
  Bloco_InputCreate_View: "BlocoInputCreateView",
  Bloco_FindOneInput_View: "BlocoFindOneInputView",
  Bloco_FindOneResult_View: "BlocoFindOneResultView",
  Bloco_ListResult_View: "BlocoListResultView",
  Bloco_Operations_FindOneById: "BlocoFindOneById",
  Bloco_Operations_DeleteOneById: "BlocoDeleteOneById",
  Bloco_Operations_List: "BlocoList",
  Bloco_Operations_Create: "BlocoCreate",
  Bloco_Operations_UpdateOneById: "BlocoUpdateOneById",
  Bloco_Operations_GetImagemCapa: "BlocoGetImagemCapa",
  Bloco_Operations_SetImagemCapa: "BlocoSetImagemCapa",

  //
  Ambiente: "Ambiente",

  Ambiente_View: "AmbienteView",
  Ambiente_FindOneInput_View: "AmbienteFindOneInputView",
  Ambiente_FindOneResult_View: "AmbienteFindOneResultView",
  Ambiente_ListResult_View: "AmbienteListResultView",
  Ambiente_InputUpdate_View: "AmbienteInputUpdateView",
  Ambiente_InputCreate_View: "AmbienteInputCreateView",
  Ambiente_Operations_FindOneById: "AmbienteFindOneById",
  Ambiente_Operations_DeleteOneById: "AmbienteDeleteOneById",
  Ambiente_Operations_List: "AmbienteList",
  Ambiente_Operations_Create: "AmbienteCreate",
  Ambiente_Operations_UpdateOneById: "AmbienteUpdateOneById",
  Ambiente_Operations_GetImagemCapa: "AmbienteGetImagemCapa",
  Ambiente_Operations_SetImagemCapa: "AmbienteSetImagemCapa",

  //

  Perfil: "Perfil",

  Perfil_View: "PerfilView",
  Perfil_FindOneInput_View: "PerfilFindOneInputView",
  Perfil_FindOneResult_View: "PerfilFindOneResultView",
  Perfil_ListResult_View: "PerfilListResultView",
  Perfil_InputUpdate_View: "PerfilInputUpdateView",
  Perfil_InputCreate_View: "PerfilInputCreateView",
  Perfil_Operations_FindOneById: "PerfilFindOneById",
  Perfil_Operations_DeleteOneById: "PerfilDeleteOneById",
  Perfil_Operations_List: "PerfilList",
  Perfil_Operations_Create: "PerfilCreate",
  Perfil_Operations_UpdateOneById: "PerfilUpdateOneById",

  //
  NivelFormacao: "NivelFormacao",

  NivelFormacao_View: "NivelFormacaoView",
  NivelFormacao_FindOneInput_View: "NivelFormacaoFindOneInputView",
  NivelFormacao_FindOneResult_View: "NivelFormacaoFindOneResultView",
  NivelFormacao_ListResult_View: "NivelFormacaoListResultView",
  NivelFormacao_InputCreate_View: "NivelFormacaoInputCreateView",
  NivelFormacao_InputUpdate_View: "NivelFormacaoInputUpdateView",
  NivelFormacao_Operations_FindOneById: "NivelFormacaoFindOneById",
  NivelFormacao_Operations_DeleteOneById: "NivelFormacaoDeleteOneById",
  NivelFormacao_Operations_UpdateOneById: "NivelFormacaoUpdateOneById",
  NivelFormacao_Operations_List: "NivelFormacaoList",
  NivelFormacao_Operations_Create: "NivelFormacaoCreate",

  //
  Modalidade: "Modalidade",

  Modalidade_View: "ModalidadeView",
  Modalidade_FindOneInput_View: "ModalidadeFindOneInputView",
  Modalidade_FindOneResult_View: "ModalidadeFindOneResultView",
  Modalidade_ListResult_View: "ModalidadeListResultView",
  Modalidade_InputCreate_View: "ModalidadeInputCreateView",
  Modalidade_InputUpdate_View: "ModalidadeInputUpdateView",
  Modalidade_Operations_FindOneById: "ModalidadeFindOneById",
  Modalidade_Operations_DeleteOneById: "ModalidadeDeleteOneById",
  Modalidade_Operations_UpdateOneById: "ModalidadeUpdateOneById",
  Modalidade_Operations_List: "ModalidadeList",
  Modalidade_Operations_Create: "ModalidadeCreate",

  //
  OfertaFormacao: "OfertaFormacao",

  OfertaFormacao_View: "OfertaFormacaoView",
  OfertaFormacao_FindOneInput_View: "OfertaFormacaoFindOneInputView",
  OfertaFormacao_FindOneResult_View: "OfertaFormacaoFindOneResultView",
  OfertaFormacao_ListResult_View: "OfertaFormacaoListResultView",
  OfertaFormacao_InputCreate_View: "OfertaFormacaoInputCreateView",
  OfertaFormacao_InputUpdate_View: "OfertaFormacaoInputUpdateView",
  OfertaFormacao_Operations_FindOneById: "OfertaFormacaoFindOneById",
  OfertaFormacao_Operations_DeleteOneById: "OfertaFormacaoDeleteOneById",
  OfertaFormacao_Operations_UpdateOneById: "OfertaFormacaoUpdateOneById",
  OfertaFormacao_Operations_List: "OfertaFormacaoList",
  OfertaFormacao_Operations_Create: "OfertaFormacaoCreate",

  //
  OfertaFormacaoNivelFormacao: "OfertaFormacaoNivelFormacao",

  OfertaFormacaoNivelFormacao_View: "OfertaFormacaoNivelFormacaoView",
  OfertaFormacaoNivelFormacao_FindOneInput_View: "OfertaFormacaoNivelFormacaoFindOneInputView",
  OfertaFormacaoNivelFormacao_FindOneResult_View: "OfertaFormacaoNivelFormacaoFindOneResultView",
  OfertaFormacaoNivelFormacao_ListResult_View: "OfertaFormacaoNivelFormacaoListResultView",
  OfertaFormacaoNivelFormacao_InputCreate_View: "OfertaFormacaoNivelFormacaoInputCreateView",
  OfertaFormacaoNivelFormacao_InputUpdate_View: "OfertaFormacaoNivelFormacaoInputUpdateView",
  OfertaFormacaoNivelFormacao_Operations_FindOneById: "OfertaFormacaoNivelFormacaoFindOneById",
  OfertaFormacaoNivelFormacao_Operations_DeleteOneById: "OfertaFormacaoNivelFormacaoDeleteOneById",
  OfertaFormacaoNivelFormacao_Operations_UpdateOneById: "OfertaFormacaoNivelFormacaoUpdateOneById",
  OfertaFormacaoNivelFormacao_Operations_List: "OfertaFormacaoNivelFormacaoList",
  OfertaFormacaoNivelFormacao_Operations_Create: "OfertaFormacaoNivelFormacaoCreate",

  //
  Curso: "Curso",

  Curso_View: "CursoView",
  Curso_FindOneInput_View: "CursoFindOneInputView",
  Curso_FindOneResult_View: "CursoFindOneResultView",
  Curso_ListResult_View: "CursoListResultView",
  Curso_InputCreate_View: "CursoInputCreateView",
  Curso_InputUpdate_View: "CursoInputUpdateView",
  Curso_Operations_FindOneById: "CursoFindOneById",
  Curso_Operations_DeleteOneById: "CursoDeleteOneById",
  Curso_Operations_UpdateOneById: "CursoUpdateOneById",
  Curso_Operations_List: "CursoList",
  Curso_Operations_Create: "CursoCreate",
  Curso_Operations_GetImagemCapa: "CursoGetImagemCapa",
  Curso_Operations_SetImagemCapa: "CursoSetImagemCapa",

  //
  Disciplina: "Disciplina",

  Disciplina_View: "DisciplinaView",
  Disciplina_FindOneInput_View: "DisciplinaFindOneInputView",
  Disciplina_FindOneResult_View: "DisciplinaFindOneResultView",
  Disciplina_ListResult_View: "DisciplinaListResultView",
  Disciplina_InputCreate_View: "DisciplinaInputCreateView",
  Disciplina_InputUpdate_View: "DisciplinaInputUpdateView",
  Disciplina_Operations_FindOneById: "DisciplinaFindOneById",
  Disciplina_Operations_DeleteOneById: "DisciplinaDeleteOneById",
  Disciplina_Operations_UpdateOneById: "DisciplinaUpdateOneById",
  Disciplina_Operations_List: "DisciplinaList",
  Disciplina_Operations_Create: "DisciplinaCreate",
  Disciplina_Operations_GetImagemCapa: "DisciplinaGetImagemCapa",
  Disciplina_Operations_SetImagemCapa: "DisciplinaSetImagemCapa",

  //
  CalendarioLetivo: "CalendarioLetivo",

  CalendarioLetivo_View: "CalendarioLetivoView",
  CalendarioLetivo_FindOneInput_View: "CalendarioLetivoFindOneInputView",
  CalendarioLetivo_FindOneResult_View: "CalendarioLetivoFindOneResultView",
  CalendarioLetivo_ListResult_View: "CalendarioLetivoListResultView",
  CalendarioLetivo_InputCreate_View: "CalendarioLetivoInputCreateView",
  CalendarioLetivo_InputUpdate_View: "CalendarioLetivoInputUpdateView",
  CalendarioLetivo_Operations_FindOneById: "CalendarioLetivoFindOneById",
  CalendarioLetivo_Operations_DeleteOneById: "CalendarioLetivoDeleteOneById",
  CalendarioLetivo_Operations_UpdateOneById: "CalendarioLetivoUpdateOneById",
  CalendarioLetivo_Operations_List: "CalendarioLetivoList",
  CalendarioLetivo_Operations_Create: "CalendarioLetivoCreate",

  //
  Reserva: "Reserva",

  Reserva_View: "ReservaView",
  Reserva_FindOneInput_View: "ReservaFindOneInputView",
  Reserva_FindOneResult_View: "ReservaFindOneResultView",
  Reserva_ListResult_View: "ReservaListResultView",
  Reserva_InputUpdate_View: "ReservaInputUpdateView",
  Reserva_InputCreate_View: "ReservaInputCreateView",
  Reserva_Operations_FindOneById: "ReservaFindOneById",
  Reserva_Operations_DeleteOneById: "ReservaDeleteOneById",
  Reserva_Operations_List: "ReservaList",
  Reserva_Operations_Create: "ReservaCreate",
  Reserva_Operations_UpdateOneById: "ReservaUpdateOneById",

  //
  GradeHorarioOfertaFormacao: "GradeHorarioOfertaFormacao",

  GradeHorarioOfertaFormacao_View: "GradeHorarioOfertaFormacaoView",
  GradeHorarioOfertaFormacao_FindOneInput_View: "GradeHorarioOfertaFormacaoFindOneInputView",
  GradeHorarioOfertaFormacao_FindOneResult_View: "GradeHorarioOfertaFormacaoFindOneResultView",
  GradeHorarioOfertaFormacao_ListResult_View: "GradeHorarioOfertaFormacaoListResultView",
  GradeHorarioOfertaFormacao_InputUpdate_View: "GradeHorarioOfertaFormacaoInputUpdateView",
  GradeHorarioOfertaFormacao_InputCreate_View: "GradeHorarioOfertaFormacaoInputCreateView",
  GradeHorarioOfertaFormacao_Operations_FindOneById: "GradeHorarioOfertaFormacaoFindOneById",
  GradeHorarioOfertaFormacao_Operations_DeleteOneById: "GradeHorarioOfertaFormacaoDeleteOneById",
  GradeHorarioOfertaFormacao_Operations_List: "GradeHorarioOfertaFormacaoList",
  GradeHorarioOfertaFormacao_Operations_Create: "GradeHorarioOfertaFormacaoCreate",
  GradeHorarioOfertaFormacao_Operations_UpdateOneById: "GradeHorarioOfertaFormacaoUpdateOneById",

  //
  GradeHorarioOfertaFormacaoIntervaloDeTempo: "GradeHorarioOfertaFormacaoIntervaloDeTempo",

  GradeHorarioOfertaFormacaoIntervaloDeTempo_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_FindOneInput_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoFindOneInputView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_FindOneResult_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoFindOneResultView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_ListResult_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoListResultView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_InputUpdate_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoInputUpdateView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_InputCreate_View: "GradeHorarioOfertaFormacaoIntervaloDeTempoInputCreateView",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_Operations_FindOneById: "GradeHorarioOfertaFormacaoIntervaloDeTempoFindOneById",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_Operations_DeleteOneById: "GradeHorarioOfertaFormacaoIntervaloDeTempoDeleteOneById",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_Operations_List: "GradeHorarioOfertaFormacaoIntervaloDeTempoList",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_Operations_Create: "GradeHorarioOfertaFormacaoIntervaloDeTempoCreate",
  GradeHorarioOfertaFormacaoIntervaloDeTempo_Operations_UpdateOneById: "GradeHorarioOfertaFormacaoIntervaloDeTempoUpdateOneById",

  //
  DiaCalendario: "DiaCalendario",

  DiaCalendario_View: "DiaCalendarioView",
  DiaCalendario_InputUpdate_View: "DiaCalendarioInputUpdateView",
  DiaCalendario_InputCreate_View: "DiaCalendarioInputCreateView",
  DiaCalendario_FindOneInput_View: "DiaCalendarioFindOneInputView",
  DiaCalendario_FindOneResult_View: "DiaCalendarioFindOneResultView",
  DiaCalendario_ListResult_View: "DiaCalendarioListResultView",
  DiaCalendario_Operations_FindOneById: "DiaCalendarioFindOneById",
  DiaCalendario_Operations_DeleteOneById: "DiaCalendarioDeleteOneById",
  DiaCalendario_Operations_List: "DiaCalendarioList",
  DiaCalendario_Operations_Create: "DiaCalendarioCreate",
  DiaCalendario_Operations_UpdateOneById: "DiaCalendarioUpdateOneById",

  //
  Evento: "Evento",

  Evento_View: "EventoView",
  Evento_FindOneInput_View: "EventoFindOneInputView",
  Evento_FindOneResult_View: "EventoFindOneResultView",
  Evento_ListResult_View: "EventoListResultView",
  Evento_InputCreate_View: "EventoInputCreateView",
  Evento_InputUpdate_View: "EventoInputUpdateView",
  Evento_Operations_FindOneById: "EventoFindOneById",
  Evento_Operations_DeleteOneById: "EventoDeleteOneById",
  Evento_Operations_UpdateOneById: "EventoUpdateOneById",
  Evento_Operations_List: "EventoList",
  Evento_Operations_Create: "EventoCreate",

  //
  Etapa: "Etapa",

  Etapa_View: "EtapaView",
  Etapa_FindOneInput_View: "EtapaFindOneInputView",
  Etapa_FindOneResult_View: "EtapaFindOneResultView",
  Etapa_ListResult_View: "EtapaListResultView",
  Etapa_InputCreate_View: "EtapaInputCreateView",
  Etapa_InputUpdate_View: "EtapaInputUpdateView",
  Etapa_Operations_FindOneById: "EtapaFindOneById",
  Etapa_Operations_DeleteOneById: "EtapaDeleteOneById",
  Etapa_Operations_UpdateOneById: "EtapaUpdateOneById",
  Etapa_Operations_List: "EtapaList",
  Etapa_Operations_Create: "EtapaCreate",

  //
  Turma: "Turma",

  Turma_View: "TurmaView",
  Turma_FindOneInput_View: "TurmaFindOneInputView",
  Turma_FindOneResult_View: "TurmaFindOneResultView",
  Turma_ListResult_View: "TurmaListResultView",
  Turma_InputCreate_View: "TurmaInputCreateView",
  Turma_InputUpdate_View: "TurmaInputUpdateView",
  Turma_Operations_FindOneById: "TurmaFindOneById",
  Turma_Operations_DeleteOneById: "TurmaDeleteOneById",
  Turma_Operations_UpdateOneById: "TurmaUpdateOneById",
  Turma_Operations_List: "TurmaList",
  Turma_Operations_Create: "TurmaCreate",
  Turma_Operations_GetImagemCapa: "TurmaGetImagemCapa",
  Turma_Operations_SetImagemCapa: "TurmaSetImagemCapa",

  //
  Diario: "Diario",

  Diario_View: "DiarioView",
  Diario_FindOneInput_View: "DiarioFindOneInputView",
  Diario_FindOneResult_View: "DiarioFindOneResultView",
  Diario_ListResult_View: "DiarioListResultView",
  Diario_InputCreate_View: "DiarioInputCreateView",
  Diario_InputUpdate_View: "DiarioInputUpdateView",
  Diario_Operations_FindOneById: "DiarioFindOneById",
  Diario_Operations_DeleteOneById: "DiarioDeleteOneById",
  Diario_Operations_UpdateOneById: "DiarioUpdateOneById",
  Diario_Operations_List: "DiarioList",
  Diario_Operations_Create: "DiarioCreate",
  Diario_Operations_GetImagemCapa: "DiarioGetImagemCapa",
  Diario_Operations_SetImagemCapa: "DiarioSetImagemCapa",

  //
  DiarioProfessor: "DiarioProfessor",

  DiarioProfessor_View: "DiarioProfessorView",
  DiarioProfessor_FindOneInput_View: "DiarioProfessorFindOneInputView",
  DiarioProfessor_FindOneResult_View: "DiarioProfessorFindOneResultView",
  DiarioProfessor_ListResult_View: "DiarioProfessorListResultView",
  DiarioProfessor_InputCreate_View: "DiarioProfessorInputCreateView",
  DiarioProfessor_InputUpdate_View: "DiarioProfessorInputUpdateView",
  DiarioProfessor_Operations_FindOneById: "DiarioProfessorFindOneById",
  DiarioProfessor_Operations_DeleteOneById: "DiarioProfessorDeleteOneById",
  DiarioProfessor_Operations_UpdateOneById: "DiarioProfessorUpdateOneById",
  DiarioProfessor_Operations_List: "DiarioProfessorList",
  DiarioProfessor_Operations_Create: "DiarioProfessorCreate",

  //
  Aula: "Aula",

  Aula_View: "AulaView",
  Aula_FindOneInput_View: "AulaFindOneInputView",
  Aula_FindOneResult_View: "AulaFindOneResultView",
  Aula_ListResult_View: "AulaListResultView",
  Aula_InputCreate_View: "AulaInputCreateView",
  Aula_InputUpdate_View: "AulaInputUpdateView",
  Aula_Operations_FindOneById: "AulaFindOneById",
  Aula_Operations_DeleteOneById: "AulaDeleteOneById",
  Aula_Operations_UpdateOneById: "AulaUpdateOneById",
  Aula_Operations_List: "AulaList",
  Aula_Operations_Create: "AulaCreate",

  //
  Disponibilidade: "Disponibilidade",

  Disponibilidade_View: "DisponibilidadeView",
  Disponibilidade_FindOneInput_View: "DisponibilidadeFindOneInputView",
  Disponibilidade_FindOneResult_View: "DisponibilidadeFindOneResultView",
  Disponibilidade_ListResult_View: "DisponibilidadeListResultView",
  Disponibilidade_InputCreate_View: "DisponibilidadeInputCreateView",
  Disponibilidade_InputUpdate_View: "DisponibilidadeInputUpdateView",
  Disponibilidade_Operations_FindOneById: "DisponibilidadeFindOneById",
  Disponibilidade_Operations_DeleteOneById: "DisponibilidadeDeleteOneById",
  Disponibilidade_Operations_UpdateOneById: "DisponibilidadeUpdateOneById",
  Disponibilidade_Operations_List: "DisponibilidadeList",
  Disponibilidade_Operations_Create: "DisponibilidadeCreate",

  //
  DisponibilidadeDia: "DisponibilidadeDia",

  DisponibilidadeDia_View: "DisponibilidadeDiaView",
  DisponibilidadeDia_FindOneInput_View: "DisponibilidadeDiaFindOneInputView",
  DisponibilidadeDia_FindOneResult_View: "DisponibilidadeDiaFindOneResultView",
  DisponibilidadeDia_ListResult_View: "DisponibilidadeDiaListResultView",
  DisponibilidadeDia_InputCreate_View: "DisponibilidadeDiaInputCreateView",
  DisponibilidadeDia_InputUpdate_View: "DisponibilidadeDiaInputUpdateView",
  DisponibilidadeDia_Operations_FindOneById: "DisponibilidadeDiaFindOneById",
  DisponibilidadeDia_Operations_DeleteOneById: "DisponibilidadeDiaDeleteOneById",
  DisponibilidadeDia_Operations_UpdateOneById: "DisponibilidadeDiaUpdateOneById",
  DisponibilidadeDia_Operations_List: "DisponibilidadeDiaList",
  DisponibilidadeDia_Operations_Create: "DisponibilidadeDiaCreate",

  //
  TurmaDisponibilidade: "TurmaDisponibilidade",

  TurmaDisponibilidade_View: "TurmaDisponibilidadeView",
  TurmaDisponibilidade_FindOneInput_View: "TurmaDisponibilidadeFindOneInputView",
  TurmaDisponibilidade_FindOneResult_View: "TurmaDisponibilidadeFindOneResultView",
  TurmaDisponibilidade_ListResult_View: "TurmaDisponibilidadeListResultView",
  TurmaDisponibilidade_InputCreate_View: "TurmaDisponibilidadeInputCreateView",
  TurmaDisponibilidade_InputUpdate_View: "TurmaDisponibilidadeInputUpdateView",
  TurmaDisponibilidade_Operations_FindOneById: "TurmaDisponibilidadeFindOneById",
  TurmaDisponibilidade_Operations_DeleteOneById: "TurmaDisponibilidadeDeleteOneById",
  TurmaDisponibilidade_Operations_UpdateOneById: "TurmaDisponibilidadeUpdateOneById",
  TurmaDisponibilidade_Operations_List: "TurmaDisponibilidadeList",
  TurmaDisponibilidade_Operations_Create: "TurmaDisponibilidadeCreate",

  //
  ProfessorDisponibilidade: "ProfessorDisponibilidade",

  ProfessorDisponibilidade_View: "ProfessorDisponibilidadeView",
  ProfessorDisponibilidade_FindOneInput_View: "ProfessorDisponibilidadeFindOneInputView",
  ProfessorDisponibilidade_FindOneResult_View: "ProfessorDisponibilidadeFindOneResultView",
  ProfessorDisponibilidade_ListResult_View: "ProfessorDisponibilidadeListResultView",
  ProfessorDisponibilidade_InputCreate_View: "ProfessorDisponibilidadeInputCreateView",
  ProfessorDisponibilidade_InputUpdate_View: "ProfessorDisponibilidadeInputUpdateView",
  ProfessorDisponibilidade_Operations_FindOneById: "ProfessorDisponibilidadeFindOneById",
  ProfessorDisponibilidade_Operations_DeleteOneById: "ProfessorDisponibilidadeDeleteOneById",
  ProfessorDisponibilidade_Operations_UpdateOneById: "ProfessorDisponibilidadeUpdateOneById",
  ProfessorDisponibilidade_Operations_List: "ProfessorDisponibilidadeList",
  ProfessorDisponibilidade_Operations_Create: "ProfessorDisponibilidadeCreate",

  //

  DiarioPreferenciaAgrupamento: "DiarioPreferenciaAgrupamento",

  DiarioPreferenciaAgrupamento_View: "DiarioPreferenciaAgrupamentoView",
  DiarioPreferenciaAgrupamento_FindOneInput_View: "DiarioPreferenciaAgrupamentoFindOneInputView",
  DiarioPreferenciaAgrupamento_FindOneResult_View: "DiarioPreferenciaAgrupamentoFindOneResultView",
  DiarioPreferenciaAgrupamento_ListResult_View: "DiarioPreferenciaAgrupamentoListResultView",
  DiarioPreferenciaAgrupamento_InputCreate_View: "DiarioPreferenciaAgrupamentoInputCreateView",
  DiarioPreferenciaAgrupamento_InputUpdate_View: "DiarioPreferenciaAgrupamentoInputUpdateView",
  DiarioPreferenciaAgrupamento_Operations_FindOneById: "DiarioPreferenciaAgrupamentoFindOneById",
  DiarioPreferenciaAgrupamento_Operations_DeleteOneById: "DiarioPreferenciaAgrupamentoDeleteOneById",
  DiarioPreferenciaAgrupamento_Operations_UpdateOneById: "DiarioPreferenciaAgrupamentoUpdateOneById",
  DiarioPreferenciaAgrupamento_Operations_List: "DiarioPreferenciaAgrupamentoList",
  DiarioPreferenciaAgrupamento_Operations_Create: "DiarioPreferenciaAgrupamentoCreate",

  //

  HorarioGerado: "HorarioGerado",

  HorarioGerado_View: "HorarioGeradoView",
  HorarioGerado_FindOneInput_View: "HorarioGeradoFindOneInputView",
  HorarioGerado_FindOneResult_View: "HorarioGeradoFindOneResultView",
  HorarioGerado_ListResult_View: "HorarioGeradoListResultView",
  HorarioGerado_InputCreate_View: "HorarioGeradoInputCreateView",
  HorarioGerado_InputUpdate_View: "HorarioGeradoInputUpdateView",
  HorarioGerado_Operations_FindOneById: "HorarioGeradoFindOneById",
  HorarioGerado_Operations_DeleteOneById: "HorarioGeradoDeleteOneById",
  HorarioGerado_Operations_UpdateOneById: "HorarioGeradoUpdateOneById",
  HorarioGerado_Operations_List: "HorarioGeradoList",
  HorarioGerado_Operations_Create: "HorarioGeradoCreate",

  //

  HorarioGeradoAula: "HorarioGeradoAula",

  HorarioGeradoAula_View: "HorarioGeradoAulaView",
  HorarioGeradoAula_FindOneInput_View: "HorarioGeradoAulaFindOneInputView",
  HorarioGeradoAula_FindOneResult_View: "HorarioGeradoAulaFindOneResultView",
  HorarioGeradoAula_ListResult_View: "HorarioGeradoAulaListResultView",
  HorarioGeradoAula_InputCreate_View: "HorarioGeradoAulaInputCreateView",
  HorarioGeradoAula_InputUpdate_View: "HorarioGeradoAulaInputUpdateView",
  HorarioGeradoAula_Operations_FindOneById: "HorarioGeradoAulaFindOneById",
  HorarioGeradoAula_Operations_DeleteOneById: "HorarioGeradoAulaDeleteOneById",
  HorarioGeradoAula_Operations_UpdateOneById: "HorarioGeradoAulaUpdateOneById",
  HorarioGeradoAula_Operations_List: "HorarioGeradoAulaList",
  HorarioGeradoAula_Operations_Create: "HorarioGeradoAulaCreate",
}
