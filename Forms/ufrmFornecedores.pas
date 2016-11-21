unit ufrmFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmFornecedores = class(TfrmcadPadrao)
    qryPrincipalIDFORNECEDOR: TFDAutoIncField;
    fldPrincipalTDESCRICAO: TStringField;
    fldPrincipalTLOGRADOURO: TStringField;
    qryPrincipalNESTADO: TIntegerField;
    fldPrincipalTCNPJ: TStringField;
    fldPrincipalTIE: TStringField;
    fldPrincipalTTELEFONE: TStringField;
    fldPrincipalTFAX: TStringField;
    fldPrincipalTCEP: TStringField;
    fldPrincipalTCIDADE: TStringField;
    fldPrincipalTCONTATO: TStringField;
    fldPrincipalTEMAIL: TStringField;
    edtTDescricao: TDBEdit;
    edtTLOGRADOURO: TDBEdit;
    edtCidade: TDBEdit;
    cbbEstado: TDBLookupComboBox;
    qryEstados: TFDQuery;
    dsEstados: TDataSource;
    qryEstadosIDESTADO: TFDAutoIncField;
    fldEstadosTSIGLA: TStringField;
    lblNomeCompleto: TLabel;
    lblLogradouro: TLabel;
    lblCidade: TLabel;
    lblUF: TLabel;
    mskdCNPJ: TMaskEdit;
    mskdIE: TMaskEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    mskdTelefone: TMaskEdit;
    mskdFax: TMaskEdit;
    lblTelefone: TLabel;
    lbl4: TLabel;
    mskdCep: TMaskEdit;
    lblCep: TLabel;
    edtTCONTATO: TDBEdit;
    edtTEMAIL: TDBEdit;
    lblContato: TLabel;
    lblEmail: TLabel;
    procedure qryPrincipalAfterScroll(DataSet: TDataSet);
    procedure qryPrincipalBeforePost(DataSet: TDataSet);
    procedure qryPrincipalAfterRefresh(DataSet: TDataSet);
    procedure qryPrincipalAfterPost(DataSet: TDataSet);
    procedure qryPrincipalAfterInsert(DataSet: TDataSet);
    procedure qryPrincipalAfterEdit(DataSet: TDataSet);
    procedure qryPrincipalAfterDelete(DataSet: TDataSet);
    procedure qryPrincipalAfterCancel(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure AtulizaCampos();
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

uses
  uModuloDados;

{$R *.dfm}

{ TfrmFornecedores }

procedure TfrmFornecedores.AtulizaCampos;
begin
  mskdCNPJ.ReadOnly := not StatusTabela.editando;
  mskdIE.ReadOnly := not StatusTabela.editando;
  mskdTelefone.ReadOnly := not StatusTabela.editando;
  mskdFax.ReadOnly := not StatusTabela.editando;
  mskdCep.ReadOnly := not StatusTabela.editando;
end;

procedure TfrmFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  qryEstados.Open();
end;

procedure TfrmFornecedores.qryPrincipalAfterCancel(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterEdit(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFornecedores.qryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
  mskdCNPJ.Text := qryPrincipal.FieldByName('TCNPJ').AsString;
  mskdIE.Text := qryPrincipal.FieldByName('TIE').AsString;
  mskdTelefone.Text:= qryPrincipal.FieldByName('TTELEFONE').AsString;
  mskdFax.Text := qryPrincipal.FieldByName('TFAX').AsString;
  mskdCep.Text := qryPrincipal.FieldByName('TCEP').AsString;
end;

procedure TfrmFornecedores.qryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCampo(edtTDescricao);
  ValidaCampo(edtTLOGRADOURO);
  ValidaCampo(edtCidade);
  ValidaCampo(edtTCONTATO);
  ValidaCampo(edtTEMAIL);
  ValidaCampo(TEdit(mskdCNPJ));
  ValidaCampo(TEdit(mskdIE));
  ValidaCampo(TEdit(mskdTelefone));
  ValidaCampo(TEdit(mskdCep));
  qryPrincipal.FieldByName('TCNPJ').AsString :=  mskdCNPJ.Text;
  qryPrincipal.FieldByName('TIE').AsString := mskdIE.Text;
  qryPrincipal.FieldByName('TTELEFONE').AsString := mskdTelefone.Text;
  qryPrincipal.FieldByName('TFAX').AsString :=  mskdFax.Text;
  qryPrincipal.FieldByName('TCEP').AsString := mskdCep.Text;
end;

end.
