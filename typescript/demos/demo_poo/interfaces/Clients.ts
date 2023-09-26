interface Client {
    firstname: string;
    lastname: string;
    numeroIdNat?: number; // propriete pas obligatoire : ?

    acheter?: () => number;
}

// Elles peuvent hérité d'autres interface

interface ClientRegulier extends Client {
    pointFide: number;
}

// Elles peuvent être exporté 

export {Client, ClientRegulier}