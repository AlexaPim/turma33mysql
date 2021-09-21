create database db_generation_game_online;
use db_generation_game_online;

create table tb_personagem(
	id bigint auto_increment,
	nome varchar(255),
    posição varchar(255),
    vida int,
    mana int,
    primary key(id)
);

insert into tb_personagem(nome, posição, vida, mana)
values("Nami", "bot", 100, 80);
insert into tb_personagem(nome, posição, vida, mana)
values("MF", "bot", 100, 60);
insert into tb_personagem(nome, posição, vida, mana)
values("Neeko", "mid", 80, 80);
insert into tb_personagem(nome, posição, vida, mana)
values("Nunu", "jg", 90, 50);
insert into tb_personagem(nome, posição, vida, mana)
values("Irelia", "top", 70, 50);
insert into tb_personagem(nome, posição, vida, mana)
values("Morg", "bot/mid", 100, 100);
insert into tb_personagem(nome, posição, vida, mana)
values("Kaisa", "bot", 100, 100);
insert into tb_personagem(nome, posição, vida, mana)
values("Blitão", "bot", 100, 100);
insert into tb_personagem(nome, posição, vida, mana)
values("Sona", "bot", 100, 100);

select * from tb_personagem;

create table tb_classe(
	id bigint auto_increment,
	nome varchar(255),
    poder varchar(255),
    origem varchar(255),
    primary key(id),
    fk_id_classe bigint,
	foreign key (fk_id_classe) references tb_classe(id)
);

insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("suporte", "Conjuradora das marés", "tribo Marai", 1);
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("atirador", "Metendo bala", "Bilgewater", 2);    
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("mago", "FLORESCER REPENTINO", "tribo vastaya", 3);     
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("tanque", "ZERO ABSOLUTO", "Notai", 4);
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("lutador", "SURTO DA LÂMINA", "Ionia", 5);    
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("mago", "LIGAÇÃO DAS TREVAS", "Monte Targon", 6); 
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("atirador", "EXPLORADORA DO VAZIO", "Vazio", 7);    
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("tanque", "PUXÃO BIÔNICO", "Zaun", 8);
insert into tb_classe(nome, poder, origem, fk_id_classe) 
	values("suporte", "ÁRIA DA PERSEVERANÇA", "Demacia", 9);    

select * from tb_classe;

select * from tb_personagem where nome like "%c%";

select * from tb_classe inner join tb_personagem on tb_personagem.id = tb_classe.fk_id_classe;

select * from tb_classe inner join tb_personagem on tb_personagem.id = tb_classe.fk_id_classe
where fk_id_classe = 3;