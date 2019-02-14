unit USel_Funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TfrmSel_Funcionario = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    sdsConsultaFuncionario: TSQLDataSet;
    cdsConsultaFuncionario: TClientDataSet;
    dspConsultaFuncionario: TDataSetProvider;
    dsConsultaFuncionario: TDataSource;
    StaticText1: TStaticText;
    Label2: TLabel;
    sdsConsultaFuncionarioID: TIntegerField;
    sdsConsultaFuncionarioNOME: TStringField;
    sdsConsultaFuncionarioID_FILIAL: TIntegerField;
    cdsConsultaFuncionarioID: TIntegerField;
    cdsConsultaFuncionarioNOME: TStringField;
    cdsConsultaFuncionarioID_FILIAL: TIntegerField;
    procedure BitBtn1Click(Sender: TObject);
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    ctFuncionarioLocal : String;
    procedure prc_Consultar(ID_Filial : Integer);

  public
    { Public declarations }

  end;

var
  frmSel_Funcionario: TfrmSel_Funcionario;

implementation

uses DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Funcionario.BitBtn1Click(Sender: TObject);
begin
  prc_Consultar(vFilial);
  cdsConsultaFuncionario.RecordCount;
end;

procedure TfrmSel_Funcionario.prc_Consultar(ID_Filial : Integer);
begin
  cdsConsultaFuncionario.Close;
  sdsConsultaFuncionario.CommandText := ctFuncionarioLocal;
  if trim(Edit1.Text) <> '' then
    sdsConsultaFuncionario.CommandText := sdsConsultaFuncionario.CommandText + ' AND ((NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%') + '))';
  if ID_Filial > 0 then
    sdsConsultaFuncionario.CommandText := sdsConsultaFuncionario.CommandText + ' AND (ID_FILIAL = ' + IntToStr(ID_Filial)+')';
  cdsConsultaFuncionario.Open;
end;

procedure TfrmSel_Funcionario.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vCod_Funcionario_Pos := cdsConsultaFuncionarioID.AsInteger;
    Close;
  end;
end;

procedure TfrmSel_Funcionario.SMDBGrid1DblClick(Sender: TObject);
begin
  vCod_Funcionario_Pos := cdsConsultaFuncionarioID.AsInteger;
  Close;
end;

procedure TfrmSel_Funcionario.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    BitBtn1Click(Sender);
    if not cdsConsultaFuncionario.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Funcionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Funcionario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Funcionario.FormShow(Sender: TObject);
begin
  ctFuncionarioLocal := sdsConsultaFuncionario.CommandText;
end;

procedure TfrmSel_Funcionario.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsConsultaFuncionario.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

end.
