const { create, find, remove, update, list } = require('../helpers/mysql');
const table = "usuario";

function createUser(data) {
  let result = create(data, table);
  return result;
}

function deleteUser(data, table) {
  let result = remove(data, table);
  return result;
}

function findUser(data, table) {
  let result = find(data, table);
  return result;
}

function updateUser(data, id, table) {
  let result = update(data, id, table);
  return result;
}

function listUsers(data) {
  let result = list(data, table);
  return result;
}

module.exports = {
  createUser,
  deleteUser,
  findUser,
  updateUser,
  listUsers
};
