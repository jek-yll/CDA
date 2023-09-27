class Pile<T>{

    public pile: T[]

    constructor(){
        this.pile = []
    }

    empiler(value: T){
        this.pile.push(value)
        console.log(this.pile);
    }

    depiler(){
        this.pile.pop()
        console.log(this.pile);
    }
}

let maPile = new Pile
maPile.empiler("42")
maPile.empiler(552)
maPile.empiler(true)
// maPile.depiler()
console.log(maPile);