"use strict";
console.log("Bases Typescript");
let test;
test = true;
test = "true";
test = 42;
let monPrenom = "Loic";
let monAge = 29;
let isPresent = true;
monPrenom = "true";
monAge = 30;
isPresent = false;
let firstname;
firstname = "Loïc";
let age = 42;
let present = true;
console.log("nombre de lettre dans " + firstname + " " + firstname.length);
console.log("Type de la variable firstname : " + typeof firstname);
console.log("Type de la variable age : " + typeof age);
console.log("Type de la variable present : " + typeof present);
let ageString = age.toString();
let presentString = present.toString();
console.log(ageString + " " + typeof ageString);
console.log(presentString + " " + typeof presentString);
let message = `
Bonjour ${firstname}
Vous avez ${age} ans 
Vous etes ${present ? "present" : "absent"}
`;
console.log(message);
function addition(a, b) {
    return a + b;
}
function multiply(a, b) {
    return a * b;
}
function logMessage(message) {
    console.log(message);
}
let result = addition(1, 5);
console.log("resultat de 1 + 5" + result);
let numbers = [1, 2, 3, 4];
let numbers2 = [1, 2, 3, 4];
numbers.push(5);
console.table(numbers);
let tab;
