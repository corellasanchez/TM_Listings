const { runQuery } = require('../helpers/mysql');

async function createUser(data) {
  let sql = 'INSERT INTO usuario (nombre, contrasena, email, acceso) VALUES (?,?,?,?);';
  let result = await runQuery(sql, data);
  return result;
}


module.exports = {
  createUser
};
