unit UfrmPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, uDM, frxClass, frxDBSet, frxSmartMemo,
  frCoreClasses;

type
  TfrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cbChavePesquisa: TComboBox;
    Label1: TLabel;
    edtNome: TEdit;
    lblNome: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnPesquisar: TSpeedButton;
    btnImprimir: TSpeedButton;
    BSelecionar: TSpeedButton;
    qryPesquisaPadrao: TFDQuery;
    dsPesquisaPadrao: TDataSource;
    frxReport: TfrxReport;
    frxDB: TfrxDBDataset;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BSelecionarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo : Integer;
    FNomeRelatorio : String;
  public
    { Public declarations }
    property Codigo: Integer read FCodigo write FCodigo;
    property NomeRelatorio : String read FNomeRelatorio write FNomeRelatorio;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnImprimirClick(Sender: TObject);
var
  Caminho : String;
begin
  Caminho := ExtractFilePath(Application.ExeName) + NomeRelatorio;

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

procedure TfrmPesquisaPadrao.btnPesquisarClick(Sender: TObject);
begin
  qryPesquisaPadrao.Close;
  qryPesquisaPadrao.SQL.Clear;
  qryPesquisaPadrao.Params.Clear;
  if edtNome.Text = ''  then  edtNome.Text := ' ';
end;

procedure TfrmPesquisaPadrao.BSelecionarClick(Sender: TObject);
begin
  if qryPesquisaPadrao.RecordCount > 0 then ModalResult := mrOK
  else Abort;
end;

procedure TfrmPesquisaPadrao.DBGrid1DblClick(Sender: TObject);
begin
  BSelecionar.Click;
end;

procedure TfrmPesquisaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryPesquisaPadrao.Close;
end;

procedure TfrmPesquisaPadrao.FormCreate(Sender: TObject);
begin
  cbChavePesquisa.ItemIndex := 0;


  qryPesquisaPadrao.Open;
end;

procedure TfrmPesquisaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then btnPesquisar.Click

  else if Key = VK_ESCAPE then Close;
end;

end.
