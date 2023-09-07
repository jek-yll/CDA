const result = document.querySelector(".result")

let nb1, 
    nb2,
    affichage

nb1 = Number(prompt("Saisir un premier nombre différent de 0"))
nb2 = Number(prompt("Saisir un second nombre différent de 0"))

if( nb1 % nb2 === 0 ) {
    affichage = `Le nombre ${nb1} est divisible par ${nb2}`
} else {
    affichage = `Le nombre ${nb1} n'est pas divisible par ${nb2}`
}

result.innerHTML = affichage