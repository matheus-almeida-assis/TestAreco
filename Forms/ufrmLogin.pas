unit ufrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  FireDAC.Phys.ODBCBase, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    edtLogin: TEdit;
    edtSenha: TEdit;
    lblLogin: TLabel;
    lblSenha: TLabel;
    qryLogin: TFDQuery;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    qryLoginIDUSUARIO: TFDAutoIncField;
    fldLoginTNOMECOMPLETO: TStringField;
    qryLoginLATIVO: TBooleanField;
    qryLoginDDATACADASTRO: TDateField;
    fldLoginTLOGIN: TStringField;
    fldLoginTSENHA: TStringField;
    procedure edtLoginExit(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    entrou: Boolean;
  public
    { Public declarations }
    function UsuarioLogado():Integer;
  end;

implementation

uses
  uFuncs, uModuloDados;

{$R *.dfm}

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin
  if edtSenha.Text <> string.Empty then
  begin
    if edtSenha.Text = qryLogin.FieldByName('TSENHA').AsString then
    begin
      entrou := True;
      Self.Close;
    end
    else
    begin
      MessageDlg('Senha incorreta',mtInformation,[mbOK],0);
      edtSenha.Text :='';
      edtSenha.SetFocus;
    end;
  end;
end;

procedure TfrmLogin.edtLoginExit(Sender: TObject);
begin
  if edtLogin.Text <> string.Empty then
  begin
    qryLogin.Close;
    qryLogin.ParamByName('login').AsString:= Trim(edtLogin.Text);
    qryLogin.Open();
    if qryLogin.RecordCount = 1 then
    begin
      edtSenha.ReadOnly := False;
    end
    else
    begin
      MessageDlg('Usuario incorreto',mtInformation,[mbOK],0);
      edtLogin.SetFocus;
      edtSenha.ReadOnly := True;
    end;
  end;
end;

procedure TfrmLogin.edtSenhaChange(Sender: TObject);
begin
  if edtLogin.Text <> string.Empty then
  begin
    btnEntrar.Enabled := True;
  end
  else
  begin
    btnEntrar.Enabled := False;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if entrou = False then
  begin
    Application.Terminate;
  end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  entrou := False;
end;

function TfrmLogin.UsuarioLogado: Integer;
begin
  if entrou then
  begin
    Result:= qryLogin.FieldByName('IDUSUARIO').AsInteger;
  end
  else
  begin
    Result := 0;
  end;
end;

end.
