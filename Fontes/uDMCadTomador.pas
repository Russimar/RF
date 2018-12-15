unit uDMCadTomador;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TDMCadTomador = class(TDataModule)
    sdsTomador: TSQLDataSet;
    cdsTomador: TClientDataSet;
    dspTomador: TDataSetProvider;
    dsTomador: TDataSource;
    sdsTomadorID_TOMADOR: TIntegerField;
    sdsTomadorID_FILIAL: TIntegerField;
    sdsTomadorNOME: TStringField;
    sdsTomadorENDERECO: TStringField;
    sdsTomadorNUMERO: TStringField;
    sdsTomadorCOMPLEMENTO: TStringField;
    sdsTomadorBAIRRO: TStringField;
    sdsTomadorCIDADE: TStringField;
    sdsTomadorESTADO: TStringField;
    sdsTomadorCEP: TStringField;
    sdsTomadorDOCUMENTO: TStringField;
    sdsTomadorFPAS: TIntegerField;
    cdsTomadorID_TOMADOR: TIntegerField;
    cdsTomadorID_FILIAL: TIntegerField;
    cdsTomadorNOME: TStringField;
    cdsTomadorENDERECO: TStringField;
    cdsTomadorNUMERO: TStringField;
    cdsTomadorCOMPLEMENTO: TStringField;
    cdsTomadorBAIRRO: TStringField;
    cdsTomadorCIDADE: TStringField;
    cdsTomadorESTADO: TStringField;
    cdsTomadorCEP: TStringField;
    cdsTomadorDOCUMENTO: TStringField;
    cdsTomadorFPAS: TIntegerField;
    dsMestre: TDataSource;
    sdsTomadorDiasTrabalhados: TSQLDataSet;
    cdsTomadorDiasTrabalhados: TClientDataSet;
    dsTomadorDiasTrabalhados: TDataSource;
    sdsTomadorDiasTrabalhadosMES: TStringField;
    sdsTomadorDiasTrabalhadosANO: TSmallintField;
    sdsTomadorDiasTrabalhadosID_TOMADOR: TIntegerField;
    sdsTomadorDiasTrabalhadosDIAS: TIntegerField;
    cdsTomadorsdsTomadorDiasTrabalhados: TDataSetField;
    cdsTomadorDiasTrabalhadosMES: TStringField;
    cdsTomadorDiasTrabalhadosANO: TSmallintField;
    cdsTomadorDiasTrabalhadosID_TOMADOR: TIntegerField;
    cdsTomadorDiasTrabalhadosDIAS: TIntegerField;
    sdsConsulta: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField3: TIntegerField;
    cdsConsulta: TClientDataSet;
    dspConsulta: TDataSetProvider;
    dsConsulta: TDataSource;
    sdsTomadorDiasTrabalhadosVALOR_VA: TFMTBCDField;
    sdsTomadorDiasTrabalhadosPERC_VA: TFMTBCDField;
    sdsTomadorDiasTrabalhadosVALOR_LANCHE: TFMTBCDField;
    cdsTomadorDiasTrabalhadosVALOR_VA: TFMTBCDField;
    cdsTomadorDiasTrabalhadosPERC_VA: TFMTBCDField;
    cdsTomadorDiasTrabalhadosVALOR_LANCHE: TFMTBCDField;
    cdsConsultaNOME: TStringField;
    cdsConsultaENDERECO: TStringField;
    cdsConsultaNUMERO: TStringField;
    cdsConsultaCOMPLEMENTO: TStringField;
    cdsConsultaBAIRRO: TStringField;
    cdsConsultaCIDADE: TStringField;
    cdsConsultaESTADO: TStringField;
    cdsConsultaCEP: TStringField;
    cdsConsultaDOCUMENTO: TStringField;
    cdsConsultaFPAS: TIntegerField;
    cdsConsultaID_TOMADOR: TIntegerField;
    cdsConsultaID_FILIAL: TIntegerField;
    sdsConsultaSTATUS: TStringField;
    cdsConsultaSTATUS: TStringField;
    sdsTomadorSTATUS: TStringField;
    cdsTomadorSTATUS: TStringField;
    qTomador: TSQLQuery;
    qTomadorID_TOMADOR: TIntegerField;
    qTomadorNOME: TStringField;
    qTomador_Dias: TSQLQuery;
    qTomador_DiasID_TOMADOR: TIntegerField;
    qTomador_DiasNOME: TStringField;
    qTomador_DiasDIAS: TIntegerField;
    qTomador_DiasVALOR_VA: TFMTBCDField;
    qTomador_DiasPERC_VA: TFMTBCDField;
    qTomador_DiasVALOR_LANCHE: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgTomador: string;
    ctCommand : String;
    procedure prc_Consultar(x: string);
    procedure prc_Localizar(ID: Integer);
    procedure prc_Abrir_Tomador_Dias(ID_Tomador: Integer);
    procedure prc_Inserir_Tomador_Dias;
    procedure prc_Alterar;
    procedure prc_Gravar;
    procedure prc_Posiciona_Tomador(ID_Tomador : Integer);
    procedure prc_Posiciona_Tomador_Dia(Ano : SmallInt; Mes : String; ID_TOMADOR : Integer);
    { Public declarations }
  end;

var
  DMCadTomador: TDMCadTomador;

implementation

uses
  DmdDatabase, uUtilPadrao;

{$R *.dfm}

{ TDMCadTomador }

procedure TDMCadTomador.prc_Consultar(x: string);
begin
  cdsConsulta.Close;
  sdsConsulta.CommandText := ctCommand;
  if Trim(x) <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND NOME LIKE ' + QuotedStr('%' + x + '%');
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND ID_FILIAL = ' + IntToStr(vFilial);
  sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY NOME';
  cdsConsulta.Open;
end;

procedure TDMCadTomador.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsConsulta.CommandText;
end;

procedure TDMCadTomador.prc_Localizar(ID: Integer);
begin
  cdsTomador.Close;
  sdsTomador.CommandText := ctCommand;
  if ID <> 0 then
    sdsTomador.CommandText := sdsTomador.CommandText + ' AND ID_TOMADOR = ' + IntToStr(ID);
  cdsTomador.Open;
  cdsTomadorDiasTrabalhados.Close;
  cdsTomadorDiasTrabalhados.Open;
end;

procedure TDMCadTomador.prc_Alterar;
begin
  if (cdsTomador.IsEmpty) or not (cdsTomador.Active) or (cdsTomadorID_TOMADOR.AsInteger < 1) then
    Exit;
  cdsTomador.Edit;
end;

procedure TDMCadTomador.prc_Gravar;
begin
  vMsgTomador := '';
  vErro := False;
  if trim(cdsTomadorNOME.AsString) = '' then
    vMsgTomador := '*** Nome não informado!';

  cdsTomador.Post;
  cdsTomador.ApplyUpdates(0);
end;

procedure TDMCadTomador.prc_Abrir_Tomador_Dias(ID_Tomador: Integer);
begin
  cdsTomadorDiasTrabalhados.Close;
  sdsTomadorDiasTrabalhados.ParamByName('ID_TOMADOR').AsInteger := ID_Tomador;
  cdsTomadorDiasTrabalhados.Open;
end;

procedure TDMCadTomador.prc_Inserir_Tomador_Dias;
begin
  cdsTomadorDiasTrabalhados.Insert;
  cdsTomadorDiasTrabalhadosID_TOMADOR.AsInteger := cdsTomadorID_TOMADOR.AsInteger;
end;

procedure TDMCadTomador.prc_Posiciona_Tomador(ID_Tomador: Integer);
begin
  qTomador.Close;
  qTomador.ParamByName('ID_Tomador').AsInteger := ID_Tomador;
  qTomador.Open;
end;

procedure TDMCadTomador.prc_Posiciona_Tomador_Dia(Ano: SmallInt;
  Mes: String; ID_TOMADOR: Integer);
begin
  qTomador_Dias.Close;
  qTomador_Dias.ParamByName('Ano').AsSmallInt := Ano;
  qTomador_Dias.ParamByName('Mes').AsString   := Mes;
  qTomador_Dias.ParamByName('ID_TOMADOR').AsInteger := ID_TOMADOR;
  qTomador_Dias.Open;
end;

end.

