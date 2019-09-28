const userQueries = require('../queries/user');
const { encryptPassword } = require('../helpers/security');
const table = 'usuario';

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

async function deleteUser(req, res, next) {
  try {
    let result = await userQueries.deleteUser(req.query, table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_eliminados: result.affectedRows });
    } else {
      res.json({ error: "No se borro ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

async function findUser(req, res, next) {
  try {
    let result = await userQueries.findUser(req.body, table);
    if (result && result.length > 0) {
      res.json(result);
    } else {
      res.json({ error: "No se encontro ningun resultado" });
    }
  } catch (error) {
    next(error);
  }
};

async function updateUser(req, res, next) {
  const id = req.query.id;
  const data = req.body;
  try {
    let result = await userQueries.updateUser(data, id, table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_actulizados: result.affectedRows });
    } else {
      res.json({ error: "No se actualizo ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

module.exports = {
  createUser,
  deleteUser,
  findUser,
  updateUser
};
