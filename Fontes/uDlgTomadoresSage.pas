unit uDlgTomadoresSage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, ExtCtrls, DB, uDMSage, NxCollection,
  uDMCadTomador, rsDBUtils;

type
  TDlgTomadoresSage = class(TForm)
    pnlPrincipal: TPanel;
    SMDBGrid1: TSMDBGrid;
    pnlTop: TPanel;
    dsTomadorSage: TDataSource;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    procedure NxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    fDMSage: TDMSage;
    fDMCadTomador: TDMCadTomador;
    { Public declarations }
  end;

var
  DlgTomadoresSage: TDlgTomadoresSage;

implementation

{$R *.dfm}

procedure TDlgTomadoresSage.NxButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja importar os tomadores?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMSage.cdsTomadorSage.First;
  while not fDMSage.cdsTomadorSage.Eof do
  begin
    if (SMDBGrid1.SelectedRows.CurrentRowSelected) then
    begin
      if fDMSage.cdsTomadorSagecd_tomador.AsInteger > 0 then
      begin
        fDMCadTomador.prc_Localizar(fDMSage.cdsTomadorSagecd_tomador.AsInteger);
        if fDMCadTomador.cdsTomador.IsEmpty then
          fDMCadTomador.cdsTomador.Insert
        else
          fDMCadTomador.cdsTomador.Edit;
        fDMCadTomador.cdsTomadorID_TOMADOR.AsInteger := fDMSage.cdsTomadorSagecd_tomador.AsInteger;
        fDMCadTomador.cdsTomadorID_FILIAL.AsInteger := fDMSage.cdsTomadorSagecd_empresa.AsInteger;
        fDMCadTomador.cdsTomadorNOME.AsString := fDMSage.cdsTomadorSagenome.AsString;
        fDMCadTomador.cdsTomadorENDERECO.AsString := fDMSage.cdsTomadorSageendereco.AsString;
        fDMCadTomador.cdsTomadorNUMERO.AsString := IntToStr(fDMSage.cdsTomadorSagenr_endereco.AsInteger);
        fDMCadTomador.cdsTomadorCOMPLEMENTO.AsString := fDMSage.cdsTomadorSagecompl_endereco.AsString;
        fDMCadTomador.cdsTomadorBAIRRO.AsString := fDMSage.cdsTomadorSagebairro.AsString;
        fDMCadTomador.cdsTomadorCIDADE.AsString := fDMSage.cdsTomadorSagecidade.AsString;
        fDMCadTomador.cdsTomadorESTADO.AsString := fDMSage.cdsTomadorSageestado.AsString;
        fDMCadTomador.cdsTomadorCEP.AsString := fDMSage.cdsTomadorSagecep.AsString;
        fDMCadTomador.cdsTomadorDOCUMENTO.AsString := fDMSage.cdsTomadorSagecgc.AsString;
        fDMCadTomador.cdsTomadorFPAS.AsString := fDMSage.cdsTomadorSagecodigo_fpas.AsString;
        fDMCadTomador.cdsTomadorENDERECO.AsString := fDMSage.cdsTomadorSageendereco.AsString;
        fDMCadTomador.cdsTomadorSTATUS.AsString := fDMSage.cdsTomadorSagestatus.AsString;
        fDMCadTomador.cdsTomador.Post;
        fDMCadTomador.cdsTomador.ApplyUpdates(0);
      end;
    end;
    fDMSage.cdsTomadorSage.Next;
  end;
end;

procedure TDlgTomadoresSage.FormShow(Sender: TObject);
begin
  fDMCadTomador := TDMCadTomador.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadTomador);
end;

procedure TDlgTomadoresSage.NxButton2Click(Sender: TObject);
begin
  Close;
end;

end.

