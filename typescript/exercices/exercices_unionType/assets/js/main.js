// 2.
var STATUS;
(function (STATUS) {
    STATUS[STATUS["ADMIN"] = 0] = "ADMIN";
    STATUS[STATUS["GERANT"] = 1] = "GERANT";
})(STATUS || (STATUS = {}));
let personne1 = {
    nom: "Toto Dupond",
    age: 35,
    occupation: "Facteur"
};
let personne2 = {
    nom: "Jeanne Doe",
    age: 25,
    role: STATUS.ADMIN
};
let personne3 = {
    nom: "Michel Michel",
    age: 23,
    occupation: "Facteur"
};
let personne4 = {
    nom: "Michel Flinch",
    age: 64,
    role: STATUS.GERANT
};
let personnes = [personne1, personne2, personne3, personne4];
personnes.forEach(personne => console.log(`${personne.nom} ${personne.age}`));
export {};
