program Controle_Estoque;

uses
  Vcl.Forms,
  Controls, //Declarado devido ao uso da constante mrOk
  SysUtils, //Declarado devido ao uso do método FreeAndNil
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
  udmProduto in '..\Dao\udmProduto.pas' {dmProduto: TDataModule},
  UfrmLogin in '..\View\UfrmLogin.pas' {frmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TdmProduto, dmProduto);
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
