
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE  tb_classes(
		Id BIGINT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR(100),
        Estilo_luta VARCHAR (100)
);

CREATE TABLE tb_personagens(
	    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR(100),
        Cidade VARCHAR (100),
        Nivel INT,
		Pontos_vida FLOAT,
        Ataque INT,
        Defesa INT
);

ALTER TABLE tb_personagens
ADD COLUMN Classe_Id BIGINT,
ADD CONSTRAINT fk_Classe_Id
    FOREIGN KEY (Classe_Id)
    REFERENCES tb_classes(Id);

INSERT INTO   tb_classes(nome, estilo_luta)
VALUES("Mago", "a distâcia"),
("Guerreiro", "corpo a corpo"),
("Arqueiro", "a distância"),
 ("Ladrão", "furtivo"),
 ("Cavaleiro", "montado");
 
 INSERT INTO tb_personagens (Nome, Cidade, Nivel, Pontos_vida, Ataque, Defesa, Classe_Id)
VALUES ('Gandalf', 'Minas Tirith', 30, 150.5, 6000, 6000, 1),
       ('Legolas', 'Floresta das Trevas', 25, 120.3, 2000, 2000, 3),
       ('Aragorn', 'Rivendell', 35, 180.8, 4000, 6000, 2),
       ('Frodo', 'Condado', 20, 100.2, 1000, 7000, 4),
       ('Gimli', 'Khazad-dûm', 28, 140.6, 800, 800, 2),
       ('Bilbo', 'Condado', 80, 200.0, 1000, 6000, 5),
       ('Gollum', 'Montanhas Sombrias', 18, 90.1, 450, 450, 4),
       ('Boromir', 'Gondor', 33, 160.4, 1500, 1500, 2),
	   ('Celeborn', 'Gondor', 33, 160.4, 1200, 1200, 2);

SELECT tb_personagens.nome,tb_personagens.ataque
from tb_personagens
where Ataque > 2000;

SELECT tb_personagens.nome,tb_personagens.ataque
from tb_personagens
where Defesa BETWEEN 1000 AND 2000;



SELECT tb_personagens.nome,tb_personagens.ataque
from tb_personagens
where nome LIKE "%c%";

SELECT tb_personagens.*, tb_classes.*
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.Classe_Id = tb_classes.Id;

SELECT tb_personagens.*, tb_classes.Nome
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.Classe_Id = tb_classes.Id
WHERE tb_classes.Nome = "Guerreiro";

