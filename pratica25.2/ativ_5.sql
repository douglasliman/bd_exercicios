
CREATE DATABASE   db_construindo_vidas;

USE  db_construindo_vidas;

CREATE TABLE tb_categorias (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descrição VARCHAR(255)
);

CREATE TABLE tb_produtos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2),
    Estoque INT,
    Fabricante VARCHAR(100)
);

ALTER TABLE tb_produtos
ADD COLUMN Categoria_Id BIGINT,
ADD CONSTRAINT fk_Categoria_Id
    FOREIGN KEY (Categoria_Id)
    REFERENCES tb_categorias(Id);

INSERT INTO tb_categorias (Nome, Descrição) 
VALUES   ('Carnes', 'Produtos alimentares à base de carnes'),
    ('Frutas', 'Frutas frescas e suculentas'),
    ('Vegetais', 'Vegetais frescos e saudáveis'),
    ('Laticínios', 'Produtos lácteos e derivados'),
    ('Bebidas', 'Bebidas variadas, incluindo sucos e refrigerantes');

    
INSERT INTO tb_produtos (Nome, Preco, Estoque, Fabricante, Categoria_Id)
 VALUES  ('Picanha', 120.00, 50, 'Frigorífico Santana', 1),
    ('Frango', 80.00, 60, 'Avícola dos Pampas', 1),
    ('Maçã', 3.50, 100, 'Fazenda Frutífera', 2),
    ('Banana', 2.99, 80, 'Hortifruti do José', 2),
    ('Alface', 1.50, 70, 'Hortifruti do José', 3),
    ('Cenoura', 2.00, 90, 'Hortifruti do José', 3),
    ('Leite Integral', 5.50, 40, 'Laticínios do Vale', 4),
    ('Queijo Mussarela', 7.99, 60, 'Laticínios do Vale', 4),
    ('Suco de Laranja', 6.00, 45, 'Fazenda Frutífera', 5),
    ('Refrigerante Cola', 4.00, 55, 'Fabricante de Refrigerantes', 5);

SELECT *
FROM tb_produtos
WHERE Preco > 100.00;

SELECT *
FROM tb_produtos 
WHERE Preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE Nome LIKE '%C%';
SELECT tb_produtos.*, tb_categorias.Nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id;

SELECT tb_produtos.*, tb_categorias.Nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id
WHERE tb_categorias.Nome = 'Alimentos';
