const express = require('express')
const app = express()
const port = 82

app.get('/', function (req, res) {
    res.send('Hello World via Raspberry pi')
})

app.listen(port, function () {
    console.log('Example app listening on port ' + port)
})