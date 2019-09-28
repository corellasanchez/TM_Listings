const db = require('../config/db');

function runQuery(sql, args) {
  return new Promise((resolve, reject) => {
    db.query(sql, args, (err, rows) => {
      if (err) return reject(err);
      return resolve(rows);
    });
  });
};

function create(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(() => "?");
  let sql = `INSERT INTO ${table} (${fields}) VALUES (${valueMarks});`;
  return runQuery(sql, values);
}

function find(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `SELECT * FROM ${table} WHERE ${valueMarks}`;
  return runQuery(sql, values);
}

function remove(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `DELETE FROM ${table} WHERE ${valueMarks}`;
  return runQuery(sql, values);
}

function update(args, id, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  values.push(id);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `UPDATE ${table} SET ${valueMarks} WHERE id=?`;
  return runQuery(sql, values);
}

module.exports = {
  create,
  find,
  remove,
  update
};