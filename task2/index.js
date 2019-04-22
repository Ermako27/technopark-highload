const express = require('express');

const app = express();

const port = process.env.PORT || 8000;


app.get('/', (req, res)=> {
    setTimeout(() => {
        res.status(200).send({message: `server`});
    },200);
});


app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});