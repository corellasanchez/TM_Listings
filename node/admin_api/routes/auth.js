const express = require('express');
const auth = express.Router();
const { verifyToken } = require('../helpers/security');
const authController = require('../controllers/auth');

auth.post('/', authController.login);

auth.get('/', verifyToken, (req, res) => {
    res.send({
        logued: true,
        userid: req.headers.logued_user_id,
        username: req.headers.logued_user_nick,
    });
});

module.exports = auth;