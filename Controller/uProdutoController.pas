unit uProdutoController;

interface

uses
  Grids, SqlExpr, Produto, uDMProduto;

type
  TProdutoController = class
  public
    oProduto: TProduto;
    constructor Create;
    destructor Destroy; override;
    procedure Search(id: Integer);
    procedure Load(oProduto: TProduto; iId: Integer);
    function Insert(oProduto: TProduto; out iId: Integer; out sErro: string): Boolean;
    function Update(oProduto: TProduto; out sErro: string): Boolean;
    function Delete(iId: Integer; out sErro: string): Boolean;
  end;

implementation

uses
  SysUtils;

{ TProdutoController }

constructor TProdutoController.Create;
begin
  dmProduto := TdmProduto.Create(nil);
  oProduto := TProduto.Create;
end;

destructor TProdutoController.Destroy;
begin
  FreeAndNil(oProduto);
  FreeAndNil(dmProduto);
  inherited;
end;

procedure TProdutoController.Search(id: Integer);
begin
  // carrega dados do objeto
  dmProduto.Search(id);
end;

procedure TProdutoController.Load(oProduto: TProduto; iId: Integer);
begin
  dmProduto.Load(oProduto, iId);
end;

function TProdutoController.Insert(oProduto: TProduto; out iId: Integer; out sErro: string): Boolean;
begin
  Result := dmProduto.Insert(oProduto, iId, sErro);
end;

function TProdutoController.Update(oProduto: TProduto; out sErro: string): Boolean;
begin
  Result := dmProduto.Update(oProduto, sErro);
end;

function TProdutoController.Delete(iId: Integer; out sErro: string): Boolean;
begin
  Result := dmProduto.Delete(iId, sErro);
end;

end.
