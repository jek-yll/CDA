const result = document.querySelector(".result")

let prixHt,
    tva,
    montantTva,
    affichage

prixHt = Number(prompt("Veuillez saisir le prix (H.T)"))
tva = Number(prompt("Veuillez saisir le taux T.V.A (en %)"))
montantTva = (tva*prixHt)/100


affichage = `
<p>Le prix H.T de l'objet étant de ${prixHt}€, avec un tax de T.V.A applicable de ${tva}%</p>
<ul>
    <li>Le montant de la T.V.A s'élèvera à ${montantTva}€</li>
    <li>Le prix T.T.C de l'objet sera de ${prixHt + montantTva}€</li>
</ul>
`

result.innerHTML = affichage 