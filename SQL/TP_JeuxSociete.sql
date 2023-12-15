CREATE DATABASE IF NOT EXISTS tabletoptreasures_database;
USE tabletoptreasures_database;

CREATE TABLE IF NOT EXISTS clients
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    adresse_mail VARCHAR(50) NOT NULL, 
    adresse_de_livraison VARCHAR(50) NOT NULL,
    telephone VARCHAR(10) 
);

ALTER TABLE clients 
MODIFY COLUMN telephone VARCHAR(11); 

CREATE TABLE IF NOT EXISTS categories
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS jeux
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    description VARCHAR(255),
    prix INT NOT NULL, 
    id_categorie INT NOT NULL,
    FOREIGN KEY(id_categorie) REFERENCES categories(id)
);

CREATE TABLE IF NOT EXISTS commandes
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_client INT NOT NULL,
    date_de_commande DATETIME NOT NULL,
    adresse_de_livraison VARCHAR(255) NOT NULL,
    statut VARCHAR(10)
);

ALTER TABLE commandes 
ADD CONSTRAINT fk_client_id FOREIGN KEY(id_client) REFERENCES clients(id);

/************************************************
			Étape 2 : Opérations en DML
************************************************/

-- 2.2 Effectuez trois commandes en insérant une nouvelle entrée dans la table "Commandes". Assurez-vous d'inclure l'ID du client (créé précédemment), la
-- date de commande, l'adresse de livraison et le statut de la commande.

INSERT INTO commandes (id_client, date_de_commande, adresse_de_livraison, statut)
VALUES 
(2, now(), '456 Avenue des Roses, Ville', 'en cours'),
(9, now(), '678 Avenue de la Joie, Ville', 'en cours'),
(5, now(), '890 Rue de l''Avenir, Ville', 'en cours');

-- 2.3 Mettez à jour le prix du jeu avec l'ID 3 (Les Aventuriers) pour le fixer à 35 €

UPDATE jeux SET prix = 35 WHERE id = 3;

-- 2.4 Supprimez le jeu avec l'ID 2 (Dixit) de la table "Jeux".

DELETE FROM jeux WHERE id = 2;

/************************************************
			Étape 3 : Requêtes SQL simples
************************************************/
/************************************************
			Table "Categories" : 
************************************************/

-- 1 Sélectionnez tous les noms de catégories distinctes.

SELECT DISTINCT nom FROM categories;

-- 2 Montrez les catégories avec des noms commençant par "A" ou "S".

SELECT * FROM categories 
WHERE nom LIKE 'A%' 
OR nom LIKE 'S%';

-- 3 Quelles catégories ont un ID entre 2 et 5 inclus ?

SELECT * FROM categories 
WHERE id BETWEEN 2 AND 5;

-- 4 Combien de catégories différentes existent ?

SELECT COUNT(*) AS nombre_de_categories FROM categories; 

-- 5 Quelle est la catégorie ayant le nom le plus long ?

SELECT nom AS "catégorie ayant le nom le plus long" FROM categories 
WHERE length(nom) = 
	(SELECT MAX(length(nom)) 
    FROM categories);

-- 6 Montrez le nombre de jeux dans chaque catégorie

SELECT c.nom, COUNT(j.id_categorie) AS nombre_de_jeux
FROM categories c 
JOIN jeux j ON c.id = j.id_categorie
GROUP BY c.nom;

-- 7 Affichez les catégories triées par ordre alphabétique inversé.

SELECT * FROM categories ORDER BY nom DESC;

/************************************************
			Table "Jeux" : 
************************************************/

-- 1. Sélectionnez tous les noms de jeux distincts

SELECT DISTINCT nom FROM jeux;

-- 2. Montrez les jeux avec un prix entre 25 et 40

SELECT * FROM jeux WHERE prix BETWEEN 25 AND 40;

-- 3. Quels jeux appartiennent à la catégorie avec l'ID 3 ?

SELECT * FROM jeux WHERE id_categorie = 3;

-- 4. Combien de jeux ont une description contenant le mot "aventure" ?

SELECT COUNT(*) AS "nombre de jeux contenant le mot 'aventure' " 
FROM jeux 
WHERE description LIKE '%aventure%';

-- 5. Quel est le jeu le moins cher ?

SELECT nom AS "jeux le moins cher" FROM jeux
WHERE prix = 
	(SELECT MIN(prix) FROM jeux);
    
-- 6. Montrez la somme totale des prix de tous les jeux.

SELECT SUM(prix) AS "Total des prix des tous les jeux"
FROM jeux;

-- 7. Affichez les jeux triés par ordre alphabétique des noms en limitant les résultats à 5.

SELECT * FROM jeux ORDER BY nom LIMIT 5 ;

/************************************************
			Table "Clients" : 
************************************************/

-- 1. Sélectionnez tous les prénoms des clients distincts

SELECT DISTINCT prenom FROM clients;

-- 2. Montrez les clients dont l'adresse contient "Rue" et dont le numéro de téléphone commence par "+1".

SELECT * FROM clients 
WHERE adresse_de_livraison LIKE '%rue%'
AND telephone LIKE '+1%';

-- 3. Quels clients ont un nom commençant par "M" ou "R" ?

SELECT * FROM clients
WHERE nom LIKE 'M%'
OR nom LIKE 'R%';

-- 4. Combien de clients ont une adresse e-mail valide (contenant "@") ? 

SELECT COUNT(*) AS "nbr clients avec adresse e-mail valide"
FROM clients 
WHERE adresse_mail LIKE '%@%';

-- 5. Quel est le prénom le plus court parmi les clients ?

SELECT prenom AS "prenom le plus court" FROM clients
WHERE length(prenom) = 
	(SELECT MIN(length(prenom)) FROM clients);

-- 6. Montrez le nombre total de clients enregistrés. 

SELECT COUNT(*) AS "nombre de clients enregistrés" FROM clients;

-- 7. Affichez les clients triés par ordre alphabétique des noms de famille, mais en excluant les premiers 3.

SELECT * FROM clients 
ORDER BY nom 
LIMIT 3, 1000;

/************************************************
			Étape 4 : Requêtes SQL avancées
************************************************/

/*********************
MODIF TABLE COMMANDE
*********************/

ALTER TABLE commandes 
ADD COLUMN id_jeux INT NOT NULL; 

UPDATE commandes
SET id_jeux = 3
WHERE id = 1;

UPDATE commandes
SET id_jeux = 5
WHERE id = 2;


UPDATE commandes
SET id_jeux = 9
WHERE id = 3;

ALTER TABLE commandes
ADD CONSTRAINT fk_jeux_id FOREIGN KEY (id_jeux) REFERENCES jeux(id);

INSERT INTO commandes (id_client, date_de_commande, adresse_de_livraison, statut, id_jeux)
VALUES 
(2, now(), '456 Avenue des Roses, Ville', 'en cours', 5),
(4, now(), '678 Avenue de la Joie, Ville', 'en cours', 6),
(5, now(), '890 Rue de l''Avenir, Ville', 'en cours', 8),
(2, now(), '456 Avenue des Roses, Ville', 'en cours', 7),
(1, now(), '678 Avenue de la Joie, Ville', 'en cours', 5),
(9, now(), '890 Rue de l''Avenir, Ville', 'en cours', 1);

-- 1. Sélectionnez les noms des clients, noms de jeux et date de commande pour chaque commande passée.

SELECT cl.nom AS "nom client", j.nom AS "nom jeux", co.date_de_commande
FROM commandes co 
JOIN clients cl ON co.id_client = cl.id
JOIN jeux j ON co.id_jeux = j.id;

-- 2. Sélectionnez les noms des clients et le montant total dépensé par chaque client. Triez les résultats par montant total décroissant

SELECT cl.nom, SUM(j.prix) AS Total_dépensé
FROM commandes co 
JOIN clients cl ON co.id_client = cl.id
JOIN jeux j ON co.id_jeux = j.id
GROUP BY cl.id
ORDER BY Total_dépensé DESC;

-- 3. Sélectionnez les noms des jeux, noms de catégories et prix de chaque jeu. 

SELECT j.nom AS jeux, ca.nom AS categorie, j.prix
FROM jeux j
JOIN categories ca ON j.id_categorie = ca.id;

-- 5. Sélectionnez les noms des clients, nombre total de commandes par client et montant total dépensé par client. 
-- Incluez uniquement les clients ayant effectué au moins une commande.

SELECT cl.nom , COUNT(co.id) AS "nb commandes", SUM(j.prix) AS "total (€)"
FROM commandes co 
JOIN clients cl ON co.id_client = cl.id
JOIN jeux j ON co.id_jeux = j.id
GROUP BY cl.id;

