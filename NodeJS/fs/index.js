const fs = require('fs')
const { buffer } = require('stream/consumers')

console.log('READ START')
// Asynchronous way to read file
fs.readFile('input.txt', function(err, data) {
    if (err) {
        console.log('Error:', err)
        return err
    }
    console.log('Data:', data.toString())
    console.log('READ END')
    return data
})

console.log('OTHER STUFF')

// synochronous way to read file

var data = fs.readFileSync('input.txt')
console.log('Data:', data.toString())
console.log('READ END')
console.log('OTHER STUFF')

// Read > Open + read

const buf = new Buffer(1024)

fs.open('input.txt', 'r+', function(err, fd){
    if (err) {
        console.log9('Error in opening file: ', err)
    }
        console.log("file open successfully!")

        fs.read(fd, buf, 0, buf.length, 4, function(err, data){
            if (er) {
                console.log('Error in reading file!')
            }
            console.log('Data: ', bytes)
            console.log('Data:', buf.slice(0, bytes).toString)      
        
        })

   })

   fs.writeFile('input.txt', 'Parsa Marc', function(err){
    if (err) {
        console.log('Error in writing file!')
    } else {
        console.log('Success in writing file!')
    }
   })

   // Append to file

   fs.appendfile('input.txt', '_Mr. Raju', 'utf8' function(err){
    if (err) {
        console.log('Error in appending file!')
    } else {
        console.log('Success in apppending file!')
    }
   })