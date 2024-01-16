DROP DATABASE appel_offre;
CREATE DATABASE IF NOT EXISTS appel_offre;
USE appel_offre;

CREATE TABLE produit(
   id_produit INT,
   libelle_produit VARCHAR(50),
   prix_unitaire INT,
   PRIMARY KEY(id_produit)
);

CREATE TABLE appel_offre(
   num_offre INT,
   date_offre DATE,
   date_cloture_offre DATE,
   quantite_produit INT,
   statut_offre VARCHAR(50),
   id_produit INT NOT NULL,
   PRIMARY KEY(num_offre),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit)
);

CREATE TABLE fournisseur(
   id_fournisseur INT,
   nom_fournisseur VARCHAR(50),
   addresse VARCHAR(50),
   ville VARCHAR(50),
   code_postal VARCHAR(50),
   PRIMARY KEY(id_fournisseur)
);

CREATE TABLE contrat(
   num_contrat INT,
   date_contrat DATE,
   quantite_negocie INT,
   statut BOOLEAN,
   id_produit INT NOT NULL,
   id_fournisseur INT NOT NULL,
   PRIMARY KEY(num_contrat),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit),
   FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);

CREATE TABLE offre_ferme(
   num_offre INT,
   id_offre_ferme INT,
   id_fournisseur INT NOT NULL,
   PRIMARY KEY(num_offre, id_offre_ferme),
   FOREIGN KEY(num_offre) REFERENCES appel_offre(num_offre),
   FOREIGN KEY(id_fournisseur) REFERENCES fournisseur(id_fournisseur)
);


