unit uCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, UCBase,
  NxCollection, Grids, DBGrids, SMDBGrid, ExtCtrls, StdCtrls, rsDBUtils, Buttons, uUtilPadrao,
  AppEvnts, Menus;

type
  TfrmCadPadrao = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    pnlConsulta: TPanel;
    pnlPesquisa: TPanel;
    SMDBGrid1: TSMDBGrid;
    btnInserir: TNxButton;
    btnPesquisar: TNxButton;
    btnExcluir: TNxButton;
    UCControls1: TUCControls;
    Label1: TLabel;
    Edit1: TEdit;
    Panel3: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    RzPageControl2: TRzPageControl;
    TS_Dados: TRzTabSheet;
    NxButton1: TNxButton;
    pnlCadastro: TPanel;
    ApplicationEvents1: TApplicationEvents;
    NxButton2: TNxButton;
    PopupMenu1: TPopupMenu;
    Aniversariantes1: TMenuItem;
    procedure btnPesquisarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  private
    { Private declarations }
    procedure prc_Limpar_Edit_Consulta;
  public
    { Public declarations }
    inserindo, alterando: Boolean;
    procedure prc_Habilitar_Campos(sender: TObject);
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

uses
  uMenu;

{$R *.dfm}

procedure TfrmCadPadrao.btnPesquisarClick(Sender: TObject);
begin
  pnlPesquisa.Visible := not (pnlPesquisa.Visible);
  if pnlPesquisa.Visible then
    Edit1.SetFocus
  else
    prc_Limpar_Edit_Consulta;
end;

procedure TfrmCadPadrao.prc_Habilitar_Campos(sender: TObject);
begin
  if (Sender as TNxButton).Name = 'btnInserir' then
  begin
    TS_Consulta.TabEnabled := False;
    btnAlterar.Enabled := False;
    btnConfirmar.Enabled := True;
    pnlCadastro.Enabled := True;
  end;
  if (Sender as TNxButton).Name = 'btnAlterar' then
  begin
    TS_Consulta.TabEnabled := False;
    btnAlterar.Enabled := False;
    btnConfirmar.Enabled := True;
    pnlCadastro.Enabled := True;
  end;
  if (Sender as TNxButton).Name = 'btnCancelar' then
  begin
    TS_Consulta.TabEnabled := True;
    btnAlterar.Enabled := True;
    btnConfirmar.Enabled := False;
    pnlCadastro.Enabled := False;
    RzPageControl1.ActivePage := TS_Consulta;
  end;
  if (Sender as TNxButton).Name = 'btnConfirmar' then
  begin
    TS_Consulta.TabEnabled := True;
    btnAlterar.Enabled := True;
    btnConfirmar.Enabled := False;
    pnlCadastro.Enabled := False;
    RzPageControl1.ActivePage := TS_Consulta;
  end;
end;

procedure TfrmCadPadrao.prc_Limpar_Edit_Consulta;
begin
  Edit1.Clear;
end;

procedure TfrmCadPadrao.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
  RzPageControl2.ActivePage := TS_Dados;
end;

procedure TfrmCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadPadrao.btnAlterarClick(Sender: TObject);
begin
  prc_Habilitar_Campos(sender);
end;

procedure TfrmCadPadrao.btnInserirClick(Sender: TObject);
begin
  prc_Habilitar_Campos(Sender);
end;

procedure TfrmCadPadrao.btnCancelarClick(Sender: TObject);
begin
//  prc_Habilitar_Campos(sender);
end;

procedure TfrmCadPadrao.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  vMensagem: string;
  p1, p2: Integer;
begin
  if pos(upperCase('violation of primary or unique key constraint'), UpperCase(E.Message)) > 0 then
  begin
    beep;
    showmessage('O valor digitado para o campo já existe no cadastro.');
    Exit;
  end;

//valor inválido para o campo
  if pos(UpperCase('Input value'), UpperCase(E.Message)) <> 0 then
  begin
    beep;
    showmessage('Campo preenchido com valor inválido. Proceda a correção.');
    Exit;
  end;

//data inválida
  if pos(UpperCase('is Not a valid date'), UpperCase(E.Message)) > 0 then
  begin
    beep;
    p1 := Pos('''', E.Message);
    vMensagem := E.Message;
    delete(vMensagem, p1, 1);
    p2 := Pos('''', vMensagem);
    vMensagem := copy(E.Message, p1 + 1, p2 - p1);
    ShowMessage('O campo [ ' + vMensagem + ' ] é de preenchimento obrigatório.');
    vErro := True;
  end;

//campo de preenchimento obrigatório - Not Null
  if pos(upperCase('must have a value'), UpperCase(E.Message)) > 0 then
  begin
    beep;
    p1 := Pos('''', E.Message);
    vMensagem := E.Message;
    delete(vMensagem, p1, 1);
    p2 := Pos('''', vMensagem);
    vMensagem := copy(E.Message, p1 + 1, p2 - p1);
    ShowMessage('O campo [ ' + vMensagem + ' ] é de preenchimento obrigatório.');
    vErro := True;
  end;
end;

end.
   
