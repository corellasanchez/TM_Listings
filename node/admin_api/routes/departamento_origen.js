const express = require('express');
const departamento_origen = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const departamento_origenController = require('../controllers/departamento_origen');

departamento_origen.post('/', verifyToken, tablePicker, departamento_origenController.baseCreate);
departamento_origen.get('/', verifyToken, tablePicker, departamento_origenController.baseFind);
departamento_origen.delete('/', verifyToken, tablePicker, departamento_origenController.baseRemove);
departamento_origen.patch('/', verifyToken, tablePicker, departamento_origenController.baseUpdate);
departamento_origen.get('/list', verifyToken, tablePicker, departamento_origenController.baseList);

module.exports = departamento_origen;