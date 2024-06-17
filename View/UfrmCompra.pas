unit UfrmCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadraoMovimento, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, uDM, Vcl.Imaging.jpeg;

type
  TfrmMovimentacao = class(TfrmPadraoMovimento)
    Label1: TLabel;
    edtIDCompra: TDBEdit;
    Label2: TLabel;
    LbTotal: TLabel;
    Label4: TLabel;
    edtCadastro: TDBEdit;
    Label5: TLabel;
    edtNomeFornecedor: TDBEdit;
    LbValorUnit: TLabel;
    qryProduto: TFDQuery;
    edtproduto: TDBEdit;
    Label7: TLabel;
    dbeQtde: TDBEdit;
    Image1: TImage;
    Label6: TLabel;
    edtTipo: TDBComboBox;
    qryPadraoID: TIntegerField;
    qryPadraoDATA: TSQLTimeStampField;
    qryPadraoTIPO: TStringField;
    qryPadraoPRODUTO: TIntegerField;
    qryPadraoQUANTIDADE: TIntegerField;
    qryPadraoVALOR: TSingleField;
    qryPadraoVALOR_TOTAL: TSingleField;
    dsproduto: TDataSource;
    BProduto: TSpeedButton;
    qryProdutoID: TIntegerField;
    qryProdutoDESCRICAO: TStringField;
    qryProdutoVL_CUSTO: TFMTBCDField;
    qryProdutoVL_VENDA: TFMTBCDField;
    qryProdutoESTOQUE: TFMTBCDField;
    qryProdutoESTOQUE_MIN: TFMTBCDField;
    qryProdutoUNIDADE: TStringField;
    qryProdutoCADASTRO: TDateField;
    qryProdutoID_CATEGORIA: TIntegerField;
    procedure edtIDProdutoExit(Sender: TObject);
    procedure BNovoClick(Sender: TObject);
    procedure BProdutoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure qryPadraoQUANTIDADEChange(Sender: TField);
    procedure BDeletarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure qryPadraoAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    FTipo: String;
    procedure procuraProduto();
    procedure apagar();
    procedure salvar();
  public
    { Public declarations }
    procedure AbreTelaCompras;
    procedure AbreTelaVendas;
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

{$R *.dfm}

uses uProdutoController, UObjetoBuscaProduto, uMovimentacaoController,
  Movimentacao;

procedure TfrmMovimentacao.BCancelarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMovimentacao.BDeletarClick(Sender: TObject);
begin
  apagar;
end;

procedure TfrmMovimentacao.AbreTelaCompras;
begin
  fTipo := 'E';
  ShowModal;
end;

procedure TfrmMovimentacao.AbreTelaVendas;
begin
  fTipo := 'S';
  ShowModal;
end;

procedure TfrmMovimentacao.apagar();
var
  oController: TMovimentoController;
  sErro: string;
begin
  oController := TMovimentoController.Create;
  try
    if qryPadraoID.AsInteger = 0 then
      raise Exception.Create('Não há registro para ser excluído!');
    if not oController.Delete(qryPadraoID.AsInteger, sErro) then
      raise Exception.Create(sErro);
    oController.Search(0);
  finally
    FreeAndNil(oController);
  end;
end;

procedure TfrmMovimentacao.BEditarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMovimentacao.BGravarClick(Sender: TObject);
begin
  salvar;
end;

procedure TfrmMovimentacao.BNovoClick(Sender: TObject);
var
  Proximo : Integer;
begin
  inherited;

  dm.Transacao.CommitRetaining;

  qryPadrao.close;
  qryPadrao.Open;
  qryPadrao.First;
  Proximo := qryPadraoID.AsInteger + 1;

  if qryPadrao.state in [dsEdit] then
    qryPadrao.Cancel;

  qryPadrao.Insert;
  qryPadraoID.AsInteger    := Proximo;
  qryPadraoDATA.AsDateTime := NOW;
  qryPadraoTIPO.AsString   := FTipo;
  edtProduto.SetFocus;
end;

procedure TfrmMovimentacao.BProdutoClick(Sender: TObject);
begin
  inherited;
  procuraProduto();
end;


procedure TfrmMovimentacao.DBGrid1TitleClick(Column: TColumn);
var
  campo:string;
begin
  campo := column.fieldname; // CAMPO RECEBE O NOME DA COLUNA CLICADA,
  application.processmessages; // para considerar algo que aconteça no dbgrid durante a entrada nesta procedure
  qryPadrao.sql.clear; // LIMPA A QUERY
  qryPadrao.sql.add(
      'SELECT A.*, B.descricao FROM MOVIMENTO A LEFT JOIN PRODUTO B ON A.PRODUTO = B.ID  '
    + 'ORDER BY ' + campo); // ESCREVE O SELECT COM O ORDER BY
  if not qryPadrao.Prepared then
  begin
    qryPadrao.Prepare;
    qryPadrao.Open; // ABRE A QUERY COM A ORDEM ESCOLHIDA.
  End;
  column.Font.color:=clblue; // COLOCAR A COLUNA NA COR DESEJADA {Busca recursiva
end;

procedure TfrmMovimentacao.edtIDProdutoExit(Sender: TObject);
begin
  inherited;
  if qryPadrao.State in [dsbrowse] then exit;
  if (qryPadraoPRODUTO.AsInteger > 0) then
    qryProduto.Close();
    qryProduto.ParamByName('pid').AsInteger :=  qryPadrao.FieldByName('PRODUTO').AsInteger;
    qryProduto.Open();
    if (qryProduto.FieldByName('Id').asInteger> 0) then
     begin
      qryPadraoQUANTIDADE.AsInteger := 1;
     end;
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMovimentacao.procuraProduto;
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
      qryPadrao.Edit;
      qryPadraoPRODUTO.AsInteger := id;
      edtIDProdutoExit(NIL);
    end;

  finally
    FreeAndNil(oLocaliza);
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmMovimentacao.qryPadraoAfterScroll(DataSet: TDataSet);
begin
  inherited;
  edtIDProdutoExit(NIL);
end;

procedure TfrmMovimentacao.qryPadraoQUANTIDADEChange(Sender: TField);
begin

  if qryPadrao.State in [dsBrowse] then exit;

  if qryPadraoTIPO.AsString='E' then
    qryPadraoVALOR.AsFloat := qryProduto.FieldByName('vl_custo').AsFloat
  else
    qryPadraoVALOR.AsFloat := qryProduto.FieldByName('vl_venda').AsFloat;

  LbTotal.Caption := 'VALOR TOTAL: R$ ' + FormatFloat(',0.00', qryPadraoQUANTIDADE.AsInteger * qryPadraoVALOR.AsFloat);
  LbValorUnit.Caption := 'VALOR: R$ ' +  FormatFloat(',0.00', qryPadraoVALOR.AsFloat);
  qryPadraoVALOR_TOTAL.AsFloat := qryPadraoVALOR.AsFloat;
  qryPadraoVALOR_TOTAL.AsFloat := qryPadraoQUANTIDADE.AsInteger * qryPadraoVALOR.AsFloat;
end;

procedure TfrmMovimentacao.salvar;
var
  oController: TMovimentoController;
  oMovimento: TMovimento;
  iId: integer;
  sErro: String;

  procedure load;
  begin
    with oMovimento do
      begin
        id := iId;
        Produto := qryPadraoPRODUTO.AsInteger;
        ValorUnit := qryPadraoVALOR.AsFloat;
        ValorTotal := qryPadraoVALOR_TOTAL.AsFloat;
        Quantidade := qryPadraoQUANTIDADE.AsInteger;
        Tipo := qryPadraoTIPO.AsString;
        AData := qryPadraoDATA.AsDateTime;
      end;
  end;

begin

  oController := TMovimentoController.Create;
  oMovimento  := TMovimento.create;
  try
    iId := qryPadraoID.AsInteger;
    oController.Load(oMovimento, iId);
    if oMovimento.id = 0 then
    begin
      load;
      if not oController.Insert(oMovimento, iId, sErro) then
        raise Exception.Create(sErro);
    end
    else
    begin
      load;
      if not oController.Update(oMovimento, sErro) then
        raise Exception.Create(sErro);
    end;

  finally
    FreeAndnil(oMovimento);
    FreeAndNil(oController);
  end;

end;

end.
