CREATE DATABASE bk;
USE bk;



CREATE TABLE album(
idAlbum INT PRIMARY KEY auto_increment,
nome varchar(60),
selo varchar(60),
dtLancamento DATE
);

INSERT INTO album values
(null, 'Castelos & Ruínas', 'Pirâmide Perdida Records', '2016-03-21'),
(null, 'Pirâmide Perdida', 'Pirâmide Perdida Records', '2016-07-07'),
(null, 'Antes dos Gigantes Chegarem Vol. 1', 'Pirâmide Perdida Records', '2017-10-10'),
(null, 'Antes dos Gigantes Chegarem Vol. 2', 'Pirâmide Perdida Records', '2017-12-29'),
(null, 'Gigantes', 'Pirâmide Perdida Records', '2018-10-13'),
(null, 'O Líder em Movimento', 'Pirâmide Perdida Records', '2020-09-08'),
(null, 'Cidade do Pecado', 'Gigantes', '2021-12-01'),
(null, 'Icarus', 'Gigantes', '2022-11-17'),
(null, 'Verão Criminoso', 'Gigantes', '2023-12-15');

SELECT * FROM album;

CREATE TABLE musica(
idMusica INT PRIMARY KEY auto_increment,
nome varchar(60),
dtLancamento DATE,
feat varchar(200),
fkAlbum INT,
FOREIGN KEY (fkAlbum) REFERENCES album(idAlbum)
);


INSERT INTO musica VALUES
(null, 'Jovens', '2018-10-13', null, 5),
(null, 'Deus do Furdunço', '2018-10-13', null, 5),
(null, 'Quadros', '2016-03-21', 'Ashira & Luccas Carlos ', 1),
(null, 'Bloco 7', '2020-09-08', null, 6),
(null, 'Sonho das esquinas', '2019-12-03', 'Filipe Ret', null),
(null, 'Mudando o Jogo', '2021-01-28', null, null),
(null, 'Porcentos 2', '2020-09-08', null, 6),
(null, 'O Que Sobra Disso Tudo', '2016-03-21', 'Luccas Carlos', 1),
(null, 'Visão Ampla', '2016-03-21', null, 1),
(null, 'Caminhos', '2016-03-21', null, 1),
(null, 'Nome nas ruas', '2022-11-17', 'Carlos do Complexo', 8),
(null, 'Tudo mudou e nada mudou', '2022-11-17', null, 8),
(null, 'Um Dia de Chuva Qualquer', '2016-03-21', null, 1),
(null, 'C&R Interlúdio II', '2016-03-21', null, 1),
(null, 'O Próximo Nascer do Sol', '2016-03-21', null , 1),
(null, 'Top Boys', '2017-10-10', null, 3),
(null, 'Take Your Little Vision', '2017-10-10', null, 3),
(null, 'Deus das Ruas', '2017-10-10', null, 3),
(null, 'Antes dos Gigantes Chegarem', '2017-12-29', 'Juyè & Luccas Carlos', 4),
(null, 'Adeus', '2017-12-29', 'Akira Presidente', 4),
(null, 'Almas', '2017-12-29', 'Juyè', 4),
(null, 'Novo Poder', '2018-10-13', null, 5),
(null, 'Porcentos', '2018-10-13', null, 5),
(null, 'Canto das Baixas', '2016-07-07', 'Akira Presidente, CHS, Luccas Carlos & Sain', 2),
(null, 'Sem Os Vermes pra Secar', '2016-07-07', 'Akira Presidente', 2),
(null, 'Julius', '2018-10-13', null, 5),
(null, 'Amores, Vícios e Obsessões', '2016-03-21', null, 1),
(null, 'Não Me Espere', '2016-03-21', null, 1),
(null, 'Abebe Bikila', '2018-10-13', 'KL Jay', 5),
(null, 'Titãs', '2018-10-13', null, 5),
(null, 'Vivos', '2018-10-13', 'Baco Exu do Blues & Luccas Carlos', 5),
(null, 'Planos', '2018-10-13', 'Luccas Carlos', 5),
(null, 'Sigo na Sombra', '2016-03-21', null, 1),
(null, 'C&R Interlúdio I', '2016-03-21', null, 1),
(null, 'Não Siga Meus Passos', '2016-07-07', 'Bril, CHS, JXNV$ & Nectar Gang', 2),
(null, 'Músicas de amor nunca mais', '2022-11-17', 'Luccas Carlos', 8),
(null, 'Se eu não lembrar', '2022-11-17', 'Marina Sena', 8),
(null, 'Pia, Brota', '2016-07-07', 'Akira Presidente, Bril, CHS, JXNV$, Luccas Carlos & Sain', 2),
(null, 'Falam', '2018-10-13', 'Marcelo D2 & Sain', 5),
(null, 'Correria(Remix)', '2018-10-13', 'Akira Presidente & Drik Barbosa', 5),
(null, 'Movimento', '2020-09-08', null, 6),
(null, 'Luzes', '2022-11-17', null, 8),
(null, 'Lugar na mesa', '2022-11-17', 'L7NNON', 8),
(null, 'Visão', '2020-09-08', null, 6),
(null, 'Amor', '2020-09-08', null, 6),
(null, 'Não Preciso Que Você Duvide', '2021-12-01', null, 7),
(null, 'Último Baile Antes da Guerra', '2021-12-01', 'MC Marcelly & NOCHICA', 7),
(null, 'Pessoas', '2020-09-08', null, 6),
(null, 'Cidade do Pecado', '2021-12-01', null, 7),
(null, 'Intro', '2016-07-07', 'Akira Presidente, CHS, Luccas Carlos & Sain', 2),
(null, 'Sangue no Ar', '2016-07-07', 'Akira Presidente, Bril, CHS & Nectar Gang', 2),
(null, 'Paraíso Que Me Cerca', '2021-12-01', 'Mayra Andrade', 7),
(null, 'E Se Eu Morrer', '2021-12-01', 'niLL', 7),
(null, 'Continuação de um sonho', '2022-11-17', null, 8),
(null, 'Foto armado', '2022-11-17', 'Major RD', 8),
(null, 'Lugar', '2020-09-08', null, 6),
(null, 'Universo', '2020-09-08', null, 6),
(null, 'Só me ligar', '2022-11-17', 'Julia Mestre', 8),
(null, 'Luta e lucro', '2022-11-17', null, 8),
(null, 'Em nome do que sinto', '2022-11-17', 'Bebé Salvego', 8),
(null, 'Carta aberta', '2022-11-17', null, 8),
(null, 'Amanhecer', '2022-11-17', null, 8),
(null, 'Castelos & Ruínas', '2016-03-21', null, 1),
(null, 'Pirâmide', '2016-03-21', null, 1),
(null, 'Contenção no Beco', '2016-07-07', 'Akira Presidente, Bril, CHS & Sain', 2),
(null, 'Reunião', '2016-07-07', 'Akira Presidente, Bril, CHS, JXNV$ & Luccas Carlos', 2),
(null, 'Poder', '2020-09-08', null, 6),
(null, 'Megazord', '2020-09-08', null, 6),
(null, 'Gigantes', '2018-10-13', 'Juyè', 5),
(null, 'Exóticos', '2018-10-13', null, 5),
(null, 'Dispiei', '2016-07-07', 'Bril, Nectar Gang & Sain', 2),
(null, 'Luccas Carlos', '2016-07-07', 'Akira Presidente, Bril, CHS, Luccas Carlos & Nectar Gang', 2),
(null, 'Folhas', '2017-11-10', null, null);

SELECT * FROM musica;

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

SELECT * FROM usuario;

CREATE TABLE quiz(
idQuiz INT PRIMARY KEY auto_increment,
fkUsuario INT,
pontuacao INT,
tentativa INT,
horario DATE,
FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario)
);
 
SELECT * FROM quiz;
