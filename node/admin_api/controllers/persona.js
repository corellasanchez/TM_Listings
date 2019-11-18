const baseController = require('../controllers');
const { list } = require('../helpers/mysql');

async function fullList(req, res, next) {
  try {
    let data = req.query;
    const select =`SELECT propiedad.*,
      propiedad_tipo.nombre AS tipo_propiedad,
      departamento_origen.nombre as departamento_origen,
      sociedad.nombre as sociedad,
      estado.nombre as estado,
      direccion.detalle as detalle_direccion,
      pais.nombre as pais,
      provincia.nombre as provincia,
      distrito.nombre as distrito
      FROM
      propiedad`;

      const joins = `INNER JOIN propiedad_tipo ON propiedad.propiedad_tipo_id = propiedad_tipo.id
      INNER JOIN departamento_origen ON propiedad.departamento_origen_id = departamento_origen.id
      INNER JOIN sociedad ON propiedad.sociedad_id = sociedad.id
      INNER JOIN estado ON propiedad.propiedad_estado_id = estado.id
      INNER JOIN direccion ON propiedad.direccion_id = direccion.id
      INNER JOIN pais ON direccion.pais_id = pais.id
      INNER JOIN provincia ON direccion.provincia_id = provincia.id
      INNER JOIN distrito ON direccion.distrito_id = distrito.id`
   
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
