program Controle_Estoque;

uses
  Vcl.Forms,
  Controls,
  SysUtils,
  UfrmPrincipal in '..\View\UfrmPrincipal.pas' {frmPrincipal},
  UfrmPadrao in '..\View\UfrmPadrao.pas' {frmPadrao},
  UfrmProduto in '..\View\UfrmProduto.pas' {frmProduto},
  UfrmPesquisaCategoria in '..\View\UfrmPesquisaCategoria.pas' {frmPesquisaUsuario},
  UfrmPesquisaProduto in '..\View\UfrmPesquisaProduto.pas' {frmPesquisaProduto},
  UfrmPesquisaPadrao in '..\View\UfrmPesquisaPadrao.pas' {frmPesquisaPadrao},
  UfrmPadraoMovimento in '..\View\UfrmPadraoMovimento.pas' {frmPadraoMovimento},
  UfrmCompra in '..\View\UfrmCompra.pas' {frmMovimentacao},
  Produto in '..\Model\Produto.pas',
  uDM in '..\Dao\uDM.pas' {DM: TDataModule},
  uProdutoController in '..\Controller\uProdutoController.pas',
  udmProduto in '..\Dao\udmProduto.pas' {dmProduto: TDataModule},
  UfrmLogin in '..\View\UfrmLogin.pas' {frmLogin},
  UObjetoTelaUtil in '..\Controller\UObjetoTelaUtil.pas',
  UObjetoBuscaProduto in '..\Controller\UObjetoBuscaProduto.pas',
  udmmovimentacao in '..\Dao\udmmovimentacao.pas' {dmMovimentacao: TDataModule},
  Movimentacao in '..\Model\Movimentacao.pas',
  uMovimentacaoController in '..\Controller\uMovimentacaoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmProduto, dmProduto);
  Application.CreateForm(TdmMovimentacao, dmMovimentacao);
  Application.CreateForm(TFrmLogin, FrmLogin);
  if FrmLogin.ShowModal = mrOk then //Caso o retorno da tela seja Ok
  begin
    FreeAndNil(FrmLogin); //Libera o form de Login da memória
    Application.CreateForm(TFrmPrincipal, FrmPrincipal); //Cria a janela main
    Application.Run; //Roda a aplicação
  end
  else //Caso o retorno da tela de Login seja mrCancel então
    Application.Terminate; //Encerra a aplicação

end.
