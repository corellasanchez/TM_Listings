const express = require('express');
const estado = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const estadoController = require('../controllers/estado');

estado.post('/', verifyToken, tablePicker, estadoController.baseCreate);
estado.get('/', verifyToken, tablePicker, estadoController.baseFind);
estado.delete('/', verifyToken, tablePicker, estadoController.baseRemove);
estado.patch('/', verifyToken, tablePicker, estadoController.baseUpdate);
estado.get('/list', verifyToken, tablePicker, estadoController.baseList);

module.exports = estado;