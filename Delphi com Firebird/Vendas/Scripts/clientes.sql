/* TABELA DE CLIENTES */
create table clientes
(cdcliente integer not null,
dccliente varchar(30),
endereco varchar(40),
bairro varchar(20),
cidade varchar(20),
telefone varchar(10),
cep varchar(8),
constraint pkclientes primary key(cdcliente));
