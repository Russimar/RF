object DMFuncionario: TDMFuncionario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 372
  Top = 206
  Height = 317
  Width = 477
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 48
    Top = 24
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object sdsConsultaNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object sdsConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sdsConsultaNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsConsultaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object sdsConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sdsConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sdsConsultaESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sdsConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsConsultaSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsConsultaESTADO_CIVIL: TIntegerField
      FieldName = 'ESTADO_CIVIL'
    end
    object sdsConsultaDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 96
    Top = 24
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 136
    Top = 24
    object cdsConsultaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaID_FILIAL: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsConsultaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsConsultaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
    end
    object cdsConsultaCOMPLEMENTO: TStringField
      DisplayLabel = 'Compl.'
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsConsultaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsConsultaESTADO: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsConsultaCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 8
    end
    object cdsConsultaSEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsConsultaESTADO_CIVIL: TIntegerField
      DisplayLabel = 'Est Civil'
      FieldName = 'ESTADO_CIVIL'
    end
    object cdsConsultaDATA_ADMISSAO: TDateField
      DisplayLabel = 'Dt Admiss'#227'o'
      FieldName = 'DATA_ADMISSAO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 176
    Top = 24
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FUNCIONARIO WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 56
    Top = 104
    object sdsFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFuncionarioID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object sdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sdsFuncionarioNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object sdsFuncionarioCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object sdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object sdsFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object sdsFuncionarioESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object sdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsFuncionarioSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioESTADO_CIVIL: TIntegerField
      FieldName = 'ESTADO_CIVIL'
    end
    object sdsFuncionarioDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 104
    Top = 104
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 144
    Top = 104
    object cdsFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFuncionarioID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsFuncionarioNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsFuncionarioCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsFuncionarioESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object cdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsFuncionarioSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioESTADO_CIVIL: TIntegerField
      FieldName = 'ESTADO_CIVIL'
    end
    object cdsFuncionarioDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 184
    Top = 104
  end
end
