unit udmmovimentacao;

interface

uses
  System.SysUtils, System.Classes, Movimentacao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmMovimentacao = class(TDataModule)
    qryMovimentacao: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Search(id: Integer);
    procedure Load(oMovimento: TMovimento; iId: Integer);
    function Insert(oMovimento: TMovimento; out iId: Integer; out sErro: string): Boolean;
    function Update(oMovimento: TMovimento; out sErro: string): Boolean;
    function Delete(iId: Integer; out sErro: string): Boolean;
  end;

var
  dmMovimentacao: TdmMovimentacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UObjetoTelaUtil;

{$R *.dfm}

{ TdmMovimentacao }

function TdmMovimentacao.Delete(iId: Integer; out sErro: string): Boolean;
begin

end;

function TdmMovimentacao.Insert(oMovimento: TMovimento; out iId: Integer;
  out sErro: string): Boolean;
var
  oTelaUtl: TTelaUtils;
begin
  Result := false;
  oTelaUtl := TTelaUtils.create;
  try
    oTelaUtl.checkTransacao;
    with qryMovimentacao do
    begin
      Sql.clear;
      Sql.Add('insert into movimento (id, data, tipo, produto, quantidade, valor, valor_total)');
      Sql.Add('values (:pid, :pdata, :ptipo, :pproduto, :pquantidade, :pvalor, :pvalor_total)');
      ParamByName('PId').AsInteger := oMovimento.Id;
      ParamByName('pdata').AsDatetime := oMovimento.AData;
      ParamByName('ptipo').AsString := oMovimento.Tipo;
      ParamByName('pproduto').AsInteger := oMovimento.Produto;
      ParamByName('pquantidade').AsInteger := oMovimento.quantidade;
      ParamByName('pvalor').AsFloat := oMovimento.ValorUnit;
      ParamByName('pvalor_total').AsFloat := oMovimento.ValorTotal;
      ExecSQL;

      Sql.Clear;
      if  oMovimento.Tipo='E' then
        Sql.Add('update produto set estoque = estoque + :quantidade  where id = :id')
      else
        Sql.Add('update produto set estoque = estoque - :quantidade  where id = :id');
      ParamByName('quantidade').AsInteger := oMovimento.quantidade;
      ParamByName('id').AsInteger := oMovimento.Produto;
      ExecSQL;


      Result := true;
    end;
    oTelaUtl.salvaTransacao;
  Except
    oTelaUtl.cancelaTransacao;
  end;
  FreeAndNil(oTelaUtl);
end;

procedure TdmMovimentacao.Load(oMovimento: TMovimento; iId: Integer);
begin
  Search(iId);
  with oMovimento, qryMovimentacao do
  begin
    Id := FieldByName('Id').AsInteger;
    if id > 0 then
    begin
      Produto    := FieldByName('Produto').AsInteger;
      Tipo       := FieldByName('Tipo').AsString;
      ValorUnit  := FieldByName('ValorUnit').AsFloat;
      ValorTotal := FieldByName('ValorTotal').AsFloat;
      Quantidade := FieldByName('Quantidade').AsInteger;
      AData      := FieldByName('Data').AsDateTime;
    end;
  end;
end;

procedure TdmMovimentacao.Search(id: Integer);
begin
  with qryMovimentacao do
  begin
    Sql.clear;
    Sql.Add('Select * from movimento where id = :id');
    parambyname('id').AsInteger := id;
    open;
  end;
end;

function TdmMovimentacao.Update(oMovimento: TMovimento; out sErro: string): Boolean;
var
  oTelaUtl: TTelaUtils;
begin
  result := false;
  oTelaUtl := TTelaUtils.create;
  try
    oTelaUtl.checkTransacao;
    with qryMovimentacao do
    begin
      Sql.clear;
      Sql.Add('update movimento set data =:pdata, tipo=:ptipo,');
      Sql.Add('produto=:pproduto, quantidade= :pquantidade, valor=:pvalor, valor_total=:pvalor_total');
      Sql.Add('where id = :pid');
      ParamByName('PId').AsInteger := oMovimento.Id;
      ParamByName('pdata').AsDatetime := oMovimento.AData;
      ParamByName('ptipo').AsString := oMovimento.Tipo;
      ParamByName('pproduto').AsInteger := oMovimento.Produto;
      ParamByName('pquantidade').AsInteger := oMovimento.quantidade;
      ParamByName('pvalor').AsFloat := oMovimento.ValorUnit;
      ParamByName('pvalor_total').AsFloat := oMovimento.ValorTotal;
      ExecSQL;
      result := true;
    end;
    oTelaUtl.salvaTransacao;
  Except
    oTelaUtl.cancelaTransacao;
  end;
  FreeAndNil(oTelaUtl);
end;

end.
