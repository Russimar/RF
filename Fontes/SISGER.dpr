program SISGER;

uses
  Forms,
  Dialogs,
  SysUtils,
  DmdDatabase in 'DmdDatabase.pas' {dmDatabase: TDataModule},
  uMenu in 'uMenu.pas' {fMenu},
  uAbertura in 'uAbertura.pas' {frmAbertura},
  uUtilPadrao in 'uUtilPadrao.pas',
  uCadPadrao in 'uCadPadrao.pas' {frmCadPadrao},
  rsDBUtils in 'rslib\nova\rsDBUtils.pas',
  uCadTomador in 'uCadTomador.pas' {frmCadTomador},
  uDMCadTomador in 'uDMCadTomador.pas' {DMCadTomador: TDataModule},
  uDMSage in 'uDMSage.pas' {DMSage: TDataModule},
  uDlgFuncionariosSage in 'uDlgFuncionariosSage.pas' {DlgFuncionariosSage},
  uDlgDiasTrabalhados in 'uDlgDiasTrabalhados.pas' {DlgDiasTrabalhados},
  USel_Tomador in 'USel_Tomador.pas' {frmSel_Tomador},
  uRelVA_VT in 'uRelVA_VT.pas' {frmRelVA_VT},
  uCadParametros in 'uCadParametros.pas' {frmCadParametros},
  uDMCADParametros in 'uDMCADParametros.pas' {DMCadParametros: TDataModule},
  classe.imprimir in 'Classes\classe.imprimir.pas',
  classe.validaemail in 'Classes\classe.validaemail.pas',
  uCadFuncionario in 'uCadFuncionario.pas' {frmCadFuncionario},
  uDMCadFuncionario in 'uDMCadFuncionario.pas' {DMFuncionario: TDataModule},
  uDlgTomadoresSage in 'uDlgTomadoresSage.pas' {DlgTomadoresSage},
  uCadFaltaAtestados in 'uCadFaltaAtestados.pas' {frmFaltaAtestado};

{$R *.res}

begin
  try
    Application.Initialize;
    Application.Title := 'SIGDUC (Sistema Gerenciador de Dados dos Usuários do CMPD)';
    Application.CreateForm(TfrmAbertura, frmAbertura);
  Application.CreateForm(TdmDatabase, dmDatabase);
  frmAbertura.Show;
    frmAbertura.Refresh;
    Application.CreateForm(TdmDataBase, dmDataBase);
    frmAbertura.Hide;
    frmAbertura.Free;
    if (Date > 43600) then
    begin
      ShowMessage('Sistema Expirou, entre em contato com o desenvolvedor!');
      Exit;
    end
    else
    begin
      Application.CreateForm(TfMenu, fMenu);
      Application.Run;
    end;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao conectar: ' + #13 + e.Message);
  end;

end.

