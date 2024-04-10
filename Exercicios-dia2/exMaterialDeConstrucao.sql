create database db_construindo_vidas;
use db_construindo_vidas;

-- CATEGORIAS
create table tb_categorias(
	id int auto_increment primary key,
    nome varchar(100) not null unique,
    descricao TEXT
);

insert into tb_categorias(nome, descricao)
values ("Material de Construção", "Tijolos, Cimentos, etc...");

insert into tb_categorias(nome, descricao)
values ("Tintas", "Tintas com cores derivadas");

insert into tb_categorias(nome, descricao)
values ("Banheiro", "Acessórios, Sanitários, etc..");

insert into tb_categorias(nome, descricao)
values ("Areas de serviços", "Gabinete com tanque, etc..");

insert into tb_categorias(nome, descricao)
values ("Cozinha", "Armários, Pias, etc..");


-- PRODUTOS
create table tb_produtos(
	id int auto_increment primary key,
    nome varchar(50) not null unique,
	preco decimal(10,2) not null,
    estoque int not null,
    id_categoria int not null,
    foreign key(id_categoria) references tb_categorias(id)
);

-- MATERIAIS 1
insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Cimento", 70.00, 100, 1);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Tijolo (unidade)", 2.00, 1000, 1);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Areia (Metro)", 189.00, 1000, 1);

-- TINTAS 2
insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Tinta Vermelha", 25.00, 100, 2);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Tinta Azul", 25.00, 100, 2);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Tinta Verde", 25.00, 100, 2);

-- BANHEIRO 3
insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Porta Sabonete", 35.99, 1002, 3);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Porta Toalha para Bancada", 39.99, 1002, 3);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Porta Shampoo", 49.99, 1002, 3);

-- AREAS DE SERVIÇO 4 
insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Gabinete com Tanque", 599.99, 2000, 4);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Mesa de Passar", 151.99, 2000, 4);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Porta Guarda Chuva", 268.99, 2000, 4);

-- COZINHA 5
insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Armario", 325.99, 1200, 5);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Pia", 299.99, 1200, 5);

insert into tb_produtos(nome, preco, estoque, id_categoria)
values("Talhares", 124.99, 1200, 5);

-- SELECTs
select * from tb_produtos;
select * from tb_categorias;

select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco between 70.00 and 150.00;
select * from tb_produtos where nome like "%C%";

select p.*, c.* from tb_produtos p inner join tb_categorias c on p.id_categoria = c.id;
select p.*, c.* from tb_produtos p inner join tb_categorias c on p.id_categoria = c.id where c.nome in ("tintas", "cozinha");
