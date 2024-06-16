unit udmProduto;

interface

uses
  System.SysUtils, System.Classes, Produto;

type
  TdmProduto = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
        { Public declarations }
    function GerarId: Integer;
    procedure Search(id: Integer);
    procedure Load(oCliente: TProduto; iId: Integer);
    function Insert(oCliente: TProduto; out iId: Integer; out sErro: string): Boolean;
    function Update(oCliente: TProduto; out sErro: string): Boolean;
    function Delete(iId: Integer; out sErro: string): Boolean;
  end;

var
  dmProduto: TdmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TdmProduto.Delete(iId: Integer; out sErro: string): Boolean;
begin

end;

function TdmProduto.GerarId: Integer;
begin

end;

function TdmProduto.Insert(oCliente: TProduto; out iId: Integer;
  out sErro: string): Boolean;
begin

end;

procedure TdmProduto.Load(oCliente: TProduto; iId: Integer);
begin

end;

procedure TdmProduto.Search(id: Integer);
begin
  ///
end;

function TdmProduto.Update(oCliente: TProduto; out sErro: string): Boolean;
begin

end;

end.
