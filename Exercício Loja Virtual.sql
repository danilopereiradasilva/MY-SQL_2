create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria
(
id bigint(5)auto_increment,
tipo varchar(30) not null,
ead boolean not null,
primary key (id)
);


insert into tb_categoria (tipo,ead) values ("ingles",true);
insert into tb_categoria (tipo,ead) values ("espanhol",true);
insert into tb_categoria (tipo,ead) values ("frances",false);
insert into tb_categoria (tipo,ead) values ("alemao",true);
insert into tb_categoria (tipo,ead) values ("chines",false);

create table tb_produtos
(
id bigint(5)auto_increment,
nome varchar(20) not null,
duracao varchar(20) not null,
turno varchar(20) not null,
certificado boolean not null,
valor float(4) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Ingles basico","12 meses","noturno",true,600.00,1);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Ingles intermediario","12 meses","manha",true,600.00,2);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Espanhol basico","4 meses","noturno",false, 300.00,3);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Espanhol intermediario","3 meses","noturno",true,300.00,4);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Frances basico","3 meses","manha",false,450.00,5);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Alemao basico","3 meses","manha",false,750.00,3);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Chines basico","3 meses","noturno",true,600.00,1);
insert into tb_produtos(nome,duracao,turno,certificado,valor,categoria_id) values ("Chines intermediario","3 meses","manha",false,600.00,3);


select * from tb_produtos where valor > 50;

select * from tb_produtos where valor >= 3 and valor <= 60;

select * from tb_produtos where nome  like "%J%";

select * from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Ti"