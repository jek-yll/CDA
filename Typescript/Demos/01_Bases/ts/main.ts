console.log("Bases Typescript");

// Inference (typescript le fait pour nous)
    
let test; // type any
test = true
test = "true"
test = 42

let monPrenom = "Loic" // type string
let monAge = 29 // type number
let isPresent = true // type boolean

// je peux reasigner des valeurs uniquement du même type
monPrenom = "true"
// monPrenom = true // Type 'number' is not assignable to type 'string'
monAge = 30
isPresent = false


// Assignation (on donne nous meme le type à notre variable)

// Pour spécifier le type d'une variable, la syntaxe est la suivate : 
let firstname: string; 
firstname = "Loïc";
// firstname = 42 // Type 'number' is not assignable to type 'string'.

// let age: number = "42" // Type 'string' is not assignable to type 'number'.
let age: number = 42;
let present: boolean = true;

// Via TypeScript, on a une auto complétion et une intellisense plus poussée
console.log("nombre de lettre dans "+firstname+" "+ firstname.length);

// Conaitre le type d'une variable avec typeof
console.log("Type de la variable firstname : "+typeof firstname);
console.log("Type de la variable age : "+typeof age);
console.log("Type de la variable present : "+typeof present);

let ageString: string = age.toString()
let presentString: string = present.toString()

console.log(ageString+ " "+ typeof ageString);
console.log(presentString+ " "+ typeof presentString);

let message: string = `
Bonjour ${firstname}
Vous avez ${age} ans 
Vous etes ${present ? "present" : "absent"}
`
console.log(message);

// Pour la création de fonction en TS, la difference est l'ajout du typage pour les parametres
// De la sorte on sécurise les utilisations futures de notre fonction en vérouillant des types incorrects

function addition(a: number, b: number): number{
    return a + b
}

function multiply(a: number, b: number): number{
    return a * b
}

function logMessage(message: string): void{
    console.log(message);
}

let result: number = addition(1,5)
console.log("resultat de 1 + 5"+ result);

// let resultB: number = multiply("2","3") // ne fonctionne pas

// Array 

// Pour définir un tableau de number, il faut utiliser le type suivi des crochets
let numbers: number[] = [1,2,3,4]
// ou 
let numbers2: Array<number> = [1,2,3,4]


// numbers.push("5") // Erreur
numbers.push(5)
console.table(numbers);

// Dans un tableau array de type any on peut mettre ce que l'on veut

let tab: any[];

// On peux déclarer un tableau qui contient plusieurs types alors que tous ces types peuvent être présent dans le tableau
