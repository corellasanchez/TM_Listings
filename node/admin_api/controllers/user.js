const table = 'usuario';
const { encryptPassword } = require('../helpers/security');
const { create } = require('../helpers/mysql');
const baseController = require('../controllers');


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

module.exports = {
  ...baseController,
  createUser
};
