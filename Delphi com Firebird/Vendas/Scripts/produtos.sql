/* TABELA DE PRODUTOS */
create table produtos
(cdproduto integer not null,
dcproduto varchar(30),
vlproduto decimal(16,2),
qtestoque decimal(16,2),
qtminima decimal(16,2),
cdfornecedor integer not null,
constraint pkprodutos primary key(cdproduto),
constraint fkprodutosfornecedores foreign key(cdfornecedor)
references fornecedores(cdfornecedor));
