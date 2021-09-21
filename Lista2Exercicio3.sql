create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    entrega boolean,
    primary key (id)
);

insert into tb_categoria(nome, preco, entrega) values("Dor de cabeça", 30.00, true);
insert into tb_categoria(nome, preco, entrega) values("Alergia", 40.00, true);
insert into tb_categoria(nome, preco, entrega) values("Asma", 150.00, false);
insert into tb_categoria(nome, preco, entrega) values("febre", 15.00, true);
insert into tb_categoria(nome, preco, entrega) values("Dor muscular", 10.00, true);
insert into tb_categoria(nome, preco, entrega) values("cólica", 20.00, true);

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    Dipirona varchar(255),
    Celerg varchar(255),
    Fostair varchar(255),
    Dorflex varchar(255),
    Buscopan varchar (255),
    primary key(id),
    fk_id_produto bigint,
	foreign key (fk_id_produto) references tb_produto(id)
);

insert into tb_produto (Dipirona, fk_id_produto) 
values ("Dipirona", 1);
insert into tb_produto (Celerg, fk_id_produto) 
values ("Celerg", 2);
insert into tb_produto (Fostair, fk_id_produto) 
values ("Fostair", 3);
insert into tb_produto (Dorflex, fk_id_produto) 
values ("Dorflex", 4);
insert into tb_produto (Buscopan, fk_id_produto) 
values ("Buscopan", 5);

select * from tb_produto;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto;
select * from tb_categoria where preco > 50.00;
select * from tb_categoria where preco between 3.00 and 60.00;
select * from tb_categoria where nome like "%b%" ;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto
where fk_id_produto >= 3;
