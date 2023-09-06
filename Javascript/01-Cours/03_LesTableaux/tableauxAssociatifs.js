/* 
    Les tableaux associatifs (On accède aux éléments via la clé)
*/

// Déclaration d'un tableau associatif
let personne = {
    nom:"Gastrin",
    prenom:"Loïc",
    age: 28
}

// Affichage de la valeur associée à une clé
console.log(personne.prenom);
console.log(personne["nom"]);

personne["clé"] = "valeur"
console.log(personne);