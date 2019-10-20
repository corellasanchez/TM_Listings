var express = require('express');
var router = express.Router();
const path = require('path');

const errorHandler = require('../helpers/error-handler');

const authRoutes = require('./auth');
const userRoutes = require('./user');
const vehicleRoutes = require('./vehicle');
const propertyRoutes = require('./property');

router.get('/', function (req, res, next) {
  res.sendFile(path.join(__dirname + '/home/index.html'));
});

router.use('/auth', authRoutes);
router.use('/usuario', userRoutes);
router.use('/vehiculo', vehicleRoutes);
router.use('/propiedad', propertyRoutes);

router.use(errorHandler);

module.exports = router;