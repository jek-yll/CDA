const boutons = [...document.querySelectorAll(".bouton")]
const listeCodes =  boutons.map(bouton => bouton.dataset.key)
const ecranBas = document.querySelector(".ecranBas")
const ecranHaut = document.querySelector(".ecranHaut")

let chaine = ""

document.addEventListener('keydown', (event) => {
    const valeur = event.code
    console.log(event);
    calculer(valeur)
})

document.addEventListener('click', (event) => {
    const valeur = event.target.dataset.key
    calculer(valeur)  
})


const calculer = (valeur) => {
    if (listeCodes.includes(valeur)) {
        switch(valeur) {
            case 'Backspace':
                ecranHaut.innerHTML = ""
                ecranBas.innerHTML = ""
                chaine = ""
                break;
            case 'Enter':
                try{
                    const calcul = eval(ecranBas.textContent)
                    ecranHaut.innerHTML = chaine
                    ecranBas.textContent = calcul
                } catch(error){
                    alert(`Calcul incorrect \n ${error}`)
                }
                break;
            /* 
                Todo : ajout case: 
                NumpadDivide
                NumpadMultiply
                NumpadSubtract
                NumpadAdd
            */
            default:
                const indexCode = listeCodes.indexOf(valeur)
                const caractere = boutons[indexCode]
                chaine += caractere.textContent
                ecranBas.textContent += caractere.innerHTML
        }
    }
}