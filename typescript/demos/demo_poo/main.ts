import { Person, Student } from "./classes/Person.js";
import { Client, ClientRegulier } from "./interfaces/Clients.js";


let person: Person;

person = new Person("Albert","DUPONT",45,54545556)
person.firstname = "Toto"
console.log(person.fullname)
console.log(person.numeroIdNat)
console.log(`Il y a actuellement ${Person.count} personnes`)

// un tableau de person
let personArray: Person[] = [];

personArray.push(person)

let myStudent: Student;

myStudent = new Student("titi","tata",45,545215,true)

console.log(myStudent.toString())

console.log(`Il y a actuellement ${Person.count} personnes`)

console.clear();

let monObjetA: Client = {
    firstname: "Alphonse",
    lastname: "DUPONT"
}

let monObjetB: Client = {
    firstname: "Alphonse",
    lastname: "DUPONT",
    numeroIdNat: 12345,

    acheter() {
        if(this.firstname === "blabla" ){
            return 99
        } else {
            return 23
        }
    }
}

let monObjetC: ClientRegulier = {
    firstname: "Thierry",
    lastname: "DUPONT",
    pointFide: 42,

}

console.log(monObjetC.firstname);