const express = require('express');
const corregimiento = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const corregimientoController = require('../controllers/corregimiento');

corregimiento.post('/', verifyToken, tablePicker, corregimientoController.baseCreate);
corregimiento.get('/', verifyToken, tablePicker, corregimientoController.baseFind);
corregimiento.delete('/', verifyToken, tablePicker, corregimientoController.baseRemove);
corregimiento.patch('/', verifyToken, tablePicker, corregimientoController.baseUpdate);
corregimiento.get('/list', verifyToken, tablePicker, corregimientoController.baseList);

module.exports = corregimiento;