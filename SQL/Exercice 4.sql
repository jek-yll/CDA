CREATE DATABASE exo_4;

USE exo_4;

CREATE TABLE IF NOT EXISTS livre
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(150),
    auteur VARCHAR(50),
    editeur VARCHAR(50),
    date_publication DATE,
    isbn_10 VARCHAR(10),
    isbn_13 VARCHAR(15)
);

