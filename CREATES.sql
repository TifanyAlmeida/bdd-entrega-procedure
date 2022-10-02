CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE Produto(
	id_produto int not null auto_increment primary key,
    nome varchar(50) not null,
    qtd_estoque int not null,
    preco decimal not null
);

CREATE TABLE Pedido(
	id_pedido int not null auto_increment primary key,
    nome_cliente varchar(50) not null,
    valor_total decimal not null,
    hora_pedido datetime
);

CREATE TABLE PedidoItem(
	id_pedido_item int not null auto_increment primary key,
    qtd int not null,
    preco_unitario decimal not null,
    fk_produto int not null,
    fk_pedido int not null,
    FOREIGN KEY(fk_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY(fk_pedido) REFERENCES Pedido(id_pedido)
);
