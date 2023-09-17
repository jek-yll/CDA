export class Task {
    constructor (id, text){
        this.id = id
        this.text = text
    }

    render() {
        return `
            <li class="list-group-item d-flex justify-content-between align-items-center" id="${this.id}">
                ${this.text}
                <button class="btn btn-danger" id="deleteTask">Supprimer</button>
            </li>
        `
    }
}