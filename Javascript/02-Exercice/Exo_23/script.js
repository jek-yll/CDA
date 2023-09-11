const result = document.querySelector(".result")

let affichage = ""

for (let i = 1 ; i <= 10 ; i ++){
    affichage += 
    `
    <div class="col">
        <div class="border p-1">
            <b>Table de ${i}:</b>
                <ul>
    `
    for (let j = 1 ; j <= 10 ; j++){
        affichage += 
        `
        <li> ${i} x ${j} = <b>${i*j}</b></li>
        `
    }
    affichage += 
    `       </ul>
        </div>
    </div>
    `
}

result.innerHTML = affichage 