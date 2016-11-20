
CREATE TABLE tab001(
	nChave int IDENTITY(1,1) primary key NOT NULL,
	tNomeCompleto varchar(100) NOT NULL,
	lAtivo bit NOT NULL,
	dDataCadastro date NOT NULL,
	tLogin varchar(50) NOT NULL,
	tSenha varchar(100) NOT NULL,
	iFoto image NULL
) 
