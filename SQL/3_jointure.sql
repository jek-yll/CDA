CREATE DATABASE jointure;
USE jointure;

CREATE TABLE IF NOT EXISTS utilisateur
( 
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	prenom VARCHAR(50) NOT NULL,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(150),
    ville VARCHAR(50),
    actif INT
);

CREATE TABLE IF NOT EXISTS commande
(
	utilisateur_id INT,
    date_achat DATE,
    num_facture CHAR(6),
    prix_total DOUBLE
);

INSERT INTO utilisateur (prenom, nom, email, ville, actif)
VALUES 
('Aimée','Marechal','aimee_marechal@example.com','Paris',1),
('Esmée','Lefort','esmee_lefort@example.com','Lyon',1),
('Marine','Prevost','marine_prevost@example.com','Lille',1),
('Luc','Rolland','luc_rolland@example.com','Marseille',1)
;

INSERT INTO commande
VALUES 
(1, '2013-01-23','A00103',203.14),
(1, '2013-01-14','A00104',124.06),
(2, '2013-01-23','A00105',149.45),
(2, '2013-01-23','A00106',235.35),
(5, '2013-01-23','A00107',47.58)
;

-- INNER JOIN / JOINvilles_france_free

SELECT id, prenom, nom, date_achat, num_facture, prix_total
FROM utilisateur uti
INNER JOIN commande com ON uti.id = com.utilisateur_id;

-- LEFT JOIN

SELECT * 
FROM utilisateur uti
LEFT JOIN commande com ON uti.id = com.utilisateur_id; 

-- RIGHT JOIN

SELECT * 
FROM utilisateur uti
RIGHT JOIN commande com ON uti.id = com.utilisateur_id;

DROP TABLE villes_france_free;