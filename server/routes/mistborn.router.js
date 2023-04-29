const express = require('express');
const router = express.Router();
const pool = require('../modules/pool');

// DO NOT MODIFY THIS FILE FOR BASE MODE

// PUT Route
router.put('/like/:id', (req, res) => {
    const galleryId = req.params.id;
    
    let sqlText = `
    UPDATE mistborn
    SET "likes" = "likes" + 1
    WHERE "id" = $1;
    `
    sqlValues = [galleryId];
    
    pool.query(sqlText, sqlValues)
    .then((result) => {
        res.sendStatus(200);
    }).catch((error) => {
        console.log('Database PUT query failed', error);
        res.sendStatus(500);
    })
}); // END PUT Route

// GET Route
router.get('/', (req, res) => {
    let sqlText = `
        SELECT * FROM mistborn ORDER BY path;
    `

    pool.query(sqlText)
    .then((result) => {
        res.send(result.rows)
    }).catch((error) => {
        console.log('Datatbase GET query failed', error);
        res.sendStatus(500);
    })
}); // END GET Route

module.exports = router;