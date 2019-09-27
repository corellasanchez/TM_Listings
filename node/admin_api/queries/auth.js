const { runQuery } = require('../helpers/mysql');

async function getUserByUsername(username) {
  let sql = `SELECT * FROM user WHERE nombre_usuario = '${username}' LIMIT 1;`;
  let userDetails = await runQuery(sql);
  return userDetails;
}

module.exports = {
  getUserByUsername
};
