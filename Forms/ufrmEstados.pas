unit ufrmEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadPadrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmEstados = class(TfrmcadPadrao)
    qryPrincipalIDESTADO: TFDAutoIncField;
    fldPrincipalTNOME: TStringField;
    fldPrincipalTSIGLA: TStringField;
    edtTDESCRICAO: TDBEdit;
    lblDescricao: TLabel;
    lblSigla: TLabel;
    edtTSIGLA: TDBEdit;
    procedure qryPrincipalBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstados: TfrmEstados;

implementation

{$R *.dfm}

procedure TfrmEstados.qryPrincipalBeforePost(DataSet: TDataSet);
begin
  inherited;
  ValidaCampo(edtTDESCRICAO);
  ValidaCampo(edtTSIGLA);
end;

end.
