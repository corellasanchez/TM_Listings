var express = require('express');
var router = express.Router();
const path = require('path');

const errorHandler = require('../helpers/error-handler');

const authRoutes = require('./auth');
const userRoutes = require('./user');
const vehicleRoutes = require('./vehicle');
const propertyRoutes = require('./property');
const sociedadRoutes = require('./sociedad');
const paisRoutes = require('./pais');
const provinciaRoutes = require('./provincia');
const distritoRoutes = require('./distrito');
const corregimientoRoutes = require('./corregimiento');
const propiedadTipoRoutes = require('./propiedad_tipo');
const estadoRoutes = require('./estado');
const departamentoOrigenRoutes = require('./departamento_origen');
const fileRoutes = require('./file');
const imagenesPropiedad = require('./imagenes_propiedad');

router.get('/', function (req, res, next) {
  res.sendFile(path.join(__dirname + '/home/index.html'));
});

router.use('/auth', authRoutes);
router.use('/usuario', userRoutes);
router.use('/vehiculo', vehicleRoutes);
router.use('/propiedad', propertyRoutes);
router.use('/sociedad', sociedadRoutes);
router.use('/pais', paisRoutes);
router.use('/provincia', provinciaRoutes);
router.use('/distrito', distritoRoutes);
router.use('/corregimiento', corregimientoRoutes);
router.use('/propiedad_tipo', propiedadTipoRoutes);
router.use('/estado', estadoRoutes);
router.use('/departamento_origen', departamentoOrigenRoutes);
router.use('/file', fileRoutes);
router.use('/imagenes_propiedad', imagenesPropiedad);

router.use(errorHandler);

module.exports = router;