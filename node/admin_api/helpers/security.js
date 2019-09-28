const bcrypt = require('bcrypt-nodejs')
const jwt = require('jsonwebtoken')
const { secretKey } = require('../config')

function encryptPassword(password) {
  return new Promise(resolve => {
    bcrypt.genSalt(10, (err, salt) => {
      bcrypt.hash(password, salt, null, (err, hash) => {
        resolve(hash);
      });
    });
  })
}

async function comparePassword(given, inDatabase) {
  return new Promise(resolve => {
    bcrypt.compare(given, inDatabase, (err, res) => {
      resolve(res);
    })
  })
}

function createToken(userInfo) {
  let data = {
    user_nick: userInfo.nombre,
    user_access: userInfo.acceso
  };
  return jwt.sign(data, secretKey, { expiresIn: '1d' });
}

async function verifyToken(req, res, next) {
  //NO AUTH HEADER
  if (!req.headers.authorization) return res.status(401).json({ error: 'Ingreso no autorizado' });
  let token = req.headers.authorization;
  await jwt.verify(token, secretKey, (err, decoded) => {
    //INVALID AUTH HEADER
    if (err) res.status(401).json({ error: 'Sesion invalida' });
    req.headers.logued_user_nick = decoded.user_nick;
    req.headers.logued_user_access = decoded.user_access;
    next();
  })
}


module.exports = {
  encryptPassword,
  comparePassword,
  createToken,
  verifyToken
}
