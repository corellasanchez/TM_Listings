const express = require('express');
const imagenesPropiedad = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const imagenesPropiedadController = require('../controllers/imagenes_propiedad');

imagenesPropiedad.post('/', verifyToken, tablePicker, imagenesPropiedadController.baseCreate);
imagenesPropiedad.get('/', verifyToken, tablePicker, imagenesPropiedadController.baseFind);
imagenesPropiedad.delete('/', verifyToken, tablePicker, imagenesPropiedadController.baseRemove);
imagenesPropiedad.patch('/', verifyToken, tablePicker, imagenesPropiedadController.baseUpdate);
imagenesPropiedad.get('/list', verifyToken, tablePicker, imagenesPropiedadController.baseList);

module.exports = imagenesPropiedad;