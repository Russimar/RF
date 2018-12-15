inherited frmCadEmpresa: TfrmCadEmpresa
  Left = 79
  Top = 70
  Width = 1147
  Height = 609
  Caption = 'Cadastro de Empresa'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited RzPageControl1: TRzPageControl
    Width = 1131
    Height = 571
    OnChange = RzPageControl1Change
    FixedDimension = 19
    inherited TS_Consulta: TRzTabSheet
      inherited pnlConsulta: TPanel
        Width = 1127
        inherited btnExcluir: TNxButton
          OnClick = btnExcluirClick
        end
      end
      inherited pnlPesquisa: TPanel
        Width = 1127
        inherited NxButton1: TNxButton
          OnClick = NxButton1Click
        end
      end
      inherited SMDBGrid1: TSMDBGrid
        Width = 1127
        Height = 466
        DataSource = DMCadEmpresa.dsConsulta
        ColCount = 9
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 455
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Fantasia'
            Width = 181
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Alignment = taCenter
            Title.Caption = 'Endere'#231'o'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO_END'
            Title.Alignment = taCenter
            Title.Caption = 'Complemento'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_END'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Alignment = taCenter
            Title.Caption = 'Bairro'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Title.Alignment = taCenter
            Width = 83
            Visible = True
          end>
      end
    end
    inherited TS_Cadastro: TRzTabSheet
      inherited Panel3: TPanel
        Width = 1127
        inherited btnConfirmar: TNxButton
          OnClick = btnConfirmarClick
        end
      end
      inherited RzPageControl2: TRzPageControl
        Width = 1127
        Height = 507
        ActivePage = TS_Diretoria
        UseColoredTabs = True
        TabIndex = 1
        FixedDimension = 19
        inherited TS_Dados: TRzTabSheet
          inherited pnlCadastro: TPanel
            Width = 1123
            Height = 484
            object Label2: TLabel
              Left = 79
              Top = 25
              Width = 14
              Height = 13
              Caption = 'ID:'
            end
            object Label3: TLabel
              Left = 60
              Top = 50
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label4: TLabel
              Left = 42
              Top = 135
              Width = 49
              Height = 13
              Caption = 'Endere'#231'o:'
            end
            object Label5: TLabel
              Left = 61
              Top = 107
              Width = 30
              Height = 13
              Caption = 'CNPJ:'
            end
            object Label6: TLabel
              Left = 48
              Top = 80
              Width = 43
              Height = 13
              Caption = 'Fantasia:'
            end
            object Label7: TLabel
              Left = 381
              Top = 135
              Width = 40
              Height = 13
              Caption = 'N'#250'mero:'
            end
            object Label9: TLabel
              Left = 611
              Top = 135
              Width = 67
              Height = 13
              Caption = 'Complemento:'
            end
            object Label10: TLabel
              Left = 61
              Top = 162
              Width = 30
              Height = 13
              Caption = 'Bairro:'
            end
            object Label11: TLabel
              Left = 385
              Top = 162
              Width = 36
              Height = 13
              Caption = 'Cidade:'
            end
            object Label12: TLabel
              Left = 661
              Top = 162
              Width = 17
              Height = 13
              Caption = 'UF:'
            end
            object Label13: TLabel
              Left = 67
              Top = 190
              Width = 24
              Height = 13
              Caption = 'CEP:'
            end
            object Label14: TLabel
              Left = 358
              Top = 190
              Width = 84
              Height = 13
              Caption = 'Fone (DDD + N'#186'):'
            end
            object Label15: TLabel
              Left = 63
              Top = 217
              Width = 28
              Height = 13
              Caption = 'Email:'
            end
            object DBEdit1: TDBEdit
              Left = 96
              Top = 17
              Width = 59
              Height = 21
              DataField = 'ID'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 96
              Top = 44
              Width = 491
              Height = 21
              DataField = 'NOME'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 96
              Top = 72
              Width = 273
              Height = 21
              DataField = 'NOME_FANTASIA'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 96
              Top = 99
              Width = 161
              Height = 21
              DataField = 'CNPJ_CPF'
              DataSource = DMCadEmpresa.dsEmpresa
              MaxLength = 18
              TabOrder = 3
              OnExit = DBEdit4Exit
            end
            object DBEdit5: TDBEdit
              Left = 96
              Top = 127
              Width = 273
              Height = 21
              DataField = 'ENDERECO'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 4
            end
            object DBEdit6: TDBEdit
              Left = 427
              Top = 127
              Width = 65
              Height = 21
              DataField = 'NUM_END'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 5
            end
            object DBEdit7: TDBEdit
              Left = 683
              Top = 127
              Width = 121
              Height = 21
              DataField = 'COMPLEMENTO_END'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 6
            end
            object DBEdit8: TDBEdit
              Left = 96
              Top = 154
              Width = 273
              Height = 21
              DataField = 'BAIRRO'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 7
            end
            object DBEdit10: TDBEdit
              Left = 683
              Top = 154
              Width = 121
              Height = 21
              DataField = 'UF'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 8
            end
            object DBEdit11: TDBEdit
              Left = 96
              Top = 182
              Width = 121
              Height = 21
              DataField = 'CEP'
              DataSource = DMCadEmpresa.dsEmpresa
              MaxLength = 9
              TabOrder = 9
            end
            object DBEdit12: TDBEdit
              Left = 448
              Top = 182
              Width = 33
              Height = 21
              DataField = 'DDD1'
              DataSource = DMCadEmpresa.dsEmpresa
              MaxLength = 2
              TabOrder = 10
            end
            object DBEdit13: TDBEdit
              Left = 488
              Top = 182
              Width = 121
              Height = 21
              DataField = 'FONE'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 11
            end
            object DBEdit14: TDBEdit
              Left = 96
              Top = 209
              Width = 273
              Height = 21
              DataField = 'EMAIL'
              DataSource = DMCadEmpresa.dsEmpresa
              TabOrder = 12
            end
            object RxDBLookupCombo1: TRxDBLookupCombo
              Left = 427
              Top = 154
              Width = 217
              Height = 21
              DropDownCount = 8
              DataField = 'ID_CIDADE'
              DataSource = DMCadEmpresa.dsEmpresa
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadEmpresa.dsCidade
              TabOrder = 13
            end
            object ImagemLogo: TDBImage
              Left = 830
              Top = 9
              Width = 269
              Height = 148
              Hint = 'Duplo click para carregar a imagem'
              DataField = 'LOGOTIPO'
              DataSource = DMCadEmpresa.dsEmpresa
              ParentShowHint = False
              ShowHint = True
              TabOrder = 14
              OnDblClick = ImagemLogoDblClick
            end
          end
        end
        object TS_Diretoria: TRzTabSheet
          Caption = 'Diretoria'
          object pnlOutras: TPanel
            Left = 0
            Top = 0
            Width = 1123
            Height = 484
            Align = alClient
            TabOrder = 0
            object pnlGridDiretoria: TPanel
              Left = 1
              Top = 398
              Width = 1121
              Height = 85
              Align = alBottom
              TabOrder = 0
              object DBGrid2: TDBGrid
                Left = 1
                Top = 1
                Width = 1119
                Height = 83
                Align = alClient
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'EXERCICIO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Exerc'#237'cio'
                    Width = 140
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME_CARGO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome Cargo'
                    Width = 196
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Title.Alignment = taCenter
                    Title.Caption = 'Nome'
                    Width = 319
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CPF'
                    Title.Alignment = taCenter
                    Width = 150
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DDD'
                    Title.Alignment = taCenter
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TELEFONE'
                    Title.Alignment = taCenter
                    Visible = True
                  end>
              end
            end
            object pnlDiretoria: TPanel
              Left = 51
              Top = 1
              Width = 1071
              Height = 397
              Align = alClient
              Enabled = False
              TabOrder = 1
              object Label50: TLabel
                Left = 35
                Top = 35
                Width = 48
                Height = 13
                Caption = 'Exerc'#237'cio:'
              end
              object Label51: TLabel
                Left = 52
                Top = 60
                Width = 31
                Height = 13
                Caption = 'Nome:'
              end
              object Label53: TLabel
                Left = 52
                Top = 111
                Width = 31
                Height = 13
                Caption = 'Cargo:'
              end
              object Label16: TLabel
                Left = 60
                Top = 86
                Width = 23
                Height = 13
                Caption = 'CPF:'
              end
              object DBEdit36: TDBEdit
                Left = 86
                Top = 52
                Width = 326
                Height = 21
                CharCase = ecUpperCase
                DataField = 'NOME'
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                TabOrder = 1
              end
              object RxDBLookupCombo5: TRxDBLookupCombo
                Left = 86
                Top = 103
                Width = 171
                Height = 21
                DropDownCount = 8
                DataField = 'ID_CARGO'
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                LookupField = 'ID'
                LookupDisplay = 'NOME'
                LookupSource = DMCadEmpresa.dsCargo
                TabOrder = 3
              end
              object DBEdit9: TDBEdit
                Left = 86
                Top = 78
                Width = 168
                Height = 21
                DataField = 'CPF'
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                TabOrder = 2
                OnExit = DBEdit9Exit
              end
              object RxDBLookupCombo2: TRxDBLookupCombo
                Left = 86
                Top = 27
                Width = 166
                Height = 21
                DropDownCount = 8
                DataField = 'ID_EXERCICIO'
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                LookupField = 'ID'
                LookupDisplay = 'EXERCICIO'
                LookupSource = DMCadEmpresa.dsExercicio
                TabOrder = 0
              end
              object DBCheckBox1: TDBCheckBox
                Left = 312
                Top = 31
                Width = 97
                Height = 17
                Caption = 'Inativo'
                DataField = 'SITUACAO'
                DataSource = DMCadEmpresa.dsEmpresa_Diretoria
                TabOrder = 4
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
            object pnlBotaoDiretoria: TPanel
              Left = 1
              Top = 1
              Width = 50
              Height = 397
              Align = alLeft
              Enabled = False
              TabOrder = 2
              object btnInserirDiretoria: TNxButton
                Left = 1
                Top = 0
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F8E9DEE096898D695A6040383D4434
                  3C6A5B6196898EEADEE0FDF6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E2E38D8383121512001C15005750
                  19948D26B5B01DB5B20F968F005751001C131315128E8285E7E2E2FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB4B63837350040321D
                  AC963CFFEF3FFFFF46FFFF4DFFFF47FFFF45FFFF43FFFF3EFFF01BAF97003E33
                  383636BFB4B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADA3A51919
                  19117C6529F3CC36FFDE44F3DA3EEDDA31F1E031F3E639F0E536F1DF3AEFDD3E
                  F2DC37FEDF2FF2CC0E7C651C1B1AB0A2A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  BDB4B9191A181D8C6E30FCCB2AE5BA2DE4BE2AE8C729EACF22EED81FEFDB23ED
                  DA22EFD926EAD22BE6C82FE1C028E5BB28FFCA158F6C1B1917BFB4B7FFFFFFFF
                  FFFFFFFFFFE6E2E43936371674502CF6B617D59F25D8AB1BDEB50CE2B759E5CF
                  AAF3EEABF1EBABF1EBA9F3ED59E5CE0EE0B81ADEB721DAAD16D7A125F7B31373
                  50393635E6E3E4FFFFFFFFFFFF8D838801371B2FD99413D59218D09B19D6A413
                  DAAA00DBAB74E0CBFFF5F8FFF4F6FFF4F6FFF4F872E2C900DCAC10D9AA17D6A4
                  17D19B18D4932CD99700361D8E8489FFFFFFFCF9FC13171223915428DA8B15CA
                  8918D09218D49713D79D00D7A067DDC3FBF5F6F5F4F4F5F4F4FCF4F765DEC500
                  D8A318D6A01CD29A16D0951ACA8A25DA8D189358131513FCF8FBE9E2E7000C00
                  39D28020C77616C5810EC7810ACA8507CE8A00CB8D60D5B7FBF5F7F6F4F4F6F4
                  F4FBF5F760D6B900CD8F05CF8D0AC9850EC88118C67E24C67635D480000B00EA
                  E1E5979094003A0F2FDB7F17C06C2DC57F69CEA675D3B16DD4B064D3B2A4DCCD
                  F8F4F5F4F4F4F4F4F4F8F3F5A3DBCB60D2B169D5B172D3B063CEA22AC67C1FBD
                  6C36DB7B0039109592946B626711692A32D06F1AB86248C783DCECE4FFF8FDFC
                  F4F8FCF4F7F8F3F5F5F4F4F3F4F4F3F4F4F5F4F4F8F3F5FBF5F6FBF4F8FFF8FD
                  DAECE34BC6841EB66730CE6F11672A656269403D3E1D81392BC96120B75D47C0
                  80D6E9E1FFF7FBF5F4F4F5F4F4F5F4F4F4F4F3F3F4F4F3F4F4F4F4F3F5F4F4F5
                  F4F4F5F4F4FFF7FCDAE9E04CC27F23B65E36C76424833A463F3E464142227B30
                  45C25F31B75653BF79DBEAE0FFF7FCF5F4F5F5F5F5F5F4F4F3F4F4F3F4F3F3F4
                  F3F4F4F4F5F4F5F5F5F5F5F4F5FFF7FCDBE8E252C17E2BB85839C35B19812B44
                  3D40696364105E1841C55533B9545EC27EDEEAE2FEF9FDFAF5FAFAF6F9F6F5F7
                  F5F4F5F3F4F3F3F4F3F5F4F5F6F5F7FAF6F9FAF5F9FEF9FEDCE9E15DC07C39B7
                  563FC658106419686269989095002D004DC8534EB95E55B96972B87C76B78474
                  B9866BB27EA3C7ADF8F6F7F4F4F4F4F4F4F7F6F7A3C6AB6BB17C72B88376B783
                  73B78053B8684FBA5D49C8530031009A949AE9E4E90000004BB64861BE635ABA
                  664ABB5A45B95E45BC6138B95984C996FAF6F9F5F4F5F5F4F5FAF6F986C7963C
                  B65949BD6044BB5C4CB95D59B9635FBE5E49B649000100E9E3E9FCFAFC111311
                  20701963C55A6DC17368BE6E69C0746AC2755FBF6C98CEA1FAF5F8F5F3F5F5F3
                  F5F9F5F995CEA05DC06D6CC27766C27069BF6D73C17162C659226F1B121510FC
                  F9FCFFFFFF8E868F00220051AD397DCD717FC2787BC17477C5776BC073A8CFAB
                  FFFBFFFEFAFFFEFAFFFFFBFFA5D2A96BBF7076C47874C3747BC4797CCB734EAE
                  3B0022008E888FFFFFFFFFFFFFE6E3E735353518490671CA5591D2878DC88485
                  C88083C77BA6CBA0D0DBD0CFDCCECEDACDD2DAD0A2C8A183C57D88C87C8ECA85
                  8FD38571C9561B4B08333634E4E3E6FFFFFFFFFFFFFFFFFFBDB7BE181616265C
                  137FD060A4DE98A6D49D9FCD8C99CC8D8FC58C92C98796C68793C78C97C98C9D
                  CE90A4D39CA7DE9786CE602E5C13161617BBB8BEFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFAEA8AF17161618460369B246ADE38EC2E6AEB9DEB1B0DCADB5DCA6BDD7
                  ACB8DBAABBE0ADBBE6B2A6E2926CB0461E4502151618ACA7B0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFBEB8BE353532001A002E65147FBE53A8E282
                  B9EA9EC0E8ACC5ECA8BCEA9EACE1847CBC57276712001900333532BCB8BFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5E78E87910D
                  130C000000001D00184C002C6B15286B1117480200190000000010160C8B8692
                  E5E5E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFDFAFDE8E4EC939399636A63403E4048404262666392919AEA
                  E4EDFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                TabOrder = 0
                OnClick = btnInserirDiretoriaClick
              end
              object btnAlterarDiretoria: TNxButton
                Left = 1
                Top = 63
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFDDDAD9D4CCC8B9ACA8B0A59FCDC2
                  BDD4CECDE9E7E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9A96533E351F1A180C2D3C
                  094662104D68093F5212222A2A1E17715E5BD8D6D9FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFEEECEB20120D141D271D
                  88B322BFF61EC1FF20C1FF20C0FF1FBFFF22BFF923B4F31757700D06006A615D
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEA9A81D12
                  0F2D82A42FCFFF1DC3FF20BBFF1FB9FF20B5FF26B9FB37B8F435B8F631B9FA34
                  CDFF30B7EE0931403C2B22F6F6F6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  D7CDCF0300002385A51EC9FF20B8FE1EB7FD1FB7FD20B9FE20B8FC1FB8FF1DB5
                  FE1DB6FD21B6FE20B5FD1CBEFF24C8FF123C4E3B271FFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFF7F7F60200001D8CB21FCFFF1CB3F822C0FF20BFFF1FBAFF1EB5FF
                  1FB9FE1FB9FD1EB7FF1EB7FF1EB8FF1EB7FF1FB8FC1FBBFF24CAFF002E3E645D
                  5CFFFFFFFFFFFF000000FFFFFF665E5C0C384A27D3FF20BAFF269AC6122C4028
                  A3DD21B1F022CFFF24BBFF21BAFD20B8FE1FB6FE1FB7FF1EB8FD21B8FE1FB9FD
                  1FBDFF24B5EE020000D4D2D4FFFFFF000000E4E0E00F000020B7E71EBAFF1CB8
                  FF1BB3EF24678D13405912566B1541581AB2ED1EC3FF1DB8FF1AB7FD1AB6FF20
                  B9FE1DB7FF20B6FE1FB5FE22CFFF114C646A615EFFFFFF000000B3ABAA002F49
                  35C1FF2CB8F82FB7F733C6FF1C546E2EC1EC36DCFF24617334698A2D6C814BD4
                  FF3FBAF939BBF42EB9F62AB7F525B5FD1FB7FF1CBAFF22B5F41B0F09E9E7E600
                  0000695B5810688329C3FF23B7FA1FB8FA29C1FF398ABA4495BB2C61792C5A74
                  439CC415121C32687959E6FF4FBFFA4EC1F93BBCFA1AB5FC1EB8FF1EB9FF24BE
                  F7011319D2CECD000000382E2F1286A922C0FF1CB5FF28B7FD59C5FD5DE4FF1A
                  303850A7CB1B35411009094CA6C9111319376A7B5EDAFF53C6FE58C6F948C2F9
                  19B4FD1EB8FF1DC1FF003249BBB3AE0000002622211A90B91FBFFF1DB6FC57C6
                  FD65CBF761CBFD73D2FF0A0B1156A0BF18232D1A1A1857AACC10111C3A6B7B6F
                  E4FF5EC8F96ACCF93FBFFA1BB4FF21C3FF01435EA49B99000000251F201388B0
                  1ABFFF3DC0FA77CFF870CCF86FCDF871D8FF4E86970100006FB6D81A292C170C
                  0C69B4D30D1017477C8983EAFF71CBFB6ACDF724B6FF20C1FF003957A9A08B00
                  00005548481C82A31CBFFF6CC9F785D2F581D0F683CEF77ECFF98CE9FF6DA3B7
                  06000072A9C42B3C411918167AB5D21415184E727C88DFFF88D1FA3BBFFB1BBD
                  FF123547D0C3B4000000BBB2AB4688A62DBCFF82CDF193D1EE8FD0F18FD1F38C
                  D4F58CD2F69BECFF62909C15100F85B6CC3839422A2E3086B7CE191C1F5F8B9B
                  99E2FF4EC3FA14B8F96D6C6DEAE7D9000000E9E4E267707309BAFC86D2F9A0D9
                  F698D8F699D7F59AD7F59AD7F599D6F5A4EDFF7A9FAC0B00018ABACC2F3D4219
                  101387B8CF9DD8F4A6DDF542C5FF2F9FD1A18D89FDFAEB000000FEFEFEA89286
                  379FCC5ED1FFB9DFF1A8DCF2AADDF4A9DCF2A9DCF2A9DBF2A5DBF2BAF5FF7FA7
                  B0140D0C84A0AE4D5A65A5D4E6A9E1FCABDEF223C7FF6D7C85CDC9C5FFFDF400
                  0000FFFFFFD6D4D478807E35BFFFB4E5F6B9DFF0B2DEF4B3DEF2B3DFF3B3DFF3
                  B4DEF2B3DDF3C8F4FF798E953C474FC2F1FFB6E4FAC3E0EF8CDCFF3D9DCC9488
                  83FFFFFFFFFFFD000000FFFFFFFFFFFFC8BBB2658A9B60CAF9D7EBF4CBE3F1C5
                  E1F3C5E2F2C6E2F2C6E2F2C6E2F2C5E3F1D0F1FFDEFBFFC4E5F3D2E5F1BAE8FF
                  34ABD58D8884F8F6F4FFFFFFFCFFFF000000FFFFFFFDFDFDFCFDFEBAB0AA7098
                  A47DD0F8DDEBF3DFE9F3D3E9EFD2E9F0D2E8F0D1E6EECAE1E8CCE3E8CFE1E7E6
                  E8EEAFE2FC56B7DE92928FE0D9D6FFFFFFFCFAFAF0F3F3000000FFFFFFFCFCFC
                  FDFDFDFFFFFFCFC0C48D9E9C60B1DAACE0F5E1EEF4E4EEF2E7EEF2E8EEF3E6ED
                  F2E2EBF3D9EBF47BCDEE6CA4BCA59D9AF5EBEAFFFFFFFFFFFFFFFDFEEBF3F000
                  0000FFFFFFFEFEFEFFFFFFFFFFFFFFFFFFE8E0E2CBBDB383A3AF77AFCE8DC4DB
                  A0CFE4A2D0E596CCE284BDD76EA8BFAAADA8D9CAC5FCFCFBFFFFFFFEFFFFFFFF
                  FFFFFFFFFCFEFD000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEF7
                  F1EDE2DDD5CBCCCAB5C1C4B4BFC2BFC3C1D6D2CFEEE7E3FAF7F5FFFFFFFFFFFF
                  FEFFFFFFFFFFFFFFFFFFFFFFF9FEFE000000}
                TabOrder = 1
                OnClick = btnAlterarDiretoriaClick
              end
              object btnExcluirDiretoria: TNxButton
                Left = 1
                Top = 125
                Width = 48
                Height = 65
                Glyph.Data = {
                  F6060000424DF606000000000000360000002800000018000000180000000100
                  180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFDF4A5A19F5955581F1C260000070000
                  0C1B2021595C59A7A8A3FEFEF5FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC1BEB93E3B4C00000B00004100008D
                  010AB20C16BB0710B40002A1000073000033000006414247C9C7BEFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4EE827F7B00003300007903
                  18BA0717C6040FBB0008B10203AE0202AC0406A50004AD0306A7000096000052
                  040325858782F4F6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F1EB716F6B0000
                  440014B5031CCB0011BB0003B50000BC0000BD0001BB0000BF0101BB0001BA00
                  00B80102A702029F000079000023707376F3F4F1FFFFFFFFFFFFFFFFFFFCFBF7
                  76757400004A0323D4011BD10007BB0000B90000BC0000BA0100BB0300BE0300
                  C00100C10001BA0000BD0201BC0102AC0201A402009500002878797AFCFCFAFF
                  FFFFFFFFFFB2ACA900013E0025CA021DD70008BF0000BB0000BF0000BF0000BE
                  0100BF0200BF0200C10000C10001BD0000BE0000BD0101C00000B70200A30000
                  80000024B3B3AFFFFFFFFFFFFC20213900169F022CE3010CCB0000C10000C500
                  00C50000C50000C50000C70000C60000C50000C20102BF0100C40100C70000C7
                  0001CA0002AF0202990000631E1F34FFFFFED8DACE0000340834F00420D80000
                  C70000CE0000D20000D30000D40000D40000D50000D50000D40000D50000D000
                  00D40000D60000D40100D30101C90002A103029C00000FDCDCD685858000028E
                  0A36F60312D10000CC0000C90000B50000B10000B10000B10000B10000B10000
                  B20000B50000B40000B50000B20000B50000C70000DA0100BA0107A00000488B
                  8687403A3A002CDE032FE80006D80000C54947BA9694CF9797D19393CF9494CF
                  9494CF9494CF9493CF9195D09594D19792D29696D28F94CF4948B80201CD0201
                  C70006A10000873D393B0D0C121444FF0029E80000D53738CFDBDDEBFFFFFFFF
                  FFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFFFFFEFFFEFEFFFFFEFFFFFF
                  DEDCEA3938D70000CF0005A30509B009061300020E0F4EFF002BEA0000D45B5A
                  DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
                  FFFFFFFFFFFFFFFFFFFFFC5A5EE00000D70007A10711B5000015000209144EFF
                  002FEB0005E20806D49496DFFFFFFFF3F1FAF3F2FCF3F2FCF3F2FCF3F2FCF3F2
                  FCF2F2FCF2F2FCF2F3FBF3F3FBFFFFFF9D93DA0D06D40000D20007A90B14BE00
                  001209070C0C3FFF0537FB071BEE0000E20000DB0000D90706DA0405D80403D8
                  0403D80403D80403D80304D80302DE0504D80708D70000D70000DA0000EC0107
                  CA000BAF000FB40D0A0D373533001EC90543FF042CF20001E70000EF0000EE00
                  00EB0000EA0000EA0000EA0000EA0000EA0000E60000EB0000EA0000E50000E8
                  0000F20001EB000DB70015AF0000933C3B3E84838000006B1045FF033AF4061C
                  EE0000EC0000F10000F10000F10000F10000F10000F00000F10100F10000F300
                  00F00200EF0200F20000F7000BD40014B00417BE000051888588DEDAD300000C
                  0B30EB0342FF0434F50413F10000F00000F20000F40000F30000F30000F20000
                  F50100F80000F50000F70100F90300F8000ADF0017BA0018BD070FBA000009DC
                  DCD4FFFFFE211B270005820A3AFE0341FA0532F70317F20104F30000F60000F8
                  0000FB0000F80100F90000F80000F70000FC0003F4000EE0001AC4001DBD0317
                  C8000071211D2EFFFFFEFFFFFFB4B3A80000210215B2083FFF0444FB0235F502
                  24F10413F50307F80001F80000F80100F90001F70004F6000CED0018D9001FCA
                  0023C7041DCE0006A3000024B3B2ABFFFFFFFDFFFFFCFCFA7A767100002D0214
                  C10D39FA0743FF003CF50234F1022AEE0324EB031CEF001AEC001EE40222E101
                  26D70028D00427D1051CD60007B700002F767670FBFCF9FFFEFFF9FCFFFFFFFF
                  F5F4EE73726C00002E0004A80822EE0A39FB013EF7003BF3053BE90135E20037
                  DF0231DD002EDB002DDB0225DD0815D40001A200003571716AF3F3ECFFFFFFFE
                  FDFDFDFBFFFEFDFCFFFFFFF7F7F284838100002D000072070BCF081DF40428F7
                  0429F70529EE0528EE0525EB051DEE0618EA0208C7000073000031848383F7F7
                  F1FFFFFFFFFCFFFEFEFBFFFBFAFBFDFEFAFFFDFFFFFFFFFFFDC4C2BA3E3F4D00
                  00160000590000B90000FF0D10FF0C0CFF0000FF0000BA00005F000014403E49
                  C2C2BBFFFFFEFEFFFFFAFDFDFEFDFDFFFFFCFBFFFBFFFFFEFFFBFFFBFDFCFCFF
                  FFFFFFFFFFFFFDF9F9EAA8A59F5C5A5D1C1E250000100000111F1D22585B539F
                  A29CF5F6EEFFFFFDFFFFFFFEFFFFFDFEFCFCFBFEFFFEFCFBFFFF}
                TabOrder = 2
                OnClick = btnExcluirDiretoriaClick
              end
              object btnConfirmarDiretoria: TNxButton
                Left = 1
                Top = 188
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
                  224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
                  3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
                  5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
                  4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
                  402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
                  4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
                  0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
                  0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
                  04550500550505560707540B065309065008044D06034D050042002F65312860
                  2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
                  54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
                  044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
                  0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
                  550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
                  2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
                  C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
                  00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
                  FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
                  002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
                  FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
                  07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
                  DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
                  C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
                  5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
                  FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
                  000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
                  056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
                  022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
                  9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
                  B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
                  8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
                  FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
                  B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
                  2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
                  0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
                  5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
                  299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
                  C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
                  36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
                  4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
                  984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
                  FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
                  7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
                  B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
                  CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 3
                OnClick = btnConfirmarDiretoriaClick
              end
              object btnCancelarDiretoria: TNxButton
                Left = 1
                Top = 251
                Width = 48
                Height = 65
                Glyph.Data = {
                  AE060000424DAE06000000000000360000002800000017000000170000000100
                  18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFEDECE4C8C7B9706E6B39384207081E0000220706
                  1D3B3A4274736FCCCCBFEEEEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7C631F1D2C0000500000810005A3
                  000EB4000DB10007AB00009200006C00003C22222A83836EFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFF1F0E93C3B2F00005F000FBE00
                  15BD0013B6000BB20006B30003B50003B00005A700069E00029A000092000040
                  3E3E35F3F3EDFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFEAE9E11C1D210003
                  950021D80015BB0007BF0000C50000C60000C60000C50000C60000C90000C800
                  02B50002990000A10000651E1E21EDEDE7FFFFFFFFFFFF000000FFFFFFFFFFFF
                  363427000AA50025D70017C10000CD0000CB0000C90000CD0000C90000C90000
                  C90000CD0000CD0000D30000CF00029B00019400006C38382EFFFFFFFFFFFF00
                  0000FFFFFF6B6549000286002AE7001DC90000D50908C18180B88E8EBD0C0DB9
                  0000D30000D20000D21214B77A7BB44344AD0000C90000E100039B00009D0000
                  4F6D6D55FFFFFF000000E4E1D80A0F3A0028E70023D00003D40000D28385E1FF
                  FFFFFFFFFFDFE0E90709BC0000D71416BCE8E9ECFFFFFFFFFFFF6364D70000D4
                  0000D40003940000970A0A26E4E4DC000000ABA69800047D002FE80016D70000
                  DA0000D78C8CEEFFFFFFFEFEFDFFFFFFCDCEEC2327BAD7D8EEFFFFFFFEFEFDFF
                  FFFF8F8FED0000D70000E10003B5000399000046ABAB9D0000005C5960001BC8
                  0031E40005DE0000E00000E00808DEBEBEF6FFFFFFFDFDFDFFFFFFFFFFFFFFFF
                  FFFDFDFDFFFFFFC8C8F70C0CDF0000DF0000E40001D700069500007E5B5A5C00
                  00002024330030F60031E20000E20000E40000E30000E20A0AE2C9C9FAFFFFFE
                  FDFDFDFEFEFEFDFDFDFFFFFED7D6FC1313E30000E20000E30000E50000E80007
                  980000A11D1C28000000000830003AFF002EE40000E80000E80000E80000E900
                  00E83338DDEEEFF9FFFFFEFDFDFDFFFFFEEFF1F93034DE0000E70000E90000E8
                  0000E80000EF000AA00007AF00001F000000000B32003CFF0033E70000EC0000
                  EC0000EC0000EB2932E2E9EDF6FFFFFFFDFDFDFFFFFDFDFDFDFFFFFFDFE3F41C
                  24E10000EC0000EC0000ED0000F1000CA0000CB400022200000000072F003AFF
                  0039EC0008EE0000F00000F0202BEBE5ECF8FFFFFFFEFEFDFFFFFEFFFFFEFFFF
                  FEFEFEFDFFFFFFDEE4F71925EA0000F00000F40002E8000FA0000CB700002000
                  00001D1C28002CF0003CF60020EF0000F30000F39998F9FFFFFFFDFDFDFFFFFF
                  B4B4FB0000F1A9A9FBFFFFFFFEFEFDFFFFFF9595F90000F30000FB000BCC0012
                  A70006AD21202B0000005B5653001BB7003FFF0036EF0004F60000F65050F7FF
                  FFFFFFFFFFCFCFFD0505F50000F50000F4C8C8FCFFFFFEFFFFFF7374F80000F7
                  0001F60012B30014B400008A5C5A5A000000AAA898000051003EFF003DF5002F
                  F10000FA0000F92828F94949FA0101F80000F90000F90000F90000F85858F94B
                  4BFA0000F90000FF0015C30018B20015BF000049ADAC9D000000E4E4DC0A0518
                  0019CE0045FF003EF3002AF20001FB0000FD0000F90000FA0000FA0000FA0000
                  FA0000FA0000FA0000FF0000FC0015D1001DB4001CC00005B00A0822E3E3DC00
                  0000FFFFFF6C6B5300004D002EF10043FF003DF30036EF0011F70000FF0000FF
                  0000FF0000FE0000FF0000FF0000FF000AEE0021CA0021C2001FC40013CA0000
                  556C6C53FFFFFF000000FFFFFFFFFFFF38372B0000700023E30042FF003CF700
                  3EEE0038EB0021EF0015F20011F40013EF001CE6002AD2002ACB0025CE0025CD
                  0012C800007837362BFFFFFFFFFFFF000000FFFFFFFFFFFFECECE51E1D1F0000
                  720017E40038F60043FD003BF3003AEC0037E60035E10032DD0030DA002DD800
                  2FD90023D1000DD60000791C1B1EEBEBE4FFFFFFFFFFFF000000FFFFFFFFFFFF
                  FFFFFFF2F2EB3D3D310000530000C0000EE2002DF70035F40035ED0034E90031
                  E4002CE40024E50009D90000C20000573D3C31F1F1EAFFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF82826722212E00005A0000A20000E1
                  0002FF0004FF0001FF0000E20000A500005C21202E808065FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEE5CB
                  CBBA73736D3A3A4707062F00003107062F3A3A4771716DCACAB8EDEDE5FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
                TabOrder = 4
                OnClick = btnCancelarDiretoriaClick
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
  inherited ApplicationEvents1: TApplicationEvents
    Top = 61
  end
  object JvOpenDialog1: TJvOpenDialog
    Height = 0
    Width = 0
    Left = 840
    Top = 300
  end
end
