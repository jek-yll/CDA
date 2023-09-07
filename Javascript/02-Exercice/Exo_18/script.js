const result = document.querySelector(".result")

let choix = prompt("Distributeur de Boisson : \n 1)Eau \n 2)Jus d'orange \n 3)Limonade \n 4)Café \n 5)Thé \n\n Faites votre choix :")
let affichage = `<p>Votre choix : ${choix}</p>`

switch (choix) {
    case "1": 
    affichage += `<p>Votre Eau est servie ...</p>`
    break;
    case "2": 
    affichage += `<p>Votre Jus d'orange est servie ...</p>`
    break;
    case "3": 
    affichage += `<p>Votre Limonade est servie ...</p>`
    break;
    case "4": 
    affichage += `<p>Votre Café est servie ...</p>`
    break;
    case "5": 
    affichage += `<p>Votre Thé est servie ...</p>`
    break;
    default: 
    affichage += `<p>Nous n'avons pas cette boisson</p>`
}

result.innerHTML = affichage 