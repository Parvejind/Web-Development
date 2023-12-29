const Product = (n, p, r) => {
    this.name = n
    this.price = p
    this.rating = r
}

const p = new Product("iphone", 100000, 5)
console.log(p)

// The theory of this keyword pointing to calling context is not applicalbe with arrow function