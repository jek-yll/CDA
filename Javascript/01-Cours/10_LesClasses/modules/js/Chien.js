import { Mammifere } from "./Mammifere.js";

export class Chien extends Mammifere {
    /* constructor(nom, type){
        super(nom, type)
    } */

    manger(){
        if (this.alreadyEat == false) {
            console.log("Je me nourris");
            this.alreadyEat = true
        } else {
            console.log("J'ai déjà mangé");
        }
    }

    aboyer() {
        console.log("Wouaf");
    }
}