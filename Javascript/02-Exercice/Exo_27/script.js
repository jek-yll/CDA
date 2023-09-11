const result = document.querySelector(".result")

let affichage = "",
    nbNotes = 0,
    somme = 0

let etudiants = [
    {
        prenom: "José",
        nom: "Garcia",
        matieres: {
            francais: 16,
            anglais: 7,
            humour: 14
        }
    },
    {
        prenom: "Antoine",
        nom: "De Caunes",
        matieres: {
            francais: 15,
            anglais: 6,
            humour: 16,
            informatique: 4,
            sport: 10
        }
    }
];

for (let etudiant of etudiants) {
    affichage += `<h3>${etudiant.prenom} ${etudiant.nom}</h3><ul>`
    for (let matiere in etudiant.matieres) {
        affichage += `<li>${matiere} : ${etudiant.matieres[matiere]} / 20</li>`
        somme += etudiant.matieres[matiere]
        nbNotes ++
    }
    affichage += `<p>moyenne générale : ${Math.round((somme / nbNotes)*100)/100}</p>`
    affichage += `</ul><hr>`
    somme = 0
    nbNotes = 0
}

result.innerHTML = affichage