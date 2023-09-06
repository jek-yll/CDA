const result = document.querySelector(".result")

let diametre = prompt(`Veuillez saisir le diamètre de votre cerle`) 
let perimetre = diametre * Math.PI
let aire = Math.PI * (diametre / 2)**2

result.innerHTML =`
<h3>Utilisation de la constante &pi; (pi)</h3>
<P> La valeur de &pi; est : ${Math.PI}</p>
<hr>
<h3>Calcul du périmètre (d x &pi;) et de l'aire (&pi; x r²) d'un cercle</h3>
<p>Diamètre = ${diametre}cm</p>
<p>Périmètre = ${perimetre}cm</p>
<p>Aire = ${aire}cm²</p>
<p>Périmètre (arrondi) = ${Math.round(perimetre)}cm</p>
<p>Aire (arrondi) = ${Math.round(aire)}cm²</p>
`