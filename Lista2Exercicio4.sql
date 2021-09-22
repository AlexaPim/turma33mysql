create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    bovina varchar(255) not null,
    suina varchar(255) not null,
    aves varchar(255),
    primary key(id)
);

insert into tb_categoria(bovina, suina, aves) values("sim", "não", "não");
insert into tb_categoria(bovina, suina, aves) values("sim", "não", "não");
insert into tb_categoria(bovina, suina, aves) values("não", "sim", "não");
insert into tb_categoria(bovina, suina, aves) values("não", "sim", "não");
insert into tb_categoria(bovina, suina, aves) values("não", "não", "sim");
insert into tb_categoria(bovina, suina, aves) values("sim", "não", "não");
insert into tb_categoria(bovina, suina, aves) values("sim", "não", "não");
insert into tb_categoria(bovina, suina, aves) values("sim", "não", "não");

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    carne varchar(255),
    tipo_de_corte varchar(255),
    validade date not null,
    outros varchar(255),
    preco decimal(10,2),
    primary key(id),
    fk_id_produto bigint,
	foreign key (fk_id_produto) references tb_produto(id)
);

insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("Coxão duro", "em bife", "2021/09/25"," ", 35.00, 1);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("Coxão mole", "em bife", "2021/09/25"," ", 35.00, 2);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("rabo", "pedaço", "2021/09/25"," ", 25.00, 3);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("lingua", "pedaço", "2021/09/25"," ", 20.00, 4);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("asinha", "pedaço", "2021/09/25"," ", 15.00, 5);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("bife paris", "pedaço", "2021/09/25"," ", 30.00, 6);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("Coxão mole", "peça", "2021/09/25"," ", 32.00, 7);
insert into tb_produto (carne, tipo_de_corte, validade, outros, preco, fk_id_produto) 
values ("Coxão duro", "peça", "2021/09/25"," ", 32.00, 8);

select * from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where carne like "%c%" ;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto
where fk_id_produto = 2;

