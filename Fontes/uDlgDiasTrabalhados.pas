unit uDlgDiasTrabalhados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, ToolEdit, ExtCtrls, FMTBcd, DB, SqlExpr;

type
  TDlgDiasTrabalhados = class(TForm)
    Panel1: TPanel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    edtDiasTrabalhados: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnConfirmar: TNxButton;
    btnFechar: TNxButton;
    sp_Gerar_Dias: TSQLStoredProc;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgDiasTrabalhados: TDlgDiasTrabalhados;

implementation

uses
  uUtilPadrao, DmdDatabase;

{$R *.dfm}

procedure TDlgDiasTrabalhados.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TDlgDiasTrabalhados.btnConfirmarClick(Sender: TObject);
var
  vMesAtual, vAnoAtual: string;
  vMesDestino, vAnoDestino: string;
  vDias: Integer;
begin
  if DateEdit1.Date < 10 then
  begin
    ShowMessage('Informe data origem');
    DateEdit1.SelectAll;
    DateEdit1.SetFocus;
  end;
  if DateEdit2.Date < 10 then
  begin
    ShowMessage('Informe data destino');
    DateEdit2.SelectAll;
    DateEdit2.SetFocus;
  end;
  vDias := StrToInt(Monta_Numero(edtDiasTrabalhados.Text, 0));
  if vDias <= 0 then
  begin
    ShowMessage('Informe número de dias trabalhados');
    edtDiasTrabalhados.SelectAll;
    edtDiasTrabalhados.SetFocus;
  end;
  vMesAtual := FormatDateTime('MM', DateEdit1.Date);
  vAnoAtual := FormatDateTime('YYYY', DateEdit1.Date);
  vMesDestino := FormatDateTime('MM', DateEdit2.Date);
  vAnoDestino := FormatDateTime('YYYY', DateEdit2.Date);

  sp_Gerar_Dias.Close;
  sp_Gerar_Dias.ParamByName('MES').AsString  := vMesAtual;
  sp_Gerar_Dias.ParamByName('ANO').AsString  := vAnoAtual;
  sp_Gerar_Dias.ParamByName('DIAS').AsInteger := vDias;
  sp_Gerar_Dias.ParamByName('MES_DESTINO').AsString  := vMesDestino;
  sp_Gerar_Dias.ParamByName('ANO_DESTINO').AsString  := vAnoDestino;

  try
    sp_Gerar_Dias.ExecProc;
  except
    on e: Exception do
      ShowMessage('Erro: ' + e.Message);
  end;
  ShowMessage('Tabela atualizada!');
  DateEdit1.Clear;
  DateEdit2.Clear;
  edtDiasTrabalhados.Clear;
  btnFechar.SetFocus;
end;

end.

