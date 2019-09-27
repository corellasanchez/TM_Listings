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
    user_id: userInfo.id,
    user_nick: userInfo.nombre_usuario
  }
  return jwt.sign(data, secretKey, { expiresIn: '1d' });
}

async function verifyToken(req, res, next) {
  //NO AUTH HEADER
  if (!req.headers.authorization) return res.send('UNAUTHORIZED ACCESS');
  let token = req.headers.authorization;
  await jwt.verify(token, secretKey, (err, decoded) => {
    //INVALID AUTH HEADER
    if (err) res.send('UNAUTHORIZED ACCESS');
    req.headers.logued_user_id = decoded.user_id;
    req.headers.logued_user_nick = decoded.user_nick;
    next();
  })
}


module.exports = {
  encryptPassword,
  comparePassword,
  createToken,
  verifyToken
}
