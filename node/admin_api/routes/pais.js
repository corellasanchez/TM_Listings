const express = require('express');
const pais = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const paisController = require('../controllers/pais');

pais.post('/', verifyToken, tablePicker, paisController.baseCreate);
pais.get('/', verifyToken, tablePicker, paisController.baseFind);
pais.delete('/', verifyToken, tablePicker, paisController.baseRemove);
pais.patch('/', verifyToken, tablePicker, paisController.baseUpdate);
pais.get('/list', verifyToken, tablePicker, paisController.baseList);

module.exports = pais;