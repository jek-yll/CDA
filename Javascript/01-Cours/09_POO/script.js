import { Contact } from "./classes/contact.js";

let car = {
    model: "308",
    marque: "Peugeot",
    couleur: "rouge",

    fulName(){
        console.log(this.marque + " " + this.model);
    }

}

console.log(car.marque + " " + car.model);
car.fulName()


class Person {
    constructor(name, age) {
        this.name = name
        this.age = age
    }

    toString() {
        // return this.age = `${this.age}`
        return `Bonjour je m'appelle ${this.name} et j'ai ${this.age} ans`
    }

    hello(){
        console.log(`Bonjour je suis ${this.name}`);
    }
}

let personne1 = new Person("Pierre", 30)
let personne2 = new Person("Toto", 26)

personne1.hello()
console.log(personne2.toString());

let contact1 = new Contact()
console.log(contact1.toString());