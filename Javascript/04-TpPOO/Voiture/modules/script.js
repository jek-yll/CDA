import { Voiture } from "./js/Voiture.js";

let voiture01 = new Voiture("Bmw", "Serie 1", 80)
let voiture02 = new Voiture("Mercedes", "GLB", 100)

voiture01.accelerer()
voiture01.accelerer()
voiture01.accelerer()
voiture01.maVitesse()

console.log("--------------------");

voiture02.accelerer()
voiture02.accelerer()
voiture02.tourner()
voiture02.tourner()
voiture02.maVitesse()