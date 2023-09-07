const carre = document.querySelector(".carre")
const rectangle = document.querySelector(".rectangle")

let longueur,
    largeur,
    affichageCarre,
    affichageRectangle

longueur = Number(prompt("Veuillez saisir une longueur :"))
largeur = Number(prompt("Veuillez saisir une largeur :"))

affichageCarre = 
`
<p>Les longueurs des côtès du carré  étant de ${largeur}cm</p>
<ul>
    <li><p>Le périmètre de ce carré est de ${largeur*4}</p></li>
    <li><p>L'aire de ce carré est de ${largeur**2}</p></li>
</ul>
`

affichageRectangle = 
`
<p>Les longueurs des côtès du rectangle étant de ${longueur}cm pour la longueur, et de ${largeur}cm pour la largeur</p>
<ul>
    <li><p>Le périmètre de ce rectangle est de ${longueur*2 + largeur*2}</p></li>
    <li><p>L'aire de ce rectangle est de ${longueur*largeur}</p></li>
</ul>
`

carre.innerHTML = affichageCarre
rectangle.innerHTML = affichageRectangle
