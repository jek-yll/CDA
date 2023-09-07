const result = document.querySelector(".result")

let capital,
    tauxInteret,
    duree,
    affichage

capital = Number(prompt("Veuillez saisir votre capital de départ"))
tauxInteret = Number(prompt("Veuillez saisir votre taux d'intéret (en %)"))
duree = Number(prompt("Veuillez saisir la durée de votre placement (en année)"))

montant = capital * Math.pow(( 1 + tauxInteret/100),duree)

affichage =
`
<p>Avec un capital initial de ${capital}€, placé à ${tauxInteret}% pendants ${duree} année(s)</p>
<ul>
    <li>Le montant total des intérêts s'élèvera à ${Math.round(((montant - capital)*100)/100)}</li>
    <li>Le capital final à l'issue sera de ${Math.round((montant*100)/100)}</li>
</ul>
`

result.innerHTML = affichage
