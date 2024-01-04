const http = require('http')

const PORT = 3021
const HOSTNAME = 'localhost'

const server http.createServer((req, res) => {
    if (req.url = '/') {
        res.write('<h1>Hello, NOde.js!</h1>')
    } else if(req.url == '/about') {
        res.write('<h1>About Page!</h1>')
    }
    res.end('Node Server running at ')
})

server.listen(PORT, () => {

console.log('The HTTP server is running on port 5002')
})