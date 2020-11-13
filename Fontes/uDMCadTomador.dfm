object DMCadTomador: TDMCadTomador
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 281
  Top = 116
  Height = 458
  Width = 894
  object sdsTomador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TOMADOR'#13#10'WHERE 0=0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 48
    Top = 40
    object sdsTomadorID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object sdsTomadorID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTomadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsTomadorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sdsTomadorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsTomadorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object sdsTomadorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object sdsTomadorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object sdsTomadorESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 10
    end
    object sdsTomadorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsTomadorDOCUMENTO: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object sdsTomadorFPAS: TIntegerField
      FieldName = 'FPAS'
    end
    object sdsTomadorSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object cdsTomador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTomador'
    Left = 112
    Top = 40
    object cdsTomadorID_TOMADOR: TIntegerField
      DisplayLabel = 'Cod.Tomador'
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object cdsTomadorID_FILIAL: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTomadorNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsTomadorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsTomadorNUMERO: TStringField
      DisplayLabel = 'Nro'
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsTomadorCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsTomadorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsTomadorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsTomadorESTADO: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 10
    end
    object cdsTomadorCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTomadorDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object cdsTomadorFPAS: TIntegerField
      DisplayLabel = 'Fpas'
      FieldName = 'FPAS'
    end
    object cdsTomadorSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsTomadorsdsTomadorDiasTrabalhados: TDataSetField
      FieldName = 'sdsTomadorDiasTrabalhados'
    end
  end
  object dspTomador: TDataSetProvider
    DataSet = sdsTomador
    Left = 80
    Top = 40
  end
  object dsTomador: TDataSource
    DataSet = cdsTomador
    Left = 144
    Top = 40
  end
  object dsMestre: TDataSource
    DataSet = sdsTomador
    Left = 56
    Top = 96
  end
  object sdsTomadorDiasTrabalhados: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT * FROM TOMADOR_DIAS_TRABALHADOS'#13#10'WHERE ID_TOMADOR = :ID_T' +
      'OMADOR AND ID_FILIAL = :ID_FILIAL'#13#10'ORDER BY ANO, MES DESC'
    DataSource = dsMestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TOMADOR'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ID_FILIAL'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 48
    Top = 152
    object sdsTomadorDiasTrabalhadosMES: TStringField
      FieldName = 'MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 10
    end
    object sdsTomadorDiasTrabalhadosANO: TSmallintField
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTomadorDiasTrabalhadosID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsTomadorDiasTrabalhadosDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object sdsTomadorDiasTrabalhadosVALOR_VA: TFMTBCDField
      FieldName = 'VALOR_VA'
      Precision = 15
      Size = 2
    end
    object sdsTomadorDiasTrabalhadosPERC_VA: TFMTBCDField
      FieldName = 'PERC_VA'
      Precision = 15
      Size = 2
    end
    object sdsTomadorDiasTrabalhadosVALOR_LANCHE: TFMTBCDField
      FieldName = 'VALOR_LANCHE'
      Precision = 15
      Size = 2
    end
    object sdsTomadorDiasTrabalhadosID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object cdsTomadorDiasTrabalhados: TClientDataSet
    Aggregates = <>
    DataSetField = cdsTomadorsdsTomadorDiasTrabalhados
    Params = <>
    Left = 80
    Top = 152
    object cdsTomadorDiasTrabalhadosMES: TStringField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 10
    end
    object cdsTomadorDiasTrabalhadosANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTomadorDiasTrabalhadosID_TOMADOR: TIntegerField
      DisplayLabel = 'Cod.Tomador'
      FieldName = 'ID_TOMADOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTomadorDiasTrabalhadosDIAS: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'DIAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsTomadorDiasTrabalhadosVALOR_VA: TFMTBCDField
      DisplayLabel = 'Valor VA'
      FieldName = 'VALOR_VA'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsTomadorDiasTrabalhadosPERC_VA: TFMTBCDField
      DisplayLabel = '% VA'
      FieldName = 'PERC_VA'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsTomadorDiasTrabalhadosVALOR_LANCHE: TFMTBCDField
      DisplayLabel = 'Valor Lanche'
      FieldName = 'VALOR_LANCHE'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object cdsTomadorDiasTrabalhadosID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsTomadorDiasTrabalhados: TDataSource
    DataSet = cdsTomadorDiasTrabalhados
    Left = 112
    Top = 152
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM TOMADOR'#13#10'WHERE 0=0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 216
    Top = 40
    object IntegerField1: TIntegerField
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_FILIAL'
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object StringField3: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 10
    end
    object StringField8: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object StringField9: TStringField
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object IntegerField3: TIntegerField
      FieldName = 'FPAS'
    end
    object sdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 280
    Top = 40
    object cdsConsultaID_FILIAL: TIntegerField
      DisplayLabel = 'Cod.Filial'
      FieldName = 'ID_FILIAL'
    end
    object cdsConsultaID_TOMADOR: TIntegerField
      DisplayLabel = 'Cod.Tomador'
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object cdsConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
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
      Size = 10
    end
    object cdsConsultaCOMPLEMENTO: TStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsConsultaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsConsultaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsConsultaESTADO: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 10
    end
    object cdsConsultaCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99999-999;0;'
      Size = 10
    end
    object cdsConsultaDOCUMENTO: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Size = 18
    end
    object cdsConsultaFPAS: TIntegerField
      FieldName = 'FPAS'
    end
    object cdsConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 248
    Top = 40
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 312
    Top = 40
  end
  object qTomador: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TOMADOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID_TOMADOR, NOME FROM TOMADOR'
      'WHERE ID_TOMADOR = :ID_TOMADOR AND ID_FILIAL = :ID_FILIAL')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 632
    Top = 40
    object qTomadorID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object qTomadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object qTomador_Dias: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_TOMADOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select T.ID_FILIAL, T.ID_TOMADOR, T.NOME, TT.DIAS, TT.VALOR_VA, ' +
        'TT.PERC_VA, TT.VALOR_LANCHE'
      'from TOMADOR T'
      
        'inner join TOMADOR_DIAS_TRABALHADOS TT on T.ID_TOMADOR = TT.ID_T' +
        'OMADOR and T.ID_FILIAL = TT.ID_FILIAL'
      
        'where TT.ANO = :ANO and TT.MES = :MES and T.ID_TOMADOR = :ID_TOM' +
        'ADOR and T.ID_FILIAL = :ID_FILIAL')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 664
    Top = 40
    object qTomador_DiasID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object qTomador_DiasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qTomador_DiasDIAS: TIntegerField
      FieldName = 'DIAS'
    end
    object qTomador_DiasVALOR_VA: TFMTBCDField
      FieldName = 'VALOR_VA'
      Precision = 15
      Size = 2
    end
    object qTomador_DiasPERC_VA: TFMTBCDField
      FieldName = 'PERC_VA'
      Precision = 15
      Size = 2
    end
    object qTomador_DiasVALOR_LANCHE: TFMTBCDField
      FieldName = 'VALOR_LANCHE'
      Precision = 15
      Size = 2
    end
    object qTomador_DiasID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
  end
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43449.885001122700000000
    ReportOptions.LastChange = 44148.733506759260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 720
    Top = 208
    Datasets = <
      item
        DataSet = frxValeTransporteDetalhe
        DataSetName = 'frxValeTransporteDetalhe'
      end
      item
        DataSet = frxValeTransporte
        DataSetName = 'frxValeTransporte'
      end>
    Variables = <
      item
        Name = ' Variaveis'
        Value = Null
      end
      item
        Name = 'Nome_Departamento'
        Value = Null
      end
      item
        Name = 'Data_Recibo'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 264.567100000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxValeTransporte
        DataSetName = 'frxValeTransporte'
        RowCount = 0
        object Shape2: TfrxShapeView
          Left = 2.000000000000000000
          Top = 75.590600000000000000
          Width = 714.331170000000000000
          Height = 30.236240000000000000
          Frame.LeftLine.Width = 4.000000000000000000
        end
        object Memo5: TfrxMemoView
          Left = 2.000461340000000000
          Top = 136.063080000000000000
          Width = 714.330708660000000000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 4.000000000000000000
          GapY = 5.000000000000000000
          HAlign = haBlock
          LineSpacing = 6.000000000000000000
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 2.000000000000000000
          Top = 7.559060000000000000
          Width = 714.331170000000000000
          Height = 60.472480000000000000
        end
        object Memo1: TfrxMemoView
          Left = 173.858380000000000000
          Top = 22.677180000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'RECIBO DE VALE TRANSPORTE')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 6.000000000000000000
          Top = 49.133890000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '(Decreto n'#194#186' 95.247 de 17/11/1987')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 78.811070000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome do(a) Empregado(a): [frxValeTransporte."Nome_Funcionario"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 525.354670000000000000
          Top = 78.811070000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Reg.N'#194#186': [frxValeTransporte."Cod_Funcionario"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 245.889920000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Cod.Passagem')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 113.385900000000000000
          Top = 245.889920000000000000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome Linha')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 415.748300000000000000
          Top = 245.889920000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Passagem')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 608.504330000000000000
          Top = 245.889920000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 263.110390000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 222.992270000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 2.000461340000000000
          Top = 4.000000000000000000
          Width = 714.330708660000000000
          Height = 22.677180000000000000
        end
        object Memo10: TfrxMemoView
          Left = 8.897650000000000000
          Top = 8.220470000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            'Sal'#195#161'rio Base M'#195#170's R$:')
        end
        object Line2: TfrxLineView
          Left = 360.393940000000000000
          Top = 4.220470000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 367.953000000000000000
          Top = 8.220470000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            'Total Desconto:')
        end
        object Nome_Departamento: TfrxMemoView
          Left = 397.086890000000000000
          Top = 49.133890000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[Nome_Departamento]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 18.897650000000000000
          Top = 158.740260000000000000
          Width = 366.614410000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          Left = 163.283550000000000000
          Top = 166.078850000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Assinatura')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 7.559060000000000000
          Top = 215.433210000000000000
          Width = 702.992580000000000000
          Color = clBlack
          Frame.Style = fsDot
          Diagonal = True
        end
        object Data_Recibo: TfrxMemoView
          Left = 396.850650000000000000
          Top = 84.724490000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Data_Recibo]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxValeTransporteDetalhe
        DataSetName = 'frxValeTransporteDetalhe'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '000'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[frxValeTransporteDetalhe."Cod_Passagem"]')
        end
        object Memo7: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            '[frxValeTransporteDetalhe."Nome_Linha"]')
        end
        object Memo8: TfrxMemoView
          Left = 427.086890000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxValeTransporteDetalhe."Valor_Passagem"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxValeTransporteDetalhe."Valor_Total"]')
          ParentFont = False
        end
      end
    end
  end
  object frxValeTransporteDetalhe: TfrxDBDataset
    UserName = 'frxValeTransporteDetalhe'
    OnFirst = frxValeTransporteDetalheFirst
    CloseDataSource = False
    FieldAliases.Strings = (
      'Cod_Funcionario=Cod_Funcionario'
      'Nome_Funcionario=Nome_Funcionario'
      'Valor_Passagem=Valor_Passagem'
      'Qtde_Passagem=Qtde_Passagem'
      'Dias Trabalhados=Dias Trabalhados'
      'Dias Falta=Dias Falta'
      'Dias Atestado=Dias Atestado'
      'Mes=Mes'
      'Ano=Ano'
      'Cod_Passagem=Cod_Passagem'
      'Valor_Total=Valor_Total'
      'Nome_Linha=Nome_Linha'
      'Cod_VR=Cod_VR'
      'Nome_Refeicao=Nome_Refeicao'
      'Valor_Refeicao=Valor_Refeicao'
      'Perc_Refeicao=Perc_Refeicao')
    DataSource = dsVTVA
    BCDToCurrency = False
    Left = 752
    Top = 264
  end
  object ACBrExtensoReais: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 712
    Top = 160
  end
  object cdsVTVA: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Funcionario'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Funcionario'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Valor_Passagem'
        DataType = ftFloat
      end
      item
        Name = 'Qtde_Passagem'
        DataType = ftFloat
      end
      item
        Name = 'Dias Trabalhados'
        DataType = ftFloat
      end
      item
        Name = 'Dias Falta'
        DataType = ftFloat
      end
      item
        Name = 'Dias Atestado'
        DataType = ftFloat
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'Ano'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cod_Passagem'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Linha'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cod_VR'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Refeicao'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Valor_Refeicao'
        DataType = ftFloat
      end
      item
        Name = 'Perc_Refeicao'
        DataType = ftFloat
      end
      item
        Name = 'Dias_Adicionais'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'Cod_Funcionario'
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsVTVACalcFields
    Left = 208
    Top = 264
    Data = {
      940100009619E0BD01000000180000001000000000000300000094010F436F64
      5F46756E63696F6E6172696F0400010000000000104E6F6D655F46756E63696F
      6E6172696F0100490000000100055749445448020002003C000E56616C6F725F
      506173736167656D08000400000000000D517464655F506173736167656D0800
      04000000000010446961732054726162616C6861646F7308000400000000000A
      446961732046616C746108000400000000000D4469617320417465737461646F
      0800040000000000034D6573040001000000000003416E6F0100490000000100
      0557494454480200020014000C436F645F506173736167656D04000100000000
      000A4E6F6D655F4C696E68610100490000000100055749445448020002001E00
      06436F645F565204000100000000000D4E6F6D655F526566656963616F010049
      00000001000557494454480200020028000E56616C6F725F526566656963616F
      08000400000000000D506572635F526566656963616F08000400000000000F44
      6961735F41646963696F6E61697308000400000000000000}
    object cdsVTVACod_Funcionario: TIntegerField
      DisplayLabel = 'C'#243'digo Funcion'#225'rio'
      DisplayWidth = 15
      FieldName = 'Cod_Funcionario'
    end
    object cdsVTVANome_Funcionario: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      DisplayWidth = 50
      FieldName = 'Nome_Funcionario'
      Size = 60
    end
    object cdsVTVANome_Linha: TStringField
      DisplayLabel = 'Nome Linha'
      DisplayWidth = 43
      FieldName = 'Nome_Linha'
      Size = 30
    end
    object cdsVTVAValor_Passagem: TFloatField
      DisplayLabel = 'Valor Passagem'
      DisplayWidth = 15
      FieldName = 'Valor_Passagem'
      DisplayFormat = '##0.00'
    end
    object cdsVTVAQtde_Passagem: TFloatField
      DisplayLabel = 'Qtde Passagem'
      DisplayWidth = 18
      FieldName = 'Qtde_Passagem'
      DisplayFormat = '##0.00'
    end
    object cdsVTVANome_Refeicao: TStringField
      DisplayLabel = 'Nome Refei'#231#227'o'
      DisplayWidth = 48
      FieldName = 'Nome_Refeicao'
      Size = 40
    end
    object cdsVTVAValor_Refeicao: TFloatField
      DisplayLabel = 'Valor Refei'#231#227'o'
      DisplayWidth = 15
      FieldName = 'Valor_Refeicao'
      DisplayFormat = '##0.00'
    end
    object cdsVTVAPerc_Refeicao: TFloatField
      DisplayLabel = '% Refei'#231#227'o'
      DisplayWidth = 14
      FieldName = 'Perc_Refeicao'
      DisplayFormat = '0.00'
    end
    object cdsVTVAValor_Desconto: TFloatField
      DisplayLabel = 'Valor Desconto'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Valor_Desconto'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object cdsVTVADiasTrabalhados: TFloatField
      DisplayWidth = 15
      FieldName = 'Dias Trabalhados'
      DisplayFormat = '##0.00'
    end
    object cdsVTVADiasFalta: TFloatField
      DisplayWidth = 15
      FieldName = 'Dias Falta'
      DisplayFormat = '##0.00'
    end
    object cdsVTVADiasAtestado: TFloatField
      DisplayWidth = 14
      FieldName = 'Dias Atestado'
      DisplayFormat = '##0.00'
    end
    object cdsVTVADias_Adicionais: TFloatField
      DisplayLabel = 'Dias Adicionais'
      DisplayWidth = 14
      FieldName = 'Dias_Adicionais'
      DisplayFormat = '##0.00'
    end
    object cdsVTVAValor_Total: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'Valor_Total'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object cdsVTVAMes: TIntegerField
      DisplayWidth = 5
      FieldName = 'Mes'
    end
    object cdsVTVAAno: TStringField
      DisplayWidth = 5
      FieldName = 'Ano'
    end
    object cdsVTVACod_Passagem: TIntegerField
      DisplayLabel = 'C'#243'd.Passagem'
      DisplayWidth = 18
      FieldName = 'Cod_Passagem'
    end
    object cdsVTVACod_VR: TIntegerField
      DisplayWidth = 12
      FieldName = 'Cod_VR'
    end
  end
  object dsVTVA: TDataSource
    DataSet = cdsVTVA
    Left = 240
    Top = 264
  end
  object mVTAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_funcionario'
        DataType = ftInteger
      end
      item
        Name = 'nome_funcionario'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'valor_passagem'
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'dias_Trabalhados'
        DataType = ftFloat
      end
      item
        Name = 'mes'
        DataType = ftInteger
      end
      item
        Name = 'ano'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    IndexFieldNames = 'cod_funcionario'
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 344
    Data = {
      BF0000009619E0BD010000001800000007000000000003000000BF000F636F64
      5F66756E63696F6E6172696F0400010000000000106E6F6D655F66756E63696F
      6E6172696F01004900000001000557494454480200020064000E76616C6F725F
      706173736167656D08000400000000000B76616C6F725F746F74616C08000400
      0000000010646961735F54726162616C6861646F730800040000000000036D65
      73040001000000000003616E6F01004900000001000557494454480200020014
      000000}
    object mVTAuxiliarcod_funcionario: TIntegerField
      DisplayLabel = 'C'#243'd.Funcion'#225'rio'
      FieldName = 'cod_funcionario'
    end
    object mVTAuxiliarnome_funcionario: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldName = 'nome_funcionario'
      Size = 100
    end
    object mVTAuxiliarvalor_passagem: TFloatField
      DisplayLabel = 'Valor Passagem'
      FieldName = 'valor_passagem'
      DisplayFormat = '#0.00'
    end
    object mVTAuxiliarvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      DisplayFormat = '#0.00'
    end
    object mVTAuxiliarDias_Trabalhados: TFloatField
      DisplayLabel = 'Dias Trabalhados'
      FieldName = 'dias_Trabalhados'
    end
    object mVTAuxiliarMes: TIntegerField
      FieldName = 'mes'
    end
    object mVTAuxiliarano: TStringField
      FieldName = 'ano'
    end
  end
  object dsmVTAuxiliar: TDataSource
    DataSet = mVTAuxiliar
    Left = 240
    Top = 344
  end
  object frxValeTransporte: TfrxDBDataset
    UserName = 'frxValeTransporte'
    OnFirst = frxValeTransporteFirst
    OnNext = frxValeTransporteNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_funcionario=cod_funcionario'
      'nome_funcionario=nome_funcionario'
      'valor_passagem=valor_passagem'
      'valor_total=valor_total'
      'dias_Trabalhados=dias_Trabalhados'
      'mes=mes'
      'ano=ano')
    DataSource = dsmVTAuxiliar
    BCDToCurrency = False
    Left = 720
    Top = 264
  end
  object frxValeRefeicao: TfrxDBDataset
    UserName = 'frxValeRefeicao'
    OnFirst = frxValeRefeicaoFirst
    OnNext = frxValeRefeicaoNext
    CloseDataSource = False
    FieldAliases.Strings = (
      'cod_funcionario=cod_funcionario'
      'nome_funcionario=nome_funcionario'
      'perc_refeicao=perc_refeicao'
      'dias_trabalhados=dias_trabalhados'
      'mes=mes'
      'ano=ano'
      'valor_total=valor_total'
      'valor_desconto=valor_desconto')
    DataSource = dsmVRAuxiliar
    BCDToCurrency = False
    Left = 784
    Top = 264
  end
  object mVRAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_funcionario'
        DataType = ftInteger
      end
      item
        Name = 'nome_funcionario'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'perc_refeicao'
        DataType = ftFloat
      end
      item
        Name = 'dias_trabalhados'
        DataType = ftFloat
      end
      item
        Name = 'mes'
        DataType = ftInteger
      end
      item
        Name = 'ano'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'valor_desconto'
        DataType = ftFloat
      end>
    IndexDefs = <>
    IndexFieldNames = 'cod_funcionario'
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 296
    Data = {
      D50000009619E0BD010000001800000008000000000003000000D5000F636F64
      5F66756E63696F6E6172696F0400010000000000106E6F6D655F66756E63696F
      6E6172696F01004900000001000557494454480200020064000D706572635F72
      6566656963616F080004000000000010646961735F74726162616C6861646F73
      0800040000000000036D6573040001000000000003616E6F0100490000000100
      0557494454480200020004000B76616C6F725F746F74616C0800040000000000
      0E76616C6F725F646573636F6E746F08000400000000000000}
    object mVRAuxiliarcod_funcionario: TIntegerField
      FieldName = 'cod_funcionario'
    end
    object mVRAuxiliarnome_funcionario: TStringField
      FieldName = 'nome_funcionario'
      Size = 100
    end
    object mVRAuxiliarperc_refeicao: TFloatField
      FieldName = 'perc_refeicao'
    end
    object mVRAuxiliardias_trabalhados: TFloatField
      FieldName = 'dias_trabalhados'
    end
    object mVRAuxiliarmes: TIntegerField
      FieldName = 'mes'
    end
    object mVRAuxiliarano: TStringField
      FieldName = 'ano'
      Size = 4
    end
    object mVRAuxiliarvalor_total: TFloatField
      FieldName = 'valor_total'
    end
    object mVRAuxiliarvalor_desconto: TFloatField
      FieldName = 'valor_desconto'
    end
  end
  object dsmVRAuxiliar: TDataSource
    DataSet = mVRAuxiliar
    Left = 240
    Top = 296
  end
  object ACBrExtensoPorCento: TACBrExtenso
    StrMoeda = 'por Cento'
    StrMoedas = 'por Cento'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 744
    Top = 160
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 587
    UseIniFile = False
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 752
    Top = 208
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 784
    Top = 208
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PARAMETROS')
    SQLConnection = dmDatabase.scoPrincipal
    Left = 696
    Top = 40
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object qParametrosHOST: TStringField
      FieldName = 'HOST'
      Size = 100
    end
    object qParametrosPORTA: TIntegerField
      FieldName = 'PORTA'
    end
    object qParametrosSENHA: TStringField
      FieldName = 'SENHA'
      Size = 30
    end
    object qParametrosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 50
    end
    object qParametrosAUTENTICACAO: TStringField
      FieldName = 'AUTENTICACAO'
      FixedChar = True
      Size = 10
    end
    object qParametrosTELA_ENVIO: TStringField
      FieldName = 'TELA_ENVIO'
      FixedChar = True
      Size = 1
    end
    object qParametrosCONFIRMACAO_LEITURA: TStringField
      FieldName = 'CONFIRMACAO_LEITURA'
      FixedChar = True
      Size = 1
    end
  end
  object cdsLiquidos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cod_filial'
        DataType = ftInteger
      end
      item
        Name = 'cod_funcionario'
        DataType = ftInteger
      end
      item
        Name = 'valor_salario'
        DataType = ftFloat
      end
      item
        Name = 'valor_VT'
        DataType = ftFloat
      end
      item
        Name = 'valor_VR'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsLiquidosCalcFields
    Left = 208
    Top = 224
    Data = {
      7D0000009619E0BD0100000018000000050000000000030000007D000A636F64
      5F66696C69616C04000100000000000F636F645F66756E63696F6E6172696F04
      000100000000000D76616C6F725F73616C6172696F0800040000000000087661
      6C6F725F565408000400000000000876616C6F725F5652080004000000000000
      00}
    object cdsLiquidoscod_filial: TIntegerField
      DisplayLabel = 'Cod.Empresa'
      DisplayWidth = 12
      FieldName = 'cod_filial'
    end
    object cdsLiquidoscod_funcionario: TIntegerField
      DisplayLabel = 'Cod.Funcion'#225'rio'
      DisplayWidth = 14
      FieldName = 'cod_funcionario'
    end
    object cdsLiquidosnome_funcionario: TStringField
      DisplayLabel = 'Nome Funcionario'
      DisplayWidth = 50
      FieldKind = fkCalculated
      FieldName = 'nome_funcionario'
      Size = 70
      Calculated = True
    end
    object cdsLiquidosvalor_salario: TFloatField
      DisplayLabel = 'Valor Sal'#225'rio'
      DisplayWidth = 12
      FieldName = 'valor_salario'
      DisplayFormat = '##0.00'
    end
    object cdsLiquidosvalor_VT: TFloatField
      DisplayLabel = 'Valor VT'
      DisplayWidth = 12
      FieldName = 'valor_VT'
      DisplayFormat = '##0.00'
    end
    object cdsLiquidosvalor_VR: TFloatField
      DisplayLabel = 'Valor VR/VA'
      DisplayWidth = 12
      FieldName = 'valor_VR'
      DisplayFormat = '##0.00'
    end
    object cdsLiquidosvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 14
      FieldKind = fkCalculated
      FieldName = 'valor_total'
      DisplayFormat = '##0.00'
      Calculated = True
    end
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
    Left = 728
    Top = 40
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
    object qFuncionarioDATA_RESCISAO: TDateField
      FieldName = 'DATA_RESCISAO'
    end
  end
end
