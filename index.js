/* Use Module. */
const path = require('path');
const express = require('express');
const hbs = require('hbs');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const { urlToHttpOptions } = require('url');
const app = express();

/* Configurasi Connection. */ 
const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'RS_AQIDAH10',
    database: 'development'
});

/* Connect to Database. */
conn.connect((err) => {
    if (err) throw err;
    console.log('Coneected...');
})

/* Set Views File. */
app.set('views', path.join(__dirname, 'views'));
/*  Set Views Engine.*/
app.set('view engine', 'hbs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
/* Set Folder Public Sebagai Static Folder Untuk Static File. */
app.use('/assets', express.static(__dirname + '/public'));

/* Route Untuk Home Page. */
app.get('/', (req, res) => {
    let sql = 'SELECT * FROM products';
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.render('product_view', {
            results: results
        });
    });
});

/* Route Untuk Insert Data. */
app.post('/save', (req, res) => {
    let data = {guar_na: req.body.guar_na, arga_na: req.body.arga_na};
    let sql = 'INSERT INTO products SET ?';
    let query = conn.query(sql, data, (err, resuluts) => {
        if (err) throw err;
        res.redirect('/');
    });
}); 

/* Route Untuk Update Data. */
app.post('/update', (req, res) => {
    let sql = 'UPDATE products SET guar_na="'+req.body.guar_na+'", arga_na="'+req.body.arga_na+'" WHERE nomor_na='+req.body.nomor_na;
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.redirect('/');
    });
});

/* Route Untuk Delete Data. */
app.post('/delete', (req, res) => {
    let sql = 'DELETE FROM products WHERE nomor_na='+req.body.nomor_na+'';
    let query = conn.query(sql, (err, results) => {
        if (err) throw err;
        res.redirect('/');
    });
});

/* Listening Server. */
app.listen(8000, () => {
    console.log('Server is running at port 8000');
})