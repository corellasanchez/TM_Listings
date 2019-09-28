const userQueries = require('../queries/user');
const { encryptPassword } = require('../helpers/security');

async function createUser(req, res, next) {
  try {
    let data = req.body;
    data.contrasena = await encryptPassword(data.contrasena)
    let result = await userQueries.createUser(data);
    if (result.affectedRows) {
      res.json({ success: true, uid: result.insertId });
    }
  } catch (error) {
    next(error);
  }
};

module.exports = {
  createUser
};
