let score = 4
function one(){
    let score = 0
    console.log(score)
}
function two(){
    let score = 3
    console.log(score)
}
function three(){
    console.log(score)
}
one()
two()
three()
console.log(score)

function outerFunc(){
    let outervar = 'I am at scope level 1'
    function innerFunc(){
        console.log(outervar)
    }
    innerFunc()
}

// outerFunc()

const myGlobalvalue = 0

function func(){
    const val1 = 1
    console.log(myGlobalvalue)

    function innerFunc() {
        const val2 = 2
        console.log(val2, val1, myGlobalvalue)

        function innerofInnerfunc(){
            const val3 = 3
            console.log(val3,val2, val1, myGlobalvalue)
        }
        innerofInnerfunc()
    }
    innerofInnerfunc()
}

// 

// 

function superFunc(){
    let outerVale = 'I am outer'
    function minorFunc(){
        console.log(outerValue)
    }
    minorFunc()
}

// 

const errorMessage = "File not found"

setTimeout(function callback(){
    console.log(errorMessage)
}, 1000)

let pageCount = 0

const items = [2, 4, 5, 7, 8]

items.forEach(function iterator(num){
    pageCount++
    console.log(num)
})

console.log("page COunt", pageCount)