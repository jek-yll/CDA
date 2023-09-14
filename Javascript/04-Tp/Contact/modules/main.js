import { Personne } from "./js/Personne.js"

const mr = document.querySelector('#monsieur')
const mme = document.querySelector('#madame')
const nom = document.querySelector('#nom')
const prenom = document.querySelector('#prenom')
const dateNaissance = document.querySelector('#dateNaissance')
const telephone = document.querySelector('#telephone')
const email = document.querySelector('#email')
const tableau = document.querySelector('.tableau')

console.log(nom.value);

let ajouter = () => {
    newContact = new Personne (mr.value, nom.value, prenom.value, dateNaissance.value, telephone.value, email.value) 
}

const michel = {
    titre: "Mr",
    nom: "Dupond",
    prenom: "Michel",
    dateNaissance: "08/10/1973",
    telephone: "0606060606",
    mail: "michel@mail.fr"
}



tableau.innerHTML = `
<tr>
    <td>${newContact.titre}</td>
    <td>${newContact.nom}</td>
    <td>${newContact.prenom}</td>
    <td>${newContact.dateNaissance}</td>
    <td>${newContact.telephone}</td>
    <td>${newContact.mail}</td>
</tr>
`

