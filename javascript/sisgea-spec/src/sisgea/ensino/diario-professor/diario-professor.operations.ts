import { IOperation } from '@/helpers';
import { PaginatedInput } from '../../../core';
import {
  DiarioProfessorCreate,
  DiarioProfessorFindAllResult,
  DiarioProfessorFindOneByIdInput,
  DiarioProfessorFindOneResult,
  DiarioProfessorUpdate,
} from './diario-professor.declaration';

export const DiarioProfessorCreateOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioProfessorCreate',
    description: 'Registra um vínculo entre diário e professor no sistema.',

    input: {
      strategy: 'dto',
      body: DiarioProfessorCreate,
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioProfessorFindOneResult,
        description: 'Vínculo entre diário e professor criado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioProfessorFindOneByIdOperator = () => {
  return {
    gql: 'query',

    name: 'DiarioProfessorFindOneById',
    description: 'Realiza a consulta a um vínculo entre diário e professor por ID.',

    input: {
      strategy: 'dto',
      params: {
        id: DiarioProfessorFindOneByIdInput().properties.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioProfessorFindOneResult,
        description: 'Vínculo entre diário e professor encontrado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioProfessorDeleteOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioProfessorDelete',
    description: 'Realiza a remoção de um vínculo entre diário e professor por ID.',

    input: {
      strategy: 'dto',
      params: {
        id: DiarioProfessorFindOneByIdOperator().input.params.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: null,
        description: 'Vínculo entre diário e professor removido.',
      },
    },
  } satisfies IOperation;
};

export const DiarioProfessorUpdateOperator = () => {
  return {
    gql: 'mutation',

    name: 'DiarioProfessorUpdate',
    description: 'Realiza a alteração de um vínculo entre diário e professor.',

    input: {
      strategy: 'dto',
      body: DiarioProfessorUpdate,
      params: {
        id: DiarioProfessorFindOneByIdOperator().input.params.id,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioProfessorFindOneResult,
        description: 'Vínculo entre diário e professor atualizado.',
      },
    },
  } satisfies IOperation;
};

export const DiarioProfessorFindAllOperator = () => {
  return {
    gql: 'query',

    name: 'DiarioProfessorFindAll',
    description: 'Lista de todos os vínculos entre diário e professor cadastradas no sistema.',

    input: {
      strategy: 'dto',
      params: {
        ...PaginatedInput().properties,
      },
    },

    output: {
      strategy: 'dto',
      success: {
        dto: DiarioProfessorFindAllResult,
        description: 'Resultados da busca de vínculos entre diário e professor.',
      },
    },
  } satisfies IOperation;
};