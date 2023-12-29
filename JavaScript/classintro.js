class procuct {
    // properties -> variables -> data member
    //  name
    // price
    // rating
    #rating

    constructor(n, p, r) {
        console.log("calling the constructor")
        this.name = 
        this.price = p
        this.rating = r
        // return 10; if you're returing primitive then it will be avoided in construction
        //return {x: 0, y:20} // if you return non primitive then it will be returned
    }

    static custom() {
        console.log("calling a static method")
    }

    getRatingGetter() {
        console.log(this.#rating)
    }

    set  RatingSetter(r) {
        if(r < 0) return
        this.#rating = r
    }

    // behaviour -> function -> member function
    display() {
        console.log("this refers to",this)
        console.log("displaying the current product", this.name, this.price, this.rating)
    }
}

const p = new procuct("iphone", 10000, 5) // new -> creates an empty plain object // -> in the above piece of code we are calling the constructor method
p.name = "xiomi"
console.log(p.name)
console.log(p)
p.setRatingSetter = 10
p.getRatingGetter
console.log(p.rating)

p.display()
procuct.custom()