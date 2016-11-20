create table tab004(
nChave int identity(1,1) primary key,
tDescricao varchar(100) not null,
tLogradouro varchar(200) not null,
nEstado int not null,
tCNPJ varchar(20) not null,
tIE varchar(20) not null,
tTelefone varchar(20) not null,
tFax varchar(20) null,
tCep varchar(10) not null,
tCidade varchar(50) not null,
tContato varchar(100) not null,
temail varchar(200) null
)