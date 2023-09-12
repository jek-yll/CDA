const result = document.querySelector(".result")

let personnes = [
    {
        prenom: "Jean",
        nom: "Dupont",
        age: "15"
    },
    {
        prenom: "Pierre",
        nom: "Durant",
        age: "16"
    },
    {
        prenom: "Jean",
        nom: "Martin",
        age: "17"
    }
]

affichage = 
    `
    <table> 
        <thead>
            <tr>
                <th> Nom </th>
                <th> Prénom </th>
                <th> Age </th>
            </tr>
        </thead>
        <tbody>
            <tr>
    `   

for (let personne of personnes) {
    affichage += `
        <td>${personne.nom}</td>
        <td>${personne.prenom}</td>
        <td>${personne.age}</td>
    </tr>`
}

affichage += `
</table>
<hr>
`

affichage += `
<p>La personne à la 2ème position de l'annuaire est :</p> 
`

affichage += `<b>${personnes[1].nom} ${personnes[1].prenom}</b>`


result.innerHTML = affichage