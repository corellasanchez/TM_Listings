const express = require('express');
const property = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const propertyController = require('../controllers/property');

property.post('/', verifyToken, tablePicker, propertyController.baseCreate);
property.get('/', verifyToken, tablePicker, propertyController.baseFind);
property.delete('/', verifyToken, tablePicker, propertyController.baseRemove);
property.patch('/', verifyToken, tablePicker, propertyController.baseUpdate);
property.get('/list', verifyToken, tablePicker, propertyController.baseList);
property.get('/full-list', verifyToken, tablePicker, propertyController.fullList);

module.exports = property;