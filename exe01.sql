CREATE DATABASE bd_rh;
USE bd_rh;
CREATE TABLE tb_rh(
cadastro BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
email VARCHAR(100) NOT NULL,
salário DECIMAL(10,2) NOT NULL,
data_admissao DATE NOT NULL,
cargo VARCHAR(100) NOT NULL
);

INSERT INTO tb_rh( nome, email, salário, data_admissao, cargo)
VALUES ("Madruguinha Pereira","madruguinha@gmail.com",2200.00,"2020-02-05","Dev-Ops");
INSERT INTO tb_rh( nome, email, salário, data_admissao, cargo)
VALUES ("Salgado Junior","salgadoJunior@hotmail.com",3000.00,"2022-05-05","Desenvolvedor Back-End");
INSERT INTO tb_rh( nome, email, salário, data_admissao, cargo)
VALUES ("Vasco da Gama","dagamavasco@gmail.com",1500.00,"2019-05-10","Serviços Gerais");
INSERT INTO tb_rh( nome, email, salário, data_admissao, cargo)
VALUES ("Scooby Doo Dos Santos","amocomidadoo@gmail.com",4000.00,"2015-01-25","Gerente Operacional");
INSERT INTO tb_rh( nome, email, salário, data_admissao, cargo)
VALUES ("Bilabilu da Silva","bilabilus@gmail.com",999.99,"2020-06-12","Trainee Back-End");

SELECT * FROM  tb_rh WHERE salário > 2000.00;
SELECT * FROM  tb_rh WHERE salário < 2000.00;

UPDATE tb_rh SET email = "scoobycomidas@gmail.com" WHERE cadastro = 4;

SELECT * FROM tb_rh;