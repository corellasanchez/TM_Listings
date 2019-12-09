const express = require('express');
const vehiculoCombustible = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehiculoCombustibleController = require('../controllers/vehiculo_combustible');

vehiculoCombustible.post('/', verifyToken, tablePicker, vehiculoCombustibleController.baseCreate);
vehiculoCombustible.get('/', verifyToken, tablePicker, vehiculoCombustibleController.baseFind);
vehiculoCombustible.delete('/', verifyToken, tablePicker, vehiculoCombustibleController.baseRemove);
vehiculoCombustible.patch('/', verifyToken, tablePicker, vehiculoCombustibleController.baseUpdate);
vehiculoCombustible.get('/list', verifyToken, tablePicker, vehiculoCombustibleController.baseList);

module.exports = vehiculoCombustible;