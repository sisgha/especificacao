import {
  DatedObjectDeclarationFactory,
  IEntityDate,
  IObjectUuid,
  IPaginatedResultDto,
  ObjectUuid,
  PaginatedResultDtoDeclarationFactoryBuilder,
} from '../../../core';
import { IDeclaration, PropertyTypes } from '../../../helpers';
import { CampusFindOneByIdInput, CampusFindOneResult, ICampusFindOneResultDto, ICampusModel } from '../../ambientes';
import { IUsuarioFindOneResultDto, IUsuarioModel, UsuarioFindOneByIdInput, UsuarioFindOneResult } from '../usuario/usuario.declaration';

// =================================================================

export interface IVinculoModel {
  //
  id: string;
  //
  ativo: boolean;
  cargo: string;
  //
  campus: ICampusModel;
  usuario: IUsuarioModel;
  //
  dateCreated: IEntityDate;
  dateUpdated: IEntityDate;
  dateDeleted: null | IEntityDate;
  //
}

// =================================================================

export interface IVinculoFindOneByIdInputDto {
  id: IVinculoModel['id'];
}

export interface IVinculoFindOneResultDto {
  //
  id: IVinculoModel['id'];
  //
  ativo: IVinculoModel['ativo'];
  cargo: IVinculoModel['cargo'];
  //
  usuario: IUsuarioFindOneResultDto;
  campus: ICampusFindOneResultDto;
}

export interface IVinculoFindAllResultDto extends IPaginatedResultDto<IVinculoFindOneResultDto> {}

// =================================================================

export interface VinculoUpdateInputDto {
  //
  campus: IObjectUuid;
  usuario: IObjectUuid;
  //
  cargos: string[];
}
// =======================================================================

export const VinculoFindOneByIdInput = ObjectUuid;

export const Vinculo = () => {
  return {
    name: 'Vinculo',

    properties: {
      ...VinculoFindOneByIdInput().properties,

      ativo: {
        nullable: false,
        type: PropertyTypes.BOOLEAN,
        description: 'Situação do vínculo.',
        validator: ({ yup }) => yup.bool(),
      },

      cargo: {
        nullable: false,
        type: PropertyTypes.STRING,
        description: 'Cargo do vínculo.',
        validator: ({ custom }) => custom.string().oneOf(['dape', 'professor']).required().nonNullable(),
      },

      usuario: {
        type: PropertyTypes.MIXED,
        input: {
          required: true,
          nullable: false,
          type: UsuarioFindOneByIdInput,
          description: 'Usuário do vínculo.',
          validator: ({ custom }) => custom.objectUuid({ nonNullable: true, optional: false }),
        },
        output: {
          required: true,
          nullable: false,
          type: UsuarioFindOneResult,
          description: 'Usuário do vínculo.',
        },
      },

      campus: {
        type: PropertyTypes.MIXED,
        input: {
          required: true,
          nullable: false,
          type: CampusFindOneByIdInput,
          description: 'Campus do vínculo.',
          validator: ({ custom }) => custom.objectUuid({ nonNullable: true, optional: false }),
        },
        output: {
          required: true,
          nullable: false,
          type: CampusFindOneResult,
          description: 'Campus do vínculo.',
        },
      },

      ...DatedObjectDeclarationFactory().properties,
    },
  } satisfies IDeclaration;
};

export const VinculoFindOneResult = () => {
  const { properties } = Vinculo();

  return {
    name: 'VinculoFindOneResult',
    partialOf: Vinculo as any,

    properties: {
      id: properties.id,
      //
      ativo: properties.ativo,
      cargo: properties.cargo,
      usuario: properties.usuario,
      campus: properties.campus,
      //
      dateCreated: properties.dateCreated,
      dateUpdated: properties.dateUpdated,
      dateDeleted: properties.dateDeleted,
    },
  } satisfies IDeclaration;
};

export const VinculoFindAllResult = PaginatedResultDtoDeclarationFactoryBuilder(VinculoFindOneResult, 'VinculoFindAllResult');

export const VinculoUpdateInput = () => {
  const { properties } = Vinculo();

  return {
    name: 'VinculoUpdateInput',

    properties: {
      campus: properties.campus,
      usuario: properties.usuario,
      //
      cargos: {
        arrayOf: true,
        required: true,
        nullable: false,
        type: PropertyTypes.STRING,
        description: 'Cargos do vínculo.',
        validator: ({ yup, custom }) => yup.array().of(custom.string().oneOf(['dape', 'professor']).required().nonNullable()),
      },
    },
  } satisfies IDeclaration;
};

/*
IVinculoListByUsuarioAndCampusInputDto
*/