unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls, UfrmProduto, UfrmCompra,
  Vcl.WinXPanels, System.Skia, Vcl.Skia;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    BProdutos: TSpeedButton;
    BCompras: TSpeedButton;
    BVendas: TSpeedButton;
    BSair: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Produtos1: TMenuItem;
    categoriasProd1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    MovimentacaoRelatorio1: TMenuItem;
    procedure AbreTelaProduto;
    procedure AbreTelaCompra;
    procedure AbreTelaVenda;
    procedure AbreRelatorio;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure BProdutosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure BComprasClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BVendasClick(Sender: TObject);
    procedure MovimentacaoRelatorio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function IsChildFormExist(InstanceClass: TFormClass): Boolean;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UfrmPadrao, UfrmLogin;

{ Neste exemplo o formulário principal da
aplicação é do tipo fsMDIForm e com essa função é
possível verificar se algum formulário do tipo
fsMDIChild já está criado. }

function IsChildFormExist(InstanceClass: TFormClass): Boolean;
var
  I : Integer;
begin
  with (Application.MainForm) do
    for I := 0 to MDIChildCount - 1 do
      if (MDIChildren[i] is InstanceClass) then
      begin
        Result:= True;
        Exit;
      end;

  Result := False;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.BVendasClick(Sender: TObject);
begin
  AbreTelaVenda;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);
  StatusBar1.Panels[2].Text := 'Seja bem-vindo ao sistema!';

  with TImage.Create(Self) do
  begin
    Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '../Imagens/gradient.bmp');
    Stretch := true;
    Parent := Self;
    Align := alClient;
  end;

  with TImage.Create(Self) do
  begin
    Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '../Imagens/porto.jpg');
    Stretch := false;
    Parent := Self;
    top := 80;
    left := 150;
    width := 640;
    height := 428;
    align := alclient;
    center := true;
  end;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbreTelaProduto;
end;


procedure TfrmPrincipal.AbreRelatorio;
var
  ObjFrmCompra : TfrmMovimentacao;
begin
  ObjFrmCompra := TfrmMovimentacao.Create(nil);
  try
   ObjFrmCompra.AbreRelatorio;
  finally
   ObjFrmCompra.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaCompra;
var
  ObjFrmCompra : TfrmMovimentacao;
begin
  ObjFrmCompra := TfrmMovimentacao.Create(nil);
  try
   ObjFrmCompra.AbreTelaCompras;
  finally
   ObjFrmCompra.Free;
  end;
end;


procedure TfrmPrincipal.AbreTelaProduto;
var
  ObjFrmProduto : TfrmProduto;
begin
  ObjFrmProduto := TfrmProduto.Create(nil);
  try
    ObjFrmProduto.ShowModal;
  finally
    ObjFrmProduto.Free;
  end;
end;

procedure TfrmPrincipal.AbreTelaVenda;
var
  ObjFrmCompra : TfrmMovimentacao;
begin
  ObjFrmCompra := TfrmMovimentacao.Create(nil);
  try
   ObjFrmCompra.AbreTelaVendas;
  finally
   ObjFrmCompra.Free;
  end;
end;

procedure TfrmPrincipal.BComprasClick(Sender: TObject);
begin
  AbreTelaCompra;
end;

procedure TfrmPrincipal.BProdutosClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.BSairClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Deseja sair do sistema?', 'Sair',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     Application.Terminate;
   end

  else Abort;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no StatusBar
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);

end;

procedure TfrmPrincipal.Formpaint(Sender: TObject);
var
  altura, coluna: Word;
begin
  exit;
  altura := (ClientHeight + 255) div 256;
  for coluna := 0 to 255 do
    with Canvas do
    begin
      Brush.Color := RGB(coluna, 0, 0); { Modifique para obter cores diferentes }
      FillRect(Rect(0, coluna * altura, ClientWidth, (coluna + 1) * altura)) ;
    end;
end;

procedure TfrmPrincipal.MovimentacaoRelatorio1Click(Sender: TObject);
begin
  AbreRelatorio;
end;

end.
