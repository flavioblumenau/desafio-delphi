unit UfrmPesquisaProduto;

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
  TfrmPesquisaProduto = class(TfrmPesquisaPadrao)
    qryPesquisaPadraoID: TIntegerField;
    qryPesquisaPadraoDESCRICAO: TStringField;
    qryPesquisaPadraoVL_CUSTO: TFMTBCDField;
    qryPesquisaPadraoVL_VENDA: TFMTBCDField;
    qryPesquisaPadraoESTOQUE: TFMTBCDField;
    qryPesquisaPadraoESTOQUE_MIN: TFMTBCDField;
    qryPesquisaPadraoUNIDADE: TStringField;
    qryPesquisaPadraoCADASTRO: TDateField;
    qryPesquisaPadraoNOME: TStringField;
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbChavePesquisaChange(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure BSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProduto: TfrmPesquisaProduto;

implementation

{$R *.dfm}

procedure TfrmPesquisaProduto.BSelecionarClick(Sender: TObject);
begin
  inherited;
  Codigo := qryPesquisaPadraoID.AsInteger;
  ModalResult := mrOk;
end;

procedure TfrmPesquisaProduto.btnPesquisarClick(Sender: TObject);
begin
  inherited;

  qryPesquisaPadrao.SQL.Add('SELECT A.ID, A.DESCRICAO, A.VL_CUSTO, A.VL_VENDA, '
  + 'A.ESTOQUE, A.ESTOQUE_MIN, A.UNIDADE, A.CADASTRO, A.ID_CATEGORIA, B.NOME FROM PRODUTO A '
  + 'LEFT JOIN CATEGORIAS B ON A.ID_CATEGORIA = B.ID ');

  case cbChavePesquisa.ItemIndex of
   0 : // Pesquisa por Código
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.ID = :pId_Produto');
     qryPesquisaPadrao.ParamByName('pId_Produto').AsString := edtNome.Text;
    end;

   1 : // Pesquisa por Nome
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.DESCRICAO LIKE :pDescricao');
     qryPesquisaPadrao.ParamByName('pDescricao').AsString := '%' + edtNome.Text + '%';
    end;

   2 : // Pesquisa por Data de Cadastro
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.CADASTRO = :pCadastro');
     qryPesquisaPadrao.ParamByName('pCadastro').AsDate := StrToDate(edtInicio.Text);
    end;

   3 : // Pesquisa por Período
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.CADASTRO BETWEEN :pInicio AND :pFim');
     qryPesquisaPadrao.ParamByName('pInicio').AsDate := StrToDate(edtInicio.Text);
     qryPesquisaPadrao.ParamByName('pFim').AsDate := StrToDate(edtFim.Text);
    end;

   4 : // Pesquisa por Todos os registros
    begin
     qryPesquisaPadrao.SQL.Add('ORDER BY A.ID');
    end;

    5 : // Pesquisa pela categoria
    begin
     qryPesquisaPadrao.SQL.Add('WHERE A.ID_CATEGORIA = :pId');
     qryPesquisaPadrao.ParamByName('pId').AsString := edtNome.Text;
    end;
  end;

  qryPesquisaPadrao.Open;

  if qryPesquisaPadrao.IsEmpty then
   begin
    MessageDlg('Registro não encontrado!', mtInformation, [mbOK], 0);
   end;
end;

procedure TfrmPesquisaProduto.btnTransferirClick(Sender: TObject);
begin
  inherited;
  Codigo := qryPesquisaPadraoID.AsInteger;
end;

procedure TfrmPesquisaProduto.cbChavePesquisaChange(Sender: TObject);
begin
  case cbChavePesquisa.ItemIndex of
   5 :
    begin
     edtNome.Visible := True;
     lblNome.Visible := True;
     lblNome.Caption := 'Categoria';
     Exit;
    end;
  end;
  inherited;
end;

end.
