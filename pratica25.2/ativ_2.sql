
CREATE DATABASE  db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE  tb_categorias(
	Id BIGINT AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR(100),
    Descrição VARCHAR(255)
);

CREATE TABLE tb_pizzas (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Ingredientes TEXT,
    Preço DECIMAL(6, 2),
    Disponível BOOLEAN
	
);
ALTER TABLE tb_pizzas
ADD COLUMN Categoria_Id BIGINT,
ADD CONSTRAINT fk_Categoria_Id
    FOREIGN KEY (Categoria_Id)
    REFERENCES tb_categorias(Id);



INSERT INTO tb_categorias (Nome, Descricao)
VALUES ('Clássicas', 'Pizzas tradicionais'),
    ('Especiais', 'Pizzas gourmet'),
    ('Vegetarianas', 'Pizzas sem carne'),
    ('Doces', 'Pizzas com ingredientes doces');
    
INSERT INTO tb_pizzas (Nome, Ingredientes, Preco, Disponível, Categoria_Id) 
VALUES ('Margherita', 'Molho de tomate, mussarela, manjericão', 25.99, TRUE, 1),
    ('Pepperoni', 'Molho de tomate, mussarela, pepperoni', 78.99, TRUE, 2),
    ('Quatro Queijos', 'Molho de tomate, mussarela, gorgonzola, parmesão, catupiry', 30.99, TRUE, 1),
    ('Frango com Catupiry', 'Molho de tomate, frango desfiado, catupiry', 72.99, TRUE, 2),
    ('Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola, azeitonas, ervilha', 31.99, TRUE, 1),
    ('Vegetariana', 'Molho de tomate, mussarela, tomate, pimentão, cebola, azeitonas', 29.99, TRUE, 3),
    ('Chocolate com Morango', 'Chocolate, morangos fatiados', 22.99, TRUE, 4),
    ('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola', 27.99, TRUE, 1),
     ('Pizza Premium', 'Molho de tomate, mussarela especial, cogumelos trufados, presunto de Parma, azeitonas pretas', 55.99, TRUE, 2);
    
SELECT *
FROM tb_pizzas
WHERE Preco > 45;

SELECT *
FROM tb_pizzas
WHERE Preco BETWEEN 50 AND 100;

SELECT *
FROM tb_pizzas
WHERE Nome LIKE "%M%";

SELECT tb_pizzas.*, tb_categorias.*
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.Categoria_Id = tb_categorias.Id;

SELECT tb_pizzas.*, tb_categorias.*
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.Categoria_Id = tb_categorias.Id
WHERE tb_categorias.nome = 'Clássicas';