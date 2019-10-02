const { create, find, remove, update, list } = require('../helpers/mysql');

async function baseCreate(req, res, next) {
  try {
    let data = req.body;
    let result = await create(data, req.headers.table);
    if (result.affectedRows) {
      res.json({ success: true, id: result.insertId });
    }
  } catch (error) {
    next(error);
  }
};

async function baseRemove(req, res, next) {
  try {
    let result = await remove(req.query, req.headers.table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_eliminados: result.affectedRows });
    } else {
      res.json({ error: "No se borro ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

async function baseFind(req, res, next) {
  try {
    let result = await find(req.query, req.headers.table);
    if (result && result.length > 0) {
      res.json(result);
    } else {
      res.json({ error: "No se encontro ningun resultado" });
    }
  } catch (error) {
    next(error);
  }
};

async function baseUpdate(req, res, next) {
  const id = req.query.id;
  const data = req.body;
  try {
    let result = await update(data, id, req.headers.table);
    if (result.affectedRows > 0) {
      res.json({ success: true, registros_actulizados: result.affectedRows });
    } else {
      res.json({ error: "No se actualizo ningun registro" });
    }
  } catch (error) {
    next(error);
  }
};

async function baseList(req, res, next) {
  try {
    let data = req.query;
    let result = await list(data, req.headers.table);
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
  baseList
};
