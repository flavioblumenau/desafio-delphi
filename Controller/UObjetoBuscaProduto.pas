unit UObjetoBuscaProduto;

interface
uses
  SysUtils;

type
  TLocalizaProduto = class
  private
  public
    function abreConsulta(): Integer;
  end;


implementation

{ TLocalizaProduto }

uses UfrmPesquisaProduto;

function TLocalizaProduto.abreConsulta: Integer;
var
  objetoTela: TfrmPesquisaProduto;
begin
  objetoTela := TfrmPesquisaProduto.Create(nil);
  try
    objetoTela.ShowModal;
    result := objetoTela.qryPesquisaPadraoID.AsInteger;
  finally
    FreeAndNil(objetoTela);
  end;
end;

end.
