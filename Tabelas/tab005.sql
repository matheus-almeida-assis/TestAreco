create table tab005(
nChave int identity(1,1) primary key,
tDescricao varchar(100) not null
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grupos' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tab005'
GO