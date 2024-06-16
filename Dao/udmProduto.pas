unit udmProduto;

interface

uses
  System.SysUtils, System.Classes, Produto, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmProduto = class(TDataModule)
    qryProduto: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
        { Public declarations }
    function GerarId: Integer;
    procedure Search(id: Integer);
    procedure SearchCategoria(id: Integer);
    function getNome(): String;
    procedure Load(oProduto: TProduto; iId: Integer);
    function Insert(oProduto: TProduto; out iId: Integer; out sErro: string): Boolean;
    function Update(oProduto: TProduto; out sErro: string): Boolean;
    function Delete(iId: Integer; out sErro: string): Boolean;
  end;

var
  dmProduto: TdmProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UObjetoTelaUtil;

{$R *.dfm}

function TdmProduto.Delete(iId: Integer; out sErro: string): Boolean;
begin

end;

function TdmProduto.GerarId: Integer;
begin

end;

function TdmProduto.getNome: String;
begin
  result := qryProduto.FieldByName('nome').AsString;
end;

function TdmProduto.Insert(oProduto: TProduto; out iId: Integer;
  out sErro: string): Boolean;
var
  oTelaUtl: TTelaUtils;
begin
  oTelaUtl := TTelaUtils.create;
  try
    oTelaUtl.checkTransacao;
    with qryProduto do
    begin
      Sql.clear;
      Sql.Add('Insert into produto (id, descricao, vl_venda, vl_custo, estoque, unidade, cadastro) values');
      Sql.Add('(:pid, :pdescricao, :pvlvenda, :pvlcusto, :pestoque, :punidade, :pcadastro)');
      ParamByName('PId').AsInteger := oproduto.Id;
      ParamByName('PDescricao').AsString := oproduto.Descricao;
      ParamByName('PVlVenda').AsFloat := oproduto.VlVenda;
      ParamByName('VlCusto').AsFloat := oproduto.VlCusto;
      ParamByName('Estoque').AsInteger := oproduto.Estoque;
      ParamByName('Unidade').AsString := oproduto.Unidade;
      ParamByName('Cadastro').AsDateTime := oproduto.Cadastro;
      ExecSQL;
    end;
    oTelaUtl.salvaTransacao;
  Except
    oTelaUtl.cancelaTransacao;
  end;
  FreeAndNil(oTelaUtl);
end;

procedure TdmProduto.Load(oProduto: TProduto; iId: Integer);
begin
  Search(iId);
  with oProduto, QryProduto do
  begin
    Id := FieldByName('Id').AsInteger;
    Descricao :=   FieldByName('PDescricao').AsString;
    VlVenda :=  FieldByName('PVlVenda').AsFloat;
    VlCusto :=  FieldByName('VlCusto').AsFloat;
    Estoque :=  FieldByName('Estoque').AsInteger;
    Unidade :=  FieldByName('Unidade').AsString;
    Cadastro :=  FieldByName('Cadastro').AsDateTime;
  end;
end;

procedure TdmProduto.Search(id: Integer);
begin
  with qryProduto do
  begin
    Sql.clear;
    Sql.Add('Select * from produto where id = :id');
    open;
  end;
end;

procedure TdmProduto.SearchCategoria(id: Integer);
begin
  with qryProduto do
  begin
    Sql.clear;
    Sql.Add('Select * from categorias where id = :id');
    open;
  end;
end;

function TdmProduto.Update(oProduto: TProduto; out sErro: string): Boolean;
var
  oTelaUtl: TTelaUtils;
begin
  oTelaUtl := TTelaUtils.create;
  try
    oTelaUtl.checkTransacao;
    with qryProduto do
    begin
      Sql.clear;
      Sql.Add('update produto set descricao =:pdescricao, vl_venda=:pvlvenda,');
      Sql.Add('vl_custo=:pvlcusto, estoque= :pestoque, unidade=:punidade, cadastro=:pcadastro');
      Sql.Add('where id = :pid');
      ParamByName('PId').AsInteger := oproduto.Id;
      ParamByName('PDescricao').AsString := oproduto.Descricao;
      ParamByName('PVlVenda').AsFloat := oproduto.VlVenda;
      ParamByName('PVlCusto').AsFloat := oproduto.VlCusto;
      ParamByName('PEstoque').AsInteger := oproduto.Estoque;
      ParamByName('PUnidade').AsString := oproduto.Unidade;
      ParamByName('PCadastro').AsDateTime := oproduto.Cadastro;
      ExecSQL;
    end;
    oTelaUtl.salvaTransacao;
  Except
    oTelaUtl.cancelaTransacao;
  end;
  FreeAndNil(oTelaUtl);
end;

end.
