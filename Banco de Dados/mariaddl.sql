create database sistema_vendas_online;

use sistema_vendas_online;

create table cliente (
   id int auto_increment primary key,
    nome varchar(255),
    endereco varchar(255),
    email varchar(255),
    celular varchar(255),
    data_nascimento date
);

create table produtos (
    id int auto_increment primary key,
    nome varchar(255),
    preco decimal(10, 2),
    descricao text,
    quantidadeestoque int
);

create table pedido (
    numerodo_pedido int auto_increment primary key,
    id_cliente int,
    datacompra date,
    valortotal decimal(10, 2),
  datadeentrega date,
    foreign key (id_cliente) references cliente(id)
);

create table itens (
    id int auto_increment primary key,
    numerodo_pedido int,
    id_produto int,
    quantidade int,
    valorunitario decimal(10, 2),
    valortotal decimal(10, 2),
    foreign key (numerodo_pedido) references pedido(numerodo_pedido),
    foreign key (id_produto) references produtos(id)
);