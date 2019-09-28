const express = require('express');
const auth = express.Router();
const { verifyToken } = require('../helpers/security');
const authController = require('../controllers/auth');

auth.post('/', authController.login);

auth.get('/', verifyToken, (req, res) => {
    res.send({
        logued: true,
        nick: req.headers.logued_user_nick,
        access: req.headers.logued_user_access,
    });
});

module.exports = auth;