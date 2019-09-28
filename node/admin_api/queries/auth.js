const { runQuery } = require('../helpers/mysql');

async function getUserByUsername(username) {
  let sql = `SELECT * FROM usuario WHERE nombre = '${username}' LIMIT 1;`;
  let userDetails = await runQuery(sql);
  return userDetails;
}

module.exports = {
  getUserByUsername
};
