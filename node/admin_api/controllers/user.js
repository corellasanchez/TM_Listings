const userQueries = require('../queries/user');
const { encryptPassword } = require('../helpers/security');

async function createUser(req, res, next) {

  try {
    let data = Object.values(req.body);
    data[1] = await encryptPassword(data[1]);
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
