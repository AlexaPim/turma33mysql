create database db_pizzaria_legal;
use db_pizzaria_legal;
/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as informações dos produtos desta empresa. 

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga  exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de criar a foreign key de tb_categoria nesta tabela).
*/

create table tb_categoria(
	id bigint auto_increment,
	entrega varchar(255),
    noLocal varchar(255),
    paraLevar varchar(255),
    primary key(id)
);

insert into tb_categoria(entrega, noLocal, paraLevar) values("sim","não", "não");
insert into tb_categoria(entrega, noLocal, paraLevar) values("não","não", "não");
insert into tb_categoria(entrega, noLocal, paraLevar) values("sim","não", "sim");
insert into tb_categoria(entrega, noLocal, paraLevar) values("não","sim", "não");
insert into tb_categoria(entrega, noLocal, paraLevar) values("sim","sim", "sim");

select * from tb_categoria;

create table tb_produto(
	id bigint auto_increment,
    sabor varchar(255),
    tamanho varchar(255),
    meia_a_meia boolean,
    borda boolean,
    primary key(id),
    fk_id_produto bigint,
	foreign key (fk_id_produto) references tb_produto(id)
);

select * from tb_produto;

alter table tb_produto ADD valor decimal(10,2); 

insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("mussarela", "grande", false, false, 28.00, 1);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("calabresa", "grande", false, true, 28.00, 2);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("camarão", "grande", false, false, 70.00, 3);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("atum e portuguesa", "media", true, false, 68.00, 4);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("portuguesa", "media", false, false, 50.00, 5);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("mussarela e calabresa", "pequena", true, true, 20.00, 6);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("brócolis", "pequena", true, false, 30.00, 7);
insert into tb_produto (sabor, tamanho, meia_a_meia, borda, valor, fk_id_produto) 
values ("atum", "grande", false, false, 68.00, 8);

select * from tb_produto;

select * from tb_produto where valor > 45.00;
select * from tb_produto where valor between 29.00 and 60.00;
select * from tb_produto where sabor like "%c%" ;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto
where fk_id_produto = 3;


