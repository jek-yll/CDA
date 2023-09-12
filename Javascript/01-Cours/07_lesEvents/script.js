let myButtonClick = () => {
    alert("Vous avez cliqué sur le boutton !")
}

let myButtonOver = () => {
    alert("Vous survolez le boutton !")
}

let myDblClick = () => {
    alert("Vous avez double cliquez sur le boutton !")
}

let myFunctionAlert = (arg) => {
    switch(arg){
        case 1: alert("Vous avez cliqué sur le bouton 1"); break;
        case 2: alert("Vous avez cliqué sur le bouton 2"); break;
        case 3: alert("Vous avez cliqué sur le bouton 3"); break;
        case 4: alert("Vous avez cliqué sur le bouton 4"); break;
    }
}

document.addEventListener("keydown", (event) => {
    if(event.key == 'Enter'){
        alert("Vous avez appuyé sur Enter\nMessage : " + document.querySelector('#keyup').value)
    }
})

/* document.addEventListener("click", (event) => {
    let valeur = event.target.dataset.key
    alert(valeur)
}) */

let datakey = document.querySelector(".datakey")
datakey.addEventListener("click", (event) => {
    let valeur = event.target.dataset.key
    alert(valeur)
})