const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mistborn = require('./routes/mistborn.router');
const wayOfKings = require('./routes/wayofkings.router.js');
const elantris = require('./routes/elantris.router.js');
const PORT = 5001;

/** ---------- MIDDLEWARE ---------- **/
app.use(bodyParser.json()); // needed for axios requests
app.use(express.static('build'));

/** ---------- EXPRESS ROUTES ---------- **/
app.use('/mistborn', mistborn);
app.use('/elantris', elantris);
app.use('/wayOfKings', wayOfKings)

/** ---------- START SERVER ---------- **/
app.listen(PORT,  () => {
    console.log('Listening on port: ', PORT);
});