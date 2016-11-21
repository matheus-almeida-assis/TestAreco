unit uFuncs;

interface

uses
  Data.DB, Vcl.Graphics, System.Classes, Vcl.ExtCtrls,Vcl.Forms,SysUtils,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

procedure ObterStatusTabela(Tabela: tdataset; Var TemRegistro, Editando, Novo :Boolean);


implementation

procedure ObterStatusTabela(Tabela: tdataset; Var TemRegistro, Editando, Novo:Boolean);
begin
  Novo := Tabela.State = dsInsert;
  Editando := Tabela.State in [dsEdit,dsInsert];
  TemRegistro := Tabela.RecordCount > 0;
end;

end.
