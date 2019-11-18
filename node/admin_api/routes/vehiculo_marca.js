const express = require('express');
const vehiculoMarca = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehiculoMarcaController = require('../controllers/vehiculo_marca');

vehiculoMarca.post('/', verifyToken, tablePicker, vehiculoMarcaController.baseCreate);
vehiculoMarca.get('/', verifyToken, tablePicker, vehiculoMarcaController.baseFind);
vehiculoMarca.delete('/', verifyToken, tablePicker, vehiculoMarcaController.baseRemove);
vehiculoMarca.patch('/', verifyToken, tablePicker, vehiculoMarcaController.baseUpdate);
vehiculoMarca.get('/list', verifyToken, tablePicker, vehiculoMarcaController.baseList);

module.exports = vehiculoMarca;