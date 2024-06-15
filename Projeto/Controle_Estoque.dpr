program Controle_Estoque;

uses
  Vcl.Forms,
  UfrmPrincipal in '..\View\UfrmPrincipal.pas' {frmPrincipal},
  UfrmPadrao in '..\View\UfrmPadrao.pas' {frmPadrao},
  UfrmUsuario in '..\View\UfrmUsuario.pas' {frmUsuario},
  UfrmProduto in '..\View\UfrmProduto.pas' {frmProduto},
  UfrmPesquisaUsuario in '..\View\UfrmPesquisaUsuario.pas' {frmPesquisaUsuario},
  UfrmPesquisaProduto in '..\View\UfrmPesquisaProduto.pas' {frmPesquisaProduto},
  UfrmPesquisaPadrao in '..\View\UfrmPesquisaPadrao.pas' {frmPesquisaPadrao},
  UfrmPadraoMovimento in '..\View\UfrmPadraoMovimento.pas' {frmPadraoMovimento},
  UfrmCompra in '..\View\UfrmCompra.pas' {frmCompra},
  Produto in '..\Model\Produto.pas',
  uDM in '..\Dao\uDM.pas' {DM: TDataModule},
  uProdutoController in '..\Controller\uProdutoController.pas',
  udmProduto in '..\Dao\udmProduto.pas' {dmProduto: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmProduto, dmProduto);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
