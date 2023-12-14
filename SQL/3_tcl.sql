CREATE DATABASE transac;

USE transac;

CREATE TABLE IF NOT EXISTS utilisateur 
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INT
);

CREATE TABLE IF NOT EXISTS commande
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    utilisateur_id INT,
    produit VARCHAR(50),
    quantite INT,
    CONSTRAINT fk_utilisateur_id FOREIGN KEY (utilisateur_id) REFERENCES utilisateur(id)
);

INSERT INTO utilisateur (nom, prenom, age)
VALUES 
('Doe','John', FLOOR(RAND()*50)+18),
('Smith','Jane', FLOOR(RAND()*50)+18),
('Brown','David', FLOOR(RAND()*50)+18),
('Doe','Jane', FLOOR(RAND()*50)+18),
('Smith','David', FLOOR(RAND()*50)+18);

INSERT INTO commande (utilisateur_id, produit, quantite)
VALUES
(1, 'Produit A', FLOOR(RAND()*5)+1),
(2, 'Produit B', FLOOR(RAND()*5)+1),
(3, 'Produit C', FLOOR(RAND()*5)+1),
(4, 'Produit A', FLOOR(RAND()*5)+1);

-- Debut de la transaction
-- BEGIN
START TRANSACTION;
		-- Iserer un nouvel utilisateur
INSERT INTO utilisateur (nom, prenom, age)
VALUES ('Doe','John', FLOOR(RAND()*50)+18);

		-- Recup du dernier id utilisater insere
SET @utilisateur_id = LAST_INSERT_ID();

INSERT INTO commande (utilisateur_id, produit, quantite)
VALUES (@utilisateur_id, 'Produit A', FLOOR(RAND()*5)+1);

-- Validation de la transaction
COMMIT; 

-- Debut de la transaction
BEGIN;
		-- Iserer un nouvel utilisateur
INSERT INTO utilisateur (nom, prenom, age)
VALUES ('NotAll','Good', FLOOR(RAND()*50)+18);

		-- Recup du dernier id utilisater insere
SET @utilisateur_id = LAST_INSERT_ID();

INSERT INTO commande (utilisateur_id, produit, quantite)
VALUES (@utilisateur_id, 'Produit C', FLOOR(RAND()*5)+1);

-- Annulation de la transaction
ROLLBACK; 