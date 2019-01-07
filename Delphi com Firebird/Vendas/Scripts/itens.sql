/* TABELA DE ITENS */
create table itens
(nrvenda integer not null,
nritem integer not null,
cdproduto integer not null,
qtvenda decimal(16,2) not null,
vlproduto decimal(16,2) not null,
constraint pkitens primary key(nrvenda,nritem),
constraint fkitensvendas foreign key(nrvenda)
references vendas(nrvenda),
constraint fkitensprodutos foreign key(cdproduto)
references produtos(cdproduto));
