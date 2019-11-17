const baseController = require('../controllers');
const { list } = require('../helpers/mysql');

async function fullList(req, res, next) {
  try {
    let data = req.query;
    const select = `
      SELECT 
      sociedad.*,
      if(sociedad.estado = 1, 'Activo', 'Inactivo') estado_nombre
      FROM
      sociedad
    `;

    const joins = ``;

    let result = await list(
      data,
      req.headers.table,
      select,
      joins
    );
    res.send(result);
  } catch (error) {
    next(error);
  }
};

module.exports = {
  ...baseController,
  fullList
};
