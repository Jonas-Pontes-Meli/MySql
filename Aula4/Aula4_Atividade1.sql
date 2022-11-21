drop database db_generation_game_online;
create database db_generation_game_online;
use db_generation_game_online;
create table  tb_classes(id int not null auto_increment,tipo varchar(100),mana int, primary key(id));
create table  tb_personagens(
id int not null auto_increment,
nome varchar(100),
arma varchar(100),
ataque int,
defesa int,
classes_id int,
primary key(id),
 FOREIGN KEY (classes_id) REFERENCES tb_classes (id));
 insert into tb_classes (id,tipo,mana) values(null,"Arqueiro",800);
 insert into tb_classes (id,tipo,mana) values(null,"Cavaleiro",800);
 insert into tb_classes (id,tipo,mana) values(null,"Sabre",800);
 insert into tb_classes (id,tipo,mana) values(null,"mago",800);
 insert into tb_classes (id,tipo,mana) values(null,"lanceiro",800);

insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Gilgamesh","Gate of Babilon",2700,3000,1);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Arturia","Excalibur",3000,3000,3);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Skandar"," ‎Ionioi Hetairo",2500,3000,2);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Coculain","Gáe Bolg",2700,3000,5);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Medusa","Galahad Bellerophon",2400,1800,2);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Emya guardian","Catherine Wheel",32000,3000,1);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Siegfried","Balmung e Armor of Fafnir",1900,3000,3);
insert into tb_personagens (id,nome,arma,ataque,defesa,classes_id) values (null,"Jeanne d'Arc","La Pucelle",2700,3000,5);
select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like ("%C%");
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id ;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id and tb_classes.tipo = "arqueiro" ;

