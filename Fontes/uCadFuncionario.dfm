inherited frmCadFuncionario: TfrmCadFuncionario
  Left = -7
  Top = 21
  Width = 1382
  Height = 744
  Caption = 'Cadastro de Funcion'#225'rio'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
    Width = 1366
    Height = 705
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlConsulta: TPanel
        Width = 1362
        object btnAtualiza: TNxButton
          Left = 788
          Top = 3
          Width = 189
          Height = 34
          Caption = 'Op'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000C40E0000C40E0000000000000000000096D8E3FFFFFF
            FFFFFFFFFFFFFFFFFFFBFDFEB9E5EC7CCEDC58BFD047B7CB47B7CB58BFD07BCE
            DBB7E4ECFAFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF40B4C896D8E3FFFFFFFF
            FFFFBEE7EF57BECF40B4C840B4C840B4C840B4C840B4C840B4C840B4C840B4C8
            55BDCFB9E5ECFFFFFFFFFFFFFFFFFFFFFFFF40B4C840B4C896D8E392D6E240B4
            C840B4C840B4C848B8CB74CAD98BD3DF8BD3DF74CAD948B8CB40B4C840B4C840
            B4C88CD4E1FDFFFFFFFFFFFFFFFF40B4C840B4C840B4C840B4C840B4C84CB9CC
            A6DEE8F9FDFEFFFFFFFFFFFFFFFFFFFFFFFFF9FDFEA6DEE84CB9CC40B4C840B4
            C88CD4E1FFFFFFFFFFFF40B4C840B4C840B4C840B4C84CB9CCE4F5F8FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F5F85ABFD040B4C840B4C8
            BAE5ECFFFFFF40B4C83FB8CD3ED0E93EC6DC40B6CB96D8E3FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F5F84CB9CC40B4C855BDCFFA
            FDFE3FB8CD3ED3EC3DD7F13DD7F13DD4EE3EC6DC96DAE6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8DFE840B4C840B4C8B7E5EC9CE6
            F39EEBF89EEBF89EEBF89EEBF89EEBF89EE9F6E5F7FAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFE48B8CB40B4C87BCEDBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF74CAD940B4C858BECFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8BD3DF40B4C847B7CB46D9F23DD7F194E9F7FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF59DDF33DD7F17BE4F5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF81E5F63DD7F148D9F2FBFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F7FA96DAE696D8E396D8E396D8E396D8E3
            96D8E399DDE8BEF2FA3DD7F13DD7F1B1EFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF9EE9F63EC6DC40B6CB40B4C840B4C83FB8CD3E
            D3ECFAFEFF56DCF33DD7F14CDAF2E7FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF9EEBF83DD4EE3EC6DC3FBACF3ED3EC3DD7F1FFFF
            FFC0F2FA3DD7F13DD7F15CDDF3E7FAFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE7FAFD4CDAF23DD7F13DD7F13DD7F13DD7F1FFFFFFFFFFFF
            97EAF73DD7F13DD7F14CDAF2B1EFF9FBFEFFFFFFFFFFFFFFFFFFFFFFFFFFFAFE
            FFAFEFF94CDAF23DD7F13DD7F13DD7F13DD7F13DD7F1FFFFFFFFFFFFFEFFFF96
            E9F73DD7F13DD7F13DD7F148D9F27BE4F594E9F794E9F77BE4F548D9F23DD7F1
            3DD7F13DD7F198EAF89EEBF83DD7F13DD7F1FFFFFFFFFFFFFFFFFFFFFFFFC0F2
            FA57DCF33DD7F13DD7F13DD7F13DD7F13DD7F13DD7F13DD7F13DD7F158DDF3C3
            F3FBFFFFFFFFFFFF9EEBF83DD7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEFF
            BEF2FA81E5F659DDF346D9F246D9F259DDF381E5F6BFF2FAFBFEFFFFFFFFFFFF
            FFFFFFFFFFFFFF9EEBF8}
          ParentFont = False
          PopupMenu = popOpcoes
          ShowArrow = True
          TabOrder = 4
        end
      end
      inherited pnlPesquisa: TPanel
        Width = 1362
        inherited NxButton1: TNxButton
          OnClick = NxButton1Click
        end
      end
      inherited SMDBGrid1: TSMDBGrid
        Width = 1362
        Height = 600
        DataSource = DMFuncionario.dsConsulta
        ColCount = 14
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 290
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Width = 167
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO'
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEXO'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTADO_CIVIL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ADMISSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_FILIAL'
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        Width = 1362
      end
      inherited RzPageControl2: TRzPageControl
        Width = 1362
        Height = 641
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            Width = 1358
            Height = 618
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
    Left = 1060
    Top = 45
  end
  object popOpcoes: TPopupMenu
    Left = 905
    Top = 60
    object BuscaFuncionriosSage1: TMenuItem
      Caption = 'Busca Funcion'#225'rios Sage'
      OnClick = BuscaFuncionriosSage1Click
    end
  end
end
