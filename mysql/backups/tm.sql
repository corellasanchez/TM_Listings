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

 Date: 27/09/2019 16:43:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barriada
-- ----------------------------
DROP TABLE IF EXISTS `barriada`;
CREATE TABLE `barriada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `corregimiento_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_barriada_corregimiento1_idx` (`corregimiento_id`),
  CONSTRAINT `fk_barriada_corregimiento1` FOREIGN KEY (`corregimiento_id`) REFERENCES `corregimiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for departamento_origen
-- ----------------------------
DROP TABLE IF EXISTS `departamento_origen`;
CREATE TABLE `departamento_origen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for direccion
-- ----------------------------
DROP TABLE IF EXISTS `direccion`;
CREATE TABLE `direccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `pais_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  `distrito_id` int(11) NOT NULL,
  `corregimiento_id` int(11) NOT NULL,
  `barriada_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_direccion_pais1_idx` (`pais_id`),
  KEY `fk_direccion_region1_idx` (`region_id`),
  KEY `fk_direccion_provincia1_idx` (`provincia_id`),
  KEY `fk_direccion_distrito1_idx` (`distrito_id`),
  KEY `fk_direccion_corregimiento1_idx` (`corregimiento_id`),
  KEY `fk_direccion_barriada1_idx` (`barriada_id`),
  CONSTRAINT `fk_direccion_barriada1` FOREIGN KEY (`barriada_id`) REFERENCES `barriada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_corregimiento1` FOREIGN KEY (`corregimiento_id`) REFERENCES `corregimiento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_distrito1` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_pais1` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_provincia1` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_direccion_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for oferta
-- ----------------------------
DROP TABLE IF EXISTS `oferta`;
CREATE TABLE `oferta` (
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
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad
-- ----------------------------
DROP TABLE IF EXISTS `propiedad`;
CREATE TABLE `propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `folio` varchar(100) DEFAULT NULL,
  `plano` varchar(100) DEFAULT NULL,
  `unidad` varchar(100) DEFAULT NULL COMMENT 'Numero de apartamento, Casa o Local',
  `area` int(11) DEFAULT NULL COMMENT 'Metraje de la propiedad',
  `area_construida` int(11) DEFAULT NULL COMMENT 'Espacio del lote construido',
  `mostrar` tinyint(4) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `fk_propiedad_sociedad1_idx` (`sociedad_id`),
  KEY `fk_propiedad_propiedad_tipo1_idx` (`propiedad_tipo_id`),
  KEY `fk_propiedad_propiedad_estado1_idx` (`propiedad_estado_id`),
  KEY `fk_propiedad_departamento_origen1_idx` (`departamento_origen_id`),
  KEY `fk_propiedad_direccion1_idx` (`direccion_id`),
  CONSTRAINT `fk_propiedad_departamento_origen1` FOREIGN KEY (`departamento_origen_id`) REFERENCES `departamento_origen` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_direccion1` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_propiedad_estado1` FOREIGN KEY (`propiedad_estado_id`) REFERENCES `propiedad_estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_propiedad_tipo1` FOREIGN KEY (`propiedad_tipo_id`) REFERENCES `propiedad_tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_propiedad_sociedad1` FOREIGN KEY (`sociedad_id`) REFERENCES `sociedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad_estado
-- ----------------------------
DROP TABLE IF EXISTS `propiedad_estado`;
CREATE TABLE `propiedad_estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for propiedad_tipo
-- ----------------------------
DROP TABLE IF EXISTS `propiedad_tipo`;
CREATE TABLE `propiedad_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_provincia_region1_idx` (`region_id`),
  CONSTRAINT `fk_provincia_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `pais_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_region_pais_idx` (`pais_id`),
  CONSTRAINT `fk_region_pais` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


SET FOREIGN_KEY_CHECKS = 1;
