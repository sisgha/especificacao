using Unispec.JsonSchema;
using TypeSpec.JsonSchema;

namespace Ladesa.Schemas;

using Ladesa.Schemas.Pagination.Result;

/** NivelFormacao. */
@entity(Tokens.NivelFormacao)
model NivelFormacao {
  ...ObjectUuid;

  /** Apelido do nível de formação. */
  @minLength(1)
  slug: string;

  ...DatedObject;
}

/** Visão completa de um nível de formação. */
@entity(Tokens.NivelFormacao_View)
model NivelFormacaoView {
  ...NivelFormacao;
}

/** Dados de entrada para encontrar um nível de formação por ID. */
@entity(Tokens.NivelFormacao_FindOneInput_View)
model NivelFormacaoFindOneInputView {
  @extension("x-unispec-constraint-entity-exists", Json<Tokens.NivelFormacao>)
  id: NivelFormacao.id;
}

/** Visão FindOne de um nível de formação. */
@entity(Tokens.NivelFormacao_FindOneResult_View)
@entityPartialOf(Tokens.NivelFormacao_View)
model NivelFormacaoFindOneResultView {
  ...PickProperties<NivelFormacaoView, "id">;
  ...PickProperties<NivelFormacaoView, "slug">;
  ...PickProperties<NivelFormacaoView, "dateCreated" | "dateUpdated" | "dateDeleted">;
}

/** Dados de entrada para a criação de um nível de formação. */
@entity(Tokens.NivelFormacao_InputCreate_View)
model NivelFormacaoInputCreateView {
  ...PickProperties<NivelFormacaoView, "slug">;
}

/** Dados de entrada para a atualização de um nível de formação. */
@entity(Tokens.NivelFormacao_InputUpdate_View)
model NivelFormacaoInputUpdateView is OptionalProperties<NivelFormacaoInputCreateView>;

/** Resultados da busca aos níveis de formações. */
@entity(Tokens.NivelFormacao_ListResult_View)
model NivelFormacaoListResultView is PaginationResultView<NivelFormacaoFindOneResultView>;

// =====================================
// Operações
// =====================================

model NivelFormacaoFindOneByIdOperation
  is GenericOperationFindOneById<
    Tokens.NivelFormacao_Operations_FindOneById,
    NivelFormacaoFindOneInputView.id,
    NivelFormacaoFindOneResultView
  >;

model NivelFormacaoDeleteByIdOperation
  is GenericOperationDeleteOneById<Tokens.NivelFormacao_Operations_DeleteOneById, NivelFormacaoFindOneInputView.id>;

model NivelFormacaoCreateOperation
  is GenericOperationCreate<Tokens.NivelFormacao_Operations_Create, NivelFormacaoInputCreateView, NivelFormacaoFindOneResultView>;

model NivelFormacaoUpdateByIdOperation
  is GenericOperationUpdate<
    Tokens.NivelFormacao_Operations_UpdateOneById,
    NivelFormacaoFindOneInputView.id,
    NivelFormacaoInputUpdateView,
    NivelFormacaoFindOneResultView
  >;

model NivelFormacaoListOperation is GenericOperationList<Tokens.NivelFormacao_Operations_List, NivelFormacaoListResultView, {}>;
