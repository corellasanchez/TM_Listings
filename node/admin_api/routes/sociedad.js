const express = require('express');
const sociedad = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const sociedadController = require('../controllers/sociedad');

sociedad.post('/', verifyToken, tablePicker, sociedadController.baseCreate);
sociedad.get('/', verifyToken, tablePicker, sociedadController.baseFind);
sociedad.delete('/', verifyToken, tablePicker, sociedadController.baseRemove);
sociedad.patch('/', verifyToken, tablePicker, sociedadController.baseUpdate);
sociedad.get('/list', verifyToken, tablePicker, sociedadController.baseList);
sociedad.get('/full-list', verifyToken, tablePicker, sociedadController.fullList);

module.exports = sociedad;