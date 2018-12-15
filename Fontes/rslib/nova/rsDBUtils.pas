unit rsDBUtils;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Mask, Buttons,
  DB, DBTables, typinfo;

type

  TrsDBUtils = class
  private
    FTableList: TStringList;
    procedure ActiveTable(Open: Boolean; Comp: TComponent);
    function GetDS(Comp: TComponent; DS: String): TDataSource;
    procedure CloseTableList;
  public
    constructor Create;
    procedure ActiveDataSet(Active: Boolean; DataSet: TDataSet; FormName: String);
    procedure OpenTables(Open: Boolean; Form: TForm);

    procedure SetDataSourceProperties(AComponent: TComponent; DM: TDataModule);
  end;

var
  oDBUtils: TrsDBUtils;

implementation

// PROCEDURE RESPONSAVEL POR ABRIR AS TABELAS USADAS

constructor TrsDBUtils.Create;
begin
  FTableList := TStringList.Create;
end;

procedure TrsDBUtils.OpenTables(Open: Boolean; Form: TForm);
var
  i: Integer;
begin
//  if (Open) then //or ((not Open) and (Screen.FormCount < 3)) then
//  begin
    for i := 0 to (Form.ComponentCount-1) do
      ActiveTable(Open, Form.Components[i]);

    if (not Open) and (Screen.FormCount<3) then
      CloseTableList;
//  end;
end;


function TrsDBUtils.GetDS( Comp: TComponent; DS: String ): TDataSource;
begin
  Result := nil;
  if IsPublishedProp(Comp, DS) then
    Result := TDataSource(GetObjectProp(Comp, DS));
end;

procedure TrsDBUtils.ActiveDataSet( Active: Boolean; DataSet: TDataSet; FormName: String);
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

  for i := 0 to (DataSet.FieldCount-1) do
  begin
    oField := DataSet.Fields[i];
    if IsPublishedProp(oField, 'LookupDataSet') and (Assigned(oField.LookupDataSet)) then
       ActiveDataSet(Active, oField.LookupDataSet, FormName);
  end;

{  if (DataSet.Owner is TDataModule) then
  begin
    for i := 0 to (DataSet.Owner.ComponentCount-1) do
    begin
      if (DataSet.Owner.Components[i] is TTable) and Assigned(TTable(DataSet.Owner.Components[i]).MasterSource) then
        if ( TTable(DataSet.Owner.Components[i]).MasterSource.DataSet.Name = DataSet.Name ) then
          ActiveDataSet(True, TTable(DataSet.Owner.Components[i]), FormName);
    end;
  end;
}               
end;

procedure TrsDBUtils.ActiveTable(Open: Boolean; Comp: TComponent);
var
  oDs: TDataSource;
begin
  oDs := GetDS(Comp, 'DataSource');
  if Assigned(oDs) then
    ActiveDataSet(Open, oDs.DataSet, Comp.Owner.Name);

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

procedure TrsDBUtils.CloseTableList;
var
  i: Integer;
begin
  for i := 0 to (FTableList.Count-1) do
    TTable(FTableList.Objects[i]).Close;
  FTableList.Clear;
end;

procedure TrsDBUtils.SetDataSourceProperties(AComponent: TComponent; DM: TDataModule);

  function GetComponent(ClassName: string): TComponent;
  var
    I: Integer;
    oComp: TComponent;
  begin
    Result := nil;
    for I := 0 to (AComponent.ComponentCount-1) do
    begin
      oComp := TComponent(AComponent.Components[I]);
      if oComp.ClassName = ClassName then
      begin
        Result := oComp;
        Exit;
      end;
    end;
  end;

  function GetDataSource(DataSource: TDataSource): TDataSource;
  var
    oComp: TComponent;
  begin
    Result := nil;
    if (DataSource = nil) or (DataSource.Owner = nil) then
      Exit;

    oComp := GetComponent(DataSource.Owner.ClassName);
    if oComp <> nil then
      Result := TDataSource(oComp.FindComponent(DataSource.Name));
  end;

  function GetNewDataSource( DataSource: TDataSource ): TDataSource;
  begin
    Result := nil;
    if DataSource <> nil then
      if DataSource.Owner.ClassName = DM.ClassName then
        Result := TDataSource(DM.FindComponent(DataSource.Name));
  end;

  procedure SetNewDataSource( Comp: TObject; DS: String );
  var
    oDataSource: TDataSource;
  begin
    if IsPublishedProp(Comp, DS) then
    begin
      oDataSource := GetNewDataSource(TDataSource(GetObjectProp(Comp, DS)));
      if oDataSource <> nil then
        SetObjectProp(Comp, DS, oDataSource);
    end;
  end;
  //

var
  I: Integer;
  oComp: TComponent;
  oDataSource: TDataSource;
  sDS: String;
begin
  for I := 0 to (AComponent.ComponentCount-1) do
  begin
    oComp := AComponent.Components[I];

    // DevExpress
    if IsPublishedProp(oComp, 'DataController') then
      oComp := TComponent(GetObjectProp(oComp, 'DataController'));

    if IsPublishedProp(oComp, 'DataSource') then
      SetNewDataSource(oComp, 'DataSource');

    if IsPublishedProp(oComp, 'LookupSource') then
      SetNewDataSource(oComp, 'LookupSource');


    if IsPublishedProp(oComp, 'LookupDataSource') then
      SetNewDataSource(oComp, 'LookupDataSource');

//    if IsPublishedProp(oComp, 'Connection') then
//      SetNewDataSource(oComp, 'Connection');


{    if IsPublishedProp(oComp, sDS) then
    begin
      oDataSource := GetNewDataSource(TDataSource(GetObjectProp(oComp, sDS)));
      if oDataSource <> nil then
        SetObjectProp(oComp, sDS, oDataSource);
    end;
}

//    if IsPublishedProp(oComp, 'LookupSource') then
//    begin

      {oDataSource := TDataSource(GetObjectProp(oComp, 'LookupSource'));
      oDataSource := TDataSource(DM.FindComponent(oDataSource.Name));
      if oDataSource <> nil then
        SetObjectProp(oComp, 'DataSource', oDataSource);
      }
//      oDataSource := GetDataSource(TDataSource(GetObjectProp(oComp, 'LookupSource')));
//      if oDataSource <> nil then
//        SetObjectProp(oComp, 'LookupSource', oDataSource);

//    end;

//    if IsPublishedProp(oComp, 'LookupDataSource') then
//    begin

      {oDataSource := TDataSource(GetObjectProp(oComp, 'LookupDataSource'));
      oDataSource := TDataSource(DM.FindComponent(oDataSource.Name));
      if oDataSource <> nil then
        SetObjectProp(oComp, 'DataSource', oDataSource);
      }
//      oDataSource := GetDataSource(TDataSource(GetObjectProp(oComp, 'LookupDataSource')));
//      if oDataSource <> nil then
//        SetObjectProp(oComp, 'LookupDataSource', oDataSource);

    //end;
  end;
end;


initialization
  oDBUtils := TrsDBUtils.Create;

finalization
  FreeAndNil(oDBUtils);

end.
