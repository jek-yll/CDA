
-- Exercice 1

CREATE DATABASE exercice;

USE exercice;

DROP TABLE personne, adresse;

CREATE TABLE IF NOT EXISTS personne 
(
	personne_id int NOT NULL AUTO_INCREMENT,
	titre varchar(3),
    prenom varchar(55),
	nom varchar(55),
	telephone varchar(13),
    email varchar(150),
    CONSTRAINT pk_personne_id PRIMARY KEY (personne_id)
);

CREATE TABLE IF NOT EXISTS adresse
(
	adresse_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    rue varchar(150),
    ville varchar(55),
    code_postal varchar (5),
    personne_id int,
    CONSTRAINT fk_personne_id FOREIGN KEY (personne_id) REFERENCES personne(personne_id)
);

-- Exercice 2 

CREATE TABLE IF NOT EXISTS compte
(
	compte_id int NOT NULL AUTO_INCREMENT,
    pseudo varchar(50),
    mot_de_passe varchar(50),
    email varchar(255),
    date_creation datetime, 
    derniere_connexion varchar(50),
    CONSTRAINT pk_compte_id PRIMARY KEY (compte_id)
);

CREATE TABLE IF NOT EXISTS roles
(
	role_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    libelle varchar(50)
);

DROP TABLE compte_role;

CREATE TABLE IF NOT EXISTS compte_role
(
	compte_id int NOT NULL,
    role_id int NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    CONSTRAINT pk_compte_id_role_id PRIMARY KEY (compte_id, role_id),
    CONSTRAINT fk_compte_id FOREIGN KEY (compte_id) REFERENCES compte(compte_id),
    CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

-- Exercice 3

DROP TABLE professeur_etudiant;
DROP TABLE professeur;
DROP TABLE etudiant;

CREATE TABLE IF NOT EXISTS professeur 
(
	professeur_id int NOT NULL AUTO_INCREMENT,
    prenom varchar(50),
    nom varchar(50),
    num_classe int,
    num_departement int,
    email varchar(255),
    telephone varchar(15),
    CONSTRAINT pk_professeur_id PRIMARY KEY (professeur_id)
);

CREATE TABLE IF NOT EXISTS etudiant
(
	etudiant_id int NOT NULL AUTO_INCREMENT,
    prenom varchar(50),
    nom varchar(50),
    telephone varchar(15),
	num_classe int,
    date_diplome DATE,
    CONSTRAINT pk_etudiant_id PRIMARY KEY (etudiant_id)
);

CREATE TABLE IF NOT EXISTS professeur_etudiant
(
	professeur_id int NOT NULL,
    etudiant_id int NOT NULL,
	CONSTRAINT pk_professeur_id_etudiant_id PRIMARY KEY(professeur_id, etudiant_id)
);

ALTER TABLE etudiant
	MODIFY COLUMN telephone varchar(15) NOT NULL;

ALTER TABLE etudiant
	ADD CONSTRAINT unique_telephone_etu UNIQUE (telephone);

-- ALTER TABLE professeurprofesseur
-- 	ADD CONSTRAINT unique_email_telephone UNIQUE (telephone, email);
    
ALTER TABLE professeur 
	ADD CONSTRAINT unique_email_prof UNIQUE (email);

ALTER TABLE professeur 
	ADD CONSTRAINT unique_tel_prof UNIQUE (telephone);
	
ALTER TABLE professeur_etudiant
	ADD CONSTRAINT fk_professeur_id FOREIGN KEY (professeur_id) REFERENCES professeur(professeur_id),
    ADD CONSTRAINT fk_etudiant_id FOREIGN KEY (etudiant_id) REFERENCES etudiant(etudiant_id);

-- Insertion de données etudiant

INSERT INTO etudiant (prenom, nom, telephone, num_classe, date_diplome) VALUES 
('Jacques', 'Dupond', '0605050505', 1, '2023-10-01'),
('Charles', 'Henri', '0604050505', 1, '2023-09-01');

INSERT INTO professeur (prenom, nom, num_classe, num_departement, email, telephone) VALUES 
('Jean', 'Dujardin', 3, 15, 'mail@mail.fr', '0320202020'),
('Tata', 'Dupond', 2, 9, 'mail2@mail.fr', '0319191918'),
('Tete', 'Dupont', 2, 5, 'mail3@mail.fr', '0319191917'),
('Toto', 'Marchand', 3, 5, 'mail4@mail.fr', '0319191916'),
('Titi', 'Camion', 4, 3, 'mail5@mail.fr', '0319191915'),
('Tutu', 'Bouleau', 7, 9, 'mail6@mail.fr', '0319191914'),
('Tyty', 'Montage', 2, 2, 'mail7@mail.fr', '0319191913');

INSERT INTO professeur_etudiant VALUES (1,1),(1,2),(2,1);

INSERT INTO personne (titre, prenom, nom, telephone, email)
VALUES ('M', 'Jean', 'Dupont', '0320454698', 'mail@mail.fr'),
('Mme', 'Jeanne', 'Dupond', '0320452211', 'mail1@mail.fr'),
('Mme', 'Mireille', 'Mathieu', '0320457855', 'mail2@mail.fr'),
('M', 'Guy', 'Met', '0320459898', 'mail3@mail.fr');


INSERT INTO adresse (rue, ville, code_postal, personne_id)
VALUES 
('rue des peupliers','Lille','59000', 1),
('rue de la rue','Lille','59000', 2),
('avenue du général De Gaulle','Lille','59000', 3),
("avenue de l'avenue",'Lille','59000', 1),
('Grand rue','Lille','59000', 2);

DELETE FROM adresse WHERE personne_id = 3;

DELETE FROM adresse 
WHERE personne_id = 
	(SELECT personne_id FROM personne 
    WHERE prenom = 'toto');

DELETE FROM personne WHERE prenom = 'toto';

INSERT INTO personne (titre, prenom, nom, telephone, email)
VALUES ('M', 'toto', 'toto', '0321254569', 'mail@mail.fr');

INSERT INTO adresse (rue, ville, code_postal, personne_id)
VALUES ('rue des peupliers','Lille','59000', 5);

UPDATE personne 
SET telephone = '0101010101'
WHERE nom = 'dupont';

UPDATE personne 
SET titre = 'Mr'
WHERE titre = 'M';

ALTER TABLE personne 
MODIFY COLUMN titre varchar(4);

INSERT INTO personne (titre, prenom, nom, telephone, email)
VALUES 
('Mlle', 'Tata', 'Tata', '0123456789', 'mail@test.fr'),
('Mlle', 'Marie', 'Tota', '0987654321', 'mail12@test.fr'),
('M', 'Michel', 'Tati', '0147258369', 'mail@test.fr'),
('Mme', 'Chantal', 'Tito', '0741852963', 'mail@test.fr');

SELECT * FROM personne ORDER BY nom DESC;

SELECT * FROM personne 
ORDER BY titre;

SELECT * FROM personne 
WHERE email = 'mail1@mail.fr';

