/*
    Les tableaux numériques (on accède aux valeurs via l'index)
*/

// Déclaration du tableau 
let monTableau = []
// let monTableau = new Array() <-------- Equivalent
 
monTableau[0] = "Pomme" // Affectation d'une valeur à l'index 0
monTableau[1] = "Poire" // Affectation d'une valeur à l'index 1

console.log(monTableau);
console.table(monTableau);
console.log(monTableau[1]);

let legumes = ["Carotte", "Choux", "Poireau"]
console.log(legumes[2]);
legumes[2] = "Patate";
console.log(legumes[2]);

let nbLegumes = legumes.length
console.log(nbLegumes);

legumes[legumes.length] = "Haricots"
// legumes.push("Haricots") <--------- Equivalent
console.table(legumes);

// Supprime le dernier élément du tableau
legumes.pop()

// Supprime le premier élément du tableau
legumes.shift()

console.table(legumes);