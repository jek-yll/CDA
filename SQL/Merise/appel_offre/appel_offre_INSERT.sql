INSERT INTO produit (id_produit, libelle_produit, prix_unitaire) VALUES
(1, 'Produit 1', 10),
(2, 'Produit 2', 20),
(3, 'Produit 3', 15),
(4, 'Produit 4', 25),
(5, 'Produit 5', 30),
(6, 'Produit 6', 18),
(7, 'Produit 7', 22),
(8, 'Produit 8', 12),
(9, 'Produit 9', 28),
(10, 'Produit 10', 40);

INSERT INTO appel_offre (num_offre, date_offre, date_cloture_offre, quantite_produit, statut_offre, id_produit) VALUES
(1, '2024-01-15', '2024-02-01', 100, 'En cours', 1),
(2, '2024-01-16', '2024-02-05', 50, 'En attente', 3),
(3, '2024-01-17', '2024-02-10', 75, 'Clôturé', 5),
(4, '2024-01-18', '2024-02-15', 120, 'En cours', 2),
(5, '2024-01-19', '2024-02-20', 90, 'En attente', 4);

INSERT INTO fournisseur (id_fournisseur, nom_fournisseur, addresse, ville, code_postal) VALUES
(1, 'Fournisseur 1', 'Adresse 1', 'Ville 1', '12345'),
(2, 'Fournisseur 2', 'Adresse 2', 'Ville 2', '23456'),
(3, 'Fournisseur 3', 'Adresse 3', 'Ville 3', '34567'),
(4, 'Fournisseur 4', 'Adresse 4', 'Paris', '75000'),
(5, 'Fournisseur 5', 'Adresse 5', 'Ville 5', '56789'),
(6, 'Fournisseur 6', 'Adresse 6', 'Ville 6', '67890'),
(7, 'Fournisseur 7', 'Adresse 7', 'Ville 7', '78901'),
(8, 'Fournisseur 8', 'Adresse 8', 'Paris', '75000'),
(9, 'Fournisseur 9', 'Adresse 9', 'Ville 9', '90123'),
(10, 'Fournisseur 10', 'Adresse 10', 'Ville 10', '01234');

INSERT INTO contrat (num_contrat, date_contrat, quantite_negocie, statut, id_produit, id_fournisseur) VALUES
(1, '2024-01-15', 200, TRUE, 1, 1),
(2, '2024-01-16', 150, FALSE, 2, 3),
(3, '2024-01-17', 100, TRUE, 3, 5),
(4, '2024-01-18', 120, TRUE, 4, 2),
(5, '2024-01-19', 80, FALSE, 5, 4),
(6, '2024-01-20', 90, TRUE, 1, 6),
(7, '2024-01-21', 110, FALSE, 2, 8),
(8, '2024-01-22', 130, TRUE, 3, 10),
(9, '2024-01-23', 70, FALSE, 4, 7),
(10, '2024-01-24', 180, TRUE, 5, 9);

INSERT INTO offre_ferme (id_offre_ferme, id_fournisseur, num_offre) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 5, 3),
(4, 2, 4),
(5, 4, 5),
(6, 6, 2),
(7, 8, 5),
(8, 10, 3),
(9, 7, 4),
(10, 9, 2);




