const express = require('express');
const user = express.Router();
const { verifyToken } = require('../helpers/security');
const userController = require('../controllers/user');

user.post('/', verifyToken, userController.createUser);

module.exports = user;