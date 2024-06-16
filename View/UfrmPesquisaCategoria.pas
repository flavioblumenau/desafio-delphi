unit UfrmPesquisaCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmPesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxSmartMemo, frCoreClasses;

type
  TfrmPesquisaUsuario = class(TfrmPesquisaPadrao)
    qryPesquisaPadraoID_USUARIO: TIntegerField;
    qryPesquisaPadraoNOME: TStringField;
    qryPesquisaPadraoTIPO: TStringField;
    qryPesquisaPadraoCADASTRO: TDateField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaUsuario: TfrmPesquisaUsuario;

implementation

{$R *.dfm}

procedure TfrmPesquisaUsuario.btnImprimirClick(Sender: TObject);
begin
  NomeRelatorio := 'relUsuario.fr3';
  inherited;
end;

procedure TfrmPesquisaUsuario.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  qryPesquisaPadrao.SQL.Add('SELECT ID, NOME, TIPO FROM CATEGORIAS');

  case cbChavePesquisa.ItemIndex of
   0 : // Pesquisa por Código
    begin
     qryPesquisaPadrao.SQL.Add('WHERE ID = :pId');
     qryPesquisaPadrao.ParamByName('pId').AsString := edtNome.Text;
    end;

   1 : // Pesquisa por Nome
    begin
     qryPesquisaPadrao.SQL.Add('WHERE NOME LIKE :pNome');
     qryPesquisaPadrao.ParamByName('pNome').AsString := '%' + edtNome.Text + '%';
    end;


   2 : // Pesquisa por Todos os registros
    begin
     qryPesquisaPadrao.SQL.Add('ORDER BY ID');
    end;
  end;

  qryPesquisaPadrao.Open;

  if qryPesquisaPadrao.IsEmpty then
   begin
    MessageDlg('Registro não encontrado!', mtInformation, [mbOK], 0);
   end;
end;

procedure TfrmPesquisaUsuario.btnTransferirClick(Sender: TObject);
begin
  inherited;
  Codigo := qryPesquisaPadraoID_USUARIO.AsInteger;
end;

end.
