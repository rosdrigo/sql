CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
valor DECIMAL (8,2) NOT NULL,
perecivel VARCHAR(50),
validade DATE
);

INSERT INTO tb_ecommerce (nome_produto,quantidade,valor,perecivel,validade)
VALUES ("Coca Cola Lata",1000,4.99,"Não","2026-12-01");
INSERT INTO tb_ecommerce (nome_produto,quantidade,valor,perecivel,validade)
VALUES ("Kit 4 Pneus",300,899.90,"Não","2030-01-01");
INSERT INTO tb_ecommerce (nome_produto,quantidade,valor,perecivel,validade)
VALUES ("Caixa Biscoito Recheado Trakinas",100,99.90,"Sim","2024-07-30");
INSERT INTO tb_ecommerce (nome_produto, quantidade, valor, perecivel, validade)
VALUES ("Iogurte Natural", 100, 3.49, "Sim", "2024-07-15");
INSERT INTO tb_ecommerce (nome_produto, quantidade, valor, perecivel, validade)
VALUES ('Notebook Gamer Bichao', 60, 4000.00, "Não", NULL);
INSERT INTO tb_ecommerce (nome_produto, quantidade, valor, perecivel, validade)
VALUES ("Ovos de Páscoa", 300, 9.99, "Não", "2024-04-30");
INSERT INTO tb_ecommerce (nome_produto, quantidade, valor, perecivel, validade)
VALUES ("Iphone 36x Mortal PRO", 50, 2999.99, "Não", NULL);
INSERT INTO tb_ecommerce (nome_produto, quantidade, valor, perecivel, validade)
VALUES ("Barra de Chocolate",200,9.99,"Não","2024-05-30");

SELECT * FROM  tb_ecommerce WHERE valor > 500;
SELECT * FROM  tb_ecommerce WHERE valor < 500;

UPDATE tb_ecommerce SET valor = 999.99  WHERE id = 2;

SELECT * FROM tb_ecommerce;



