program Controle_EstoqueTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestUfrmLogin in 'TestUfrmLogin.pas',
  UfrmLogin in '..\..\View\UfrmLogin.pas',
  Testudmmovimentacao in 'Testudmmovimentacao.pas',
  udmmovimentacao in '..\..\Dao\udmmovimentacao.pas',
  Movimentacao in '..\..\Model\Movimentacao.pas',
  UObjetoTelaUtil in '..\..\Controller\UObjetoTelaUtil.pas',
  uDM in '..\..\Dao\uDM.pas' {DM: TDataModule};

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

