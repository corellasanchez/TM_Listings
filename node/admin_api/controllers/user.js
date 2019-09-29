const table = 'usuario';
const { encryptPassword } = require('../helpers/security');
const { create } = require('../helpers/mysql');
const { baseRemove, baseFind, baseUpdate, baseList } = require('../controllers/base-controller');


async function createUser(req, res, next) {
  try {
    let data = req.body;
    data.contrasena = await encryptPassword(data.contrasena)
    let result = await create(data, table);
    if (result.affectedRows) {
      res.json({ success: true, uid: result.insertId });
    }
  } catch (error) {
    next(error);
  }
};

function deleteUser(req, res, next) {
  baseRemove(req, res, next, table);
}

function findUser(req, res, next) {
  baseFind(req, res, next, table);
}

function updateUser(req, res, next) {
  baseUpdate(req, res, next, table);
}

function listUsers(req, res, next) {
  baseList(req, res, next, table);
}

module.exports = {
  createUser,
  deleteUser,
  findUser,
  updateUser,
  listUsers
};
