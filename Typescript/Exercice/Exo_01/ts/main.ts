let userName: string = "Toto";
let userAge: number = 42;
let isLogin: boolean = false;

let userNames: string[] = []
userNames.push(userName)
console.log(userNames);


let person : object = {
    firstName: "Dupont",
    age: 20,
    isLoggedIn: true
}
// console.log(person.age); // Ne retourne rien -> Property 'age' does not exist on type 'object'.

let person1 : { firstName : string, age : number, isLoggedIn : boolean } = {
    firstName : "Dupont",
    age : 20,
    isLoggedIn : true
}
console.log(person1.age);

let person2 = {
    firstName : "Dupont",
    age : 20,
    isLoggedIn : true
}
console.log(person2.age);

let infos: [string, number]