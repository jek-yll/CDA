const result = document.querySelector(".result")

let age,
    affichage

age = prompt("Saisir l'age de votre enfant")

if (age < 3){
    affichage = `Votre enfant est trop jeune pour pratiquer`
} else if (age >= 3 && age <= 6) {
    affichage = `Votre enfant est dans la catégorie Baby`
} else if (age >= 7 && age <= 8) {
    affichage = `Votre enfant est dans la catégorie Poussin`
} else if (age >= 9 && age <= 10) {
    affichage = `Votre enfant est dans la catégorie Pupille`
} else if (age >= 11 && age <= 12) {
    affichage = `Votre enfant est dans la catégorie Minime`
} else if (age >= 13 && age < 18) {
    affichage = `Votre enfant est dans la catégorie Cadet`
} else {
    affichage = `Ce n'est plus un enfant`
}

result.innerHTML = affichage