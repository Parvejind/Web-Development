let arr = [2, 3, 4,]

arr.forEach(function(element, index, arr){
    console.log(index, element, arr)
})

arr.forEach((element, index, arr) =>{
    console.log("arrow: ", index, element, arr)
})

const heros = ["nagraj", "doga", "dhruva", "maniraj"]

heros.forEach((el) => {console.log(el.toUpperCase())})

arr.map(function(element, index, arr){
    console.log(element, index, arr)
})

heros.map((h) => console.log(h. toUpperCase()))

//filter
console.log(heros)
const herosWithRaj = heros.filter((h) => {
    h.endsWith('raj')
})
console.log(herosWithRaj)

//shopping cart

const cartBill = [2, 30, 50]
const sumOfCartBill = cartBill.reduce((pre, curr) => prev
+curr, 0)
console.log(sumOfCartBill)

const gameScore = [200, 300, 310, 250, 150]

//check if all values are numbers
console.log(typeof gameScore[1])
const gameScoreCheck = gameScore.every((v) => typeof v ===
Number)
console.log("check:", gameScoreCheck)

// find score above 200

const above200 = gameScore.find((score) => score > 200)

console.log(above200)

//finIndex
//some
//sort