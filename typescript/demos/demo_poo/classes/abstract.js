"use strict";
class Base {
    // private int: number;
    constructor(_int) {
        this._int = _int;
        // this.int = int
    }
    get int() {
        return this._int;
    }
    set int(value) {
        this._int = value;
    }
    parler() {
        console.log("Hello toto");
    }
}
class Basic extends Base {
    constructor(firstname, int) {
        super(int);
        this.firstname = firstname;
    }
    toString() {
        return "Hello world";
    }
}
