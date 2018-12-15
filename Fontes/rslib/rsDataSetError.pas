unit rsDataSetError;

interface

uses Classes, Dialogs, DB, SysUtils;

type

   TrsDataSetError = class
    private
      FPostError: TDataSetErrorEvent;
      procedure OnPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    public
      procedure CreateError( DM: TDataModule );
  end;

implementation


{ TDataSetError }
procedure TrsDataSetError.CreateError(DM: TDataModule);
var
  i: Integer;
begin
  FPostError := OnPostError;
  for i := 0 to (DM.ComponentCount-1) do
  begin
    if (DM.Components[i] is TDataSet) then
      if not Assigned(TDataSet(DM.Components[i]).OnPostError) then
        TDataSet(DM.Components[i]).OnPostError := FPostError;
  end;
end;

procedure TrsDataSetError.OnPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  raise Exception.Create(E.Message + ' ( ' + DataSet.Name + ' - ' + DataSet.Fields[0].AsVariant + ' )');
end;

end.
