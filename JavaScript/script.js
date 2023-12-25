// Conditions and Loops

let age = 17
if (age >= 18) {
    console.log("You are Allowed")
}

else {
    console.log("You are not allowed")
}

let signal = "red"
if (signal == "red") {
   console.log("Red => STOP")
} // Condition 1
else if(signal == "yellow") {
   console.log("yellow => Go Slow")
} // Condition 2 
else if (signal == "green") {
console.log("Green => Go Fast")
 } else {
    console.log("Invalid")
} // Last 

Switch Case
let user = "Admin"
switch(user){
    case "Admin"
    console.log("He is Admin")
    break

    case "Student"
    console.log("He is Student")
    break

    case "Mentor"
    console.log("He is Mentor")
    break

    default
    console.log("I am Default")
}

// Loops
// do while, while, for

for(let i = 0; i < 5; i++) {
    console.log(i)
}

 while (initialization, condition, 
     increment, decrement)

let i = 0
while(i > 5) {
console.log(i)
i++
}

let i = 0
do{
console.log("Hello World")
i++
}while(i < 5)

Ternary Operator / Ternary Condition
Condition ? TRUE:False

isloggedIn = true
isloggedIn ? console.log("HOME PAGE")
: console.log("LOginPage")
