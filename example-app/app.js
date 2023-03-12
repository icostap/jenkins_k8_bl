const express = require('express')
const app = express()
const port = 80
app.get('/', (req, res) => {
    res.send('Hello From BANK LEUMI!\n')
})
app.listen(port, () => {
    console.log("This app is listening at port: ", port)
})