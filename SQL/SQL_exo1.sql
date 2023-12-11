
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
	ADD CONSTRAINT unique_telephone UNIQUE (telephone);

-- ALTER TABLE professeur
-- 	ADD CONSTRAINT unique_email_telephone UNIQUE (telephone, email);
    
ALTER TABLE professeur 
	ADD CONSTRAINT unique_email UNIQUE (email);

ALTER TABLE professeur 
	ADD CONSTRAINT unique_email UNIQUE (telephone);
	
ALTER TABLE professeur_etudiant
	ADD CONSTRAINT fk_professeur_id FOREIGN KEY (professeur_id) REFERENCES professeur(professeur_id),
    ADD CONSTRAINT fk_etudiant_id FOREIGN KEY (etudiant_id) REFERENCES etudiant(etudiant_id);

-- Insertion de données 

INSERT INTO professeur(prenom, nom, num_classe, num_departement, email, telephone) VALUES ('Jean', 'Dujardin', 3, 15, 'mail@mail.fr', '0320202020');
INSERT INTO etudiant (prenom, nom, telephone, num_classe, date_diplome) VALUES ('Jacques', 'Dupond', '0605050505', 1, '2023-10-01');
INSERT INTO professeur_etudiant VALUES (1,1);
INSERT INTO professeur_etudiant VALUES (1,2);
INSERT INTO professeur_etudiant VALUES (2,1);

INSERT INTO professeur (prenom, nom, num_classe, num_departement, email, telephone) 
VALUES ('Tata', 'Dupond', 2, 9, 'mail2@mail.fr', '0319191918'),
('Tete', 'Dupont', 2, 5, 'mail3@mail.fr', '0319191917'),
('Toto', 'Marchand', 3, 5, 'mail4@mail.fr', '0319191916'),
('Titi', 'Camion', 4, 3, 'mail5@mail.fr', '0319191915'),
('Tutu', 'Bouleau', 7, 9, 'mail6@mail.fr', '0319191914'),
('Tyty', 'Montage', 2, 2, 'mail7@mail.fr', '0319191913');

