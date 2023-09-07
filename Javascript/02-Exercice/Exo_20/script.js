const result = document.querySelector(".result")

let mtNetImposable,
    nbAdulte,
    nbEnfant,
    nbPart,
    fraction,
    impots,
    message,
    rvnNetImposable

mtNetImposable = Number(prompt("Saisir votre montant net imposable (en €)"))
nbAdulte = Number(prompt("Saisir le nombre d'adulte du foyer"))
nbEnfant = Number(prompt("Saisir le nombre d'enfant du foyer"))

nbEnfant > 2 ? nbPart = nbAdulte + nbEnfant - 1 : nbPart = nbAdulte + 0.5*nbEnfant

rvnNetImposable = mtNetImposable / nbPart

message = `Le montant de l'impôt sur le revenu pour un foyer composé de ${nbAdulte} adulte(s) et de ${nbEnfant} enfant(s), avec un revenu fiscal de ${mtNetImposable} € s'élève à `

switch (true) {
    case rvnNetImposable >= 10778 && rvnNetImposable <= 27478:
        fraction = rvnNetImposable - 10778
        impots = (fraction*1.11)*nbPart
    break
    case rvnNetImposable >= 27479 && rvnNetImposable <= 78570:
        fraction = rvnNetImposable - 27479
        impots = ((16700*1.11) + (fraction*1.30))*nbPart
    break
    case rvnNetImposable >= 78571 && rvnNetImposable <= 168994:
        
    break
    case rvnNetImposable >= 168994 :
        
    break
    default: 
    impots = 0
    message+=`${impots}`
}


result.innerHTML = message



