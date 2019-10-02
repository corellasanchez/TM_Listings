const express = require('express');
const user = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const userController = require('../controllers/user');

user.post('/', verifyToken, userController.createUser);
user.get('/', verifyToken, tablePicker, userController.baseFind);
user.delete('/', verifyToken, tablePicker, userController.baseRemove);
user.patch('/', verifyToken, tablePicker, userController.baseUpdate);
user.get('/list', verifyToken, tablePicker, userController.baseList);

module.exports = user;