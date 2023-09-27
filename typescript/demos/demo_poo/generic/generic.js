"use strict";
// Generic
function getLength(array) {
    return array.length;
}
const nombres = [1, 2, 3, 4];
console.log(getLength(nombres)); // OK
const lettres = ["1", "2", "3", "4", "5"];
// console.log(getLength(lettres));  // ERREUR 
// ---------> Solution : utilisation des Generic
function getLength2(array) {
    return array.length;
}
console.log(getLength2(lettres)); // OK
console.log(getLength2(nombres)); // OK
class MaClasse {
    constructor(monAttribut) {
        this.monAttribut = monAttribut;
    }
}
let monObjet;
// monObjet = new MaClasse(42) // Erreur
monObjet = new MaClasse("42"); // OK
let monObjet2;
monObjet2 = new MaClasse(42); // OK
