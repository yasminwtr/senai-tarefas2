drop database if exists exercicio13;

create database exercicio13;

use exercicio13;

create table pedido(
idPedido int not null auto_increment,
nomeCliente varchar(45),
hora time,
data date, 
primary key (idPedido)
);

create table produto(
idProduto int not null auto_increment,
nome varchar(45),
preco int,
primary key (idProduto)
);

create table produto_vendido(
idPedido int not null,
idProduto int not null,
primary key (idPedido, idProduto),
foreign key (idPedido) references pedido (idPedido),
foreign key (idProduto) references produto (idProduto)
);
