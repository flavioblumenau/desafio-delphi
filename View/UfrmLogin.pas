unit UfrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    BLogar: TSpeedButton;
    BCancelar: TSpeedButton;
    imFundo: TImage;
    Panel2: TPanel;
    qryPadrao: TFDQuery;
    EUsuario: TEdit;
    ESenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BLogarClick(Sender: TObject);
    procedure BCancelarClick(Sender: TObject);
    procedure ESenhaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EUsuarioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
     tentativas : Smallint;
    function loginValido(const usuario, senha: String): Boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmLogin.BCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmLogin.BLogarClick(Sender: TObject);
begin
  // Verifica se o campo "Usuário" foi preenchido
	if (EUsuario.Text = '') then
	begin
		Messagedlg('O campo "Usuário" deve ser preenchido!', mtInformation, [mbOk], 0);
		if EUsuario.CanFocus then
		EUsuario.SetFocus;
		Exit;
	end;
  // Verifica se o campo "Senha" foi preenchido
  if (ESenha.Text = '') then
		begin
		Messagedlg('O campo "Senha" deve ser preenchido!', mtInformation, [mbOk], 0);
		if ESenha.CanFocus then
		ESenha.SetFocus;
		Exit;
	end;
		if loginValido(EUsuario.Text, ESenha.Text) then //Verifica se o login é válido
		ModalResult := mrOk
		else
  // Caso o login não seja válido então
	begin
    // Incrementa em 1 o valor da variável tentativas
		inc(tentativas);
		if tentativas < 3 then
	begin
		MessageDlg(Format('Tentativa %d de 3', [tentativas]), mtError, [mbOk], 0);
		if ESenha.CanFocus then
		ESenha.SetFocus;
	end
	else
	begin
		MessageDlg(Format('%dª tentativa de acesso ao sistema.',
		[tentativas]) + #13 + 'A aplicação será fechada!', mtError, [mbOk], 0);
		ModalResult := mrCancel;
		end;
	end;
end;

procedure TfrmLogin.ESenhaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then bLogar.Click;
end;

procedure TfrmLogin.EUsuarioKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then ESenha.SetFocus;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  imFundo.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+ '../Imagens/gradient.bmp');
  imFundo.Stretch := true;
  imFundo.SendToBack;
end;

function TFrmLogin.loginValido(const usuario, senha : String) : Boolean;
begin
    with DM.Conexao, qryPadrao do
    begin
      if not Connected then //Caso o componente ConLOGIN não esteja conectado ao BD
        Connected := True;
      Close;
      Sql.Text := 'SELECT COUNT(1) FROM USUARIO ' +
        ' WHERE NOME =  :p1 ' +
        ' AND SENHA = :p2 ';
      ParamByName('p1').AsString := usuario;
      ParamByName('p2').AsString := senha;
      Open;
      Result := (Fields[0].AsInteger > 0);
   end;
end;

end.
