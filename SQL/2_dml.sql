-- INSERT INTO 
Use entreprise_demo;

-- Méthode 1
-- Sans préciser les colonnes 
INSERT INTO service
VALUES (NULL, 'comptabilité', '2023-11-11');

-- Méthode 2 
-- En précisant les colonnes 
INSERT INTO service (libelle, date_modification)
VALUES 
('RH','2023-12-12'),
('informatique','2023-10-12') ;

-- Méthode 3 
-- Avec une requête imbriqué
INSERT INTO service (libelle, date_modification)
SELECT 
'R&D' as libelle,
'2023-09-10' as date_modification;

