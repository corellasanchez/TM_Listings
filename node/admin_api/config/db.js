const mysql = require('mysql');
const { dbConfig } = require('../config');
let db;

function dbConnect() {
  db = mysql.createConnection(dbConfig);
  db.connect(err => {
    if (err) {
      console.log('error when connecting to db:', err);
      setTimeout(dbConnect, 2000);
    } else {
      console.log("conected to db");
    }
  });
  db.on('error', err => {
    dbConnect();
  });
}
if (!db) {
  dbConnect();
};

module.exports = db;
