CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
elemento VARCHAR(255) NOT NULL,
classe VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
poder_ataque INT NOT NULL,
poder_defesa INT NOT NULL,
guilda VARCHAR(255),
nivel INT NOT NULL,
id_classe BIGINT,
FOREIGN KEY (id_classe) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(elemento,classe)
VALUES
 ("Fogo","Arqueiro"),
 ("Água","Mago"),
 ("Terra","Healer"),
 ("AR","Tanque");
 
 