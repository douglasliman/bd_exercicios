
CREATE DATABASE db_curso_da_minha_vida;


USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Descrição VARCHAR(255)
);

INSERT INTO tb_categorias (Nome, Descrição) VALUES
    ('Programação', 'Cursos relacionados a programação de software'),
    ('Design', 'Cursos relacionados a design gráfico e UX/UI'),
    ('Negócios', 'Cursos relacionados a empreendedorismo e negócios');


CREATE TABLE tb_cursos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Preço DECIMAL(10, 2),
    Carga_Horária INT,
    Nível_Dificuldade VARCHAR(50)
);
ALTER TABLE tb_cursos
 ADD COLUMN Categoria_Id INT, 
 ADD CONSTRAINT fk_Categoria_Id
	FOREIGN KEY (Categoria_Id) 
	REFERENCES tb_categorias(Id);


INSERT INTO tb_cursos (Nome, Preço, Carga_Horária, Nível_Dificuldade, Categoria_Id) VALUES
    ('Curso de Python', 699.99, 40, 'Intermediário', 1),
    ('Curso de Photoshop', 899.99, 30, 'Avançado', 2),
    ('Curso de Marketing Digital', 799.99, 50, 'Intermediário', 3),
    ('Curso de Java', 999.99, 60, 'Avançado', 1),
    ('Curso de Web Design', 599.99, 45, 'Intermediário', 2),
    ('Curso de Gestão Empresarial', 899.99, 55, 'Avançado', 3),
    ('Curso de JavaScript', 799.99, 50, 'Intermediário', 1),
    ('Curso de Fotografia', 699.99, 40, 'Básico', 2);


SELECT * FROM tb_cursos WHERE Preço > 500.00;


SELECT * FROM tb_cursos WHERE Preço BETWEEN 600.00 AND 1000.00;


SELECT * FROM tb_cursos WHERE Nome LIKE '%J%';


SELECT tb_cursos.*, tb_categorias.*
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.Categoria_Id = tb_categorias.Id;


SELECT tb_cursos.*, tb_categorias.Nome.*
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.Categoria_Id = tb_categorias.Id
WHERE tb_categorias.Nome = 'Programação';
