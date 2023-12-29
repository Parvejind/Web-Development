class ComplexNumber {
    #real
    #img
    constructor(r, i) {
        this.#real = r
        this.#imag = i
    }

    display() {
        console.log(this.#real, " i ",this.#imag,)
    }

    get real() {
        return this.#real
    }
    
    get imag() {
        return this.#imag
    }



    addComplexNumer(c) {
        this.#real += c.real
        this.#imag += c.imag

    }
}

const c1 = new ComplexNumber(2, 3)
c1.display()
cost c2 = new ComplexNumber(4, 5)
c1.addComplexNumer(c2)
c1.display()