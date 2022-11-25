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
	descricao VARCHAR(80),
	FOREIGN KEY (fkOpositor) REFERENCES elemento(idElemento)
);

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	username VARCHAR(50),
	email VARCHAR(60),
	senha VARCHAR(24),
	fkElemento INT,
	FOREIGN KEY (fkElemento) REFERENCES elemento(idElemento)
);

CREATE TABLE comentario (
	id INT AUTO_INCREMENT,
	fkUsuario INT,
	PRIMARY KEY (id, fkUsuario),
	FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
	titulo VARCHAR(45),
	descricao VARCHAR(300)
);

/* esta tabela deve estar de acordo com o que está em INSERT de sua API do arduino - dat-acqu-ino */
