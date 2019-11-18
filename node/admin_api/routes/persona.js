const express = require('express');
const persona = express.Router();
const { verifyToken } = require('../helpers/security');
const { tablePicker } = require('../helpers/mysql');
const personaController = require('../controllers/persona');

persona.post('/', verifyToken, tablePicker, personaController.baseCreate);
persona.get('/', verifyToken, tablePicker, personaController.baseFind);
persona.delete('/', verifyToken, tablePicker, personaController.baseRemove);
persona.patch('/', verifyToken, tablePicker, personaController.baseUpdate);
persona.get('/list', verifyToken, tablePicker, personaController.baseList);

module.exports = persona;