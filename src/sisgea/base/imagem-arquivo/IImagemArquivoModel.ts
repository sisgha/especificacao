import * as Dto from '@/index';

export interface IImagemArquivoModel extends Dto.IObjectUuid {
  id: string;

  //

  largura: number;
  altura: number;
  formato: string;
  mimeType: string;

  imagem: Dto.IImagemModel;
  arquivo: Dto.IArquivoModel;

  //

  dateCreated: Dto.IEntityDate;
  // dateUpdated: Dto.IEntityDate;
  // dateDeleted: null | Dto.IEntityDate;
}
