unit ufrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TfrmUsuarios = class(TfrmcadPadrao)
    edtTNOMECOMPLETO: TDBEdit;
    lblNomeCompleto: TLabel;
    chkAtivo: TDBCheckBox;
    lblLogin: TLabel;
    edtTLOGIN: TDBEdit;
    edtTSENHA: TDBEdit;
    lblSenha: TLabel;
    qryPrincipalIDUSUARIO: TFDAutoIncField;
    fldPrincipalTNOMECOMPLETO: TStringField;
    qryPrincipalLATIVO: TBooleanField;
    qryPrincipalDDATACADASTRO: TDateField;
    fldPrincipalTLOGIN: TStringField;
    fldPrincipalTSENHA: TStringField;
    procedure qryPrincipalAfterCancel(DataSet: TDataSet);
    procedure qryPrincipalAfterDelete(DataSet: TDataSet);
    procedure qryPrincipalAfterEdit(DataSet: TDataSet);
    procedure qryPrincipalAfterInsert(DataSet: TDataSet);
    procedure qryPrincipalAfterPost(DataSet: TDataSet);
    procedure qryPrincipalAfterRefresh(DataSet: TDataSet);
    procedure qryPrincipalAfterScroll(DataSet: TDataSet);
    procedure qryPrincipalBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AtulizaComponentes();
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses
  uFuncs;

{$R *.dfm}

procedure TfrmUsuarios.AtulizaComponentes;
begin
  if StatusTabela.novo then
  begin
    qryPrincipal.FieldByName('LAtivo').AsBoolean :=True;
  end;
end;

procedure TfrmUsuarios.qryPrincipalAfterCancel(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes
end;

procedure TfrmUsuarios.qryPrincipalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes
end;

procedure TfrmUsuarios.qryPrincipalAfterEdit(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes
end;

procedure TfrmUsuarios.qryPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes
end;

procedure TfrmUsuarios.qryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes;
end;

procedure TfrmUsuarios.qryPrincipalAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes;
end;

procedure TfrmUsuarios.qryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtulizaComponentes;
end;

procedure TfrmUsuarios.qryPrincipalBeforePost(DataSet: TDataSet);
var
  vArquivo: TFileStream;
begin
  inherited;
  ValidaCampo(edtTNOMECOMPLETO);
  ValidaCampo(edtTLOGIN);
  ValidaCampo(edtTSENHA);
  qryPrincipal.FieldByName('DDATACADASTRO').AsDateTime := Date;
end;

end.
