const express = require('express');
const propiedad_tipo = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const propiedad_tipoController = require('../controllers/propiedad_tipo');

propiedad_tipo.post('/', verifyToken, tablePicker, propiedad_tipoController.baseCreate);
propiedad_tipo.get('/', verifyToken, tablePicker, propiedad_tipoController.baseFind);
propiedad_tipo.delete('/', verifyToken, tablePicker, propiedad_tipoController.baseRemove);
propiedad_tipo.patch('/', verifyToken, tablePicker, propiedad_tipoController.baseUpdate);
propiedad_tipo.get('/list', verifyToken, tablePicker, propiedad_tipoController.baseList);

module.exports = propiedad_tipo;