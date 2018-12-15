unit uCadEmpresa;

interface

uses
  Windows, Messages, DB, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uCadPadrao,
  UCBase, Grids, DBGrids, SMDBGrid, StdCtrls, NxCollection, ExtCtrls, RzTabs, Mask, DBCtrls,
  RxLookup, uDMCadEmpresa, rsDBUtils, Buttons, AppEvnts, Menus, JvDialogs;

type
  TfrmCadEmpresa = class(TfrmCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    TS_Diretoria: TRzTabSheet;
    pnlOutras: TPanel;
    pnlGridDiretoria: TPanel;
    DBGrid2: TDBGrid;
    pnlDiretoria: TPanel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    DBEdit36: TDBEdit;
    RxDBLookupCombo5: TRxDBLookupCombo;
    pnlBotaoDiretoria: TPanel;
    btnInserirDiretoria: TNxButton;
    btnAlterarDiretoria: TNxButton;
    btnExcluirDiretoria: TNxButton;
    btnConfirmarDiretoria: TNxButton;
    btnCancelarDiretoria: TNxButton;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    ImagemLogo: TDBImage;
    JvOpenDialog1: TJvOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure btnInserirDiretoriaClick(Sender: TObject);
    procedure btnAlterarDiretoriaClick(Sender: TObject);
    procedure btnExcluirDiretoriaClick(Sender: TObject);
    procedure btnConfirmarDiretoriaClick(Sender: TObject);
    procedure btnCancelarDiretoriaClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure ImagemLogoDblClick(Sender: TObject);
  private
    fDMCadEmpresa: TDMCadEmpresa;
    procedure prc_Inserir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Habilita_Diretoria(sender: TObject);
    procedure GravaImage;
    procedure MostrarFoto;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;
implementation

uses
  uMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadEmpresa := TDMCadEmpresa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadEmpresa);
  fDMCadEmpresa.cdsCidade.Close;
  fDMCadEmpresa.cdsCidade.Open;
  fDMCadEmpresa.cdsExercicio.Close;
  fDMCadEmpresa.cdsExercicio.Open;
  fDMCadEmpresa.cdsCargo.Close;
  fDMCadEmpresa.cdsCargo.Open;
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadEmpresa.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadEmpresa.prc_Consultar(Edit1.Text);
end;

procedure TfrmCadEmpresa.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadEmpresa.prc_Alterar;
  prc_Habilita_Diretoria(Sender);
end;

procedure TfrmCadEmpresa.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadEmpresa.cdsEmpresa.State in [dsBrowse]) or not (fDMCadEmpresa.cdsEmpresa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadEmpresa.cdsEmpresa.CancelUpdates;
  prc_Habilita_Diretoria(Sender);
  prc_Habilitar_Campos(sender);
end;

procedure TfrmCadEmpresa.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCadEmpresa.prc_Inserir_Registro;
begin
  fDMCadEmpresa.prc_Inserir;
  if fDMCadEmpresa.cdsEmpresa.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadEmpresa.prc_Gravar_Registro;
begin
  fDMCadEmpresa.prc_Gravar;
  if fDMCadEmpresa.cdsEmpresa.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadEmpresa.vMsgEmpresa, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadEmpresa.btnExcluirClick(Sender: TObject);
begin
  inherited;
  fDMCadEmpresa.prc_Localizar(fDMCadEmpresa.cdsConsultaID.AsInteger);
  if fDMCadEmpresa.cdsEmpresa.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir este registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadEmpresa.prc_Excluir;
end;

procedure TfrmCadEmpresa.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  vErro := False;
  prc_Gravar_Registro;
  if not (vErro) then
  begin
    NxButton1.Click;
    prc_Habilitar_Campos(Sender);
    prc_Habilita_Diretoria(Sender);
  end;
end;

procedure TfrmCadEmpresa.DBEdit4Exit(Sender: TObject);
begin
  inherited;
  if not ValidaCNPJ(DBEdit4.Text) then
  begin
    ShowMessage('CNPJ incorreto!');
    fDMCadEmpresa.cdsEmpresaCNPJ_CPF.Clear;
    DBEdit4.SetFocus;
  end;
end;

procedure TfrmCadEmpresa.DBEdit9Exit(Sender: TObject);
begin
  inherited;
  if not (ValidaCPF(DBEdit9.Text)) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadEmpresa.cdsEmpresa_DiretoriaCPF.Clear;
    DBEdit9.SetFocus;
  end;
end;

procedure TfrmCadEmpresa.prc_Habilita_Diretoria(sender: TObject);
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotaoDiretoria.Enabled := True;
    pnlDiretoria.Enabled := False;
    btnInserirDiretoria.Enabled := True;
    btnConfirmarDiretoria.Enabled := False;
    btnAlterarDiretoria.Enabled := True;
    btnExcluirDiretoria.Enabled := True;
    btnCancelarDiretoria.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotaoDiretoria.Enabled := False;
    pnlDiretoria.Enabled := False;
    btnInserirDiretoria.Enabled := False;
    btnConfirmarDiretoria.Enabled := True;
    btnAlterarDiretoria.Enabled := False;
    btnExcluirDiretoria.Enabled := False;
    btnCancelarDiretoria.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirDiretoria' then
  begin
    pnlDiretoria.Enabled := True;
    btnInserirDiretoria.Enabled := False;
    btnConfirmarDiretoria.Enabled := True;
    btnAlterarDiretoria.Enabled := False;
    btnExcluirDiretoria.Enabled := False;
    btnCancelarDiretoria.Enabled := True;
    RxDBLookupCombo2.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarDiretoria' then
  begin
    pnlDiretoria.Enabled := True;
    btnInserirDiretoria.Enabled := False;
    btnConfirmarDiretoria.Enabled := True;
    btnAlterarDiretoria.Enabled := False;
    btnExcluirDiretoria.Enabled := False;
    btnCancelarDiretoria.Enabled := True;
    DBEdit36.SetFocus;
//    RxDBLookupCombo2.SetFocus;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarDiretoria' then
  begin
    pnlDiretoria.Enabled := False;
    btnInserirDiretoria.Enabled := True;
    btnConfirmarDiretoria.Enabled := False;
    btnAlterarDiretoria.Enabled := True;
    btnExcluirDiretoria.Enabled := True;
    btnCancelarDiretoria.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarDiretoria' then
  begin
    pnlDiretoria.Enabled := False;
    btnInserirDiretoria.Enabled := True;
    btnConfirmarDiretoria.Enabled := False;
    btnAlterarDiretoria.Enabled := True;
    btnExcluirDiretoria.Enabled := True;
    btnCancelarDiretoria.Enabled := False;
  end;
end;

procedure TfrmCadEmpresa.btnInserirDiretoriaClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Diretoria(sender);
  fDMCadEmpresa.prc_Abrir_Diretoria(fDMCadEmpresa.cdsEmpresaID.AsInteger);
  fDMCadEmpresa.prc_Inserir_Diretoria;
end;

procedure TfrmCadEmpresa.btnAlterarDiretoriaClick(Sender: TObject);
begin
  inherited;
  if fDMCadEmpresa.cdsEmpresa_Diretoria.IsEmpty then
    exit;
  prc_Habilita_Diretoria(sender);
  fDMCadEmpresa.cdsEmpresa_Diretoria.Edit;
end;

procedure TfrmCadEmpresa.btnExcluirDiretoriaClick(Sender: TObject);
begin
  inherited;
  if fDMCadEmpresa.cdsEmpresa_Diretoria.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadEmpresa.cdsEmpresa_Diretoria.Delete;
end;

procedure TfrmCadEmpresa.btnConfirmarDiretoriaClick(Sender: TObject);
begin
  inherited;
  if fDMCadEmpresa.cdsEmpresa_Diretoria.IsEmpty then
    exit;
  fDMCadEmpresa.cdsEmpresa_Diretoria.Post;
  prc_Habilita_Diretoria(sender);
end;

procedure TfrmCadEmpresa.btnCancelarDiretoriaClick(Sender: TObject);
begin
  inherited;
  if fDMCadEmpresa.cdsEmpresa_Diretoria.IsEmpty then
    exit;
  fDMCadEmpresa.cdsEmpresa_Diretoria.Cancel;
  prc_Habilita_Diretoria(sender);
end;

procedure TfrmCadEmpresa.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not (fDMCadEmpresa.cdsEmpresa.State in [dsEdit, dsInsert]) then
    begin
      fDMCadEmpresa.prc_Abrir_Diretoria(fDMCadEmpresa.cdsConsultaID.AsInteger);
      fDMCadEmpresa.prc_Localizar(fDMCadEmpresa.cdsConsultaID.AsInteger);
    end;
  end;
end;

procedure TfrmCadEmpresa.ImagemLogoDblClick(Sender: TObject);
begin
  inherited;
  if fDMCadEmpresa.cdsEmpresa.State in [dsInsert, dsEdit] then
  begin
    if JvOpenDialog1.Execute then
    begin
      GravaImage;
    end;
  end;
  MostrarFoto;
end;

procedure TfrmCadEmpresa.GravaImage;
begin
  if not (fDMCadEmpresa.cdsEmpresa.State in [dsEdit, dsInsert]) then
    fDMCadEmpresa.cdsEmpresa.Edit;
  SalvaImagem(fDMCadEmpresa.cdsEmpresa.FieldByName('LOGOTIPO'),JvOpenDialog1.FileName, ImagemLogo);
end;

procedure TfrmCadEmpresa.MostrarFoto;
var
  xNome : String;
begin
  if fDMCadEmpresa.cdsEmpresa.FieldByName('LOGOTIPO').IsNull then
    ImagemLogo.Picture := nil
  else
  begin
    xNome := 'ImagemEmp' + fDMCadEmpresa.cdsEmpresa.FieldByName('EXTENSAO').AsString;
    TBlobField(fDMCadEmpresa.cdsEmpresa.FieldByName('LOGOTIPO')).SaveToFile(xNome);
    ImagemLogo.Picture.LoadFromFile(xNome);
  end;

end;

end.

