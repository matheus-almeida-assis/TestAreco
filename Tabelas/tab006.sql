
CREATE TABLE tab006(
	nChave int identity(1,1) primary key,
	tCodigoBarras varchar(20) null,
	tDescricao varchar(200) not null,
	nGrupo int not null,
	nFabricante int not null,
	nFornecedor int not null,
	lAtivo bit not null,
	lMovimentaEstoque int not null,
	fEstoque float not null,
	nUnidade int not null,
	fEstoqueMin float null,
	fEstoqueMax float null,
	DataCadastro date not null,
	nUsuario int not null,
	iFoto image null
)
