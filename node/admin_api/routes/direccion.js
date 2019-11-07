const express = require('express');
const direccion = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const direccionController = require('../controllers/direccion');

direccion.post('/', verifyToken, tablePicker, direccionController.baseCreate);
direccion.get('/', verifyToken, tablePicker, direccionController.baseFind);
direccion.delete('/', verifyToken, tablePicker, direccionController.baseRemove);
direccion.patch('/', verifyToken, tablePicker, direccionController.baseUpdate);
direccion.get('/list', verifyToken, tablePicker, direccionController.baseList);

module.exports = direccion;