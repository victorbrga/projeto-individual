CREATE DATABASE bk;
USE bk;

CREATE TABLE album(
idAlbum INT PRIMARY KEY auto_increment,
nome varchar(60),
selo varchar(60),
dtLancamento DATE
);

CREATE TABLE musica(
idMusica INT PRIMARY KEY auto_increment,
nome varchar(60),
dtLancamento DATE,
feat varchar(45),
fkAlbum INT,
FOREIGN KEY (fkAlbum) REFERENCES album(idAlbum)
) auto_increment = 50;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY auto_increment,
nome varchar(60),
email varchar(60),
senha varchar(60),
fkAlbum INT,
fkMusica INT,
FOREIGN KEY (fkAlbum) REFERENCES album(idAlbum),
FOREIGN KEY (fkMusica) REFERENCES musica(idMusica)
);

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY auto_increment,
fkUsuario INT,
acertos INT,
erros INT,
tentativa INT,
FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);