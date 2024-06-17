unit Movimentacao;

interface

uses
  SysUtils;

type
  TMovimento = class
  private
    FId: Integer;
    FProduto: Integer;
    FDescricao: string;
    FValorUnit: Real;
    FValorTotal: Real;
    FQuantidade: Integer;
    FTipo: String;
    FData: TDateTime;
    procedure SetTipo(const Value: string);
    procedure SetVlUnit(const Value: Real);
    procedure SetVlTotal(const Value: Real);
    procedure SetEstoque(const Value: Integer);
    procedure setData(const Value: TDateTime);
  public
    property Id: Integer read FId write FId;
    property Produto: Integer read FProduto write FProduto;
    property Tipo: String read FTipo write SetTipo;
    property ValorUnit: Real read FValorUnit write SetVlUnit;
    property ValorTotal: Real read FValorTotal write SetVlTotal;
    property Quantidade: Integer read FQuantidade write SetEstoque;
    property AData: TDateTime read FData write setData;
  end;

implementation

uses Math;

{ TClientes }

procedure TMovimento.setData(const Value: TDateTime);
begin
 if Value = 0 then
    raise EInvalidArgument.Create('A "Data de Movimento" precisa ser preenchida!')
  else
    FData := Value;
end;

procedure TMovimento.SetTipo(const Value: String);
begin
  if ((Value <> 'E') and (Value <> 'S')) then
      raise EInvalidArgument.Create('O "Tipo" precisa ser preenchido com "E" ou "S"!')
  else
    FTipo := Value;
end;



procedure TMovimento.SetEstoque(const Value: Integer);
begin
  FQuantidade := Value;
end;

procedure TMovimento.SetVlUnit(const Value: Real);
begin
  FValorUnit := Value;
end;

procedure TMovimento.SetVlTotal(const Value: Real);
begin
  FValorTotal := Value;
end;


end.

