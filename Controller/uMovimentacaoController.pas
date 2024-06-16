unit uMovimentacaoController;

interface

uses
  Grids, SqlExpr, Movimentacao, uDMMovimentacao;

type
  TMovimentoController = class
  public
    oMovimentacao: TMovimento;
    constructor Create;
    destructor Destroy; override;
    procedure Search(id: Integer);
    procedure Load(oMovimentacao: TMovimento; iId: Integer);
    function Insert(oMovimentacao: TMovimento; out iId: Integer; out sErro: string): Boolean;
    function Update(oMovimentacao: TMovimento; out sErro: string): Boolean;
    function Delete(iId: Integer; out sErro: string): Boolean;
  end;

implementation

uses
  SysUtils;

{ TMovimentoController }

constructor TMovimentoController.Create;
begin
  dmMovimentacao := TdmMovimentacao.Create(nil);
  oMovimentacao := TMovimento.Create;
end;

destructor TMovimentoController.Destroy;
begin
  FreeAndNil(oMovimentacao);
  FreeAndNil(dmMovimentacao);
  inherited;
end;

procedure TMovimentoController.Search(id: Integer);
begin
  // carrega dados do objeto
  dmMovimentacao.Search(id);
end;


procedure TMovimentoController.Load(oMovimentacao: TMovimento; iId: Integer);
begin
  dmMovimentacao.Load(oMovimentacao, iId);
end;

function TMovimentoController.Insert(oMovimentacao: TMovimento; out iId: Integer; out sErro: string): Boolean;
begin
  Result := dmMovimentacao.Insert(oMovimentacao, iId, sErro);
end;

function TMovimentoController.Update(oMovimentacao: TMovimento; out sErro: string): Boolean;
begin
  Result := dmMovimentacao.Update(oMovimentacao, sErro);
end;

function TMovimentoController.Delete(iId: Integer; out sErro: string): Boolean;
begin
  Result := dmMovimentacao.Delete(iId, sErro);
end;

end.
