const jwt = require('jsonwebtoken');
const { secretKey } = require('../config');

function verifyToken(req, res, next) {
  const UNAUTHORIZED = 4
  if (!req.headers.authorization) return apiResponse(res, 401, UNAUTHORIZED, 'Unauthorized')
  let token = req.headers.authorization.split(' ')[1]
  let secret = secretKey
  jwt.verify(token, secret, (err, decoded) => {
    if (err) return apiResponse(res, 401, UNAUTHORIZED, 'Unauthorized')
    req.headers.uuid = decoded.uuid
    req.headers.roles = decoded.roles
    next()
  })
}

module.exports = {
  verifyToken
}
