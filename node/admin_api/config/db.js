const mysql = require('mysql');
const { dbConfig } = require('../config');

// Prueba al parecer si se crea un pool no es necesario hacer release o end de la coneccion
// al terminar la consulta se cierra sola https://codeforgeek.com/nodejs-mysql-tutorial/

let db  =  mysql.createPool(dbConfig);

module.exports = db;
