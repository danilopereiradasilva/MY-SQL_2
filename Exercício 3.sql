create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- Parte 1
CREATE TABLE tb_categoria (
    categoriaID INT(5),
    categoriaNOME VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (categoriaNOME)
);

-- Parte 2
CREATE TABLE tb_produto (
    nome VARCHAR(255) NOT NULL,
    tb_categoria VARCHAR(255) NOT NULL,
    descricao_p VARCHAR(255) NOT NULL,
    preco INT NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY (nome),
    FOREIGN KEY (tb_categoria)
        REFERENCES tb_categoria (categoriaNOME)
);

-- Parte 3
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (1,"Produto de limpeza","Utensílios e produtos para limpar ambientes.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (2,"Remédio","Produtos para combater dor e doença.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (3,"Higiene pessoal","Produtos para higiene pessoal.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (4,"Suplementos","Suplementos alimentares.");
INSERT INTO tb_categoria (categoriaID,categoriaNOME,descricao) VALUES (5,"Produto de beleza","Produtos relacionados ao corpo e pele.");

-- Parte 4
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Eparema", "Remédio","Indicado para desintoxicação hepática",6,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Limpa vidro 500ml", "Produto de limpeza","Limpar Vidro",2,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Agua micelar", "Higiene pessoal","Limpeza da pele",20,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Whey Protein", "Suplementos","Potencializar o ganho muscular",50,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Maquiagem", "Produto de beleza","Usado para embelezar o rosto",12,50);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Neosaldina", "Remédio","Analgésico contra dor de cabeça",20,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Dulcolax", "Remédio","Indicado para constipação",27,100);
INSERT INTO tb_produto (nome, tb_categoria,descricao_p,preco,estoque) VALUES ("Camisinha fina", "Remédio","Evitar gravidez e contra ISTs",8,100);


-- Parte 5
SELECT 
    *
FROM
    tb_produto
WHERE
    preco > 50;

-- Parte 6
SELECT 
    *
FROM
    tb_produto
WHERE
    preco >= 3 AND preco <= 60;

-- Parte 7
SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE 'B%';-- começa com a letra C

SELECT 
    *
FROM
    tb_produto
WHERE
    nome LIKE '%B%';-- possui a letra C

SELECT 
    nome, preco, tb_categoria, descricao_p
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_categoria.categoriaNOME = tb_produto.tb_categoria;

-- Parte 9
SELECT 
    *
FROM
    tb_produto
WHERE
    tb_categoria = "Remédio";

