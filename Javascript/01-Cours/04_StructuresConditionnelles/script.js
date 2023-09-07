/* 
    Les structures conditionnelles 
*/

let compte = 300

if (compte > 0) {
    console.log("Votre compte est créditeur ");
}

if (compte < 0) {
    console.log("Votre compte est débiteur");
}


if (compte > 0) {
    console.log("Votre compte est créditeur ");
} else {
    console.log("Votre compte est débiteur");
}


if (compte > 0) {
    console.log("Votre compte est créditeur ");
} else if (compte === 0) {
    console.log("Votre compte est a 0");
}  else {
    console.log("Votre compte est débiteur");
}

let estVrai = false

if (estVrai){
    console.log("C'est vrai");
} else {
    console.log("C'est faux");
}

