CREATE DATABASE bk;
USE bk;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY auto_increment,
nome varchar(60),
email varchar(60),
senha varchar(60),
mscFav varchar(60),
albumFav varchar(60)
);

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY auto_increment,
idUsuario INT,
acertos INT,
erros INT,
tentativa INT,
FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
);
