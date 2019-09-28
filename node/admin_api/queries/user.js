const { create } = require('../helpers/mysql');
const table = "usuario";

function createUser(data) {
  let result = create(data, table);
  return result;
}

module.exports = {
  createUser
};
