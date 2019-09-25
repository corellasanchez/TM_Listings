const mysql = require('mysql');
const { dbConfig } = require('../config');
let db;

if (!db) {
  db = mysql.createConnection(dbConfig);
  db.connect();
  console.log("conected to db");
};

module.exports = db;
