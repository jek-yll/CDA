/* 1 - Sélectionner tous les élèves et leurs dates de naissance. */
 
 select * from eleve ; 
 
/*  2 - Trouver la note moyenne pour l'examen 'Baccalauréat'.   */

select ex.libelle, avg(note) as moyenne_bacc from passer pa 
join epreuve ep on pa.id_epreuve = ep.id_epreuve
join examen ex on ep.id_examen = ex.id_examen
where ex.libelle like "Baccalauréat"
group by ex.libelle;

/* 3 - Lister tous les enseignants travaillant à 'Paris'. */

select * from enseignant ens
join adresse ad on ens.id_adresse = ad.id_adresse
where ville like "Paris";

/*  4 - Compter le nombre d'élèves inscrits dans chaque établissement. */

select nom_etablissement, count(id_eleve) as eleve_par_etablissement from eleve el
join etablissement et on el.code_etablissement = et.code_etablissement
group by nom_etablissement;

/* 5 - Obtenir les noms de tous les élèves ayant passé un examen avec une note supérieure à 15. */

select el.nom_eleve, ep.id_epreuve, pa.note from passer pa
join eleve el on el.id_eleve = pa.id_eleve
join epreuve ep on ep.id_epreuve = pa.id_epreuve
where note > 15;

/* 6 - Afficher les examens et les noms des épreuves correspondantes avec leurs coefficients. */

select ex.libelle, ep.id_epreuve, ep.coefficient from epreuve ep
join examen ex on ep.id_examen = ex.id_examen;

/* 7 - Lister les établissements avec le nombre d'examens différents pris, triés par le nombre d'examens. */

select et.nom_etablissement, count(ex.id_examen) as nb_examen from examen ex
join etablissement et on et.code_etablissement = ex.code_etablissement
group by et.code_etablissement ;

 /* 8 - Trouver tous les élèves qui n'ont passé aucun examen : */
 
 select * from eleve WHERE id_examen IS NULL;
 
 /* 9 - Identifier les enseignants qui ont à la fois rédigé et corrigé la même épreuve : */
 
 SELECT * from enseignant en
 JOIN convoquer con on con.id_enseignant = en.id_enseignant 
 JOIN corriger cor on cor.id_enseignant = en.id_enseignant 
 WHERE cor.id_epreuve = con.id_epreuve;
 
 /* 10 - Montrer le dernier examen que chaque élève a passé, avec la date et la note : */ 
