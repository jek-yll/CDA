import { Moto } from "./js/Moto.js";
import { Voiture } from "./js/Voiture.js";

const auto = document.querySelector(".auto")
const moto = document.querySelector(".moto")

let renault = new Voiture("Renault", "Kangoo", 240000, 2003, true)
let bmw = new Moto("BMW", "R1150R Rockster", 65000, 2005)

auto.innerHTML = renault.display() 
moto.innerHTML = bmw.display()