const mot1 = document.querySelector("#mot1")
const mot2 = document.querySelector("#mot2")

let mot = prompt("Veuillez saisir un mot")

let tableLetter = mot.split("")
let tableReverse = tableLetter.reverse()
let newMot = tableReverse.join("")

mot1.innerHTML = mot
mot2.innerHTML = newMot

if (mot === newMot) {
    palindrome.innerHTML = `<p>Le mot ${mot} est un palindrome</p>`
} else {
    palindrome.innerHTML = `<p>Le mot ${mot} n'est pas un palindrome</p>`
}