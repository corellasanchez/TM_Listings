const express = require('express');
const vehiculoTransmision = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehiculoTransmisionController = require('../controllers/vehiculo_combustible');

vehiculoTransmision.post('/', verifyToken, tablePicker, vehiculoTransmisionController.baseCreate);
vehiculoTransmision.get('/', verifyToken, tablePicker, vehiculoTransmisionController.baseFind);
vehiculoTransmision.delete('/', verifyToken, tablePicker, vehiculoTransmisionController.baseRemove);
vehiculoTransmision.patch('/', verifyToken, tablePicker, vehiculoTransmisionController.baseUpdate);
vehiculoTransmision.get('/list', verifyToken, tablePicker, vehiculoTransmisionController.baseList);

module.exports = vehiculoTransmision;