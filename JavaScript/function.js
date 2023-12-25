function greet() {
    console.log("Hi there")
    console.log("how are you")
}

function sqr(x) { // x -> parmeter
    console.log(x*x)
    return x*x
}
greet()

let a = sqr(8) // 8 -> arguments
console.log(a)