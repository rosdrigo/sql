CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
	jogabilidade VARCHAR(20) NOT NULL
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe BIGINT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (classe, jogabilidade) VALUES
('espadachin', 'Intermediário'),
('Mago', 'dificil'),
('Arqueiro', 'facil'),
('Healer', 'dificil'),
('Tanque', 'Intermediário');

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('20matar', 99, 500, 500, 1),
('deusDOAfk', 30, 500, 700, 2),
('x1naoGuenta', 99, 6800, 200, 3),
('Dpsbugado', 99, 1900, 90, 4),
('Cansado', 25, 2800, 200, 2),
('MelhorBR', 12, 2800, 700, 5),
('Lagadinho', 99, 7500, 800, 4),
('fanDoLagadinho', 30, 3000, 400, 3);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, nivel, poder_ataque, poder_defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome, nivel, poder_ataque, poder_defesa, tb_classes.classe
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.classe = "Mago";

SELECT * FROM tb_personagens;