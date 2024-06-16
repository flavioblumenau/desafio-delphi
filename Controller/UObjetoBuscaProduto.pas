unit UObjetoBuscaProduto;

interface
uses
  SysUtils;

type
  TLocalizaProduto = class
  private
  public
    function abreConsulta(): Integer;
    function abreConsultaCategoria(): Integer;
  end;


implementation

{ TLocalizaProduto }

uses UfrmPesquisaProduto, UfrmPesquisaCategoria;

function TLocalizaProduto.abreConsulta: Integer;
var
  objetoTela: TfrmPesquisaProduto;
begin
  objetoTela := TfrmPesquisaProduto.Create(nil);
  try
    objetoTela.ShowModal;
    result := objetoTela.codigo;
  finally
    FreeAndNil(objetoTela);
  end;
end;

function TLocalizaProduto.abreConsultaCategoria: Integer;
var
  objetoTela: TfrmPesquisaCategoria;
begin
  objetoTela := TfrmPesquisaCategoria.Create(nil);
  try
    objetoTela.ShowModal;
    result := objetoTela.codigo;
  finally
    FreeAndNil(objetoTela);
  end;

end;

end.
