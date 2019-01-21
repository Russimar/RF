unit uCadFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, Menus, AppEvnts, UCBase, Grids, DBGrids, SMDBGrid,
  StdCtrls, NxCollection, ExtCtrls, RzTabs, uDlgFuncionariosSage, uDMSage,
  rsDBUtils, DB, uDMCadFuncionario;

type
  TfrmCadFuncionario = class(TfrmCadPadrao)
    btnAtualiza: TNxButton;
    popOpcoes: TPopupMenu;
    BuscaFuncionriosSage1: TMenuItem;
    procedure BuscaFuncionriosSage1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
    fDlgFuncionariosSage : TDlgFuncionariosSage;
    fDMSage : TDMSage;
    fDMCadFuncionario : TDMFuncionario;
  public
    { Public declarations }
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

uses
  uMenu;

{$R *.dfm}

procedure TfrmCadFuncionario.BuscaFuncionriosSage1Click(Sender: TObject);
begin
  inherited;
  fDlgFuncionariosSage := TDlgFuncionariosSage.Create(Self);
  fDMSage.prc_Abrir_Funcionario_Sage;
  fDlgFuncionariosSage.fDMSage := fDMSage;
  fDlgFuncionariosSage.dsFuncionarioSage.DataSet := fDMSage.cdsFuncionario;
  fDlgFuncionariosSage.ShowModal;
  FreeAndNil(fDlgFuncionariosSage);
  NxButton1.Click;
end;

procedure TfrmCadFuncionario.FormShow(Sender: TObject);
begin
  inherited;
  fDMCadFuncionario := TDMFuncionario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFuncionario);
  fDMSage := TDMSage.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMSage);
end;

procedure TfrmCadFuncionario.NxButton1Click(Sender: TObject);
begin
  inherited;
  fDMCadFuncionario.prc_Consultar(Edit1.Text);
end;

end.
