const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send("Express version 4")
});

app.listen(port, () => {
    console.log('server is running');
});