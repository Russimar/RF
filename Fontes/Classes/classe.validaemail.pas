unit classe.validaemail;

interface

uses SysUtils, Forms, SqlExpr;

type
  TValidaEmail = class
  private
    FEmail : String;
    FUsuario : String;
    FSenha : String;
    FHost : String;
    function getEmail: string;
    function getHost: String;
    function getSenha: String;
    function getUsuario: String;
    procedure setEmail(const Value: string);
    procedure setHost(const Value: String);
    procedure setSenha(const Value: String);
    procedure setUsuario(const Value: String);
  public
    property email : string read getEmail write setEmail;
    property usuario : String read getUsuario write setUsuario;
    property senha : String read getSenha write setSenha;
    property host : String read getHost write setHost;
  end;

implementation

{ TValidaEmail }

function TValidaEmail.getEmail: string;
begin
  Result := FEmail;
end;

function TValidaEmail.getHost: String;
begin
  Result := FHost;
end;

function TValidaEmail.getSenha: String;
begin
  Result := FSenha;
end;

function TValidaEmail.getUsuario: String;
begin
  Result := FUsuario;
end;

procedure TValidaEmail.setEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TValidaEmail.setHost(const Value: String);
begin
  FHost := Value;
end;

procedure TValidaEmail.setSenha(const Value: String);
begin
  FSenha := Value;
end;

procedure TValidaEmail.setUsuario(const Value: String);
begin
  FUsuario := Value;
end;

end.

