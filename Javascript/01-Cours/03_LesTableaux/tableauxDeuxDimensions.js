/* 
    Les tableaux à deux dimensions
*/
console.log("--------------Les tableaux à deux dimensions-------------");

let legumes2 = ["Carotte", "Choux", "Patate"]
let fruit = ["Raisin", "Banane", "Abricots"]

let primeur = [legumes2, fruit]
console.table(primeur);
console.log(primeur[1][1])

// Avec tableaux associatifs
let zoo = [
    {
        pseudo:"Simba",
        espece:"Lion",
        continent:"Afrique"
    },
    {
        pseudo:"Jack",
        espece:"Kangourou",
        continent:"Oceanie"
    }
]

console.table(zoo);
console.log(`Les pseudos sont : ${zoo[0].pseudo}, ${zoo[1].pseudo}`);