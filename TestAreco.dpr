program TestAreco;

uses
  Vcl.Forms,
  ufrmMenu in 'Forms\ufrmMenu.pas' {frmMenu},
  ufrmCadPadrao in 'Forms\ufrmCadPadrao.pas' {frmcadPadrao},
  ufrmLogin in 'Forms\ufrmLogin.pas' {frmLogin},
  ufrmUsuarios in 'Forms\ufrmUsuarios.pas' {frmUsuarios},
  uFuncs in 'Classes\uFuncs.pas',
  ufrmBuscar in 'Forms\ufrmBuscar.pas' {frmBuscar},
  uModuloDados in 'Shared\uModuloDados.pas' {ModuloDados: TDataModule},
  ufrmUnidades in 'Forms\ufrmUnidades.pas' {frmUnidades},
  ufrmEstados in 'Forms\ufrmEstados.pas' {frmEstados},
  ufrmFornecedores in 'Forms\ufrmFornecedores.pas' {frmFornecedores},
  ufrmFabricantes in 'Forms\ufrmFabricantes.pas' {frmFabricantes},
  ufrmGrupos in 'Forms\ufrmGrupos.pas' {frmGrupo},
  ufrmProdutos in 'Forms\ufrmProdutos.pas' {frmProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TModuloDados, ModuloDados);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmUnidades, frmUnidades);
  Application.CreateForm(TfrmEstados, frmEstados);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmFabricantes, frmFabricantes);
  Application.CreateForm(TfrmGrupo, frmGrupo);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.Run;
end.
