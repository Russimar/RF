unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, Menus, ToolWin, IniFiles, ExtCtrls, StdCtrls,
  UCBase, UCDBXConn, ActnList, jpeg, AppEvnts;

type
  TfMenu = class(TForm)
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Manuteno1: TMenuItem;
    Tomador1: TMenuItem;
    ImageList1: TImageList;
    UCControls1: TUCControls;
    UserControl1: TUserControl;
    UCSettings1: TUCSettings;
    ActionList1: TActionList;
    UCDBXConn1: TUCDBXConn;
    Administrao1: TMenuItem;
    rocardeSenha1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    PerfildeUsuario1: TMenuItem;
    stat1: TStatusBar;
    Label1: TLabel;
    Image1: TImage;
    lblDataBase: TLabel;
    Tomador: TToolButton;
    Janelas1: TMenuItem;
    Ativas1: TMenuItem;
    btnRelatorioVTVA: TToolButton;
    Parmetros1: TMenuItem;
    ApplicationEvents1: TApplicationEvents;
    Funcionrio1: TMenuItem;
    FaltaseAtestados1: TMenuItem;
    DiasAdicionais1: TMenuItem;
    btnFuncionario: TToolButton;
    btnFaltasAtestados: TToolButton;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UserControl1AfterLogin(Sender: TObject);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure btnRelatorioVTVAClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure TomadorClick(Sender: TObject);
    procedure Tomador1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure FaltaseAtestados1Click(Sender: TObject);
    procedure DiasAdicionais1Click(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
    procedure btnFaltasAtestadosClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    procedure prc_Habilita_Menu;
    function GetBuildInfoAsString: string;
    procedure GetBuildInfo(exeName: string; var V1, V2, V3, V4: word);
    function fnc_ArquivoConfiguracao: string;

    { Private declarations }
  public
    vPath: string;
    vVersao: string;
    vPathLogo: string;
    vDataAtual: TDateTime;
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: string = '');

    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses
  DmdDatabase, uUtilPadrao, uCadTomador, uRelVA_VT, uCadParametros,
  uCadFuncionario, uCadFaltaAtestados, uCadDiasAdicionais;

const
  cArquivoConfiguracao = 'Config.ini';


{$R *.dfm}

function TfMenu.fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TfMenu.FormCreate(Sender: TObject);
var
  TaskBarH: THandle;
  TaskBarR: TRect;
  Config: TIniFile;
begin
  UserControl1.Execute;
  vPath := ExtractFilePath(Application.ExeName);
  lblDataBase.Caption := dmDatabase.scoPrincipal.Params.Values['DATABASE'];
  Config := TIniFile.Create(fnc_ArquivoConfiguracao);
  vPathLogo := Config.ReadString('IMAGEM', 'LOGOMENU', '');
   // obtem o retangulo com o taskbar
  TaskBarH := FindWindow('Shell_TrayWnd', nil);
  GetWindowRect(TaskBarH, TaskBarR);
  // altura do taskbar = TaskBarR.
  Image1.Top := Height - (Screen.Height - TaskBarR.Top) - Image1.Height - 32;
  Image1.Left := Screen.Width - Image1.Width - 16;

  vVersao := GetBuildInfoAsString;
  if vVersao <> '0.0.0.0' then
  begin
    Caption := Caption + ' - v' + vVersao;
  end;

end;

procedure TfMenu.FormShow(Sender: TObject);
begin
  vDataAtual := Date;
  lblDataBase.Top := Image1.Top - 10;
  lblDataBase.Left := Image1.Left - 10;

  Label1.Top := Image1.Top - 30;
  Label1.Left := Image1.Left - 20;

  Image1.Picture.LoadFromFile(vPathLogo);
  stat1.Panels[0].Text := vUsuario;
  stat1.Panels[1].Text := FormatDateTime(' dd "de" MMMM "de" yyyy', vDataAtual)

end;

procedure TfMenu.GetBuildInfo(exeName: string; var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(exeName), Dummy);
  if VerInfoSize > 0 then
  begin
    GetMem(VerInfo, VerInfoSize);
    try
      if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
      begin
        VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
        with VerValue^ do
        begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
        end;
      end;
    finally
      FreeMem(VerInfo, VerInfoSize);
    end;
  end;
end;

function TfMenu.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: Word;
begin
  GetBuildInfo(GetCurrentDir + '\SIGDUC.EXE', V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' + IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfMenu.prc_Habilita_Menu;
var
  i: Integer;
begin
  for i := 0 to self.Menu.Items.Count - 1 do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to self.Menu.Items.Count - 1 do
    Self.Menu.Items.Items[i].Visible := Self.Menu.Items.Items[i].Enabled;

  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if Components[i] is TMenuItem then
      TMenuItem(Self.Components[i]).Visible := TMenuItem(Self.Components[i]).Enabled;
  end;
  vUsuario := UserControl1.CurrentUser.LoginName;
end;

procedure TfMenu.UserControl1AfterLogin(Sender: TObject);
begin
  prc_Habilita_Menu;
end;

procedure TfMenu.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: string = '');
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;
  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass, existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.btnRelatorioVTVAClick(Sender: TObject);
begin
  OpenForm(TfrmRelVA_VT, wsMaximized);
end;

procedure TfMenu.ApplicationEvents1Exception(Sender: TObject; E: Exception);
var
  CaminhoArquivoLog: string;
  ArquivoLog: TextFile;
  DataHora: string;
  vErro: string;
begin
  CaminhoArquivoLog := GetCurrentDir + '\LogExcessoes.txt';

  AssignFile(ArquivoLog, CaminhoArquivoLog);
  if FileExists(CaminhoArquivoLog) then
    Append(ArquivoLog)
  else
    Rewrite(ArquivoLog);
  DataHora := FormatDateTime('dd-mm-yyyy_hh-nn-ss', Now);
//  GravarImagemFormulario(DataHora);

  Writeln(ArquivoLog, 'Data/Hora.......: ' + DatetimeToStr(Now));
  Writeln(ArquivoLog, 'Mensagem........: ' + E.Message);
  Writeln(ArquivoLog, 'Classe Exceção..: ' + E.ClassName);
  Writeln(ArquivoLog, 'Formulário......: ' + Screen.ActiveForm.Name);
//  Writeln(ArquivoLog, 'Unit............: ' + Sender.UnitName);
  Writeln(ArquivoLog, 'Controle Visual.: ' + Screen.ActiveControl.Name);
  Writeln(ArquivoLog, 'Usuário.........: ' + ObterNomeUsuario);
  Writeln(ArquivoLog, 'Versão Windows..: ' + ObterVersaoWindows);
  WriteLn(ArquivoLog, StringOfChar('-', 70));
  CloseFile(ArquivoLog);
  MessageDlg('Ocorreu um Erro Interno no sistema, favor entrar em contato com o suporte técnico', mtWarning, [mbOK], 0);
end;

procedure TfMenu.TomadorClick(Sender: TObject);
begin
  OpenForm(TfrmCadTomador, wsMaximized);
end;

procedure TfMenu.Tomador1Click(Sender: TObject);
begin
  OpenForm(TfrmCadTomador,wsMaximized);
end;

procedure TfMenu.Funcionrio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadFuncionario,wsMaximized);
end;

procedure TfMenu.FaltaseAtestados1Click(Sender: TObject);
begin
  OpenForm(TfrmFaltaAtestado, wsMaximized);
end;

procedure TfMenu.DiasAdicionais1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDiasAdicionais, wsMaximized);
end;

procedure TfMenu.btnFuncionarioClick(Sender: TObject);
begin
  OpenForm(TfrmCadFuncionario, wsMaximized);
end;

procedure TfMenu.btnFaltasAtestadosClick(Sender: TObject);
begin
  OpenForm(TfrmFaltaAtestado,wsMaximized);
end;

procedure TfMenu.ToolButton1Click(Sender: TObject);
begin
  OpenForm(TfrmCadDiasAdicionais,wsMaximized);
end;

end.

