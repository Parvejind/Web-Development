let myHeros = ["thor", "spiderman"]
let dcHeros = ["batman", "flash", "superman"]

let heropower = {
    thor: "hamer", 
    spiderman: "sling",

    getSpidermanPower: function(){
        console.log9(`spidy power is ${this.spiderman}`)
    }
}

Object.prototype.hitesh = function(){
    console.log(`HItesh is present in all objects`)
}

console.log(myHeros.hitesh())
console.log(heropower.hitesh())

Array.prototype.heyHitesh = function(){
    console.log(`HItesh says hi`)
}
console.log(myHeros.heyHItesh())
console.log(heropower.heyHItesh())

//inheritance

const User = {
    name: "top name",
    email: "top@gmail.com"
}

const Teacher = {
    makevideos: true
}

const TeachingSupport = {
    isAvailable: false
}

const TAAssistant = {
    makeAssignment: "JS Assignment"
    fulltime: true,
    _proto_: TeachingSupport
}

// Teacher._proto_ = User

Object.setPrototypeOf(TeachingSupport, Teacher)

console.log(TAAssistant.isAvailable)

String.prototype.truelength = function(){
    console.log(`True lenght is ${this.trim().length}`)
}

"hitesh. ".truelength()
"anurag. ".truelength()
