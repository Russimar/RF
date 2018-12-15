unit rsExcelExporta;

interface

uses
  db, StdCtrls, Forms, Controls, SMDBGrid, OleServer, ExcelXP, ComObj, Dialogs;

  procedure ExcelExporta(NomeGrid: String; NomeForm: TForm);

implementation

procedure ExcelExporta(NomeGrid: String; NomeForm: TForm);
var
  bm: TBookmark;
  col, row: Integer;
  sLine: String;
  mem: TMemo;
  ExcelApp: Variant;
begin
  TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.DisableControls;
  bm := TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.GetBookmark;
  TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.First;

  try
    ExcelApp := CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Add(xlWBatWorkSheet);
    ExcelApp.WorkBooks[1].WorkSheets[1].Name := 'Grid Data';
  except
    on E: EOleSysError do
      begin
         ShowMessage('Erro: ' + E.Message);
         Screen.Cursor := crDefault;
         Exit;
      end;
    end;

  mem := TMemo.Create(nil);
  mem.Visible := False;
  mem.Parent := NomeForm;
  mem.Clear;
  sline := '';
  for col := 0 to TSMDBGrid(NomeForm.FindComponent(NomeGrid)).FieldCount - 1 do
    if TSMDBGrid(NomeForm.FindComponent(NomeGrid)).Columns.Items[col].Visible then
      sline := sline + TSMDBGrid(NomeForm.FindComponent(NomeGrid)).Fields[col].DisplayLabel + #9;
  mem.Lines.Add(sline);
  for row := 0 to TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.RecordCount-1 do
    begin
      sline := '';
      for col := 0 to TSMDBGrid(NomeForm.FindComponent(NomeGrid)).FieldCount-1 do
        begin
          if TSMDBGrid(NomeForm.FindComponent(NomeGrid)).Columns.Items[col].Visible then
            sline := sline + TSMDBGrid(NomeForm.FindComponent(NomeGrid)).Fields[col].AsString + #9;
        end;
      mem.Lines.Add(sline);
      TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.Next;
    end;

  {if RzPageControl1.ActivePage = TabSheet1 then
    begin
      mem.Lines.Add('');
      mem.Lines.Add('   *** TOTAIS ***');
      mem.Lines.Add(Label7.Caption + #9 + CurrencyEdit1.Text + #9 + Label8.Caption + #9 + CurrencyEdit2.Text + #9 + Label9.Caption + #9 + CurrencyEdit3.Text);
    end;}

  mem.SelectAll;
  mem.CopyToClipboard;
  //if toExcel then
   // begin
      ExcelApp.Workbooks[1].WorkSheets['Grid Data'].Paste;
      ExcelApp.Visible := true;
    //end;
  //FreeAndNil(mem);
  //FreeAndNil(ExcelApp);
  TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.GotoBookmark(bm);
  TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.FreeBookmark(bm);
  TSMDBGrid(NomeForm.FindComponent(NomeGrid)).DataSource.DataSet.EnableControls;
end;

end.
