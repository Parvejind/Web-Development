let emptySet = new set()

// console.log(emptySet.size)

let mayArray = [1, 2, 3, 4, 3, 2]
let newSet = new set([...mayArray])
console.log(newSet)

newSet.add(9)
newSet.clear()
console.log(newSet)
// console.log(newSet.has(9))

// Set difference

function setDifference(setA, SetB){
   return new Set([...setA].filter(el => !SetB.has(el)))
}

//+++++++++++++++++++++++++++++++++++++++++++++++++

let map = new Map()

console.log(map.size)

let arr = [
    [1, "Mithun"],
    [2, "Alka"],
    [3, "Prabir"],
    [4, "Shivam"],
    [5, "Vinay"]
]

arr.map((arrayItem)=> map.set(arrayItem[0],
    arrayItem[1]) )
