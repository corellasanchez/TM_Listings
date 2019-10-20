const express = require('express');
const vehicle = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const vehicleController = require('../controllers/vehicle');

vehicle.post('/', verifyToken, tablePicker, vehicleController.baseCreate);
vehicle.get('/', verifyToken, tablePicker, vehicleController.baseFind);
vehicle.delete('/', verifyToken, tablePicker, vehicleController.baseRemove);
vehicle.patch('/', verifyToken, tablePicker, vehicleController.baseUpdate);
vehicle.get('/list', verifyToken, tablePicker, vehicleController.baseList);

module.exports = vehicle;