
CREATE DATABASE   db_cidade_das_carnes;

USE  db_cidade_das_carnes;

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
    Fornecedor VARCHAR(100)
);

ALTER TABLE tb_produtos
ADD COLUMN Categoria_Id BIGINT,
ADD CONSTRAINT fk_Categoria_Id
    FOREIGN KEY (Categoria_Id)
    REFERENCES tb_categorias(Id);
    

INSERT INTO tb_categorias (Nome, Descrição)
 VALUES ('Carnes Bovinas', 'Produtos derivados de carne bovina'),
    ('Carnes Suínas', 'Produtos derivados de carne suína'),
    ('Aves', 'Produtos derivados de aves'),
    ('Peixes e Frutos do Mar', 'Produtos derivados de peixes e frutos do mar'),
    ('Outros', 'Outros produtos relacionados com a categoria');


INSERT INTO tb_produtos (Nome, Preco, Estoque, Fornecedor, Categoria_Id) 
VALUES ('Picanha', 134.99, 50, 'Frigorífico Santana', 1),
    ('Costela Suína', 75.50, 40, 'Frigorífico Silva', 2),
    ('Peito de Frango', 40.90, 60, 'Avícola dos Pampas', 3),
    ('Filé de Tilápia', 28.00, 30, 'Pescados do Rio', 4),
    ('Linguiça Toscana', 15.99, 70, 'Frigorífico Santana', 1),
    ('Bisteca de Porco', 30.75, 45, 'Frigorífico Silva', 2),
    ('Asa de Frango', 18.50, 55, 'Avícola dos Pampas', 3),
    ('Salmão Fresco', 130.00, 25, 'Pescados do Rio', 4);

    
SELECT *
FROM tb_produtos
WHERE Preco > 50;
    
SELECT *
FROM tb_produtos
WHERE Preco BETWEEN 50 AND 150;

SELECT *
FROM tb_produtos
WHERE Nome LIKE "%C%";

SELECT tb_produtos.* ,tb_categorias.*
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id;

SELECT tb_produtos.*,tb_categorias.*
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id
WHERE tb_categorias.nome = "Carnes Bovinas";