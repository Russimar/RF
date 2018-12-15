object frmSel_Tomador: TfrmSel_Tomador
  Left = 231
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Tomador'
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
      Left = 51
      Top = 13
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Tomador:'
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
    DataSource = dsConsultaTomador
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
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_TOMADOR'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
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
  object sdsConsultaTomador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select ID_TOMADOR, NOME'#13#10'from TOMADOR '#13#10'WHERE 0 = 0'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoPrincipal
    Left = 208
    Top = 168
    object sdsConsultaTomadorID_TOMADOR: TIntegerField
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object sdsConsultaTomadorNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
  end
  object cdsConsultaTomador: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspConsultaTomador'
    Left = 304
    Top = 168
    object cdsConsultaTomadorID_TOMADOR: TIntegerField
      DisplayLabel = 'C'#243'digo Tomador'
      FieldName = 'ID_TOMADOR'
      Required = True
    end
    object cdsConsultaTomadorNOME: TStringField
      DisplayLabel = 'Nome Tomador'
      FieldName = 'NOME'
      Size = 100
    end
  end
  object dspConsultaTomador: TDataSetProvider
    DataSet = sdsConsultaTomador
    Left = 256
    Top = 168
  end
  object dsConsultaTomador: TDataSource
    DataSet = cdsConsultaTomador
    Left = 360
    Top = 168
  end
end
