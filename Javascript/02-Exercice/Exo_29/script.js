const result = document.querySelector(".result")

let nbUser = Number(prompt("Saisir un nombre ")),
    affichage = "<p>",
    i = 1,
    somme = 1

while ( i < nbUser / 2) {
    affichage += `${nbUser} = `
    for ( let j = 1 ; j < nbUser / 2 ; j++)
        if ( somme < nbUser ) {
            somme += i 
            affichage += ` ${i} +`
        }
    i ++
    affichage += `</p>`
}



result.innerHTML = affichage