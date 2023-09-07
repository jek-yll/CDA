const result = document.querySelector(".result")

let nb1 = Number(prompt("Veuillez saisir un premier nombre"))
let nb2 = Number(prompt("Veuillez saisir un second nombre"))
let somme = nb1+=nb2

result.innerHTML =`Vous avez saisi : ${nb1} </br> Vous avez saisi : ${nb2}  </br> La somme de ${nb1} + ${nb2} = ${somme}`