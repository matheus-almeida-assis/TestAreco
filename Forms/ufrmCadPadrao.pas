unit ufrmCadPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, ufrmBuscar;

type
TStatusTabela = record
		temAlgum: boolean;
		editando: boolean;
		novo: boolean;
	end;
  TfrmcadPadrao = class(TForm)
    pnl1: TPanel;
    pgcCadastro: TPageControl;
    tsCadastro: TTabSheet;
    tsConsulta: TTabSheet;
    grdConsulta: TDBGrid;
    qryPrincipal: TFDQuery;
    btnNovo: TBitBtn;
    dbnvgr1: TDBNavigator;
    dsPrincipal: TDataSource;
    btnBuscar: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qryPrincipalAfterInsert(DataSet: TDataSet);
    procedure qryPrincipalAfterEdit(DataSet: TDataSet);
    procedure qryPrincipalAfterCancel(DataSet: TDataSet);
    procedure qryPrincipalAfterDelete(DataSet: TDataSet);
    procedure qryPrincipalAfterPost(DataSet: TDataSet);
    procedure qryPrincipalAfterScroll(DataSet: TDataSet);
    procedure qryPrincipalAfterRefresh(DataSet: TDataSet);
    procedure qryPrincipalBeforeDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaControles();
  public
    { Public declarations }
    function StatusTabela() :TStatusTabela;
    procedure ValidaCampo(campo:TDBEdit);
  end;

var
  frmcadPadrao: TfrmcadPadrao;

implementation

uses
  uFuncs, uModuloDados;

{$R *.dfm}

procedure TfrmcadPadrao.AtualizaControles;
Var
  status :TStatusTabela;
begin
  ObterStatusTabela(qryPrincipal,status.temAlgum, status.editando, status.novo);
  btnGravar.Enabled := status.editando;
  btnNovo.Enabled := not status.editando;
  btnAlterar.Enabled := status.temAlgum and not status.editando;
  btnCancelar.Enabled := status.editando;
  btnExcluir.Enabled := status.temAlgum and not status.editando;
  btnBuscar.Enabled := status.temAlgum and not status.editando;
  tsConsulta.Enabled := status.temAlgum and not status.editando;
  dbnvgr1.Enabled := StatusTabela.temAlgum and not StatusTabela.editando;
end;

procedure TfrmcadPadrao.btnAlterarClick(Sender: TObject);
begin
  qryPrincipal.Edit;
end;

procedure TfrmcadPadrao.btnBuscarClick(Sender: TObject);
var
  frmBuscar :TfrmBuscar;
begin
  frmBuscar := TfrmBuscar.Create(Self,qryPrincipal);
  try
    frmBuscar.ShowModal;
  finally
    frmBuscar.Free;
  end;
end;

procedure TfrmcadPadrao.btnCancelarClick(Sender: TObject);
begin
  qryPrincipal.Cancel;
end;

procedure TfrmcadPadrao.btnExcluirClick(Sender: TObject);
begin
  qryPrincipal.Delete;
end;

procedure TfrmcadPadrao.btnGravarClick(Sender: TObject);
begin
  qryPrincipal.Post;
end;

procedure TfrmcadPadrao.btnNovoClick(Sender: TObject);
begin
  qryPrincipal.Append;
end;

procedure TfrmcadPadrao.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmcadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if StatusTabela.editando then
  begin
    if MessageDlg('Deseja Salvar o registro?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      qryPrincipal.Post;
    end
    else
    begin
      qryPrincipal.Cancel;
    end;
  end;
end;

procedure TfrmcadPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
  begin
    Self.Close;
  end;
end;

procedure TfrmcadPadrao.FormShow(Sender: TObject);
begin
  qryPrincipal.Open;
end;

procedure TfrmcadPadrao.qryPrincipalAfterCancel(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterDelete(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterEdit(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterInsert(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterPost(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterRefresh(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalAfterScroll(DataSet: TDataSet);
begin
  AtualizaControles;
end;

procedure TfrmcadPadrao.qryPrincipalBeforeDelete(DataSet: TDataSet);
begin
  if MessageDlg('Excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
  begin
    Abort;
  end;
end;

function TfrmcadPadrao.StatusTabela: TStatusTabela;
Begin
	ObterStatusTabela(qryPrincipal, result.TemAlgum, result.Editando, result.Novo);
end;

procedure TfrmcadPadrao.ValidaCampo(campo:TDBEdit);
begin
  if trim(campo.DataSource.DataSet.FieldByName(campo.DataField).AsString) = string.Empty then
  begin
    MessageDlg('O campo deve ser preenchido.',mtInformation,[mbOK],0);
    campo.SetFocus;
    Abort;
  end;
end;

end.
