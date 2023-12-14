CREATE DATABASE IF NOT EXISTS hotel;
USE hotel;

CREATE TABLE IF NOT EXISTS hotel 
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS clients
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL, 
    prenom VARCHAR(50) NOT NULL,
    telephone VARCHAR(10), 
    mail VARCHAR(150),
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE IF NOT EXISTS chambre
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero INT,
	statu BOOL,
    tarif INT,
    capacité INT,
    hotel_id INT,
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE IF NOT EXISTS reservation
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero INT,
    statu BOOL,
    client_id INT,
    chambre_id INT,
    hotel_id INT,
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (chambre_id) REFERENCES chambre(id),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);




