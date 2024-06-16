unit uObjetoTelaUtil;

interface

uses
  SysUtils;

type
  TTelaUtils = class
  private
  public
    procedure checkTransacao;
    procedure cancelaTransacao;
    procedure salvaTransacao;
  end;


implementation

uses uDM;

{ TelaUtils }

procedure TTelaUtils.cancelaTransacao;
begin
  dm.Transacao.RollbackRetaining;
end;

procedure TTelaUtils.checkTransacao;
begin
  if not dm.Conexao.InTransaction then
    dm.Transacao.StartTransaction;
end;

procedure TTelaUtils.salvaTransacao;
begin
  dm.Transacao.CommitRetaining;
end;

end.
