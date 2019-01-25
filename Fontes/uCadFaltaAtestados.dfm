object frmFaltaAtestado: TfrmFaltaAtestado
  Left = 110
  Top = 95
  Width = 1076
  Height = 523
  Caption = 'Cadastro Falta e Atestados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1060
    Height = 152
    Align = alTop
    TabOrder = 0
    object Label6: TLabel
      Left = 31
      Top = 11
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Empresa:'
    end
    object Label1: TLabel
      Left = 30
      Top = 49
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Inicial:'
    end
    object Label3: TLabel
      Left = 33
      Top = 102
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rio:'
    end
    object Label2: TLabel
      Left = 429
      Top = 102
      Width = 21
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dias'
    end
    object ComboEmpresa: TRxDBLookupCombo
      Left = 31
      Top = 27
      Width = 392
      Height = 21
      DropDownCount = 8
      LookupField = 'cd_empresa'
      LookupDisplay = 'razao'
      LookupSource = DMSage.dsEmpresa
      TabOrder = 0
    end
    object ComboMes: TComboBox
      Left = 31
      Top = 65
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object edtAno: TCurrencyEdit
      Left = 112
      Top = 65
      Width = 54
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 4
      TabOrder = 3
    end
    object rdgTipo: TRadioGroup
      Left = 175
      Top = 51
      Width = 185
      Height = 36
      Caption = 'Tipo'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Falta'
        'Atestado')
      TabOrder = 4
      OnExit = rdgTipoExit
    end
    object edtFuncionario: TEdit
      Left = 31
      Top = 119
      Width = 60
      Height = 21
      Hint = 'F2 - Consulta Funcion'#225'rio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = edtFuncionarioExit
      OnKeyDown = edtFuncionarioKeyDown
    end
    object btnConsultaFuncionario: TBitBtn
      Left = 94
      Top = 119
      Width = 31
      Height = 21
      Hint = 'F2 - Consulta Funcion'#225'rio'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      TabStop = False
      OnClick = btnConsultaFuncionarioClick
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object edtNomeFuncionario: TEdit
      Left = 128
      Top = 119
      Width = 291
      Height = 21
      Color = clMoneyGreen
      ReadOnly = True
      TabOrder = 7
    end
    object btnConsultar: TNxButton
      Left = 431
      Top = 18
      Width = 161
      Height = 30
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 1
      Transparent = True
      OnClick = btnConsultarClick
    end
    object btnIncluir: TNxButton
      Left = 511
      Top = 108
      Width = 111
      Height = 32
      Caption = 'Incluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 9
      Transparent = True
      OnClick = btnIncluirClick
    end
    object btnGravar: TNxButton
      Left = 622
      Top = 108
      Width = 111
      Height = 32
      Caption = 'Gravar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 10
      Transparent = True
      OnClick = btnGravarClick
    end
    object btnExcluir: TNxButton
      Left = 733
      Top = 108
      Width = 111
      Height = 32
      Caption = 'Excluir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 11
      Transparent = True
      OnClick = btnExcluirClick
    end
    object edtDias: TCurrencyEdit
      Left = 429
      Top = 119
      Width = 68
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      MaxLength = 4
      TabOrder = 8
    end
    object rdgTipoDesconto: TRadioGroup
      Left = 375
      Top = 51
      Width = 185
      Height = 36
      Caption = 'Tipo Desconto'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Todos'
        'VT'
        'VA')
      TabOrder = 12
      OnExit = rdgTipoExit
    end
    object btnFechar: TNxButton
      Left = 845
      Top = 108
      Width = 111
      Height = 32
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
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
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 13
      Transparent = True
      OnClick = btnFecharClick
    end
  end
  object pnlGeral: TPanel
    Left = 0
    Top = 152
    Width = 1060
    Height = 332
    Align = alClient
    TabOrder = 1
    object SMDBGrid2: TSMDBGrid
      Left = 1
      Top = 1
      Width = 1058
      Height = 311
      Align = alClient
      DataSource = DMFuncionario.dsFaltasAtestado
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
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
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_FUNCIONARIO'
          Title.Alignment = taCenter
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Funcionario'
          Title.Alignment = taCenter
          Width = 378
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO'
          Title.Alignment = taCenter
          Width = 36
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_DESCONTO'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIAS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_FILIAL'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 1
      Top = 312
      Width = 1058
      Height = 19
      Panels = <>
    end
  end
end
