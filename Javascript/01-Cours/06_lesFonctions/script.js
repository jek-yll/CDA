/*
    Création de fonction
*/

// Fonction sans paramètres
function hello() {
    console.log("Hello world");
}

// appel de la fonction
hello()

// Fonction avec paramètres
function helloParams(lastname, firstname = "Jean-Mich") {
    console.log(`Hello ${firstname} ${lastname}`);
}

helloParams("Dupond")

function helloReturn (firstname) {
    let chain = `Hello ${firstname}`
    return chain
}

/* let result = helloReturn("Toto")
console.log(result);

let lastname = prompt("Veuillez saisir votre nom ")

helloParams(lastname) */

function tuples(){
    let nb1 = 1,
        nb2 = 2,
        nb3 = 3
    return [nb1, nb2, nb3]
}

let [valeur1, valeur2, valeur3] = tuples()

console.log(valeur3);

// Fonction callback

function salutation (name) {
    alert ("Bonjour " + name)
}

function salutationCallback (callback){
    let name = prompt("Veuillez saisir votre nom")
    callback(name)
}

salutationCallback(salutation)

/*
    Les fonctions fléchées
*/
let cas1 = () => {
    return "Toto"
}

let cas2 = (a) => {
    return a
}

// fonction fléché avec juste un return (pas d'instruction)
let cas3 = (firstname) => firstname