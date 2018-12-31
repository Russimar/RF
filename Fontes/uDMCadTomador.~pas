unit uDMCadTomador;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr, frxClass, frxDBSet,
  ACBrBase, ACBrExtenso, frxExportPDF, frxExportMail;

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
    frxReport1: TfrxReport;
    frxValeTransporteDetalhe: TfrxDBDataset;
    ACBrExtensoReais: TACBrExtenso;
    cdsVTVA: TClientDataSet;
    cdsVTVACod_Funcionario: TIntegerField;
    cdsVTVANome_Funcionario: TStringField;
    cdsVTVAValor_Passagem: TFloatField;
    cdsVTVAQtde_Passagem: TFloatField;
    cdsVTVADiasTrabalhados: TFloatField;
    cdsVTVADiasFalta: TFloatField;
    cdsVTVADiasAtestado: TFloatField;
    dsVTVA: TDataSource;
    cdsVTVAMes: TIntegerField;
    cdsVTVAAno: TStringField;
    mVTAuxiliar: TClientDataSet;
    dsmVTAuxiliar: TDataSource;
    mVTAuxiliarcod_funcionario: TIntegerField;
    mVTAuxiliarvalor_passagem: TFloatField;
    mVTAuxiliarvalor_total: TFloatField;
    cdsVTVACod_Passagem: TIntegerField;
    mVTAuxiliarDias_Trabalhados: TFloatField;
    mVTAuxiliarMes: TIntegerField;
    mVTAuxiliarnome_funcionario: TStringField;
    mVTAuxiliarano: TStringField;
    frxValeTransporte: TfrxDBDataset;
    cdsVTVAValor_Total: TFloatField;
    cdsVTVANome_Linha: TStringField;
    cdsVTVACod_VR: TIntegerField;
    cdsVTVANome_Refeicao: TStringField;
    frxValeRefeicao: TfrxDBDataset;
    mVRAuxiliar: TClientDataSet;
    dsmVRAuxiliar: TDataSource;
    mVRAuxiliarcod_funcionario: TIntegerField;
    mVRAuxiliarnome_funcionario: TStringField;
    mVRAuxiliarperc_refeicao: TFloatField;
    mVRAuxiliardias_trabalhados: TFloatField;
    mVRAuxiliarmes: TIntegerField;
    mVRAuxiliarano: TStringField;
    cdsVTVAValor_Refeicao: TFloatField;
    cdsVTVAPerc_Refeicao: TFloatField;
    cdsVTVAValor_Desconto: TFloatField;
    mVRAuxiliarvalor_total: TFloatField;
    mVRAuxiliarvalor_desconto: TFloatField;
    ACBrExtensoPorCento: TACBrExtenso;
    frxMailExport1: TfrxMailExport;
    frxPDFExport1: TfrxPDFExport;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosEMAIL: TStringField;
    qParametrosHOST: TStringField;
    qParametrosPORTA: TIntegerField;
    qParametrosSENHA: TStringField;
    qParametrosUSUARIO: TStringField;
    qParametrosAUTENTICACAO: TStringField;
    qParametrosTELA_ENVIO: TStringField;
    qParametrosCONFIRMACAO_LEITURA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure frxValeTransporteNext(Sender: TObject);
    procedure frxValeTransporteFirst(Sender: TObject);
    procedure cdsVTVACalcFields(DataSet: TDataSet);
    procedure frxValeRefeicaoFirst(Sender: TObject);
    procedure frxValeTransporteDetalheFirst(Sender: TObject);
    procedure frxValeRefeicaoNext(Sender: TObject);
  private
    { Private declarations }
  public
    vMsgTomador: string;
    ctCommand: string;
    procedure prc_Consultar(x: string);
    procedure prc_Localizar(ID: Integer);
    procedure prc_Abrir_Tomador_Dias(ID_Tomador: Integer);
    procedure prc_Inserir_Tomador_Dias;
    procedure prc_Alterar;
    procedure prc_Gravar;
    procedure prc_Posiciona_Tomador(ID_Tomador: Integer);
    procedure prc_Posiciona_Tomador_Dia(Ano: Integer; Mes: string; ID_TOMADOR: Integer);
    function fnc_Monta_Impressao_VT: string;
    function fnc_Monta_Impressao_VR: string;
    { Public declarations }
  end;

var
  DMCadTomador: TDMCadTomador;

implementation

uses
  DmdDatabase, uUtilPadrao, uRelVA_VT;

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
  qParametros.Open;
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

procedure TDMCadTomador.prc_Posiciona_Tomador_Dia(Ano: Integer; Mes: string; ID_TOMADOR: Integer);
begin
  qTomador_Dias.Close;
  qTomador_Dias.ParamByName('Ano').AsSmallInt := Ano;
  qTomador_Dias.ParamByName('Mes').AsString := Mes;
  qTomador_Dias.ParamByName('ID_TOMADOR').AsInteger := ID_TOMADOR;
  qTomador_Dias.Open;
end;

function TDMCadTomador.fnc_Monta_Impressao_VT: string;
var
  vTexto, vMes: string;
begin
  vMes := ExtensoMes(StrToInt(cdsVTVAMes.AsString));
  vTexto := '   Recebi de ' + vNomeEmpresa + ' a importância de '
          + UpperCase(ACBrExtensoReais.ValorToTexto(mVTAuxiliarvalor_total.AsFloat))
          + ' em vales transporte conforme quantidade abaixo discriminada, para utilização no período de '
          + vMes + ' de ' + mVTAuxiliarano.AsString + ' autorizando o desconto em meu salário até o máximo de 6%(seis por cento).';

  Result := vTexto;
end;

function TDMCadTomador.fnc_Monta_Impressao_VR: string;
var
  vTexto, vMes: string;
begin
  vMes := ExtensoMes(StrToInt(cdsVTVAMes.AsString));
  vTexto := '   Recebi de ' + vNomeEmpresa + ' a importância de '
         + UpperCase(ACBrExtensoReais.ValorToTexto(mVRAuxiliarvalor_total.AsFloat))
         + ' em vales refeição/alimentação conforme quantidade abaixo discriminada, para utilização no período de '
         + vMes + ' de ' + mVRAuxiliarano.AsString + ' autorizando o desconto de '
         + FloatToStr(qTomador_DiasPERC_VA.AsFloat) + '% ' + ACBrExtensoPorCento.ValorToTexto(qTomador_DiasPERC_VA.AsFloat);

  Result := vTexto;
end;

procedure TDMCadTomador.frxValeTransporteNext(Sender: TObject);
begin
  TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := '';
  if cdsVTVAValor_Passagem.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := fnc_Monta_Impressao_VT;
  end;
end;

procedure TDMCadTomador.frxValeTransporteFirst(Sender: TObject);
begin
  TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := '';
  if cdsVTVAValor_Passagem.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := fnc_Monta_Impressao_VT;
  end;
end;

procedure TDMCadTomador.cdsVTVACalcFields(DataSet: TDataSet);
begin
  if (cdsVTVAValor_Passagem.AsFloat > 0) and (cdsVTVAValor_Passagem.AsFloat > 0) and (cdsVTVAQtde_Passagem.AsFloat > 0) and (cdsVTVADiasTrabalhados.AsFloat > 0) then
    cdsVTVAValor_Total.AsFloat := (cdsVTVAValor_Passagem.AsFloat * cdsVTVAQtde_Passagem.AsFloat) * (cdsVTVADiasTrabalhados.AsFloat - cdsVTVADiasFalta.AsFloat - cdsVTVADiasAtestado.AsFloat);

  if (cdsVTVAValor_Refeicao.AsFloat > 0) and (cdsVTVADiasTrabalhados.AsFloat > 0) then
    cdsVTVAValor_Total.AsFloat := (cdsVTVAValor_Refeicao.AsFloat * (cdsVTVADiasTrabalhados.AsFloat - cdsVTVADiasFalta.AsFloat - cdsVTVADiasAtestado.AsFloat));
end;

procedure TDMCadTomador.frxValeRefeicaoFirst(Sender: TObject);
begin
  TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := '';
  if cdsVTVAValor_Passagem.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := fnc_Monta_Impressao_VR;
  end;
  TfrxMemoView(frxReport1.FindComponent('Memo6')).Text := '';
  if mVRAuxiliarvalor_desconto.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo6')).Text := 'Valor total do desconto de ' + Formatfloat('0.00',qTomador_DiasPERC_VA.AsFloat) +
                                                            '%  -  R$ ' + FormatFloat('0.00',mVRAuxiliarvalor_desconto.AsFloat);
  end;
  TfrxMemoView(frxReport1.FindComponent('Memo2')).Text := '';
  if mVRAuxiliarvalor_desconto.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo2')).Text := 'Valor Vale Alimentação ' + Formatfloat('0.00',mVRAuxiliarvalor_total.AsFloat) +
                                                            ' - referente a ' + FormatFloat('00',mVRAuxiliardias_trabalhados.AsFloat) + ' dias';
  end;

end;

procedure TDMCadTomador.frxValeTransporteDetalheFirst(Sender: TObject);
begin
  cdsVTVA.Filtered := False;
  cdsVTVA.Filter   := 'Cod_Funcionario = ' + IntToStr(mVTAuxiliarcod_funcionario.AsInteger);
  cdsVTVA.Filtered := True;
end;

procedure TDMCadTomador.frxValeRefeicaoNext(Sender: TObject);
begin
  TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := '';
  if cdsVTVAValor_Passagem.AsFloat > 0 then
  begin
    TfrxMemoView(frxReport1.FindComponent('Memo5')).Text := fnc_Monta_Impressao_VR;
  end;
end;

end.

