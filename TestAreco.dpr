program TestAreco;

uses
  Vcl.Forms,
  ufrmMenu in 'Forms\ufrmMenu.pas' {frmMenu},
  ufrmCadPadrao in 'Forms\ufrmCadPadrao.pas' {frmcadPadrao},
  ufrmLogin in 'Forms\ufrmLogin.pas' {frmLogin},
  ufrmUsuarios in 'Forms\ufrmUsuarios.pas' {frmUsuarios},
  uFuncs in 'Classes\uFuncs.pas',
  ufrmBuscar in 'Forms\ufrmBuscar.pas' {frmBuscar},
  uModuloDados in 'Shared\uModuloDados.pas' {ModuloDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TModuloDados, ModuloDados);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.Run;
end.
