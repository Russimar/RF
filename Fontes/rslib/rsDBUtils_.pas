unit rsDBUtils;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Buttons, DB, DBTables, typinfo;

type
  TrsActiveTables = class
  private
    FTableList: TStringList;
    procedure ActiveTable(Open: Boolean; Comp: TComponent);
    procedure CloseTableList;
    function GetDS(Comp: TComponent; DS: String): TDataSource;
  public
    constructor Create;
    procedure ActiveDataSet(Active: Boolean; DataSet: TDataSet; FormName: String);
    procedure OpenTables(Open: Boolean; Form: TForm);
  end;

var
  oActiveTables: TrsActiveTables;

implementation

// PROCEDURE RESPONSAVEL POR ABRIR AS TABELAS USADAS

constructor TrsActiveTables.Create;
begin
  FTableList := TStringList.Create;
end;

procedure TrsActiveTables.OpenTables(Open: Boolean; Form: TForm);
var
  i: Integer;
begin
  for i := 0 to (Form.ComponentCount-1) do
    ActiveTable(Open, Form.Components[i]);

  if (not Open) and (Screen.FormCount<3) then
    CloseTableList;
end;

function TrsActiveTables.GetDS( Comp: TComponent; DS: String ): TDataSource;
begin
  Result := nil;
  if IsPublishedProp(Comp, DS) then
    Result := TDataSource(GetObjectProp(Comp, DS));
end;

procedure TrsActiveTables.ActiveDataSet( Active: Boolean; DataSet: TDataSet; FormName: String);
var
  i: Integer;
  oField: TField;
begin
  if DataSet is TQuery then
    exit;

  if (Assigned(DataSet)) and (Active) and (not DataSet.Active) and (DataSet.Tag = 0) {0=controla abre e fecha, 1=nao controla} then
  begin
    DataSet.Open;
    FTableList.AddObject(FormName + '-' + DataSet.Name + '=' , DataSet);
  end
  else
    if (Assigned(DataSet)) and (not Active) and (DataSet.Active) and (DataSet.Tag = 0) then
    begin
      if FTableList.IndexOfName(FormName + '-' + DataSet.Name) >= 0 then
      begin
        DataSet.Close;
        FTableList.Delete(FTableList.IndexOfName(FormName + '-' + DataSet.Name));
      end;
    end;

  try
    for i := 0 to (DataSet.FieldCount-1) do
    begin
      oField := DataSet.Fields[i];
      if IsPublishedProp(oField, 'LookupDataSet') and (Assigned(oField.LookupDataSet)) then
        ActiveDataSet(Active, oField.LookupDataSet,FormName);
    end;
  except
    on E: Exception do
      ShowMessage(oField.LookupDataSet.Name + '/' + DataSet.Fields[i].Name + ' ' + E.Message);
  end;
end;

procedure TrsActiveTables.ActiveTable(Open: Boolean; Comp: TComponent);
var
  oDs: TDataSource;
  vName : String;
begin
  oDs := GetDS(Comp, 'DataSource');
  if Assigned(oDs) then
  begin
    vName := oDs.DataSet.Name;
    if Copy(vName,1,3) <> 'cds' then
      ActiveDataSet(Open, oDs.DataSet, Comp.Owner.Name);
  end;

  oDs := GetDS(Comp, 'ListSource');
  if Assigned(oDs) then
    ActiveDataSet(Open, oDs.DataSet, Comp.Owner.Name);

  oDs := GetDS(Comp, 'LookupSource');
  if Assigned(oDs) then
    ActiveDataSet(Open, oDs.DataSet, Comp.Owner.Name);

  oDs := GetDS(Comp, 'MasterSource');
  if Assigned(oDs) then
    ActiveDataSet(Open, oDs.DataSet, Comp.Owner.Name);

  if IsPublishedProp(Comp, 'TableName') then
    ActiveDataSet(Open, TTable(Comp), Comp.Owner.Name);
end;

////////////////////////////////////////////////////

procedure TrsActiveTables.CloseTableList;
var
  i: Integer;
begin
  try
    for i := 0 to (FTableList.Count-1) do
      TTable(FTableList.Objects[i]).Close;
    FTableList.Clear;
  except
    FTableList.Clear;
    Exit;
  end;
end;

initialization
  oActiveTables := TrsActiveTables.Create;

finalization
  FreeAndNil(oActiveTables);
end.
