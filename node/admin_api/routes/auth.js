const express = require('express');
const auth = express.Router();

const { verifyToken } = require('../helpers');
const authController = require('../controllers/auth');

auth.post('/', authController.login);

// auth.get('/', verifyToken, (req, res, next) => {
//   res.status(200).json({status: true, auth: true, uuid: req.headers.uuid}).end();
// });

module.exports = auth;