// 1.
// 2.
var STATUS;
(function (STATUS) {
    STATUS[STATUS["ADMIN"] = 0] = "ADMIN";
    STATUS[STATUS["GERANT"] = 1] = "GERANT";
})(STATUS || (STATUS = {}));
/*
let personne1: User = {
    nom: "Toto Dupond",
    age: 35,
    occupation: "Facteur"
}

let personne2: Admin = {
    nom: "Jeanne Doe",
    age: 25,
    role: STATUS.ADMIN
}

let personne3: User = {
    nom: "Michel Michel",
    age: 23,
    occupation: "Facteur"
}

let personne4: Admin = {
    nom: "Michel Flinch",
    age: 64,
    role: STATUS.GERANT
} */
let personnes = [
    {
        nom: "Toto Dupond",
        age: 35,
        occupation: "Facteur"
    }, {
        nom: "Jeanne Doe",
        age: 25,
        role: STATUS.ADMIN
    }, {
        nom: "Michel Michel",
        age: 23,
        occupation: "Facteur"
    }, {
        nom: "Michel Flinch",
        age: 64,
        role: STATUS.GERANT
    }
];
personnes.forEach(personne => {
    console.log(`${personne.nom} ${personne.age}`);
    let bonus = ("occupation" in personne) ? "Son occupation est : " + personne.occupation : "Son rôle est : " + personne.role;
    console.log(bonus);
});
