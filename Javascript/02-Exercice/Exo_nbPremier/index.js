const result = document.querySelector(".result")

let nbUser = Number(prompt("Saisir un nombre"))
affichage = ""

for (let i = 1; i <= nbUser; i++) {
    
    for ( let j = i+1; j < i; j++ ){
        if (i % j === 0){
            break
        }
        affichage += i + " "
    }
    
}

console.log(j)

result.innerHTML = affichage

/* if ( i % 1 === 0 && i % i === 0  ) {
    affichage += i + " "
} */