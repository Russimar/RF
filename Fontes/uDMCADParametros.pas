unit uDMCADParametros;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr, DmdDatabase;

type
  TDMCadParametros = class(TDataModule)
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    sdsConsultaID: TIntegerField;
    sdsConsultaEMAIL: TStringField;
    sdsConsultaHOST: TStringField;
    sdsConsultaPORTA: TIntegerField;
    sdsConsultaSENHA: TStringField;
    sdsConsultaUSUARIO: TStringField;
    sdsConsultaAUTENTICACAO: TStringField;
    dsConsulta: TDataSource;
    cdsConsultaID: TIntegerField;
    cdsConsultaEMAIL: TStringField;
    cdsConsultaHOST: TStringField;
    cdsConsultaPORTA: TIntegerField;
    cdsConsultaSENHA: TStringField;
    cdsConsultaUSUARIO: TStringField;
    cdsConsultaAUTENTICACAO: TStringField;
    sdsCadParametros: TSQLDataSet;
    dspCadParametros: TDataSetProvider;
    cdsCadParametros: TClientDataSet;
    dsCadParametros: TDataSource;
    sdsCadParametrosID: TIntegerField;
    sdsCadParametrosEMAIL: TStringField;
    sdsCadParametrosHOST: TStringField;
    sdsCadParametrosPORTA: TIntegerField;
    sdsCadParametrosSENHA: TStringField;
    sdsCadParametrosUSUARIO: TStringField;
    sdsCadParametrosAUTENTICACAO: TStringField;
    cdsCadParametrosID: TIntegerField;
    cdsCadParametrosEMAIL: TStringField;
    cdsCadParametrosHOST: TStringField;
    cdsCadParametrosPORTA: TIntegerField;
    cdsCadParametrosSENHA: TStringField;
    cdsCadParametrosUSUARIO: TStringField;
    cdsCadParametrosAUTENTICACAO: TStringField;
    sdsCadParametrosTELA_ENVIO: TStringField;
    cdsCadParametrosTELA_ENVIO: TStringField;
    sdsCadParametrosCONFIRMACAO_LEITURA: TStringField;
    cdsCadParametrosCONFIRMACAO_LEITURA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgParametro: string;
    ctCommand: string;
    procedure prc_Consultar(x: string);
    procedure prc_Localizar(ID: Integer);
    procedure prc_Alterar;
    procedure prc_Gravar;
    procedure prc_Inserir;

    { Public declarations }
  end;

var
  DMCadParametros: TDMCadParametros;

implementation

uses
  uUtilPadrao;


{$R *.dfm}

{ TDMCadParametros }

procedure TDMCadParametros.prc_Alterar;
begin
  if (cdsCadParametros.IsEmpty) or not (cdsCadParametros.Active) or (cdsCadParametrosID.AsInteger < 1) then
    Exit;
  cdsCadParametros.Edit;
end;

procedure TDMCadParametros.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  cdsConsulta.Open;
end;

procedure TDMCadParametros.prc_Gravar;
begin
  vMsgParametro := '';
  vErro := False;
  cdsCadParametros.Post;
  cdsCadParametros.ApplyUpdates(0);
end;

procedure TDMCadParametros.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsCadParametros.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PARAMETROS', 0);
  cdsCadParametros.Insert;
  cdsCadParametrosID.AsInteger := vAux;
end;

procedure TDMCadParametros.prc_Localizar(ID: Integer);
begin
  cdsCadParametros.Close;
  sdsCadParametros.CommandText := ctCommand;
  if ID <> 0 then
    sdsCadParametros.CommandText := sdsCadParametros.CommandText + ' AND ID = ' + IntToStr(ID);
  cdsCadParametros.Open;
end;

procedure TDMCadParametros.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

end.
