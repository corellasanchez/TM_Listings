const express = require('express');
const distrito = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const distritoController = require('../controllers/distrito');

distrito.post('/', verifyToken, tablePicker, distritoController.baseCreate);
distrito.get('/', verifyToken, tablePicker, distritoController.baseFind);
distrito.delete('/', verifyToken, tablePicker, distritoController.baseRemove);
distrito.patch('/', verifyToken, tablePicker, distritoController.baseUpdate);
distrito.get('/list', verifyToken, tablePicker, distritoController.baseList);

module.exports = distrito;