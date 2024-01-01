const { captureRejectionSymbol } = require("events")
const { copyFileSync } = require("fs")
const path = require("path")

console.log(path.sep)

console.log(process.env.path)

console.log(path.delimiter)

const filepath1 = '/public_html/home/index.html'

const currentfiepath = __filename
console.log('currentfiepath >', currentfiepath)

let basename = path.basename(currentfiepath)
console.log('basename >', basename)

let basenameWithoutExt = path.basename(currentfiepath, '.js')
console.log(basenameWithoutExt)

let dirname = path.dirname(currentfiepath)
console.log('dirname >', dirname)

console.log('ext1 >', path.extname(currentfiepath))
console.log('ext2 >', path.extname('index.md.js'))

let pathtofile = path.format({
dir: '/public_html/home'
base: 'index.html'
})
console.log('pathtofile >', pathtofile)

console.log('IsAbsolute', path.isAbsolute(currentfiepath))
console.log('IsAbsolute', path.isAbsolute('/index.js'))
console.log('IsAbsolute', path.isAbsolute('./index.js'))
console.log('IsAbsolute', path.isAbsolute('../index.js'))

let pathtodir = path.join('/home', 'js', 'dist', 'index.js')
console.log('pathtodir >', pathtodir)

console.log('parse >', path.parse(currentfiepath))

console.log('relative path >', path.relative('/home/user/config', '/home/user/js'))

console.log('resolve >', path.resolve())

console.log('normalize >', path.normalize('//node//user//js'))