/* 1 - Sélectionner tous les produits avec leur prix. */

SELECT * FROM produit;

/* 2 - Trouver le nombre total d'offres disponibles. */

SELECT count(num_offre) FROM appel_offre;

/* 3 - Lister tous les fournisseurs situés à Paris. */

SELECT * FROM fournisseur WHERE ville = "paris";

/* 4 - Afficher les offres et la quantité totale de produits demandés pour chaque offre. */

SELECT num_offre, quantite_produit, id_produit FROM appel_offre;

/* 5 - Trouver les produits qui n'ont pas encore été inclus dans un contrat. */

SELECT DISTINCT pro.id_produit, pro.libelle_produit 
FROM produit pro
WHERE NOT EXISTS (
    SELECT *
    FROM contrat co 
    WHERE co.id_produit = pro.id_produit
);

/* 6 - Afficher les contrats signés par chaque fournisseur avec la date de signature. */

SELECT num_contrat, date_contrat, statut FROM contrat WHERE statut = 1;

/* 7 - Lister les offres avec les noms des produits correspondants. */

SELECT off.num_offre, off.id_offre_ferme, libelle_produit FROM offre_ferme as off 
JOIN appel_offre ao on ao.num_offre = off.num_offre
JOIN produit pr on pr.id_produit = ao.id_produit;

/* 8 - Trouver le fournisseur qui a effectué le plus d'offres. */

/* 9 - Calculer le montant total des contrats par produit. */
 
/* 10 - Trouver les offres qui n'ont pas été signées avant leur date de clôture et les fournisseurs responsables. */