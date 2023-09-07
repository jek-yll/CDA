const hypotenuse = document.querySelector(".hypotenuse")

let premierCotes,
    secondCotes,
    affichage


premierCotes = Number(prompt("Veuillez saisir la longueur du premier cotes adjacent à l'angle droit "))
secondCotes = Number(prompt("Veuillez saisir la longueur du second cotes adjacent à l'angle droit "))

affichage = 
`
<p>Les longueurs des cotés adjacent à l'angle droit étant de ${premierCotes}cm, et de ${secondCotes}cm</p>
<ul>
    <li><p>La longueur de l'hypoténuse est de ${Math.sqrt(premierCotes**2 + secondCotes**2).toFixed(2)}</p></li>
</ul>
`

hypotenuse.innerHTML = affichage