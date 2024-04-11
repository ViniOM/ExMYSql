create database db_cidade_das_carnes;
use db_cidade_das_carnes;

-- TABLEs
create table tb_categorias(
    id int auto_increment primary key,
    nome varchar(50) not null,
    descricao text
);

create table tb_produtos(
    id int auto_increment primary key,
    nome varchar(50) not null,
    descricao TEXT,
    preco decimal not null,
    estoque int not null,
    id_categoria int not null,
    foreign key (id_categoria) references tb_categorias(id)
);

-- INSERTs
insert into tb_categorias(nome, descricao) 
values ('Bovina', "Carne de Vaca");

insert into tb_categorias(nome, descricao) 
values ('Suina', "Carne de Porco");

insert into tb_categorias(nome, descricao) 
values ('Suina', "Carne de Porco");

insert into tb_categorias(nome, descricao) 
values ('Carne Branca', "Carne de frango, pato, peru, ganso e peixes.");

insert into tb_categorias(nome, descricao) 
values ('Carne Vermelha', "Carnes Vermelhas");

insert into tb_categorias(nome, descricao) 
values ('Utilitarios', "Utilitarios para churrasco");

insert into tb_produtos(nome, descricao, preco, estoque, id_categoria)
values ("Garfo", "Garfo grande para espetar a carne na churrasqueira", 14.99, 100, 7);

insert into tb_produtos(nome, descricao, preco, estoque, id_categoria)
values ("Bacon", "Melhor parte do porco", 9.99, 50, 2);

insert into tb_produtos(nome, descricao, preco, estoque, id_categoria)
values ("Picanha", "A mais amada", 59.99, 10, 1);

insert into tb_produtos(nome, descricao, preco, estoque, id_categoria)
values ("Churrasqueira", "Da brasa", 249.99, 5, 7);

-- SELECTs
select * from tb_categorias;

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 50.00 and 300.00; -- No exercicio esta 150, porém da no mesmo.

select * from tb_produtos where nome like "%C%";

select p.*, c.* from tb_produtos p inner join tb_categorias c ON p.id_categoria = c.id;

SELECT p.*, c.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.id_categoria = c.id WHERE c.nome IN ('Utilitarios');
