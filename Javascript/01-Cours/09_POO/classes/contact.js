export class Contact {
    constructor (){
        this.nom = "Dupond"
        this.prenom = "Toto"
        this.email = "toto@mail.fr"
    }

    get name() {
        return this.nom
    }

    set name(n) {
        this.nom = n
    }

    toString(){
        return `Je suis ${this.prenom} ${this.nom}`
    }
}