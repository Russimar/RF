inherited frmCadParametros: TfrmCadParametros
  Left = 280
  Top = 143
  Caption = 'Par'#226'metros'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
    ActivePage = TS_Cadastro
    TabIndex = 1
    OnChange = RzPageControl1Change
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlPesquisa: TPanel
        inherited NxButton1: TNxButton
          OnClick = NxButton1Click
        end
      end
      inherited SMDBGrid1: TSMDBGrid
        DataSource = DMCadParametros.dsConsulta
        ColCount = 7
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Alignment = taCenter
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HOST'
            Title.Alignment = taCenter
            Width = 224
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORTA'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTENTICACAO'
            Title.Alignment = taCenter
            Width = 77
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        inherited btnConfirmar: TNxButton
          OnClick = btnConfirmarClick
        end
      end
      inherited RzPageControl2: TRzPageControl
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            object Label2: TLabel
              Left = 32
              Top = 16
              Width = 33
              Height = 13
              Caption = 'C'#243'digo'
            end
            object DBEdit1: TDBEdit
              Left = 32
              Top = 32
              Width = 121
              Height = 21
              DataField = 'ID'
              DataSource = DMCadParametros.dsCadParametros
              TabOrder = 0
            end
            object RzGroupBox1: TRzGroupBox
              Left = 32
              Top = 61
              Width = 516
              Height = 136
              Caption = 'Configura'#231#227'o Email'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object Label3: TLabel
                Left = 17
                Top = 26
                Width = 28
                Height = 13
                Caption = 'Email:'
              end
              object Label4: TLabel
                Left = 6
                Top = 74
                Width = 39
                Height = 13
                Caption = 'Usu'#225'rio:'
              end
              object Label5: TLabel
                Left = 369
                Top = 26
                Width = 28
                Height = 13
                Caption = 'Porta:'
              end
              object Label6: TLabel
                Left = 20
                Top = 50
                Width = 25
                Height = 13
                Caption = 'Host:'
              end
              object Label7: TLabel
                Left = 363
                Top = 74
                Width = 34
                Height = 13
                Caption = 'Senha:'
              end
              object dbedtEmail: TRzDBEdit
                Left = 48
                Top = 18
                Width = 289
                Height = 21
                DataSource = DMCadParametros.dsCadParametros
                DataField = 'EMAIL'
                TabOrder = 0
              end
              object dbedtUsuario: TRzDBEdit
                Left = 48
                Top = 66
                Width = 289
                Height = 21
                DataSource = DMCadParametros.dsCadParametros
                DataField = 'USUARIO'
                TabOrder = 1
              end
              object dbedtPorta: TRzDBEdit
                Left = 400
                Top = 18
                Width = 97
                Height = 21
                DataSource = DMCadParametros.dsCadParametros
                DataField = 'PORTA'
                TabOrder = 2
              end
              object dbedtHost: TRzDBEdit
                Left = 48
                Top = 42
                Width = 289
                Height = 21
                DataSource = DMCadParametros.dsCadParametros
                DataField = 'HOST'
                TabOrder = 3
              end
              object dbedtSenha: TRzDBEdit
                Left = 400
                Top = 66
                Width = 97
                Height = 21
                DataSource = DMCadParametros.dsCadParametros
                DataField = 'SENHA'
                PasswordChar = '*'
                TabOrder = 4
              end
              object dbchkAutenticacao: TRzDBCheckBox
                Left = 50
                Top = 92
                Width = 89
                Height = 17
                DataField = 'AUTENTICACAO'
                DataSource = DMCadParametros.dsCadParametros
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                Caption = 'Autentica'#231#227'o'
                TabOrder = 5
              end
              object RzDBCheckBox1: TRzDBCheckBox
                Left = 195
                Top = 92
                Width = 113
                Height = 17
                DataField = 'TELA_ENVIO'
                DataSource = DMCadParametros.dsCadParametros
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Caption = 'Mostrar Tela Envio'
                TabOrder = 6
              end
              object RzDBCheckBox2: TRzDBCheckBox
                Left = 364
                Top = 92
                Width = 129
                Height = 17
                DataField = 'CONFIRMACAO_LEITURA'
                DataSource = DMCadParametros.dsCadParametros
                ValueChecked = 'S'
                ValueUnchecked = 'N'
                Caption = 'Confirma'#231#227'o de Leitura'
                TabOrder = 7
              end
            end
          end
        end
      end
    end
  end
  inherited UCControls1: TUCControls
    UserControl = fMenu.UserControl1
  end
end
