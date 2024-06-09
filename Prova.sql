CREATE DATABASE TorneioDoPoder;
USE TorneioDoPoder;

CREATE TABLE Universo (
    ID_Universo INT PRIMARY KEY,
    Nome_Universo VARCHAR(50),
    Deus_Destruição VARCHAR(100),
    Anjo VARCHAR(100),
    Mortal_Maior VARCHAR(100)
);

CREATE TABLE Equipe (
    ID_Equipe INT PRIMARY KEY,
    Nome VARCHAR(100),
    ID_Universo INT,
    Pontuação INT,
    FOREIGN KEY (ID_Universo) REFERENCES Universo(ID_Universo)
);

CREATE TABLE Lutador (
    ID_Lutador INT PRIMARY KEY,
    Nome VARCHAR(100),
    Raca VARCHAR(50),
    Poder INT,
    Transformacoes VARCHAR(200),
    ID_Equipe INT,
    FOREIGN KEY (ID_Equipe) REFERENCES Equipe(ID_Equipe)
);

CREATE TABLE Juiz (
    ID_Juiz INT PRIMARY KEY,
    Nome VARCHAR(100),
    ID_Universo INT,
    Especialidade VARCHAR(100),
    FOREIGN KEY (ID_Universo) REFERENCES Universo(ID_Universo)
);

CREATE TABLE Batalha (
    ID_Batalha INT PRIMARY KEY,
    Data DATE,
    Local VARCHAR(100),
    Resultado VARCHAR(50),
    ID_Juiz INT,
    FOREIGN KEY (ID_Juiz) REFERENCES Juiz(ID_Juiz)
);

CREATE TABLE Lutador_Batalha (
    ID_Lutador INT,
    ID_Batalha INT,
    PRIMARY KEY (ID_Lutador, ID_Batalha),
    FOREIGN KEY (ID_Lutador) REFERENCES Lutador(ID_Lutador),
    FOREIGN KEY (ID_Batalha) REFERENCES Batalha(ID_Batalha)
);

INSERT INTO Universo (ID_Universo, Nome_Universo, Deus_Destruição, Anjo, Mortal_Maior) VALUES
(1, 'Universo 1', 'Iwan', 'Awamo', 'Mortal_U1'),
(2, 'Universo 2', 'Helles', 'Sour', 'Mortal_U2'),
(3, 'Universo 3', 'Mosco', 'Camparri', 'Mortal_U3'),
(4, 'Universo 4', 'Quitela', 'Cognac', 'Mortal_U4'),
(5, 'Universo 5', 'Arak', 'Cukatail', 'Mortal_U5'),
(6, 'Universo 6', 'Champa', 'Vados', 'Hit'),
(7, 'Universo 7', 'Beerus', 'Whis', 'Goku'),
(8, 'Universo 8', 'Liquiir', 'Korn', 'Mortal_U8'),
(9, 'Universo 9', 'Sidra', 'Mojito', 'Mortal_U9'),
(10, 'Universo 10', 'Rumsshi', 'Kusu', 'Mortal_U10'),
(11, 'Universo 11', 'Belmod', 'Marcarita', 'Jiren'),
(12, 'Universo 12', 'Giin', 'Martinu', 'Mortal_U12');

INSERT INTO Equipe (ID_Equipe, Nome, ID_Universo, Pontuação) VALUES
(1, 'Equipe Universo 1', 1, 0),
(2, 'Equipe Universo 2', 2, 0),
(3, 'Equipe Universo 3', 3, 0),
(4, 'Equipe Universo 4', 4, 0),
(5, 'Equipe Universo 5', 5, 0),
(6, 'Equipe Universo 6', 6, 0),
(7, 'Equipe Universo 7', 7, 0),
(8, 'Equipe Universo 8', 8, 0),
(9, 'Equipe Universo 9', 9, 0),
(10, 'Equipe Universo 10', 10, 0),
(11, 'Equipe Universo 11', 11, 0),
(12, 'Equipe Universo 12', 12, 0);

INSERT INTO Lutador (ID_Lutador, Nome, Raca, Poder, Transformacoes, ID_Equipe) VALUES
(1, 'Goku', 'Saiyajin', 9000, 'Super Saiyajin, Super Saiyajin Blue, Ultra Instinct', 7),
(2, 'Vegeta', 'Saiyajin', 8500, 'Super Saiyajin, Super Saiyajin Blue, Super Saiyajin Blue Evolution', 7),
(3, 'Gohan', 'Saiyajin', 7500, 'Super Saiyajin, Ultimate', 7),
(4, 'Piccolo', 'Namekuseijin', 7000, NULL, 7),
(5, 'Frieza', 'Changeling', 8000, 'Golden Form', 7),
(6, 'Android 17', 'Androide', 7800, NULL, 7),
(7, 'Android 18', 'Androide', 7500, NULL, 7),
(8, 'Master Roshi', 'Humano', 7200, NULL, 7),
(9, 'Tien', 'Humano', 7100, NULL, 7),
(10, 'Krillin', 'Humano', 7000, NULL, 7),
(11, 'Jiren', 'Desconhecida', 9500, NULL, 11),
(12, 'Toppo', 'Desconhecida', 8500, NULL, 11),
(13, 'Dyspo', 'Desconhecida', 8000, NULL, 11),
(14, 'Hit', 'Desconhecida', 8500, NULL, 6),
(15, 'Cabba', 'Saiyajin', 7500, 'Super Saiyajin', 6),
(16, 'Caulifla', 'Saiyajin', 8000, 'Super Saiyajin, Super Saiyajin 2', 6),
(17, 'Kale', 'Saiyajin', 8000, 'Super Saiyajin, Super Saiyajin Berserk', 6),
(18, 'Frost', 'Changeling', 7500, NULL, 6),
(19, 'Magetta', 'Desconhecida', 7500, NULL, 6),
(20, 'Botamo', 'Desconhecida', 7500, NULL, 6),
(21, 'Ribrianne', 'Desconhecida', 8000, NULL, 2),
(22, 'Rozie', 'Desconhecida', 7800, NULL, 2),
(23, 'Kakunsa', 'Desconhecida', 7700, NULL, 2),
(24, 'Bergamo', 'Desconhecida', 7500, NULL, 9),
(25, 'Lavender', 'Desconhecida', 7400, NULL, 9),
(26, 'Basil', 'Desconhecida', 7300, NULL, 9),
(27, 'Katopesla', 'Desconhecida', 7400, NULL, 3),
(28, 'Kakunsa', 'Desconhecida', 7300, NULL, 3),
(29, 'Maji-Kayo', 'Desconhecida', 7400, NULL, 3),
(30, 'Paparoni', 'Desconhecida', 7300, NULL, 3);

INSERT INTO Juiz (ID_Juiz, Nome, ID_Universo, Especialidade) VALUES
(1, 'Zeno', 1, 'Deus Supremo'),
(2, 'Grand Priest', 2, 'Sumo Sacerdote');

INSERT INTO Batalha (ID_Batalha, Data, Local, Resultado, ID_Juiz) VALUES
(1, '2024-01-01', 'Arena do Torneio', 'Vitória do Universo 7', 1),
(2, '2024-01-02', 'Arena do Torneio', 'Vitória do Universo 6', 1),
(3, '2024-01-03', 'Arena do Torneio', 'Vitória do Universo 11', 2),
(4, '2024-01-04', 'Arena do Torneio', 'Vitória do Universo 2', 1),
(5, '2024-01-05', 'Arena do Torneio', 'Vitória do Universo 9', 2);

INSERT INTO Lutador_Batalha (ID_Lutador, ID_Batalha) VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
(14, 2), (15, 2), (16, 2), (17, 2), (18, 2),
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
(21, 4), (22, 4), (23, 4), (24, 4), (25, 4),
(24, 5), (25, 5), (26, 5), (27, 5), (28, 5);


-- Crud >-<


DELETE FROM Universo
WHERE ID_Universo = 13;

SELECT * FROM Universo;

-- Consultas

-- 1

SELECT U.Nome_Universo, U.Deus_Destruição
FROM Universo U;

-- 2

SELECT L.Nome, L.Transformacoes
FROM Lutador L;

-- 3

SELECT E.Nome, E.Pontuação
FROM Equipe E
ORDER BY E.Pontuação DESC;

-- 4

SELECT L.Nome, U.Nome_Universo
FROM Lutador L
JOIN Equipe E ON L.ID_Equipe = E.ID_Equipe
JOIN Universo U ON E.ID_Universo = U.ID_Universo
WHERE U.Nome_Universo = 'Universo 7';

-- 5

SELECT L.Nome, B.Data
FROM Lutador L
JOIN Lutador_Batalha LB ON L.ID_Lutador = LB.ID_Lutador
JOIN Batalha B ON LB.ID_Batalha = B.ID_Batalha
WHERE B.ID_Batalha = 1;

-- 6

SELECT J.Nome, U.Nome_Universo
FROM Juiz J
JOIN Universo U ON J.ID_Universo = U.ID_Universo;

-- 7

SELECT Nome, Poder
FROM Lutador
WHERE Poder > 8000;

-- 8

SELECT E.Nome, U.Nome_Universo
FROM Equipe E
JOIN Universo U ON E.ID_Universo = U.ID_Universo
WHERE U.Nome_Universo = 'Universo 6'
ORDER BY E.Nome;

-- 9

SELECT L.Nome, L.Poder
FROM Lutador L
JOIN Equipe E ON L.ID_Equipe = E.ID_Equipe
WHERE E.Nome = 'Equipe Universo 11'
ORDER BY L.Poder DESC;

-- 10

SELECT B.ID_Batalha, B.Data, B.Resultado
FROM Batalha B
JOIN Juiz J ON B.ID_Juiz = J.ID_Juiz
JOIN Universo U ON J.ID_Universo = U.ID_Universo
WHERE B.Resultado LIKE 'Vitória do Universo%'
AND U.Nome_Universo = 'Universo 2';

