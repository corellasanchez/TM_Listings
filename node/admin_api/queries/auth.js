const { runQuery } = require('../helpers/mysql');

async function getUserByUsername(username) {
  let sql = `SELECT * FROM users WHERE username = '${username}' LIMIT 1;`;
  let userDetails = await runQuery(sql);
  return userDetails[0];
}

async function updateUserStatus(data) {
  let status = 2;
  if (data.status) status = 1;
  let sql = `INSERT INTO history (user_id, activity_id, created_by) VALUES 
    (${data.target}, ${status}, ${data.creator});`;
  let result = await runQuery(sql);
  return result;
}

module.exports = {
  getUserByUsername,
  updateUserStatus
};
