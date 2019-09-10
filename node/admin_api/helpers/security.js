'use strict'

const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
const { secretKey } = require('../config')

function createToken(userInfo) {
  let data = {
    user_id: userInfo.id,
    user_nick: userInfo.username
  }
  let secret = secretKey;
  return jwt.sign(data, secret, { expiresIn: '1d' });
}

function verifyToken(req, res, next) {
  if (!req.headers.authorization) return res.send('UNAUTHORIZED (NO AUTH)');
  let token = req.headers.authorization;
  let secret = secretKey;
  jwt.verify(token, secret, (err, decoded) => {
    if (err) return res.send({
      error: err,
      message: 'UNAUTHORIZED (INVALID AUTH)'
    });
    req.headers.logued_user_id = decoded.user_id;
    req.headers.logued_user_nick = decoded.user_nick;
    next();
  })
}

async function encryptPassword(password) {
  let salt = await bcrypt.genSalt(10);
  let encryptedPassword = await bcrypt.hash(password, salt);
  return encryptedPassword;
}


module.exports = {
  encryptPassword,
  createToken,
  verifyToken
}
