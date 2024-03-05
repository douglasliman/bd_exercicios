DROP DATABASE db_escolinha;

CREATE DATABASE db_escolinha;

USE db_escolinha;

CREATE TABLE tb_aluno (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Sexo VARCHAR(10),
    Nota DECIMAL(4, 2),
    Turma VARCHAR(10)
);

INSERT INTO tb_aluno (Nome, Sexo, Nota, Turma)
VALUES
('João Silva', 'Masculino', 8.5, '10A'),
('Maria Oliveira', 'Feminino', 7.2, '9B'),
('Pedro Santos', 'Masculino', 6.8, '10A'),
('Ana Souza', 'Feminino', 9.0, '7C'),
('Carlos Lima', 'Masculino', 7.8, '9B'),
('Mariana Ferreira', 'Feminino', 8.2, '9A'),
('Lucas Oliveira', 'Masculino', 6.5, '8C'),
('Laura Martins', 'Feminino', 8.9, '9B');

SELECT *
FROM tb_aluno
WHERE Nota > 7.0;


SELECT *
FROM tb_aluno
WHERE Nota < 7.0;

SELECT * FROM tb_aluno WHERE Nome = 'Ana Souza';

UPDATE tb_aluno
SET Nota = 7.5
WHERE Nome = 'Ana Souza';

SELECT * FROM tb_aluno WHERE Nome = 'Ana Souza';

SELECT *
FROM tb_aluno
WHERE Nota BETWEEN 7.0 AND 9.0;


