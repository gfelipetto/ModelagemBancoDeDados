create database controleMercado;
use controleMercado;

create table Fornecedor(
id int not null auto_increment primary key,
nome varchar(45),
contato varchar(10),
endereco varchar(45),
cep varchar(10),
cnpj varchar(45)
);

create table Produto(
id int not null auto_increment primary key,
nome varchar(45),
preco decimal,
codigo int,
categoria varchar(45)
);

create table Estoque(
id int not null auto_increment primary key,
quantidade int,
valor_unitario decimal
);

create table Cliente(
id int not null auto_increment primary key,
nome varchar(45),
contato varchar(45),
endereco varchar(45),
cep varchar(45)
);

create table Venda(
id int not null auto_increment primary key,
valor_total decimal
);

create table Fornecedor_Produto(
id_fornecedor int not null,
id_produto int not null,
foreign key (id_fornecedor) references Fornecedor(id) on update cascade on delete cascade,
foreign key (id_produto) references Produto(id) on update cascade on delete cascade
);

create table Produto_Estoque(
id_produto int not null,
id_estoque int not null,
foreign key (id_produto) references Produto(id) on update cascade on delete cascade,
foreign key (id_estoque) references Estoque(id) on update cascade on delete cascade
);

create table Produto_Vendas(
id_produto int not null,
id_venda int not null,
preco decimal,
quantidade int,
foreign key (id_produto) references Produto(id) on update cascade on delete cascade,
foreign key (id_venda) references Venda(id) on update cascade on delete cascade
);

create table Venda_Cliente(
id_venda int not null,
id_cliente int not null,
foreign key (id_venda) references Venda(id) on update cascade on delete cascade,
foreign key (id_cliente) references Cliente(id) on update cascade on delete cascade
);