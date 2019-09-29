const express = require('express');
const user = express.Router();
const { verifyToken } = require('../helpers/security');
const userController = require('../controllers/user');

user.get('/', verifyToken, userController.findUser);
user.post('/', verifyToken, userController.createUser);
user.delete('/', verifyToken, userController.deleteUser);
user.patch('/', verifyToken, userController.updateUser);
user.get('/list', verifyToken, userController.listUsers);

module.exports = user;