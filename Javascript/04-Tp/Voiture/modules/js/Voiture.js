export class Voiture {
    constructor(marque, modele, vitesse){
        this.marque = marque
        this.modele = modele
        this.vitesse = vitesse
    }

    maVitesse(){
        console.log(`La vitesse de la ${this.marque} ${this.modele} est actuellement de ${this.vitesse} km/h`);
    }

    accelerer(){
        console.log(this.vitesse += 10);
    }

    tourner(){
        console.log(this.vitesse -= 5); 
    }
}