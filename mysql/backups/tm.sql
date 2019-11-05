/*
 Navicat Premium Data Transfer

 Source Server         : TM
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3307
 Source Schema         : tm

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 04/11/2019 18:16:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for corregimiento
-- ----------------------------
DROP TABLE IF EXISTS `corregimiento`;
CREATE TABLE `corregimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `distrito_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_corregimiento_distrito1_idx` (`distrito_id`),
  CONSTRAINT `fk_corregimiento_distrito1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1080 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for departamento_origen
-- ----------------------------
DROP TABLE IF EXISTS `departamento_origen`;
CREATE TABLE `departamento_origen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS `direccion`;
CREATE TABLE `direccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `pais_id` int(11) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  `distrito_id` int(11) NOT NULL,
  `corregimiento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_direccion_pais1_idx` (`pais_id`),
  KEY `fk_direccion_provincia1_idx` (`provincia_id`),
  KEY `fk_direccion_distrito1_idx` (`distrito_id`),
  KEY `fk_direccion_corregimiento1_idx` (`corregimiento_id`),
  CONSTRAINT `fk_direccion_corregimiento1` FOREIGN KEY (`corregimiento_id`) REFERENCES `corregimiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_distrito1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_provincia1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_distrito_provincia1_idx` (`provincia_id`),
  CONSTRAINT `fk_distrito_provincia1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for estado
-- ----------------------------
DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for imagenes_propiedad
-- ----------------------------
DROP TABLE IF EXISTS `imagenes_propiedad`;
CREATE TABLE `imagenes_propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `propiedad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imagenes_propiedad_propiedad1_idx` (`propiedad_id`),
  CONSTRAINT `fk_imagenes_propiedad_propiedad1` FOREIGN KEY (`propiedad_id`) REFERENCES `propiedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `extension` varchar(20) DEFAULT NULL,
  `iso3` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS `persona`;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad
-- ----------------------------
DROP TABLE IF EXISTS `propiedad`;
CREATE TABLE `propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `folio` varchar(100) NOT NULL,
  `plano` varchar(100) NOT NULL,
  `unidad` varchar(100) NOT NULL COMMENT 'Numero de apartamento, Casa o Local',
  `area` int(11) NOT NULL COMMENT 'Metraje de la propiedad',
  `area_construida` int(11) NOT NULL COMMENT 'Espacio del lote construido',
  `mostrar` tinyint(4) NOT NULL,
  `valor_libros` decimal(13,2) DEFAULT NULL,
  `valor_avaluo` decimal(13,2) DEFAULT NULL,
  `precio_prestamo` decimal(13,2) DEFAULT NULL,
  `precio_captura` decimal(13,2) DEFAULT NULL,
  `precio_venta` decimal(13,2) DEFAULT NULL,
  `fecha_avaluo` date DEFAULT NULL,
  `fecha_prestamo` date DEFAULT NULL,
  `fecha_captura` date DEFAULT NULL,
  `fecha_construccion` date DEFAULT NULL,
  `fecha_cambio_estado` date DEFAULT NULL,
  `fecha_recibo_expediente` date DEFAULT NULL,
  `fecha_inscripcion_registro_publico` date DEFAULT NULL,
  `fecha_llaves_entregadas` date DEFAULT NULL,
  `fecha_entregados_cobro` date DEFAULT NULL,
  `id_interno` varchar(100) DEFAULT NULL,
  `propiedad_tipo_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL COMMENT 'Falta definir tabla cliente',
  `comprador_id` int(11) DEFAULT NULL COMMENT 'Falta definir tabla comprador',
  `propiedad_estado_id` int(11) NOT NULL,
  `provision_regulatoria` decimal(13,2) DEFAULT NULL,
  `dato_adjudicacion` varchar(255) DEFAULT NULL,
  `departamento_origen_id` int(11) NOT NULL,
  `porcentaje_reserva` decimal(13,2) DEFAULT NULL,
  `llaves_tenemos` tinyint(4) DEFAULT NULL,
  `llaves_entregadas` tinyint(4) DEFAULT NULL,
  `expediente_entregados_cobro` tinyint(4) DEFAULT NULL,
  `comentarios` text,
  `anotaciones_especiales` text,
  `direccion_id` int(11) NOT NULL,
  `se_financia` tinyint(4) DEFAULT NULL,
  `destacada` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propiedad_sociedad1_idx` (`sociedad_id`),
  KEY `fk_propiedad_propiedad_tipo1_idx` (`propiedad_tipo_id`),
  KEY `fk_propiedad_propiedad_estado1_idx` (`propiedad_estado_id`),
  KEY `fk_propiedad_departamento_origen1_idx` (`departamento_origen_id`),
  KEY `fk_propiedad_direccion1_idx` (`direccion_id`),
  CONSTRAINT `fk_propiedad_departamento_origen1` FOREIGN KEY (`departamento_origen_id`) REFERENCES `departamento_origen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_direccion1` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_propiedad_estado1` FOREIGN KEY (`propiedad_estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_propiedad_tipo1` FOREIGN KEY (`propiedad_tipo_id`) REFERENCES `propiedad_tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_sociedad1` FOREIGN KEY (`sociedad_id`) REFERENCES `sociedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad_oferta
-- ----------------------------
DROP TABLE IF EXISTS `propiedad_oferta`;
CREATE TABLE `propiedad_oferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` decimal(13,2) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `persona_id` int(11) NOT NULL,
  `propiedad_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_oferta_persona1_idx` (`persona_id`),
  KEY `fk_oferta_propiedad1_idx` (`propiedad_id`),
  CONSTRAINT `fk_oferta_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_oferta_propiedad1` FOREIGN KEY (`propiedad_id`) REFERENCES `propiedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad_tipo
-- ----------------------------
DROP TABLE IF EXISTS `propiedad_tipo`;
CREATE TABLE `propiedad_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `pais_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_provincia_pais1_idx` (`pais_id`),
  CONSTRAINT `fk_provincia_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sociedad
-- ----------------------------
DROP TABLE IF EXISTS `sociedad`;
CREATE TABLE `sociedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(75) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `banco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for telefono
-- ----------------------------
DROP TABLE IF EXISTS `telefono`;
CREATE TABLE `telefono` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(20) NOT NULL,
  `detalle` varchar(75) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for telefonos_persona
-- ----------------------------
DROP TABLE IF EXISTS `telefonos_persona`;
CREATE TABLE `telefonos_persona` (
  `persona_id` int(11) NOT NULL,
  `telefono_id` int(11) NOT NULL,
  PRIMARY KEY (`persona_id`,`telefono_id`),
  KEY `fk_persona_has_telefono_telefono1_idx` (`telefono_id`),
  KEY `fk_persona_has_telefono_persona1_idx` (`persona_id`),
  CONSTRAINT `fk_persona_has_telefono_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_persona_has_telefono_telefono1` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `acceso` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuario
-- ----------------------------
BEGIN;
INSERT INTO `usuario` VALUES (1, 'admin', '$2a$10$cFo0IkrmuMZpJ6Mccuf1ce6tqbYBLntnCMyCxMl7OyKPRgvKMehHW', 'deleteme@please.com', 1);
COMMIT;

-- ----------------------------
-- Table structure for vehiculo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo`;
CREATE TABLE `vehiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `dueno_id_interno` varchar(100) NOT NULL,
  `vehiculo_id_interno` varchar(100) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `comprador_id` int(11) DEFAULT NULL,
  `vehiculo_marca_id` int(11) NOT NULL,
  `vehiculo_estilo_id` int(11) NOT NULL,
  `serie` varchar(100) DEFAULT NULL,
  `numero_chasis` varchar(100) NOT NULL,
  `numero_vin` varchar(100) NOT NULL,
  `ano` int(11) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `color` varchar(75) NOT NULL,
  `capacidad` varchar(100) NOT NULL,
  `valor_libros` decimal(10,0) NOT NULL,
  `precio_prestamo` decimal(10,0) NOT NULL,
  `precio_captura` decimal(10,0) NOT NULL,
  `precio_venta` decimal(10,0) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_captura` date NOT NULL,
  `estado_id` int(11) NOT NULL,
  `numero_cilindros` int(11) NOT NULL,
  `numero_cc` int(11) NOT NULL,
  `vehiculo_combustible_id` int(11) NOT NULL,
  `mostrar` tinyint(4) DEFAULT NULL,
  `numero_puertas` int(11) NOT NULL,
  `se_financia` tinyint(4) DEFAULT NULL,
  `llaves_tenemos` tinyint(4) DEFAULT NULL,
  `llaves_entregadas` tinyint(4) DEFAULT NULL,
  `fecha_llaves_entregadas` date DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `comentarios` varchar(255) DEFAULT NULL,
  `vehiculo_transmision_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_carro_sociedad_idx` (`sociedad_id`),
  KEY `fk_vehiculo_vehiculo_marca1_idx` (`vehiculo_marca_id`),
  KEY `fk_vehiculo_vehiculo_estilo1_idx` (`vehiculo_estilo_id`),
  KEY `fk_vehiculo_estado1_idx` (`estado_id`),
  KEY `fk_vehiculo_vehiculo_combustible1_idx` (`vehiculo_combustible_id`),
  KEY `fk_vehiculo_vehiculo_transmision1_idx` (`vehiculo_transmision_id`),
  CONSTRAINT `fk_carro_sociedad` FOREIGN KEY (`sociedad_id`) REFERENCES `sociedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_vehiculo_combustible1` FOREIGN KEY (`vehiculo_combustible_id`) REFERENCES `vehiculo_combustible` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_vehiculo_estilo1` FOREIGN KEY (`vehiculo_estilo_id`) REFERENCES `vehiculo_estilo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_vehiculo_marca1` FOREIGN KEY (`vehiculo_marca_id`) REFERENCES `vehiculo_marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_vehiculo_transmision1` FOREIGN KEY (`vehiculo_transmision_id`) REFERENCES `vehiculo_transmision` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_combustible
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_combustible`;
CREATE TABLE `vehiculo_combustible` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_estilo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_estilo`;
CREATE TABLE `vehiculo_estilo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `vehiculo_tipo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehiculo_estilo_vehiculo_tipo1_idx` (`vehiculo_tipo_id`),
  CONSTRAINT `fk_vehiculo_estilo_vehiculo_tipo1` FOREIGN KEY (`vehiculo_tipo_id`) REFERENCES `vehiculo_tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_marca
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_marca`;
CREATE TABLE `vehiculo_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_oferta
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_oferta`;
CREATE TABLE `vehiculo_oferta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monto` decimal(13,2) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `vehiculo_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehiculo_oferta_vehiculo1_idx` (`vehiculo_id`),
  KEY `fk_vehiculo_oferta_persona1_idx` (`persona_id`),
  CONSTRAINT `fk_vehiculo_oferta_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_vehiculo_oferta_vehiculo1` FOREIGN KEY (`vehiculo_id`) REFERENCES `vehiculo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_tipo
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_tipo`;
CREATE TABLE `vehiculo_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vehiculo_transmision
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_transmision`;
CREATE TABLE `vehiculo_transmision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
