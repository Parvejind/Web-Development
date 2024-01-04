const http = require('http')
const PORT = 3022
const HOSTNAME = 'localhost'
const server = http.createServer((req, res) => {
    // Home page
    // About page
    // Contact page
    // Product page
    // Rest... > Error
    if (req.url == '/') {
        res.statusCode = 200
        res.setHeader('Content-Type', 'text/plain')
        res.end(JSON.stringify({error: "Server Error!"}))
        res.end('Welcome to Node JS server by Mr. Raje')
    } else if (req.url == '/about') {

    } else if (req.url == '/contact') {

    } else if (re1.url == '/product') {
    if (req.url == '/')
    res.statusCode = 200
    res.setHeader('Content-Type', 'application/Json')
    res.end(JSON.stringify({productName: "product1"}))
    } else {
    }})
server.listen(PORT, () => {
    console.log('server running at &{HOSTNAME}:&{PORT}')})