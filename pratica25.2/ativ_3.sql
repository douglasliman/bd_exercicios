
CREATE DATABASE   db_farmacia_bem_estar;

USE  db_farmacia_bem_estar;

CREATE TABLE  tb_categorias (
	Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
	Descricao VARCHAR(255)
);
CREATE TABLE  tb_produtos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    c DECIMAL(10, 2),
    Estoque INT,
    Fabricante VARCHAR(100)
);

ALTER TABLE tb_produtos
ADD COLUMN Categoria_Id BIGINT,
ADD CONSTRAINT fk_Categoria_Id
    FOREIGN KEY (Categoria_Id)
    REFERENCES tb_categorias(Id);

INSERT INTO tb_categorias (Nome, Descricao)
 VALUES ('Medicamentos', 'Produtos para cuidados com a saúde'),
    ('Higiene Pessoal', 'Produtos para higiene e cuidados pessoais'),
    ('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
    ('Vitaminas e Suplementos', 'Produtos para suplementação nutricional'),
    ('Cuidados com o Bebê', 'Produtos para cuidados com bebês');
    
INSERT INTO tb_produtos (Nome, Preco, Estoque, Fabricante, Categoria_Id)
 VALUES ('Dipirona', 15.99, 100, 'EMS', 1),
    ('Shampoo Anticaspa', 22.50, 80, 'Head & Shoulders', 2),
    ('Creme Facial Hidratante', 89.90, 50, 'Nívea', 3),
    ('Vitamina C', 25.00, 60, 'Now Foods', 4),
    ('Fraldas Descartáveis', 75.00, 120, 'Pampers', 5),
    ('Paracetamol', 10.99, 90, 'Genérico', 1),
    ('Protetor Solar FPS 50', 50.50, 40, "'L'Oréal", 3),
    ('Sabonete Líquido Infantil', 68.99, 70, 'Johnson & Johnson', 5);
    
SELECT *
FROM tb_produtos
WHERE Preco > 50;
    
SELECT *
FROM tb_produtos
WHERE Preco BETWEEN 5 AND 60;

SELECT *
FROM tb_produtos
WHERE Nome LIKE "%C%";

SELECT tb_produtos.*,tb_categorias.*
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id;

SELECT tb_produtos.*,tb_categorias.*
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.Categoria_Id = tb_categorias.Id
WHERE tb_categorias.nome = "Medicamentos";