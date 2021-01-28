-- criando database
create database db_construindo_a_nossa_vida;

-- acesso ao db
use db_construindo_a_nossa_vida;

-- criação de tabela
create table tb_categoria
(
id bigint(5)auto_increment,
tipo varchar(45) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (tipo,ativo) values ("Acessório",true);
insert into tb_categoria(tipo,ativo) values ("Assento sanitário",true);
insert into tb_categoria (tipo,ativo)values ("Chuveiro",false);
insert into tb_categoria (tipo,ativo) values ("Cuba",true);
insert into tb_categoria (tipo,ativo) values ("Pia",false);

create table tb_produto
(
id bigint(5)auto_increment,
marca varchar(40)not null,
cor varchar(40)not null,
bivolt boolean not null,
preco float(4)not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Porta sabonete","preto",false,16.45,4);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Saboneteira","laranja",false,3.45,1);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Assento sanitário","branca",false,35.00,2);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Chuveiro 4400W","prata",true,90.00,3);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Chuveiro 7700W","branco",true,180.00,5);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Cuba de embutir","branco",false,230.47,5);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Lavatório","dourado",true,823.15,4);
insert into tb_produto(marca,cor,bivolt,preco,categoria_id) values ("Coluna para lavatório","diamantada",true,80.95,4);

select * from tb_produto where preco > 50;


select * from tb_produto where preco >= 3 and preco <= 60;

select * from tb_produto where marca like "%C%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

