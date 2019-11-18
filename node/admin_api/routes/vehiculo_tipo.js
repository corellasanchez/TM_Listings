const express = require('express');
const vehiculoTipo = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehiculoTipoController = require('../controllers/vehiculo_tipo');

vehiculoTipo.post('/', verifyToken, tablePicker, vehiculoTipoController.baseCreate);
vehiculoTipo.get('/', verifyToken, tablePicker, vehiculoTipoController.baseFind);
vehiculoTipo.delete('/', verifyToken, tablePicker, vehiculoTipoController.baseRemove);
vehiculoTipo.patch('/', verifyToken, tablePicker, vehiculoTipoController.baseUpdate);
vehiculoTipo.get('/list', verifyToken, tablePicker, vehiculoTipoController.baseList);

module.exports = vehiculoTipo;