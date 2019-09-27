const { runQuery } = require('../helpers/mysql');

async function createUser(data) {
  let { username, password, access } = data;
  let sql = `INSERT IGNORE INTO user (nombre_usuario, contrasena, acceso) VALUES ('${username}', '${password}', ${access});`;
  let result = await runQuery(sql);
  return result;
}

module.exports = {
  createUser
};
