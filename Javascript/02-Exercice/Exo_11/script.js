const result = document.querySelector(".result")

const voyelle = ["a","e","i","o","u","y"]

let letter,
    affichage

letter = prompt("Saisir une lettre")

if ( voyelle.includes(letter) || voyelle.includes(letter.toLowerCase())) {
    affichage = `La lettre ${letter} est une voyelle`
} else {
    affichage = `La lettre ${letter} est une consonne`
}

result.innerHTML = affichage