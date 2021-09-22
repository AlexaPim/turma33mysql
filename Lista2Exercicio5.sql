create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    hidraulica varchar(255) not null,
    eletrica varchar(255) not null,
    decoracao varchar(255),
    primary key(id)
);

insert into tb_categoria(hidraulica, eletrica, decoracao)values ("casa","cozinha","quarto");
insert into tb_categoria(hidraulica, eletrica, decoracao)values ("casa","cozinha","quarto");
insert into tb_categoria(hidraulica, eletrica, decoracao)values ("casa","cozinha","quarto");
insert into tb_categoria(hidraulica, eletrica, decoracao)values ("casa","cozinha","quarto");
insert into tb_categoria(hidraulica, eletrica, decoracao)values ("casa","cozinha","quarto");

create table tb_produto(
	id bigint auto_increment,
    produto varchar(255),    
    outros varchar(255),
    preco decimal(10,2),
    primary key(id),
    fk_id_produto bigint,
	foreign key (fk_id_produto) references tb_produto(id)
);

insert into tb_produto(produto, outros, preco, fk_id_produto)values ("pia","lampada", 15.00, 1);
insert into tb_produto(produto, outros, preco, fk_id_produto)values ("","fio de cobre", 20.00, 2);
insert into tb_produto(produto, outros, preco, fk_id_produto)values ("banco","lampada led", 40.00, 3);
insert into tb_produto(produto, outros, preco, fk_id_produto)values ("torneira","bancada", 70.00, 4);
insert into tb_produto(produto, outros, preco, fk_id_produto)values ("fio","", 55.00, 5);
insert into tb_produto(produto, outros, preco, fk_id_produto)values ("quadro","", 25.00, 6);
insert into tb_produto(produto, outros, preco, fk_id_produto)values (" "," ", 0.00, 7);
insert into tb_produto(produto, outros, preco, fk_id_produto)values (" "," ", 0.00, 8);

select * from tb_produto;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where produto like "%c%" ; 

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto;

select * from tb_categoria inner join tb_produto 
on tb_produto.id = tb_produto.fk_id_produto
where fk_id_produto = 2;
