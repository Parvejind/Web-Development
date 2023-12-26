let pattern = 'pw'

let RegExOne = new RegExp(pattern)

let flag = 'gi'
let RegExTwo = new RegExp(pattern, flag)

let RegExThree = /pw/gi

const strToCheck = "PW is growing at a rapid speed and recently        they are working on Pwskills on create skills base pwcontnet"

const result = regExThree.test(strToCheck)
console.log(result)

const anotherResult = strToCheck.match(regExThree)
console.log(anotherResult)

const oneMoreResult = strToCheck.replace(regExThree, 'p-w')
console.log(oneMoreResult)

const webUrl = "https://pwskills.com/hitesh%2choudhary"

const useableUrl = webUrl.replace(/%\d0/, '-')
console.log(useableUrl)