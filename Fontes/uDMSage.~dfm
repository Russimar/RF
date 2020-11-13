object DMSage: TDMSage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 409
  Top = 155
  Height = 356
  Width = 820
  object sdsTomadorSage: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [cd_empresa]'#13#10'      ,[cd_tomador]'#13#10'      ,[nome]'#13#10'      ,' +
      '[endereco]'#13#10'      ,[nr_endereco]'#13#10'      ,[compl_endereco]'#13#10'     ' +
      ' ,[bairro]'#13#10'      ,[cidade]'#13#10'      ,[estado]'#13#10'      ,[cep]'#13#10'    ' +
      '  ,[cgc]'#13#10'      ,[codigo_cei]'#13#10'      ,[observacao]'#13#10'      ,[codi' +
      'go_fpas]'#13#10'      ,[codigo_terceiros]'#13#10'      ,[aliq_sat]'#13#10'      ,[' +
      'cnae]'#13#10'      ,[obra_construcao_civil]'#13#10'      ,[tipo_obra]'#13#10'     ' +
      ' ,[Matriz]'#13#10'      ,[cd_filial]'#13#10'      ,[codigo_pagamento_gps]'#13#10' ' +
      '     ,[cd_municipio]'#13#10'      ,[status]'#13#10'      ,[tipo_logradouro]'#13 +
      #10'      ,[esocial_tipo_tomador]'#13#10'      ,[esocial_tipo_obra]'#13#10'    ' +
      '  ,[esocial_cno]'#13#10'      ,[esocial_nr_documento_contratante]'#13#10'   ' +
      '   ,[esocial_nr_documento_proprietario]'#13#10'      ,[aliq_fpas]'#13#10'   ' +
      '   ,[aliq_fpas_prolabore]'#13#10'      ,[aliq_fap]'#13#10'      ,[aliq_terce' +
      'iros]'#13#10'      ,[aliq_sest]'#13#10'      ,[cd_pagamento_inss_cnpj]'#13#10'    ' +
      '  ,[cd_pagto_inss_cnpj_outras_ent]'#13#10'      ,[sujeita_a_desoneraca' +
      'o]'#13#10'      ,[aliq_senat]'#13#10'      ,[id_esocial]'#13#10'  FROM [dbo].[Toma' +
      'dor]'#13#10'GO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 32
    Top = 32
    object sdsTomadorSagecd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsTomadorSagecd_tomador: TSmallintField
      FieldName = 'cd_tomador'
      Required = True
    end
    object sdsTomadorSagenome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object sdsTomadorSageendereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 40
    end
    object sdsTomadorSagenr_endereco: TIntegerField
      FieldName = 'nr_endereco'
    end
    object sdsTomadorSagecompl_endereco: TStringField
      FieldName = 'compl_endereco'
      FixedChar = True
      Size = 15
    end
    object sdsTomadorSagebairro: TStringField
      FieldName = 'bairro'
      FixedChar = True
    end
    object sdsTomadorSagecidade: TStringField
      FieldName = 'cidade'
      FixedChar = True
    end
    object sdsTomadorSageestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object sdsTomadorSagecep: TIntegerField
      FieldName = 'cep'
    end
    object sdsTomadorSagecgc: TStringField
      FieldName = 'cgc'
      FixedChar = True
      Size = 18
    end
    object sdsTomadorSagecodigo_cei: TStringField
      FieldName = 'codigo_cei'
      FixedChar = True
      Size = 12
    end
    object sdsTomadorSageobservacao: TStringField
      FieldName = 'observacao'
      FixedChar = True
      Size = 50
    end
    object sdsTomadorSagecodigo_fpas: TSmallintField
      FieldName = 'codigo_fpas'
    end
    object sdsTomadorSagecodigo_terceiros: TSmallintField
      FieldName = 'codigo_terceiros'
    end
    object sdsTomadorSagealiq_sat: TFloatField
      FieldName = 'aliq_sat'
    end
    object sdsTomadorSagecnae: TIntegerField
      FieldName = 'cnae'
    end
    object sdsTomadorSageobra_construcao_civil: TStringField
      FieldName = 'obra_construcao_civil'
      FixedChar = True
      Size = 1
    end
    object sdsTomadorSagetipo_obra: TSmallintField
      FieldName = 'tipo_obra'
    end
    object sdsTomadorSageMatriz: TStringField
      FieldName = 'Matriz'
      FixedChar = True
      Size = 1
    end
    object sdsTomadorSagecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object sdsTomadorSagecodigo_pagamento_gps: TIntegerField
      FieldName = 'codigo_pagamento_gps'
    end
    object sdsTomadorSagecd_municipio: TIntegerField
      FieldName = 'cd_municipio'
    end
    object sdsTomadorSagestatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object sdsTomadorSagetipo_logradouro: TStringField
      FieldName = 'tipo_logradouro'
      FixedChar = True
      Size = 5
    end
    object sdsTomadorSageesocial_tipo_tomador: TIntegerField
      FieldName = 'esocial_tipo_tomador'
    end
    object sdsTomadorSageesocial_tipo_obra: TIntegerField
      FieldName = 'esocial_tipo_obra'
    end
    object sdsTomadorSageesocial_cno: TStringField
      FieldName = 'esocial_cno'
      FixedChar = True
    end
    object sdsTomadorSageesocial_nr_documento_contratant: TStringField
      FieldName = 'esocial_nr_documento_contratant'
      FixedChar = True
      Size = 18
    end
    object sdsTomadorSageesocial_nr_documento_proprietar: TStringField
      FieldName = 'esocial_nr_documento_proprietar'
      FixedChar = True
      Size = 18
    end
    object sdsTomadorSagealiq_fpas: TFloatField
      FieldName = 'aliq_fpas'
    end
    object sdsTomadorSagealiq_fpas_prolabore: TFloatField
      FieldName = 'aliq_fpas_prolabore'
    end
    object sdsTomadorSagealiq_fap: TFloatField
      FieldName = 'aliq_fap'
    end
    object sdsTomadorSagealiq_terceiros: TFloatField
      FieldName = 'aliq_terceiros'
    end
    object sdsTomadorSagealiq_sest: TFloatField
      FieldName = 'aliq_sest'
    end
    object sdsTomadorSagecd_pagamento_inss_cnpj: TIntegerField
      FieldName = 'cd_pagamento_inss_cnpj'
    end
    object sdsTomadorSagecd_pagto_inss_cnpj_outras_ent: TIntegerField
      FieldName = 'cd_pagto_inss_cnpj_outras_ent'
    end
    object sdsTomadorSagesujeita_a_desoneracao: TStringField
      FieldName = 'sujeita_a_desoneracao'
      FixedChar = True
      Size = 1
    end
    object sdsTomadorSagealiq_senat: TFloatField
      FieldName = 'aliq_senat'
    end
    object sdsTomadorSageid_esocial: TStringField
      FieldName = 'id_esocial'
      FixedChar = True
      Size = 30
    end
  end
  object dspTomadorSage: TDataSetProvider
    DataSet = sdsTomadorSage
    Left = 72
    Top = 32
  end
  object cdsTomadorSage: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTomadorSage'
    Left = 112
    Top = 32
    object cdsTomadorSagecd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsTomadorSagecd_tomador: TSmallintField
      FieldName = 'cd_tomador'
      Required = True
    end
    object cdsTomadorSagenome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object cdsTomadorSageendereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 40
    end
    object cdsTomadorSagenr_endereco: TIntegerField
      FieldName = 'nr_endereco'
    end
    object cdsTomadorSagecompl_endereco: TStringField
      FieldName = 'compl_endereco'
      FixedChar = True
      Size = 15
    end
    object cdsTomadorSagebairro: TStringField
      FieldName = 'bairro'
      FixedChar = True
    end
    object cdsTomadorSagecidade: TStringField
      FieldName = 'cidade'
      FixedChar = True
    end
    object cdsTomadorSageestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object cdsTomadorSagecep: TIntegerField
      FieldName = 'cep'
    end
    object cdsTomadorSagecgc: TStringField
      FieldName = 'cgc'
      FixedChar = True
      Size = 18
    end
    object cdsTomadorSagecodigo_cei: TStringField
      FieldName = 'codigo_cei'
      FixedChar = True
      Size = 12
    end
    object cdsTomadorSageobservacao: TStringField
      FieldName = 'observacao'
      FixedChar = True
      Size = 50
    end
    object cdsTomadorSagecodigo_fpas: TSmallintField
      FieldName = 'codigo_fpas'
    end
    object cdsTomadorSagecodigo_terceiros: TSmallintField
      FieldName = 'codigo_terceiros'
    end
    object cdsTomadorSagealiq_sat: TFloatField
      FieldName = 'aliq_sat'
    end
    object cdsTomadorSagecnae: TIntegerField
      FieldName = 'cnae'
    end
    object cdsTomadorSageobra_construcao_civil: TStringField
      FieldName = 'obra_construcao_civil'
      FixedChar = True
      Size = 1
    end
    object cdsTomadorSagetipo_obra: TSmallintField
      FieldName = 'tipo_obra'
    end
    object cdsTomadorSageMatriz: TStringField
      FieldName = 'Matriz'
      FixedChar = True
      Size = 1
    end
    object cdsTomadorSagecd_filial: TSmallintField
      FieldName = 'cd_filial'
    end
    object cdsTomadorSagecodigo_pagamento_gps: TIntegerField
      FieldName = 'codigo_pagamento_gps'
    end
    object cdsTomadorSagecd_municipio: TIntegerField
      FieldName = 'cd_municipio'
    end
    object cdsTomadorSagestatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 1
    end
    object cdsTomadorSagetipo_logradouro: TStringField
      FieldName = 'tipo_logradouro'
      FixedChar = True
      Size = 5
    end
    object cdsTomadorSageesocial_tipo_tomador: TIntegerField
      FieldName = 'esocial_tipo_tomador'
    end
    object cdsTomadorSageesocial_tipo_obra: TIntegerField
      FieldName = 'esocial_tipo_obra'
    end
    object cdsTomadorSageesocial_cno: TStringField
      FieldName = 'esocial_cno'
      FixedChar = True
    end
    object cdsTomadorSageesocial_nr_documento_contratant: TStringField
      FieldName = 'esocial_nr_documento_contratant'
      FixedChar = True
      Size = 18
    end
    object cdsTomadorSageesocial_nr_documento_proprietar: TStringField
      FieldName = 'esocial_nr_documento_proprietar'
      FixedChar = True
      Size = 18
    end
    object cdsTomadorSagealiq_fpas: TFloatField
      FieldName = 'aliq_fpas'
    end
    object cdsTomadorSagealiq_fpas_prolabore: TFloatField
      FieldName = 'aliq_fpas_prolabore'
    end
    object cdsTomadorSagealiq_fap: TFloatField
      FieldName = 'aliq_fap'
    end
    object cdsTomadorSagealiq_terceiros: TFloatField
      FieldName = 'aliq_terceiros'
    end
    object cdsTomadorSagealiq_sest: TFloatField
      FieldName = 'aliq_sest'
    end
    object cdsTomadorSagecd_pagamento_inss_cnpj: TIntegerField
      FieldName = 'cd_pagamento_inss_cnpj'
    end
    object cdsTomadorSagecd_pagto_inss_cnpj_outras_ent: TIntegerField
      FieldName = 'cd_pagto_inss_cnpj_outras_ent'
    end
    object cdsTomadorSagesujeita_a_desoneracao: TStringField
      FieldName = 'sujeita_a_desoneracao'
      FixedChar = True
      Size = 1
    end
    object cdsTomadorSagealiq_senat: TFloatField
      FieldName = 'aliq_senat'
    end
    object cdsTomadorSageid_esocial: TStringField
      FieldName = 'id_esocial'
      FixedChar = True
      Size = 30
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 56
    Top = 120
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'razao'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 88
    Top = 120
    object cdsEmpresacd_empresa: TIntegerField
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsEmpresarazao: TStringField
      FieldName = 'razao'
      FixedChar = True
      Size = 40
    end
    object cdsEmpresacnpj_cpf: TStringField
      FieldName = 'cnpj_cpf'
      FixedChar = True
      Size = 18
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 120
    Top = 120
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select cd_empresa, razao, cnpj_cpf '#13#10'from CRDEmpresa'#13#10'where cnpj' +
      '_cpf is not null'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 24
    Top = 120
    object sdsEmpresacd_empresa: TIntegerField
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsEmpresarazao: TStringField
      FieldName = 'razao'
      FixedChar = True
      Size = 40
    end
    object sdsEmpresacnpj_cpf: TStringField
      FieldName = 'cnpj_cpf'
      FixedChar = True
      Size = 18
    end
  end
  object sdsValeTransporte: TSQLDataSet
    CommandText = 
      'SELECT fc.cd_empresa'#13#10'      ,fc.cd_funcionario'#13#10'      ,fun.cd_li' +
      'nha'#13#10'      ,fc.nome'#13#10'      ,fun.qt_dia_util'#13#10'      ,fun.qt_sabad' +
      'o'#13#10'      ,fun.qt_domingo'#13#10'      ,fun.qt_feriado'#13#10'      ,lin.vl_v' +
      'ale'#13#10'      ,lin.descricao'#13#10'      ,ft.cd_tomador'#13#10'  FROM FunVale ' +
      'fun'#13#10'  inner join LinhaG lin on lin.cd_linha = fun.cd_linha '#13#10'  ' +
      'inner join FUNCIONARIO FC ON FUN.CD_FUNCIONARIO = FC.CD_FUNCIONA' +
      'RIO   '#13#10'  LEFT join FUNTOMADOR  FT ON FT.CD_FUNCIONARIO = FC.CD_' +
      'FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 224
    Top = 88
    object sdsValeTransportecd_funcionario: TIntegerField
      FieldName = 'cd_funcionario'
      Required = True
    end
    object sdsValeTransportecd_linha: TSmallintField
      FieldName = 'cd_linha'
      Required = True
    end
    object sdsValeTransporteqt_dia_util: TSmallintField
      FieldName = 'qt_dia_util'
    end
    object sdsValeTransporteqt_sabado: TSmallintField
      FieldName = 'qt_sabado'
    end
    object sdsValeTransporteqt_domingo: TSmallintField
      FieldName = 'qt_domingo'
    end
    object sdsValeTransporteqt_feriado: TSmallintField
      FieldName = 'qt_feriado'
    end
    object sdsValeTransportevl_vale: TFloatField
      FieldName = 'vl_vale'
    end
    object sdsValeTransportedescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 30
    end
    object sdsValeTransportenome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object sdsValeTransportecd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsValeTransportecd_tomador: TIntegerField
      FieldName = 'cd_tomador'
    end
  end
  object dspValeTransporte: TDataSetProvider
    DataSet = sdsValeTransporte
    Left = 256
    Top = 88
  end
  object cdsValeTransporte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeTransporte'
    Left = 288
    Top = 88
    object cdsValeTransportecd_funcionario: TIntegerField
      FieldName = 'cd_funcionario'
      Required = True
    end
    object cdsValeTransportecd_linha: TSmallintField
      FieldName = 'cd_linha'
      Required = True
    end
    object cdsValeTransporteqt_dia_util: TSmallintField
      FieldName = 'qt_dia_util'
    end
    object cdsValeTransporteqt_sabado: TSmallintField
      FieldName = 'qt_sabado'
    end
    object cdsValeTransporteqt_domingo: TSmallintField
      FieldName = 'qt_domingo'
    end
    object cdsValeTransporteqt_feriado: TSmallintField
      FieldName = 'qt_feriado'
    end
    object cdsValeTransportevl_vale: TFloatField
      FieldName = 'vl_vale'
    end
    object cdsValeTransportedescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 30
    end
    object cdsValeTransportenome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object cdsValeTransportecd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsValeTransportecd_tomador: TIntegerField
      FieldName = 'cd_tomador'
    end
  end
  object sdsValeRefeicao: TSQLDataSet
    CommandText = 
      'SELECT vr.cd_funcionario'#13#10'      ,vr.cd_vale'#13#10'      ,vr.qt_dia_ut' +
      'il'#13#10'      ,vlvr.descricao'#13#10'      ,vlvr.vl_vale'#13#10'      ,fc.nome'#13#10 +
      '      ,fc.cd_empresa'#13#10'      ,ft.cd_tomador'#13#10'      ,ov.perc_desco' +
      'nto_vales'#13#10'  FROM FunVR vr'#13#10'  inner join ValeVR vlvr on vr.cd_va' +
      'le = vlvr.cd_vale'#13#10'  inner join FUNCIONARIO FC ON VR.CD_FUNCIONA' +
      'RIO = FC.CD_FUNCIONARIO   '#13#10'  LEFT join FUNTOMADOR  FT ON FT.CD_' +
      'FUNCIONARIO = FC.CD_FUNCIONARIO '#13#10'left join OpcaoVR OV on FC.CD_' +
      'FUNCIONARIO = OV.CD_FUNCIONARIO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 224
    Top = 24
    object sdsValeRefeicaocd_funcionario: TIntegerField
      DisplayLabel = 'C'#243'd.Funcion'#225'rio'
      FieldName = 'cd_funcionario'
      Required = True
    end
    object sdsValeRefeicaonome: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object sdsValeRefeicaocd_vale: TSmallintField
      DisplayLabel = 'C'#243'd.Vale'
      FieldName = 'cd_vale'
      Required = True
    end
    object sdsValeRefeicaoqt_dia_util: TSmallintField
      DisplayLabel = 'Qtde Dias'
      FieldName = 'qt_dia_util'
    end
    object sdsValeRefeicaodescricao: TStringField
      FieldName = 'descricao'
      FixedChar = True
      Size = 30
    end
    object sdsValeRefeicaovl_vale: TFloatField
      DisplayLabel = 'Valor Vale'
      FieldName = 'vl_vale'
    end
    object sdsValeRefeicaocd_empresa: TSmallintField
      DisplayLabel = 'Empresa'
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsValeRefeicaocd_tomador: TIntegerField
      DisplayLabel = 'C'#243'd.Tomador'
      FieldName = 'cd_tomador'
    end
    object sdsValeRefeicaoperc_desconto_vales: TFloatField
      FieldName = 'perc_desconto_vales'
    end
  end
  object dspValeRefeicao: TDataSetProvider
    DataSet = sdsValeRefeicao
    Left = 256
    Top = 24
  end
  object cdsValeRefeicao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValeRefeicao'
    Left = 288
    Top = 24
    object cdsValeRefeicaocd_funcionario: TIntegerField
      DisplayLabel = 'C'#243'd.Funcion'#225'rio'
      FieldName = 'cd_funcionario'
      Required = True
    end
    object cdsValeRefeicaonome: TStringField
      DisplayLabel = 'Nome Funcion'#225'rio'
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object cdsValeRefeicaocd_vale: TSmallintField
      DisplayLabel = 'C'#243'd.Vale'
      FieldName = 'cd_vale'
      Required = True
    end
    object cdsValeRefeicaoqt_dia_util: TSmallintField
      DisplayLabel = 'Qtde Dias'
      FieldName = 'qt_dia_util'
    end
    object cdsValeRefeicaodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      FixedChar = True
      Size = 30
    end
    object cdsValeRefeicaovl_vale: TFloatField
      DisplayLabel = 'Valor Vale'
      FieldName = 'vl_vale'
    end
    object cdsValeRefeicaocd_empresa: TSmallintField
      DisplayLabel = 'Empresa'
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsValeRefeicaocd_tomador: TIntegerField
      DisplayLabel = 'C'#243'd.Tomador'
      FieldName = 'cd_tomador'
    end
    object cdsValeRefeicaoperc_desconto_vales: TFloatField
      FieldName = 'perc_desconto_vales'
    end
  end
  object sdsFuncionario: TSQLDataSet
    CommandText = 
      'SELECT fun.cd_empresa'#13#10'      ,fun.cd_funcionario'#13#10'      ,fun.nom' +
      'e'#13#10'      ,fun.endereco'#13#10'      ,fun.nr_endereco'#13#10'      ,fun.compl' +
      '_endereco'#13#10'      ,fun.bairro'#13#10'      ,fun.cidade'#13#10'      ,fun.esta' +
      'do'#13#10'      ,fun.cep'#13#10'      ,fun.sexo'#13#10'      ,fun.estado_civil'#13#10'  ' +
      '    ,ffunc.dt_admissao'#13#10'      ,fmov.dt_movimentacao dt_rescisao'#13 +
      #10'  FROM Funcionario fun'#13#10'  INNER JOIN CRDEMPRESA emp ON emp.cd_e' +
      'mpresa = fun.cd_empresa'#13#10'  INNER JOIN FUNFUNCIONAL ffunc on ffun' +
      'c.cd_empresa = fun.cd_empresa and ffunc.cd_funcionario = fun.cd_' +
      'funcionario'#13#10'  LEFT JOIN FUNMOVIMENTACAO fmov on fmov.cd_empresa' +
      ' = fun.cd_empresa and fmov.cd_funcionario = fun.cd_funcionario a' +
      'nd fmov.tipo_movimentacao = 2'#13#10'WHERE emp.cnpj_cpf is not null '#13#10 +
      'order by fun.nome'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 224
    Top = 136
    object sdsFuncionariocd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsFuncionariocd_funcionario: TIntegerField
      FieldName = 'cd_funcionario'
      Required = True
    end
    object sdsFuncionarionome: TStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object sdsFuncionarioendereco: TStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 40
    end
    object sdsFuncionarionr_endereco: TIntegerField
      FieldName = 'nr_endereco'
    end
    object sdsFuncionariocompl_endereco: TStringField
      FieldName = 'compl_endereco'
      FixedChar = True
      Size = 15
    end
    object sdsFuncionariobairro: TStringField
      FieldName = 'bairro'
      FixedChar = True
    end
    object sdsFuncionariocidade: TStringField
      FieldName = 'cidade'
      FixedChar = True
      Size = 50
    end
    object sdsFuncionarioestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object sdsFuncionariocep: TIntegerField
      FieldName = 'cep'
    end
    object sdsFuncionariosexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioestado_civil: TSmallintField
      FieldName = 'estado_civil'
    end
    object sdsFuncionariodt_admissao: TSQLTimeStampField
      FieldName = 'dt_admissao'
    end
    object sdsFuncionariodt_rescisao: TSQLTimeStampField
      FieldName = 'dt_rescisao'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 256
    Top = 136
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 288
    Top = 136
    object cdsFuncionariocd_empresa: TSmallintField
      DisplayLabel = 'Cod.Empresa'
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsFuncionariocd_funcionario: TIntegerField
      DisplayLabel = 'Cod.Funcion'#225'rio'
      FieldName = 'cd_funcionario'
      Required = True
    end
    object cdsFuncionarionome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      FixedChar = True
      Size = 40
    end
    object cdsFuncionarioendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      FixedChar = True
      Size = 40
    end
    object cdsFuncionarionr_endereco: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'nr_endereco'
    end
    object cdsFuncionariocompl_endereco: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'compl_endereco'
      FixedChar = True
      Size = 15
    end
    object cdsFuncionariobairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      FixedChar = True
    end
    object cdsFuncionariocidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      FixedChar = True
      Size = 50
    end
    object cdsFuncionarioestado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object cdsFuncionariocep: TIntegerField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
    end
    object cdsFuncionariosexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'sexo'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioestado_civil: TSmallintField
      DisplayLabel = 'Estado Civil'
      FieldName = 'estado_civil'
    end
    object cdsFuncionariodt_admissao: TSQLTimeStampField
      DisplayLabel = 'Data Admiss'#227'o'
      FieldName = 'dt_admissao'
    end
    object cdsFuncionariodt_rescisao: TSQLTimeStampField
      DisplayLabel = 'Data Rescis'#227'o'
      FieldName = 'dt_rescisao'
    end
  end
  object sdsMovimentoFolha: TSQLDataSet
    CommandText = 
      'SELECT pro.cd_empresa'#13#10'      ,pro.cd_funcionario'#13#10'      ,pro.mes' +
      #13#10'      ,pro.ano'#13#10'      ,SUM(case when eve.tp_evento = '#39'V'#39' then ' +
      'pro.valor '#13#10'                else -pro.valor end) valor_total'#13#10'  ' +
      'FROM ProcEvento pro'#13#10'  inner join Eventog eve on pro.cd_evento =' +
      ' eve.cd_evento '#13#10'  where pro.cd_empresa = 2'#13#10'  group by pro.cd_e' +
      'mpresa, pro.cd_funcionario, pro.mes,pro.ano'#13#10'  order by pro.cd_f' +
      'uncionario, pro.mes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.Conexao_SQLServer
    Left = 224
    Top = 192
    object sdsMovimentoFolhacd_empresa: TSmallintField
      FieldName = 'cd_empresa'
      Required = True
    end
    object sdsMovimentoFolhacd_funcionario: TIntegerField
      FieldName = 'cd_funcionario'
      Required = True
    end
    object sdsMovimentoFolhames: TSmallintField
      FieldName = 'mes'
      Required = True
    end
    object sdsMovimentoFolhaano: TSmallintField
      FieldName = 'ano'
      Required = True
    end
    object sdsMovimentoFolhavalor_total: TFloatField
      FieldName = 'valor_total'
    end
  end
  object dspMovimentoFolha: TDataSetProvider
    DataSet = sdsMovimentoFolha
    Left = 256
    Top = 192
  end
  object cdsMovimentoFolha: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimentoFolha'
    Left = 288
    Top = 192
    object cdsMovimentoFolhacd_empresa: TSmallintField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'cd_empresa'
      Required = True
    end
    object cdsMovimentoFolhacd_funcionario: TIntegerField
      DisplayLabel = 'C'#243'd.Funcion'#225'rio'
      FieldName = 'cd_funcionario'
      Required = True
    end
    object cdsMovimentoFolhames: TSmallintField
      DisplayLabel = 'M'#234's'
      FieldName = 'mes'
      Required = True
    end
    object cdsMovimentoFolhaano: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ano'
      Required = True
    end
    object cdsMovimentoFolhavalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
    end
  end
end
