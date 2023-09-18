
const rePlay = document.querySelector('.rePlay')
const test = document.querySelector('.test')
const nbCoup = document.querySelector('.nbCoup')
const nbUser = document.querySelector('#nbUser')
const indice = document.querySelector('.indice')

let replay = () => {
    nbCoup.innerHTML = `Nombre de coup : 0`
    indice.innerHTML = `Tentez votre chance !`
    reponse = Math.floor(Math.random() * 51)
    nbUser.disabled = false
    test.disabled = false
    compteur = 0
    nbUser.focus()
}

let reset = () => {
    nbUser.disabled = true
    test.disabled = true
}

let loose = () => {
    nbCoup.innerHTML = `Nombre de tentative épuisé`
    indice.innerHTML = `Perdu ! Le nombre mystère était : ${reponse}`
    reset ()
}

replay();

let tester = () => {
    valeur = nbUser.value
    switch (true){
        case valeur > reponse :
            indice.innerHTML = `C'est moins !`
            nbUser.value = ''
            break;
        case valeur < reponse :
            indice.innerHTML = `C'est plus !`
            nbUser.value = ''
            break;
        default: 
            indice.innerHTML = `Bien joué vous avez gagné au bout de ${compteur++} tentative(s)`
            reset ()
    }
    if ( compteur < 4 ) {
        nbCoup.innerHTML = `Nombre de coup : ${compteur++}`
    } else {
        reset ()
    }
}

document.addEventListener("keydown", (event) => {
    if(event.key == 'Enter'){
        tester ()
    }
})

document.addEventListener("keydown", (event) => {
    if(event.key == 'ArrowRight'){
        replay ()
    }
})