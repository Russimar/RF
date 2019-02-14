unit uDMCadFuncionario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, uUtilPadrao,
  DBTables, RxQuery;

type
  TDMFuncionario = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsConsultaID: TIntegerField;
    sdsConsultaID_FILIAL: TIntegerField;
    sdsConsultaNOME: TStringField;
    sdsConsultaENDERECO: TStringField;
    sdsConsultaNUMERO: TStringField;
    sdsConsultaCOMPLEMENTO: TStringField;
    sdsConsultaBAIRRO: TStringField;
    sdsConsultaCIDADE: TStringField;
    sdsConsultaESTADO: TStringField;
    sdsConsultaCEP: TStringField;
    sdsConsultaSEXO: TStringField;
    sdsConsultaESTADO_CIVIL: TIntegerField;
    sdsConsultaDATA_ADMISSAO: TDateField;
    cdsConsultaID: TIntegerField;
    cdsConsultaID_FILIAL: TIntegerField;
    cdsConsultaNOME: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaCOMPLEMENTO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaESTADO: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaSEXO: TStringField;
    cdsConsultaESTADO_CIVIL: TIntegerField;
    cdsConsultaDATA_ADMISSAO: TDateField;
    sdsFuncionarioID: TIntegerField;
    sdsFuncionarioID_FILIAL: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioENDERECO: TStringField;
    sdsFuncionarioNUMERO: TStringField;
    sdsFuncionarioCOMPLEMENTO: TStringField;
    sdsFuncionarioBAIRRO: TStringField;
    sdsFuncionarioCIDADE: TStringField;
    sdsFuncionarioESTADO: TStringField;
    sdsFuncionarioCEP: TStringField;
    sdsFuncionarioSEXO: TStringField;
    sdsFuncionarioESTADO_CIVIL: TIntegerField;
    sdsFuncionarioDATA_ADMISSAO: TDateField;
    cdsFuncionarioID: TIntegerField;
    cdsFuncionarioID_FILIAL: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioENDERECO: TStringField;
    cdsFuncionarioNUMERO: TStringField;
    cdsFuncionarioCOMPLEMENTO: TStringField;
    cdsFuncionarioBAIRRO: TStringField;
    cdsFuncionarioCIDADE: TStringField;
    cdsFuncionarioESTADO: TStringField;
    cdsFuncionarioCEP: TStringField;
    cdsFuncionarioSEXO: TStringField;
    cdsFuncionarioESTADO_CIVIL: TIntegerField;
    cdsFuncionarioDATA_ADMISSAO: TDateField;
    qFuncionario: TSQLQuery;
    qFuncionarioID: TIntegerField;
    qFuncionarioID_FILIAL: TIntegerField;
    qFuncionarioNOME: TStringField;
    qFuncionarioENDERECO: TStringField;
    qFuncionarioNUMERO: TStringField;
    qFuncionarioCOMPLEMENTO: TStringField;
    qFuncionarioBAIRRO: TStringField;
    qFuncionarioCIDADE: TStringField;
    qFuncionarioESTADO: TStringField;
    qFuncionarioCEP: TStringField;
    qFuncionarioSEXO: TStringField;
    qFuncionarioESTADO_CIVIL: TIntegerField;
    qFuncionarioDATA_ADMISSAO: TDateField;
    sdsFaltasAtestado: TSQLDataSet;
    dspFaltasAtestado: TDataSetProvider;
    cdsFaltasAtestado: TClientDataSet;
    dsFaltasAtestado: TDataSource;
    sdsFaltasAtestadoID: TIntegerField;
    sdsFaltasAtestadoID_FUNCIONARIO: TIntegerField;
    sdsFaltasAtestadoID_FILIAL: TIntegerField;
    sdsFaltasAtestadoTIPO: TStringField;
    sdsFaltasAtestadoDIAS: TFloatField;
    sdsFaltasAtestadoANO: TSmallintField;
    sdsFaltasAtestadoMES: TStringField;
    cdsFaltasAtestadoID: TIntegerField;
    cdsFaltasAtestadoID_FUNCIONARIO: TIntegerField;
    cdsFaltasAtestadoID_FILIAL: TIntegerField;
    cdsFaltasAtestadoTIPO: TStringField;
    cdsFaltasAtestadoDIAS: TFloatField;
    cdsFaltasAtestadoANO: TSmallintField;
    cdsFaltasAtestadoMES: TStringField;
    cdsFaltasAtestadoNome_Funcionario: TStringField;
    sdsDiasAdicionais: TSQLDataSet;
    dspDiasAdicionais: TDataSetProvider;
    cdsDiasAdicionais: TClientDataSet;
    dsDiasAdicionais: TDataSource;
    sdsDiasAdicionaisID: TIntegerField;
    sdsDiasAdicionaisID_FUNCIONARIO: TIntegerField;
    sdsDiasAdicionaisID_FILIAL: TIntegerField;
    sdsDiasAdicionaisDIAS: TFloatField;
    sdsDiasAdicionaisANO: TSmallintField;
    sdsDiasAdicionaisMES: TStringField;
    cdsDiasAdicionaisID: TIntegerField;
    cdsDiasAdicionaisID_FUNCIONARIO: TIntegerField;
    cdsDiasAdicionaisID_FILIAL: TIntegerField;
    cdsDiasAdicionaisDIAS: TFloatField;
    cdsDiasAdicionaisANO: TSmallintField;
    cdsDiasAdicionaisMES: TStringField;
    cdsDiasAdicionaisNome_Funcionario: TStringField;
    sdsDiasAdicionaisTIPO_ACRESCIMO: TStringField;
    cdsDiasAdicionaisTIPO_ACRESCIMO: TStringField;
    sdsFaltasAtestadoTIPO_DESCONTO: TStringField;
    cdsFaltasAtestadoTIPO_DESCONTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsFaltasAtestadoCalcFields(DataSet: TDataSet);
    procedure cdsDiasAdicionaisCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ctCommand : String;
    ctCommand_FaltaAtestado : String;
    ctCommand_DiasAdicionais : String;
    procedure prc_Localizar(ID: Integer; ID_Filial: Integer);
    procedure prc_Consultar(x : String);
    procedure prc_Posiciona_Funcionario(ID_Funcionario, ID_Filial: Integer);
    procedure prc_Consulta_Faltas(Mes : String; Ano : Smallint; ID_Filial : Integer);
    procedure prc_Inserir_Faltas;
    procedure prc_Consulta_DiasAdicionais(Mes : String; Ano : Smallint; ID_Filial : Integer);
    procedure prc_Inserir_DiasAdicionais;

  end;

var
  DMFuncionario: TDMFuncionario;

implementation

uses
  DmdDatabase;

{$R *.dfm}

{ TDMFuncionario }

procedure TDMFuncionario.prc_Localizar(ID: Integer; ID_Filial : Integer);
begin
  cdsFuncionario.Close;
  sdsFuncionario.CommandText := ctCommand;
  if ID <> 0 then
    sdsFuncionario.CommandText := sdsFuncionario.CommandText + ' AND ID = ' + IntToStr(ID);
  if ID_Filial <> 0 then
    sdsFuncionario.CommandText := sdsFuncionario.CommandText + ' AND ID_Filial = ' + IntToStr(ID_Filial);
  cdsFuncionario.Open;
end;

procedure TDMFuncionario.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsFuncionario.CommandText;
  ctCommand_FaltaAtestado := sdsFaltasAtestado.CommandText;
  ctCommand_DiasAdicionais := sdsDiasAdicionais.CommandText;
end;

procedure TDMFuncionario.prc_Consultar(x: String);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
//  sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND ID_FILIAL = ' + IntToStr(vFilial);
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY NOME';
  cdsConsulta.Open;
end;

procedure TDMFuncionario.prc_Posiciona_Funcionario(
  ID_Funcionario, ID_Filial: Integer);
begin
  qFuncionario.Close;
  qFuncionario.ParamByName('ID_Funcionario').AsInteger := ID_Funcionario;
  qFuncionario.ParamByName('ID_Filial').AsInteger := ID_Filial;
  qFuncionario.Open;
end;

procedure TDMFuncionario.prc_Consulta_Faltas(Mes: String; Ano: Smallint;
  ID_Filial: Integer);
var
  vTexto : String;
begin
  cdsFaltasAtestado.Close;
  vTexto := '';
  if Mes <> '' then
    vTexto := ' AND MES = ' + QuotedStr(Mes);
  if Ano > 0 then
    vTexto := vTexto + ' AND ANO = ' + IntToStr(Ano);
  if ID_Filial > 0 then
    vTexto := vTexto + ' AND ID_FILIAL = ' + IntToStr(ID_Filial);
  cdsFaltasAtestado.CommandText := ctCommand_FaltaAtestado + vTexto;
  cdsFaltasAtestado.Open;
end;

procedure TDMFuncionario.cdsFaltasAtestadoCalcFields(DataSet: TDataSet);
begin
  if (cdsFaltasAtestadoID_FUNCIONARIO.AsInteger > 0) and (cdsFaltasAtestadoID_FILIAL.AsInteger > 0) then
  begin
    prc_Posiciona_Funcionario(cdsFaltasAtestadoID_FUNCIONARIO.AsInteger,cdsFaltasAtestadoID_FILIAL.AsInteger);
    cdsFaltasAtestadoNome_Funcionario.AsString := qFuncionarioNOME.AsString;
  end;
end;

procedure TDMFuncionario.prc_Inserir_Faltas;
var
  vAux : Integer;
begin
  if not cdsFaltasAtestado.Active then
    prc_Consulta_Faltas('13',0,0);
  vAux := dmDatabase.ProximaSequencia('FALTA_ATESTADO', 0);
  cdsFaltasAtestado.Insert;
  cdsFaltasAtestadoID.AsInteger := vAux;
end;

procedure TDMFuncionario.prc_Consulta_DiasAdicionais(Mes: String;
  Ano: Smallint; ID_Filial: Integer);
var
  vTexto : String;
begin
  cdsDiasAdicionais.Close;
  vTexto := '';
  if Mes <> '' then
    vTexto := ' AND MES = ' + QuotedStr(Mes);
  if Ano > 0 then
    vTexto := vTexto + ' AND ANO = ' + IntToStr(Ano);
  if ID_Filial > 0 then
    vTexto := vTexto + ' AND ID_FILIAL = ' + IntToStr(ID_Filial);
  cdsDiasAdicionais.CommandText := ctCommand_DiasAdicionais + vTexto;
  cdsDiasAdicionais.Open;
end;

procedure TDMFuncionario.prc_Inserir_DiasAdicionais;
var
  vAux : Integer;
begin
  if not cdsDiasAdicionais.Active then
    prc_Consulta_DiasAdicionais('13',0,0);
  vAux := dmDatabase.ProximaSequencia('DIAS_ADICIONAIS', 0);
  cdsDiasAdicionais.Insert;
  cdsDiasAdicionaisID.AsInteger := vAux;
end;

procedure TDMFuncionario.cdsDiasAdicionaisCalcFields(DataSet: TDataSet);
begin
  if (cdsDiasAdicionaisID_FUNCIONARIO.AsInteger > 0) and (cdsDiasAdicionaisID_FILIAL.AsInteger > 0) then
  begin
    prc_Posiciona_Funcionario(cdsDiasAdicionaisID_FUNCIONARIO.AsInteger,cdsDiasAdicionaisID_FILIAL.AsInteger);
    cdsDiasAdicionaisNome_Funcionario.AsString := qFuncionarioNOME.AsString;
  end;
end;

end.
