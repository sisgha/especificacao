import { IOperation, PropertyTypes } from '@/helpers';
import { PaginatedInput } from '../../../core';
import { DiarioCreate, DiarioFindAllResult, DiarioFindOneByIdInput, DiarioFindOneResult, DiarioUpdate } from './diario.declaration';

export const DiarioCreateOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioCreate',
    description: 'Registra um diario no sistema.',

    input: {
      strategy: 'dto',
      body: DiarioCreate,
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioFindOneResult,
        description: 'Diario criado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioFindOneByIdOperator = () => {
  return {
    gql: 'query',

    name: 'DiarioFindOneById',
    description: 'Realiza a consulta a um diario por ID.',

    input: {
      strategy: 'dto',
      params: {
        id: DiarioFindOneByIdInput().properties.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioFindOneResult,
        description: 'Diario encontrado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioDeleteOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioDelete',
    description: 'Realiza a remoção de um diario por ID.',

    input: {
      strategy: 'dto',
      params: {
        id: DiarioFindOneByIdOperator().input.params.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: null,
        description: 'Diario removido.',
      },
    },
  } satisfies IOperation;
};

export const DiarioUpdateOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioUpdate',
    description: 'Realiza a alteração de um diario.',

    input: {
      strategy: 'dto',
      body: DiarioUpdate,
      params: {
        id: DiarioFindOneByIdOperator().input.params.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioFindOneResult,
        description: 'Diario atualizado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioFindAllOperator = () => {
  return {
    gql: 'query',

    name: 'DiarioFindAll',
    description: 'Lista de todos os diários cadastrados no sistema.',

    input: {
      strategy: 'dto',
      params: {
        ...PaginatedInput().properties,
        'filter.turma.id': {
          nullable: true,
          required: false,
          type: PropertyTypes.UUID,
          description: 'Filtrar resultados por ID de Turma.',
        },
        'filter.disciplina.id': {
          nullable: true,
          required: false,
          type: PropertyTypes.UUID,
          description: 'Filtrar resultados por ID de Disciplina.',
        },
        'filter.ambientePadrao.id': {
          nullable: true,
          required: false,
          type: PropertyTypes.UUID,
          description: 'Filtrar resultados por ID de Ambiente Padrão.',
        },
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioFindAllResult,
        description: 'Resultados da busca de diários.',
      },
    },
  } satisfies IOperation;
};

export const DiarioGetImagemCapaOperator = () => {
  return {
    gql: false,

    name: 'DiarioGetImagemCapa',
    description: 'Obtêm a imagem de capa do diário.',

    input: {
      strategy: 'dto',
      params: {
        id: {
          ...DiarioFindOneByIdInput().properties.id,
        },
      },
    },

    output: {
      strategy: 'file',
      description: 'Binário da imagem do diário.',
      mimeTypes: ['image/jpeg'],
    },
  } satisfies IOperation;
};