const express = require('express');
const provincia = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const provinciaController = require('../controllers/provincia');

provincia.post('/', verifyToken, tablePicker, provinciaController.baseCreate);
provincia.get('/', verifyToken, tablePicker, provinciaController.baseFind);
provincia.delete('/', verifyToken, tablePicker, provinciaController.baseRemove);
provincia.patch('/', verifyToken, tablePicker, provinciaController.baseUpdate);
provincia.get('/list', verifyToken, tablePicker, provinciaController.baseList);

module.exports = provincia;