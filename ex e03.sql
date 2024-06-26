CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_escola(
cadastro BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
nota DECIMAL(3,2) NOT NULL,
tecnico BOOLEAN NOT NULL,
dependencia BOOLEAN NOT NULL
);

INSERT INTO tb_escola (nome, email, nota, tecnico, dependencia)
VALUES 
("Pedro Santos", "pedro.santos@example.com", 7.80, false, true),
("Juliana Oliveira", "juliana.oliveira@example.com", 8.50, true, false),
("Marcos Silva", "marcos.silva@example.com", 6.75, false, false),
("Fernanda Lima", "fernanda.lima@example.com", 9.20, true, true),
("Rafaela Costa", "rafaela.costa@example.com", 7.90, false, true),
("Roberto Almeida", "roberto.almeida@example.com", 8.95, true, true),
("Sandra Pereira", "sandra.pereira@example.com", 6.30, false, false),
("Lucas Oliveira", "lucas.oliveira@example.com", 9.75, true, true);

SELECT * FROM tb_escola WHERE nota > 7.0;
SELECT * FROM tb_escola WHERE nota < 7.0;

UPDATE tb_escola SET nota = 7.50 WHERE nome = "Marcos Silva";

SELECT * FROM tb_escola;

ALTER TABLE tb_escola MODIFY nota DECIMAL(5,2);