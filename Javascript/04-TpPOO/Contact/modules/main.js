import { Personne } from "./js/Personne.js"

const radios = [...document.querySelectorAll('input[name=titre]')]
const nom = document.querySelector('#nom')
const prenom = document.querySelector('#prenom')
const dateNaissance = document.querySelector('#dateNaissance')
const telephone = document.querySelector('#telephone')
const email = document.querySelector('#email')
const tableau = document.querySelector('.tableau')
const ajouter = document.querySelector('#ajouter')

let titre

ajouter.addEventListener("click", () => {

    const resetForm = () => {
        nom.value = ''
        prenom.value = ''
        dateNaissance.value = ''
        telephone.value = ''
        email.value = ''
        radios.checked = false
    }

    radios.forEach(radio => {
        if(radio.checked) {
        titre = radio.value
        } 
    });

    let nouveauContact = new Personne(titre, nom.value, prenom.value, dateNaissance.value, telephone.value, email.value)
    tableau.innerHTML += nouveauContact.creerContact()
    
    resetForm()
})