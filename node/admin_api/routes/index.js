var express = require('express');
var router = express.Router();
const path = require('path');

const authRoutes = require('./auth');
const userRoutes = require('./user');

router.get('/', function (req, res, next) {
  res.sendFile(path.join(__dirname + '/home/index.html'));
});

router.use('/auth', authRoutes);
router.use('/user', userRoutes);

module.exports = router;