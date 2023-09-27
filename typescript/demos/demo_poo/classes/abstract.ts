abstract class Base {
    // private int: number;

    constructor(private _int: number){
        // this.int = int
    }

    public get int(): number {
        return this._int;
    }
    public set int(value: number) {
        this._int = value;
    }

    abstract toString(): string

    parler(){
        console.log("Hello toto");
    }
}

class Basic extends Base {

    private firstname: string

    constructor(firstname: string, int: number){
        super(int)
        this.firstname = firstname
    }

    toString(): string {
        
        return "Hello world"
    }
}
