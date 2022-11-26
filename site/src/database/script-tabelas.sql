-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

CREATE DATABASE ordemparanormal;

USE ordemparanormal;

CREATE TABLE elemento (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	descricao VARCHAR(200),
    fkOpositor INT,
	FOREIGN KEY (fkOpositor) REFERENCES elemento(id)
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50),
	email VARCHAR(60),
	senha VARCHAR(24),
	fkElemento INT,
	FOREIGN KEY (fkElemento) REFERENCES elemento(id)
);

CREATE TABLE comentario (
	id INT AUTO_INCREMENT,
	fkUsuario INT,
	PRIMARY KEY (id, fkUsuario),
	FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
	titulo VARCHAR(45),
	descricao VARCHAR(300)
);

INSERT INTO elemento (nome,descricao) VALUES 
	('Sangue','O Sangue é a entidade do sentimento. Tudo que envolve sentir uma emoção extrema agrada a entidade de Sangue.'),
	('Morte','A Morte é a entidade do tempo. Busca, distorce a percepção egóica da existência de cada indivíduo para seu próprio agrado.'),
	('Energia','A Energia é a entidade do caos. Tudo que não pode ser explicado, o intangivel, a anarquia. Tudo que envolve a imprevisibilidade e a transformação agrada a entidade de energia.'),
	('Conhecimento','O Conhecimento, a entidade da consciência. Descobrir, aprender, conhecer e decifrar. A percepção do Outro Lado agrada a entidade de conhecimento');

UPDATE elemento SET fkOpositor = 2 where id = 1;
UPDATE elemento SET fkOpositor = 3 where id = 2;
UPDATE elemento SET fkOpositor = 4 where id = 3;
UPDATE elemento SET fkOpositor = 1 where id = 4;

select * from elemento;
select * from usuario;
select * from comentario;
