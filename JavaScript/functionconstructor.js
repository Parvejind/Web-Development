function procuct (n, p, r) {
    this.name = n
    this.price = p
    this.rating = r

}

const p = new procuct ("macbook", 1500000, 5)
console.log(p)

let x = {
    p: procuct
}

x.p("airpords", 20000, 5)
console.log(x)

/**
 * 1. this keyword in js is diff than other languages
 * 2. this keyword refers to the context from where we called
 * 
 * - in the function constructor also
 * - if you return primitive it is ignored and we return the object reffered by ths
 * - if you returned a custom obj, then the custom obj is returned
 * - if you don't return anything , then object referred by this returned
 */
