import { Build as U } from "@unispec/ast-builder";
import { CommonEntity } from "../../-shared/common-entity";
import { Tokens } from "../../tokens";

export const DisponibilidadeProfessorEntity = CommonEntity({
  id: "uuid",
  dated: true,

  description: "DisponibilidadeProfessor",

  properties: {
    dataInicio: U.String({
      format: "date",
      description: "Data de início.",
    }),
    dataFim: U.String({
      format: "date",
      nullable: true,
      description: "Data de término.",
    }),
    //
    vinculoProfessor: U.Reference({
      description: "Vínculo de professor.",
      targetsTo: Tokens.Vinculo.Entity,
    }),
  },
});

export const DisponibilidadeProfessorView = U.View({
  name: Tokens.DisponibilidadeProfessor.Entity,

  description: "Disponibilidade do professor.",

  type: U.ObjectTransformer.From(DisponibilidadeProfessorEntity)
    .Extends({
      properties: {
        vinculoProfessor: {
          targetsTo: Tokens.Vinculo.Views.FindOneResult,
        },
      },
    })
    .Node(),
});