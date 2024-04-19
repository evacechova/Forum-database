-- Active: 1713535144087@@127.0.0.1@3306@forum_database
CREATE DATABASE forum_database DEFAULT CHARSET utf8mb4;

SHOW DATABASES;

CREATE TABLE Uzivatel (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    jmeno VARCHAR(20),
    prezdivka VARCHAR(20),
    heslo TEXT
);

DESC Uzivatel;

CREATE TABLE Tema (
    id INT PRIMARY KEY,
    zakladatel_id INT UNSIGNED, FOREIGN KEY (zakladatel_id) REFERENCES Uzivatel(id),
    jmeno VARCHAR(20) 
);

DESC Tema;

CREATE TABLE Zprava (
    id INT PRIMARY KEY AUTO_INCREMENT,
    autor_id INT UNSIGNED, FOREIGN KEY (autor_id) REFERENCES Uzivatel(id),
    tema_id INT, FOREIGN KEY (tema_id) REFERENCES Tema(id),
    cas_vytvoreni DATETIME,
    obsah TEXT
);

DESC Zprava;
