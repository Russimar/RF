unit uUtilPadrao;

interface

uses
  SysUtils, Dialogs, Classes, StrUtils, SqlExpr, DB, DBCtrls, JPEG;

function Monta_Numero(Campo: string; Tamanho: Integer): string;
function ValidaCNPJ(numCNPJ: string): Boolean;
function ValidaCPF(numCPF: string): Boolean;
function VerificaDuplicidade(vCnpj, vTipo: string; ID: Integer; ID_Filial: Integer = 0): string;
procedure SalvaImagem(FieldImg : TField; nFile : TFileName; ComponentDBImg : TDBImage; FieldExt : String = 'EXTENSAO');

var
  vUsuario: string;
  vErro: Boolean = False;
  vFilial : Integer;
  vCod_Tomador_Pos : Integer;

implementation

uses
  DmdDatabase;

function Monta_Numero(Campo: string; Tamanho: Integer): string;
var
  texto2: string;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] then
      Texto2 := Texto2 + Copy(Campo, i, 1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function ValidaCNPJ(numCNPJ: string): Boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret := False;
  cnpj := '0';
//Analisa os formatos
  if trim(copy(numCNPJ, 1, 2)) = '' then
    exit;
  if Length(numCNPJ) = 18 then
  begin
    if (Copy(numCNPJ, 3, 1) + Copy(numCNPJ, 7, 1) + Copy(numCNPJ, 11, 1) + Copy(numCNPJ, 16, 1) = '../-') then
    begin
      cnpj := Copy(numCNPJ, 1, 2) + Copy(numCNPJ, 4, 3) + Copy(numCNPJ, 8, 3) + Copy(numCNPJ, 12, 4) + Copy(numCNPJ, 17, 2);
      ret := True;
    end;
    if (copy(cnpj, 1, 6) = '000000') or (trim(copy(cnpj, 1, 6)) = '') then
    begin
      Result := True;
      exit;
    end;
  end;

  cnpj := Monta_Numero(numCNPJ, 0);

  if Length(cnpj) = 14 then
    ret := True;

  //Verifica
  if ret then
  begin
    try
      //1° digito
      total := 0;
      for x := 1 to 12 do
      begin
        if x < 5 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
      end;
      dg1 := 11 - (total mod 11);
      if dg1 > 9 then
        dg1 := 0;

      //2° digito
      total := 0;
      for x := 1 to 13 do
      begin
        if x < 6 then
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
        else
          Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
      end;

      dg2 := 11 - (total mod 11);
      if dg2 > 9 then
        dg2 := 0;
      //Validação final
      if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
        ret := True
      else
        ret := False;
    except
      ret := False;
    end;
      //Inválidos
    case AnsiIndexStr(cnpj, ['11111111111111', '22222222222222', '33333333333333', '44444444444444', '55555555555555', '66666666666666', '77777777777777', '88888888888888', '99999999999999']) of
      0..9:
        ret := False;
    end;
  end;
  ValidaCNPJ := ret;
end;

function ValidaCPF(numCPF: string): Boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';
    for x := 1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1° dígito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;
      if dg1 = 10 then
        dg1 := 0;

      //2° dígito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

      //Validação final
      ret := False;
      if dg1 = StrToInt(cpf[10]) then
        if dg2 = StrToInt(cpf[11]) then
          ret := True;
      //Inválidos
      case AnsiIndexStr(cpf, ['11111111111', '22222222222', '33333333333', '44444444444', '55555555555', '66666666666', '77777777777', '88888888888', '99999999999']) of
        0..9:
          ret := False;
      end;
    end
    else
    begin
    //Se não informado deixa passar
      if cpf = '' then
        ret := True;
    end;
  end;
  ValidaCPF := ret;
end;

function VerificaDuplicidade(vCnpj, vTipo: string; ID: Integer; ID_Filial: Integer = 0): string;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoPrincipal;
  sds.NoMetadata := True;
  sds.GetMetadata := False;
  if vTipo = 'F' then
  begin
    sds.CommandText := 'SELECT CODIGO, NOME FROM PESSOA WHERE CPF = ' + QuotedStr(vCNPJ);
    sds.Open;
    if sds.FieldByName('CODIGO').AsInteger <> ID then
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
  end;
  FreeAndNil(sds);
end;

procedure SalvaImagem(FieldImg : TField; nFile : TFileName; ComponentDBImg : TDBImage; FieldExt : String = 'EXTENSAO');
var
  Ext : String;
begin
  Ext := UpperCase(ExtractFileExt(nFile));
  TField(FieldImg).DataSet.FieldByName(FieldExt).AsString := Ext;
  if (Ext = '.JPEG') or (Ext = '.JPG') or (Ext = '.BMP') or (ComponentDBImg = nil) then
    TBlobField(FieldImg).LoadFromFile(nFile)
  else if Ext = '.GIF' then
    ComponentDBImg.Picture.LoadFromFile(nFile)
  else
  begin
    ComponentDBImg.Picture.LoadFromFile(nFile);
    TBlobField(FieldImg).Assign(ComponentDBImg.Picture);
  end;
end;

end.

