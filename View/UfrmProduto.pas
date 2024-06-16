unit UfrmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmProduto = class(TfrmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtIDProduto: TDBEdit;
    edtProdutoDescricao: TDBEdit;
    edtValorCusto: TDBEdit;
    edtValorVenda: TDBEdit;
    edtEstoque: TDBEdit;
    edtEstoqueMinimo: TDBEdit;
    edtCadastro: TDBEdit;
    edtIDCategoria: TDBEdit;
    edtCategoria: TDBEdit;
    cbUnidade: TDBComboBox;
    qryPadraoID: TIntegerField;
    qryPadraoDESCRICAO: TStringField;
    qryPadraoVL_CUSTO: TFMTBCDField;
    qryPadraoVL_VENDA: TFMTBCDField;
    qryPadraoESTOQUE: TFMTBCDField;
    qryPadraoESTOQUE_MIN: TFMTBCDField;
    qryPadraoUNIDADE: TStringField;
    qryPadraoCADASTRO: TDateField;
    qryPadraoID_CATEGORIA: TIntegerField;
    qryPadraoNOME: TStringField;
    BCategoria: TSpeedButton;
    QryCategoria: TFDQuery;
    dsCategoria: TDataSource;
    QryCategoriaID: TIntegerField;
    QryCategoriaNOME: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BCategoriaClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BDeletarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure qryPadraoAfterScroll(DataSet: TDataSet);
    procedure qryPadraoID_CATEGORIAChange(Sender: TField);
  private
    { Private declarations }
    procedure Searchs;
    procedure SearchCategoria;
    procedure New;
    procedure Loads;
    procedure Updates;
    procedure Deletes;
    procedure Saves;
    procedure Editar;
    procedure Inserts;
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;

procedure Arredondarcantos(componente: TDBEdit; Y:String);

implementation

uses
  UfrmPesquisaProduto, uProdutoController, UObjetoBuscaProduto, udmProduto;

{$R *.dfm}

procedure TfrmProduto.BCategoriaClick(Sender: TObject);
begin
  inherited;
  // abrir a modal para pesquisar Categorias de Produtos
  SearchCategoria;
end;

procedure TfrmProduto.BDeletarClick(Sender: TObject);
begin
  inherited;
  Deletes;
end;

procedure TfrmProduto.BEditarClick(Sender: TObject);
begin
  inherited;
  Editar;
end;

procedure TfrmProduto.BGravarClick(Sender: TObject);
begin
  inherited;
   Saves;
end;

procedure TfrmProduto.BNovoClick(Sender: TObject);
begin
  inherited;
  New;
end;

procedure TfrmProduto.BPesquisarClick(Sender: TObject);
begin
  inherited;
  Searchs;
end;

procedure TfrmProduto.btnPesquisarClick(Sender: TObject);
var
  ObjFrmPesquisaProduto : TfrmPesquisaProduto;
begin
  inherited;
  ObjFrmPesquisaProduto := TfrmPesquisaProduto.Create(nil);
  try
   ObjFrmPesquisaProduto.ShowModal;


  finally
   ObjFrmPesquisaProduto.Free;
  end;
end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  inherited;
  Arredondarcantos(edtProdutoDescricao, '16');
end;

procedure Arredondarcantos(componente: TDBEdit; Y:String);
var BX: TRect; mdo: HRGN;
begin
  with componente do begin
    BevelKind := bkFlat;
    Ctl3D := False;
    BevelOuter := bvRaised;
    BorderStyle := bsNone
  end;
end;

procedure TfrmProduto.SearchCategoria;
var
  oProdutoController: TProdutoController;
  oLocaliza: TLocalizaProduto;
  id: Integer;
  nomeCategoria: String;
begin
  oProdutoController := TProdutoController.Create;
  try
    oLocaliza := TLocalizaProduto.Create;
    id := oLocaliza.abreConsultaCategoria();
    oProdutoController.SearchCategoria(id, nomeCategoria);

    if id > 0 then
    begin
     qryPadrao.Edit;
     qryPadraoID_CATEGORIA.AsInteger := Id;
     QryCategoria.Close;
     QryCategoria.ParamByName('Id').AsInteger := Id;
     QryCategoria.Open;
    end;
  finally
    FreeAndNil(oLocaliza);
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmProduto.Searchs;
var
  oProdutoController: TProdutoController;
  oLocaliza: TLocalizaProduto;
  id: Integer;
begin
  oProdutoController := TProdutoController.Create;
  try
    oLocaliza := TLocalizaProduto.Create;
    id := oLocaliza.abreConsulta();
    oProdutoController.Search(id);

    if id > 0 then
    begin
     qryPadrao.Open;
     qryPadrao.Locate('ID', Id, []);
    end;
  finally
    FreeAndNil(oLocaliza);
    FreeAndNil(oProdutoController);
  end;
end;

// carregar uma busca
procedure TfrmProduto.Loads;
var
  oProdutoController: TProdutoController;
begin
  qryPadrao.open;
  oProdutoController := TProdutoController.Create;
  try
    with oProdutoController do
    begin
      Load(oProduto, qryPadraoID.AsInteger);
      with oProduto do
      begin
        qryPadrao.Locate('ID', Id, []);
      end;
    end;
  finally
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmProduto.New;
begin
  qryPadrao.Open();
  if qryPadrao.state in [dsEdit] then
    qryPadrao.Cancel;

  qryPadrao.Insert;
  qryPadraoCADASTRO.AsDateTime := NOW;
  edtIDProduto.SetFocus;
end;

procedure TfrmProduto.qryPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  QryCategoria.Close;
  QryCategoria.ParamByName('Id').AsInteger := qryPadraoID_CATEGORIA.AsInteger;
  QryCategoria.Open;
end;

procedure TfrmProduto.qryPadraoID_CATEGORIAChange(Sender: TField);
begin
  inherited;
  // atualizar descricao da categoria digitada
  QryCategoria.Close;
  QryCategoria.ParamByName('Id').AsInteger := qryPadraoID_CATEGORIA.AsInteger;
  QryCategoria.Open;
end;

procedure TfrmProduto.Inserts;
var
  oProdutoController: TProdutoController;
  iId: Integer;
  sErro: string;
begin
  oProdutoController := TProdutoController.Create;
  try
    with oProdutoController do
    begin
      with oProduto do
      begin
        Id            := qryPadraoId.AsInteger;
        Descricao     := qryPadraoDESCRICAO.Text;
        VlVenda       := qryPadraoVL_VENDA.AsFloat;
        VlCusto       := qryPadraoVL_CUSTO.AsFloat;
        Estoque       := qryPadraoESTOQUE.AsInteger;
        Unidade       := qryPadraoUNIDADE.AsString;
        Cadastro      := qryPadraoCADASTRO.AsDateTime;
      end;
      if not oProdutoController.Insert(oProduto, iId, sErro) then
        raise Exception.Create(sErro);
    end;
  finally
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmProduto.Updates;
var
  oProdutoController: TProdutoController;
  sErro: string;
begin
  oProdutoController := TProdutoController.Create;
  try
    with oProdutoController do
    begin
      with oProduto do
      begin
         Id            := qryPadraoId.AsInteger;
        Descricao     := qryPadraoDESCRICAO.Text;
        VlVenda       := qryPadraoVL_VENDA.AsFloat;
        VlCusto       := qryPadraoVL_CUSTO.AsFloat;
        Estoque       := qryPadraoESTOQUE.AsInteger;
        Unidade       := qryPadraoUNIDADE.AsString;
        Cadastro      := qryPadraoCADASTRO.AsDateTime;

      end;
     if not oProdutoController.Update(oProduto, sErro) then
        raise Exception.Create(sErro);
    end;
  finally
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmProduto.Deletes;
var
  oProdutoController: TProdutoController;
  sErro: string;
begin
  oProdutoController := TProdutoController.Create;
  try
    if qryPadraoID.AsInteger = 0 then
      raise Exception.Create('Não há registro para ser excluído!');
    if not oProdutoController.Delete(qryPadraoID.AsInteger, sErro) then
      raise Exception.Create(sErro);
    oProdutoController.Search(0);
  finally
    FreeAndNil(oProdutoController);
  end;

end;

procedure TfrmProduto.Editar;
begin

end;

procedure TfrmProduto.Saves;
var
  oProdutoController: TProdutoController;
begin
  if qryPadrao.state in [dsInsert] then
      Inserts
  else
      Updates;
  oProdutoController := TProdutoController.Create;
  try
    oProdutoController.Search(0);
  finally
    FreeAndNil(oProdutoController);
  end;
end;

end.
