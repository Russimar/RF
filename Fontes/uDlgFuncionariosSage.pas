unit uDlgFuncionariosSage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, DB, uDMSage, NxCollection,
  uDMCadFuncionario, rsDBUtils, ComCtrls;

type
  TDlgFuncionariosSage = class(TForm)
    pnlPrincipal: TPanel;
    SMDBGrid1: TSMDBGrid;
    pnlTop: TPanel;
    dsFuncionarioSage: TDataSource;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    ProgressBar1: TProgressBar;
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    fDMSage: TDMSage;
    fDMCadFuncionario: TDMFuncionario;
    { Public declarations }
  end;

var
  DlgFuncionariosSage: TDlgFuncionariosSage;

implementation


{$R *.dfm}

procedure TDlgFuncionariosSage.NxButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja importar os Funcionários?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;
  ProgressBar1.Min := 0;
  ProgressBar1.Max := fDMSage.cdsFuncionario.RecordCount;
  fDMSage.cdsFuncionario.First;
  try
    while not fDMSage.cdsFuncionario.Eof do
    begin
      if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
      begin
        ProgressBar1.Position := ProgressBar1.Position + 1;
        if fDMSage.cdsFuncionariocd_funcionario.AsInteger > 0 then
        begin
          fDMCadFuncionario.prc_Localizar(fDMSage.cdsFuncionariocd_funcionario.AsInteger, fDMSage.cdsFuncionariocd_empresa.AsInteger);
          if fDMCadFuncionario.cdsFuncionario.IsEmpty then
            fDMCadFuncionario.cdsFuncionario.Insert
          else
            fDMCadFuncionario.cdsFuncionario.Edit;
          fDMCadFuncionario.cdsFuncionarioID.AsInteger := fDMSage.cdsFuncionariocd_funcionario.AsInteger;
          fDMCadFuncionario.cdsFuncionarioID_FILIAL.AsInteger := fDMSage.cdsFuncionariocd_empresa.AsInteger;
          fDMCadFuncionario.cdsFuncionarioNOME.AsString := fDMSage.cdsFuncionarionome.AsString;
          fDMCadFuncionario.cdsFuncionarioENDERECO.AsString := fDMSage.cdsFuncionarioendereco.AsString;
          fDMCadFuncionario.cdsFuncionarioNUMERO.AsString := fDMSage.cdsFuncionarionr_endereco.AsString;
          fDMCadFuncionario.cdsFuncionarioCOMPLEMENTO.AsString := fDMSage.cdsFuncionariocompl_endereco.AsString;
          fDMCadFuncionario.cdsFuncionarioBAIRRO.AsString := fDMSage.cdsFuncionariobairro.AsString;
          fDMCadFuncionario.cdsFuncionarioCIDADE.AsString := fDMSage.cdsFuncionariocidade.AsString;
          fDMCadFuncionario.cdsFuncionarioESTADO.AsString := fDMSage.cdsFuncionarioestado.AsString;
          fDMCadFuncionario.cdsFuncionarioCEP.AsString := fDMSage.cdsFuncionariocep.AsString;
          fDMCadFuncionario.cdsFuncionarioSEXO.AsString := fDMSage.cdsFuncionariosexo.AsString;
          fDMCadFuncionario.cdsFuncionarioESTADO_CIVIL.AsInteger := fDMSage.cdsFuncionarioestado_civil.AsInteger;
          fDMCadFuncionario.cdsFuncionarioDATA_ADMISSAO.AsDateTime := fDMSage.cdsFuncionariodt_admissao.AsDateTime;
          fDMCadFuncionario.cdsFuncionario.Post;
          fDMCadFuncionario.cdsFuncionario.ApplyUpdates(0);
        end;
      end;
      fDMSage.cdsFuncionario.Next;
    end;

  except

  end;
  ShowMessage('Importação efetuada com sucesso');
  Close;
end;

procedure TDlgFuncionariosSage.FormShow(Sender: TObject);
begin
  fDMCadFuncionario := TDMFuncionario.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadFuncionario);
end;

procedure TDlgFuncionariosSage.NxButton2Click(Sender: TObject);
begin
  Close;
end;

end.

