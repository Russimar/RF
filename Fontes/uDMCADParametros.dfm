object DMCadParametros: TDMCadParametros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 465
  Top = 187
  Height = 326
  Width = 436
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PARAMETROS'#13#10'WHERE 0=0'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 32
    Top = 24
    object sdsConsultaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConsultaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sdsConsultaHOST: TStringField
      FieldName = 'HOST'
      Size = 100
    end
    object sdsConsultaPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sdsConsultaSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sdsConsultaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object sdsConsultaAUTENTICACAO: TStringField
      FieldName = 'AUTENTICACAO'
      FixedChar = True
      Size = 10
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 72
    Top = 24
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 120
    Top = 24
    object cdsConsultaID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConsultaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsConsultaHOST: TStringField
      DisplayLabel = 'Host Name'
      FieldName = 'HOST'
      Size = 100
    end
    object cdsConsultaPORTA: TIntegerField
      DisplayLabel = 'Porta'
      FieldName = 'PORTA'
    end
    object cdsConsultaSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Size = 30
    end
    object cdsConsultaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsConsultaAUTENTICACAO: TStringField
      DisplayLabel = 'Autentica'#231#227'o'
      FieldName = 'AUTENTICACAO'
      FixedChar = True
      Size = 10
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 160
    Top = 24
  end
  object sdsCadParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 40
    Top = 80
    object sdsCadParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsCadParametrosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object sdsCadParametrosHOST: TStringField
      FieldName = 'HOST'
      Size = 100
    end
    object sdsCadParametrosPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object sdsCadParametrosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object sdsCadParametrosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object sdsCadParametrosAUTENTICACAO: TStringField
      FieldName = 'AUTENTICACAO'
      FixedChar = True
      Size = 10
    end
    object sdsCadParametrosTELA_ENVIO: TStringField
      FieldName = 'TELA_ENVIO'
      FixedChar = True
      Size = 1
    end
    object sdsCadParametrosCONFIRMACAO_LEITURA: TStringField
      FieldName = 'CONFIRMACAO_LEITURA'
      FixedChar = True
      Size = 1
    end
  end
  object dspCadParametros: TDataSetProvider
    DataSet = sdsCadParametros
    Left = 80
    Top = 80
  end
  object cdsCadParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadParametros'
    Left = 128
    Top = 80
    object cdsCadParametrosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCadParametrosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsCadParametrosHOST: TStringField
      FieldName = 'HOST'
      Size = 100
    end
    object cdsCadParametrosPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object cdsCadParametrosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object cdsCadParametrosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object cdsCadParametrosAUTENTICACAO: TStringField
      FieldName = 'AUTENTICACAO'
      FixedChar = True
      Size = 10
    end
    object cdsCadParametrosTELA_ENVIO: TStringField
      FieldName = 'TELA_ENVIO'
      FixedChar = True
      Size = 1
    end
    object cdsCadParametrosCONFIRMACAO_LEITURA: TStringField
      FieldName = 'CONFIRMACAO_LEITURA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCadParametros: TDataSource
    DataSet = cdsCadParametros
    Left = 168
    Top = 80
  end
end
