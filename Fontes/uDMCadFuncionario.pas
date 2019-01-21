unit uDMCadFuncionario;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, uUtilPadrao;

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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctCommand : String;
    procedure prc_Localizar(ID: Integer);
    procedure prc_Consultar(x : String);
  end;

var
  DMFuncionario: TDMFuncionario;

implementation

uses
  DmdDatabase;

{$R *.dfm}

{ TDMFuncionario }

procedure TDMFuncionario.prc_Localizar(ID: Integer);
begin
  cdsFuncionario.Close;
  sdsFuncionario.CommandText := ctCommand;
  if ID <> 0 then
    sdsFuncionario.CommandText := sdsFuncionario.CommandText + ' AND ID = ' + IntToStr(ID);
  cdsFuncionario.Open;
end;

procedure TDMFuncionario.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsFuncionario.CommandText;
end;

procedure TDMFuncionario.prc_Consultar(x: String);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND ID_FILIAL = ' + IntToStr(vFilial);
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY NOME';
  cdsConsulta.Open;
end;

end.
