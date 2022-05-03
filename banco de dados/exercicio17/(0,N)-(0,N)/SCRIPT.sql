drop database if exists exercicio17;
 
 create database exercicio17;
 
 use exercicio17;
 
 create table usuario(
	id_usuario int  not null auto_increment,
    nome varchar(100),
    login varchar(45),
    qtd_compras int,
     primary key(id_usuario)
);
 
 create table produto (
	id_produto int not null,
    nome_produto varchar(45),
    data_compra date,
    valor_produto int,
    primary key (id_produto)
 );
 
 create table comprar (
 id_usuario int not null,
 id_produto int not null,
 primary key (id_usuario, id_produto),
 foreign key (id_usuario) references usuario (id_usuario),
 foreign key (id_produto) references produto (id_produto)
 );
 