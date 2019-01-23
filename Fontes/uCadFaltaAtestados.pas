unit uCadFaltaAtestados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls,
  Mask, ToolEdit, CurrEdit, RxLookup, uDMSage, rsDBUtils, uDMCadFuncionario;

type
  tEmunTipo = (tpFalta, tpAtestado);

type
  TfrmFaltaAtestado = class(TForm)
    pnlTop: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    ComboEmpresa: TRxDBLookupCombo;
    ComboMes: TComboBox;
    edtAno: TCurrencyEdit;
    rdgTipo: TRadioGroup;
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
    procedure prc_Gravar_Faltas;
    procedure prc_Habilita_Botoes_Falta;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMSage: TDMSage;
    fDMCadFuncionario: TDMFuncionario;
    vMes: string;
    vAno: string;
  end;

var
  frmFaltaAtestado: TfrmFaltaAtestado;

implementation

uses
  DB;


{$R *.dfm}

procedure TfrmFaltaAtestado.FormShow(Sender: TObject);
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
end;

procedure TfrmFaltaAtestado.btnConsultarClick(Sender: TObject);
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
  fDMCadFuncionario.prc_Consulta_Faltas(vMes,StrToInt(vAno),ComboEmpresa.KeyValue);
  prc_Habilita_Botoes_Falta;
end;

procedure TfrmFaltaAtestado.edtFuncionarioExit(Sender: TObject);
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

procedure TfrmFaltaAtestado.btnIncluirClick(Sender: TObject);
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
  if rdgTipo.ItemIndex = -1 then
  begin
    ShowMessage('Informe o Tipo de desconto!');
    rdgTipo.SetFocus;
    Exit;
  end;
  if fDMCadFuncionario.qFuncionario.IsEmpty then
  begin
    ShowMessage('Informe um funcionário!');
    edtFuncionario.SetFocus;
    Exit;
  end;
  prc_Gravar_Faltas;
  edtFuncionario.Clear;
  edtNomeFuncionario.Clear;
  edtDias.Clear;
  edtFuncionario.SetFocus;
end;

procedure TfrmFaltaAtestado.prc_Gravar_Faltas;
begin
  if fDMCadFuncionario.cdsFaltasAtestado.Locate('ID_FUNCIONARIO;ID_FILIAL;MES;ANO;TIPO', VarArrayOf([fDMCadFuncionario.qFuncionarioID.AsInteger,
     ComboEmpresa.KeyValue, vMes, StrToInt(vAno),IntToStr(rdgTipo.ItemIndex + 1)]),[]) then
    fDMCadFuncionario.cdsFaltasAtestado.Edit
  else
    fDMCadFuncionario.prc_Inserir_Faltas;
  fDMCadFuncionario.cdsFaltasAtestadoID_FUNCIONARIO.AsInteger := StrToInt(edtFuncionario.Text);
  fDMCadFuncionario.cdsFaltasAtestadoID_FILIAL.AsInteger := ComboEmpresa.KeyValue;
  fDMCadFuncionario.cdsFaltasAtestadoTIPO.AsString := IntToStr(rdgTipo.ItemIndex + 1);
  fDMCadFuncionario.cdsFaltasAtestadoDIAS.AsFloat := edtDias.Value;
  fDMCadFuncionario.cdsFaltasAtestadoANO.AsInteger := StrToInt(vAno);
  fDMCadFuncionario.cdsFaltasAtestadoMES.AsString := vMes;
  fDMCadFuncionario.cdsFaltasAtestado.Post;
end;

procedure TfrmFaltaAtestado.prc_Habilita_Botoes_Falta;
begin
  btnIncluir.Enabled := fDMCadFuncionario.cdsFaltasAtestado.Active;
  btnGravar.Enabled := fDMCadFuncionario.cdsFaltasAtestado.Active;
  btnExcluir.Enabled := fDMCadFuncionario.cdsFaltasAtestado.Active;
end;

procedure TfrmFaltaAtestado.btnGravarClick(Sender: TObject);
begin
  try
    fDMCadFuncionario.cdsFaltasAtestado.ApplyUpdates(0);
    fDMCadFuncionario.cdsFaltasAtestado.Close;
    ShowMessage('Gravação efetuada!');
  finally
    prc_Habilita_Botoes_Falta;
  end;
end;

procedure TfrmFaltaAtestado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFaltaAtestado.FormCreate(Sender: TObject);
begin
  FreeAndNil(fDMCadFuncionario);
end;

end.

