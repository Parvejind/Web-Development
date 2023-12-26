let emp = {
    id: 101,
    name: 'Mr. Raju',
    age: 20
}

let keys = Object.keys(emp)
console.log(keys)

let values = Object.values(emp)
console.log(values)

let entries = Object.entries(emp)
console.log(entries)

// Everythin freeze can't change 
// anything.
Object.freeze(emp)
emp.id = 100
console.log(emp)

// seal but you can undate
Object.seal(emp)
emp.id = 100
emp.address = 'random'
console.log(emp)

let o = Object.assign({x: 16}, emp)
console.log(o)