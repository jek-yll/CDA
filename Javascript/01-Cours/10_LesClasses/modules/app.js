import { Mammifere } from "./js/Mammifere.js";
import { Chien } from "./js/Chien.js";
import { Personne } from "./js/Personne.js";

let mammifer01 = new Mammifere("Rex", "chien")

let chien = new Chien("Medor", "chien")

chien.manger()
chien.aboyer()

let personne01 = new Personne("Dupont", "Toto")
console.log(personne01.type);