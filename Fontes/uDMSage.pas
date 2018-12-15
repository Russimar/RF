unit uDMSage;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDMSage = class(TDataModule)
    sdsTomadorSage: TSQLDataSet;
    dspTomadorSage: TDataSetProvider;
    cdsTomadorSage: TClientDataSet;
    sdsTomadorSagecd_empresa: TSmallintField;
    sdsTomadorSagecd_tomador: TSmallintField;
    sdsTomadorSagenome: TStringField;
    sdsTomadorSageendereco: TStringField;
    sdsTomadorSagenr_endereco: TIntegerField;
    sdsTomadorSagecompl_endereco: TStringField;
    sdsTomadorSagebairro: TStringField;
    sdsTomadorSagecidade: TStringField;
    sdsTomadorSageestado: TStringField;
    sdsTomadorSagecep: TIntegerField;
    sdsTomadorSagecgc: TStringField;
    sdsTomadorSagecodigo_cei: TStringField;
    sdsTomadorSageobservacao: TStringField;
    sdsTomadorSagecodigo_fpas: TSmallintField;
    sdsTomadorSagecodigo_terceiros: TSmallintField;
    sdsTomadorSagealiq_sat: TFloatField;
    sdsTomadorSagecnae: TIntegerField;
    sdsTomadorSageobra_construcao_civil: TStringField;
    sdsTomadorSagetipo_obra: TSmallintField;
    sdsTomadorSageMatriz: TStringField;
    sdsTomadorSagecd_filial: TSmallintField;
    sdsTomadorSagecodigo_pagamento_gps: TIntegerField;
    sdsTomadorSagecd_municipio: TIntegerField;
    sdsTomadorSagestatus: TStringField;
    sdsTomadorSagetipo_logradouro: TStringField;
    sdsTomadorSageesocial_tipo_tomador: TIntegerField;
    sdsTomadorSageesocial_tipo_obra: TIntegerField;
    sdsTomadorSageesocial_cno: TStringField;
    sdsTomadorSageesocial_nr_documento_contratant: TStringField;
    sdsTomadorSageesocial_nr_documento_proprietar: TStringField;
    sdsTomadorSagealiq_fpas: TFloatField;
    sdsTomadorSagealiq_fpas_prolabore: TFloatField;
    sdsTomadorSagealiq_fap: TFloatField;
    sdsTomadorSagealiq_terceiros: TFloatField;
    sdsTomadorSagealiq_sest: TFloatField;
    sdsTomadorSagecd_pagamento_inss_cnpj: TIntegerField;
    sdsTomadorSagecd_pagto_inss_cnpj_outras_ent: TIntegerField;
    sdsTomadorSagesujeita_a_desoneracao: TStringField;
    sdsTomadorSagealiq_senat: TFloatField;
    sdsTomadorSageid_esocial: TStringField;
    cdsTomadorSagecd_empresa: TSmallintField;
    cdsTomadorSagecd_tomador: TSmallintField;
    cdsTomadorSagenome: TStringField;
    cdsTomadorSageendereco: TStringField;
    cdsTomadorSagenr_endereco: TIntegerField;
    cdsTomadorSagecompl_endereco: TStringField;
    cdsTomadorSagebairro: TStringField;
    cdsTomadorSagecidade: TStringField;
    cdsTomadorSageestado: TStringField;
    cdsTomadorSagecep: TIntegerField;
    cdsTomadorSagecgc: TStringField;
    cdsTomadorSagecodigo_cei: TStringField;
    cdsTomadorSageobservacao: TStringField;
    cdsTomadorSagecodigo_fpas: TSmallintField;
    cdsTomadorSagecodigo_terceiros: TSmallintField;
    cdsTomadorSagealiq_sat: TFloatField;
    cdsTomadorSagecnae: TIntegerField;
    cdsTomadorSageobra_construcao_civil: TStringField;
    cdsTomadorSagetipo_obra: TSmallintField;
    cdsTomadorSageMatriz: TStringField;
    cdsTomadorSagecd_filial: TSmallintField;
    cdsTomadorSagecodigo_pagamento_gps: TIntegerField;
    cdsTomadorSagecd_municipio: TIntegerField;
    cdsTomadorSagestatus: TStringField;
    cdsTomadorSagetipo_logradouro: TStringField;
    cdsTomadorSageesocial_tipo_tomador: TIntegerField;
    cdsTomadorSageesocial_tipo_obra: TIntegerField;
    cdsTomadorSageesocial_cno: TStringField;
    cdsTomadorSageesocial_nr_documento_contratant: TStringField;
    cdsTomadorSageesocial_nr_documento_proprietar: TStringField;
    cdsTomadorSagealiq_fpas: TFloatField;
    cdsTomadorSagealiq_fpas_prolabore: TFloatField;
    cdsTomadorSagealiq_fap: TFloatField;
    cdsTomadorSagealiq_terceiros: TFloatField;
    cdsTomadorSagealiq_sest: TFloatField;
    cdsTomadorSagecd_pagamento_inss_cnpj: TIntegerField;
    cdsTomadorSagecd_pagto_inss_cnpj_outras_ent: TIntegerField;
    cdsTomadorSagesujeita_a_desoneracao: TStringField;
    cdsTomadorSagealiq_senat: TFloatField;
    cdsTomadorSageid_esocial: TStringField;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresa: TSQLDataSet;
    sdsEmpresacd_empresa: TIntegerField;
    sdsEmpresarazao: TStringField;
    sdsEmpresacnpj_cpf: TStringField;
    cdsEmpresacd_empresa: TIntegerField;
    cdsEmpresarazao: TStringField;
    cdsEmpresacnpj_cpf: TStringField;
    sdsProcEvento: TSQLDataSet;
    dspProcEvento: TDataSetProvider;
    cdsProcEvento: TClientDataSet;
    sdsValeTransporte: TSQLDataSet;
    dspValeTransporte: TDataSetProvider;
    cdsValeTransporte: TClientDataSet;
    sdsValeRefeicao: TSQLDataSet;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    dspValeRefeicao: TDataSetProvider;
    cdsValeRefeicao: TClientDataSet;
    sdsValeTransportecd_funcionario: TIntegerField;
    sdsValeTransportecd_linha: TSmallintField;
    sdsValeTransporteqt_dia_util: TSmallintField;
    sdsValeTransporteqt_sabado: TSmallintField;
    sdsValeTransporteqt_domingo: TSmallintField;
    sdsValeTransporteqt_feriado: TSmallintField;
    sdsValeTransportevl_vale: TFloatField;
    sdsValeTransportedescricao: TStringField;
    cdsValeTransportecd_funcionario: TIntegerField;
    cdsValeTransportecd_linha: TSmallintField;
    cdsValeTransporteqt_dia_util: TSmallintField;
    cdsValeTransporteqt_sabado: TSmallintField;
    cdsValeTransporteqt_domingo: TSmallintField;
    cdsValeTransporteqt_feriado: TSmallintField;
    cdsValeTransportevl_vale: TFloatField;
    cdsValeTransportedescricao: TStringField;
    sdsProcEventocd_empresa: TSmallintField;
    sdsProcEventocd_funcionario: TIntegerField;
    sdsProcEventomes: TSmallintField;
    sdsProcEventotipo: TSmallintField;
    sdsProcEventocd_evento: TIntegerField;
    sdsProcEventoano: TSmallintField;
    sdsProcEventoreferencia: TFloatField;
    sdsProcEventoreferencia_editada: TStringField;
    sdsProcEventovalor: TFloatField;
    sdsProcEventonome: TStringField;
    cdsProcEventocd_empresa: TSmallintField;
    cdsProcEventocd_funcionario: TIntegerField;
    cdsProcEventomes: TSmallintField;
    cdsProcEventotipo: TSmallintField;
    cdsProcEventocd_evento: TIntegerField;
    cdsProcEventoano: TSmallintField;
    cdsProcEventoreferencia: TFloatField;
    cdsProcEventoreferencia_editada: TStringField;
    cdsProcEventovalor: TFloatField;
    cdsProcEventonome: TStringField;
    cdsValeRefeicaocd_funcionario: TIntegerField;
    cdsValeRefeicaocd_vale: TSmallintField;
    cdsValeRefeicaoqt_dia_util: TSmallintField;
    cdsValeRefeicaoqt_sabado: TSmallintField;
    cdsValeRefeicaoqt_domingo: TSmallintField;
    cdsValeRefeicaoqt_feriado: TSmallintField;
    cdsValeRefeicaodescricao: TStringField;
    cdsValeRefeicaovl_vale: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    ctTomadorSage : String;
    ctProcEvento  : string;
    ctValeTransporte : String;
    ctValeRefeicao : string;
    procedure prc_Abrir_Tomador_Sage;
    procedure prc_Abrir_Vale_Transporte(ID_Empresa : Integer);
    procedure prc_Abrir_Vale_Refeicao(ID_Empresa : Integer);
    procedure prc_Abrir_ProcEvento(ID_Empresa, ID_Tomador, Mes: Integer; Ano : String);
    { Public declarations }
  end;

var
  DMSage: TDMSage;

implementation

uses
  DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TDMSage.DataModuleCreate(Sender: TObject);
begin
  ctTomadorSage := sdsTomadorSage.CommandText;
  ctProcEvento  := sdsProcEvento.CommandText;
  ctValeTransporte := sdsValeTransporte.CommandText;
  ctValeRefeicao := sdsValeRefeicao.CommandText;
end;

procedure TDMSage.prc_Abrir_ProcEvento(ID_Empresa, ID_Tomador, Mes: Integer; Ano : String);
var
  vSql : string;
begin
  cdsProcEvento.Close;
  vSql := ' where p.cd_empresa = ' + IntToStr(vFilial);
//  vSql := vSql + ' and cd_tomador = ' + IntToStr(ID_Tomador);
  vSql := vSql + ' and p.cd_evento in (225, 938)';
  vSql := vSql + ' and mes = ' + IntToStr(Mes)  + ' AND p.ano = '+ Ano;
  sdsProcEvento.CommandText := ctProcEvento + vSql;
  cdsProcEvento.Open;
end;

procedure TDMSage.prc_Abrir_Tomador_Sage;
begin
  cdsTomadorSage.Close;
  sdsTomadorSage.CommandText := ctTomadorSage + ' where cd_empresa = ' + IntToStr(vFilial);
  cdsTomadorSage.Open;
end;


procedure TDMSage.prc_Abrir_Vale_Refeicao(ID_Empresa : Integer);
begin
  cdsValeRefeicao.Close;
  sdsValeRefeicao.CommandText := ctValeRefeicao + ' and cd_empresa = ' + IntToStr(ID_Empresa) + ' and enterprise_id <> ' + QuotedStr('9999') + ' order by cd_funcionario';
  cdsValeRefeicao.Open;
end;

procedure TDMSage.prc_Abrir_Vale_Transporte(ID_Empresa : Integer);
begin
  cdsValeTransporte.Close;
  sdsValeTransporte.CommandText := ctValeTransporte + ' and cd_empresa = ' + IntToStr(ID_Empresa) + ' order by cd_funcionario';
  cdsValeTransporte.Open;
end;

end.
