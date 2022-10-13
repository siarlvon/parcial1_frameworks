const express = require('express');
const bodyparser = require('body-parser');
const cors = require('cors');
const mysql = require('mysql2');


const app = express();
app.use(cors());
app.use(bodyparser.json());



// database connection

const db = mysql.createConnection({
    host: 'localhost',
    port: '3308',
    user: 'root',
    database: 'consultorio_pacientes'
});


// check database connection

db.connect(function (err) {
    if (err) {
        console.error('Database connection error:' + err);
        process.exit(1);
    } else {
        console.log('Database connection success on port 3308 ...');
    }
});


// get all data

app.get('/medicamentos', (req, res) => {
    let qr = `SELECT * FROM medicamentos`;
    db.query(qr, (err, results) => {
        if (err) {
            console.log(err, 'Database queries error:' + err);
            process.exit(1);
        }
        if (results.length > 0) {
            res.send({
                message: 'got all data',
                data: results
            });
        }
    });
});


// get single data
app.get('/medicamentos/:id_medicamento', (req, res) => {
    let gID = req.params.id_medicamento;
    let qr = `SELECT * FROM medicamentos WHERE id_medicamento = ${gID}`;
    db.query(qr, (err, results) => {
        if (err) {
            console.log(err, 'Database queries error:' + err);
            process.exit(1);
        }
        if (results.length > 0) {
            res.send({
                message: 'got single data',
                data: results
            });
        } else {
            res.send({
                message: 'error in getting single data',
                data: []
            });
        }
    });
});


// create data

app.post('/medicamentos', (req, res) => {
    console.log(req.body, 'createdata');
    let nombre = req.body.nombre;
    let cantidad = req.body.cantidad;
    let qr = `INSERT INTO medicamentos (nombre, cantidad) VALUES ('${nombre}', '${cantidad}')`;
    db.query(qr, (err, results) => {
        if (err) {
            console.log(err, 'Database queries error:' + err);
            process.exit(1);
        }
        res.send({
            message: 'created data',
            data: results
        });
    });
});


// update single data

app.put('/medicamentos/:id_medicamento', (req, res) => {
    console.log(req.body, 'updatedata');

    let gID = req.params.id_medicamento;
    let nombre = req.body.nombre;
    let cantidad = req.body.cantidad;

    let qr = `UPDATE medicamentos SET nombre = '${nombre}', cantidad = '${cantidad}' WHERE id_medicamento = ${gID}`;
    db.query(qr, (err, results) => {
        if (err) {
            console.log(err, 'Database queries error:' + err);
            process.exit(1);
        }
        res.send({
            message: 'updated single data',
            data: results
        });
    });
});


// delete single data
app.delete('/medicamentos/:id_medicamento', (req, res) => {
    let qID = req.params.id_medicamento;

    let qr = `DELETE FROM medicamentos WHERE id_medicamento = '${qID}'`;
    db.query(qr, (err, results) => {
        if (err) {
            console.log(err, 'Database queries error:' + err);
            process.exit(1);
        }
        res.send({
            message: 'deleted single data',
            data: results
        });
    });
})




app.listen(3000, () => {
    console.log('Server listening on port 3000 ...');
});