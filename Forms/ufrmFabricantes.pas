unit ufrmFabricantes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, Vcl.DBCtrls, Vcl.Mask, Vcl.StdCtrls,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmFabricantes = class(TfrmcadPadrao)
    lblNomeCompleto: TLabel;
    edtTDescricao: TDBEdit;
    lblLogradouro: TLabel;
    edtTLOGRADOURO: TDBEdit;
    mskdCep: TMaskEdit;
    cbbEstado: TDBLookupComboBox;
    lblUF: TLabel;
    lblCep: TLabel;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    lbl1: TLabel;
    mskdCNPJ: TMaskEdit;
    mskdIE: TMaskEdit;
    lbl2: TLabel;
    mskdTelefone: TMaskEdit;
    mskdFax: TMaskEdit;
    lblContato: TLabel;
    edtTCONTATO: TDBEdit;
    edtTEMAIL: TDBEdit;
    lblEmail: TLabel;
    lblTelefone: TLabel;
    lbl4: TLabel;
    qryEstados: TFDQuery;
    qryEstadosIDESTADO: TFDAutoIncField;
    fldEstadosTSIGLA: TStringField;
    dsEstados: TDataSource;
    qryPrincipalIDFABRICANTE: TFDAutoIncField;
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
  frmFabricantes: TfrmFabricantes;

implementation

{$R *.dfm}

procedure TfrmFabricantes.AtulizaCampos;
begin
  mskdCNPJ.ReadOnly := not StatusTabela.editando;
  mskdIE.ReadOnly := not StatusTabela.editando;
  mskdTelefone.ReadOnly := not StatusTabela.editando;
  mskdFax.ReadOnly := not StatusTabela.editando;
  mskdCep.ReadOnly := not StatusTabela.editando;
end;

procedure TfrmFabricantes.FormShow(Sender: TObject);
begin
  inherited;
  qryEstados.Open();
end;

procedure TfrmFabricantes.qryPrincipalAfterCancel(DataSet: TDataSet);
begin
  inherited;
   AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterEdit(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterInsert(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
end;

procedure TfrmFabricantes.qryPrincipalAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AtulizaCampos;
  mskdCNPJ.Text := qryPrincipal.FieldByName('TCNPJ').AsString;
  mskdIE.Text := qryPrincipal.FieldByName('TIE').AsString;
  mskdTelefone.Text:= qryPrincipal.FieldByName('TTELEFONE').AsString;
  mskdFax.Text := qryPrincipal.FieldByName('TFAX').AsString;
  mskdCep.Text := qryPrincipal.FieldByName('TCEP').AsString;
end;

procedure TfrmFabricantes.qryPrincipalBeforePost(DataSet: TDataSet);
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
