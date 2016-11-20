create table tab007(
nChave int identity(1,1) primary key,
tNome varchar(50) not null,
tSigla varchar(2) not null
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estados' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tab007'
GO