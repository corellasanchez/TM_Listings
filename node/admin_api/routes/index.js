var express = require('express');
var router = express.Router();
const path = require('path');

const auth = require('./auth');

router.get('/', function(req, res, next) {
  res.sendFile(path.join(__dirname+'/home/index.html'));
});

router.use('/auth', auth);

module.exports = router;