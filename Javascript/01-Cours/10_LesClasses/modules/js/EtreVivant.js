export class EtreVivant {
    constructor(nom, type) {
        this.nom = nom
        this.type = type
    }

    naissance() {
        console.log(`${this.nom} est nait`);
    }

    respiration() {
        console.log("Tous les êtres vivants respirent");
    }

    alimentation() {
        console.log("Tous les êtres vivants s'alimentent");
    }
}