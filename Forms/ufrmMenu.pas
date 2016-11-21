unit ufrmMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmMenu = class(TForm)
    mmuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Fornecedores2: TMenuItem;
    Fabricantes1: TMenuItem;
    N1: TMenuItem;
    Produtos1: TMenuItem;
    Configuraes1: TMenuItem;
    Usuarios1: TMenuItem;
    Estados1: TMenuItem;
    CadastrosdeProdutos1: TMenuItem;
    Grupos1: TMenuItem;
    Unidades1: TMenuItem;
    Sair1: TMenuItem;
    Finalizar1: TMenuItem;
    rocardeUsuario1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

uses
  ufrmLogin, ufrmUsuarios;

{$R *.dfm}

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
var
  frmLogin:TfrmLogin;
begin
  frmLogin := TfrmLogin.Create(Self);
  try
    frmLogin.ShowModal;
  finally
    frmLogin.Free;
  end;

end;
procedure TfrmMenu.Usuarios1Click(Sender: TObject);
var
  frmUsuarios :TfrmUsuarios;
begin
  frmUsuarios := TfrmUsuarios.Create(Self);
  try
    frmUsuarios.ShowModal;
  finally
    frmUsuarios.Free;
  end;
end;

end.
