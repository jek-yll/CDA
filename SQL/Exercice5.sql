CREATE DATABASE exo_5;

USE exo_5;

-- 1. Obtenir la liste des 10 villes les plus peuplées en 2012

SELECT * FROM villes_france_free
ORDER BY ville_population_2012 DESC
LIMIT 10;

-- 2. Obtenir la liste des 50 villes ayant la plus faible superficie

SELECT * FROM villes_france_free
ORDER BY ville_surface ASC
LIMIT 50;

-- 3. Obtenir la liste des départements d’outre-mer, c’est-à-dire ceux dont le numéro de département commençant par “97”

SELECT * FROM departement
WHERE departement_code LIKE '97%';

-- 4. Obtenir le nom des 10 villes les plus peuplées en 2012, ainsi que le nom du département associé

SELECT ville.ville_nom, dep.departement_nom
FROM villes_france_free ville
JOIN departement dep ON ville.ville_departement = dep.departement_code
ORDER BY ville_population_2012 DESC
LIMIT 10;

-- 5. Obtenir la liste du nom de chaque département, associé à son code et du nombre de commune au sein de ces
-- départements, en triant afin d’obtenir en priorité les départements qui possèdent le plus de communes

SELECT dep.departement_nom, ville.ville_departement, COUNT(ville_id) AS "nombre de villes"
FROM departement dep
INNER JOIN villes_france_free ville ON dep.departement_code = ville.ville_departement
GROUP BY dep.departement_nom, ville.ville_departement
ORDER BY COUNT(ville_id) DESC;

-- 6. Obtenir la liste des 10 plus grands départements, en termes de superficie

SELECT dep.departement_nom, ROUND(SUM(ville.ville_surface),2) as dpt_superficie
FROM departement dep
INNER JOIN villes_france_free ville ON dep.departement_code = ville.ville_departement
GROUP BY dep.departement_nom
ORDER BY dpt_superficie DESC
LIMIT 10;

-- 7. Compter le nombre de villes dont le nom commence par “Saint”

SELECT COUNT(ville_id) AS "Nombre de ville 'Saint...'"
FROM villes_france_free
WHERE ville_nom_reel LIKE "Saint%";

-- 8. Obtenir la liste des villes qui ont un nom existants plusieurs fois, et trier afin d’obtenir en premier celles dont le nom est le plus souvent utilisé par plusieurs communes

SELECT ville_nom_reel, COUNT(ville_id) AS "Nom de ville le plus répendu"
FROM villes_france_free
GROUP BY ville_nom_reel
HAVING COUNT(ville_id) > 1
ORDER BY COUNT(ville_id) DESC;

-- 9. Obtenir en une seule requête SQL la liste des villes dont la superficie est supérieure à la superficie moyenne

SELECT * 
FROM villes_france_free
WHERE ville_surface > 
	(SELECT AVG(ville_surface)
	FROM villes_france_free);
-- ORDER BY ville_surface DESC;

-- 10. Obtenir la liste des départements qui possèdent plus de 2 millions d’habitants

SELECT dep.departement_nom, SUM(ville.ville_population_2012) AS "population du departement"
FROM departement dep
INNER JOIN villes_france_free ville ON dep.departement_code = ville.ville_departement
GROUP BY dep.departement_nom
HAVING SUM(ville.ville_population_2012) > 2000000;

-- 11. Remplacez les tirets par un espace vide, pour toutes les villes commençant par “SAINT-” (dans la colonne qui contient les noms en majuscule)

UPDATE villes_france_free 
SET ville_nom = REPLACE(ville_nom, "SAINT-", "SAINT ")
WHERE ville_nom LIKE "SAINT-%"; 
