create table tab002(
nChave int identity(1,1) primary key,
tDescricao varchar(50) not null,
tSigla varchar(2) not null
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidades' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tab002'
GO