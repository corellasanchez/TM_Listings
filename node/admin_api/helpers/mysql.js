const db = require('../config/db');

function runQuery(sql, args) {
  return new Promise((resolve, reject) => {
    db.query(sql, args, (err, rows) => {
      if (err) return reject(err);
      return resolve(rows);
    });
  });
};

function create(args, tabla) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(() => "?");
  let sql = `INSERT INTO ${tabla} (${fields}) VALUES (${valueMarks});`;
  return runQuery(sql, values);
}

function find(args, tabla) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `SELECT * FROM ${tabla} WHERE ${valueMarks}`;
  return runQuery(sql, values);
}

module.exports = {
  create,
  find
};