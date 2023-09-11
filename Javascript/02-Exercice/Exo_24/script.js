const result = document.querySelector(".result")

let annee = 2015,
    habitants = 96809,
    accroissement = 0.89,
    nbAnne = 0,
    affichage = `<p>En <b>${annee}</b>, il a ete recensé <b>${habitants} habitants</b>. Le taux d'accroissement 
    de la population étant de <b>${accroissement}%</b>. Combien faudra-t-il d'années pour atteindre une population de 
    <b>120 000 habitants</b> ?
    </p>
    <hr>
    `

while (habitants <= 120000) {
    habitants += habitants*accroissement/100
    annee ++
    nbAnne ++
    affichage += `<p>En <b>${annee}</b>, il y aura <b>${Math.round(habitants)} habitants</b></p><hr>`
}

affichage += `Avec un taux d'accroissement de la population de <b>${accroissement}%</b>, en ${annee-1}, il y aura <b>${Math.round(habitants)} habitants</b>
dans la ville de <b>Tourcoing</b>. Il aura fallu <b>${nbAnne} années</b>.</b>`

result.innerHTML = affichage