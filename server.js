const express = require('express');
const path = require('path')

const app = express()
const PORT = 3000;

app.use(express.static(
    path.join(__dirname, 'public')
));

app.get('/', (req, res) => {
    req.sendFile(
        path.join(__dirname, 'public', 'index.html')
    );
});

app.listen(PORT, () => {
    console.log("Servidor rodando porta 3000")
});