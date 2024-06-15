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
    btnUsuario: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnFormaPgto: TSpeedButton;
    btnCompras: TSpeedButton;
    btnVendas: TSpeedButton;
    btnTrocarUsuario: TSpeedButton;
    btnSair: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormadePgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    Sobre1: TMenuItem;
    procedure AbreTelaUsuario;
    procedure AbreTelaProduto;
    procedure AbreTelaCompra;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);

    procedure btnProdutosClick(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure btnComprasClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
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

uses UfrmUsuario,  UfrmPadrao;

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
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
  AbreTelaProduto;
end;


procedure TfrmPrincipal.AbreTelaCompra;
var
  ObjFrmCompra : TfrmCompra;
begin
  ObjFrmCompra := TfrmCompra.Create(nil);

  try
   ObjFrmCompra.ShowModal;
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

procedure TfrmPrincipal.AbreTelaUsuario;
var
  ObjFrmUsuario : TfrmUsuario;
begin
  ObjFrmUsuario := TfrmUsuario.Create(nil);

  try
    ObjFrmUsuario.ShowModal;
  finally
    ObjFrmUsuario.Free;
  end;
end;


procedure TfrmPrincipal.btnComprasClick(Sender: TObject);
begin
  AbreTelaCompra;
end;

procedure TfrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  AbreTelaProduto;
end;

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Deseja sair do sistema?', 'Sair',
  MB_ICONQUESTION + MB_YESNO) = mrYes then
   begin
     Application.Terminate;
   end

  else Abort;
end;

procedure TfrmPrincipal.btnUsuarioClick(Sender: TObject);
begin
  AbreTelaUsuario;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  // Insere dados no StatusBar
  StatusBar1.Panels[0].Text := DateToStr(Now);
  StatusBar1.Panels[1].Text := TimeToStr(Now);

end;

procedure TfrmPrincipal.Usurio1Click(Sender: TObject);
begin
  AbreTelaUsuario;
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

end.
