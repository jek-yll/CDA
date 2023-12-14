-- Céer un utilisateur 
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'test'; 

-- Donner tous les droits
GRANT ALL PRIVILEGES ON *.* TO 'toto'@'localhost'; 

-- Voir les privilèges
SHOW GRANTS; 

-- Donner tous les droits sur une base spécifique
CREATE USER 'titi'@'localhost' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON entreprise_demo.* TO 'titi'@'localhost';

GRANT SELECT ON jointure.commande TO 'titi'@'localhost';

GRANT INSERT, DELETE ON jointure.commande TO 'titi'@'localhost';

GRANT SELECT (nom, prenom) ON jointure.utilisateur TO 'titi'@'localhost';

-- Recharger la table des droits
FLUSH PRIVILEGES; 

SHOW GRANTS FOR 'titi'@'localhost'; 