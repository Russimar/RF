object frmSel_Funcionario: TfrmSel_Funcionario
  Left = 157
  Top = 143
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Funcion'#225'rio'
  ClientHeight = 446
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 32
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 38
      Top = 13
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Funcion'#225'rio:'
    end
    object Label2: TLabel
      Left = 329
      Top = 41
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ:'
    end
    object Edit1: TEdit
      Left = 131
      Top = 5
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 528
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 32
    Width = 914
    Height = 397
    Align = alClient
    Ctl3D = False
    DataSource = dsConsultaFuncionario
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
    OnTitleClick = SMDBGrid1TitleClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 4
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FILIAL'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 914
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar a pessoa       ESC= Fec' +
      'har tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object sdsConsultaFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select ID, NOME, ID_FILIAL'#13#10'from FUNCIONARIO '#13#10'WHERE 0 = 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 208
    Top = 168
    object sdsConsultaFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsConsultaFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object sdsConsultaFuncionarioID_FILIAL: TIntegerField
      FieldName = 'ID_FILIAL'
      Required = True
    end
  end
  object cdsConsultaFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspConsultaFuncionario'
    Left = 304
    Top = 168
    object cdsConsultaFuncionarioID: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      Required = True
    end
    object cdsConsultaFuncionarioNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 100
    end
    object cdsConsultaFuncionarioID_FILIAL: TIntegerField
      DisplayLabel = 'C'#243'd.Filial'
      FieldName = 'ID_FILIAL'
      Required = True
    end
  end
  object dspConsultaFuncionario: TDataSetProvider
    DataSet = sdsConsultaFuncionario
    Left = 256
    Top = 168
  end
  object dsConsultaFuncionario: TDataSource
    DataSet = cdsConsultaFuncionario
    Left = 360
    Top = 168
  end
end
