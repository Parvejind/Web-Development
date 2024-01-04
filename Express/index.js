const express = require("express")

const app = express()

const PORT = 4010
const HOSTNAME = 'localhost'

app.get('/' (req, res) => {
 res.send('Hello World!')
})

app.listen(PORT, () => {
    console.log(`Server running at ${HOSTNAME}: ${PORT}`)
})