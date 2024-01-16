drop database examen_academie;
create database if not exists examen_academie;
use examen_academie;

CREATE TABLE adresse(
   id_adresse INT auto_increment not null,
   rue VARCHAR(50),
   ville VARCHAR(50),
   code_postal VARCHAR(5),
   PRIMARY KEY(id_adresse)
);

CREATE TABLE etablissement(
   code_etablissement INT auto_increment not null,
   nom_etablissement varchar(50),
   id_adresse INT,
   PRIMARY KEY(code_etablissement),
   UNIQUE(id_adresse),
   FOREIGN KEY(id_adresse) REFERENCES adresse(id_adresse)
);

CREATE TABLE examen(
   id_examen INT auto_increment not null PRIMARY KEY,
   libelle VARCHAR(50),
   code_etablissement INT,
   FOREIGN KEY (code_etablissement) REFERENCES etablissement(code_etablissement));

CREATE TABLE enseignant(
id_enseignant INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
   matricule_enseignant VARCHAR(15),
   nom_enseignant VARCHAR(50),
   telephone_enseignant VARCHAR(11),
   code_etablissement INT,
   id_adresse INT,
   UNIQUE(id_adresse),
   FOREIGN KEY(code_etablissement) REFERENCES etablissement(code_etablissement),
   FOREIGN KEY(id_adresse) REFERENCES adresse(id_adresse)
);

CREATE TABLE epreuve(
   id_epreuve INT auto_increment not null,
   coefficient INT,
   date_epreuve DATE,
   id_examen INT,
   PRIMARY KEY(id_epreuve),
   FOREIGN KEY(id_examen) REFERENCES examen(id_examen)
);

CREATE TABLE eleve(
   id_eleve INT auto_increment not null,
   nom_eleve VARCHAR(50),
   prenom_eleve VARCHAR(50),
   date_naissance VARCHAR(50),
   id_examen INT,
   code_etablissement INT,
   PRIMARY KEY(id_eleve),
   FOREIGN KEY(id_examen) REFERENCES examen(id_examen),
   FOREIGN KEY(code_etablissement) REFERENCES etablissement(code_etablissement)
);

CREATE TABLE inscription(
   numero_dossier VARCHAR(15),
   id_eleve INT NOT NULL,
   PRIMARY KEY(numero_dossier),
   FOREIGN KEY(id_eleve) REFERENCES eleve(id_eleve)
);

CREATE TABLE convoquer(
   id_enseignant INT,
   id_epreuve INT,
   PRIMARY KEY(id_enseignant, id_epreuve),
   FOREIGN KEY(id_enseignant) REFERENCES enseignant(id_enseignant),
   FOREIGN KEY(id_epreuve) REFERENCES epreuve(id_epreuve)
);



CREATE TABLE passer(
   id_eleve INT,
   id_epreuve INT,
   note int check (note>=0 and note<=20),
   PRIMARY KEY(id_eleve, id_epreuve),
   FOREIGN KEY(id_eleve) REFERENCES eleve(id_eleve),
   FOREIGN KEY(id_epreuve) REFERENCES epreuve(id_epreuve)
);



CREATE TABLE corriger(
   id_enseignant INT,
   id_epreuve INT,
   PRIMARY KEY(id_enseignant, id_epreuve),
   FOREIGN KEY(id_enseignant) REFERENCES enseignant(id_enseignant),
   FOREIGN KEY(id_epreuve) REFERENCES epreuve(id_epreuve)
);