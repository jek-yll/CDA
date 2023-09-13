
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
}

replay();

let tester = () => {
    valeur = nbUser.value
    if (compteur < 4 ) {
        switch (true){
            case valeur > reponse :
                ++compteur
                nbCoup.innerHTML = `Nombre de coup : ${compteur}`
                indice.innerHTML = `le nombre à trouver est plus petit`
                break;
            case valeur < reponse :
                ++compteur
                nbCoup.innerHTML = `Nombre de coup : ${compteur}`
                indice.innerHTML = `le nombre à trouver est plus grand`
                break;
            default: 
                ++compteur
                nbCoup.innerHTML = `Nombre de coup : ${compteur}`
                indice.innerHTML = `Bien joué vous avez gagné au bout de ${compteur} tentative(s)`
                nbUser.disabled = true
                test.disabled = true
        }
    } else {
        nbCoup.innerHTML = `Nombre de tentative épuisé`
        indice.innerHTML = `Perdu ! La réponse était : ${reponse}`
        nbUser.disabled = true
        test.disabled = true
    }
}

