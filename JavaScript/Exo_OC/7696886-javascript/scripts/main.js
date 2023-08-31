/*********************************************************************************
 * 
 * Point d'entrée, c'est lui qui intialise le jeu et lance la boucle de jeu. 
 * 
 *********************************************************************************/

lancerJeu()

let inputEcriture = document.getElementById("inputEcriture");
console.log(inputEcriture)

let btnValider = document.getElementById("btnValiderMot");
console.log(btnValider)

let affichageMot = document.querySelector(".zoneProposition");
console.log(affichageMot)

let affichageScore = document.querySelector(".zoneScore span");
console.log(affichageScore)

let selectChoix = document.querySelectorAll (".zoneOptions input");
console.log(selectChoix)