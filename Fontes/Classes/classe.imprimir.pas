unit classe.imprimir;

interface

uses SysUtils, Forms;

type
  TImprimir = class
  private
    FCaminho : String;
    function getCaminho : String;
    procedure setCaminho(Value : String);
  public
    property Caminho : String read getCaminho write setCaminho;
  end;

implementation

{ TImprimir }

function TImprimir.getCaminho: String;
begin
  Result := FCaminho;
end;

procedure TImprimir.setCaminho(Value: String);
begin
  Value := ExtractFilePath(Application.ExeName) + Value;
  if not(FileExists(Value)) then
    raise Exception.Create('Arquivo ' + Value + ' Não existe');
  FCaminho := Value;
end;

end.
