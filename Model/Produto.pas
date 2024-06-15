unit Produto;

interface

uses
  SysUtils;

type
  TProduto = class
  private
    FId: Integer;
    FDescricao: string;
    FVlCusto: Real;
    FVlVenda: Real;
    FEstoque: Integer;
    FIdCategirua: Integer;
    FEstoque_min: Integer;
    FUnidade: String;
    FCadastro: TDateTime;
    FIdCidade: Integer;
    FCPF: string;
    FCidade: string;
    FEstado: string;
    FTelefone: string;

    procedure SetDescricao(const Value: string);
    procedure SetVlCusto(const Value: Real);
    procedure SetVlVenda(const Value: Real);
    procedure SetEstoque(const Value: Integer);
    procedure SetIdCategirua(const Value: Integer);
    procedure SetEstoque_min(const Value: Integer);
    procedure SetUnidade(const Value: String);
    procedure SetCadastro(const Value: TDateTime);
    procedure SetCPF(const Value: string);
  public
    property Id: Integer read FId write FId;
    property IdCidade: Integer read FIdCidade write FIdCidade;
    property Descricao: string read FDescricao write SetDescricao;
    property CPF: string read FCPF write SetCPF;
    property Telefone: string read FTelefone write FTelefone;
    property Cidade: string read FCidade write FCidade;
    property Estado: string read FEstado write FEstado;
  end;

implementation

uses Math;

{ TClientes }

// PRODUTO_DESCRICAO
procedure TProduto.SetDescricao(const Value: string);
begin
  if Value = EmptyStr then
    raise EInvalidArgument.Create('A "Descrição" precisa ser preenchida!')
  else
    FDescricao := Value;
end;

procedure TProduto.SetCadastro(const Value: TDateTime);
begin
 if Value = 0 then
    raise EInvalidArgument.Create('A "Data de Cadastro" precisa ser preenchida!')
  else
    FCadastro := Value;
end;

procedure TProduto.SetEstoque(const Value: Integer);
begin
  Festoque := Value;
end;

procedure TProduto.SetEstoque_min(const Value: Integer);
begin
  FEstoque_min := Value;
end;

procedure TProduto.SetIdCategirua(const Value: Integer);
begin

end;

procedure TProduto.SetUnidade(const Value: String);
begin

end;

procedure TProduto.SetVlCusto(const Value: Real);
begin

end;

procedure TProduto.SetVlVenda(const Value: Real);
begin

end;

procedure TProduto.SetCPF(const Value: string);
begin
  if Value = EmptyStr then
    raise EInvalidArgument.Create('O "CPF" precisa ser preenchido!')
  else
    FCPF := Value;
end;

end.

