unit uCadTomador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, uDMCadTomador, Mask, DBCtrls,
  rsDBUtils, uDMSage, uDlgTomadoresSage, DB, uDlgDiasTrabalhados;

type
  TfrmCadTomador = class(TfrmCadPadrao)
    btnAtualiza: TNxButton;
    popOpcoes: TPopupMenu;
    AtualizaDeptoSage1: TMenuItem;
    GerarDiasTrabalhados1: TMenuItem;
    Panel1: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pnlGrid_Dias: TPanel;
    pnlBotoesDias: TPanel;
    btnInserirDias: TNxButton;
    btnAlterarDias: TNxButton;
    btnExcluirDias: TNxButton;
    btnConfirmarDias: TNxButton;
    btnCancelarDias: TNxButton;
    SMDBGrid2: TSMDBGrid;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    ReciboValeTransporte1: TMenuItem;
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AtualizaDeptoSage1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure prc_Gravar_Registro;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirDiasClick(Sender: TObject);
    procedure GerarDiasTrabalhados1Click(Sender: TObject);
    procedure btnAlterarDiasClick(Sender: TObject);
    procedure btnExcluirDiasClick(Sender: TObject);
    procedure btnConfirmarDiasClick(Sender: TObject);
    procedure btnCancelarDiasClick(Sender: TObject);
  private
    fDMCadTomador : TDMCadTomador;
    fDlgTomadoresSage : TDlgTomadoresSage;
    fDlgDiasTrabalhados : TDlgDiasTrabalhados;
    fDMSage : TDMSage;
    procedure prc_Habilita_Dias(Sender : TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTomador: TfrmCadTomador;

implementation

uses
  uMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadTomador.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadTomador.prc_Consultar(Edit1.Text);
end;

procedure TfrmCadTomador.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadTomador := TDMCadTomador.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTomador);
  fDMSage := TDMSage.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSage);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadTomador.AtualizaDeptoSage1Click(Sender: TObject);
begin
  inherited;
  fDlgTomadoresSage := TDlgTomadoresSage.Create(Self);
  fDMSage.prc_Abrir_Tomador_Sage;
  fDlgTomadoresSage.fDMSage := fDMSage;
  fDlgTomadoresSage.dsTomadorSage.DataSet := fDMSage.cdsTomadorSage;
  fDlgTomadoresSage.ShowModal;
  FreeAndNil(fDlgTomadoresSage);
  NxButton1.Click;
end;

procedure TfrmCadTomador.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  fDMCadTomador.prc_Localizar(fDMCadTomador.cdsConsultaID_TOMADOR.AsInteger);
end;

procedure TfrmCadTomador.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadTomador.cdsTomador.State in [dsBrowse]) or not (fDMCadTomador.cdsTomador.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadTomador.cdsTomador.CancelUpdates;
  prc_Habilita_Dias(Sender);
  prc_Habilitar_Campos(Sender);
end;

procedure TfrmCadTomador.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  vErro := False;
  prc_Gravar_Registro;
  if not (vErro) then
  begin
    NxButton1.Click;
    prc_Habilitar_Campos(Sender);
    prc_Habilita_Dias(Sender);
  end;

end;

procedure TfrmCadTomador.prc_Gravar_Registro;
begin
  fDMCadTomador.prc_Gravar;
  if fDMCadTomador.cdsTomador.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadTomador.vMsgTomador, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadTomador.btnAlterarClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Dias(Sender);
  fDMCadTomador.prc_Alterar;
end;

procedure TfrmCadTomador.prc_Habilita_Dias;
begin
  if ((Sender as TNxButton).Name = 'btnInserir') or ((Sender as TNxButton).Name = 'btnAlterar') then
  begin
    pnlBotoesDias.Enabled := True;
    pnlGrid_Dias.Enabled := False;
    btnInserirDias.Enabled := True;
    btnConfirmarDias.Enabled := False;
    btnAlterarDias.Enabled := True;
    btnExcluirDias.Enabled := True;
    btnCancelarDias.Enabled := False;
  end;
  if ((Sender as TNxButton).Name = 'btnConfirmar') or ((Sender as TNxButton).Name = 'btnCancelar') then
  begin
    pnlBotoesDias.Enabled := False;
    pnlGrid_Dias.Enabled := False;
    btnInserirDias.Enabled := False;
    btnConfirmarDias.Enabled := True;
    btnAlterarDias.Enabled := False;
    btnExcluirDias.Enabled := False;
    btnCancelarDias.Enabled := True;
  end;

  if (Sender as TNxButton).Name = 'btnInserirDias' then
  begin
    pnlGrid_Dias.Enabled := True;
    btnInserirDias.Enabled := False;
    btnConfirmarDias.Enabled := True;
    btnAlterarDias.Enabled := False;
    btnExcluirDias.Enabled := False;
    btnCancelarDias.Enabled := True;
  end;
  if (Sender as TNxButton).Name = 'btnAlterarDias' then
  begin
    pnlGrid_Dias.Enabled := True;
    btnInserirDias.Enabled := False;
    btnConfirmarDias.Enabled := True;
    btnAlterarDias.Enabled := False;
    btnExcluirDias.Enabled := False;
    btnCancelarDias.Enabled := True;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmarDias' then
  begin
    pnlGrid_Dias.Enabled := False;
    btnInserirDias.Enabled := True;
    btnConfirmarDias.Enabled := False;
    btnAlterarDias.Enabled := True;
    btnExcluirDias.Enabled := True;
    btnCancelarDias.Enabled := False;
  end;
  if (Sender as TNxButton).Name = 'btnCancelarDias' then
  begin
    pnlGrid_Dias.Enabled := False;
    btnInserirDias.Enabled := True;
    btnConfirmarDias.Enabled := False;
    btnAlterarDias.Enabled := True;
    btnExcluirDias.Enabled := True;
    btnCancelarDias.Enabled := False;
  end;
end;

procedure TfrmCadTomador.btnInserirDiasClick(Sender: TObject);
begin
  inherited;
  prc_Habilita_Dias(sender);
  fDMCadTomador.prc_Abrir_Tomador_Dias(fDMCadTomador.cdsTomadorID_TOMADOR.AsInteger);
  fDMCadTomador.prc_Inserir_Tomador_Dias;
end;

procedure TfrmCadTomador.GerarDiasTrabalhados1Click(Sender: TObject);
begin
  inherited;
  fDlgDiasTrabalhados := TDlgDiasTrabalhados.Create(Self);
  fDlgDiasTrabalhados.ShowModal;
  FreeAndNil(fDlgDiasTrabalhados);
  NxButton1.Click;
end;

procedure TfrmCadTomador.btnAlterarDiasClick(Sender: TObject);
begin
  inherited;
  if fDMCadTomador.cdsTomadorDiasTrabalhados.IsEmpty then
    exit;
  prc_Habilita_Dias(sender);
  fDMCadTomador.cdsTomador.Edit;
end;

procedure TfrmCadTomador.btnExcluirDiasClick(Sender: TObject);
begin
  inherited;
  if fDMCadTomador.cdsTomadorDiasTrabalhados.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir esse registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadTomador.cdsTomadorDiasTrabalhados.Delete;

end;

procedure TfrmCadTomador.btnConfirmarDiasClick(Sender: TObject);
begin
  inherited;
  if fDMCadTomador.cdsTomadorDiasTrabalhados.IsEmpty then
    exit;
  fDMCadTomador.cdsTomadorDiasTrabalhados.Post;
  prc_Habilita_Dias(sender);
end;

procedure TfrmCadTomador.btnCancelarDiasClick(Sender: TObject);
begin
  inherited;
  if fDMCadTomador.cdsTomador.IsEmpty then
    exit;
  fDMCadTomador.cdsTomadorDiasTrabalhados.Cancel;
  prc_Habilita_Dias(sender);
end;

end.
