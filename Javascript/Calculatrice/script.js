const boutons = [...document.querySelectorAll(".bouton")]
const listeCode =  boutons.map(bouton => bouton.dataset.key)
const ecranBas = document.querySelector(".ecranBas")
const ecranHaut = document.querySelector(".ecranHaut")

let chaine = ""

document.addEventListener('keydown', (event) => {
    const valeur = event.code
    calculer(valeur)
})

document.addEventListener('click', (event) => {
    const valeur = event.target.dataset.key
    calculer(valeur)  
})

const calculer = (valeur) => {
    if (listeCode.includes(valeur)) {
        switch(valeur) {
            case 'Backspace':
                ecranHaut.innerHTML = ""
                ecranBas.innerHTML = ""
                chaine = ""
                break;
            case 'Enter':
                const calcul = eval(ecranBas.textContent)
                ecranHaut.innerHTML = chaine
                ecranBas.textContent = calcul
                // ecranBas.textContent = `= ${calcul}`
                break;
            default:
                const indexCode = listeCode.indexOf(valeur)
                const caractere = boutons[indexCode]
                chaine += caractere.textContent
                ecranBas.textContent += caractere.innerHTML
        }
    }
}