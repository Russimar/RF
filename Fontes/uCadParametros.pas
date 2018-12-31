unit uCadParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, uDMCADParametros, Mask, DBCtrls,
  RzPanel, RzButton, RzRadChk, RzDBChk, RzEdit, RzDBEdit,rsDBUtils, DB;

type
  TfrmCadParametros = class(TfrmCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    dbedtEmail: TRzDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbedtUsuario: TRzDBEdit;
    Label5: TLabel;
    dbedtPorta: TRzDBEdit;
    Label6: TLabel;
    dbedtHost: TRzDBEdit;
    Label7: TLabel;
    dbedtSenha: TRzDBEdit;
    dbchkAutenticacao: TRzDBCheckBox;
    RzDBCheckBox1: TRzDBCheckBox;
    RzDBCheckBox2: TRzDBCheckBox;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
  private
    fDMCadParametros: TDMCadParametros;
    procedure prc_Gravar_Registro;
    procedure prc_Inserir_Registro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadParametros: TfrmCadParametros;

implementation

uses
  uUtilPadrao, uMenu;



{$R *.dfm}

procedure TfrmCadParametros.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadParametros := TDMCadParametros.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadParametros);
  RzPageControl1.ActivePage := TS_Consulta;
end;

procedure TfrmCadParametros.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if (fDMCadParametros.cdsCadParametros.State in [dsBrowse]) or not (fDMCadParametros.cdsCadParametros.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;
  if MessageDlg('Deseja cancelar alteração/inclusão do registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  fDMCadParametros.cdsCadParametros.CancelUpdates;
  prc_Habilitar_Campos(Sender);
end;

procedure TfrmCadParametros.btnConfirmarClick(Sender: TObject);
begin
  inherited;
  vErro := False;
  prc_Gravar_Registro;
  if not (vErro) then
  begin
    NxButton1.Click;
    prc_Habilitar_Campos(Sender);
  end;
end;

procedure TfrmCadParametros.prc_Gravar_Registro;
begin
  fDMCadParametros.prc_Gravar;
  if fDMCadParametros.cdsCadParametros.State in [dsEdit, dsInsert] then
  begin
    MessageDlg(fDMCadParametros.vMsgParametro, mtError, [mbok], 0);
    btnCancelar.Click;
    exit;
  end;
end;

procedure TfrmCadParametros.btnAlterarClick(Sender: TObject);
begin
  inherited;
  fDMCadParametros.prc_Alterar;
end;

procedure TfrmCadParametros.btnInserirClick(Sender: TObject);
begin
  inherited;
  prc_Inserir_Registro;
end;

procedure TfrmCadParametros.prc_Inserir_Registro;
begin
  fDMCadParametros.prc_Inserir;
  if fDMCadParametros.cdsCadParametros.State in [dsBrowse] then
  begin
    btnCancelar.Click;
    exit;
  end;

end;

procedure TfrmCadParametros.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadParametros.prc_Consultar('');
end;

procedure TfrmCadParametros.RzPageControl1Change(Sender: TObject);
begin
  inherited;
  fDMCadParametros.prc_Localizar(fDMCadParametros.cdsConsultaID.AsInteger);
end;

end.

