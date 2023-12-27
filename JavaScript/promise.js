function createPromise() {
    return new Promise(function exec(resolve, reject) {
        // your code goes here
        setTimeout(function f() {
            console.log("timer done")
            resolve("done")
        }, 3000)
    })
}

async function consume() {
try {
    console.log("inside function")
    const response = await createPromise()
    const response1 = await createPromise()
    console.log("response is", response)
} catch {
    console.log("handled", err)
    }
}

console.log("start")
consume()

console.log("end")

// console.log("start")
// let x = createPromise()
// console.log("got a new promise")
// x.then(function f(value) {
//     console.log("promise done", value)
// }).catch(function g(value) {
//     console.log("handled", value)
// }).finally(function fn() {
//     console.log("finally")
// })
// console.log("end")

// for(let i = 0; i < 10000000000; i++)
//         // Some code
// }