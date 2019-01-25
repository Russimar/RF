unit uCadFaltaAtestados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, Grids, DBGrids, SMDBGrid, StdCtrls, Buttons, ExtCtrls,
  Mask, ToolEdit, CurrEdit, RxLookup, uDMSage, rsDBUtils, uDMCadFuncionario,
  RzPanel, RzRadGrp, NxEdit, USel_Funcionario, ComCtrls;

type
  tEmunTipo = (tpFalta, tpAtestado);
  tEnumTipoDesconto = (tpTodos,tpVT,tpVA);

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
    rdgTipoDesconto: TRadioGroup;
    StatusBar1: TStatusBar;
    btnFechar: TNxButton;
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure edtFuncionarioExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure prc_Gravar_Faltas;
    procedure prc_Habilita_Botoes_Falta;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure rdgTipoExit(Sender: TObject);
    procedure btnConsultaFuncionarioClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure edtFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
  private
    procedure prc_Tipo_Falta;
    { Private declarations }
  public
    { Public declarations }
    fDMSage: TDMSage;
    fDMCadFuncionario: TDMFuncionario;
    vMes: string;
    vAno: string;
    vTipo, vTipoDesconto : String;
  end;

var
  frmFaltaAtestado: TfrmFaltaAtestado;
  ffrmSel_Funcionario : TfrmSel_Funcionario;

implementation

uses
  DB, uUtilPadrao;


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
  prc_Tipo_Falta;  
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
  if (ComboEmpresa.KeyValue = '') or (ComboEmpresa.KeyValue = null) then
  begin
    ShowMessage('Infome a empresa!');
    edtNomeFuncionario.Clear;
    edtFuncionario.Clear;
    ComboEmpresa.SetFocus;
    Exit;
  end;
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
  if edtFuncionario.Text = '' then
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
  if fDMCadFuncionario.cdsFaltasAtestado.Locate('ID_FUNCIONARIO;ID_FILIAL;MES;ANO;TIPO;TIPO_DESCONTO', VarArrayOf([fDMCadFuncionario.qFuncionarioID.AsInteger,
     ComboEmpresa.KeyValue, vMes, StrToInt(vAno),vTipo,vTipoDesconto]),[]) then
    fDMCadFuncionario.cdsFaltasAtestado.Edit
  else
    fDMCadFuncionario.prc_Inserir_Faltas;
  fDMCadFuncionario.cdsFaltasAtestadoID_FUNCIONARIO.AsInteger := StrToInt(edtFuncionario.Text);
  fDMCadFuncionario.cdsFaltasAtestadoID_FILIAL.AsInteger := ComboEmpresa.KeyValue;
  fDMCadFuncionario.cdsFaltasAtestadoTIPO.AsString := vTipo;
  fDMCadFuncionario.cdsFaltasAtestadoTIPO_DESCONTO.AsString := vTipoDesconto;
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

procedure TfrmFaltaAtestado.prc_Tipo_Falta;
begin
  case tEmunTipo(rdgTipo.ItemIndex) of
    tpFalta : vTipo := 'F';
    tpAtestado : vTipo := 'A';
  end;
  case tEnumTipoDesconto(rdgTipoDesconto.ItemIndex) of
    tpTodos : vTipoDesconto := 'T';
    tpVT : vTipoDesconto := 'VT';
    tpVA : vTipoDesconto := 'VA';
  end;

end;

procedure TfrmFaltaAtestado.rdgTipoExit(Sender: TObject);
begin
  prc_Tipo_Falta;
end;

procedure TfrmFaltaAtestado.btnConsultaFuncionarioClick(Sender: TObject);
begin
  ffrmSel_Funcionario := TfrmSel_Funcionario.Create(Self);
  ffrmSel_Funcionario.ShowModal;
  FreeAndNil(ffrmSel_Funcionario);
  if vCod_Funcionario_Pos > 0 then
    edtFuncionario.Text := IntToStr(vCod_Funcionario_Pos);
  edtFuncionario.SetFocus;
end;

procedure TfrmFaltaAtestado.btnExcluirClick(Sender: TObject);
begin
  if (fDMCadFuncionario.cdsFaltasAtestado.IsEmpty) or (fDMCadFuncionario.cdsFaltasAtestadoID.AsInteger <= 0) then
    exit;
  if MessageDlg('Deseja excluir este registro ' + fDMCadFuncionario.cdsFaltasAtestadoID_FUNCIONARIO.AsString + '?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadFuncionario.cdsFaltasAtestado.Delete;
  fDMCadFuncionario.cdsFaltasAtestado.ApplyUpdates(0);
  btnConsultarClick(sender);
end;

procedure TfrmFaltaAtestado.edtFuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_f2 then
    btnConsultaFuncionarioClick(Sender);
end;

procedure TfrmFaltaAtestado.btnFecharClick(Sender: TObject);
begin
  if fDMCadFuncionario.cdsFaltasAtestado.changecount > 0 then
  begin
    if MessageDlg('Existem registros que não foram gravados, deseja realmente sair? ' , mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end;
  Close;
end;

end.

