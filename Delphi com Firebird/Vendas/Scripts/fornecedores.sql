/* TABELA DE FORNECEDORES */
create table fornecedores
(cdfornecedor integer not null,
dcfornecedor varchar(30),
endereco varchar(40),
bairro varchar(20),
cidade varchar(20),
telefone varchar(10),
cep varchar(8),
constraint pkfornecedores primary key(cdfornecedor));
