
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
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Produtos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tab006'
GO
