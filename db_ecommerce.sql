DROP DATABASE db_ecommerce;

CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto(
	id BIGINT auto_increment not null,
    nome varchar(100),
    descricao varchar(255),
    valor DECIMAL(10, 2),
    primary key(id)
);
INSERT INTO tb_produto (nome, descricao, valor)
VALUES
("Jaqueta", "Uma jaqueta linda para você gastar money", 2000.00),
("Short", "Um short irado para você gastar money", 200.00),
("Camiseta", "Uma camiseta dourada brilhante", 499.00),
("Bolsa", "Uma bolsa do ben 10 brilhante", 699.00),
("Bota", "Uma bota preta fosca de rockeiro", 399.00),
("Camiseta", "Uma camiseta azul brilhante", 1199.00),
("Camiseta Social", "Uma camiseta roxa com botoes verdes", 899.00),
("Bola", "Uma bola dourada brilhante", 499.00);

SELECT * from tb_produto WHERE valor > 500;
SELECT * from tb_produto WHERE valor < 500;

SELECT * from tb_produto WHERE id = 4;

UPDATE tb_produto
SET valor = 3000.00
WHERE Id = 4;

SELECT * from tb_produto WHERE id = 4;


SELECT *
FROM tb_aluno
WHERE valor BETWEEN 500.00 AND 2000.00;
