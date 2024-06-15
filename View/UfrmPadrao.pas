unit UfrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.DBCtrls, Vcl.Controls, Vcl.ExtCtrls,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;


type
  TfrmPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    qryPadrao: TFDQuery;
    dsPadrao: TDataSource;
    imFundo: TImage;
    BNovo: TSpeedButton;
    BDeletar: TSpeedButton;
    BEditar: TSpeedButton;
    BGravar: TSpeedButton;
    BCancelar: TSpeedButton;
    BAtualizar: TSpeedButton;
    BPesquisar: TSpeedButton;
    BSair: TSpeedButton;
    procedure trataBotoes();
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BNovoClick(Sender: TObject);
    procedure BDeletarClick(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure BPesquisarClick(Sender: TObject);
    procedure BAtualizarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure BGravarClick(Sender: TObject);
    procedure BEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmPadrao.BNovoClick(Sender: TObject);
begin
  // Cria um novo registro
  qryPadrao.Open;
  trataBotoes;
  qryPadrao.Append;
end;

procedure TfrmPadrao.BPesquisarClick(Sender: TObject);
begin
//
end;

procedure TfrmPadrao.BSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryPadrao.Close;
end;

procedure TfrmPadrao.FormCreate(Sender: TObject);
begin
  qryPadrao.Open;
  imFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '../Imagens/gradient.bmp');
  imFundo.Stretch := true;
  imFundo.SendToBack;
end;

procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Faz a função da tecla tab
  if Key = #13 then
   begin
     Key := #0;
     Perform(wm_nextDlgCtl, 0, 0);
   end;

end;

procedure TfrmPadrao.BAtualizarClick(Sender: TObject);
begin
  // Atualiza os registros
  trataBotoes;
  qryPadrao.Refresh;
  MessageBox(Handle, 'Registro atualizados com sucesso!', 'Atualizar Registros',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.BCancelarClick(Sender: TObject);
begin
  // Cancela a ação
  trataBotoes;
  qryPadrao.Cancel;
  MessageBox(Handle, 'Ação cancelada pelo usuário!', 'Cancelar Ação',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.BDeletarClick(Sender: TObject);
begin
  // Deleta o registro
  trataBotoes;

  if MessageBox(Handle, 'Deseja deletar esse registro?', 'Deletar Registro',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     qryPadrao.Delete;
     MessageBox(Handle, 'Registro deletado com sucesso!', 'Deletar Registro',
     MB_ICONINFORMATION + MB_OK);
   end

  else
   begin
     trataBotoes;
     Abort;
   end;
end;

procedure TfrmPadrao.BEditarClick(Sender: TObject);
begin
  // Abre o registro para edição
  trataBotoes;

  if MessageBox(Handle, 'Deseja editar esse registro?', 'Editar Registro',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     qryPadrao.Edit;
   end

  else
   begin
     trataBotoes;
     Abort;
   end;
end;

procedure TfrmPadrao.BGravarClick(Sender: TObject);
begin
  // Salva o registro
  trataBotoes;
  qryPadrao.Post;
  qryPadrao.Refresh;
  MessageBox(Handle, 'Registro salvo com sucesso!', 'Gravar Registro',
  MB_ICONINFORMATION + MB_OK);
end;

procedure TfrmPadrao.trataBotoes;
begin
  // Habilita e desabilita botões
  bNovo.Enabled := not bNovo.Enabled;
  bDeletar.Enabled := not bDeletar.Enabled;
  bEditar.Enabled := not bEditar.Enabled;
  bGravar.Enabled := not bGravar.Enabled;
  bAtualizar.Enabled := not bAtualizar.Enabled;
end;

end.
