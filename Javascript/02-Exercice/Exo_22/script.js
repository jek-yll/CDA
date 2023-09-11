const result = document.querySelector(".result")

let affichage = ""
    

for (let i = 1 ; i <= 3; i++) {
    affichage += `<p>Chapitre <b>${i}</b></p>`
    for (let j = 1 ; j <= 3 ; j++){
        affichage += `<p>-Partie <b>${i} . ${j}</b></p>`
    }
}

result.innerHTML = affichage