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

-- 3. Créer une requête permettant d’afficher les 10 livres les plus anciens (avec toutes les colonnes) classés par ordre croissant.

SELECT * FROM livre 
ORDER BY date_publication ASC
LIMIT 10;

-- 4. Créer une requête permettant d’afficher les 10 livres les plus anciens (seulement l’affichage des colonnes : date_publication, auteur, titre) classés par date de publication croissante.

SELECT date_publication, auteur, titre FROM livre 
ORDER BY date_publication ASC
LIMIT 10;

-- 5. Créer une requête permettant d’afficher tous les livres de « Agatha Christie » présent dans la base (à ce stade 3 livres).

SELECT * FROM livre 
WHERE auteur = 'Agatha Christie';

/* 6. On nous informe qu’une erreur s’est glissée sur un livre de « Agatha Christie » présent dans la base. En effet, une entrée de la BDD aurait comme auteur « Agatha Christies ». Faites une
requête permettant de modifier cette erreur puis exécutez de nouveau la requê te de la question 5 afin d’afficher de nouveau le nombre de livre de « Agatha christie » présent dans la BDD (4 à ce stade). */

UPDATE livre 
SET auteur = 'Agatha Christie'
WHERE auteur = 'Agatha Christies';

SELECT * FROM livre 
WHERE auteur = 'Agatha Christie';

-- 7. Insérer le livre de votre choix dans la BDD en respectant toutes les colonnes.

INSERT INTO livre (titre, auteur, editeur, date_publication, isbn_10, isbn_13)
VALUES ('Vingt Mille Lieues sous les mers', 'Jules Verne', 'Librairie Générale Française', '2001-01-01', '2253006327', '978-2253006329');

-- 8. Supprimer le livre de votre choix par les critères d’auteur et titre.

DELETE FROM livre
WHERE titre = 'Le rouge et le noir'
AND auteur = 'Stendhal';



