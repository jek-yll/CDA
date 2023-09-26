// 1.
import { Personne } from './../../../../../Javascript/04-TpPOO/Contact/modules/js/Personne';

interface User {
    nom: string,
    age: number,
    occupation: string
}

// 2.

enum STATUS {
    ADMIN,
    GERANT
}

interface Admin {
    nom: string,
    age: number,
    role: STATUS,   
}

// 3. 

type PersonneType = Admin | User




let personne1: User = {
    nom: "Toto Dupond",
    age: 35,
    occupation: "Facteur"
}


let personne2: Admin = {
    nom: "Jeanne Doe",
    age: 25,
    role: STATUS.ADMIN
}


let personne3: User = {
    nom: "Michel Michel",
    age: 23,
    occupation: "Facteur"
}


let personne4: Admin = {
    nom: "Michel Flinch",
    age: 64,
    role: STATUS.GERANT
}

let personnes: PersonneType[] = [personne1, personne2, personne3, personne4]

personnes.forEach(personne => console.log(`${personne.nom} ${personne.age}`))