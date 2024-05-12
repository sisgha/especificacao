import { createDeclarator } from '../../../types';
import { Cidade } from '../cidade';

export const Endereco = createDeclarator(() => ({
  name: 'Endereco',

  id: 'uuid',
  dated: true,

  properties: {
    cep: {
      type: 'string',
      required: true,
      nullable: false,
      description: 'CEP',
      constraints: ['is-valid-cep'],
    },
    logradouro: {
      type: 'string',
      required: true,
      nullable: false,
      description: 'Logradouro',
    },
    numero: {
      type: 'integer',
      required: true,
      nullable: false,
      description: 'Número',
      constraints: [['numeric', { min: 0, integer: true, positive: true }]],
    },
    bairro: {
      type: 'string',
      required: true,
      nullable: false,
      description: 'Bairro',
    },
    complemento: {
      type: 'string',
      required: true,
      nullable: true,
      description: 'Complemento',
      default: null,
    },
    pontoReferencia: {
      type: 'string',
      required: true,
      nullable: true,
      description: 'Ponto de referência',
      default: null,
    },
    cidade: {
      type: 'reference',
      references: 'declarator',
      required: true,
      nullable: false,
      description: 'Cidade',
      declarator: () => Cidade,
    },
  },

  views: {
    default: ['cep', 'logradouro', 'numero', 'bairro', 'complemento', 'pontoReferencia', 'cidade'],
    input: ['cep', 'logradouro', 'numero', 'bairro', 'complemento', 'pontoReferencia', 'cidade'],
  },

  operations: {
    crud: {
      list: {
        filters: [
          //
          ['estado.id', ['$eq']],
        ],
      },
      findById: true,
    },
  },
}));
