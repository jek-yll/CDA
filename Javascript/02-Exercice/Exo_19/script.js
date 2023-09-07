const result = document.querySelector(".result")

let taille = prompt("Saisir votre taille (en cm)")
let poids = prompt("Saisir votre poids (en kg)")
let affichage = `<p>Pour ${taille} cm et ${poids} kg</p>`

switch (true) {
    case (poids >= 48 && poids < 54 && taille >= 169 && taille < 183) ||
     (poids >= 54 && poids < 60 && taille >= 166 && taille < 178) ||
     (poids >= 60 && poids < 66 && taille >= 163 && taille < 175) ||
     (poids >= 66 && poids < 72 && taille >= 160 && taille < 172) :
    affichage += "<p>Vous portez une taille 2</p>" 
    break
    case (poids >= 43 && poids < 66 && taille >= 145 && taille < 172) :
    affichage += "<p>Vous portez une taille 1</p>"
    break
    case (poids >= 54 && poids < 78 && taille >= 163 && taille < 187) :
    affichage += "<p>Vous portez une taille 3</p>"
    break
    default : 
    affichage += "<p>Pas de taille disponible</p>"
}

result.innerHTML = affichage