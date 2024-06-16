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
    FIdCategoria: Integer;
    FEstoque_min: Integer;
    FUnidade: String;
    FCadastro: TDateTime;
    procedure SetDescricao(const Value: string);
    procedure SetVlCusto(const Value: Real);
    procedure SetVlVenda(const Value: Real);
    procedure SetEstoque(const Value: Integer);
    procedure SetIdCategirua(const Value: Integer);
    procedure SetEstoque_min(const Value: Integer);
    procedure SetUnidade(const Value: String);
    procedure SetCadastro(const Value: TDateTime);
  public
    property Id: Integer read FId write FId;
    property Descricao: string read FDescricao write SetDescricao;
    property VlCusto: Real read FVlCusto write SetVlCusto;
    property VlVenda: Real read FVlVenda write SetVlVenda;
    property Estoque: Integer read FEstoque write SetEstoque;
    property Unidade: String Read FUnidade write SetUnidade;
    property Cadastro: TDateTime read FCadastro write setCadastro;
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
  FIdCategoria := Value;
end;

procedure TProduto.SetUnidade(const Value: String);
begin
  FUnidade := Value;
end;

procedure TProduto.SetVlCusto(const Value: Real);
begin
  FVlCusto := Value;
end;

procedure TProduto.SetVlVenda(const Value: Real);
begin
  FVlVenda := Value;
end;


end.

