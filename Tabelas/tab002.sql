 CREATE TABLE TAB002
  (
     IDUNIDADE  INT IDENTITY(1, 1),
     TDESCRICAO VARCHAR(50) NOT NULL,
     TSIGLA     VARCHAR(2) NOT NULL,
	 
     CONSTRAINT PKUNIDADES PRIMARY KEY (IDUNIDADE)
  );

EXEC SYS.SP_ADDEXTENDEDPROPERTY
  @NAME=N'MS_DESCRIPTION',
  @VALUE=N'UNIDADES',
  @LEVEL0TYPE=N'SCHEMA',
  @LEVEL0NAME=N'DBO',
  @LEVEL1TYPE=N'TABLE',
  @LEVEL1NAME=N'TAB002'