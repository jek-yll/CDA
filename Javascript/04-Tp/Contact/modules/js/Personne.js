export class Personne {
    constructor(titre, nom, prenom, dateNaissance, telephone, email){
        this.titre = titre,
        this.nom = nom,
        this.prenom = prenom,
        this.dateNaissance = dateNaissance,
        this.telephone = telephone,
        this.email = email
    }

    creerContact(){
        return `
            <tr>
                <td>${this.titre}</td>
                <td>${this.nom}</td>
                <td>${this.prenom}</td>
                <td>${this.dateNaissance}</td>
                <td>${this.telephone}</td>
                <td>${this.email}</td>
            </tr>
        `
    }
}