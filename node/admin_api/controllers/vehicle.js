const baseController = require('../controllers');
const { list } = require('../helpers/mysql');

async function fullList(req, res, next) {
  try {
    let data = req.query;
    const select = `
      SELECT 
      vehiculo.*,
      sociedad.nombre sociedad,
      vehiculo_marca.nombre marca,
      vehiculo_estilo.nombre estilo,
      vehiculo_tipo.nombre tipo,
      estado.nombre estado
      FROM
      vehiculo
    `;

    const joins = `
      INNER JOIN sociedad ON vehiculo.sociedad_id = sociedad.id
      INNER JOIN vehiculo_marca ON vehiculo.vehiculo_marca_id = vehiculo_marca.id
      INNER JOIN vehiculo_estilo ON vehiculo.vehiculo_estilo_id = vehiculo_estilo.id
      INNER JOIN vehiculo_tipo ON vehiculo_estilo.vehiculo_tipo_id = vehiculo_tipo.id 
      INNER JOIN estado ON vehiculo.estado_id = estado.id
    `;

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
