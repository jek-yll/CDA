const saisie = document.querySelector(".saisie")
const result = document.querySelector(".result")
const calcul = document.querySelector(".calcul")
const boutons = document.querySelectorAll(".btn")
const suppr = document.querySelector(".delete")
const equal = document.querySelector(".equalBtn")

let chaineSaisie = "",
    chaineCalcul = "",
    chaineResult = ""

boutons.forEach(bouton => {
    bouton.addEventListener("click", (event) => {
        let valeur = event.target.dataset.key;
        chaineSaisie += valeur 
        saisie.innerHTML += valeur;
        console.log(chaineSaisie);
      });
  });

affichageCalcul = (calcul) => {
    return calcul
}

equalBtn = () => {
    result.innerHTML = result
}