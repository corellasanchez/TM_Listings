const express = require('express');
const user = express.Router();
const { verifyToken } = require('../helpers/security');
const userController = require('../controllers/user');

user.get('/', userController.findUser);
user.post('/', verifyToken, userController.createUser);
user.delete('/', userController.deleteUser);
user.patch('/', userController.updateUser);

module.exports = user;