 CREATE TABLE TAB005
  (
     IDFABRICANTE INT IDENTITY(1, 1),
     TDESCRICAO   VARCHAR(100) NOT NULL,
     TLOGRADOURO  VARCHAR(200) NOT NULL,
     NESTADO      INT NOT NULL,
     TCNPJ        VARCHAR(20) NOT NULL,
     TIE          VARCHAR(20) NOT NULL,
     TTELEFONE    VARCHAR(20) NOT NULL,
     TFAX         VARCHAR(20) NULL,
     TCEP         VARCHAR(10) NOT NULL,
     TCIDADE      VARCHAR(50) NOT NULL,
     TCONTATO     VARCHAR(100) NOT NULL,
     TEMAIL       VARCHAR(200) NULL,
     CONSTRAINT PKFABRICANTES PRIMARY KEY (IDFABRICANTE),
     CONSTRAINT FKESTADOS_FABRICANTES FOREIGN KEY (NESTADO) 
	                           REFERENCES TAB003 (IDESTADO)
  );

EXEC SYS.SP_ADDEXTENDEDPROPERTY
  @NAME=N'MS_DESCRIPTION',
  @VALUE=N'FABRICANTES',
  @LEVEL0TYPE=N'SCHEMA',
  @LEVEL0NAME=N'DBO',
  @LEVEL1TYPE=N'TABLE',
  @LEVEL1NAME=N'TAB005'  