DROP DATABASE db_empresa_rh;

CREATE DATABASE db_empresa_rh;

USE db_empresa_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT auto_increment not null,
    nome varchar(100),
    sobrenome varchar(255),
	cargo VARCHAR(100),
    departamento VARCHAR(100),
    salario DECIMAL(10, 2),
    primary key(id)
);

INSERT INTO tb_colaboradores (nome, sobrenome, cargo, departamento, salario)
VALUES
('João', 'Silva', 'Analista de RH', 'Recursos Humanos', 2500.00),
('Maria', 'Oliveira', 'Gerente de Vendas', 'Vendas', 3500.00),
('Pedro', 'Santos', 'Assistente Administrativo', 'Administração', 1800.00),
('Ana', 'Souza', 'Desenvolvedor', 'Tecnologia', 2800.00),
('Carlos', 'Lima', 'Analista Financeiro', 'Financeiro', 2100.00),
('Mariana', 'Ferreira', 'Estagiário', 'Recursos Humanos', 1500.00);


SELECT *
FROM tb_colaboradores
WHERE Salario > 2000;

SELECT *
FROM tb_colaboradores
WHERE Salario < 2000;

UPDATE tb_colaboradores
SET salario = 3000.00
WHERE Id = 2; 
 
