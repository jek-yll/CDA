const result = document.querySelector(".result")

let rvnFoyer,
    nbAdulte,
    nbEnfant,
    nbPart,
    fraction,
    impots,
    message,
    rvnNetImposable

rvnFoyer = Number(prompt("Saisir votre montant net imposable (en €)"))
nbAdulte = Number(prompt("Saisir le nombre d'adulte du foyer"))
nbEnfant = Number(prompt("Saisir le nombre d'enfant du foyer"))

// Calcul des parts du foyer
nbEnfant > 2 ? nbPart = nbAdulte + nbEnfant - 1 : nbPart = nbAdulte + 0.5*nbEnfant

// Calcul du revenu net imposable
rvnNetImposable = rvnFoyer / nbPart

message = `<p>Le montant de l'impôt sur le revenu pour un foyer composé de <b>${nbAdulte} 
adulte(s)</b> et de <b>${nbEnfant} enfant(s) </b>, avec un revenu fiscal de <b>${rvnFoyer} €</b> s'élève à `

// Calcul du montant de l'impôt à payer
switch (true) {
    case rvnNetImposable >= 10778 && rvnNetImposable <= 27478:
        fraction = rvnNetImposable - 10778
        impots = (fraction*0.11)*nbPart
        message += `<b>${Math.round(impots)}€</b></p>`
    break
    case rvnNetImposable >= 27479 && rvnNetImposable <= 78570:
        fraction = rvnNetImposable - 27479
        impots = ((16700*0.11) + (fraction*0.30))*nbPart
        message += `<b>${Math.round(impots)}€</b></p>`
    break
    case rvnNetImposable >= 78571 && rvnNetImposable <= 168994:
        fraction = rvnNetImposable - 78571
        impots = ((16700*0.11) + (51091*0.30) + (fraction*0.41))*nbPart
        message += `<b>${Math.round(impots)}€</b></p>`
    break
    case rvnNetImposable >= 168994 :
        fraction = rvnNetImposable - 168994
        impots = ((16700*0.11) + (51091*0.30) + (90423*0.41) +(fraction*0.45))*nbPart
        message += `<b>${Math.round(impots)}€</b></p>`
    break
    default: 
    impots = 0
    message+=`<b>${impots}€</b></p>`
}

result.innerHTML = message