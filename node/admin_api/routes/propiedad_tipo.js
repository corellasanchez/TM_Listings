const express = require('express');
const propiedadTipo = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const propiedadTipoController = require('../controllers/propiedad_tipo');

propiedadTipo.post('/', verifyToken, tablePicker, propiedadTipoController.baseCreate);
propiedadTipo.get('/', verifyToken, tablePicker, propiedadTipoController.baseFind);
propiedadTipo.delete('/', verifyToken, tablePicker, propiedadTipoController.baseRemove);
propiedadTipo.patch('/', verifyToken, tablePicker, propiedadTipoController.baseUpdate);
propiedadTipo.get('/list', verifyToken, tablePicker, propiedadTipoController.baseList);

module.exports = propiedadTipo;
