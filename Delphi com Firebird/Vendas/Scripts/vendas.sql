/* TABELA DE VENDAS */
create table vendas
(nrvenda integer not null,
dtvenda date not null,
cdcliente integer not null,
cdvendedor integer not null,
constraint pkvendas primary key(nrvenda),
constraint fkvendasclientes foreign key(cdcliente)
references clientes(cdcliente),
constraint fkvendasvendedores foreign key(cdvendedor)
references vendedores(cdvendedor));
