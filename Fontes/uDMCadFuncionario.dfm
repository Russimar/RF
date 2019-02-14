object DMFuncionario: TDMFuncionario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 372
  Top = 206
  Height = 414
  Width = 550
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FUNCIONARIO WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 48
    Top = 24
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConsultaID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsultaID_FILIAL: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object qFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FUNCIONARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO'
      'WHERE ID = :ID_FUNCIONARIO AND ID_FILIAL = :ID_FILIAL')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 368
    Top = 136
    object qFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFuncionarioID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object qFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object qFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object qFuncionarioNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object qFuncionarioCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object qFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qFuncionarioESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object qFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object qFuncionarioSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object qFuncionarioESTADO_CIVIL: TIntegerField
      FieldName = 'ESTADO_CIVIL'
    end
    object qFuncionarioDATA_ADMISSAO: TDateField
      FieldName = 'DATA_ADMISSAO'
    end
  end
  object sdsFaltasAtestado: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM FALTAS_ATESTADO WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 64
    Top = 184
    object sdsFaltasAtestadoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFaltasAtestadoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object sdsFaltasAtestadoID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object sdsFaltasAtestadoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsFaltasAtestadoDIAS: TFloatField
      FieldName = 'DIAS'
    end
    object sdsFaltasAtestadoANO: TSmallintField
      FieldName = 'ANO'
    end
    object sdsFaltasAtestadoMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object sdsFaltasAtestadoTIPO_DESCONTO: TStringField
      FieldName = 'TIPO_DESCONTO'
      Size = 2
    end
  end
  object dspFaltasAtestado: TDataSetProvider
    DataSet = sdsFaltasAtestado
    Options = [poAllowCommandText]
    Left = 112
    Top = 184
  end
  object cdsFaltasAtestado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFaltasAtestado'
    OnCalcFields = cdsFaltasAtestadoCalcFields
    Left = 152
    Top = 184
    object cdsFaltasAtestadoID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsFaltasAtestadoID_FUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'd.Funcion'#225'rio'
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object cdsFaltasAtestadoID_FILIAL: TIntegerField
      DisplayLabel = 'C'#243'd.Filial'
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object cdsFaltasAtestadoTIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFaltasAtestadoDIAS: TFloatField
      DisplayLabel = 'Num. Dias'
      FieldName = 'DIAS'
    end
    object cdsFaltasAtestadoANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsFaltasAtestadoMES: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Size = 2
    end
    object cdsFaltasAtestadoNome_Funcionario: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Nome_Funcionario'
      Size = 70
      Calculated = True
    end
    object cdsFaltasAtestadoTIPO_DESCONTO: TStringField
      DisplayLabel = 'Tipo Desconto'
      FieldName = 'TIPO_DESCONTO'
      Size = 2
    end
  end
  object dsFaltasAtestado: TDataSource
    DataSet = cdsFaltasAtestado
    Left = 192
    Top = 184
  end
  object sdsDiasAdicionais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM DIAS_ADICIONAIS WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 64
    Top = 240
    object sdsDiasAdicionaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsDiasAdicionaisID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object sdsDiasAdicionaisID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object sdsDiasAdicionaisDIAS: TFloatField
      FieldName = 'DIAS'
    end
    object sdsDiasAdicionaisANO: TSmallintField
      FieldName = 'ANO'
    end
    object sdsDiasAdicionaisMES: TStringField
      FieldName = 'MES'
      Size = 2
    end
    object sdsDiasAdicionaisTIPO_ACRESCIMO: TStringField
      FieldName = 'TIPO_ACRESCIMO'
      Size = 2
    end
  end
  object dspDiasAdicionais: TDataSetProvider
    DataSet = sdsDiasAdicionais
    Options = [poAllowCommandText]
    Left = 112
    Top = 240
  end
  object cdsDiasAdicionais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDiasAdicionais'
    OnCalcFields = cdsDiasAdicionaisCalcFields
    Left = 152
    Top = 240
    object cdsDiasAdicionaisID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
    end
    object cdsDiasAdicionaisID_FUNCIONARIO: TIntegerField
      DisplayLabel = 'Cod.Funcion'#225'rio'
      FieldName = 'ID_FUNCIONARIO'
      Required = True
    end
    object cdsDiasAdicionaisID_FILIAL: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'ID_FILIAL'
      Required = True
    end
    object cdsDiasAdicionaisDIAS: TFloatField
      DisplayLabel = 'N'#186' Dias'
      FieldName = 'DIAS'
    end
    object cdsDiasAdicionaisANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
    end
    object cdsDiasAdicionaisMES: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Size = 2
    end
    object cdsDiasAdicionaisNome_Funcionario: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'Nome_Funcionario'
      Size = 70
      Calculated = True
    end
    object cdsDiasAdicionaisTIPO_ACRESCIMO: TStringField
      DisplayLabel = 'Tipo Acr'#233'scimo'
      FieldName = 'TIPO_ACRESCIMO'
      Size = 2
    end
  end
  object dsDiasAdicionais: TDataSource
    DataSet = cdsDiasAdicionais
    Left = 192
    Top = 240
  end
end
