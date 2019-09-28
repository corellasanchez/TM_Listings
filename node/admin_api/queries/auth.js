const { find } = require('../helpers/mysql');

function getUserByUsername(args) {
  let result = find(args, "usuario");
  return result;
}

module.exports = {
  getUserByUsername
};
