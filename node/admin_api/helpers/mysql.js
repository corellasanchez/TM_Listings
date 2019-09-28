const db = require('../config/db');

function runQuery(sql, args) {
  return new Promise((resolve, reject) => {
    db.query(sql, args, (err, rows) => {
      if (err)
        return reject(err);
      return resolve(rows);
    });
  });
};

module.exports = {
  runQuery
};