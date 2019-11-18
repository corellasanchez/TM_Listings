const express = require('express');
const vehiculoEstilo = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehiculoEstiloController = require('../controllers/vehiculo_estilo');

vehiculoEstilo.post('/', verifyToken, tablePicker, vehiculoEstiloController.baseCreate);
vehiculoEstilo.get('/', verifyToken, tablePicker, vehiculoEstiloController.baseFind);
vehiculoEstilo.delete('/', verifyToken, tablePicker, vehiculoEstiloController.baseRemove);
vehiculoEstilo.patch('/', verifyToken, tablePicker, vehiculoEstiloController.baseUpdate);
vehiculoEstilo.get('/list', verifyToken, tablePicker, vehiculoEstiloController.baseList);

module.exports = vehiculoEstilo;