
CREATE TABLE tab001(
	nChave int IDENTITY(1,1) primary key NOT NULL,
	tNomeCompleto varchar(100) NOT NULL,
	lAtivo bit NOT NULL,
	dDataCadastro date NOT NULL,
	tLogin varchar(50) NOT NULL,
	tSenha varchar(100) NOT NULL,
	iFoto image NULL
); 

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Usuarios' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tab001'
GO