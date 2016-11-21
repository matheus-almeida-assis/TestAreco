unit ufrmUnidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmUnidades = class(TfrmcadPadrao)
    qryPrincipalIDUNIDADE: TFDAutoIncField;
    fldPrincipalTDESCRICAO: TStringField;
    fldPrincipalTSIGLA: TStringField;
    edtTDESCRICAO: TDBEdit;
    edtTSIGLA: TDBEdit;
    lblDescricao: TLabel;
    lblSigla: TLabel;
    procedure qryPrincipalBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnidades: TfrmUnidades;

implementation

{$R *.dfm}

procedure TfrmUnidades.qryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCampo(edtTDESCRICAO);
  ValidaCampo(edtTSIGLA);
end;

end.
