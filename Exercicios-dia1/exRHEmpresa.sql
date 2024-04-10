create database db_rhEmpresa;
use db_rhEmpresa;

-- TABELA
create table tb_colaboradores(
	id int auto_increment primary key,
    nome varchar(100) not null,
    idade int not null,
    cargo varchar(50) not null,
    salario decimal (10,2),
    turno varchar(50) not null,
    CONSTRAINT chk_turno CHECK (turno IN ('Noturno', 'Diurno')) 
    -- Pensei em colocar turno como BOOLEAN mas nao achei legal, pesquisei e encontrei essa maneira de fazer validação!
);

-- INSERTs
insert into tb_colaboradores(nome, idade, cargo, salario, turno)
values("Vinicios", 18, "Desenvolvedor Full-Stack", 2500.00, "Diurno");

insert into tb_colaboradores(nome, idade, cargo, salario, turno)
values("Gabriel", 19, "Desenvolvedor Front-End", 2000.00, "Diurno");

insert into tb_colaboradores(nome, idade, cargo, salario, turno)
values("Oliveira", 18, "Desenvolvedor Back-End", 2300.00, "Diurno");

insert into tb_colaboradores(nome, idade, cargo, salario, turno)
values("Macedo", 18, "Desenvolvedor Mobile", 3500.00, "Diurno");

insert into tb_colaboradores(nome, idade, cargo, salario, turno)
values("Roger", 18, "Vigilante", 1700.00, "Noturno");

-- SELECTs
select * from tb_colaboradores;
select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00;

-- UPDATE
update tb_colaboradores set turno = "Noturno" where id = 1;
update tb_colaboradores set turno = "Diurno" where id = 1;



