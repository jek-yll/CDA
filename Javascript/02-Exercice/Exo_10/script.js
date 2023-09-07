const result = document.querySelector(".result")

const mail = "contac@teamjs.fr"
const mdp = "leLundiAuSoleil"

let mailUser,
    mdpUser,
    affichage

mailUser = prompt("Saisir votre adresse mail")
mdpUser = prompt("Saisir votre adresse mot de passe")

if (mail === mailUser && mdp === mdpUser) {
    affichage = `Bienvenue sur votre espace sécurisé`
} else {
    affichage = `Vos informations sont incorrect`
}

result.innerHTML = affichage