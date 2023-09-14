import { EtreVivant } from "./EtreVivant.js";

export class Mammifere extends EtreVivant {
    constructor(nom, type, alreadyEat) {
        super(nom, type)
        this.alreadyEat = alreadyEat
        this.naissance()
    }

    naissance(){
        super.naissance()
        console.log("Naissance après une période de gestation");
        this.alreadyEat = false
    }
}