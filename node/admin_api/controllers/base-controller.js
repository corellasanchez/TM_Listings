const { create, find, remove, update, list } = require('../helpers/mysql');

async function baseCreate(req, res, next, table) {
  try {
    let data = req.body;
    let result = await create(data, table);
    if (result.affectedRows) {
      res.json({ success: true, id: result.insertId });
    }
  } catch (error) {
    next(error);
  }
};

async function baseRemove(req, res, next, table) {
  try {
    let result = await remove(req.query, table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_eliminados: result.affectedRows });
    } else {
      res.json({ error: "No se borro ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

async function baseFind(req, res, next, table) {
  try {
    let result = await find(req.body, table);
    if (result && result.length > 0) {
      res.json(result);
    } else {
      res.json({ error: "No se encontro ningun resultado" });
    }
  } catch (error) {
    next(error);
  }
};

async function baseUpdate(req, res, next, table) {
  const id = req.query.id;
  const data = req.body;
  try {
    let result = await update(data, id, table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_actulizados: result.affectedRows });
    } else {
      res.json({ error: "No se actualizo ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

async function baselist(req, res, next, table) {
  try {
    let data = req.query;
    let result = await list(data, table);
    res.send(result);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  baseCreate,
  baseRemove,
  baseFind,
  baseUpdate,
  baselist
};
