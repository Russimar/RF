unit uCadDiasAdicionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls,
  Mask, ToolEdit, CurrEdit, RxLookup, uDMSage, rsDBUtils, uDMCadFuncionario,
  RzPanel, RzRadGrp, NxEdit;

type
  tEmunTipoAcrescimo = (tpTodos, tpVT, tpVA);

type
  TfrmCadDiasAdicionais = class(TForm)
    pnlTop: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    ComboMes: TComboBox;
    edtAno: TCurrencyEdit;
    rdgTipoAcrescimo: TRadioGroup;
    Label3: TLabel;
    edtFuncionario: TEdit;
    btnConsultaFuncionario: TBitBtn;
    edtNomeFuncionario: TEdit;
    pnlGeral: TPanel;
    SMDBGrid2: TSMDBGrid;
    btnConsultar: TNxButton;
    btnIncluir: TNxButton;
    btnGravar: TNxButton;
    btnExcluir: TNxButton;
    edtDias: TCurrencyEdit;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtFuncionarioExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure prc_Gravar_Adicionais;
    procedure prc_Habilita_Botoes_Adicionais;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rdgTipoAcrescimoExit(Sender: TObject);
  private
    procedure prc_Tipo_Adicionais;
    { Private declarations }
  public
    { Public declarations }
    fDMSage: TDMSage;
    fDMCadFuncionario: TDMFuncionario;
    vMes: string;
    vAno: string;
    vTipoAcrescimo : String;
  end;

var
  frmCadDiasAdicionais: TfrmCadDiasAdicionais;

implementation

uses
  DB;


{$R *.dfm}

procedure TfrmCadDiasAdicionais.FormShow(Sender: TObject);
begin
  fDMSage := TDMSage.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSage);
  fDMCadFuncionario := TDMFuncionario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFuncionario);
  fDMSage.cdsEmpresa.Open;
  vMes := FormatDateTime('MM', Date);
  vAno := FormatDateTime('YYYY', Date);
  ComboMes.ItemIndex := StrToInt(vMes) - 1;
  edtAno.Text := vAno;
  prc_Tipo_Adicionais;
end;

procedure TfrmCadDiasAdicionais.btnConsultarClick(Sender: TObject);
begin
  if (ComboEmpresa.KeyValue = '') or (ComboEmpresa.KeyValue = null) then
  begin
    ShowMessage('Infome a empresa!');
    ComboEmpresa.SetFocus;
    Exit;
  end;
  if ComboMes.Text = '' then
  begin
    ShowMessage('Infome o mês!');
    ComboMes.SetFocus;
    Exit;
  end;
  if edtAno.Text = '' then
  begin
    ShowMessage('Infome o ano!');
    edtAno.SetFocus;
    Exit;
  end;
  vMes := IntToStr(ComboMes.ItemIndex + 1);
  vAno := edtAno.Text;
  fDMCadFuncionario.prc_Consulta_DiasAdicionais(vMes,StrToInt(vAno),ComboEmpresa.KeyValue);
  prc_Habilita_Botoes_Adicionais;
end;

procedure TfrmCadDiasAdicionais.edtFuncionarioExit(Sender: TObject);
begin
  if edtFuncionario.Text <> '' then
  begin
    fDMCadFuncionario.prc_Posiciona_Funcionario(StrToInt(edtFuncionario.Text), ComboEmpresa.KeyValue);
    edtNomeFuncionario.Text := fDMCadFuncionario.qFuncionarioNOME.AsString;
    if fDMCadFuncionario.qFuncionario.IsEmpty then
    begin
      ShowMessage('Código não encontrado!');
      edtFuncionario.SetFocus;
      exit;
    end;
  end;

end;

procedure TfrmCadDiasAdicionais.btnIncluirClick(Sender: TObject);
begin
  if ComboEmpresa.KeyValue = '' then
  begin
    ShowMessage('Infome a empresa!');
    ComboEmpresa.SetFocus;
    Exit;
  end;
  if ComboMes.Text = '' then
  begin
    ShowMessage('Infome o mês!');
    ComboMes.SetFocus;
    Exit;
  end;
  if edtAno.Text = '' then
  begin
    ShowMessage('Infome o ano!');
    edtAno.SetFocus;
    Exit;
  end;
  if edtDias.Text = '' then
  begin
    ShowMessage('Infome o número de dias!');
    edtDias.SetFocus;
    Exit;
  end;
  if rdgTipoAcrescimo.ItemIndex = -1 then
  begin
    ShowMessage('Informe o Tipo de desconto!');
    rdgTipoAcrescimo.SetFocus;
    Exit;
  end;
  if edtFuncionario.Text = '' then
  begin
    ShowMessage('Informe um funcionário!');
    edtFuncionario.SetFocus;
    Exit;
  end;
  prc_Gravar_Adicionais;
  edtFuncionario.Clear;
  edtNomeFuncionario.Clear;
  edtDias.Clear;
  edtFuncionario.SetFocus;
end;

procedure TfrmCadDiasAdicionais.prc_Gravar_Adicionais;
begin
  if fDMCadFuncionario.cdsDiasAdicionais.Locate('ID_FUNCIONARIO;ID_FILIAL;MES;ANO;TIPO_ACRESCIMO', VarArrayOf([fDMCadFuncionario.qFuncionarioID.AsInteger,
     ComboEmpresa.KeyValue, vMes, StrToInt(vAno),vTipoAcrescimo]),[]) then
    fDMCadFuncionario.cdsDiasAdicionais.Edit
  else
    fDMCadFuncionario.prc_Inserir_DiasAdicionais;
  fDMCadFuncionario.cdsDiasAdicionaisID_FUNCIONARIO.AsInteger := StrToInt(edtFuncionario.Text);
  fDMCadFuncionario.cdsDiasAdicionaisID_FILIAL.AsInteger := ComboEmpresa.KeyValue;
  fDMCadFuncionario.cdsDiasAdicionaisTIPO_ACRESCIMO.AsString := vTipoAcrescimo;
  fDMCadFuncionario.cdsDiasAdicionaisDIAS.AsFloat := edtDias.Value;
  fDMCadFuncionario.cdsDiasAdicionaisANO.AsInteger := StrToInt(vAno);
  fDMCadFuncionario.cdsDiasAdicionaisMES.AsString := vMes;
  fDMCadFuncionario.cdsDiasAdicionais.Post;
end;

procedure TfrmCadDiasAdicionais.prc_Habilita_Botoes_Adicionais;
begin
  btnIncluir.Enabled := fDMCadFuncionario.cdsDiasAdicionais.Active;
  btnGravar.Enabled := fDMCadFuncionario.cdsDiasAdicionais.Active;
  btnExcluir.Enabled := fDMCadFuncionario.cdsDiasAdicionais.Active;
end;

procedure TfrmCadDiasAdicionais.btnGravarClick(Sender: TObject);
begin
  try
    fDMCadFuncionario.cdsDiasAdicionais.ApplyUpdates(0);
    fDMCadFuncionario.cdsDiasAdicionais.Close;
    ShowMessage('Gravação efetuada!');
  finally
    prc_Habilita_Botoes_Adicionais;
  end;
end;

procedure TfrmCadDiasAdicionais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadDiasAdicionais.FormCreate(Sender: TObject);
begin
  FreeAndNil(fDMCadFuncionario);
end;

procedure TfrmCadDiasAdicionais.prc_Tipo_Adicionais;
begin
  case tEmunTipoAcrescimo(rdgTipoAcrescimo.ItemIndex) of
    tpTodos : vTipoAcrescimo := 'T';
    tpVT : vTipoAcrescimo := 'VT';
    tpVA : vTipoAcrescimo := 'VA';
  end;
end;

procedure TfrmCadDiasAdicionais.rdgTipoAcrescimoExit(Sender: TObject);
begin
  prc_Tipo_Adicionais;
end;

end.

