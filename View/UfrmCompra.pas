unit UfrmCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPadraoMovimento, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp. DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, uDM, Vcl.Imaging.jpeg, frxSmartMemo, frxClass, frCoreClasses,
  frxDBSet, Movimentacao, Vcl.NumberBox, Vcl.WinXCalendars;

type
  TfrmMovimentacao = class(TfrmPadraoMovimento)
    Label1: TLabel;
    Label2: TLabel;
    LbTotal: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LbValorUnit: TLabel;
    qryProduto: TFDQuery;
    Label7: TLabel;
    Image1: TImage;
    Label6: TLabel;
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
    Bevel1: TBevel;
    frxDB: TfrxDBDataset;
    frxReport: TfrxReport;
    dsRelatorio: TDataSource;
    QryRelatorio: TFDQuery;
    QryRelatorioID: TFDAutoIncField;
    QryRelatorioDESCRICAO: TStringField;
    QryRelatorioVL_CUSTO: TFMTBCDField;
    QryRelatorioVL_VENDA: TFMTBCDField;
    QryRelatorioESTOQUE: TFMTBCDField;
    QryRelatorioESTOQUE_MIN: TFMTBCDField;
    QryRelatorioUNIDADE: TStringField;
    QryRelatorioCADASTRO: TDateField;
    QryRelatorioID_CATEGORIA: TIntegerField;
    qryPadraoDESCRICAO: TStringField;
    EId: TEdit;
    CBTipo: TComboBox;
    cpData: TCalendarPicker;
    EIdProduto: TEdit;
    ENomeProduto: TEdit;
    EQuantidade: TNumberBox;
    procedure BNovoClick(Sender: TObject);
    procedure BProdutoClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
    procedure BDeletarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure EQuantidadeChange(Sender: TObject);
    procedure EIdProdutoExit(Sender: TObject);
  private
    { Private declarations }
    FTipo: String;
    oMovimento: TMovimento;
    procedure procuraProduto();
    procedure apagar();
    procedure salvar();
    procedure LimparTela();
  public
    { Public declarations }
    procedure AbreTelaCompras;
    procedure AbreTelaVendas;
    procedure AbreRelatorio;
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

{$R *.dfm}

uses uProdutoController, UObjetoBuscaProduto, uMovimentacaoController;

procedure TfrmMovimentacao.BCancelarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmMovimentacao.BDeletarClick(Sender: TObject);
begin
  // para não dar problemas na quantidade de estoque optou-se por  não deixar apagar dados
  // apagar;
end;

procedure TfrmMovimentacao.AbreRelatorio;
begin
  btnImprimirClick(nil);
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
  // Para não deixar dar problema na quantidade de Estoque preferiu-se por não deixar editar
  // as informações que foram lançadas nessa etapa
end;

procedure TfrmMovimentacao.BGravarClick(Sender: TObject);
begin
  salvar;
end;

procedure TfrmMovimentacao.BNovoClick(Sender: TObject);
var
  Proximo : Integer;
begin

  dm.Transacao.CommitRetaining;

  qryPadrao.close;
  qryPadrao.Open;
  qryPadrao.First;
  Proximo := qryPadraoID.AsInteger + 1;

  if qryPadrao.state in [dsEdit] then
    qryPadrao.Cancel;

  oMovimento  := TMovimento.create;
  oMovimento.id    := Proximo;
  oMovimento.AData := NOW;
  oMovimento.tipo  := FTipo;

  LimparTela;

  eIdProduto.SetFocus;

  BNovo.Enabled := false;
  BGravar.Enabled := true;
end;

procedure TfrmMovimentacao.BProdutoClick(Sender: TObject);
begin
  inherited;
  procuraProduto();
end;


procedure TfrmMovimentacao.btnImprimirClick(Sender: TObject);
var
  Caminho : String;
begin
  QryRelatorio.Open();
  Caminho := ExtractFilePath(Application.ExeName) + 'relEstoque.fr3';

  if frxReport.LoadFromFile(Caminho) then
   begin
    frxReport.Clear;
    frxReport.LoadFromFile(Caminho);
    frxReport.PrepareReport(True);
    frxReport.ShowPreparedReport;
   end
  else
   MessageDlg('Relatório não encontrado!' + #13 +
   'Caminho: ' + QuotedStr(Caminho), mtError, [mbOK], 0);

end;

procedure TfrmMovimentacao.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  lLinha: integer;
begin
  if Rect.Top = TStringGrid(DBGrid1).CellRect(0, TStringGrid(DBGrid1).Row).Top then
  begin
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.Canvas.Font.Color := clWhite;
    DBGrid1.Canvas.Brush.Color := clHighlight;
    if qryPadraoTIPO.AsString='E' then
      Dbgrid1.Canvas.Font.Color:= clNavy
    else
      Dbgrid1.Canvas.Font.Color:= clRed;

    DBGrid1.DefaultDrawDataCell(Rect, Column.Field, State)
  end;
  exit;
  // obtém o número do registro (linha)
  lLinha := DBGrid1.DataSource.DataSet.RecNo;

  // verifica se o número da linha é par ou ímpar, aplicando as cores
  if Odd(lLinha) then
    DBGrid1.Canvas.Brush.Color := clMenu
  else
    DBGrid1.Canvas.Brush.Color := clMoneyGreen;

  // pinta a linha
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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

procedure TfrmMovimentacao.EIdProdutoExit(Sender: TObject);
begin
  inherited;
  if (EIdProduto.Text <> '') then
  begin
    qryProduto.Close();
    qryProduto.ParamByName('pid').AsString :=  EIdProduto.Text;
    qryProduto.Open();
    if (qryProduto.FieldByName('Id').asInteger> 0) then
     begin
      EQuantidade.ValueInt := 1;
      ENomeProduto.Text :=qryProduto.FieldByName('DESCRICAO').AsString;
     end;
  end;
end;

procedure TfrmMovimentacao.EQuantidadeChange(Sender: TObject);
begin
  inherited;

  oMovimento.Quantidade := EQuantidade.ValueInt;
  if oMovimento.Tipo = 'E' then
    oMovimento.ValorUnit := qryProduto.FieldByName('vl_custo').AsFloat
  else
    oMovimento.ValorUnit:= qryProduto.FieldByName('vl_venda').AsFloat;

  LbTotal.Caption := 'VALOR TOTAL: R$ ' + FormatFloat(',0.00', oMovimento.Quantidade * oMovimento.ValorUnit);
  LbValorUnit.Caption := 'VALOR: R$ ' +  FormatFloat(',0.00', oMovimento.ValorUnit);

  oMovimento.ValorTotal := oMovimento.Quantidade * oMovimento.ValorUnit;
end;

procedure TfrmMovimentacao.FormCreate(Sender: TObject);
begin
  inherited;
  oMovimento  := TMovimento.create;
end;

procedure TfrmMovimentacao.LimparTela();
begin
  EId.Text := IntToStr(oMovimento.id);
  cpData.Date := oMovimento.AData;
  EIdProduto.Clear;
  ENomeProduto.Clear;
  EQuantidade.Clear;
  if FTipo = 'E' then CBTipo.ItemIndex := 0;
  if FTipo = 'S' then CBTipo.ItemIndex := 1;
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
      EIdProduto.Text := IntToStr(id);
      EIdProdutoExit(NIL);
    end;

  finally
    FreeAndNil(oLocaliza);
    FreeAndNil(oProdutoController);
  end;
end;

procedure TfrmMovimentacao.salvar;
var
  oController: TMovimentoController;

  iId: integer;
  sErro: String;

  procedure load;
  begin
    with oMovimento do
      begin
        id := iId;
        Produto := StrToInt(EIdProduto.Text);
//        ValorUnit := oMovimento.ValorUnit;
//        ValorTotal := oMovimento.ValorTotal;
        Quantidade := EQuantidade.ValueInt;
        Tipo := FTipo;
        AData := cpData.Date;
      end;
  end;

begin

  oController := TMovimentoController.Create;

  try
    iId := StrToInt(EId.Text);
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
  qryPadrao.refresh;
  MessageBox(Handle, 'Registro salvo com sucesso!', 'Gravar Registro',
    MB_ICONINFORMATION + MB_OK);

  trataBotoes;

end;

end.
