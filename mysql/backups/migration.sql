/*
 Navicat Premium Data Transfer

 Source Server         : tm
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3307
 Source Schema         : tm

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 08/12/2019 23:24:18
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
-- Records of corregimiento
-- ----------------------------
BEGIN;
INSERT INTO `corregimiento` VALUES (1, '	Carmen	', 1);
INSERT INTO `corregimiento` VALUES (2, '	Merced	', 1);
INSERT INTO `corregimiento` VALUES (3, '	Hospital	', 1);
INSERT INTO `corregimiento` VALUES (4, '	Catedral	', 1);
INSERT INTO `corregimiento` VALUES (5, '	Zapote	', 1);
INSERT INTO `corregimiento` VALUES (6, '	San Francisco de Dos Ríos	', 1);
INSERT INTO `corregimiento` VALUES (7, '	Uruca	', 1);
INSERT INTO `corregimiento` VALUES (8, '	Mata Redonda	', 1);
INSERT INTO `corregimiento` VALUES (9, '	Pavas	', 1);
INSERT INTO `corregimiento` VALUES (10, '	Hatillo	', 1);
INSERT INTO `corregimiento` VALUES (11, '	San Sebastián	', 1);
INSERT INTO `corregimiento` VALUES (12, '	Escazú	', 2);
INSERT INTO `corregimiento` VALUES (13, '	San Antonio	', 2);
INSERT INTO `corregimiento` VALUES (14, '	San Rafael	', 2);
INSERT INTO `corregimiento` VALUES (15, '	Desamparados  	', 3);
INSERT INTO `corregimiento` VALUES (16, '	San Miguel  	', 3);
INSERT INTO `corregimiento` VALUES (17, '	San Juan de Dios  	', 3);
INSERT INTO `corregimiento` VALUES (18, '	San Rafael Arriba  	', 3);
INSERT INTO `corregimiento` VALUES (19, '	San Antonio  	', 3);
INSERT INTO `corregimiento` VALUES (20, '	Frailes  	', 3);
INSERT INTO `corregimiento` VALUES (21, '	Patarrá  	', 3);
INSERT INTO `corregimiento` VALUES (22, '	San Cristóbal  	', 3);
INSERT INTO `corregimiento` VALUES (23, '	Rosario  	', 3);
INSERT INTO `corregimiento` VALUES (24, '	Damas  	', 3);
INSERT INTO `corregimiento` VALUES (25, '	San Rafael Abajo  	', 3);
INSERT INTO `corregimiento` VALUES (26, '	Gravilias  	', 3);
INSERT INTO `corregimiento` VALUES (27, '	Los Guido  	', 3);
INSERT INTO `corregimiento` VALUES (28, '	Santiago   	', 4);
INSERT INTO `corregimiento` VALUES (29, '	Mercedes Sur   	', 4);
INSERT INTO `corregimiento` VALUES (30, '	Barbacoas   	', 4);
INSERT INTO `corregimiento` VALUES (31, '	Grifo Alto   	', 4);
INSERT INTO `corregimiento` VALUES (32, '	San Rafael   	', 4);
INSERT INTO `corregimiento` VALUES (33, '	Candelaria   	', 4);
INSERT INTO `corregimiento` VALUES (34, '	Desamparaditos   	', 4);
INSERT INTO `corregimiento` VALUES (35, '	San Antonio   	', 4);
INSERT INTO `corregimiento` VALUES (36, '	Chires   	', 4);
INSERT INTO `corregimiento` VALUES (37, '	San Marcos	', 5);
INSERT INTO `corregimiento` VALUES (38, '	San Lorenzo	', 5);
INSERT INTO `corregimiento` VALUES (39, '	San Carlos	', 5);
INSERT INTO `corregimiento` VALUES (40, '	Aserrí	', 6);
INSERT INTO `corregimiento` VALUES (41, '	Tarbaca o Praga	', 6);
INSERT INTO `corregimiento` VALUES (42, '	Vuelta de Jorco	', 6);
INSERT INTO `corregimiento` VALUES (43, '	San Gabriel	', 6);
INSERT INTO `corregimiento` VALUES (44, '	La Legua	', 6);
INSERT INTO `corregimiento` VALUES (45, '	Monterrey	', 6);
INSERT INTO `corregimiento` VALUES (46, '	Salitrillos	', 6);
INSERT INTO `corregimiento` VALUES (47, '	Colón	', 7);
INSERT INTO `corregimiento` VALUES (48, '	Guayabo	', 7);
INSERT INTO `corregimiento` VALUES (49, '	Tabarcia	', 7);
INSERT INTO `corregimiento` VALUES (50, '	Piedras Negras	', 7);
INSERT INTO `corregimiento` VALUES (51, '	Picagres	', 7);
INSERT INTO `corregimiento` VALUES (52, '	Guadalupe  	', 8);
INSERT INTO `corregimiento` VALUES (53, '	San Francisco  	', 8);
INSERT INTO `corregimiento` VALUES (54, '	Calle Blancos  	', 8);
INSERT INTO `corregimiento` VALUES (55, '	Mata de Plátano  	', 8);
INSERT INTO `corregimiento` VALUES (56, '	Ipís  	', 8);
INSERT INTO `corregimiento` VALUES (57, '	Rancho Redondo  	', 8);
INSERT INTO `corregimiento` VALUES (58, '	Purral  	', 8);
INSERT INTO `corregimiento` VALUES (59, '	Santa Ana	', 9);
INSERT INTO `corregimiento` VALUES (60, '	Salitral	', 9);
INSERT INTO `corregimiento` VALUES (61, '	Pozos o Concepción	', 9);
INSERT INTO `corregimiento` VALUES (62, '	Uruca o San Joaquín	', 9);
INSERT INTO `corregimiento` VALUES (63, '	Piedades	', 9);
INSERT INTO `corregimiento` VALUES (64, '	Brasil	', 9);
INSERT INTO `corregimiento` VALUES (65, '	Alajuelita	', 10);
INSERT INTO `corregimiento` VALUES (66, '	San Josecito	', 10);
INSERT INTO `corregimiento` VALUES (67, '	San Antonio	', 10);
INSERT INTO `corregimiento` VALUES (68, '	Concepción	', 10);
INSERT INTO `corregimiento` VALUES (69, '	San Felipe	', 10);
INSERT INTO `corregimiento` VALUES (70, '	San Isidro	', 11);
INSERT INTO `corregimiento` VALUES (71, '	San Rafael	', 11);
INSERT INTO `corregimiento` VALUES (72, '	Dulce Nombre o Jesús	', 11);
INSERT INTO `corregimiento` VALUES (73, '	Patalillo	', 11);
INSERT INTO `corregimiento` VALUES (74, '	Cascajal	', 11);
INSERT INTO `corregimiento` VALUES (75, '	San Ignacio	', 12);
INSERT INTO `corregimiento` VALUES (76, '	Guaitil	', 12);
INSERT INTO `corregimiento` VALUES (77, '	Palmichal	', 12);
INSERT INTO `corregimiento` VALUES (78, '	Cangrejal	', 12);
INSERT INTO `corregimiento` VALUES (79, '	Sabanillas	', 12);
INSERT INTO `corregimiento` VALUES (80, '	San Juan	', 13);
INSERT INTO `corregimiento` VALUES (81, '	Cinco Esquinas	', 13);
INSERT INTO `corregimiento` VALUES (82, '	Anselmo Llorente	', 13);
INSERT INTO `corregimiento` VALUES (83, '	León XIII	', 13);
INSERT INTO `corregimiento` VALUES (84, '	Colima	', 13);
INSERT INTO `corregimiento` VALUES (85, '	San Vicente	', 14);
INSERT INTO `corregimiento` VALUES (86, '	San Jerónimo	', 14);
INSERT INTO `corregimiento` VALUES (87, '	La Trinidad	', 14);
INSERT INTO `corregimiento` VALUES (88, '	San Pedro	', 15);
INSERT INTO `corregimiento` VALUES (89, '	Sabanilla	', 15);
INSERT INTO `corregimiento` VALUES (90, '	Mercedes o Betania	', 15);
INSERT INTO `corregimiento` VALUES (91, '	San Rafael	', 15);
INSERT INTO `corregimiento` VALUES (92, '	San Pablo	', 16);
INSERT INTO `corregimiento` VALUES (93, '	San Pedro	', 16);
INSERT INTO `corregimiento` VALUES (94, '	San Juan de Mata	', 16);
INSERT INTO `corregimiento` VALUES (95, '	San Luis	', 16);
INSERT INTO `corregimiento` VALUES (96, '	Carara	', 16);
INSERT INTO `corregimiento` VALUES (97, '	Santa María	', 17);
INSERT INTO `corregimiento` VALUES (98, '	Jardín	', 17);
INSERT INTO `corregimiento` VALUES (99, '	Copey	', 17);
INSERT INTO `corregimiento` VALUES (100, '	Curridabat	', 18);
INSERT INTO `corregimiento` VALUES (101, '	Granadilla	', 18);
INSERT INTO `corregimiento` VALUES (102, '	Sánchez	', 18);
INSERT INTO `corregimiento` VALUES (103, '	Tirrases	', 18);
INSERT INTO `corregimiento` VALUES (104, '	San Isidro	', 19);
INSERT INTO `corregimiento` VALUES (105, '	General	', 19);
INSERT INTO `corregimiento` VALUES (106, '	Daniel Flores	', 19);
INSERT INTO `corregimiento` VALUES (107, '	Rivas	', 19);
INSERT INTO `corregimiento` VALUES (108, '	San Pedro	', 19);
INSERT INTO `corregimiento` VALUES (109, '	Platanares	', 19);
INSERT INTO `corregimiento` VALUES (110, '	Pejibaye	', 19);
INSERT INTO `corregimiento` VALUES (111, '	Cajón o Carmen	', 19);
INSERT INTO `corregimiento` VALUES (112, '	Barú	', 19);
INSERT INTO `corregimiento` VALUES (113, '	Río Nuevo	', 19);
INSERT INTO `corregimiento` VALUES (114, '	Páramo	', 19);
INSERT INTO `corregimiento` VALUES (115, '	San Pablo	', 20);
INSERT INTO `corregimiento` VALUES (116, '	San Andrés	', 20);
INSERT INTO `corregimiento` VALUES (117, '	Llano Bonito	', 20);
INSERT INTO `corregimiento` VALUES (118, '	San Isidro	', 20);
INSERT INTO `corregimiento` VALUES (119, '	Santa Cruz	', 20);
INSERT INTO `corregimiento` VALUES (120, '	San Antonio	', 20);
INSERT INTO `corregimiento` VALUES (121, '	Alajuela	', 21);
INSERT INTO `corregimiento` VALUES (122, '	San José	', 21);
INSERT INTO `corregimiento` VALUES (123, '	Carrizal	', 21);
INSERT INTO `corregimiento` VALUES (124, '	San Antonio	', 21);
INSERT INTO `corregimiento` VALUES (125, '	Guácima	', 21);
INSERT INTO `corregimiento` VALUES (126, '	San Isidro	', 21);
INSERT INTO `corregimiento` VALUES (127, '	Sabanilla	', 21);
INSERT INTO `corregimiento` VALUES (128, '	San Rafael	', 21);
INSERT INTO `corregimiento` VALUES (129, '	Río Segundo	', 21);
INSERT INTO `corregimiento` VALUES (130, '	Desamparados	', 21);
INSERT INTO `corregimiento` VALUES (131, '	Turrúcares	', 21);
INSERT INTO `corregimiento` VALUES (132, '	Tambor	', 21);
INSERT INTO `corregimiento` VALUES (133, '	La Garita	', 21);
INSERT INTO `corregimiento` VALUES (134, '	Sarapiquí	', 21);
INSERT INTO `corregimiento` VALUES (135, '	San Ramón	', 22);
INSERT INTO `corregimiento` VALUES (136, '	Santiago	', 22);
INSERT INTO `corregimiento` VALUES (137, '	San Juan	', 22);
INSERT INTO `corregimiento` VALUES (138, '	Piedades Norte	', 22);
INSERT INTO `corregimiento` VALUES (139, '	Piedades Sur	', 22);
INSERT INTO `corregimiento` VALUES (140, '	San Rafael	', 22);
INSERT INTO `corregimiento` VALUES (141, '	San Isidro	', 22);
INSERT INTO `corregimiento` VALUES (142, '	Ángeles	', 22);
INSERT INTO `corregimiento` VALUES (143, '	Alfaro	', 22);
INSERT INTO `corregimiento` VALUES (144, '	Volio	', 22);
INSERT INTO `corregimiento` VALUES (145, '	Concepción	', 22);
INSERT INTO `corregimiento` VALUES (146, '	Zapotal	', 22);
INSERT INTO `corregimiento` VALUES (147, '	Peñas Blancas	', 22);
INSERT INTO `corregimiento` VALUES (148, '	San Lorenzo	', 22);
INSERT INTO `corregimiento` VALUES (149, '	Grecia	', 23);
INSERT INTO `corregimiento` VALUES (150, '	San Isidro	', 23);
INSERT INTO `corregimiento` VALUES (151, '	San José	', 23);
INSERT INTO `corregimiento` VALUES (152, '	San Roque	', 23);
INSERT INTO `corregimiento` VALUES (153, '	Tacares	', 23);
INSERT INTO `corregimiento` VALUES (154, '	Puente de Piedra	', 23);
INSERT INTO `corregimiento` VALUES (155, '	Bolívar	', 23);
INSERT INTO `corregimiento` VALUES (156, '	San Mateo	', 24);
INSERT INTO `corregimiento` VALUES (157, '	Desmonte	', 24);
INSERT INTO `corregimiento` VALUES (158, '	Jesús María	', 24);
INSERT INTO `corregimiento` VALUES (159, '	Labrador	', 24);
INSERT INTO `corregimiento` VALUES (160, '	Atenas	', 25);
INSERT INTO `corregimiento` VALUES (161, '	Jesús	', 25);
INSERT INTO `corregimiento` VALUES (162, '	Mercedes	', 25);
INSERT INTO `corregimiento` VALUES (163, '	San Isidro	', 25);
INSERT INTO `corregimiento` VALUES (164, '	Concepción	', 25);
INSERT INTO `corregimiento` VALUES (165, '	San José	', 25);
INSERT INTO `corregimiento` VALUES (166, '	Santa Eulalia	', 25);
INSERT INTO `corregimiento` VALUES (167, '	Escobal	', 25);
INSERT INTO `corregimiento` VALUES (168, '	Naranjo	', 26);
INSERT INTO `corregimiento` VALUES (169, '	San Miguel	', 26);
INSERT INTO `corregimiento` VALUES (170, '	San José	', 26);
INSERT INTO `corregimiento` VALUES (171, '	Cirrí	', 26);
INSERT INTO `corregimiento` VALUES (172, '	San Jerónimo	', 26);
INSERT INTO `corregimiento` VALUES (173, '	San Juan	', 26);
INSERT INTO `corregimiento` VALUES (174, '	El Rosario	', 26);
INSERT INTO `corregimiento` VALUES (175, '	Palmitos	', 26);
INSERT INTO `corregimiento` VALUES (176, '	Palmares	', 27);
INSERT INTO `corregimiento` VALUES (177, '	Zaragoza	', 27);
INSERT INTO `corregimiento` VALUES (178, '	Buenos Aires	', 27);
INSERT INTO `corregimiento` VALUES (179, '	Santiago	', 27);
INSERT INTO `corregimiento` VALUES (180, '	Candelaria	', 27);
INSERT INTO `corregimiento` VALUES (181, '	Esquipulas	', 27);
INSERT INTO `corregimiento` VALUES (182, '	La Granja	', 27);
INSERT INTO `corregimiento` VALUES (183, '	San Pedro	', 28);
INSERT INTO `corregimiento` VALUES (184, '	San Juan	', 28);
INSERT INTO `corregimiento` VALUES (185, '	San Rafael	', 28);
INSERT INTO `corregimiento` VALUES (186, '	Carrillos	', 28);
INSERT INTO `corregimiento` VALUES (187, '	Sabana Redonda	', 28);
INSERT INTO `corregimiento` VALUES (188, '	Orotina	', 29);
INSERT INTO `corregimiento` VALUES (189, '	Mastate	', 29);
INSERT INTO `corregimiento` VALUES (190, '	Hacienda Vieja	', 29);
INSERT INTO `corregimiento` VALUES (191, '	Coyolar	', 29);
INSERT INTO `corregimiento` VALUES (192, '	La Ceiba	', 29);
INSERT INTO `corregimiento` VALUES (193, '	Quesada	', 30);
INSERT INTO `corregimiento` VALUES (194, '	Florencia	', 30);
INSERT INTO `corregimiento` VALUES (195, '	Buenavista	', 30);
INSERT INTO `corregimiento` VALUES (196, '	Aguas Zarcas	', 30);
INSERT INTO `corregimiento` VALUES (197, '	Venecia	', 30);
INSERT INTO `corregimiento` VALUES (198, '	Pital	', 30);
INSERT INTO `corregimiento` VALUES (199, '	La Fortuna	', 30);
INSERT INTO `corregimiento` VALUES (200, '	La Tigra	', 30);
INSERT INTO `corregimiento` VALUES (201, '	La Palmera	', 30);
INSERT INTO `corregimiento` VALUES (202, '	Venado	', 30);
INSERT INTO `corregimiento` VALUES (203, '	Cutris	', 30);
INSERT INTO `corregimiento` VALUES (204, '	Monterrey	', 30);
INSERT INTO `corregimiento` VALUES (205, '	Pocosol	', 30);
INSERT INTO `corregimiento` VALUES (206, '	Zarcero	', 31);
INSERT INTO `corregimiento` VALUES (207, '	Laguna	', 31);
INSERT INTO `corregimiento` VALUES (208, '	Tapezco	', 31);
INSERT INTO `corregimiento` VALUES (209, '	Guadalupe	', 31);
INSERT INTO `corregimiento` VALUES (210, '	Palmira	', 31);
INSERT INTO `corregimiento` VALUES (211, '	Zapote	', 31);
INSERT INTO `corregimiento` VALUES (212, '	Brisas	', 31);
INSERT INTO `corregimiento` VALUES (213, '	Sarchí Norte	', 32);
INSERT INTO `corregimiento` VALUES (214, '	Sarchí Sur	', 32);
INSERT INTO `corregimiento` VALUES (215, '	Toro Amarillo	', 32);
INSERT INTO `corregimiento` VALUES (216, '	San Pedro	', 32);
INSERT INTO `corregimiento` VALUES (217, '	Rodríguez	', 32);
INSERT INTO `corregimiento` VALUES (218, '	Upala	', 33);
INSERT INTO `corregimiento` VALUES (219, '	Aguas Claras	', 33);
INSERT INTO `corregimiento` VALUES (220, '	San José (Pizote)	', 33);
INSERT INTO `corregimiento` VALUES (221, '	Bijagua	', 33);
INSERT INTO `corregimiento` VALUES (222, '	Delicias	', 33);
INSERT INTO `corregimiento` VALUES (223, '	Dos Ríos	', 33);
INSERT INTO `corregimiento` VALUES (224, '	Yolillal	', 33);
INSERT INTO `corregimiento` VALUES (225, '	Canalete	', 33);
INSERT INTO `corregimiento` VALUES (226, '	Los Chiles	', 34);
INSERT INTO `corregimiento` VALUES (227, '	Caño Negro	', 34);
INSERT INTO `corregimiento` VALUES (228, '	El Amparo	', 34);
INSERT INTO `corregimiento` VALUES (229, '	San Jorge	', 34);
INSERT INTO `corregimiento` VALUES (230, '	San Rafael	', 35);
INSERT INTO `corregimiento` VALUES (231, '	Buenavista	', 35);
INSERT INTO `corregimiento` VALUES (232, '	Cote	', 35);
INSERT INTO `corregimiento` VALUES (233, '	Katira	', 35);
INSERT INTO `corregimiento` VALUES (234, '	Río Cuarto	', 23);
INSERT INTO `corregimiento` VALUES (235, '	Oriental	', 36);
INSERT INTO `corregimiento` VALUES (236, '	Occidental	', 36);
INSERT INTO `corregimiento` VALUES (237, '	Carmen	', 36);
INSERT INTO `corregimiento` VALUES (238, '	San Nicolás	', 36);
INSERT INTO `corregimiento` VALUES (239, '	Agua Caliente	', 36);
INSERT INTO `corregimiento` VALUES (240, '	Guadalupe	', 36);
INSERT INTO `corregimiento` VALUES (241, '	Corralillo	', 36);
INSERT INTO `corregimiento` VALUES (242, '	Tierra Blanca	', 36);
INSERT INTO `corregimiento` VALUES (243, '	Dulce Nombre	', 36);
INSERT INTO `corregimiento` VALUES (244, '	Llano Grande	', 36);
INSERT INTO `corregimiento` VALUES (245, '	Quebradilla	', 36);
INSERT INTO `corregimiento` VALUES (246, '	Paraíso	', 37);
INSERT INTO `corregimiento` VALUES (247, '	Santiago	', 37);
INSERT INTO `corregimiento` VALUES (248, '	Orosi	', 37);
INSERT INTO `corregimiento` VALUES (249, '	Cachí	', 37);
INSERT INTO `corregimiento` VALUES (250, '	Llanos de Santa Lucía	', 37);
INSERT INTO `corregimiento` VALUES (251, '	Tres Ríos	', 38);
INSERT INTO `corregimiento` VALUES (252, '	San Diego	', 38);
INSERT INTO `corregimiento` VALUES (253, '	San Juan	', 38);
INSERT INTO `corregimiento` VALUES (254, '	San Rafael	', 38);
INSERT INTO `corregimiento` VALUES (255, '	Concepción	', 38);
INSERT INTO `corregimiento` VALUES (256, '	Dulce Nombre	', 38);
INSERT INTO `corregimiento` VALUES (257, '	San Ramón	', 38);
INSERT INTO `corregimiento` VALUES (258, '	Río Azul	', 38);
INSERT INTO `corregimiento` VALUES (259, '	Juan Viñas	', 39);
INSERT INTO `corregimiento` VALUES (260, '	Tucurrique	', 39);
INSERT INTO `corregimiento` VALUES (261, '	Pejibaye	', 39);
INSERT INTO `corregimiento` VALUES (262, '	Turrialba	', 40);
INSERT INTO `corregimiento` VALUES (263, '	La Suiza	', 40);
INSERT INTO `corregimiento` VALUES (264, '	Peralta	', 40);
INSERT INTO `corregimiento` VALUES (265, '	Santa Cruz	', 40);
INSERT INTO `corregimiento` VALUES (266, '	Santa Teresita	', 40);
INSERT INTO `corregimiento` VALUES (267, '	Pavones	', 40);
INSERT INTO `corregimiento` VALUES (268, '	Tuis	', 40);
INSERT INTO `corregimiento` VALUES (269, '	Tayutic	', 40);
INSERT INTO `corregimiento` VALUES (270, '	Santa Rosa	', 40);
INSERT INTO `corregimiento` VALUES (271, '	Tres Equis	', 40);
INSERT INTO `corregimiento` VALUES (272, '	La Isabel	', 40);
INSERT INTO `corregimiento` VALUES (273, '	Chirripó	', 40);
INSERT INTO `corregimiento` VALUES (274, '	Pacayas	', 41);
INSERT INTO `corregimiento` VALUES (275, '	Cervantes	', 41);
INSERT INTO `corregimiento` VALUES (276, '	Capellades	', 41);
INSERT INTO `corregimiento` VALUES (277, '	San Rafael	', 42);
INSERT INTO `corregimiento` VALUES (278, '	Cot	', 42);
INSERT INTO `corregimiento` VALUES (279, '	Potrero Cerrado	', 42);
INSERT INTO `corregimiento` VALUES (280, '	Cipreses	', 42);
INSERT INTO `corregimiento` VALUES (281, '	Santa Rosa	', 42);
INSERT INTO `corregimiento` VALUES (282, '	El Tejar	', 43);
INSERT INTO `corregimiento` VALUES (283, '	San Isidro	', 43);
INSERT INTO `corregimiento` VALUES (284, '	Tobosi	', 43);
INSERT INTO `corregimiento` VALUES (285, '	Patio de Agua	', 43);
INSERT INTO `corregimiento` VALUES (286, '	Heredia	', 44);
INSERT INTO `corregimiento` VALUES (287, '	Mercedes	', 44);
INSERT INTO `corregimiento` VALUES (288, '	San Francisco	', 44);
INSERT INTO `corregimiento` VALUES (289, '	Ulloa	', 44);
INSERT INTO `corregimiento` VALUES (290, '	Vara Blanca	', 44);
INSERT INTO `corregimiento` VALUES (291, '	Barva	', 45);
INSERT INTO `corregimiento` VALUES (292, '	San Pedro	', 45);
INSERT INTO `corregimiento` VALUES (293, '	San Pablo	', 45);
INSERT INTO `corregimiento` VALUES (294, '	San Roque	', 45);
INSERT INTO `corregimiento` VALUES (295, '	Santa Lucía	', 45);
INSERT INTO `corregimiento` VALUES (296, '	San José de la Montaña	', 45);
INSERT INTO `corregimiento` VALUES (297, '	Santo Domingo	', 46);
INSERT INTO `corregimiento` VALUES (298, '	San Vicente	', 46);
INSERT INTO `corregimiento` VALUES (299, '	San Miguel	', 46);
INSERT INTO `corregimiento` VALUES (300, '	Paracito	', 46);
INSERT INTO `corregimiento` VALUES (301, '	Santo Tomás	', 46);
INSERT INTO `corregimiento` VALUES (302, '	Santa Rosa	', 46);
INSERT INTO `corregimiento` VALUES (303, '	Tures	', 46);
INSERT INTO `corregimiento` VALUES (304, '	Pará	', 46);
INSERT INTO `corregimiento` VALUES (305, '	Santa Bárbara	', 47);
INSERT INTO `corregimiento` VALUES (306, '	San Pedro	', 47);
INSERT INTO `corregimiento` VALUES (307, '	San Juan	', 47);
INSERT INTO `corregimiento` VALUES (308, '	Jesús	', 47);
INSERT INTO `corregimiento` VALUES (309, '	Santo Domingo	', 47);
INSERT INTO `corregimiento` VALUES (310, '	Purabá	', 47);
INSERT INTO `corregimiento` VALUES (311, '	San Rafael	', 48);
INSERT INTO `corregimiento` VALUES (312, '	San Josecito	', 48);
INSERT INTO `corregimiento` VALUES (313, '	Santiago	', 48);
INSERT INTO `corregimiento` VALUES (314, '	Ángeles	', 48);
INSERT INTO `corregimiento` VALUES (315, '	Concepción	', 48);
INSERT INTO `corregimiento` VALUES (316, '	San Isidro	', 49);
INSERT INTO `corregimiento` VALUES (317, '	San José	', 49);
INSERT INTO `corregimiento` VALUES (318, '	Concepción	', 49);
INSERT INTO `corregimiento` VALUES (319, '	San Francisco	', 49);
INSERT INTO `corregimiento` VALUES (320, '	San Antonio	', 50);
INSERT INTO `corregimiento` VALUES (321, '	La Ribera	', 50);
INSERT INTO `corregimiento` VALUES (322, '	La Asunción	', 50);
INSERT INTO `corregimiento` VALUES (323, '	San Joaquín	', 51);
INSERT INTO `corregimiento` VALUES (324, '	Barrantes	', 51);
INSERT INTO `corregimiento` VALUES (325, '	Llorente	', 51);
INSERT INTO `corregimiento` VALUES (326, '	San Pablo	', 52);
INSERT INTO `corregimiento` VALUES (327, '	Rincón de Sabanilla	', 52);
INSERT INTO `corregimiento` VALUES (328, '	Puerto Viejo	', 53);
INSERT INTO `corregimiento` VALUES (329, '	La Virgen	', 53);
INSERT INTO `corregimiento` VALUES (330, '	Horquetas	', 53);
INSERT INTO `corregimiento` VALUES (331, '	Llanuras del Gaspar	', 53);
INSERT INTO `corregimiento` VALUES (332, '	Cureña	', 53);
INSERT INTO `corregimiento` VALUES (333, '	Liberia	', 54);
INSERT INTO `corregimiento` VALUES (334, '	Cañas Dulces	', 54);
INSERT INTO `corregimiento` VALUES (335, '	Mayorga	', 54);
INSERT INTO `corregimiento` VALUES (336, '	Nacascolo	', 54);
INSERT INTO `corregimiento` VALUES (337, '	Curubandé	', 54);
INSERT INTO `corregimiento` VALUES (338, '	Nicoya	', 55);
INSERT INTO `corregimiento` VALUES (339, '	Mansión	', 55);
INSERT INTO `corregimiento` VALUES (340, '	San Antonio	', 55);
INSERT INTO `corregimiento` VALUES (341, '	Quebrada Honda	', 55);
INSERT INTO `corregimiento` VALUES (342, '	Sámara	', 55);
INSERT INTO `corregimiento` VALUES (343, '	Nosara	', 55);
INSERT INTO `corregimiento` VALUES (344, '	Belén de Nosarita	', 55);
INSERT INTO `corregimiento` VALUES (345, '	Santa Cruz	', 56);
INSERT INTO `corregimiento` VALUES (346, '	Bolsón	', 56);
INSERT INTO `corregimiento` VALUES (347, '	Veintisiete de Abril	', 56);
INSERT INTO `corregimiento` VALUES (348, '	Tempate	', 56);
INSERT INTO `corregimiento` VALUES (349, '	Cartagena	', 56);
INSERT INTO `corregimiento` VALUES (350, '	Cuajiniquil	', 56);
INSERT INTO `corregimiento` VALUES (351, '	Diriá	', 56);
INSERT INTO `corregimiento` VALUES (352, '	Cabo Velas	', 56);
INSERT INTO `corregimiento` VALUES (353, '	Tamarindo	', 56);
INSERT INTO `corregimiento` VALUES (354, '	Bagaces	', 57);
INSERT INTO `corregimiento` VALUES (355, '	La Fortuna	', 57);
INSERT INTO `corregimiento` VALUES (356, '	Mogote	', 57);
INSERT INTO `corregimiento` VALUES (357, '	Río Naranjo	', 57);
INSERT INTO `corregimiento` VALUES (358, '	Filadelfia	', 58);
INSERT INTO `corregimiento` VALUES (359, '	Palmira	', 58);
INSERT INTO `corregimiento` VALUES (360, '	Sardinal	', 58);
INSERT INTO `corregimiento` VALUES (361, '	Belén	', 58);
INSERT INTO `corregimiento` VALUES (362, '	Cañas	', 59);
INSERT INTO `corregimiento` VALUES (363, '	Palmira	', 59);
INSERT INTO `corregimiento` VALUES (364, '	San Miguel	', 59);
INSERT INTO `corregimiento` VALUES (365, '	Bebedero	', 59);
INSERT INTO `corregimiento` VALUES (366, '	Porozal	', 59);
INSERT INTO `corregimiento` VALUES (367, '	Las Juntas	', 60);
INSERT INTO `corregimiento` VALUES (368, '	Sierra	', 60);
INSERT INTO `corregimiento` VALUES (369, '	San Juan	', 60);
INSERT INTO `corregimiento` VALUES (370, '	Colorado	', 60);
INSERT INTO `corregimiento` VALUES (371, '	Tilarán	', 61);
INSERT INTO `corregimiento` VALUES (372, '	Quebrada Grande	', 61);
INSERT INTO `corregimiento` VALUES (373, '	Tronadora	', 61);
INSERT INTO `corregimiento` VALUES (374, '	Santa Rosa	', 61);
INSERT INTO `corregimiento` VALUES (375, '	Líbano	', 61);
INSERT INTO `corregimiento` VALUES (376, '	Tierras Morenas	', 61);
INSERT INTO `corregimiento` VALUES (377, '	Arenal	', 61);
INSERT INTO `corregimiento` VALUES (378, '	Carmona	', 62);
INSERT INTO `corregimiento` VALUES (379, '	Santa Rita	', 62);
INSERT INTO `corregimiento` VALUES (380, '	Zapotal	', 62);
INSERT INTO `corregimiento` VALUES (381, '	San Pablo	', 62);
INSERT INTO `corregimiento` VALUES (382, '	Porvenir	', 62);
INSERT INTO `corregimiento` VALUES (383, '	Bejuco	', 62);
INSERT INTO `corregimiento` VALUES (384, '	La Cruz	', 63);
INSERT INTO `corregimiento` VALUES (385, '	Santa Cecilia	', 63);
INSERT INTO `corregimiento` VALUES (386, '	La Garita	', 63);
INSERT INTO `corregimiento` VALUES (387, '	Santa Elena	', 63);
INSERT INTO `corregimiento` VALUES (388, '	Hojancha	', 64);
INSERT INTO `corregimiento` VALUES (389, '	Monte Romo	', 64);
INSERT INTO `corregimiento` VALUES (390, '	Puerto Carrillo	', 64);
INSERT INTO `corregimiento` VALUES (391, '	Huacas	', 64);
INSERT INTO `corregimiento` VALUES (392, '	Matambú	', 64);
INSERT INTO `corregimiento` VALUES (393, '	Puntarenas	', 65);
INSERT INTO `corregimiento` VALUES (394, '	Pitahaya	', 65);
INSERT INTO `corregimiento` VALUES (395, '	Chomes	', 65);
INSERT INTO `corregimiento` VALUES (396, '	Lepanto	', 65);
INSERT INTO `corregimiento` VALUES (397, '	Paquera	', 65);
INSERT INTO `corregimiento` VALUES (398, '	Manzanillo	', 65);
INSERT INTO `corregimiento` VALUES (399, '	Guacimal	', 65);
INSERT INTO `corregimiento` VALUES (400, '	Barranca	', 65);
INSERT INTO `corregimiento` VALUES (401, '	Monteverde	', 65);
INSERT INTO `corregimiento` VALUES (402, '	Isla del Coco	', 65);
INSERT INTO `corregimiento` VALUES (403, '	Cóbano	', 65);
INSERT INTO `corregimiento` VALUES (404, '	Chacarita	', 65);
INSERT INTO `corregimiento` VALUES (405, '	Chira	', 65);
INSERT INTO `corregimiento` VALUES (406, '	Acapulco	', 65);
INSERT INTO `corregimiento` VALUES (407, '	El Roble	', 65);
INSERT INTO `corregimiento` VALUES (408, '	Arancibia	', 65);
INSERT INTO `corregimiento` VALUES (409, '	Espíritu Santo	', 66);
INSERT INTO `corregimiento` VALUES (410, '	San Juan Grande	', 66);
INSERT INTO `corregimiento` VALUES (411, '	Macacona	', 66);
INSERT INTO `corregimiento` VALUES (412, '	San Rafael	', 66);
INSERT INTO `corregimiento` VALUES (413, '	San Jerónimo	', 66);
INSERT INTO `corregimiento` VALUES (414, '	Caldera	', 66);
INSERT INTO `corregimiento` VALUES (415, '	Buenos Aires	', 67);
INSERT INTO `corregimiento` VALUES (416, '	Volcán	', 67);
INSERT INTO `corregimiento` VALUES (417, '	Potrero Grande	', 67);
INSERT INTO `corregimiento` VALUES (418, '	Boruca	', 67);
INSERT INTO `corregimiento` VALUES (419, '	Pilas	', 67);
INSERT INTO `corregimiento` VALUES (420, '	Colinas	', 67);
INSERT INTO `corregimiento` VALUES (421, '	Chánguena	', 67);
INSERT INTO `corregimiento` VALUES (422, '	Biolley	', 67);
INSERT INTO `corregimiento` VALUES (423, '	Brunka	', 67);
INSERT INTO `corregimiento` VALUES (424, '	Miramar	', 68);
INSERT INTO `corregimiento` VALUES (425, '	La Unión	', 68);
INSERT INTO `corregimiento` VALUES (426, '	San Isidro	', 68);
INSERT INTO `corregimiento` VALUES (427, '	Ciudad Cortés	', 69);
INSERT INTO `corregimiento` VALUES (428, '	Palmar	', 69);
INSERT INTO `corregimiento` VALUES (429, '	Sierpe	', 69);
INSERT INTO `corregimiento` VALUES (430, '	Bahía Ballena	', 69);
INSERT INTO `corregimiento` VALUES (431, '	Piedras Blancas	', 69);
INSERT INTO `corregimiento` VALUES (432, '	Bahía Drake	', 69);
INSERT INTO `corregimiento` VALUES (433, '	Quepos	', 70);
INSERT INTO `corregimiento` VALUES (434, '	Savegre	', 70);
INSERT INTO `corregimiento` VALUES (435, '	Naranjito	', 70);
INSERT INTO `corregimiento` VALUES (436, '	Golfito	', 71);
INSERT INTO `corregimiento` VALUES (437, '	Puerto Jiménez	', 71);
INSERT INTO `corregimiento` VALUES (438, '	Guaycará	', 71);
INSERT INTO `corregimiento` VALUES (439, '	Pavón	', 71);
INSERT INTO `corregimiento` VALUES (440, '	San Vito	', 72);
INSERT INTO `corregimiento` VALUES (441, '	Sabalito	', 72);
INSERT INTO `corregimiento` VALUES (442, '	Aguabuena	', 72);
INSERT INTO `corregimiento` VALUES (443, '	Limoncito	', 72);
INSERT INTO `corregimiento` VALUES (444, '	Pittier	', 72);
INSERT INTO `corregimiento` VALUES (445, '	Gutiérrez Brown	', 72);
INSERT INTO `corregimiento` VALUES (446, '	Parrita	', 73);
INSERT INTO `corregimiento` VALUES (447, '	Corredor	', 74);
INSERT INTO `corregimiento` VALUES (448, '	La Cuesta	', 74);
INSERT INTO `corregimiento` VALUES (449, '	Paso Canoas	', 74);
INSERT INTO `corregimiento` VALUES (450, '	Laurel	', 74);
INSERT INTO `corregimiento` VALUES (451, '	Jacó	', 75);
INSERT INTO `corregimiento` VALUES (452, '	Tárcoles	', 75);
INSERT INTO `corregimiento` VALUES (453, '	Limón	', 76);
INSERT INTO `corregimiento` VALUES (454, '	Valle La Estrella	', 76);
INSERT INTO `corregimiento` VALUES (455, '	Río Blanco	', 76);
INSERT INTO `corregimiento` VALUES (456, '	Matama	', 76);
INSERT INTO `corregimiento` VALUES (457, '	Guápiles	', 77);
INSERT INTO `corregimiento` VALUES (458, '	Jiménez	', 77);
INSERT INTO `corregimiento` VALUES (459, '	La Rita	', 77);
INSERT INTO `corregimiento` VALUES (460, '	Roxana	', 77);
INSERT INTO `corregimiento` VALUES (461, '	Cariari	', 77);
INSERT INTO `corregimiento` VALUES (462, '	Colorado	', 77);
INSERT INTO `corregimiento` VALUES (463, '	La Colonia	', 77);
INSERT INTO `corregimiento` VALUES (464, '	Siquirres	', 78);
INSERT INTO `corregimiento` VALUES (465, '	Pacuarito	', 78);
INSERT INTO `corregimiento` VALUES (466, '	Florida	', 78);
INSERT INTO `corregimiento` VALUES (467, '	Germania	', 78);
INSERT INTO `corregimiento` VALUES (468, '	Cairo	', 78);
INSERT INTO `corregimiento` VALUES (469, '	Alegría	', 78);
INSERT INTO `corregimiento` VALUES (470, '	Bratsi	', 79);
INSERT INTO `corregimiento` VALUES (471, '	Sixaola	', 79);
INSERT INTO `corregimiento` VALUES (472, '	Cahuita	', 79);
INSERT INTO `corregimiento` VALUES (473, '	Telire	', 79);
INSERT INTO `corregimiento` VALUES (474, '	Matina	', 80);
INSERT INTO `corregimiento` VALUES (475, '	Batán	', 80);
INSERT INTO `corregimiento` VALUES (476, '	Carrandi	', 80);
INSERT INTO `corregimiento` VALUES (477, '	Guácimo	', 81);
INSERT INTO `corregimiento` VALUES (478, '	Mercedes	', 81);
INSERT INTO `corregimiento` VALUES (479, '	Pocora	', 81);
INSERT INTO `corregimiento` VALUES (480, '	Río Jiménez	', 81);
INSERT INTO `corregimiento` VALUES (481, '	Duacarí	', 81);
INSERT INTO `corregimiento` VALUES (482, 'Almirante', 82);
INSERT INTO `corregimiento` VALUES (483, 'Barriada Guaymí', 82);
INSERT INTO `corregimiento` VALUES (484, 'Barrio Francés', 82);
INSERT INTO `corregimiento` VALUES (485, 'Nance de Riscó', 82);
INSERT INTO `corregimiento` VALUES (486, 'Valle de Aguas Arriba', 82);
INSERT INTO `corregimiento` VALUES (487, 'Valle de Riscó', 82);
INSERT INTO `corregimiento` VALUES (488, 'Bastimentos', 83);
INSERT INTO `corregimiento` VALUES (489, 'Bocas del Toro', 83);
INSERT INTO `corregimiento` VALUES (490, 'Cauchero', 83);
INSERT INTO `corregimiento` VALUES (491, 'Punta Laurel', 83);
INSERT INTO `corregimiento` VALUES (492, 'Tierra Oscura', 83);
INSERT INTO `corregimiento` VALUES (493, 'Changuinola', 84);
INSERT INTO `corregimiento` VALUES (494, 'Cochigro', 84);
INSERT INTO `corregimiento` VALUES (495, 'El Empalme', 84);
INSERT INTO `corregimiento` VALUES (496, 'Guabito', 84);
INSERT INTO `corregimiento` VALUES (497, 'La Gloria', 84);
INSERT INTO `corregimiento` VALUES (498, 'Las Delicias', 84);
INSERT INTO `corregimiento` VALUES (499, 'Las Tablas', 84);
INSERT INTO `corregimiento` VALUES (500, 'Barriada 4 de Abril', 84);
INSERT INTO `corregimiento` VALUES (501, 'El Teribe', 84);
INSERT INTO `corregimiento` VALUES (502, 'Finca 30', 84);
INSERT INTO `corregimiento` VALUES (503, 'Finca 60', 84);
INSERT INTO `corregimiento` VALUES (504, 'Finca 6', 84);
INSERT INTO `corregimiento` VALUES (505, 'El Silencio', 84);
INSERT INTO `corregimiento` VALUES (506, 'Bajo Cedro', 85);
INSERT INTO `corregimiento` VALUES (507, 'Chiriquí Grande', 85);
INSERT INTO `corregimiento` VALUES (508, 'Miramar', 85);
INSERT INTO `corregimiento` VALUES (509, 'Punta Peña', 85);
INSERT INTO `corregimiento` VALUES (510, 'Punta Robalo', 85);
INSERT INTO `corregimiento` VALUES (511, 'Rambala', 85);
INSERT INTO `corregimiento` VALUES (512, 'Alanje', 86);
INSERT INTO `corregimiento` VALUES (513, 'Divalá', 86);
INSERT INTO `corregimiento` VALUES (514, 'Canta Gallo', 86);
INSERT INTO `corregimiento` VALUES (515, 'El Tejar', 86);
INSERT INTO `corregimiento` VALUES (516, 'Guarumal', 86);
INSERT INTO `corregimiento` VALUES (517, 'Nuevo México', 86);
INSERT INTO `corregimiento` VALUES (518, 'Querévalo', 86);
INSERT INTO `corregimiento` VALUES (519, 'Palo Grande', 86);
INSERT INTO `corregimiento` VALUES (520, 'Santo Tomás', 86);
INSERT INTO `corregimiento` VALUES (521, 'Baco', 87);
INSERT INTO `corregimiento` VALUES (522, 'Limones', 87);
INSERT INTO `corregimiento` VALUES (523, 'Progreso', 87);
INSERT INTO `corregimiento` VALUES (524, 'Puerto Armuelles', 87);
INSERT INTO `corregimiento` VALUES (525, 'Rodolfo Aguilar Delgado', 87);
INSERT INTO `corregimiento` VALUES (526, 'Bágala', 88);
INSERT INTO `corregimiento` VALUES (527, 'Boquerón', 88);
INSERT INTO `corregimiento` VALUES (528, 'Cordillera', 88);
INSERT INTO `corregimiento` VALUES (529, 'Guabal', 88);
INSERT INTO `corregimiento` VALUES (530, 'Guayabal', 88);
INSERT INTO `corregimiento` VALUES (531, 'Paraíso', 88);
INSERT INTO `corregimiento` VALUES (532, 'Pedregal', 88);
INSERT INTO `corregimiento` VALUES (533, 'Tijeras', 88);
INSERT INTO `corregimiento` VALUES (534, 'Alto Boquete', 89);
INSERT INTO `corregimiento` VALUES (535, 'Bajo Boquete', 89);
INSERT INTO `corregimiento` VALUES (536, 'Caldera', 89);
INSERT INTO `corregimiento` VALUES (537, 'Jaramillo', 89);
INSERT INTO `corregimiento` VALUES (538, 'Los Naranjos', 89);
INSERT INTO `corregimiento` VALUES (539, 'Palmira', 89);
INSERT INTO `corregimiento` VALUES (540, 'Aserrío de Gariché', 90);
INSERT INTO `corregimiento` VALUES (541, 'Bugaba', 90);
INSERT INTO `corregimiento` VALUES (542, 'El Bongo', 90);
INSERT INTO `corregimiento` VALUES (543, 'Gómez', 90);
INSERT INTO `corregimiento` VALUES (544, 'La Concepción', 90);
INSERT INTO `corregimiento` VALUES (545, 'La Estrella', 90);
INSERT INTO `corregimiento` VALUES (546, 'San Andrés', 90);
INSERT INTO `corregimiento` VALUES (547, 'Santa Marta', 90);
INSERT INTO `corregimiento` VALUES (548, 'Santa Rosa', 90);
INSERT INTO `corregimiento` VALUES (549, 'Santo Domingo', 90);
INSERT INTO `corregimiento` VALUES (550, 'Sortová', 90);
INSERT INTO `corregimiento` VALUES (551, 'Solano', 90);
INSERT INTO `corregimiento` VALUES (552, 'San Isidro', 90);
INSERT INTO `corregimiento` VALUES (553, 'Bijagual', 91);
INSERT INTO `corregimiento` VALUES (554, 'Cochea', 91);
INSERT INTO `corregimiento` VALUES (555, 'Chiriquí', 91);
INSERT INTO `corregimiento` VALUES (556, 'Guacá', 91);
INSERT INTO `corregimiento` VALUES (557, 'Las Lomas', 91);
INSERT INTO `corregimiento` VALUES (558, 'Pedregal', 91);
INSERT INTO `corregimiento` VALUES (559, 'San Carlos', 91);
INSERT INTO `corregimiento` VALUES (560, 'David', 91);
INSERT INTO `corregimiento` VALUES (561, 'David Este', 91);
INSERT INTO `corregimiento` VALUES (562, 'David Sur', 91);
INSERT INTO `corregimiento` VALUES (563, 'San Pablo Nuevo', 91);
INSERT INTO `corregimiento` VALUES (564, 'San Pablo Viejo', 91);
INSERT INTO `corregimiento` VALUES (565, 'Dolega', 92);
INSERT INTO `corregimiento` VALUES (566, 'Dos Ríos', 92);
INSERT INTO `corregimiento` VALUES (567, 'Los Algarrobos', 92);
INSERT INTO `corregimiento` VALUES (568, 'Los Anastacios', 92);
INSERT INTO `corregimiento` VALUES (569, 'Potrerillos', 92);
INSERT INTO `corregimiento` VALUES (570, 'Potrerillos Abajo', 92);
INSERT INTO `corregimiento` VALUES (571, 'Rovira', 92);
INSERT INTO `corregimiento` VALUES (572, 'Tinajas', 92);
INSERT INTO `corregimiento` VALUES (573, 'Gualaca', 93);
INSERT INTO `corregimiento` VALUES (574, 'Hornito', 93);
INSERT INTO `corregimiento` VALUES (575, 'Los Angeles', 93);
INSERT INTO `corregimiento` VALUES (576, 'Paja de Sombrero', 93);
INSERT INTO `corregimiento` VALUES (577, 'Rincón', 93);
INSERT INTO `corregimiento` VALUES (578, 'El Nancito', 94);
INSERT INTO `corregimiento` VALUES (579, 'El Porvenir', 94);
INSERT INTO `corregimiento` VALUES (580, 'El Puerto', 94);
INSERT INTO `corregimiento` VALUES (581, 'Remedios', 94);
INSERT INTO `corregimiento` VALUES (582, 'Santa Lucía', 94);
INSERT INTO `corregimiento` VALUES (583, 'Breñón', 95);
INSERT INTO `corregimiento` VALUES (584, 'Cañas Gordas', 95);
INSERT INTO `corregimiento` VALUES (585, 'Dominical', 95);
INSERT INTO `corregimiento` VALUES (586, 'Monte Lirio', 95);
INSERT INTO `corregimiento` VALUES (587, 'Plaza de Caisán', 95);
INSERT INTO `corregimiento` VALUES (588, 'Río Sereno', 95);
INSERT INTO `corregimiento` VALUES (589, 'Santa Cruz', 95);
INSERT INTO `corregimiento` VALUES (590, 'Santa Clara', 95);
INSERT INTO `corregimiento` VALUES (591, 'Las Lajas', 96);
INSERT INTO `corregimiento` VALUES (592, 'Lajas Adentro', 96);
INSERT INTO `corregimiento` VALUES (593, 'Juay', 96);
INSERT INTO `corregimiento` VALUES (594, 'San Félix', 96);
INSERT INTO `corregimiento` VALUES (595, 'Santa Cruz', 96);
INSERT INTO `corregimiento` VALUES (596, 'Boca Chica', 97);
INSERT INTO `corregimiento` VALUES (597, 'Boca del Monte', 97);
INSERT INTO `corregimiento` VALUES (598, 'Horconcitos', 97);
INSERT INTO `corregimiento` VALUES (599, 'San Juan', 97);
INSERT INTO `corregimiento` VALUES (600, 'San Lorenzo', 97);
INSERT INTO `corregimiento` VALUES (601, 'Volcán', 98);
INSERT INTO `corregimiento` VALUES (602, 'Cerro Punta', 98);
INSERT INTO `corregimiento` VALUES (603, 'Cuesta de Piedra', 98);
INSERT INTO `corregimiento` VALUES (604, 'Nueva California', 98);
INSERT INTO `corregimiento` VALUES (605, 'Paso Ancho', 98);
INSERT INTO `corregimiento` VALUES (606, 'Bella Vista', 99);
INSERT INTO `corregimiento` VALUES (607, 'Cerro Viejo', 99);
INSERT INTO `corregimiento` VALUES (608, 'El Cristo', 99);
INSERT INTO `corregimiento` VALUES (609, 'Justo Fidel Palacios', 99);
INSERT INTO `corregimiento` VALUES (610, 'Lajas de Tolé', 99);
INSERT INTO `corregimiento` VALUES (611, 'Potrero de Caña', 99);
INSERT INTO `corregimiento` VALUES (612, 'Quebrada de Piedra', 99);
INSERT INTO `corregimiento` VALUES (613, 'Tolé', 99);
INSERT INTO `corregimiento` VALUES (614, 'Veladero', 99);
INSERT INTO `corregimiento` VALUES (615, 'Aguadulce', 100);
INSERT INTO `corregimiento` VALUES (616, 'Barrios Unidos', 100);
INSERT INTO `corregimiento` VALUES (617, 'El Cristo', 100);
INSERT INTO `corregimiento` VALUES (618, 'El Roble', 100);
INSERT INTO `corregimiento` VALUES (619, 'El Hato de San Juan de Dios', 100);
INSERT INTO `corregimiento` VALUES (620, 'Pocrí', 100);
INSERT INTO `corregimiento` VALUES (621, 'Pueblos Unidos', 100);
INSERT INTO `corregimiento` VALUES (622, 'Virgen del Carmen', 100);
INSERT INTO `corregimiento` VALUES (623, 'Antón', 101);
INSERT INTO `corregimiento` VALUES (624, 'Caballero', 101);
INSERT INTO `corregimiento` VALUES (625, 'Cabuya', 101);
INSERT INTO `corregimiento` VALUES (626, 'El Chirú', 101);
INSERT INTO `corregimiento` VALUES (627, 'El Retiro', 101);
INSERT INTO `corregimiento` VALUES (628, 'El Valle', 101);
INSERT INTO `corregimiento` VALUES (629, 'Juan Díaz', 101);
INSERT INTO `corregimiento` VALUES (630, 'Río Hato', 101);
INSERT INTO `corregimiento` VALUES (631, 'San Juan de Dios', 101);
INSERT INTO `corregimiento` VALUES (632, 'Santa Rita', 101);
INSERT INTO `corregimiento` VALUES (633, 'El Harino', 102);
INSERT INTO `corregimiento` VALUES (634, 'El Potrero', 102);
INSERT INTO `corregimiento` VALUES (635, 'La Pintada', 102);
INSERT INTO `corregimiento` VALUES (636, 'Las Lomas', 102);
INSERT INTO `corregimiento` VALUES (637, 'Llano Grande', 102);
INSERT INTO `corregimiento` VALUES (638, 'Piedras Gordas', 102);
INSERT INTO `corregimiento` VALUES (639, 'Llano Norte', 102);
INSERT INTO `corregimiento` VALUES (640, 'Capellanía', 103);
INSERT INTO `corregimiento` VALUES (641, 'El Caño', 103);
INSERT INTO `corregimiento` VALUES (642, 'Guzmán', 103);
INSERT INTO `corregimiento` VALUES (643, 'Las Huacas', 103);
INSERT INTO `corregimiento` VALUES (644, 'Natá', 103);
INSERT INTO `corregimiento` VALUES (645, 'Toza', 103);
INSERT INTO `corregimiento` VALUES (646, 'Villarreal', 103);
INSERT INTO `corregimiento` VALUES (647, 'El Copé', 104);
INSERT INTO `corregimiento` VALUES (648, 'El Palmar', 104);
INSERT INTO `corregimiento` VALUES (649, 'El Picacho', 104);
INSERT INTO `corregimiento` VALUES (650, 'La Pava', 104);
INSERT INTO `corregimiento` VALUES (651, 'Olá', 104);
INSERT INTO `corregimiento` VALUES (652, 'Cañaveral', 105);
INSERT INTO `corregimiento` VALUES (653, 'Coclé', 105);
INSERT INTO `corregimiento` VALUES (654, 'Chiguirí Arriba', 105);
INSERT INTO `corregimiento` VALUES (655, 'El Coco', 105);
INSERT INTO `corregimiento` VALUES (656, 'Pajonal', 105);
INSERT INTO `corregimiento` VALUES (657, 'Penonomé', 105);
INSERT INTO `corregimiento` VALUES (658, 'Río Grande', 105);
INSERT INTO `corregimiento` VALUES (659, 'Río Indio', 105);
INSERT INTO `corregimiento` VALUES (660, 'Toabré', 105);
INSERT INTO `corregimiento` VALUES (661, 'Tulú', 105);
INSERT INTO `corregimiento` VALUES (662, 'Barrio Norte', 105);
INSERT INTO `corregimiento` VALUES (663, 'Barrio Sur', 106);
INSERT INTO `corregimiento` VALUES (664, 'Buena Vista', 106);
INSERT INTO `corregimiento` VALUES (665, 'Cativá', 106);
INSERT INTO `corregimiento` VALUES (666, 'Ciricito', 106);
INSERT INTO `corregimiento` VALUES (667, 'Cristóbal', 106);
INSERT INTO `corregimiento` VALUES (668, 'Cristobal Este', 106);
INSERT INTO `corregimiento` VALUES (669, 'Escobal', 106);
INSERT INTO `corregimiento` VALUES (670, 'Limón', 106);
INSERT INTO `corregimiento` VALUES (671, 'Nueva Providencia', 106);
INSERT INTO `corregimiento` VALUES (672, 'Puerto Pilón', 106);
INSERT INTO `corregimiento` VALUES (673, 'Sabanitas', 106);
INSERT INTO `corregimiento` VALUES (674, 'Salamanca', 106);
INSERT INTO `corregimiento` VALUES (675, 'San Juan', 106);
INSERT INTO `corregimiento` VALUES (676, 'Santa Rosa', 106);
INSERT INTO `corregimiento` VALUES (677, 'Achiote', 106);
INSERT INTO `corregimiento` VALUES (678, 'El Guabo', 107);
INSERT INTO `corregimiento` VALUES (679, 'La Encantada', 107);
INSERT INTO `corregimiento` VALUES (680, 'Nuevo Chagres', 107);
INSERT INTO `corregimiento` VALUES (681, 'Palmas Bellas', 107);
INSERT INTO `corregimiento` VALUES (682, 'Piña', 107);
INSERT INTO `corregimiento` VALUES (683, 'Salud', 107);
INSERT INTO `corregimiento` VALUES (684, 'Coclé del Norte', 107);
INSERT INTO `corregimiento` VALUES (685, 'El Guásimo', 108);
INSERT INTO `corregimiento` VALUES (686, 'Gobea', 108);
INSERT INTO `corregimiento` VALUES (687, 'Miguel de la Borda', 108);
INSERT INTO `corregimiento` VALUES (688, 'Río Indio', 108);
INSERT INTO `corregimiento` VALUES (689, 'Cacique', 108);
INSERT INTO `corregimiento` VALUES (690, 'Garrote', 109);
INSERT INTO `corregimiento` VALUES (691, 'Isla Grande', 109);
INSERT INTO `corregimiento` VALUES (692, 'María Chiquita', 109);
INSERT INTO `corregimiento` VALUES (693, 'Portobelo', 109);
INSERT INTO `corregimiento` VALUES (694, 'Cuango', 109);
INSERT INTO `corregimiento` VALUES (695, 'Miramar', 110);
INSERT INTO `corregimiento` VALUES (696, 'Nombre de Dios', 110);
INSERT INTO `corregimiento` VALUES (697, 'Palenque', 110);
INSERT INTO `corregimiento` VALUES (698, 'Palmira', 110);
INSERT INTO `corregimiento` VALUES (699, 'Playa Chiquita', 110);
INSERT INTO `corregimiento` VALUES (700, 'Santa Isabel', 110);
INSERT INTO `corregimiento` VALUES (701, 'Viento Frío', 110);
INSERT INTO `corregimiento` VALUES (702, 'San José del General', 110);
INSERT INTO `corregimiento` VALUES (703, 'San Juan de Turbe', 111);
INSERT INTO `corregimiento` VALUES (704, 'Nueva Esperanza', 111);
INSERT INTO `corregimiento` VALUES (705, 'Camogantí', 111);
INSERT INTO `corregimiento` VALUES (706, 'Chepigana', 112);
INSERT INTO `corregimiento` VALUES (707, 'Garachiné', 112);
INSERT INTO `corregimiento` VALUES (708, 'Jaqué', 112);
INSERT INTO `corregimiento` VALUES (709, 'La Palma', 112);
INSERT INTO `corregimiento` VALUES (710, 'Puerto Piña', 112);
INSERT INTO `corregimiento` VALUES (711, 'Sambú', 112);
INSERT INTO `corregimiento` VALUES (712, 'Setegantí', 112);
INSERT INTO `corregimiento` VALUES (713, 'Taimatí', 112);
INSERT INTO `corregimiento` VALUES (714, 'Tucutí', 112);
INSERT INTO `corregimiento` VALUES (715, 'Boca de Cupe', 112);
INSERT INTO `corregimiento` VALUES (716, 'El Real de Santa María', 113);
INSERT INTO `corregimiento` VALUES (717, 'Metetí', 113);
INSERT INTO `corregimiento` VALUES (718, 'Paya', 113);
INSERT INTO `corregimiento` VALUES (719, 'Pinogana', 113);
INSERT INTO `corregimiento` VALUES (720, 'Púcuro', 113);
INSERT INTO `corregimiento` VALUES (721, 'Yape', 113);
INSERT INTO `corregimiento` VALUES (722, 'Yaviza', 113);
INSERT INTO `corregimiento` VALUES (723, 'Agua Fría', 113);
INSERT INTO `corregimiento` VALUES (724, 'Cucunatí', 114);
INSERT INTO `corregimiento` VALUES (725, 'Río Congo', 114);
INSERT INTO `corregimiento` VALUES (726, 'Río Congo Arriba', 114);
INSERT INTO `corregimiento` VALUES (727, 'Río Iglesias', 114);
INSERT INTO `corregimiento` VALUES (728, 'Santa Fe', 114);
INSERT INTO `corregimiento` VALUES (729, 'Zapallal', 114);
INSERT INTO `corregimiento` VALUES (730, 'Chitré', 114);
INSERT INTO `corregimiento` VALUES (731, 'La Arena', 115);
INSERT INTO `corregimiento` VALUES (732, 'Llano Bonito', 115);
INSERT INTO `corregimiento` VALUES (733, 'San Juan Bautista', 115);
INSERT INTO `corregimiento` VALUES (734, 'Monagrillo', 115);
INSERT INTO `corregimiento` VALUES (735, 'Chepo', 115);
INSERT INTO `corregimiento` VALUES (736, 'Chumical', 116);
INSERT INTO `corregimiento` VALUES (737, 'El Toro', 116);
INSERT INTO `corregimiento` VALUES (738, 'Las Minas', 116);
INSERT INTO `corregimiento` VALUES (739, 'Leones', 116);
INSERT INTO `corregimiento` VALUES (740, 'Quebrada del Rosario', 116);
INSERT INTO `corregimiento` VALUES (741, 'Quebrada El Ciprián', 116);
INSERT INTO `corregimiento` VALUES (742, 'El Capurí', 116);
INSERT INTO `corregimiento` VALUES (743, 'El Calabacito', 117);
INSERT INTO `corregimiento` VALUES (744, 'El Cedro', 117);
INSERT INTO `corregimiento` VALUES (745, 'La Arena', 117);
INSERT INTO `corregimiento` VALUES (746, 'La Pitaloza', 117);
INSERT INTO `corregimiento` VALUES (747, 'Las Llanas', 117);
INSERT INTO `corregimiento` VALUES (748, 'Los Cerritos', 117);
INSERT INTO `corregimiento` VALUES (749, 'Los Cerros de Paja', 117);
INSERT INTO `corregimiento` VALUES (750, 'Los Pozos', 117);
INSERT INTO `corregimiento` VALUES (751, 'Cerro Largo', 117);
INSERT INTO `corregimiento` VALUES (752, 'El Tijera', 118);
INSERT INTO `corregimiento` VALUES (753, 'Entradero del Castillo', 118);
INSERT INTO `corregimiento` VALUES (754, 'Los Llanos', 118);
INSERT INTO `corregimiento` VALUES (755, 'Llano Grande', 118);
INSERT INTO `corregimiento` VALUES (756, 'Menchaca', 118);
INSERT INTO `corregimiento` VALUES (757, 'Peñas Chatas', 118);
INSERT INTO `corregimiento` VALUES (758, 'Ocú', 118);
INSERT INTO `corregimiento` VALUES (759, 'Cabuya', 118);
INSERT INTO `corregimiento` VALUES (760, 'Los Castillos', 119);
INSERT INTO `corregimiento` VALUES (761, 'Llano de la Cruz', 119);
INSERT INTO `corregimiento` VALUES (762, 'París', 119);
INSERT INTO `corregimiento` VALUES (763, 'Parita', 119);
INSERT INTO `corregimiento` VALUES (764, 'Portobelillo', 119);
INSERT INTO `corregimiento` VALUES (765, 'Potuga', 119);
INSERT INTO `corregimiento` VALUES (766, 'El Barrero', 119);
INSERT INTO `corregimiento` VALUES (767, 'El Pedregoso', 120);
INSERT INTO `corregimiento` VALUES (768, 'El Ciruelo', 120);
INSERT INTO `corregimiento` VALUES (769, 'El Pájaro', 120);
INSERT INTO `corregimiento` VALUES (770, 'Las Cabras', 120);
INSERT INTO `corregimiento` VALUES (771, 'Pesé', 120);
INSERT INTO `corregimiento` VALUES (772, 'Rincón Hondo', 120);
INSERT INTO `corregimiento` VALUES (773, 'Sabanagrande', 120);
INSERT INTO `corregimiento` VALUES (774, 'Chupampa', 120);
INSERT INTO `corregimiento` VALUES (775, 'El Rincón', 121);
INSERT INTO `corregimiento` VALUES (776, 'El Limón', 121);
INSERT INTO `corregimiento` VALUES (777, 'Los Canelos', 121);
INSERT INTO `corregimiento` VALUES (778, 'Santa María', 121);
INSERT INTO `corregimiento` VALUES (779, 'El Espinal', 121);
INSERT INTO `corregimiento` VALUES (780, 'El Hato', 122);
INSERT INTO `corregimiento` VALUES (781, 'El Macano', 122);
INSERT INTO `corregimiento` VALUES (782, 'Guararé', 122);
INSERT INTO `corregimiento` VALUES (783, 'Guararé Arriba', 122);
INSERT INTO `corregimiento` VALUES (784, 'La Enea', 122);
INSERT INTO `corregimiento` VALUES (785, 'La Pasera', 122);
INSERT INTO `corregimiento` VALUES (786, 'Las Trancas', 122);
INSERT INTO `corregimiento` VALUES (787, 'Llano Abajo', 122);
INSERT INTO `corregimiento` VALUES (788, 'Perales', 122);
INSERT INTO `corregimiento` VALUES (789, 'Bajo Corral', 122);
INSERT INTO `corregimiento` VALUES (790, 'Bayano', 123);
INSERT INTO `corregimiento` VALUES (791, 'El Carate', 123);
INSERT INTO `corregimiento` VALUES (792, 'El Cocal', 123);
INSERT INTO `corregimiento` VALUES (793, 'El Manantial', 123);
INSERT INTO `corregimiento` VALUES (794, 'El Muñoz', 123);
INSERT INTO `corregimiento` VALUES (795, 'El Pedregoso', 123);
INSERT INTO `corregimiento` VALUES (796, 'El Sesteadero', 123);
INSERT INTO `corregimiento` VALUES (797, 'La Laja', 123);
INSERT INTO `corregimiento` VALUES (798, 'La Miel', 123);
INSERT INTO `corregimiento` VALUES (799, 'La Palma', 123);
INSERT INTO `corregimiento` VALUES (800, 'La Tiza', 123);
INSERT INTO `corregimiento` VALUES (801, 'Las Palmitas', 123);
INSERT INTO `corregimiento` VALUES (802, 'Las Tablas Abajo', 123);
INSERT INTO `corregimiento` VALUES (803, 'Nuario', 123);
INSERT INTO `corregimiento` VALUES (804, 'Palmira', 123);
INSERT INTO `corregimiento` VALUES (805, 'Peña Blanca', 123);
INSERT INTO `corregimiento` VALUES (806, 'Río Hondo', 123);
INSERT INTO `corregimiento` VALUES (807, 'San José', 123);
INSERT INTO `corregimiento` VALUES (808, 'San Miguel', 123);
INSERT INTO `corregimiento` VALUES (809, 'Las Tablas', 123);
INSERT INTO `corregimiento` VALUES (810, 'Santo Domingo', 123);
INSERT INTO `corregimiento` VALUES (811, 'Valle Rico', 123);
INSERT INTO `corregimiento` VALUES (812, 'Vallerriquito', 123);
INSERT INTO `corregimiento` VALUES (813, 'El Ejido', 123);
INSERT INTO `corregimiento` VALUES (814, 'El Guásimo', 124);
INSERT INTO `corregimiento` VALUES (815, 'La Colorada', 124);
INSERT INTO `corregimiento` VALUES (816, 'La Espigadilla', 124);
INSERT INTO `corregimiento` VALUES (817, 'La Villa de Los Santos', 124);
INSERT INTO `corregimiento` VALUES (818, 'Las Cruces', 124);
INSERT INTO `corregimiento` VALUES (819, 'Las Guabas', 124);
INSERT INTO `corregimiento` VALUES (820, 'Los Ángeles', 124);
INSERT INTO `corregimiento` VALUES (821, 'Los Olivos', 124);
INSERT INTO `corregimiento` VALUES (822, 'Llano Largo', 124);
INSERT INTO `corregimiento` VALUES (823, 'Sabanagrande', 124);
INSERT INTO `corregimiento` VALUES (824, 'Santa Ana', 124);
INSERT INTO `corregimiento` VALUES (825, 'Tres Quebradas', 124);
INSERT INTO `corregimiento` VALUES (826, 'Villa Lourdes', 124);
INSERT INTO `corregimiento` VALUES (827, 'Agua Buena', 124);
INSERT INTO `corregimiento` VALUES (828, 'Bahía Honda', 124);
INSERT INTO `corregimiento` VALUES (829, 'Bajos de Güera', 125);
INSERT INTO `corregimiento` VALUES (830, 'Corozal', 125);
INSERT INTO `corregimiento` VALUES (831, 'Chupá', 125);
INSERT INTO `corregimiento` VALUES (832, 'El Cedro', 125);
INSERT INTO `corregimiento` VALUES (833, 'Espino Amarillo', 125);
INSERT INTO `corregimiento` VALUES (834, 'La Mesa', 125);
INSERT INTO `corregimiento` VALUES (835, 'Las Palmas', 125);
INSERT INTO `corregimiento` VALUES (836, 'Llano de Piedras', 125);
INSERT INTO `corregimiento` VALUES (837, 'Macaracas', 125);
INSERT INTO `corregimiento` VALUES (838, 'Mogollón', 125);
INSERT INTO `corregimiento` VALUES (839, 'Los Asientos', 125);
INSERT INTO `corregimiento` VALUES (840, 'Mariabé', 126);
INSERT INTO `corregimiento` VALUES (841, 'Oria Arriba', 126);
INSERT INTO `corregimiento` VALUES (842, 'Pedasí', 126);
INSERT INTO `corregimiento` VALUES (843, 'Purio', 126);
INSERT INTO `corregimiento` VALUES (844, 'El Cañafístulo', 126);
INSERT INTO `corregimiento` VALUES (845, 'Lajamina', 127);
INSERT INTO `corregimiento` VALUES (846, 'Paraíso', 127);
INSERT INTO `corregimiento` VALUES (847, 'Paritilla', 127);
INSERT INTO `corregimiento` VALUES (848, 'Pocrí', 127);
INSERT INTO `corregimiento` VALUES (849, 'Altos de Güera', 127);
INSERT INTO `corregimiento` VALUES (850, 'Cambutal', 128);
INSERT INTO `corregimiento` VALUES (851, 'Cañas', 128);
INSERT INTO `corregimiento` VALUES (852, 'El Bebedero', 128);
INSERT INTO `corregimiento` VALUES (853, 'El Cacao', 128);
INSERT INTO `corregimiento` VALUES (854, 'El Cortezo', 128);
INSERT INTO `corregimiento` VALUES (855, 'Flores', 128);
INSERT INTO `corregimiento` VALUES (856, 'Guánico', 128);
INSERT INTO `corregimiento` VALUES (857, 'Isla de Cañas', 128);
INSERT INTO `corregimiento` VALUES (858, 'La Tronosa', 128);
INSERT INTO `corregimiento` VALUES (859, 'Tonosí', 128);
INSERT INTO `corregimiento` VALUES (860, 'La Ensenada', 128);
INSERT INTO `corregimiento` VALUES (861, 'La Esmeralda', 129);
INSERT INTO `corregimiento` VALUES (862, 'La Guinea', 129);
INSERT INTO `corregimiento` VALUES (863, 'Pedro González', 129);
INSERT INTO `corregimiento` VALUES (864, 'Saboga', 129);
INSERT INTO `corregimiento` VALUES (865, 'San Miguel', 129);
INSERT INTO `corregimiento` VALUES (866, 'Cañita', 129);
INSERT INTO `corregimiento` VALUES (867, 'Chepillo', 130);
INSERT INTO `corregimiento` VALUES (868, 'El Llano', 130);
INSERT INTO `corregimiento` VALUES (869, 'Las Margaritas', 130);
INSERT INTO `corregimiento` VALUES (870, 'Chepo', 130);
INSERT INTO `corregimiento` VALUES (871, 'Santa Cruz de Chinina', 130);
INSERT INTO `corregimiento` VALUES (872, 'Tortí', 130);
INSERT INTO `corregimiento` VALUES (873, 'Brujas', 130);
INSERT INTO `corregimiento` VALUES (874, 'Chimán', 131);
INSERT INTO `corregimiento` VALUES (875, 'Gonzalo Vásquez', 131);
INSERT INTO `corregimiento` VALUES (876, 'Pásiga', 131);
INSERT INTO `corregimiento` VALUES (877, 'Unión Santeña', 131);
INSERT INTO `corregimiento` VALUES (878, '24 de Diciembre', 131);
INSERT INTO `corregimiento` VALUES (879, 'Alcalde Díaz', 132);
INSERT INTO `corregimiento` VALUES (880, 'Ancón', 132);
INSERT INTO `corregimiento` VALUES (881, 'Betania', 132);
INSERT INTO `corregimiento` VALUES (882, 'Bella Vista', 132);
INSERT INTO `corregimiento` VALUES (883, 'Calidonia', 132);
INSERT INTO `corregimiento` VALUES (884, 'Caimitillo', 132);
INSERT INTO `corregimiento` VALUES (885, 'Chilibre', 132);
INSERT INTO `corregimiento` VALUES (886, 'Curundú', 132);
INSERT INTO `corregimiento` VALUES (887, 'Don Bosco', 132);
INSERT INTO `corregimiento` VALUES (888, 'El Chorrillo', 132);
INSERT INTO `corregimiento` VALUES (889, 'Ernesto Córdoba Campos', 132);
INSERT INTO `corregimiento` VALUES (890, 'Juan Díaz', 132);
INSERT INTO `corregimiento` VALUES (891, 'Las Cumbres', 132);
INSERT INTO `corregimiento` VALUES (892, 'Las Garzas', 132);
INSERT INTO `corregimiento` VALUES (893, 'Las Mañanitas', 132);
INSERT INTO `corregimiento` VALUES (894, 'Pacora', 132);
INSERT INTO `corregimiento` VALUES (895, 'Parque Lefevre', 132);
INSERT INTO `corregimiento` VALUES (896, 'Pedregal', 132);
INSERT INTO `corregimiento` VALUES (897, 'Pueblo Nuevo', 132);
INSERT INTO `corregimiento` VALUES (898, 'Río Abajo', 132);
INSERT INTO `corregimiento` VALUES (899, 'San Felipe', 132);
INSERT INTO `corregimiento` VALUES (900, 'San Francisco', 132);
INSERT INTO `corregimiento` VALUES (901, 'San Martín', 132);
INSERT INTO `corregimiento` VALUES (902, 'Santa Ana', 132);
INSERT INTO `corregimiento` VALUES (903, 'Tocumen', 132);
INSERT INTO `corregimiento` VALUES (904, 'Amelia Denis de Icaza', 132);
INSERT INTO `corregimiento` VALUES (905, 'Arnulfo Arias', 133);
INSERT INTO `corregimiento` VALUES (906, 'Belisario Frías', 133);
INSERT INTO `corregimiento` VALUES (907, 'Belisario Porras', 133);
INSERT INTO `corregimiento` VALUES (908, 'José Domingo Espinar', 133);
INSERT INTO `corregimiento` VALUES (909, 'Mateo Iturralde', 133);
INSERT INTO `corregimiento` VALUES (910, 'Omar Torrijos', 133);
INSERT INTO `corregimiento` VALUES (911, 'Rufina Alfaro', 133);
INSERT INTO `corregimiento` VALUES (912, 'Victoriano Lorenzo', 133);
INSERT INTO `corregimiento` VALUES (913, 'Otoque Occidente', 133);
INSERT INTO `corregimiento` VALUES (914, 'Otoque Oriente', 134);
INSERT INTO `corregimiento` VALUES (915, 'Taboga', 134);
INSERT INTO `corregimiento` VALUES (916, 'Arraiján', 134);
INSERT INTO `corregimiento` VALUES (917, 'Burunga', 135);
INSERT INTO `corregimiento` VALUES (918, 'Cerro Silvestre', 135);
INSERT INTO `corregimiento` VALUES (919, 'Juan Demóstenes Arosemena', 135);
INSERT INTO `corregimiento` VALUES (920, 'Nuevo Emperador', 135);
INSERT INTO `corregimiento` VALUES (921, 'Santa Clara', 135);
INSERT INTO `corregimiento` VALUES (922, 'Veracruz', 135);
INSERT INTO `corregimiento` VALUES (923, 'Vista Alegre', 135);
INSERT INTO `corregimiento` VALUES (924, 'Caimito', 135);
INSERT INTO `corregimiento` VALUES (925, 'Campana', 136);
INSERT INTO `corregimiento` VALUES (926, 'Capira', 136);
INSERT INTO `corregimiento` VALUES (927, 'Cermeño', 136);
INSERT INTO `corregimiento` VALUES (928, 'Cirí de Los Sotos', 136);
INSERT INTO `corregimiento` VALUES (929, 'Cirí Grande', 136);
INSERT INTO `corregimiento` VALUES (930, 'El Cacao', 136);
INSERT INTO `corregimiento` VALUES (931, 'La Trinidad', 136);
INSERT INTO `corregimiento` VALUES (932, 'Las Ollas Arriba', 136);
INSERT INTO `corregimiento` VALUES (933, 'Lídice', 136);
INSERT INTO `corregimiento` VALUES (934, 'Villa Carmen', 136);
INSERT INTO `corregimiento` VALUES (935, 'Villa Rosario', 136);
INSERT INTO `corregimiento` VALUES (936, 'Santa Rosa', 136);
INSERT INTO `corregimiento` VALUES (937, 'Bejuco', 136);
INSERT INTO `corregimiento` VALUES (938, 'Buenos Aires', 137);
INSERT INTO `corregimiento` VALUES (939, 'Cabuya', 137);
INSERT INTO `corregimiento` VALUES (940, 'Chame', 137);
INSERT INTO `corregimiento` VALUES (941, 'Chicá', 137);
INSERT INTO `corregimiento` VALUES (942, 'El Líbano', 137);
INSERT INTO `corregimiento` VALUES (943, 'Las Lajas', 137);
INSERT INTO `corregimiento` VALUES (944, 'Nueva Gorgona', 137);
INSERT INTO `corregimiento` VALUES (945, 'Punta Chame', 137);
INSERT INTO `corregimiento` VALUES (946, 'Sajalices', 137);
INSERT INTO `corregimiento` VALUES (947, 'Sorá', 137);
INSERT INTO `corregimiento` VALUES (948, 'Amador', 137);
INSERT INTO `corregimiento` VALUES (949, 'Arosemena', 138);
INSERT INTO `corregimiento` VALUES (950, 'Barrio Balboa', 138);
INSERT INTO `corregimiento` VALUES (951, 'Barrio Colón', 138);
INSERT INTO `corregimiento` VALUES (952, 'El Arado', 138);
INSERT INTO `corregimiento` VALUES (953, 'El Coco', 138);
INSERT INTO `corregimiento` VALUES (954, 'Feuillet', 138);
INSERT INTO `corregimiento` VALUES (955, 'Guadalupe', 138);
INSERT INTO `corregimiento` VALUES (956, 'Herrera', 138);
INSERT INTO `corregimiento` VALUES (957, 'Hurtado', 138);
INSERT INTO `corregimiento` VALUES (958, 'Iturralde', 138);
INSERT INTO `corregimiento` VALUES (959, 'La Represa', 138);
INSERT INTO `corregimiento` VALUES (960, 'Los Díaz', 138);
INSERT INTO `corregimiento` VALUES (961, 'Mendoza', 138);
INSERT INTO `corregimiento` VALUES (962, 'Obaldía', 138);
INSERT INTO `corregimiento` VALUES (963, 'Playa Leona', 138);
INSERT INTO `corregimiento` VALUES (964, 'Puerto Caimito', 138);
INSERT INTO `corregimiento` VALUES (965, 'Santa Rita', 138);
INSERT INTO `corregimiento` VALUES (966, 'El Espino', 138);
INSERT INTO `corregimiento` VALUES (967, 'El Higo', 139);
INSERT INTO `corregimiento` VALUES (968, 'Guayabito', 139);
INSERT INTO `corregimiento` VALUES (969, 'La Ermita', 139);
INSERT INTO `corregimiento` VALUES (970, 'La Laguna', 139);
INSERT INTO `corregimiento` VALUES (971, 'Las Uvas', 139);
INSERT INTO `corregimiento` VALUES (972, 'Los Llanitos', 139);
INSERT INTO `corregimiento` VALUES (973, 'San Carlos', 139);
INSERT INTO `corregimiento` VALUES (974, 'San José', 139);
INSERT INTO `corregimiento` VALUES (975, 'Atalaya', 139);
INSERT INTO `corregimiento` VALUES (976, 'El Barrito', 140);
INSERT INTO `corregimiento` VALUES (977, 'La Carrillo', 140);
INSERT INTO `corregimiento` VALUES (978, 'La Montañuela', 140);
INSERT INTO `corregimiento` VALUES (979, 'San Antonio', 140);
INSERT INTO `corregimiento` VALUES (980, 'Barnizal', 140);
INSERT INTO `corregimiento` VALUES (981, 'Calobre', 141);
INSERT INTO `corregimiento` VALUES (982, 'Chitra', 141);
INSERT INTO `corregimiento` VALUES (983, 'El Cocla', 141);
INSERT INTO `corregimiento` VALUES (984, 'El Potrero', 141);
INSERT INTO `corregimiento` VALUES (985, 'La Laguna', 141);
INSERT INTO `corregimiento` VALUES (986, 'La Raya de Calobre', 141);
INSERT INTO `corregimiento` VALUES (987, 'La Tetilla', 141);
INSERT INTO `corregimiento` VALUES (988, 'La Yeguada', 141);
INSERT INTO `corregimiento` VALUES (989, 'Las Guías', 141);
INSERT INTO `corregimiento` VALUES (990, 'Monjarás', 141);
INSERT INTO `corregimiento` VALUES (991, 'San José', 141);
INSERT INTO `corregimiento` VALUES (992, 'Cañazas', 141);
INSERT INTO `corregimiento` VALUES (993, 'Cerro de Plata', 142);
INSERT INTO `corregimiento` VALUES (994, 'El Aromillo', 142);
INSERT INTO `corregimiento` VALUES (995, 'El Picador', 142);
INSERT INTO `corregimiento` VALUES (996, 'Las Cruces', 142);
INSERT INTO `corregimiento` VALUES (997, 'Los Valles', 142);
INSERT INTO `corregimiento` VALUES (998, 'San José', 142);
INSERT INTO `corregimiento` VALUES (999, 'San Marcelo', 142);
INSERT INTO `corregimiento` VALUES (1000, 'Bisvalles', 142);
INSERT INTO `corregimiento` VALUES (1001, 'Boró', 143);
INSERT INTO `corregimiento` VALUES (1002, 'El Higo', 143);
INSERT INTO `corregimiento` VALUES (1003, 'La Mesa', 143);
INSERT INTO `corregimiento` VALUES (1004, 'Los Milagros', 143);
INSERT INTO `corregimiento` VALUES (1005, 'Llano Grande', 143);
INSERT INTO `corregimiento` VALUES (1006, 'San Bartolo', 143);
INSERT INTO `corregimiento` VALUES (1007, 'Cerro de Casa', 143);
INSERT INTO `corregimiento` VALUES (1008, 'Corozal', 144);
INSERT INTO `corregimiento` VALUES (1009, 'El María', 144);
INSERT INTO `corregimiento` VALUES (1010, 'El Prado', 144);
INSERT INTO `corregimiento` VALUES (1011, 'El Rincón', 144);
INSERT INTO `corregimiento` VALUES (1012, 'Las Palmas', 144);
INSERT INTO `corregimiento` VALUES (1013, 'Lolá', 144);
INSERT INTO `corregimiento` VALUES (1014, 'Manuel E. Amador Terrero', 144);
INSERT INTO `corregimiento` VALUES (1015, 'Pixvae', 144);
INSERT INTO `corregimiento` VALUES (1016, 'Puerto Vidal', 144);
INSERT INTO `corregimiento` VALUES (1017, 'San Martín de Porres', 144);
INSERT INTO `corregimiento` VALUES (1018, 'Viguí', 144);
INSERT INTO `corregimiento` VALUES (1019, 'Zapotillo', 144);
INSERT INTO `corregimiento` VALUES (1020, 'Arenas', 144);
INSERT INTO `corregimiento` VALUES (1021, 'El Cacao', 145);
INSERT INTO `corregimiento` VALUES (1022, 'Mariato', 145);
INSERT INTO `corregimiento` VALUES (1023, 'Quebro', 145);
INSERT INTO `corregimiento` VALUES (1024, 'Tebario', 145);
INSERT INTO `corregimiento` VALUES (1025, 'Cébaco', 145);
INSERT INTO `corregimiento` VALUES (1026, 'Costa Hermosa', 146);
INSERT INTO `corregimiento` VALUES (1027, 'Gobernadora', 146);
INSERT INTO `corregimiento` VALUES (1028, 'La Garceana', 146);
INSERT INTO `corregimiento` VALUES (1029, 'Leones', 146);
INSERT INTO `corregimiento` VALUES (1030, 'Montijo', 146);
INSERT INTO `corregimiento` VALUES (1031, 'Pilón', 146);
INSERT INTO `corregimiento` VALUES (1032, 'Unión del Norte', 146);
INSERT INTO `corregimiento` VALUES (1033, 'Catorce de Noviembre', 146);
INSERT INTO `corregimiento` VALUES (1034, 'Río de Jesús', 147);
INSERT INTO `corregimiento` VALUES (1035, 'Las Huacas', 147);
INSERT INTO `corregimiento` VALUES (1036, 'Los Castillos', 147);
INSERT INTO `corregimiento` VALUES (1037, 'Utira', 147);
INSERT INTO `corregimiento` VALUES (1038, 'Corral Falso', 147);
INSERT INTO `corregimiento` VALUES (1039, 'Los Hatillos', 148);
INSERT INTO `corregimiento` VALUES (1040, 'Remance', 148);
INSERT INTO `corregimiento` VALUES (1041, 'San Francisco', 148);
INSERT INTO `corregimiento` VALUES (1042, 'San Juan', 148);
INSERT INTO `corregimiento` VALUES (1043, 'San José', 148);
INSERT INTO `corregimiento` VALUES (1044, 'Calovébora', 148);
INSERT INTO `corregimiento` VALUES (1045, 'El Alto', 149);
INSERT INTO `corregimiento` VALUES (1046, 'El Cuay', 149);
INSERT INTO `corregimiento` VALUES (1047, 'El Pantano', 149);
INSERT INTO `corregimiento` VALUES (1048, 'Gatuncito', 149);
INSERT INTO `corregimiento` VALUES (1049, 'Río Luis', 149);
INSERT INTO `corregimiento` VALUES (1050, 'Rubén Cantú', 149);
INSERT INTO `corregimiento` VALUES (1051, 'Santa Fe', 149);
INSERT INTO `corregimiento` VALUES (1052, 'Canto del Llano', 149);
INSERT INTO `corregimiento` VALUES (1053, 'Carlos Santana Ávila', 150);
INSERT INTO `corregimiento` VALUES (1054, 'Edwin Fábrega', 150);
INSERT INTO `corregimiento` VALUES (1055, 'La Colorada', 150);
INSERT INTO `corregimiento` VALUES (1056, 'La Peña', 150);
INSERT INTO `corregimiento` VALUES (1057, 'La Raya de Santa María', 150);
INSERT INTO `corregimiento` VALUES (1058, 'Los Algarrobos', 150);
INSERT INTO `corregimiento` VALUES (1059, 'Nuevo Santiago', 150);
INSERT INTO `corregimiento` VALUES (1060, 'Ponuga', 150);
INSERT INTO `corregimiento` VALUES (1061, 'San Martín de Porres', 150);
INSERT INTO `corregimiento` VALUES (1062, 'San Pedro del Espino', 150);
INSERT INTO `corregimiento` VALUES (1063, 'Santiago', 150);
INSERT INTO `corregimiento` VALUES (1064, 'Santiago Este', 150);
INSERT INTO `corregimiento` VALUES (1065, 'Santiago Sur', 150);
INSERT INTO `corregimiento` VALUES (1066, 'Rodrigo Luque', 150);
INSERT INTO `corregimiento` VALUES (1067, 'Urracá', 150);
INSERT INTO `corregimiento` VALUES (1068, 'Bahía Honda', 150);
INSERT INTO `corregimiento` VALUES (1069, 'Calidonia', 151);
INSERT INTO `corregimiento` VALUES (1070, 'Cativé', 151);
INSERT INTO `corregimiento` VALUES (1071, 'El Marañón', 151);
INSERT INTO `corregimiento` VALUES (1072, 'Guarumal', 151);
INSERT INTO `corregimiento` VALUES (1073, 'Hicaco', 151);
INSERT INTO `corregimiento` VALUES (1074, 'La Soledad', 151);
INSERT INTO `corregimiento` VALUES (1075, 'La Trinchera', 151);
INSERT INTO `corregimiento` VALUES (1076, 'Quebrada de Oro', 151);
INSERT INTO `corregimiento` VALUES (1077, 'Río Grande', 151);
INSERT INTO `corregimiento` VALUES (1078, 'Rodeo Viejo', 151);
INSERT INTO `corregimiento` VALUES (1079, 'Soná', 151);
COMMIT;

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
-- Records of departamento_origen
-- ----------------------------
BEGIN;
INSERT INTO `departamento_origen` VALUES (1, 'Banca Agropecuaria');
INSERT INTO `departamento_origen` VALUES (2, 'Banca Consumo');
INSERT INTO `departamento_origen` VALUES (3, ' Banca Corporativa');
INSERT INTO `departamento_origen` VALUES (4, 'Banca Empresas');
INSERT INTO `departamento_origen` VALUES (5, ' Banca Internacional');
INSERT INTO `departamento_origen` VALUES (6, 'Fideicomiso');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of direccion
-- ----------------------------
BEGIN;
INSERT INTO `direccion` VALUES (101, '204 Beer Mountains Apt. 917', '2019-01-01', 2, 14, 92, 820);
INSERT INTO `direccion` VALUES (102, '86528 Myrtis Avenue', '2019-01-01', 2, 9, 142, 918);
INSERT INTO `direccion` VALUES (103, '8991 Zackary Loop', '2019-01-01', 2, 14, 89, 486);
INSERT INTO `direccion` VALUES (104, '4719 Turcotte Roads', '2019-01-01', 2, 17, 136, 656);
INSERT INTO `direccion` VALUES (105, '907 Abbott Motorway', '2019-01-01', 2, 8, 145, 719);
INSERT INTO `direccion` VALUES (106, '60970 Orn Tunnel Apt. 938', '2019-01-01', 2, 15, 127, 539);
INSERT INTO `direccion` VALUES (107, '922 Meda Throughway', '2019-01-01', 2, 11, 131, 1041);
INSERT INTO `direccion` VALUES (108, '18696 Granville Neck Suite 669', '2019-01-01', 2, 10, 82, 1064);
INSERT INTO `direccion` VALUES (109, '3995 Lila Run', '2019-01-01', 2, 8, 104, 547);
INSERT INTO `direccion` VALUES (110, '4108 Jerad Locks Suite 386', '2019-01-01', 2, 9, 93, 860);
INSERT INTO `direccion` VALUES (111, '61476 Itzel Stream', '2019-01-01', 2, 15, 116, 898);
INSERT INTO `direccion` VALUES (112, '3229 Smith Shores', '2019-01-01', 2, 12, 94, 763);
INSERT INTO `direccion` VALUES (113, '28532 Deckow Rest', '2019-01-01', 2, 13, 130, 588);
INSERT INTO `direccion` VALUES (114, '4903 Muller Roads', '2019-01-01', 2, 13, 134, 588);
INSERT INTO `direccion` VALUES (115, '1444 Tanya Rapids', '2019-01-01', 2, 17, 126, 909);
INSERT INTO `direccion` VALUES (116, '557 Holden Greens Apt. 936', '2019-01-01', 2, 17, 117, 540);
INSERT INTO `direccion` VALUES (117, '56812 Kaylie Dam Apt. 331', '2019-01-01', 2, 8, 149, 582);
INSERT INTO `direccion` VALUES (118, '47308 Enid Rapid Suite 382', '2019-01-01', 2, 13, 84, 693);
INSERT INTO `direccion` VALUES (119, '42074 Auer Route', '2019-01-01', 2, 16, 114, 503);
INSERT INTO `direccion` VALUES (120, '08476 Cicero Fork', '2019-01-01', 2, 16, 145, 955);
INSERT INTO `direccion` VALUES (121, '5885 Kozey Spur', '2019-01-01', 2, 15, 122, 582);
INSERT INTO `direccion` VALUES (122, '243 Stroman Wells', '2019-01-01', 2, 14, 95, 770);
INSERT INTO `direccion` VALUES (123, '89879 Elsie Ferry', '2019-01-01', 2, 10, 108, 801);
INSERT INTO `direccion` VALUES (124, '4286 Cruickshank Ferry Suite 185', '2019-01-01', 2, 12, 108, 815);
INSERT INTO `direccion` VALUES (125, '23700 Jordyn Mill Suite 150', '2019-01-01', 2, 9, 87, 586);
INSERT INTO `direccion` VALUES (126, '33277 Caitlyn Island Suite 841', '2019-01-01', 2, 13, 117, 801);
INSERT INTO `direccion` VALUES (127, '501 Laurine Dale', '2019-01-01', 2, 8, 137, 849);
INSERT INTO `direccion` VALUES (128, '0674 Colton Street Suite 939', '2019-01-01', 2, 16, 119, 930);
INSERT INTO `direccion` VALUES (129, '394 Miller Divide Suite 774', '2019-01-01', 2, 11, 135, 900);
INSERT INTO `direccion` VALUES (130, '776 Laverne Road Apt. 653', '2019-01-01', 2, 16, 131, 1040);
INSERT INTO `direccion` VALUES (131, '8089 Prohaska Springs', '2019-01-01', 2, 12, 95, 631);
INSERT INTO `direccion` VALUES (132, '46275 Lea Manor Apt. 203', '2019-01-01', 2, 15, 106, 720);
INSERT INTO `direccion` VALUES (133, '65321 Janiya Key', '2019-01-01', 2, 13, 126, 834);
INSERT INTO `direccion` VALUES (134, '8234 Braeden Underpass', '2019-01-01', 2, 10, 144, 895);
INSERT INTO `direccion` VALUES (135, '644 Ruecker Ranch', '2019-01-01', 2, 12, 85, 881);
INSERT INTO `direccion` VALUES (136, '2395 Streich Squares', '2019-01-01', 2, 9, 132, 1055);
INSERT INTO `direccion` VALUES (137, '250 Ferry Drives Apt. 189', '2019-01-01', 2, 9, 135, 851);
INSERT INTO `direccion` VALUES (138, '24836 Conn Plains', '2019-01-01', 2, 16, 115, 919);
INSERT INTO `direccion` VALUES (139, '871 Johnson Mountain', '2019-01-01', 2, 8, 99, 931);
INSERT INTO `direccion` VALUES (140, '950 Alena Islands', '2019-01-01', 2, 17, 123, 585);
INSERT INTO `direccion` VALUES (141, '936 Larkin Key', '2019-01-01', 2, 10, 119, 682);
INSERT INTO `direccion` VALUES (142, '2887 Alessandra Locks', '2019-01-01', 2, 9, 121, 546);
INSERT INTO `direccion` VALUES (143, '73012 Lula Corners Suite 264', '2019-01-01', 2, 17, 116, 1048);
INSERT INTO `direccion` VALUES (144, '34217 Macejkovic Shoals', '2019-01-01', 2, 14, 146, 818);
INSERT INTO `direccion` VALUES (145, '480 Cordelia Roads', '2019-01-01', 2, 14, 95, 983);
INSERT INTO `direccion` VALUES (146, '691 Carlos Prairie Apt. 579', '2019-01-01', 2, 12, 104, 982);
INSERT INTO `direccion` VALUES (147, '7207 Tommie Course Suite 538', '2019-01-01', 2, 11, 150, 891);
INSERT INTO `direccion` VALUES (148, '5310 Corrine Light Suite 329', '2019-01-01', 2, 10, 144, 1073);
INSERT INTO `direccion` VALUES (149, '599 Macejkovic Plain', '2019-01-01', 2, 12, 95, 922);
INSERT INTO `direccion` VALUES (150, '1570 Zackary Junctions', '2019-01-01', 2, 16, 129, 818);
INSERT INTO `direccion` VALUES (151, '3868 Monte Bridge Suite 558', '2019-01-01', 2, 13, 143, 623);
INSERT INTO `direccion` VALUES (152, '2953 Cassin Station Apt. 835', '2019-01-01', 2, 10, 102, 1079);
INSERT INTO `direccion` VALUES (153, '6030 Erin Course Suite 242', '2019-01-01', 2, 15, 84, 826);
INSERT INTO `direccion` VALUES (154, '054 Stella Junction Suite 568', '2019-01-01', 2, 9, 96, 973);
INSERT INTO `direccion` VALUES (155, '67773 Kreiger Rue', '2019-01-01', 2, 10, 141, 1016);
INSERT INTO `direccion` VALUES (156, '6845 Erica Gateway', '2019-01-01', 2, 14, 98, 929);
INSERT INTO `direccion` VALUES (157, '183 Vincenzo Parkway', '2019-01-01', 2, 8, 100, 825);
INSERT INTO `direccion` VALUES (158, '03700 Garnet Summit Apt. 708', '2019-01-01', 2, 14, 109, 1036);
INSERT INTO `direccion` VALUES (159, '22280 Jacobs Valley Suite 791', '2019-01-01', 2, 10, 121, 1059);
INSERT INTO `direccion` VALUES (160, '75919 Stephan Causeway', '2019-01-01', 2, 12, 113, 1064);
INSERT INTO `direccion` VALUES (161, '37816 Botsford Walks', '2019-01-01', 2, 10, 112, 511);
INSERT INTO `direccion` VALUES (162, '317 Leonard Ridges', '2019-01-01', 2, 13, 126, 952);
INSERT INTO `direccion` VALUES (163, '408 Schuster Manors', '2019-01-01', 2, 17, 131, 643);
INSERT INTO `direccion` VALUES (164, '7277 Vaughn Squares Suite 943', '2019-01-01', 2, 10, 88, 698);
INSERT INTO `direccion` VALUES (165, '2903 Lauriane Villages', '2019-01-01', 2, 14, 137, 1027);
INSERT INTO `direccion` VALUES (166, '359 Rogahn Freeway Suite 496', '2019-01-01', 2, 12, 100, 1034);
INSERT INTO `direccion` VALUES (167, '5374 Myrtie Summit', '2019-01-01', 2, 8, 110, 628);
INSERT INTO `direccion` VALUES (168, '444 Fay Lakes Suite 695', '2019-01-01', 2, 12, 112, 886);
INSERT INTO `direccion` VALUES (169, '571 Norbert Stravenue', '2019-01-01', 2, 13, 124, 673);
INSERT INTO `direccion` VALUES (170, '75587 Jose Plains', '2019-01-01', 2, 8, 111, 514);
INSERT INTO `direccion` VALUES (171, '4179 Waters Springs Apt. 218', '2019-01-01', 2, 16, 121, 969);
INSERT INTO `direccion` VALUES (172, '096 Edmund Shoal', '2019-01-01', 2, 16, 99, 864);
INSERT INTO `direccion` VALUES (173, '39663 Cale Extensions Apt. 349', '2019-01-01', 2, 10, 87, 554);
INSERT INTO `direccion` VALUES (174, '424 Ollie Valleys', '2019-01-01', 2, 12, 91, 945);
INSERT INTO `direccion` VALUES (175, '61220 Koch Meadows', '2019-01-01', 2, 11, 105, 524);
INSERT INTO `direccion` VALUES (176, '97167 Judge Avenue', '2019-01-01', 2, 11, 125, 823);
INSERT INTO `direccion` VALUES (177, '962 Hartmann Point Apt. 491', '2019-01-01', 2, 10, 109, 917);
INSERT INTO `direccion` VALUES (178, '16052 Nikko Crest', '2019-01-01', 2, 15, 84, 768);
INSERT INTO `direccion` VALUES (179, '86850 Morgan Avenue Suite 350', '2019-01-01', 2, 9, 91, 740);
INSERT INTO `direccion` VALUES (180, '07093 Walter Light Apt. 108', '2019-01-01', 2, 13, 143, 842);
INSERT INTO `direccion` VALUES (181, '75168 Reilly Trail Suite 304', '2019-01-01', 2, 8, 107, 785);
INSERT INTO `direccion` VALUES (182, '05058 Perry Shoals', '2019-01-01', 2, 9, 96, 1065);
INSERT INTO `direccion` VALUES (183, '211 Sanford Trail Apt. 706', '2019-01-01', 2, 17, 98, 584);
INSERT INTO `direccion` VALUES (184, '27717 Dibbert Via', '2019-01-01', 2, 8, 114, 599);
INSERT INTO `direccion` VALUES (185, '250 Thompson Path', '2019-01-01', 2, 16, 108, 710);
INSERT INTO `direccion` VALUES (186, '97184 Henry Corner Apt. 821', '2019-01-01', 2, 12, 103, 741);
INSERT INTO `direccion` VALUES (187, '59038 O\'Hara Glens Suite 832', '2019-01-01', 2, 17, 129, 1019);
INSERT INTO `direccion` VALUES (188, '9641 Trever Fork Apt. 511', '2019-01-01', 2, 13, 110, 834);
INSERT INTO `direccion` VALUES (189, '8641 Noemie Estate', '2019-01-01', 2, 13, 149, 503);
INSERT INTO `direccion` VALUES (190, '026 Tod Gardens', '2019-01-01', 2, 14, 104, 1079);
INSERT INTO `direccion` VALUES (191, '8370 Jarred Estates Apt. 682', '2019-01-01', 2, 13, 96, 879);
INSERT INTO `direccion` VALUES (192, '71039 Xavier Rue Apt. 497', '2019-01-01', 2, 8, 111, 586);
INSERT INTO `direccion` VALUES (193, '82806 Davin Plaza Suite 908', '2019-01-01', 2, 9, 112, 838);
INSERT INTO `direccion` VALUES (194, '246 Julie Bridge Suite 102', '2019-01-01', 2, 9, 123, 581);
INSERT INTO `direccion` VALUES (195, '04091 Ziemann Road Apt. 987', '2019-01-01', 2, 14, 117, 617);
INSERT INTO `direccion` VALUES (196, '8006 Kylee Camp', '2019-01-01', 2, 17, 95, 1041);
INSERT INTO `direccion` VALUES (197, '6209 Reichel Road Suite 781', '2019-01-01', 2, 9, 127, 755);
INSERT INTO `direccion` VALUES (198, '25384 Abel Cliffs', '2019-01-01', 2, 9, 100, 1039);
INSERT INTO `direccion` VALUES (199, '383 Turner Centers', '2019-01-01', 2, 9, 127, 912);
INSERT INTO `direccion` VALUES (200, '9753 Labadie Mountains', '2019-01-01', 2, 10, 109, 877);
INSERT INTO `direccion` VALUES (201, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (202, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (203, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (204, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (205, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (206, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (207, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (208, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (209, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (210, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (211, 'Direccion exacta', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (212, NULL, '2019-11-09', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (213, 'Direccion exacta ....', '2019-11-09', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (214, NULL, '2019-11-09', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (215, 'Direc', '2019-11-09', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (216, NULL, '2019-11-09', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (217, NULL, '2019-11-10', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (218, NULL, '2019-11-10', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (219, NULL, '2019-11-10', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (220, NULL, '2019-11-10', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (221, 'Direccion excata', '2019-11-10', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (222, 'Direccion', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (223, 'Direccion', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (224, 'Direccion exacta', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (225, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (226, 'Direccion exacta', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (227, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (228, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (229, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (230, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (231, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (232, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (233, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (234, 'Direccion exacta ', NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (235, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (236, 'asdf', NULL, 1, 1, 12, 827);
INSERT INTO `direccion` VALUES (237, 'a', NULL, 1, 2, 21, 121);
INSERT INTO `direccion` VALUES (238, 'Itaba', NULL, 2, 9, 89, 534);
INSERT INTO `direccion` VALUES (239, 'Direccion', NULL, 1, 2, 31, 210);
INSERT INTO `direccion` VALUES (240, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (241, NULL, NULL, 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (242, NULL, '2019-12-01', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (243, NULL, '2019-12-01', 2, 8, 82, 482);
INSERT INTO `direccion` VALUES (244, NULL, '2019-12-01', 2, 9, 86, 514);
INSERT INTO `direccion` VALUES (245, NULL, '2019-12-02', 1, 5, 59, 365);
COMMIT;

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
-- Records of distrito
-- ----------------------------
BEGIN;
INSERT INTO `distrito` VALUES (1, '	San José	', 1);
INSERT INTO `distrito` VALUES (2, '	Escazú	', 1);
INSERT INTO `distrito` VALUES (3, '	Desamparados	', 1);
INSERT INTO `distrito` VALUES (4, '	Puriscal	', 1);
INSERT INTO `distrito` VALUES (5, '	Tarrazú	', 1);
INSERT INTO `distrito` VALUES (6, '	Aserrí	', 1);
INSERT INTO `distrito` VALUES (7, '	Mora	', 1);
INSERT INTO `distrito` VALUES (8, '	Goicochea	', 1);
INSERT INTO `distrito` VALUES (9, '	Santa Ana	', 1);
INSERT INTO `distrito` VALUES (10, '	Alajuelita	', 1);
INSERT INTO `distrito` VALUES (11, '	Coronado	', 1);
INSERT INTO `distrito` VALUES (12, '	Acosta	', 1);
INSERT INTO `distrito` VALUES (13, '	Tibas	', 1);
INSERT INTO `distrito` VALUES (14, '	Moravia	', 1);
INSERT INTO `distrito` VALUES (15, '	Montes de Oca	', 1);
INSERT INTO `distrito` VALUES (16, '	Turrubares	', 1);
INSERT INTO `distrito` VALUES (17, '	Dota	', 1);
INSERT INTO `distrito` VALUES (18, '	Curridabat	', 1);
INSERT INTO `distrito` VALUES (19, '	Perez Zeledón	', 1);
INSERT INTO `distrito` VALUES (20, '	León Cortés	', 1);
INSERT INTO `distrito` VALUES (21, '	Alajuela	', 2);
INSERT INTO `distrito` VALUES (22, '	San Ramón	', 2);
INSERT INTO `distrito` VALUES (23, '	Grecia	', 2);
INSERT INTO `distrito` VALUES (24, '	San Mateo	', 2);
INSERT INTO `distrito` VALUES (25, '	Atenas	', 2);
INSERT INTO `distrito` VALUES (26, '	Naranjo	', 2);
INSERT INTO `distrito` VALUES (27, '	Palmares	', 2);
INSERT INTO `distrito` VALUES (28, '	Poás	', 2);
INSERT INTO `distrito` VALUES (29, '	Orotina	', 2);
INSERT INTO `distrito` VALUES (30, '	San Carlos	', 2);
INSERT INTO `distrito` VALUES (31, '	Alfaro Ruiz	', 2);
INSERT INTO `distrito` VALUES (32, '	Valverde Vega	', 2);
INSERT INTO `distrito` VALUES (33, '	Upala	', 2);
INSERT INTO `distrito` VALUES (34, '	Los Chiles	', 2);
INSERT INTO `distrito` VALUES (35, '	Guatuso	', 2);
INSERT INTO `distrito` VALUES (36, '	Cartago	', 3);
INSERT INTO `distrito` VALUES (37, '	Paraíso	', 3);
INSERT INTO `distrito` VALUES (38, '	La Unión	', 3);
INSERT INTO `distrito` VALUES (39, '	Jiménez	', 3);
INSERT INTO `distrito` VALUES (40, '	Turrialba	', 3);
INSERT INTO `distrito` VALUES (41, '	Alvarado	', 3);
INSERT INTO `distrito` VALUES (42, '	Oreamuno	', 3);
INSERT INTO `distrito` VALUES (43, '	El Guarco	', 3);
INSERT INTO `distrito` VALUES (44, '	Heredia	', 4);
INSERT INTO `distrito` VALUES (45, '	Barva	', 4);
INSERT INTO `distrito` VALUES (46, '	Santo Domingo	', 4);
INSERT INTO `distrito` VALUES (47, '	Santa Bárbara	', 4);
INSERT INTO `distrito` VALUES (48, '	San Rafael	', 4);
INSERT INTO `distrito` VALUES (49, '	San Isidro	', 4);
INSERT INTO `distrito` VALUES (50, '	Belén	', 4);
INSERT INTO `distrito` VALUES (51, '	Flores	', 4);
INSERT INTO `distrito` VALUES (52, '	San Pablo	', 4);
INSERT INTO `distrito` VALUES (53, '	Sarapiquí	', 4);
INSERT INTO `distrito` VALUES (54, '	Liberia	', 5);
INSERT INTO `distrito` VALUES (55, '	Nicoya	', 5);
INSERT INTO `distrito` VALUES (56, '	Santa Cruz	', 5);
INSERT INTO `distrito` VALUES (57, '	Bagaces	', 5);
INSERT INTO `distrito` VALUES (58, '	Carrillo	', 5);
INSERT INTO `distrito` VALUES (59, '	Cañas	', 5);
INSERT INTO `distrito` VALUES (60, '	Abangares	', 5);
INSERT INTO `distrito` VALUES (61, '	Tiralarán	', 5);
INSERT INTO `distrito` VALUES (62, '	Nandayure	', 5);
INSERT INTO `distrito` VALUES (63, '	La Cruz	', 5);
INSERT INTO `distrito` VALUES (64, '	Hojancha	', 5);
INSERT INTO `distrito` VALUES (65, '	Puntarenas	', 6);
INSERT INTO `distrito` VALUES (66, '	Esparza	', 6);
INSERT INTO `distrito` VALUES (67, '	Buenos Aires	', 6);
INSERT INTO `distrito` VALUES (68, '	Montes de Oro	', 6);
INSERT INTO `distrito` VALUES (69, '	Osa	', 6);
INSERT INTO `distrito` VALUES (70, '	Aguirre	', 6);
INSERT INTO `distrito` VALUES (71, '	Golfito	', 6);
INSERT INTO `distrito` VALUES (72, '	Coto Brus	', 6);
INSERT INTO `distrito` VALUES (73, '	Parrita	', 6);
INSERT INTO `distrito` VALUES (74, '	Corredores	', 6);
INSERT INTO `distrito` VALUES (75, '	Garabito	', 6);
INSERT INTO `distrito` VALUES (76, '	Limón	', 7);
INSERT INTO `distrito` VALUES (77, '	Pococí	', 7);
INSERT INTO `distrito` VALUES (78, '	Siquirres	', 7);
INSERT INTO `distrito` VALUES (79, '	Talamanca	', 7);
INSERT INTO `distrito` VALUES (80, '	Matina	', 7);
INSERT INTO `distrito` VALUES (81, '	Guácimo	', 7);
INSERT INTO `distrito` VALUES (82, '	Almirante	', 8);
INSERT INTO `distrito` VALUES (83, '	Bocas del Toro	', 8);
INSERT INTO `distrito` VALUES (84, '	Changuinola	', 8);
INSERT INTO `distrito` VALUES (85, '	Chiriquí Grande	', 8);
INSERT INTO `distrito` VALUES (86, '	Alanje	', 9);
INSERT INTO `distrito` VALUES (87, '	Barú	', 9);
INSERT INTO `distrito` VALUES (88, '	Boquerón	', 9);
INSERT INTO `distrito` VALUES (89, '	Boquete	', 9);
INSERT INTO `distrito` VALUES (90, '	Bugaba	', 9);
INSERT INTO `distrito` VALUES (91, '	David	', 9);
INSERT INTO `distrito` VALUES (92, '	Dolega	', 9);
INSERT INTO `distrito` VALUES (93, '	Gualaca	', 9);
INSERT INTO `distrito` VALUES (94, '	Remedios	', 9);
INSERT INTO `distrito` VALUES (95, '	Renacimiento	', 9);
INSERT INTO `distrito` VALUES (96, '	San Félix	', 9);
INSERT INTO `distrito` VALUES (97, '	San Lorenzo	', 9);
INSERT INTO `distrito` VALUES (98, '	Tierras Altas	', 9);
INSERT INTO `distrito` VALUES (99, '	Tolé	', 9);
INSERT INTO `distrito` VALUES (100, '	Aguadulce	', 10);
INSERT INTO `distrito` VALUES (101, '	Antón	', 10);
INSERT INTO `distrito` VALUES (102, '	La Pintada	', 10);
INSERT INTO `distrito` VALUES (103, '	Natá	', 10);
INSERT INTO `distrito` VALUES (104, '	Olá	', 10);
INSERT INTO `distrito` VALUES (105, '	Penonomé	', 10);
INSERT INTO `distrito` VALUES (106, '	Colón	', 11);
INSERT INTO `distrito` VALUES (107, '	Chagres	', 11);
INSERT INTO `distrito` VALUES (108, '	Donoso	', 11);
INSERT INTO `distrito` VALUES (109, '	Portobelo	', 11);
INSERT INTO `distrito` VALUES (110, '	Santa Isabel	', 11);
INSERT INTO `distrito` VALUES (111, '	Omar Torrijos Herrera	', 11);
INSERT INTO `distrito` VALUES (112, '	Chepigana	', 12);
INSERT INTO `distrito` VALUES (113, '	Pinogana	', 12);
INSERT INTO `distrito` VALUES (114, '	Santa Fe	', 12);
INSERT INTO `distrito` VALUES (115, '	Chitré	', 13);
INSERT INTO `distrito` VALUES (116, '	Las Minas	', 13);
INSERT INTO `distrito` VALUES (117, '	Los Pozos	', 13);
INSERT INTO `distrito` VALUES (118, '	Ocú	', 13);
INSERT INTO `distrito` VALUES (119, '	Parita	', 13);
INSERT INTO `distrito` VALUES (120, '	Pesé	', 13);
INSERT INTO `distrito` VALUES (121, '	Santa María	', 13);
INSERT INTO `distrito` VALUES (122, '	Guararé	', 14);
INSERT INTO `distrito` VALUES (123, '	Las Tablas	', 14);
INSERT INTO `distrito` VALUES (124, '	Los Santos	', 14);
INSERT INTO `distrito` VALUES (125, '	Macaracas	', 14);
INSERT INTO `distrito` VALUES (126, '	Pedasí	', 14);
INSERT INTO `distrito` VALUES (127, '	Pocrí	', 14);
INSERT INTO `distrito` VALUES (128, '	Tonosí	', 14);
INSERT INTO `distrito` VALUES (129, '	Balboa	', 15);
INSERT INTO `distrito` VALUES (130, '	Chepo	', 15);
INSERT INTO `distrito` VALUES (131, '	Chimán	', 15);
INSERT INTO `distrito` VALUES (132, '	Panamá	', 15);
INSERT INTO `distrito` VALUES (133, '	San Miguelito	', 15);
INSERT INTO `distrito` VALUES (134, '	Taboga	', 15);
INSERT INTO `distrito` VALUES (135, '	Arraiján	', 16);
INSERT INTO `distrito` VALUES (136, '	Capira	', 16);
INSERT INTO `distrito` VALUES (137, '	Chame	', 16);
INSERT INTO `distrito` VALUES (138, '	La Chorrera	', 16);
INSERT INTO `distrito` VALUES (139, '	San Carlos	', 16);
INSERT INTO `distrito` VALUES (140, '	Atalaya	', 17);
INSERT INTO `distrito` VALUES (141, '	Calobre	', 17);
INSERT INTO `distrito` VALUES (142, '	Cañazas	', 17);
INSERT INTO `distrito` VALUES (143, '	La Mesa	', 17);
INSERT INTO `distrito` VALUES (144, '	Las Palmas	', 17);
INSERT INTO `distrito` VALUES (145, '	Mariato	', 17);
INSERT INTO `distrito` VALUES (146, '	Montijo	', 17);
INSERT INTO `distrito` VALUES (147, '	Río de Jesús	', 17);
INSERT INTO `distrito` VALUES (148, '	San Francisco	', 17);
INSERT INTO `distrito` VALUES (149, '	Santa Fe	', 17);
INSERT INTO `distrito` VALUES (150, '	Santiago	', 17);
INSERT INTO `distrito` VALUES (151, '	Soná	', 17);
COMMIT;

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
-- Records of estado
-- ----------------------------
BEGIN;
INSERT INTO `estado` VALUES (1, 'Disponible Para Venta');
INSERT INTO `estado` VALUES (2, 'Arrendamiento con opción a compra');
INSERT INTO `estado` VALUES (3, 'En tramite de adjudación');
INSERT INTO `estado` VALUES (4, 'Por realizar Proceso de desalojo');
INSERT INTO `estado` VALUES (5, 'Proceso Legal ');
INSERT INTO `estado` VALUES (6, 'No disponible');
INSERT INTO `estado` VALUES (7, 'Venta Aprobada');
INSERT INTO `estado` VALUES (8, 'Vendida');
COMMIT;

-- ----------------------------
-- Table structure for imagenes_propiedad
-- ----------------------------
DROP TABLE IF EXISTS `imagenes_propiedad`;
CREATE TABLE `imagenes_propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `propiedad_id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_imagenes_propiedad_propiedad1_idx` (`propiedad_id`),
  CONSTRAINT `fk_imagenes_propiedad_propiedad1` FOREIGN KEY (`propiedad_id`) REFERENCES `propiedad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imagenes_propiedad
-- ----------------------------
BEGIN;
INSERT INTO `imagenes_propiedad` VALUES (18, '4de024c8-9582-4452-a379-24fa8c979aa3.jpg', 227, 149907);
INSERT INTO `imagenes_propiedad` VALUES (19, '6f4a9a0c-921f-4b97-a859-0cb159f7f105.jpg', 227, 114341);
INSERT INTO `imagenes_propiedad` VALUES (20, '2de2651c-49aa-448c-bf3a-c09075168098.jpg', 227, 158797);
INSERT INTO `imagenes_propiedad` VALUES (21, 'fd3295b9-a4e1-4a06-b8e9-4e1865af0107.jpg', 228, 158797);
INSERT INTO `imagenes_propiedad` VALUES (22, '7c4435b3-35a8-437e-8a94-a1e282a6d1e1.jpg', 228, 114341);
INSERT INTO `imagenes_propiedad` VALUES (29, '5837755e-a298-4c7d-be83-47fe03562b8b.jpg', 233, 149907);
INSERT INTO `imagenes_propiedad` VALUES (30, '365f01e0-7a65-4d93-89a5-06df4734e67b.jpg', 233, 114341);
INSERT INTO `imagenes_propiedad` VALUES (31, 'ffe00fba-0bf6-4ec9-aa53-5e2084ba2042.jpg', 233, 158797);
INSERT INTO `imagenes_propiedad` VALUES (32, '442aabf8-9160-45f2-9677-b4e81aa5bc58.jpg', 233, 179803);
INSERT INTO `imagenes_propiedad` VALUES (40, 'dc4f612a-9820-498b-9c13-33597afbb34f.jpg', 234, 73063);
INSERT INTO `imagenes_propiedad` VALUES (41, '708d96e9-7898-4743-9430-60d511bfd133.jpg', 234, 148984);
INSERT INTO `imagenes_propiedad` VALUES (45, 'eba68486-cb8a-457d-aa7a-80e48f7beaa3.jpg', 233, 158797);
COMMIT;

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
-- Records of pais
-- ----------------------------
BEGIN;
INSERT INTO `pais` VALUES (1, 'Costa Rica', '506', 'CRI');
INSERT INTO `pais` VALUES (2, 'Panama', '507', 'PAN');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persona
-- ----------------------------
BEGIN;
INSERT INTO `persona` VALUES (1, '122331', 'Nombre', 'app', 'seg', 'corella@as.com');
INSERT INTO `persona` VALUES (2, '1234456', 'Name', 'App', 'App2', 'csd@afas.com');
INSERT INTO `persona` VALUES (3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `persona` VALUES (4, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `persona` VALUES (5, '123', 'Pedro', 'Jimenez', 'Ramirez', 'asd@asdf.com');
INSERT INTO `persona` VALUES (6, '2322', 'nombre', 'ap', 'seg', 'sadf@asdfa.com');
INSERT INTO `persona` VALUES (7, '1223412', 'asdf', 'asdf', 'asf', 'aasdf@adsf.com');
INSERT INTO `persona` VALUES (8, '1223412', 'asdf', 'asdf', 'asf', 'aasdf@adsf.com');
INSERT INTO `persona` VALUES (9, '1321234', 'Pepe', 'Campos', 'Lopes ', 'asd@asdf.com');
INSERT INTO `persona` VALUES (10, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `persona` VALUES (11, '2345', 'name', 'asd', 'ap2', 'asd@asd.com');
INSERT INTO `persona` VALUES (12, NULL, NULL, NULL, NULL, 'asd@aad.com');
INSERT INTO `persona` VALUES (13, NULL, NULL, NULL, NULL, 'asd@aad.com');
INSERT INTO `persona` VALUES (14, NULL, NULL, NULL, NULL, 'asdf@asd.com');
INSERT INTO `persona` VALUES (15, NULL, NULL, NULL, NULL, 'asdf@asdf.com');
INSERT INTO `persona` VALUES (16, '12345', 'Nombre', 'Apellido', 'Segundo ', 'email@nas.com');
INSERT INTO `persona` VALUES (17, '1234', '12431234', 'asdf', 'asdf', 'asd@asdf.com');
INSERT INTO `persona` VALUES (18, '123123', 'Name', 'App', 'Sapp', 'sad@asdf.com');
INSERT INTO `persona` VALUES (19, 'rolex', 'Juan', 'root2221', 'root2221', 'root@aad11f.com');
INSERT INTO `persona` VALUES (20, '123123', NULL, NULL, NULL, NULL);
INSERT INTO `persona` VALUES (21, '123', '123', '123', NULL, '123@asd.com');
INSERT INTO `persona` VALUES (22, 'asdf', 'peter', NULL, NULL, 'asd@as.com');
INSERT INTO `persona` VALUES (23, '2211223', NULL, NULL, NULL, '122@ad.com');
COMMIT;

-- ----------------------------
-- Table structure for propiedad
-- ----------------------------
DROP TABLE IF EXISTS `propiedad`;
CREATE TABLE `propiedad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sociedad_id` int(11) NOT NULL,
  `folio` varchar(100) NOT NULL,
  `plano` varchar(100) NOT NULL,
  `unidad` varchar(100) DEFAULT NULL COMMENT 'Numero de apartamento, Casa o Local',
  `area` int(11) NOT NULL COMMENT 'Metraje de la propiedad',
  `area_construida` int(11) NOT NULL COMMENT 'Espacio del lote construido',
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
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of propiedad
-- ----------------------------
BEGIN;
INSERT INTO `propiedad` VALUES (101, 1, '123sj112z1w235', 'k1r23qa22j34r', 'Suite 225', 717, 405, 1, 99999999999.00, 8855616.00, 1611687.00, 5050548.00, 8399289.00, '1976-04-23', '2019-08-15', '2006-11-20', '2013-12-03', '1996-08-30', '1999-02-22', '2019-02-28', '2019-11-20', '2005-04-07', '1234ik', 2, NULL, NULL, 4, 346717.00, NULL, 4, 9982.00, 0, 1, 1, 'Ut enim et enim et.', 'Non suscipit voluptas error aut tempora reprehenderit suscipit fuga.', 139, 1, 1);
INSERT INTO `propiedad` VALUES (102, 1, '123et112x1c235', 'j1q23rg22y34m', 'Apt. 670', 734, 254, 1, 6365038.00, 1130253.00, 4292683.00, 9312982.00, 2851052.00, '1977-04-26', '2014-10-09', '2015-01-24', '1997-11-26', '2003-12-12', '1978-07-23', '2013-08-19', '1990-09-17', '2003-02-09', '1234oi', 5, NULL, NULL, 2, 849473.00, NULL, 1, 5136.00, 1, 1, 1, 'Fugiat magni aliquam eveniet illo vel nesciunt molestiae.', 'Velit consequatur voluptate doloribus repellat voluptas corporis.', 175, 1, NULL);
INSERT INTO `propiedad` VALUES (103, 1, '123nl112a1s235', 'c1l23yf22e34n', 'Suite 034', 690, 440, 0, 7100704.00, 1784143.00, 5715489.00, 5903471.00, 1365432.00, '2016-03-20', '1975-09-07', '2003-09-05', '2006-07-03', '1993-05-30', '2017-08-03', '1983-10-03', '1991-01-19', '1991-12-02', '1234tn', 1, NULL, NULL, 8, 556503.00, NULL, 1, 8310.00, 0, 1, 0, 'Nam quam amet illum qui laborum.', 'Quae voluptatem eum aut molestias ratione.', 149, 0, NULL);
INSERT INTO `propiedad` VALUES (104, 1, '123qz112j1w235', 'y1t23je22u34s', 'Apt. 489', 416, 399, 0, 223344.00, 3972846.00, 8591456.00, 3461812.00, 6730730.00, '1985-10-15', '1979-08-01', '2003-09-09', '1977-08-16', '2014-10-05', '1983-03-25', '1972-07-09', '2017-03-09', '1987-09-20', '1234ko', 5, NULL, NULL, 8, 979969.00, NULL, 3, 5114.00, 1, 0, 1, 'Soluta maiores aliquam deleniti sed.', 'Aut perferendis mollitia provident velit quos.', 167, 0, NULL);
INSERT INTO `propiedad` VALUES (105, 1, '123ki112g1v235', 'l1l23xr22k34c', 'Apt. 822', 882, 395, 1, 791215.00, 5177659.00, 3689847.00, 5011872.00, 3836830.00, '1993-02-25', '1992-08-16', '2003-01-05', '1979-12-22', '2009-11-12', '2004-08-14', '2010-11-19', '1982-04-05', '2015-08-22', '1234ed', 6, NULL, NULL, 2, 856314.00, NULL, 3, 8150.00, 1, 0, 0, 'Ipsa voluptatibus voluptas voluptas nostrum.', 'Molestiae sed officia quo commodi commodi.', 127, 1, NULL);
INSERT INTO `propiedad` VALUES (106, 1, '123vv112x1w235', 'n1m23ph22k34l', 'Apt. 447', 111, 285, 0, 9565324.00, 1465336.00, 7813114.00, 9485314.00, 8617490.00, '1971-12-30', '2000-08-05', '1987-02-07', '2011-07-06', '1999-09-25', '2011-08-17', '1989-10-19', '1995-04-05', '2010-09-12', '1234ac', 6, NULL, NULL, 6, 623927.00, NULL, 6, 5653.00, 1, 0, 0, 'Sunt quod rerum officia quis aut non nostrum.', 'Dolorum excepturi repellat quaerat ut officiis eius molestiae.', 197, 1, NULL);
INSERT INTO `propiedad` VALUES (107, 1, '123if112o1z235', 'a1u23cm22s34u', 'Apt. 211', 657, 106, 0, 1812474.00, 2303291.00, 2194808.00, 1404556.00, 8485208.00, '2000-11-18', '2008-02-24', '1993-09-27', '2004-08-30', '1989-06-03', '1992-08-31', '1992-08-29', '1975-07-26', '1974-06-14', '1234ni', 2, NULL, NULL, 3, 320673.00, NULL, 5, 4975.00, 0, 0, 1, 'Et expedita deserunt distinctio soluta aspernatur.', 'Fugiat aut commodi laborum quasi est soluta.', 166, 1, NULL);
INSERT INTO `propiedad` VALUES (108, 1, '123vv112l1w235', 'z1e23gz22k34a', 'Suite 582', 336, 267, 0, 2197451.00, 1793200.00, 8038613.00, 3254469.00, 2937707.00, '2015-08-07', '2018-02-22', '2012-06-08', '2002-03-20', '1970-03-19', '2013-09-16', '1977-07-14', '1984-06-29', '2017-08-15', '1234ok', 6, NULL, NULL, 5, 375414.00, NULL, 5, 7476.00, 1, 0, 1, 'Praesentium totam autem hic omnis et.', 'Magni est eum praesentium quia magni.', 108, 0, NULL);
INSERT INTO `propiedad` VALUES (109, 1, '123ry112f1e235', 'd1w23go22e34l', 'Apt. 038', 830, 476, 0, 8949931.00, 1094926.00, 4060574.00, 1109956.00, 5631671.00, '2011-12-20', '1997-04-14', '1990-03-13', '2015-11-16', '1970-01-08', '2015-12-05', '1986-05-03', '1984-10-18', '2004-12-08', '1234cl', 6, NULL, NULL, 8, 461219.00, NULL, 2, 7543.00, 1, 0, 1, 'Doloribus labore qui qui unde.', 'Fugit odit harum atque quia.', 105, 0, NULL);
INSERT INTO `propiedad` VALUES (110, 1, '123he112q1d235', 'b1k23ni22w34t', 'Suite 911', 586, 252, 1, 4770165.00, 1041772.00, 3486727.00, 4988970.00, 6396059.00, '1973-08-03', '1992-01-20', '1971-07-10', '2000-05-24', '2015-06-30', '1975-12-02', '2002-11-02', '1983-05-12', '1972-03-21', '1234no', 4, NULL, NULL, 6, 701031.00, NULL, 2, 4746.00, 0, 0, 0, 'Dolorem provident dolorem qui fugiat.', 'Rerum culpa et numquam quod nesciunt et.', 142, 0, NULL);
INSERT INTO `propiedad` VALUES (111, 1, '123xo112x1l235', 'd1k23ol22a34y', 'Suite 697', 807, 204, 1, 8785409.00, 1887059.00, 3079746.00, 2356782.00, 3433852.00, '1972-01-28', '2000-03-03', '1996-04-05', '2000-10-23', '1981-08-31', '1972-08-28', '1997-12-09', '2001-08-13', '1997-11-19', '1234eb', 5, NULL, NULL, 6, 280209.00, NULL, 2, 6281.00, 0, 0, 0, 'Omnis iusto rerum tempora eum est.', 'Sed eveniet dolor nam adipisci consectetur repellat inventore iste.', 167, 0, NULL);
INSERT INTO `propiedad` VALUES (112, 1, '123zc112b1d235', 'y1m23lt22z34c', 'Apt. 614', 765, 223, 0, 2191298.00, 3447099.00, 8793390.00, 4960714.00, 5239673.00, '1974-10-19', '1972-09-08', '2006-11-11', '1975-09-12', '1994-08-11', '1988-10-30', '1981-11-26', '2018-12-19', '2016-01-31', '1234uc', 4, NULL, NULL, 2, 558681.00, NULL, 6, 6928.00, 1, 1, 1, 'Eius asperiores recusandae facilis corrupti ratione sit.', 'Ad omnis ut illo corporis nostrum.', 119, 1, NULL);
INSERT INTO `propiedad` VALUES (113, 1, '123jk112x1o235', 'j1k23th22m34k', 'Suite 791', 782, 463, 1, 3721656.00, 9442847.00, 5320244.00, 3624033.00, 3194825.00, '2005-11-24', '1990-03-09', '2017-05-24', '2013-10-19', '1986-09-28', '1987-09-20', '2015-06-20', '1977-08-02', '1984-06-29', '1234ei', 1, NULL, NULL, 8, 330586.00, NULL, 4, 8462.00, 0, 1, 1, 'Exercitationem eum quia expedita qui similique ipsum.', 'Ut corrupti vel rerum natus maxime.', 119, 1, NULL);
INSERT INTO `propiedad` VALUES (114, 1, '123sv112a1a235', 'f1p23ek22m34q', 'Apt. 057', 261, 274, 0, 2268955.00, 5489952.00, 3560209.00, 8431619.00, 8396743.00, '2015-06-24', '1976-02-26', '1980-03-28', '1972-03-27', '1977-05-15', '1992-10-15', '2004-10-05', '1974-08-17', '2015-12-29', '1234ou', 1, NULL, NULL, 1, 99097.00, NULL, 1, 9843.00, 1, 1, 0, 'Sed velit ad non quae distinctio blanditiis.', 'Omnis iure in et ipsum.', 176, 0, NULL);
INSERT INTO `propiedad` VALUES (115, 1, '123to112c1g235', 'q1z23yw22h34r', 'Apt. 532', 888, 293, 0, 4487187.00, 3321156.00, 4503073.00, 6648624.00, 1583154.00, '1978-08-25', '1999-05-17', '2004-12-29', '1974-08-14', '1974-12-07', '1989-08-19', '2000-10-11', '2007-10-26', '1996-11-25', '1234nw', 5, NULL, NULL, 2, 937000.00, NULL, 3, 3377.00, 1, 0, 0, 'Dolor libero aliquam mollitia modi blanditiis.', 'Aut nihil natus neque aut eum non.', 173, 1, NULL);
INSERT INTO `propiedad` VALUES (116, 1, '123oj112b1r235', 'p1a23ve22l34b', 'Apt. 674', 335, 490, 0, 5245523.00, 9754805.00, 2199799.00, 4398486.00, 5512693.00, '1984-10-11', '2006-03-06', '2009-06-05', '2010-08-23', '2019-04-04', '2007-04-13', '1982-06-23', '2005-09-11', '2011-01-01', '1234gq', 3, NULL, NULL, 5, 698137.00, NULL, 6, 9616.00, 0, 1, 0, 'Magni est sed earum nulla ad.', 'Consectetur consequuntur incidunt in non.', 144, 1, NULL);
INSERT INTO `propiedad` VALUES (117, 1, '123pd112j1v235', 'u1g23at22c34t', 'Suite 144', 631, 229, 1, 2600853.00, 8545090.00, 4505608.00, 4701843.00, 9178399.00, '2019-10-10', '1984-01-16', '1972-05-29', '2012-04-23', '1979-05-16', '2012-09-23', '2013-07-21', '1994-01-15', '2003-09-30', '1234wh', 1, NULL, NULL, 3, 180000.00, NULL, 4, 1648.00, 0, 0, 0, 'Qui facere deserunt quia.', 'Nihil magni nisi ut ea quos dolor et.', 104, 0, NULL);
INSERT INTO `propiedad` VALUES (118, 1, '123gx112s1b235', 'l1b23ls22g34o', 'Apt. 172', 339, 267, 0, 725924.00, 5073597.00, 1435681.00, 3677810.00, 6159318.00, '2000-01-28', '1980-10-13', '1970-01-21', '1989-01-24', '2002-07-06', '1978-03-12', '1992-08-17', '1979-03-04', '2006-04-28', '1234eu', 3, NULL, NULL, 1, 930200.00, NULL, 5, 9244.00, 1, 1, 0, 'Libero sequi aliquam inventore rerum omnis.', 'Est illo et aliquam nesciunt error labore.', 117, 0, NULL);
INSERT INTO `propiedad` VALUES (119, 1, '123lk112d1t235', 'y1a23sp22h34b', 'Suite 676', 126, 432, 0, 8791223.00, 8114968.00, 4856226.00, 9251650.00, 2095787.00, '1984-03-27', '2000-06-15', '2008-08-22', '2011-01-25', '2019-04-26', '1986-12-09', '1979-02-20', '2015-01-21', '1993-08-17', '1234ky', 4, NULL, NULL, 3, 481847.00, NULL, 2, 7625.00, 1, 0, 0, 'Ab dolore sequi ipsum nemo.', 'Tempora ipsa sunt quae totam.', 197, 1, NULL);
INSERT INTO `propiedad` VALUES (120, 1, '123vr112r1z235', 'a1k23ao22a34p', 'Apt. 783', 601, 381, 0, 7260375.00, 2400493.00, 1823063.00, 8032207.00, 4119473.00, '1971-01-30', '1993-06-30', '1996-10-06', '2011-11-22', '2016-10-17', '1999-12-20', '1975-03-22', '1984-11-29', '1971-03-13', '1234tw', 1, NULL, NULL, 6, 385274.00, NULL, 6, 8012.00, 1, 0, 0, 'Dolorem dolore cumque labore aut.', 'Consectetur omnis nostrum porro iure.', 120, 0, NULL);
INSERT INTO `propiedad` VALUES (121, 1, '123zq112j1x235', 'n1y23xh22n34c', 'Apt. 700', 522, 112, 1, 2799283.00, 7338379.00, 6745854.00, 2149474.00, 9580591.00, '1980-11-04', '2011-03-03', '2001-06-23', '2011-06-14', '1984-06-21', '2008-08-29', '1984-08-15', '1981-05-26', '1981-12-31', '1234qx', 1, NULL, NULL, 3, 182374.00, NULL, 2, 9669.00, 1, 0, 1, 'Necessitatibus omnis rerum ratione est eveniet architecto.', 'Necessitatibus harum sit minus sint quo sed corrupti.', 194, 0, NULL);
INSERT INTO `propiedad` VALUES (122, 1, '123bn112b1r235', 'z1i23js22p34x', 'Apt. 424', 578, 447, 1, 4672022.00, 5634410.00, 1330935.00, 4825546.00, 3385375.00, '2002-08-10', '2000-12-12', '2013-05-23', '2015-02-19', '1993-12-13', '2012-12-18', '1984-11-22', '2014-01-28', '1989-02-01', '1234al', 1, NULL, NULL, 7, 159902.00, NULL, 4, 4987.00, 1, 0, 1, 'Dicta qui est et eum.', 'Itaque ex a ut ducimus placeat odit.', 137, 0, NULL);
INSERT INTO `propiedad` VALUES (123, 1, '123ts112a1w235', 'w1o23xc22u34c', 'Apt. 468', 752, 211, 1, 3803025.00, 9141082.00, 3739046.00, 5215970.00, 8969689.00, '1992-01-22', '1974-05-06', '1973-11-21', '1990-07-21', '2003-08-11', '1988-04-23', '2018-02-24', '1989-04-04', '1991-04-26', '1234fo', 3, NULL, NULL, 2, 80571.00, NULL, 4, 5802.00, 0, 0, 1, 'Rerum laboriosam praesentium eligendi voluptas dolorum harum.', 'Placeat facere quo molestiae repellendus.', 174, 1, NULL);
INSERT INTO `propiedad` VALUES (124, 1, '123lu112f1u235', 'z1h23gt22f34t', 'Apt. 296', 661, 242, 1, 6001070.00, 6428616.00, 9839934.00, 9528075.00, 4501413.00, '1989-05-28', '1976-10-24', '2015-08-15', '2011-12-06', '1993-06-28', '2019-02-06', '1997-11-15', '2013-12-20', '1999-11-10', '1234lv', 6, NULL, NULL, 1, 57034.00, NULL, 5, 2759.00, 0, 1, 1, 'Aut quis id rerum animi nisi.', 'Consequatur voluptatem exercitationem ut impedit vel omnis.', 130, 1, NULL);
INSERT INTO `propiedad` VALUES (125, 1, '123xd112s1t235', 'j1w23la22c34q', 'Suite 000', 171, 178, 0, 4884808.00, 3113827.00, 2023156.00, 3622063.00, 3015678.00, '2011-11-11', '1985-04-09', '1988-01-21', '2012-01-01', '1989-11-21', '2018-12-07', '2004-03-20', '2005-04-25', '1975-12-04', '1234ba', 5, NULL, NULL, 7, 479338.00, NULL, 3, 4485.00, 0, 1, 1, 'Quam dolor et id.', 'Nobis corrupti neque ut est ut.', 183, 1, NULL);
INSERT INTO `propiedad` VALUES (126, 1, '123lw112v1i235', 'u1g23zu22t34j', 'Apt. 437', 235, 116, 0, 3333313.00, 6578806.00, 6661309.00, 2418183.00, 8336156.00, '2006-12-31', '1978-03-16', '2009-10-25', '2014-05-23', '2006-06-07', '1993-12-01', '2005-12-20', '1982-10-23', '1996-12-29', '1234jm', 1, NULL, NULL, 8, 140290.00, NULL, 5, 3777.00, 1, 0, 0, 'Doloribus et sint quia.', 'Vel quis aspernatur tempora et.', 150, 1, NULL);
INSERT INTO `propiedad` VALUES (127, 1, '123wt112v1b235', 'q1w23ja22r34n', 'Suite 305', 351, 317, 0, 2032960.00, 7248067.00, 7298207.00, 6826773.00, 6066648.00, '1994-01-14', '1986-11-21', '1990-10-31', '1993-01-29', '1974-06-18', '2000-12-29', '2013-04-24', '1982-06-20', '2008-04-23', '1234jm', 5, NULL, NULL, 3, 917981.00, NULL, 5, 6255.00, 0, 0, 0, 'Odio eveniet ipsam id temporibus atque molestiae quasi beatae.', 'Modi eaque quibusdam cupiditate.', 163, 0, NULL);
INSERT INTO `propiedad` VALUES (128, 1, '123jr112s1u235', 'x1k23ek22q34g', 'Suite 860', 570, 184, 0, 2003638.00, 5793172.00, 8087646.00, 5620933.00, 2891780.00, '1973-12-26', '1989-10-04', '2017-06-11', '1984-11-06', '1997-02-27', '1983-09-30', '1989-10-23', '2018-07-11', '1992-02-20', '1234ay', 4, NULL, NULL, 7, 861385.00, NULL, 4, 1872.00, 1, 0, 0, 'Cum dolor asperiores molestiae eos a esse.', 'Ut minima consequatur vel quo.', 187, 1, NULL);
INSERT INTO `propiedad` VALUES (129, 1, '123in112x1q235', 's1l23kj22m34y', 'Suite 820', 459, 145, 0, 1739013.00, 9690609.00, 4768827.00, 2655035.00, 3551155.00, '1984-06-10', '2008-11-01', '1989-09-13', '1988-05-22', '2015-05-08', '2015-01-01', '2000-10-20', '2000-02-08', '2018-01-15', '1234aw', 1, NULL, NULL, 5, 596059.00, NULL, 1, 7307.00, 0, 0, 0, 'Vero dolor harum ut.', 'Fugit perferendis consequatur inventore vel et temporibus.', 142, 1, NULL);
INSERT INTO `propiedad` VALUES (130, 1, '123al112j1a235', 'h1e23qu22d34w', 'Suite 447', 106, 450, 0, 9269588.00, 8682991.00, 7224081.00, 2885424.00, 3968114.00, '1979-08-04', '2000-10-09', '2012-10-20', '1991-12-10', '2002-06-03', '2012-02-04', '2003-05-08', '1988-04-26', '1993-09-20', '1234wc', 3, NULL, NULL, 7, 49998.00, NULL, 2, 8252.00, 0, 1, 0, 'Ea assumenda voluptatibus qui assumenda.', 'Sint dicta tenetur ipsum ut atque id vitae.', 142, 0, NULL);
INSERT INTO `propiedad` VALUES (131, 1, '123hq112b1x235', 'k1m23pd22e34b', 'Apt. 515', 937, 343, 1, 9102030.00, 8782874.00, 3540078.00, 7015965.00, 5988127.00, '1978-06-18', '2008-10-05', '2011-07-27', '2007-03-03', '1993-07-27', '1987-11-15', '1973-02-08', '1973-09-14', '2016-03-20', '1234fk', 2, NULL, NULL, 2, 534265.00, NULL, 3, 9665.00, 0, 0, 0, 'Nobis omnis quia quia fuga nostrum iste.', 'Voluptatem qui omnis qui distinctio.', 197, 1, NULL);
INSERT INTO `propiedad` VALUES (132, 1, '123jg112g1e235', 'h1f23vc22h34k', 'Suite 139', 574, 499, 1, 4209347.00, 7558232.00, 8166943.00, 9844731.00, 3817013.00, '1994-05-25', '1980-02-24', '2017-01-06', '1980-12-30', '1971-02-02', '2012-01-31', '1990-05-23', '1976-02-19', '1985-01-13', '1234mq', 1, NULL, NULL, 6, 824800.00, NULL, 3, 7453.00, 1, 1, 0, 'Quas quidem ut aut quisquam.', 'Odit totam aperiam doloribus enim sit autem sequi nihil.', 180, 1, NULL);
INSERT INTO `propiedad` VALUES (133, 1, '123fb112p1f235', 'w1f23sk22g34l', 'Apt. 611', 991, 438, 0, 9656831.00, 1245534.00, 5108822.00, 9388040.00, 9856460.00, '1998-01-03', '1970-05-30', '1985-09-06', '2016-09-01', '2009-06-01', '1985-06-28', '2003-12-11', '2017-06-09', '1970-04-24', '1234cs', 4, NULL, NULL, 2, 65917.00, NULL, 4, 6311.00, 0, 1, 1, 'Blanditiis tempore ducimus pariatur neque voluptatum.', 'Expedita aut amet a ab deserunt.', 113, 1, NULL);
INSERT INTO `propiedad` VALUES (134, 1, '123zb112z1n235', 'h1t23ng22i34r', 'Suite 024', 347, 432, 1, 6394294.00, 6435024.00, 6374828.00, 1061386.00, 6126243.00, '1979-11-13', '2019-02-14', '1980-07-21', '2009-03-08', '1999-01-27', '1996-06-22', '1982-05-19', '1997-02-28', '1971-06-22', '1234bz', 5, NULL, NULL, 1, 105964.00, NULL, 1, 5082.00, 0, 1, 1, 'Id temporibus repellat velit voluptatem distinctio ut ut nam.', 'Necessitatibus eaque totam nulla voluptatum.', 115, 1, NULL);
INSERT INTO `propiedad` VALUES (135, 1, '123pq112t1l235', 'o1i23pz22z34z', 'Apt. 774', 355, 174, 1, 6523856.00, 7399150.00, 7145596.00, 6870888.00, 1892120.00, '2013-03-08', '2018-11-19', '1972-10-05', '1972-07-21', '2007-10-20', '2015-03-01', '1989-07-15', '1984-02-19', '2016-08-11', '1234rz', 1, NULL, NULL, 6, 139128.00, NULL, 3, 1920.00, 0, 1, 1, 'Molestiae veniam et magni.', 'Modi et aspernatur aliquam quasi praesentium sint.', 179, 0, NULL);
INSERT INTO `propiedad` VALUES (136, 1, '123uw112n1i235', 'b1a23pd22l34i', 'Suite 145', 609, 389, 1, 7395179.00, 8592409.00, 4361191.00, 8242576.00, 8298125.00, '1971-05-22', '2003-02-21', '1987-10-03', '1981-01-11', '1973-05-09', '1982-02-27', '1974-02-22', '2007-07-07', '2014-12-21', '1234wd', 6, NULL, NULL, 8, 630406.00, NULL, 1, 7932.00, 0, 1, 1, 'Assumenda voluptate totam nam quasi fugiat.', 'Veniam ex repellendus aut ullam rem eaque saepe hic.', 191, 0, NULL);
INSERT INTO `propiedad` VALUES (137, 1, '123qy112v1d235', 'u1v23zv22m34w', 'Suite 268', 495, 401, 1, 8246705.00, 2491188.00, 2863041.00, 4470661.00, 7554237.00, '1991-01-05', '1990-11-18', '2003-01-14', '2000-06-19', '1995-08-17', '1994-03-12', '1986-05-03', '1986-10-14', '2018-11-26', '1234xx', 6, NULL, NULL, 7, 486685.00, NULL, 6, 4352.00, 0, 1, 1, 'Quisquam iste illum quo sunt illum fugit.', 'Sint illum recusandae facilis doloribus placeat similique.', 186, 1, NULL);
INSERT INTO `propiedad` VALUES (138, 1, '123sh112y1a235', 'q1b23yh22g34f', 'Apt. 795', 1000, 458, 0, 7580917.00, 9336920.00, 8315093.00, 4243948.00, 1029914.00, '1993-06-27', '1993-11-07', '2008-11-16', '2002-04-30', '1992-06-17', '1994-06-16', '1996-12-25', '1987-06-09', '2018-03-22', '1234hp', 4, NULL, NULL, 1, 493720.00, NULL, 1, 4396.00, 1, 0, 0, 'Iste neque natus inventore maiores et itaque non vero.', 'Magnam quos est eos dicta enim.', 173, 1, NULL);
INSERT INTO `propiedad` VALUES (139, 1, '123zj112v1n235', 'q1k23dq22z34d', 'Suite 257', 102, 452, 0, 6747400.00, 4487232.00, 5030851.00, 4274301.00, 6727226.00, '2005-01-20', '2002-05-22', '2007-07-12', '2009-03-30', '1970-09-29', '1993-08-02', '1987-08-28', '1971-02-26', '1970-12-02', '1234dj', 4, NULL, NULL, 5, 690857.00, NULL, 5, 7184.00, 0, 1, 1, 'Delectus ea consequatur alias veniam repudiandae itaque eos.', 'Pariatur ipsum non ea tenetur iste tempore.', 161, 0, NULL);
INSERT INTO `propiedad` VALUES (140, 1, '123ck112g1e235', 'c1f23dw22e34a', 'Suite 846', 773, 124, 1, 1400290.00, 5287768.00, 5364492.00, 9343703.00, 2594858.00, '1999-08-27', '2011-03-29', '1988-06-06', '2019-06-27', '1998-01-11', '1985-07-07', '2006-03-08', '2018-11-03', '1986-01-30', '1234bk', 4, NULL, NULL, 6, 440314.00, NULL, 4, 2068.00, 1, 0, 1, 'Tempora ut quidem earum ut atque eum pariatur.', 'Aut adipisci dolorum alias consequuntur neque sint facilis sint.', 192, 1, NULL);
INSERT INTO `propiedad` VALUES (141, 1, '123vx112k1m235', 't1y23et22u34n', 'Suite 294', 362, 211, 1, 9572905.00, 9125970.00, 2136802.00, 5360895.00, 8696730.00, '2000-08-24', '2015-08-29', '1984-03-17', '1980-09-03', '2015-06-24', '2008-11-23', '2010-11-13', '1971-05-19', '1973-10-08', '1234ic', 2, NULL, NULL, 2, 28082.00, NULL, 4, 5097.00, 0, 0, 1, 'Consequatur debitis molestiae expedita dolores accusamus est.', 'Corporis consequatur quaerat ullam quod maiores asperiores.', 140, 0, NULL);
INSERT INTO `propiedad` VALUES (142, 1, '123pz112n1j235', 'u1s23dg22l34m', 'Apt. 066', 144, 435, 1, 4000701.00, 1352129.00, 7694140.00, 8587549.00, 8567595.00, '1970-06-06', '1999-05-01', '1989-09-23', '1975-07-06', '2010-12-29', '1999-11-23', '1987-04-27', '1987-08-25', '2009-09-25', '1234ur', 4, NULL, NULL, 3, 849066.00, NULL, 6, 8980.00, 1, 0, 1, 'Est quo laudantium eos voluptates.', 'Omnis quia aut ipsa sed sed assumenda illo.', 103, 0, NULL);
INSERT INTO `propiedad` VALUES (143, 1, '123jt112b1y235', 's1e23cr22r34k', 'Apt. 229', 293, 199, 1, 2382006.00, 3238451.00, 4213332.00, 3845457.00, 4830617.00, '2006-01-16', '2017-04-15', '1973-07-11', '1978-10-13', '1988-02-05', '1996-02-16', '1983-08-15', '2013-05-10', '1998-03-27', '1234qq', 6, NULL, NULL, 1, 218620.00, NULL, 6, 4328.00, 1, 1, 1, 'Eos tempora quisquam reiciendis.', 'Quis ad illo dignissimos.', 163, 1, NULL);
INSERT INTO `propiedad` VALUES (144, 1, '123ru112h1h235', 'a1n23bx22m34b', 'Apt. 254', 312, 315, 0, 5458512.00, 7764583.00, 7618111.00, 1376632.00, 3340670.00, '1979-03-27', '1999-11-15', '1974-09-20', '2014-03-08', '2015-10-01', '2010-12-05', '2019-07-14', '1987-02-09', '2005-04-19', '1234zf', 4, NULL, NULL, 2, 629581.00, NULL, 6, 6427.00, 0, 1, 0, 'Doloribus a dolorem fuga mollitia.', 'Ut voluptatem maxime distinctio consequatur deserunt et.', 150, 0, NULL);
INSERT INTO `propiedad` VALUES (145, 1, '123lx112q1o235', 'c1c23gm22f34w', 'Apt. 156', 814, 214, 1, 8997766.00, 6465882.00, 2790407.00, 4144504.00, 7506891.00, '1986-05-21', '1981-07-06', '1971-12-18', '1986-07-23', '1993-12-12', '2014-08-11', '1993-11-12', '1998-12-15', '1995-11-26', '1234ks', 3, NULL, NULL, 8, 183144.00, NULL, 3, 5457.00, 0, 0, 0, 'Id eos autem ea quia velit.', 'Nihil non et omnis vero.', 185, 0, NULL);
INSERT INTO `propiedad` VALUES (146, 1, '123cw112c1e235', 'b1g23nb22w34h', 'Apt. 248', 791, 256, 0, 2547792.00, 2021800.00, 1979507.00, 6980352.00, 3386802.00, '2017-04-02', '2002-08-31', '1986-09-29', '2018-07-06', '1995-03-19', '1994-06-10', '1986-10-11', '1999-02-19', '2013-02-04', '1234du', 4, NULL, NULL, 1, 788674.00, NULL, 6, 7982.00, 0, 0, 1, 'Laborum error dolores recusandae neque velit.', 'Aliquid dolore vel harum aut est ratione.', 101, 1, NULL);
INSERT INTO `propiedad` VALUES (147, 1, '123mt112j1c235', 'y1r23wc22l34u', 'Apt. 767', 826, 156, 1, 6871989.00, 9137707.00, 9751350.00, 4952567.00, 3470636.00, '1977-08-04', '1999-07-23', '1987-12-14', '1993-01-14', '2011-03-08', '2010-09-25', '1978-04-10', '2018-04-18', '2017-01-14', '1234ue', 1, NULL, NULL, 5, 25873.00, NULL, 4, 4760.00, 1, 1, 0, 'Minus est blanditiis nisi odit libero ex est.', 'Sed voluptatum sed voluptatem qui est quod recusandae.', 130, 1, NULL);
INSERT INTO `propiedad` VALUES (148, 1, '123re112p1t235', 'j1c23od22q34h', 'Suite 165', 454, 179, 1, 8657400.00, 6814167.00, 7589422.00, 3256662.00, 1298155.00, '1990-04-13', '1983-07-10', '1981-07-24', '1978-01-28', '1986-10-14', '1978-02-02', '2001-07-03', '1976-08-02', '1998-07-24', '1234po', 1, NULL, NULL, 4, 820931.00, NULL, 1, 1021.00, 0, 1, 1, 'Mollitia a vero recusandae nemo dicta temporibus.', 'Ut omnis veritatis dicta alias.', 183, 1, NULL);
INSERT INTO `propiedad` VALUES (149, 1, '123el112d1u235', 't1h23lq22a34g', 'Apt. 317', 192, 429, 0, 8411847.00, 9004898.00, 4477214.00, 9443238.00, 3430034.00, '2016-04-07', '2005-02-04', '2009-07-13', '1994-01-22', '2003-06-09', '1973-09-22', '1983-11-28', '1971-09-21', '1985-11-10', '1234ca', 3, NULL, NULL, 3, 31214.00, NULL, 6, 7501.00, 1, 0, 1, 'Omnis ut omnis perspiciatis rerum.', 'Expedita consequatur a eveniet voluptatem asperiores voluptas.', 159, 0, NULL);
INSERT INTO `propiedad` VALUES (150, 1, '123mc112n1l235', 't1v23cy22c34m', 'Apt. 592', 727, 246, 1, 3041364.00, 3562396.00, 7968312.00, 5910690.00, 5416287.00, '2003-09-02', '2002-10-25', '2009-01-12', '1973-01-16', '2010-03-26', '2000-12-07', '1970-12-25', '1970-02-19', '2019-06-16', '1234dd', 5, NULL, NULL, 4, 972759.00, NULL, 5, 7176.00, 1, 0, 1, 'Est ut fugit delectus aut et ducimus.', 'Aut quia debitis sit blanditiis hic molestiae.', 104, 0, NULL);
INSERT INTO `propiedad` VALUES (151, 1, '123ji112n1w235', 'e1y23ja22o34c', 'Suite 460', 720, 301, 0, 6727988.00, 6495935.00, 8980666.00, 7235692.00, 9111585.00, '2013-08-16', '2007-05-08', '2019-08-25', '1971-11-05', '1989-01-03', '1980-02-16', '2002-05-30', '2012-06-21', '1998-06-27', '1234qn', 2, NULL, NULL, 6, 568089.00, NULL, 4, 7952.00, 1, 1, 0, 'Dolor nostrum quis nisi est dolorem quidem provident ut.', 'Perferendis et odit consectetur autem eum dolorem quaerat.', 177, 0, NULL);
INSERT INTO `propiedad` VALUES (152, 1, '123yx112i1e235', 'w1c23yh22u34d', 'Suite 031', 761, 465, 1, 4151925.00, 4015258.00, 5972068.00, 3250343.00, 2267178.00, '2013-10-22', '2015-10-19', '2019-10-10', '1980-10-20', '2009-12-19', '2012-07-26', '2004-05-01', '2015-12-27', '1992-10-28', '1234nu', 3, NULL, NULL, 8, 236680.00, NULL, 3, 5901.00, 0, 1, 1, 'Et rem reprehenderit nemo.', 'Dolorem dolores voluptatem voluptas est unde vel similique.', 133, 1, NULL);
INSERT INTO `propiedad` VALUES (153, 1, '123uk112u1x235', 'r1r23da22d34i', 'Suite 372', 309, 276, 0, 6016917.00, 2119811.00, 9492615.00, 5324319.00, 7137033.00, '2005-06-30', '2004-05-23', '1979-10-30', '2012-02-02', '1971-11-18', '1989-07-17', '1990-01-14', '1989-01-26', '2015-02-27', '1234zb', 1, NULL, NULL, 8, 884181.00, NULL, 3, 1617.00, 1, 1, 0, 'Fuga recusandae est et quis libero iste excepturi.', 'Placeat magnam maiores a dignissimos.', 152, 0, NULL);
INSERT INTO `propiedad` VALUES (154, 1, '123cm112w1q235', 't1p23qe22y34j', 'Suite 349', 749, 324, 0, 270449.00, 1640888.00, 6839693.00, 9000511.00, 2892293.00, '2018-10-04', '1988-09-17', '1974-11-12', '1975-01-24', '1970-05-31', '1989-02-08', '2007-03-24', '1990-03-22', '1997-06-27', '1234zf', 6, NULL, NULL, 8, 75860.00, NULL, 3, 9106.00, 0, 1, 1, 'Unde reiciendis quidem ut ut mollitia.', 'Rem nemo sapiente quae est est architecto.', 131, 0, NULL);
INSERT INTO `propiedad` VALUES (155, 1, '123zy112h1i235', 'b1t23hl22w34i', 'Suite 713', 292, 241, 1, 3521387.00, 3428695.00, 1008152.00, 8765603.00, 1549144.00, '1977-01-17', '2015-04-24', '2004-12-15', '1980-12-22', '2002-06-04', '1970-06-07', '2017-04-30', '2016-09-23', '1977-03-22', '1234li', 5, NULL, NULL, 4, 126510.00, NULL, 3, 3283.00, 0, 1, 1, 'Et ea omnis qui laudantium voluptatibus nemo recusandae voluptatibus.', 'Dolor magnam ut voluptas non expedita.', 168, 1, NULL);
INSERT INTO `propiedad` VALUES (156, 1, '123fn112z1h235', 'q1c23av22y34l', 'Apt. 989', 379, 323, 1, 6361073.00, 3319132.00, 9667209.00, 6621049.00, 7937625.00, '1979-01-31', '1981-10-28', '1971-09-03', '1986-08-20', '1972-12-24', '1984-11-05', '1996-02-21', '2013-04-02', '2003-01-21', '1234xa', 1, NULL, NULL, 5, 16442.00, NULL, 6, 3875.00, 0, 1, 1, 'Labore asperiores perspiciatis ratione recusandae nemo minima.', 'Quo at aspernatur a aut id voluptatibus expedita aut.', 110, 0, NULL);
INSERT INTO `propiedad` VALUES (157, 1, '123tv112e1c235', 'a1q23vm22y34b', 'Suite 937', 484, 433, 0, 2884573.00, 1173521.00, 1564556.00, 7119794.00, 4457244.00, '1972-03-06', '2004-05-18', '2011-03-26', '2003-02-07', '1988-10-26', '2002-08-14', '1977-05-01', '2004-02-19', '1973-06-25', '1234sq', 2, NULL, NULL, 1, 715174.00, NULL, 6, 1052.00, 0, 0, 0, 'Ea id doloribus repellat quaerat animi repellat ex provident.', 'Modi iusto aut in.', 153, 1, NULL);
INSERT INTO `propiedad` VALUES (158, 1, '123hh112k1u235', 't1z23po22h34t', 'Apt. 970', 759, 191, 0, 1650986.00, 6206645.00, 2773164.00, 4996076.00, 3925898.00, '1979-04-07', '2015-05-15', '2017-01-30', '1996-07-28', '1993-07-31', '1989-02-10', '1973-11-28', '2018-08-15', '1971-07-22', '1234wl', 2, NULL, NULL, 3, 845656.00, NULL, 6, 9598.00, 0, 1, 0, 'Aut sit ducimus ea voluptas corporis.', 'Aperiam natus illum ipsum quibusdam.', 148, 1, NULL);
INSERT INTO `propiedad` VALUES (159, 1, '123ty112o1w235', 'x1d23av22u34i', 'Suite 848', 694, 336, 1, 5629922.00, 8707038.00, 9439126.00, 2924282.00, 5376705.00, '1986-04-23', '1979-07-24', '1988-08-15', '1988-09-21', '2000-02-14', '1984-04-26', '2018-05-05', '1970-08-24', '1981-04-30', '1234rk', 5, NULL, NULL, 7, 620521.00, NULL, 5, 3815.00, 0, 0, 0, 'Rerum ipsa laborum minus.', 'Animi cupiditate cum et ea qui.', 126, 0, NULL);
INSERT INTO `propiedad` VALUES (160, 1, '123rt112p1v235', 'l1z23ji22p34u', 'Apt. 986', 977, 205, 0, 7290796.00, 4075091.00, 5108727.00, 7743968.00, 2578418.00, '1971-02-06', '2015-10-16', '2009-09-30', '1980-09-27', '2009-03-12', '1999-11-21', '1984-09-25', '1995-05-26', '2008-04-04', '1234rq', 1, NULL, NULL, 7, 101474.00, NULL, 3, 5899.00, 1, 0, 1, 'Sunt quod sit fugit ad eveniet ea magnam.', 'Rerum reiciendis harum culpa aut dolorem.', 187, 1, NULL);
INSERT INTO `propiedad` VALUES (161, 1, '123jc112b1a235', 't1y23br22p34l', 'Apt. 744', 695, 234, 0, 8261570.00, 9090660.00, 3680111.00, 2307257.00, 2653887.00, '1975-05-14', '1994-04-20', '1982-03-05', '1977-08-18', '2016-09-03', '1976-05-26', '1987-06-08', '1998-10-11', '1997-07-15', '1234jf', 6, NULL, NULL, 6, 218227.00, NULL, 3, 7940.00, 0, 0, 0, 'Distinctio asperiores dolor in nemo qui quia.', 'Tempora eaque eius cum ea.', 199, 0, NULL);
INSERT INTO `propiedad` VALUES (162, 1, '123xm112z1w235', 'n1e23pk22u34b', 'Suite 209', 362, 422, 0, 3568770.00, 4734936.00, 1715464.00, 1430821.00, 3316000.00, '2007-11-07', '2005-01-14', '1995-09-16', '1987-03-12', '2015-07-04', '1984-01-19', '2011-06-20', '1999-11-26', '1997-01-11', '1234zb', 2, NULL, NULL, 4, 304503.00, NULL, 6, 8721.00, 0, 1, 0, 'Aperiam nostrum ea quibusdam maxime quasi et.', 'Sed est nemo ut modi.', 146, 0, NULL);
INSERT INTO `propiedad` VALUES (163, 1, '123ah112i1o235', 'm1q23vd22h34s', 'Apt. 334', 980, 293, 1, 2198237.00, 8154357.00, 1670208.00, 9435997.00, 4558474.00, '1973-08-27', '2014-01-17', '1986-07-11', '1978-12-12', '2017-06-30', '1972-06-13', '2016-04-12', '1975-01-09', '2016-06-02', '1234cy', 4, NULL, NULL, 6, 613058.00, NULL, 6, 5582.00, 0, 1, 1, 'Esse odio consectetur modi cupiditate vitae maxime.', 'Minus pariatur ad recusandae rerum amet et ut fuga.', 159, 1, NULL);
INSERT INTO `propiedad` VALUES (164, 1, '123fm112f1v235', 'w1m23yv22r34z', 'Apt. 342', 506, 324, 0, 1495458.00, 9383056.00, 2131760.00, 6807063.00, 9721203.00, '1998-02-28', '1987-06-11', '1983-08-30', '1989-04-14', '2017-11-07', '1987-06-26', '1986-05-14', '2006-04-22', '2009-06-18', '1234du', 4, NULL, NULL, 8, 300644.00, NULL, 5, 5146.00, 0, 1, 1, 'Error similique doloremque ad modi doloribus.', 'Repudiandae quaerat omnis consequatur sint voluptatum.', 163, 0, NULL);
INSERT INTO `propiedad` VALUES (165, 1, '123xi112d1s235', 'b1g23xw22e34t', 'Apt. 711', 167, 296, 0, 9732652.00, 9666049.00, 2001481.00, 8088034.00, 3111318.00, '2015-10-09', '2007-12-09', '1994-08-07', '1985-03-08', '1994-08-02', '1993-05-04', '1972-12-29', '1973-09-16', '1981-11-18', '1234ba', 1, NULL, NULL, 2, 531960.00, NULL, 3, 5313.00, 0, 1, 1, 'Temporibus est modi velit.', 'Magni est inventore sint nesciunt molestias soluta modi.', 196, 0, NULL);
INSERT INTO `propiedad` VALUES (166, 1, '123tg112q1q235', 'v1z23we22e34y', 'Apt. 087', 220, 320, 1, 4186203.00, 3635125.00, 5001577.00, 5569718.00, 5717537.00, '1999-06-14', '1981-11-26', '2004-05-02', '1984-03-22', '2000-11-08', '1994-05-03', '1977-09-11', '1973-12-24', '1970-08-04', '1234jp', 3, NULL, NULL, 2, 365775.00, NULL, 5, 4084.00, 1, 1, 1, 'Et assumenda culpa ex voluptates.', 'Porro eum architecto aut qui minus a sed id.', 196, 0, NULL);
INSERT INTO `propiedad` VALUES (167, 1, '123sb112q1t235', 'd1e23om22r34d', 'Suite 709', 201, 327, 0, 9796778.00, 6560965.00, 2231126.00, 7961793.00, 2943811.00, '1981-01-01', '1997-05-14', '1972-12-30', '1991-12-11', '1993-06-28', '2002-04-23', '1971-08-15', '1990-08-28', '1992-01-08', '1234ch', 6, NULL, NULL, 5, 245321.00, NULL, 5, 1474.00, 1, 1, 0, 'Non veritatis doloribus incidunt error porro.', 'Excepturi nostrum hic eos quia nihil beatae.', 111, 0, NULL);
INSERT INTO `propiedad` VALUES (168, 1, '123wq112i1q235', 'n1p23rc22v34r', 'Suite 378', 554, 302, 0, 4541313.00, 4257065.00, 7739401.00, 3398462.00, 2638185.00, '1977-08-29', '2019-03-04', '2015-03-19', '2018-02-07', '2014-01-13', '1999-06-22', '1980-10-31', '1989-04-03', '1978-08-13', '1234nq', 5, NULL, NULL, 3, 872072.00, NULL, 6, 3614.00, 0, 0, 0, 'Deleniti pariatur odit quod.', 'Ab atque tenetur tenetur deleniti eius non.', 148, 0, NULL);
INSERT INTO `propiedad` VALUES (169, 1, '123ja112p1d235', 'f1d23du22s34z', 'Apt. 859', 583, 187, 1, 6984051.00, 1656692.00, 6490135.00, 2552908.00, 8333844.00, '1979-11-25', '2008-08-01', '1977-07-16', '1978-06-25', '2005-10-16', '1976-04-03', '1983-09-06', '1987-07-01', '1970-02-19', '1234gj', 4, NULL, NULL, 1, 56512.00, NULL, 6, 2238.00, 0, 1, 1, 'Recusandae enim enim numquam nisi.', 'Minus eius autem expedita aut molestias quos.', 153, 1, NULL);
INSERT INTO `propiedad` VALUES (170, 1, '123mj112t1x235', 't1l23td22c34w', 'Apt. 424', 695, 387, 1, 2366821.00, 1181350.00, 7126406.00, 7761087.00, 4586254.00, '2001-09-13', '2011-12-14', '1987-11-29', '1979-09-14', '1982-06-11', '1973-03-06', '2008-06-13', '1986-03-18', '2012-01-01', '1234da', 1, NULL, NULL, 5, 469137.00, NULL, 1, 6498.00, 0, 1, 0, 'Veniam laudantium porro repudiandae.', 'Dicta dolores ut temporibus ea quia voluptas amet earum.', 178, 0, NULL);
INSERT INTO `propiedad` VALUES (171, 1, '123jt112q1f235', 'h1p23ft22i34w', 'Apt. 588', 334, 468, 1, 3110809.00, 8269328.00, 6483473.00, 1613410.00, 1447498.00, '1972-10-26', '1997-02-09', '2001-09-19', '1992-04-24', '1975-03-16', '2012-10-15', '1975-07-09', '1984-02-17', '2000-04-07', '1234jc', 4, NULL, NULL, 1, 146040.00, NULL, 2, 7931.00, 0, 0, 0, 'Eligendi necessitatibus aut doloremque et et.', 'Eaque reiciendis sint ut.', 154, 1, NULL);
INSERT INTO `propiedad` VALUES (172, 1, '123zm112i1m235', 'h1t23lg22t34u', 'Suite 010', 677, 180, 1, 4880064.00, 8347417.00, 5132618.00, 9176603.00, 8647793.00, '1981-10-27', '2019-10-03', '1996-08-08', '2007-01-05', '1985-10-26', '1975-10-13', '2004-08-25', '1977-12-22', '1984-01-16', '1234qb', 4, NULL, NULL, 2, 265258.00, NULL, 3, 7977.00, 1, 1, 1, 'Consequatur fuga in aliquam repellendus rem incidunt.', 'Deleniti atque reiciendis est eum error dolorum exercitationem.', 172, 1, NULL);
INSERT INTO `propiedad` VALUES (173, 1, '123sk112u1u235', 'u1v23wp22v34m', 'Suite 124', 449, 227, 1, 8392891.00, 8435688.00, 7813973.00, 3500068.00, 1939287.00, '1980-07-19', '1996-07-28', '1987-06-02', '2009-06-05', '2004-04-29', '1989-03-03', '1971-04-08', '2016-02-09', '1975-07-01', '1234wa', 6, NULL, NULL, 7, 949258.00, NULL, 1, 6147.00, 0, 1, 0, 'Suscipit ut quia et beatae.', 'Excepturi sed voluptate dolores qui amet natus nihil magnam.', 172, 0, NULL);
INSERT INTO `propiedad` VALUES (174, 1, '123us112o1u235', 'e1j23jy22p34r', 'Suite 767', 997, 350, 0, 3305582.00, 5089611.00, 1600404.00, 2991332.00, 1330102.00, '1975-08-26', '1990-01-05', '1984-11-29', '2005-03-19', '2014-02-10', '1986-04-17', '1992-04-21', '1982-07-01', '1996-02-02', '1234dt', 4, NULL, NULL, 3, 372224.00, NULL, 5, 7006.00, 0, 1, 0, 'Nemo doloribus aperiam corporis facere labore facere.', 'Facere hic non error vel tenetur doloribus.', 157, 0, NULL);
INSERT INTO `propiedad` VALUES (175, 1, '123kn112k1l235', 'n1e23qm22q34f', 'Apt. 473', 770, 246, 0, 5365662.00, 2196071.00, 3582691.00, 6229328.00, 5521151.00, '2014-06-12', '1995-04-23', '1988-01-02', '1979-05-14', '1998-09-01', '2016-08-16', '2001-11-23', '1978-01-11', '1990-05-31', '1234dc', 4, NULL, NULL, 1, 203719.00, NULL, 6, 5606.00, 1, 0, 0, 'Delectus omnis necessitatibus aut voluptatibus esse dolorem nesciunt.', 'Ducimus id ipsum eos.', 119, 1, NULL);
INSERT INTO `propiedad` VALUES (176, 1, '123in112l1n235', 'u1x23jv22n34e', 'Apt. 041', 746, 174, 0, 4684911.00, 8608868.00, 8765615.00, 3000949.00, 7379433.00, '1976-11-28', '1980-07-03', '2017-04-14', '1991-11-11', '2014-05-03', '1989-07-03', '1981-10-27', '1990-03-29', '1991-09-29', '1234of', 3, NULL, NULL, 1, 603148.00, NULL, 4, 8315.00, 0, 0, 1, 'Iure qui est asperiores debitis aut blanditiis dolore.', 'Dicta ratione blanditiis sint aliquam totam rerum.', 129, 1, NULL);
INSERT INTO `propiedad` VALUES (177, 1, '123fl112e1o235', 'j1c23is22l34r', 'Apt. 870', 738, 428, 1, 355402.00, 9322462.00, 6215577.00, 7074717.00, 8406716.00, '2002-07-31', '1980-05-08', '2010-06-12', '1974-11-19', '2014-11-18', '2015-04-29', '2002-03-22', '1981-12-23', '2008-12-15', '1234om', 5, NULL, NULL, 6, 832933.00, NULL, 3, 8855.00, 1, 1, 0, 'Accusamus nesciunt et eos.', 'Consequatur ipsam vel eos laborum blanditiis culpa.', 145, 1, NULL);
INSERT INTO `propiedad` VALUES (178, 1, '123cl112d1f235', 'w1b23xa22i34q', 'Suite 921', 854, 143, 0, 4892537.00, 5700414.00, 6761977.00, 1699135.00, 9764071.00, '1994-09-20', '2000-02-29', '2009-01-23', '2011-05-19', '2012-04-17', '2007-01-13', '1976-02-08', '2013-10-15', '2010-04-29', '1234jc', 5, NULL, NULL, 5, 500636.00, NULL, 1, 4480.00, 0, 0, 1, 'Unde debitis numquam magnam omnis.', 'Asperiores incidunt debitis enim assumenda sed.', 146, 1, NULL);
INSERT INTO `propiedad` VALUES (179, 1, '123ap112g1t235', 'v1p23qh22q34g', 'Suite 986', 776, 198, 1, 7820794.00, 7665208.00, 8519340.00, 7280239.00, 1480800.00, '1980-11-14', '1995-01-01', '2007-05-18', '2017-09-08', '1980-11-27', '2006-05-21', '1998-11-28', '2019-03-28', '1989-02-15', '1234rz', 2, NULL, NULL, 1, 459008.00, NULL, 5, 1843.00, 0, 0, 0, 'Libero ut dolor eos modi.', 'Non eos doloribus tempora sit quod.', 190, 0, NULL);
INSERT INTO `propiedad` VALUES (180, 1, '123gc112l1k235', 'b1o23rx22y34k', 'Apt. 500', 103, 444, 0, 9816121.00, 9217629.00, 3221495.00, 8737973.00, 3116939.00, '1987-03-21', '2008-05-03', '2007-05-29', '1998-03-10', '2006-05-18', '2006-03-20', '1987-12-17', '2008-07-12', '2005-11-15', '1234qc', 5, NULL, NULL, 8, 156906.00, NULL, 3, 3749.00, 1, 1, 1, 'Sint ducimus iure quod nobis ut et.', 'Reiciendis rerum eveniet in suscipit id nam.', 103, 1, NULL);
INSERT INTO `propiedad` VALUES (181, 1, '123ib112b1k235', 'e1t23ec22m34l', 'Apt. 092', 362, 484, 1, 2979506.00, 4275055.00, 7416218.00, 6418621.00, 3551458.00, '1978-07-21', '1986-02-01', '2002-05-05', '1994-06-23', '2003-01-21', '2011-03-31', '1978-08-02', '1983-02-02', '1986-07-24', '1234va', 3, NULL, NULL, 7, 717402.00, NULL, 3, 9915.00, 0, 0, 1, 'Sed aliquid laborum ad voluptatem enim assumenda officia eaque.', 'Vitae non ut dicta est enim provident quasi aut.', 134, 0, NULL);
INSERT INTO `propiedad` VALUES (182, 1, '123om112r1n235', 'm1s23my22y34a', 'Suite 941', 944, 391, 1, 1677623.00, 1289927.00, 2680418.00, 3316723.00, 6543076.00, '2010-06-01', '1991-08-23', '1995-05-13', '2007-02-11', '1990-02-25', '1985-01-21', '2003-03-07', '1992-08-08', '2007-11-10', '1234hy', 2, NULL, NULL, 4, 502624.00, NULL, 2, 6480.00, 1, 0, 0, 'Doloremque impedit sunt voluptas accusamus quas.', 'Delectus minus ratione eligendi voluptas.', 116, 0, NULL);
INSERT INTO `propiedad` VALUES (183, 1, '123kt112t1s235', 'k1u23ea22y34l', 'Suite 799', 752, 484, 0, 4029280.00, 6973952.00, 8894440.00, 7191449.00, 2927296.00, '2003-12-06', '1991-04-19', '1976-12-21', '1988-07-17', '2017-07-26', '1982-10-03', '1990-05-29', '2012-12-13', '1976-09-02', '1234dy', 1, NULL, NULL, 7, 829635.00, NULL, 5, 9199.00, 0, 1, 0, 'Ea assumenda placeat voluptas rem quidem cumque.', 'Minus vitae tenetur doloribus architecto.', 161, 1, NULL);
INSERT INTO `propiedad` VALUES (184, 1, '123zk112e1e235', 'b1n23fo22e34i', 'Apt. 653', 988, 450, 0, 9809235.00, 1072183.00, 4837486.00, 8145233.00, 6003847.00, '1971-02-06', '1996-05-05', '2019-06-11', '1983-12-01', '1980-04-03', '2013-03-12', '2012-10-22', '2011-11-13', '2000-01-07', '1234dg', 5, NULL, NULL, 5, 760080.00, NULL, 2, 7494.00, 1, 0, 0, 'Quos pariatur repudiandae dolorem.', 'Ipsa consequatur illo repudiandae natus incidunt.', 190, 1, NULL);
INSERT INTO `propiedad` VALUES (185, 1, '123ep112t1o235', 's1n23ou22x34x', 'Suite 774', 948, 104, 1, 5149629.00, 3744116.00, 1573390.00, 9836424.00, 9843515.00, '2002-10-16', '2004-09-07', '1984-01-20', '1981-08-13', '1999-11-24', '1988-06-19', '1992-02-07', '2019-05-02', '1988-11-09', '1234en', 3, NULL, NULL, 2, 155556.00, NULL, 1, 7181.00, 0, 1, 0, 'Id assumenda vel consequatur illum sed minima earum.', 'Eveniet nobis rerum molestias expedita libero excepturi sint aliquam.', 192, 0, NULL);
INSERT INTO `propiedad` VALUES (186, 1, '123lr112z1r235', 'v1l23xz22u34t', 'Apt. 761', 499, 295, 0, 2692227.00, 6022751.00, 2681718.00, 8573984.00, 1493857.00, '2009-05-03', '1971-07-21', '1977-02-08', '1999-07-08', '1980-06-02', '1994-01-06', '1976-03-15', '2014-12-19', '1984-11-20', '1234sy', 2, NULL, NULL, 2, 601809.00, NULL, 2, 8373.00, 0, 1, 0, 'Nihil animi quos omnis.', 'Eum rem doloribus dolorem sapiente consectetur ullam autem.', 179, 0, NULL);
INSERT INTO `propiedad` VALUES (187, 1, '123xn112m1s235', 'i1c23oa22n34y', 'Apt. 525', 402, 162, 1, 2328969.00, 4717633.00, 3008719.00, 9953813.00, 3148942.00, '1995-08-28', '2005-02-08', '2004-07-08', '1989-03-18', '1994-10-08', '1995-06-20', '1971-05-15', '1999-11-26', '1978-12-21', '1234ne', 6, NULL, NULL, 7, 239814.00, NULL, 4, 5871.00, 1, 1, 0, 'Itaque asperiores fugiat eius sed vel omnis cum.', 'Reiciendis beatae sit aliquid tempora similique beatae ipsa.', 142, 1, NULL);
INSERT INTO `propiedad` VALUES (188, 1, '123yv112q1g235', 'b1p23cb22r34a', 'Apt. 626', 696, 439, 0, 496147.00, 2540067.00, 3454727.00, 8289173.00, 6163676.00, '2019-06-27', '1998-09-29', '1970-06-06', '2019-01-25', '1972-11-27', '1973-12-19', '2017-05-15', '1992-07-10', '1976-01-01', '1234su', 3, NULL, NULL, 3, 759948.00, NULL, 6, 6320.00, 0, 1, 0, 'Aut soluta nemo natus excepturi nostrum iure et dolore.', 'Accusantium nam magnam ut itaque.', 115, 1, NULL);
INSERT INTO `propiedad` VALUES (189, 1, '123kd112a1y235', 'e1r23vi22u34r', 'Apt. 969', 835, 294, 0, 3329831.00, 8798872.00, 8987942.00, 2867020.00, 5878527.00, '1999-05-23', '1986-05-14', '2014-12-08', '1996-06-26', '2010-02-16', '1972-12-12', '1992-02-11', '1975-04-06', '2008-03-19', '1234oo', 6, NULL, NULL, 2, 727248.00, NULL, 5, 1218.00, 1, 0, 1, 'Ea et voluptatem eligendi.', 'Amet quia corporis est sint.', 150, 0, NULL);
INSERT INTO `propiedad` VALUES (190, 1, '123jk112r1z235', 'y1j23ms22d34y', 'Apt. 567', 539, 383, 0, 103007.00, 5160683.00, 5537341.00, 4366673.00, 4356776.00, '2009-06-27', '1978-06-05', '1982-01-01', '1991-11-17', '2005-11-08', '2005-05-25', '2009-09-12', '2009-06-10', '2010-04-06', '1234qd', 3, NULL, NULL, 5, 191597.00, NULL, 3, 4788.00, 0, 0, 1, 'Quod accusantium perspiciatis est omnis ipsum ea.', 'Ut id ut vel voluptatem.', 113, 0, NULL);
INSERT INTO `propiedad` VALUES (191, 1, '123dh112o1j235', 'h1z23na22r34b', 'Apt. 965', 510, 158, 1, 8733426.00, 3032986.00, 9496378.00, 4791614.00, 9852524.00, '2012-11-15', '1991-02-03', '1978-11-30', '2011-01-05', '1998-05-04', '1999-10-11', '1972-12-04', '2018-03-16', '1988-06-06', '1234lr', 4, NULL, NULL, 2, 720837.00, NULL, 4, 8432.00, 1, 1, 1, 'Possimus architecto mollitia sequi quia omnis.', 'Dolor aliquid aliquid velit magnam ipsa ducimus consequatur ut.', 129, 0, NULL);
INSERT INTO `propiedad` VALUES (192, 1, '123hn112p1c235', 'o1y23ta22l34f', 'Apt. 229', 425, 199, 0, 6297035.00, 3574999.00, 8338327.00, 9801628.00, 9286410.00, '2011-02-17', '1982-02-01', '2007-06-06', '1978-09-08', '1991-04-29', '1982-12-08', '1970-04-28', '1994-03-29', '1993-09-08', '1234et', 1, NULL, NULL, 8, 778386.00, NULL, 3, 7053.00, 1, 1, 0, 'Ipsam voluptatem est molestiae amet recusandae quo a.', 'Cum officiis delectus et deserunt.', 180, 1, NULL);
INSERT INTO `propiedad` VALUES (193, 1, '123ce112h1l235', 'o1y23sa22z34u', 'Suite 238', 628, 222, 0, 895194.00, 4082009.00, 3636132.00, 4437710.00, 6524150.00, '1998-11-19', '2013-12-13', '1980-08-26', '2017-12-28', '2019-09-21', '2007-07-25', '2014-09-06', '1988-08-21', '1984-12-25', '1234mw', 1, NULL, NULL, 4, 726171.00, NULL, 3, 1627.00, 0, 1, 1, 'Aliquam iusto nihil est provident aut unde inventore.', 'Est aliquam architecto sint aliquid veniam a sint accusamus.', 171, 1, NULL);
INSERT INTO `propiedad` VALUES (194, 1, '123pg112p1t235', 'z1g23kl22x34a', 'Suite 992', 528, 497, 0, 1568081.00, 9249931.00, 7242164.00, 7502794.00, 8983368.00, '1973-04-07', '2009-09-14', '1996-09-11', '1976-09-08', '1997-11-11', '2018-11-02', '1974-11-12', '1985-03-28', '2004-01-16', '1234kz', 3, NULL, NULL, 5, 476961.00, NULL, 3, 6216.00, 1, 0, 1, 'Quis eveniet debitis necessitatibus qui.', 'Quasi enim doloremque et et sunt.', 130, 1, NULL);
INSERT INTO `propiedad` VALUES (195, 1, '123bt112g1t235', 'q1n23bj22r34n', 'Suite 888', 438, 106, 1, 4295971.00, 2812043.00, 3948009.00, 5893369.00, 3739600.00, '1978-12-18', '1972-06-25', '1986-05-16', '1983-05-07', '1996-11-15', '2010-02-05', '1988-03-28', '1971-03-16', '1973-05-12', '1234vh', 3, NULL, NULL, 8, 717520.00, NULL, 1, 5317.00, 1, 1, 0, 'Architecto molestias nesciunt animi excepturi.', 'Molestiae non sunt officiis laborum quasi rerum.', 186, 0, NULL);
INSERT INTO `propiedad` VALUES (196, 1, '123rb112q1y235', 'c1v23vm22m34h', 'Suite 854', 905, 337, 0, 707219.00, 9346321.00, 9665269.00, 7697454.00, 4282197.00, '1980-06-11', '2013-09-22', '2003-03-26', '1981-08-31', '1975-11-01', '2006-04-23', '1974-10-24', '2001-05-06', '1997-06-04', '1234bl', 1, NULL, NULL, 3, 887062.00, NULL, 2, 5289.00, 1, 0, 0, 'Aut deserunt voluptatem sit error libero magnam temporibus.', 'Iure odio occaecati sint qui.', 172, 0, NULL);
INSERT INTO `propiedad` VALUES (197, 1, '123tm112m1g235', 'e1v23xp22h34o', 'Suite 033', 691, 174, 1, 6561909.00, 4140328.00, 8410647.00, 9863536.00, 7751081.00, '1999-02-15', '2003-05-10', '2001-11-16', '1983-04-05', '1976-03-22', '2012-11-17', '2006-05-06', '2016-01-02', '1986-09-12', '1234sd', 1, NULL, NULL, 3, 40396.00, NULL, 6, 4869.00, 1, 0, 1, 'Voluptas animi aut sed quidem tempora aperiam porro.', 'Magnam magnam reprehenderit dignissimos et asperiores.', 176, 0, NULL);
INSERT INTO `propiedad` VALUES (198, 1, '123pc112v1p235', 'r1y23pu22b34u', 'Suite 858', 376, 321, 1, 9635396.00, 2231197.00, 5582252.00, 3959655.00, 6539680.00, '2009-02-14', '1997-05-06', '1992-06-21', '2008-09-24', '2014-09-02', '1997-01-05', '1977-03-14', '1997-04-16', '1984-07-19', '1234nb', 1, NULL, NULL, 1, 199933.00, NULL, 5, 7608.00, 1, 1, 0, 'Aut similique rerum ut reprehenderit provident.', 'Est tempora impedit eum nesciunt.', 173, 0, NULL);
INSERT INTO `propiedad` VALUES (199, 1, '123bz112v1a235', 'v1o23ls22n34n', 'Apt. 742', 406, 236, 0, 9726120.00, 2807199.00, 1253512.00, 1854363.00, 1601463.00, '1990-09-19', '1985-03-28', '2017-05-06', '1999-07-25', '1973-09-16', '1979-11-20', '1983-03-19', '2007-08-27', '1976-05-31', '1234yk', 4, NULL, NULL, 7, 761600.00, NULL, 6, 3007.00, 0, 0, 1, 'Quasi maiores blanditiis perferendis fugiat aut.', 'Nobis officia ratione adipisci.', 103, 0, NULL);
INSERT INTO `propiedad` VALUES (200, 1, '123lt112k1e235', 'e1m23qi22z34k', 'Suite 895', 677, 155, 0, 4030139.00, 8752921.00, 1753326.00, 8891274.00, 2583434.00, '2015-08-07', '2003-08-24', '2009-11-30', '1986-01-18', '2016-11-10', '2001-01-25', '2009-04-24', '1997-08-05', '2019-04-03', '1234iq', 1, NULL, NULL, 4, 164359.00, NULL, 4, 8545.00, 1, 1, 1, 'Pariatur quae non rem et tenetur quisquam.', 'Reprehenderit quas porro odio magnam suscipit.', 155, 1, NULL);
INSERT INTO `propiedad` VALUES (201, 1, 'asdf', 'asdf', 'asdf', 123123, 123123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 101, NULL, NULL);
INSERT INTO `propiedad` VALUES (202, 1, '23452345', '2345', '23452345', 23452435, 23452345, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 204, NULL, NULL);
INSERT INTO `propiedad` VALUES (203, 1, 'as45234', 'asdf2345', '2345', 1234, 123412, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 205, NULL, NULL);
INSERT INTO `propiedad` VALUES (204, 1, 'sdg3452', '23452345', '2345235', 23452345, 23452345, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 206, NULL, NULL);
INSERT INTO `propiedad` VALUES (205, 1, 'asdf', 'asdf', 'asdf', 12312312, 123123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 207, NULL, NULL);
INSERT INTO `propiedad` VALUES (206, 1, 'asdfasf', 'asdfasdfasdf', 'asdfasdf', 13241234, 1234124, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 208, NULL, NULL);
INSERT INTO `propiedad` VALUES (207, 1, 'asdfas', 'dasdfasdf', '12341243', 12341234, 12341234, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 209, NULL, NULL);
INSERT INTO `propiedad` VALUES (208, 1, 'asdfasd', 'asdfasdf', 'asdf', 12341234, 1231234, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 210, NULL, NULL);
INSERT INTO `propiedad` VALUES (209, 1, 'adsf345', 'sdfgs34534', '312312', 1000, 1000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 212, NULL, NULL);
INSERT INTO `propiedad` VALUES (210, 1, 'adsf345', 'sdfgs34534', '312312', 1000, 1000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 213, NULL, NULL);
INSERT INTO `propiedad` VALUES (211, 1, '212342143', '1234124', '123', 10000, 100000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 214, NULL, NULL);
INSERT INTO `propiedad` VALUES (212, 1, 'asdfasdf', 'sdf23423', '213', 10000, 123123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 215, NULL, NULL);
INSERT INTO `propiedad` VALUES (213, 1, 'asdf453', '3453', 'casa 12312', 10000, 10000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 216, NULL, NULL);
INSERT INTO `propiedad` VALUES (214, 1, 'qewrqe12', 'asdfas2232', '123', 10000, 10000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 217, NULL, NULL);
INSERT INTO `propiedad` VALUES (215, 1, '4123124', '1231234', '14sf', 10000, 10000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 218, NULL, NULL);
INSERT INTO `propiedad` VALUES (216, 1, '2323', '2323', '232k', 23323, 232323, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 219, NULL, NULL);
INSERT INTO `propiedad` VALUES (217, 1, '1234', '1234123', '12341234', 124124, 1234234, 1, NULL, NULL, NULL, NULL, NULL, '2019-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 5, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 220, NULL, NULL);
INSERT INTO `propiedad` VALUES (218, 1, 'Fol', 'Plan', 'Casa 10', 10000, 10000, 1, 5.00, 6.00, 1.00, 2.00, 0.00, '2019-11-18', '2019-11-13', '2019-11-14', '2019-11-14', NULL, '2019-11-22', '2019-11-14', '2019-11-15', '2019-11-14', 'REf', 1, NULL, NULL, 2, 3.00, 'asdf', 1, 4.00, 1, 1, 1, 'coments', 'asdfasdf', 226, 1, 1);
INSERT INTO `propiedad` VALUES (219, 1, 'adsf', 'asdf', '2341243', 1234124, 12341234, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 230, 0, 0);
INSERT INTO `propiedad` VALUES (220, 1, '3242', '234', '', 234, 234, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 231, 0, 0);
INSERT INTO `propiedad` VALUES (221, 1, '123123', '12312', '', 3000, 2000, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 232, 0, 0);
INSERT INTO `propiedad` VALUES (222, 1, 'asdfasd', 'asdfadf', '', 2000, 1000, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 233, 0, 0);
INSERT INTO `propiedad` VALUES (223, 1, '111', 'P111', 'U01', 2000, 1000, 1, 1.00, 2.00, 1.00, 2.00, 3.00, '2019-11-01', '2019-11-01', '2019-11-02', '2019-11-02', NULL, '2019-11-05', '2019-11-01', '2019-11-04', '2019-11-03', '#REF111', 1, NULL, NULL, 2, 3.00, 'Dato de Adjudicacion', 1, 4.00, 1, 1, 1, 'Comentarios', 'Anotaciones', 234, 1, 1);
INSERT INTO `propiedad` VALUES (224, 1, 'asdf', 'asdf', '', 2000, 1000, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdf', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 235, 0, 0);
INSERT INTO `propiedad` VALUES (225, 1, 'foliop', 'planop', '94d', 2000, 1000, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '#ref', 1, 18, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 236, 0, 0);
INSERT INTO `propiedad` VALUES (226, 1, 'asdf', 'asdf', 'aa', 2000, 299, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 237, 0, 0);
INSERT INTO `propiedad` VALUES (227, 1, 'asdf', 'asdf', '20i', 2000, 299, 1, 1.00, 2.00, 1.00, 2.00, 4.00, '2019-11-03', '2019-11-04', '2019-11-05', '2019-11-03', NULL, '2019-11-09', '2019-11-01', '2019-11-08', '2019-11-07', '#ref', 1, 19, NULL, 2, 3.00, 'dato', 1, 6.00, 1, 1, 1, 'Comentario', 'Ano', 238, 0, 1);
INSERT INTO `propiedad` VALUES (228, 1, '1231', '111', 'unidad22', 1000, 200, 1, 100000.00, 120000.00, 12000.00, 300000.00, 90000.00, '2019-12-10', '2019-12-01', '2019-12-03', '2019-12-02', NULL, NULL, '2019-12-01', NULL, NULL, 'REf123', 1, NULL, NULL, 2, 12.00, 'Datos', 1, 123123.00, 1, 0, 1, 'Comentarios', 'anotaciones', 239, 1, 0);
INSERT INTO `propiedad` VALUES (229, 1, '120', '120', '', 2000, 123, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dre', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 240, 0, 0);
INSERT INTO `propiedad` VALUES (230, 1, 'qweq', 'qwe', '', 1000, 123, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 2, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 241, 0, 0);
INSERT INTO `propiedad` VALUES (231, 1, '23k', '12312k', '', 1000, 200, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2019-12-01', NULL, NULL, NULL, NULL, '', 3, NULL, NULL, 3, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 242, 0, 0);
INSERT INTO `propiedad` VALUES (232, 1, '1213', '123123', '', 1000, 123, 1, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, '2019-12-01', NULL, NULL, NULL, NULL, '', 1, NULL, NULL, 1, 0.00, '', 1, 0.00, 0, 0, 0, '', '', 243, 0, 0);
INSERT INTO `propiedad` VALUES (233, 1, '23424', '234234', '', 1001, 200, 1, 1000.00, 600000.00, 0.00, 0.00, 2000000.00, '2019-12-02', NULL, NULL, NULL, '2019-12-02', NULL, NULL, NULL, '2019-12-04', '', 2, 22, NULL, 5, 0.00, '', 5, 0.00, 0, 0, 1, '', '', 244, 1, 1);
INSERT INTO `propiedad` VALUES (234, 1, 'adsf', 'asdfasdf', '', 2000, 120, 1, 0.00, 0.00, 0.00, 0.00, 1000000.00, NULL, NULL, NULL, '2019-12-10', '2019-12-02', '2019-12-11', '2019-12-03', '2019-12-03', '2019-12-03', '', 1, 23, NULL, 6, 0.00, '', 1, 0.00, 1, 0, 1, '', '', 245, 1, 1);
COMMIT;

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
-- Records of propiedad_tipo
-- ----------------------------
BEGIN;
INSERT INTO `propiedad_tipo` VALUES (1, 'Apartamento');
INSERT INTO `propiedad_tipo` VALUES (2, 'Local Comercial');
INSERT INTO `propiedad_tipo` VALUES (3, 'Residencia');
INSERT INTO `propiedad_tipo` VALUES (4, 'Residencia de Playa');
INSERT INTO `propiedad_tipo` VALUES (5, 'Terreno');
INSERT INTO `propiedad_tipo` VALUES (6, 'Condominio');
COMMIT;

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
-- Records of provincia
-- ----------------------------
BEGIN;
INSERT INTO `provincia` VALUES (1, 'San José', 1);
INSERT INTO `provincia` VALUES (2, 'Alajuela', 1);
INSERT INTO `provincia` VALUES (3, 'Cartago', 1);
INSERT INTO `provincia` VALUES (4, 'Heredia', 1);
INSERT INTO `provincia` VALUES (5, 'Guanacaste', 1);
INSERT INTO `provincia` VALUES (6, 'Puntarenas', 1);
INSERT INTO `provincia` VALUES (7, 'Limón', 1);
INSERT INTO `provincia` VALUES (8, 'Bocas del Toro', 2);
INSERT INTO `provincia` VALUES (9, 'Chiriquí', 2);
INSERT INTO `provincia` VALUES (10, 'Coclé', 2);
INSERT INTO `provincia` VALUES (11, 'Colón', 2);
INSERT INTO `provincia` VALUES (12, 'Darién', 2);
INSERT INTO `provincia` VALUES (13, 'Herrera', 2);
INSERT INTO `provincia` VALUES (14, 'Los Santos', 2);
INSERT INTO `provincia` VALUES (15, 'Panamá', 2);
INSERT INTO `provincia` VALUES (16, 'Panamá Oeste', 2);
INSERT INTO `provincia` VALUES (17, 'Veraguas', 2);
COMMIT;

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
-- Records of sociedad
-- ----------------------------
BEGIN;
INSERT INTO `sociedad` VALUES (1, '2019900992', ' Banco Nacional de Panamá', '2019-01-01', 1, 'Banco de Panama');
COMMIT;

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
  `fecha_cambio_estado` date DEFAULT NULL,
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
-- Records of vehiculo
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo` VALUES (1, 1, NULL, 'u937n05e1', '', '500366', NULL, 19, 9, NULL, 'rfv7493140407950673', 'ute4732x12624067659', 2004, 1786, 'blanco', ' 7 personas', 64057378, 73207599, 9353226, 6912844, '1991-09-08', '1970-10-28', 3, 7, 1258, 1, 1, 2, 0, NULL, NULL, '1975-11-22', 'Doloremque sunt cupiditate ut et quibusdam delectus nesciunt minima aut temporibus adipisci consequuntur reprehenderit.', 'Voluptatem qui perspiciatis nisi tempore sint nihil et et est ut consequuntur aut iure officiis porro quia.', 2, NULL);
INSERT INTO `vehiculo` VALUES (2, 1, NULL, 'y697l54s1', '', '486376', NULL, 54, 9, NULL, 'gju7876609126005559', 'qws1998t95257220766', 2016, 1841, 'rojo', ' 5 personas', 45465210, 80467252, 7637230, 4556288, '2013-11-22', '1999-02-28', 5, 6, 1581, 1, 0, 4, 1, NULL, NULL, '1984-12-02', 'Neque minima aut qui et magnam enim id commodi qui ipsum a sunt.', 'Enim totam temporibus cupiditate delectus nemo eius tenetur rerum consequuntur consectetur eius voluptates quae.', 2, NULL);
INSERT INTO `vehiculo` VALUES (3, 1, NULL, 'p655m26y6', '', '753412', NULL, 32, 14, NULL, 'sce4131167727037798', 'szv8206y61115818159', 2017, 1884, 'verde', ' 5 personas', 43970114, 75085952, 9000917, 5374690, '2013-08-10', '2010-07-10', 7, 6, 1727, 1, 0, 4, 0, NULL, NULL, '1985-02-18', 'Porro ipsam quis autem fugit et sed.', 'Amet tenetur aspernatur sunt alias et et et omnis omnis est eius nihil velit ipsa labore.', 2, NULL);
INSERT INTO `vehiculo` VALUES (4, 1, NULL, 't996d74w4', '', '812283', NULL, 7, 1, NULL, 'uqs3650736263269227', 'tca5384k41168841169', 2018, 1236, 'morado', '4 personas', 85043954, 67601964, 6933023, 5772044, '1984-04-07', '2016-06-11', 6, 7, 1947, 3, 0, 3, 1, NULL, NULL, '1976-05-23', 'Aut cumque natus eaque dicta cum velit omnis eligendi excepturi cupiditate.', 'Molestiae omnis aut nulla et architecto illo ex harum officiis sit nobis commodi nesciunt nostrum eum placeat sapiente delectus rerum.', 1, NULL);
INSERT INTO `vehiculo` VALUES (5, 1, NULL, 'b689p02q8', '', '574990', NULL, 72, 6, NULL, 'fco8978749173712982', 'dfx6446d55128830372', 2004, 1785, 'celeste', ' 8 personas', 46833701, 82577237, 7345618, 1520266, '2016-01-10', '1992-11-11', 4, 4, 1164, 2, 1, 2, 1, NULL, NULL, '1994-10-31', 'Dolor vel inventore est saepe dolores soluta cum incidunt doloremque.', 'Ut a ducimus aliquid delectus est voluptatum et consequatur ducimus consequatur quasi laborum qui alias.', 1, NULL);
INSERT INTO `vehiculo` VALUES (6, 1, NULL, 'u090z61m7', '', '909473', NULL, 64, 5, NULL, 'drq4571766321829172', 'qyi4788z37071905276', 2011, 1413, 'celeste', '4 personas', 93461284, 20567875, 5860419, 4184876, '1979-06-19', '1996-10-09', 4, 6, 1844, 1, 0, 4, 0, NULL, NULL, '1979-04-25', 'Voluptas consectetur vero illum aut veniam impedit est expedita quisquam laborum quod dicta eligendi.', 'Et sit perspiciatis commodi quibusdam voluptate ut eum voluptatem asperiores rerum ut fuga velit labore.', 1, NULL);
INSERT INTO `vehiculo` VALUES (7, 1, NULL, 'c885p00u4', '', '243609', NULL, 67, 1, NULL, 'yek0208625188021698', 'ofy3299m04823081577', 2001, 1953, 'amarillo', '4 personas', 31151861, 96791647, 8889028, 5567029, '1991-05-20', '1989-01-18', 4, 7, 1382, 3, 1, 2, 0, NULL, NULL, '1975-05-20', 'Non reiciendis ipsa vel consectetur doloremque hic vitae soluta tenetur vel quae fuga.', 'Ex corrupti autem tempora voluptas libero veritatis aliquid necessitatibus dolore.', 1, NULL);
INSERT INTO `vehiculo` VALUES (8, 1, NULL, 'x926o54n5', '', '402228', NULL, 26, 9, NULL, 'nsg5139120248847878', 'zau9167v84360425402', 2018, 1435, 'celeste', ' 8 personas', 10593513, 59157533, 9581030, 4554573, '1982-07-13', '2000-01-16', 3, 5, 1709, 1, 0, 2, 0, NULL, NULL, '1987-05-19', 'Nobis ducimus ut sit saepe eveniet est inventore.', 'Facere voluptas est tempore debitis iusto nihil officia animi officia voluptatum nisi.', 2, NULL);
INSERT INTO `vehiculo` VALUES (9, 1, NULL, 'f357r64l1', '', '235855', NULL, 30, 3, NULL, 'rof9505421492033402', 'ifh0900t04454221981', 2000, 1454, 'rojo', ' 5 personas', 44121691, 11082284, 4774258, 8572036, '2017-08-18', '1984-02-24', 3, 4, 1868, 1, 1, 4, 0, NULL, NULL, '1974-08-21', 'Minus velit sit quis est necessitatibus odio.', 'Voluptates reiciendis reiciendis sint est autem iusto sunt quasi et culpa asperiores possimus ipsam.', 2, NULL);
INSERT INTO `vehiculo` VALUES (10, 1, NULL, 'n715x13t4', '', '580997', NULL, 21, 6, NULL, 'vup2076465789511220', 'ftm6354k74114322736', 2012, 1852, 'verde', ' 8 personas', 98101496, 73815546, 5307450, 7147344, '2007-07-06', '2002-05-26', 5, 5, 1880, 1, 1, 3, 0, NULL, NULL, '1989-11-17', 'Cumque optio sapiente beatae nulla rem quos placeat perferendis dolores saepe fugiat dolores.', 'Est ut et officiis mollitia aut perferendis temporibus provident necessitatibus veniam porro molestiae sunt qui sed voluptatem magni mollitia id odit est.', 1, NULL);
INSERT INTO `vehiculo` VALUES (11, 1, NULL, 'y721w21c2', '', '474264', NULL, 14, 4, NULL, 'jtr1825594593551544', 'hvs3412m05739876825', 2009, 1783, 'blanco', '4 personas', 24564658, 16678729, 2862581, 8815777, '1998-03-03', '1985-11-18', 4, 6, 1420, 2, 0, 4, 0, NULL, NULL, '1986-04-08', 'Explicabo fugiat magnam et a minima voluptas iste ut sit.', 'Dolores velit est quo sed ipsum enim qui harum asperiores qui repudiandae et natus in beatae sapiente blanditiis itaque.', 2, NULL);
INSERT INTO `vehiculo` VALUES (12, 1, NULL, 'l028y62o1', '', '640669', NULL, 24, 7, NULL, 'any0606381161119260', 'bua6400b11774249642', 2001, 1517, 'celeste', ' 5 personas', 92778078, 13486204, 6026242, 2185148, '1993-11-09', '1999-05-26', 7, 4, 1224, 2, 1, 4, 0, NULL, NULL, '1988-05-25', 'Non voluptatem asperiores eaque quo laborum ad qui corporis assumenda id.', 'Cum autem molestias aut provident impedit sit maxime nam architecto omnis facilis corrupti culpa eos sint totam temporibus.', 1, NULL);
INSERT INTO `vehiculo` VALUES (13, 1, NULL, 'y371f38t1', '', '869228', NULL, 84, 2, NULL, 'chy9887935729413887', 'kgo7858o30874996008', 2017, 1634, 'azul', ' 5 personas', 15293637, 25645980, 9509117, 3893026, '1978-09-06', '1998-06-13', 1, 6, 1198, 2, 1, 2, 0, NULL, NULL, '1996-03-06', 'Provident hic earum animi quia et voluptatem et commodi adipisci saepe.', 'Non consequuntur consequatur optio dolores et quas esse et ipsum quia sed consequuntur.', 2, NULL);
INSERT INTO `vehiculo` VALUES (14, 1, NULL, 'l268d99t1', '', '472525', NULL, 98, 4, NULL, 'wpj6869270797068566', 'ejk0662r35082865906', 2010, 1914, 'celeste', ' 8 personas', 26415337, 48570082, 7315860, 7052919, '1973-06-29', '2011-08-02', 8, 7, 1775, 4, 1, 2, 1, NULL, NULL, '1992-01-17', 'Perspiciatis quia dolorem velit ducimus ea aut ut optio labore vitae.', 'Et nobis qui qui aut sint et assumenda fugiat suscipit consequatur magnam eum ratione eos ab.', 1, NULL);
INSERT INTO `vehiculo` VALUES (15, 1, NULL, 'p255g13x2', '', '476923', NULL, 15, 5, NULL, 'mlf5561093421067537', 'qqg7254h50283082485', 2011, 1547, 'celeste', '4 personas', 11946038, 64867414, 8421085, 9081947, '1979-09-01', '2003-11-07', 2, 5, 1392, 1, 1, 4, 1, NULL, NULL, '1996-12-19', 'Nulla quis voluptatem voluptas voluptatem ab maxime iusto iste non deserunt.', 'Nam quis quidem aliquam incidunt velit sint aut repellat at molestiae ut repudiandae fugit excepturi dolorem.', 2, NULL);
INSERT INTO `vehiculo` VALUES (16, 1, NULL, 'o882b12j3', '', '283464', NULL, 53, 1, NULL, 'fha9254091904944868', 'mbe6154a77274161646', 2011, 1806, 'amarillo', ' 7 personas', 64306229, 99686875, 2103595, 7690689, '1970-10-07', '1975-03-08', 1, 7, 1529, 4, 0, 2, 0, NULL, NULL, '2002-02-04', 'Perspiciatis id mollitia maxime sit at fugiat magnam alias odio maiores asperiores et.', 'Numquam eos ut consequatur accusamus molestiae quidem facere ipsa omnis cumque aut velit dignissimos id et voluptas est assumenda et.', 1, NULL);
INSERT INTO `vehiculo` VALUES (17, 1, NULL, 's897s34q7', '', '462941', NULL, 56, 12, NULL, 'swy6094145027268365', 'ysb1954s56711325831', 2010, 1644, 'azul', '4 personas', 97872467, 64289877, 7287441, 8463030, '1992-08-26', '2002-05-29', 6, 6, 1715, 2, 1, 4, 1, NULL, NULL, '1972-04-25', 'Quidem voluptatem quo totam fugit commodi dicta neque.', 'Consequuntur dolorum vel hic facilis autem beatae quasi id eos consequatur non possimus unde ut veritatis iure aliquid eos nisi.', 2, NULL);
INSERT INTO `vehiculo` VALUES (18, 1, NULL, 'b291q72w6', '', '915124', NULL, 115, 2, NULL, 'xhm5481536440489205', 'xaq0341q10236481835', 2004, 1880, 'negro', ' 8 personas', 42658071, 34366965, 6661687, 7601467, '1995-05-26', '1974-02-22', 8, 4, 1056, 4, 0, 3, 0, NULL, NULL, '1997-12-07', 'Rerum libero ut fuga est blanditiis quas.', 'Quod repudiandae quidem provident ratione ut corrupti sed sint iusto consequatur ut.', 2, NULL);
INSERT INTO `vehiculo` VALUES (19, 1, NULL, 'r597v30s3', '', '391776', NULL, 88, 2, NULL, 'nca6018270291082299', 'vvi4442o52204325012', 2017, 1738, 'morado', ' 5 personas', 78340395, 48994079, 9039790, 8984799, '1976-06-10', '1980-03-16', 5, 4, 1226, 3, 1, 4, 1, NULL, NULL, '2018-09-15', 'Aspernatur eos beatae sunt perspiciatis voluptate ex in suscipit doloribus animi atque error.', 'Praesentium doloribus accusantium iure ratione doloribus animi natus doloribus voluptas reprehenderit quae.', 1, NULL);
INSERT INTO `vehiculo` VALUES (20, 1, NULL, 'h088k13n8', '', '618043', NULL, 99, 5, NULL, 'vnw6626581593767267', 'pkg4789k97758110538', 2012, 1686, 'verde', ' 7 personas', 71201646, 53623398, 1814403, 6463506, '1988-11-11', '1975-08-11', 1, 8, 1750, 2, 1, 4, 0, NULL, NULL, '2002-08-30', 'Et ea amet amet quisquam voluptate enim culpa natus doloribus.', 'Autem omnis et eos asperiores labore qui rem vel minus sequi sequi maxime et quibusdam ut explicabo ut nihil a aperiam.', 2, NULL);
INSERT INTO `vehiculo` VALUES (21, 1, NULL, 'i109p59b9', '', '762468', NULL, 95, 8, NULL, 'gll5448505917234233', 'egi0861x45779806644', 2002, 1725, 'blanco', ' 8 personas', 87823561, 81855990, 7427384, 8375244, '1991-07-28', '1999-11-05', 1, 7, 1830, 4, 1, 2, 0, NULL, NULL, '1989-12-29', 'Ducimus quae occaecati ab quia similique occaecati accusantium aut accusantium.', 'Expedita odit dolore deleniti et assumenda omnis quia sint enim cum.', 2, NULL);
INSERT INTO `vehiculo` VALUES (22, 1, NULL, 'l462y13j9', '', '711173', NULL, 44, 9, NULL, 'ibg3843639853103486', 'ayh0414h63569294344', 2014, 1415, 'negro', ' 5 personas', 21691490, 52740540, 2437694, 9666005, '1973-06-19', '1997-05-13', 1, 4, 1626, 4, 0, 2, 0, NULL, NULL, '2013-07-29', 'Qui laboriosam sit fuga eos illum totam aliquid quisquam et voluptatem ut ea.', 'Dolores veritatis fugiat aut aspernatur quia cumque et in occaecati unde facere ipsum sint laboriosam.', 1, NULL);
INSERT INTO `vehiculo` VALUES (23, 1, NULL, 'p299q75n0', '', '128985', NULL, 98, 15, NULL, 'qve5652056213615775', 'aff3749r72332403518', 2017, 1278, 'negro', ' 7 personas', 64175496, 23275518, 2272877, 6127641, '1980-03-07', '2009-03-31', 4, 6, 1189, 4, 1, 2, 0, NULL, NULL, '1976-03-28', 'Saepe id culpa quasi velit aut ullam aut.', 'Ut vel architecto minus nihil non labore autem minima sed necessitatibus porro error cupiditate qui sunt corrupti perferendis voluptatem voluptas corporis aliquid repellendus.', 1, NULL);
INSERT INTO `vehiculo` VALUES (24, 1, NULL, 'g529k76c8', '', '685464', NULL, 57, 10, NULL, 'caq5476199062019091', 'hsg7928j95740117450', 2009, 1298, 'azul', ' 7 personas', 12437591, 71748324, 1453575, 9338220, '1985-04-18', '2019-07-29', 4, 5, 1091, 1, 1, 2, 0, NULL, NULL, '2008-04-30', 'Voluptatem quos fugiat omnis dolor non architecto repellendus exercitationem nam et omnis et sed.', 'Reiciendis excepturi aspernatur natus provident vitae fugiat consequatur consequatur et laboriosam consequatur dolorem in ut minus.', 1, NULL);
INSERT INTO `vehiculo` VALUES (25, 1, NULL, 'g351b52k5', '', '856244', NULL, 46, 13, NULL, 'lac3319073977800158', 'gcc6027i09427720748', 2012, 1707, 'amarillo', ' 5 personas', 89340308, 63604590, 9876697, 7515187, '1996-07-30', '1982-12-18', 8, 7, 1941, 2, 0, 2, 0, NULL, NULL, '1988-10-30', 'Ad modi voluptates cum dolorem inventore itaque aperiam.', 'Nisi et eligendi unde ipsam quo cumque nesciunt dolores est sunt sint nulla.', 1, NULL);
INSERT INTO `vehiculo` VALUES (26, 1, NULL, 'r337l96g1', '', '849062', NULL, 96, 9, NULL, 'bdh1195551016287935', 'fay3867x89423107814', 2000, 1529, 'negro', ' 7 personas', 70936198, 14972491, 7217544, 7025245, '2018-08-04', '2009-11-26', 6, 4, 1289, 1, 0, 4, 0, NULL, NULL, '1998-02-01', 'Natus quia sed distinctio tenetur molestiae illum occaecati quia ullam.', 'Nemo aut et voluptates delectus et ut rerum officiis magni mollitia consequuntur in officia.', 1, NULL);
INSERT INTO `vehiculo` VALUES (27, 1, NULL, 'z666z13x4', '', '616846', NULL, 107, 13, NULL, 'pqh0913543962186094', 'sfw2557w63645492801', 2016, 1238, 'blanco', '4 personas', 91198894, 39576927, 2376788, 3096862, '1976-03-22', '2009-06-12', 5, 4, 1663, 4, 1, 4, 1, NULL, NULL, '1971-01-19', 'Culpa numquam in quos qui in vel itaque.', 'Eveniet deleniti sit delectus voluptatem aliquid culpa odit voluptatem repudiandae quia doloremque nobis magni quasi consequuntur reprehenderit dicta.', 2, NULL);
INSERT INTO `vehiculo` VALUES (28, 1, NULL, 'g172s42p7', '', '193421', NULL, 13, 13, NULL, 'due7223451534350074', 'xfl1861d31049382261', 2001, 1406, 'verde', ' 7 personas', 12656374, 49050506, 4232282, 2103805, '1994-12-22', '2001-07-02', 5, 7, 1233, 4, 1, 4, 1, NULL, NULL, '1997-09-05', 'Quis nulla itaque deserunt non mollitia doloribus maxime eos veniam ipsum quis.', 'Eos enim velit odio nam molestias sed repellat distinctio ut nisi doloremque ipsum in magnam dolorem facere aliquid.', 1, NULL);
INSERT INTO `vehiculo` VALUES (29, 1, NULL, 'f567d96r6', '', '919188', NULL, 104, 9, NULL, 'jsr9804803863786428', 'nhb6078x05452835762', 2003, 1311, 'rojo', ' 8 personas', 84742928, 85673362, 4196354, 9067705, '2017-04-30', '1996-10-01', 7, 5, 1010, 3, 1, 4, 1, NULL, NULL, '1974-06-22', 'Expedita sit repellat nisi molestias ut molestiae et vel iste ad veniam delectus.', 'Possimus eos repellendus magni aperiam officia maxime iusto omnis exercitationem sed harum dolorem.', 1, NULL);
INSERT INTO `vehiculo` VALUES (30, 1, NULL, 's286y95c5', '', '178486', NULL, 43, 2, NULL, 'zbz2071790290752974', 'iui9879c97412602177', 2001, 1410, 'amarillo', '4 personas', 60580862, 11852678, 9469460, 2047060, '1977-07-30', '1983-08-13', 4, 5, 1863, 1, 0, 4, 1, NULL, NULL, '1990-11-19', 'Debitis quis laudantium non enim odit eaque modi vero.', 'Quia quis sunt sint cum dolorem corporis sed neque officia repellendus autem voluptatem voluptatibus.', 1, NULL);
INSERT INTO `vehiculo` VALUES (31, 1, NULL, 'a115m03m3', '', '035961', NULL, 39, 3, NULL, 'osv0844902439989733', 'kge8517s61334093126', 2011, 1779, 'azul', '4 personas', 49192510, 29554497, 6424626, 8659494, '2003-03-28', '1983-08-28', 3, 7, 1734, 2, 0, 3, 1, NULL, NULL, '2012-08-28', 'Dolor quam omnis necessitatibus nemo similique est accusamus officiis voluptate harum est repellendus.', 'Iste et ratione quos cumque est ducimus ut qui consequatur eligendi quo nemo soluta laborum sed expedita numquam debitis est aut quasi nihil.', 1, NULL);
INSERT INTO `vehiculo` VALUES (32, 1, NULL, 'p144c96z8', '', '636161', NULL, 92, 9, NULL, 'izf5137893377472198', 'uiv0364j00467574949', 2012, 1807, 'rojo', ' 8 personas', 89494578, 15394688, 5285661, 5019484, '2015-03-25', '2003-10-12', 7, 5, 1689, 2, 0, 4, 0, NULL, NULL, '2001-07-20', 'Rerum magnam enim dolore qui quis quas laudantium nulla.', 'Ipsam dolorem rem voluptas iste praesentium qui quasi dolorem at dolorem tempora at et tempora modi.', 1, NULL);
INSERT INTO `vehiculo` VALUES (33, 1, NULL, 'f980i11u1', '', '104198', NULL, 97, 13, NULL, 'zto5446591181894481', 'elu2553x63402083592', 2018, 1312, 'rojo', ' 7 personas', 72298381, 80758421, 5220785, 5502930, '1979-07-01', '1978-04-12', 7, 5, 1111, 1, 0, 4, 1, NULL, NULL, '2009-05-10', 'Sapiente esse quibusdam fuga facere accusamus eaque eligendi velit assumenda ut libero maxime laudantium.', 'Explicabo quia ipsa consequatur error est sequi qui voluptas aut eius est laboriosam eaque ut temporibus aut rerum voluptatem fugiat recusandae.', 1, NULL);
INSERT INTO `vehiculo` VALUES (34, 1, NULL, 'k035i28m9', '', '906442', NULL, 116, 12, NULL, 'ncz9385706186283632', 'nqk9624k92714813116', 2019, 1468, 'azul', ' 5 personas', 64576772, 56365841, 2746382, 8165539, '1985-03-14', '1977-01-24', 6, 7, 1262, 3, 0, 2, 0, NULL, NULL, '1994-04-24', 'Ad at aut dignissimos quos eum et.', 'Numquam molestiae magnam aut sunt dolore facilis eligendi enim ratione.', 2, NULL);
INSERT INTO `vehiculo` VALUES (35, 1, NULL, 'n041g18j5', '', '999068', NULL, 10, 10, NULL, 'ulb8475578229493646', 'yrn4929h92027151466', 2013, 1389, 'rojo', ' 5 personas', 51113178, 53938700, 7031856, 4164412, '2003-08-08', '1991-11-07', 4, 5, 1925, 2, 1, 4, 1, NULL, NULL, '2005-05-30', 'Vel eum sunt quis autem omnis quibusdam est odio quia voluptates vel velit id.', 'Qui ea quidem necessitatibus ut officiis voluptatibus eos porro eaque quo voluptates suscipit iure sapiente sunt.', 2, NULL);
INSERT INTO `vehiculo` VALUES (36, 1, NULL, 'h022w90g2', '', '896996', NULL, 92, 4, NULL, 'fas4045224051805655', 'yrb1069o30920139533', 2011, 1699, 'verde', '4 personas', 92018565, 54715342, 1974647, 7555478, '2002-03-14', '1989-05-25', 7, 8, 1458, 3, 0, 4, 1, NULL, NULL, '2015-06-02', 'Alias laudantium quibusdam suscipit voluptatem quo et facilis minus perferendis doloribus.', 'Molestias vero aliquam est incidunt modi quo veritatis nulla laborum consequatur.', 1, NULL);
INSERT INTO `vehiculo` VALUES (37, 1, NULL, 'z684u55q9', '', '127192', NULL, 20, 7, NULL, 'ynx6404817470060447', 'ppa9682m77845348653', 2008, 1652, 'amarillo', ' 7 personas', 41012488, 14448386, 9270992, 6274637, '1987-10-30', '1996-10-24', 2, 6, 1160, 2, 1, 4, 1, NULL, NULL, '1991-04-28', 'Corrupti quia odio incidunt quae rem sit consequatur ab officia.', 'Eum asperiores dolores quibusdam quibusdam voluptas rerum inventore numquam ab nesciunt.', 2, NULL);
INSERT INTO `vehiculo` VALUES (38, 1, NULL, 'l177v01o1', '', '229911', NULL, 6, 11, NULL, 'skf1654637938022396', 'ule3571a73730074938', 2004, 1373, 'rojo', ' 8 personas', 98939590, 15416946, 9533886, 3839965, '1991-11-19', '1992-02-07', 3, 6, 1213, 4, 1, 3, 0, NULL, NULL, '2017-01-09', 'Eius dolores recusandae impedit nihil quisquam asperiores sed.', 'Qui voluptas accusamus vitae dolores ducimus sapiente ea necessitatibus et numquam facilis molestiae accusamus quam eum vero sed nemo.', 2, NULL);
INSERT INTO `vehiculo` VALUES (39, 1, NULL, 'a390m37f1', '', '455768', NULL, 27, 2, NULL, 'uol2505589848772556', 'qsm1064e84681537632', 2017, 1402, 'amarillo', ' 8 personas', 62842527, 98699830, 8505494, 5917646, '1993-08-04', '1994-10-29', 3, 5, 1196, 4, 0, 2, 1, NULL, NULL, '1981-11-20', 'Architecto rerum deleniti laborum delectus cum velit rem aliquid sit.', 'Ut quis vel est voluptatem repellat provident sit id numquam ut sunt dolorum accusamus sapiente accusamus rem reprehenderit.', 1, NULL);
INSERT INTO `vehiculo` VALUES (40, 1, NULL, 'u470d00x2', '', '097171', NULL, 68, 11, NULL, 'rlu6422051238621807', 'ode4330z97746463912', 2002, 1555, 'verde', '4 personas', 75744932, 10937904, 2348276, 5707057, '1976-10-16', '1991-11-24', 5, 4, 1334, 1, 1, 4, 0, NULL, NULL, '1991-07-01', 'Sed sunt earum iste ab aut voluptatem est ut autem modi animi.', 'Molestias possimus ipsam ut magnam qui sequi at quis aut sunt voluptate officia odit illum dolores nihil.', 2, NULL);
INSERT INTO `vehiculo` VALUES (41, 1, NULL, 't094n76c7', '', '522336', NULL, 73, 2, NULL, 'xjv0145299800547534', 'akj2988f50437888150', 2015, 1873, 'azul', ' 5 personas', 71539498, 36336708, 1390844, 9463754, '1985-06-30', '1971-10-25', 7, 6, 1974, 4, 0, 3, 1, NULL, NULL, '2011-12-02', 'Beatae ut dolores doloribus quod dolorum doloremque similique cum aperiam dicta.', 'Autem excepturi nihil voluptatibus ut dolorum est distinctio voluptas voluptas aut velit occaecati.', 1, NULL);
INSERT INTO `vehiculo` VALUES (42, 1, NULL, 'x086i19v5', '', '504787', NULL, 104, 9, NULL, 'blt5910185891165469', 'eqs7834b27327081025', 2011, 1645, 'verde', ' 8 personas', 60283780, 57273879, 8968311, 4254914, '2005-06-01', '2018-11-28', 1, 6, 1952, 4, 0, 4, 0, NULL, NULL, '1999-05-24', 'At dolorum doloribus qui sequi aspernatur enim libero necessitatibus nostrum.', 'Culpa autem temporibus sit velit optio qui autem autem qui explicabo temporibus eligendi sint sit error neque.', 1, NULL);
INSERT INTO `vehiculo` VALUES (43, 1, NULL, 'y865k54y1', '', '136103', NULL, 51, 2, NULL, 'hmt5272038224045173', 'peu0172i56193949879', 2004, 1776, 'verde', '4 personas', 43515589, 29848712, 7878037, 1665735, '2011-04-16', '1990-10-21', 1, 6, 1655, 4, 1, 3, 1, NULL, NULL, '2003-12-20', 'Distinctio ut reprehenderit et odit provident ratione.', 'Sint consequatur quis quod inventore fugit excepturi qui qui facilis laborum ratione numquam error et.', 1, NULL);
INSERT INTO `vehiculo` VALUES (44, 1, NULL, 'z919z18e6', '', '950978', NULL, 113, 6, NULL, 'itz2273267994971713', 'ant4391x65435114844', 2002, 1747, 'blanco', ' 8 personas', 98281745, 39470874, 6104348, 1808435, '2010-03-23', '2009-04-17', 5, 7, 1646, 1, 1, 2, 1, NULL, NULL, '1984-06-25', 'Qui at illo reprehenderit ut culpa quia amet quisquam sunt illum et.', 'Et tenetur eveniet commodi qui id ea sint cum eos ut a voluptatem.', 2, NULL);
INSERT INTO `vehiculo` VALUES (45, 1, NULL, 's555p28m9', '', '369284', NULL, 79, 6, NULL, 'vxg0157008000880670', 'bwy5082w69208725133', 2015, 1744, 'morado', ' 8 personas', 43096489, 88598467, 3187768, 4422592, '2004-08-18', '2008-10-27', 8, 6, 1044, 3, 1, 3, 1, NULL, NULL, '2013-05-26', 'Explicabo commodi nesciunt ipsum dolor culpa assumenda dignissimos deleniti.', 'Odio debitis placeat rerum praesentium quidem exercitationem et soluta eos sit et.', 2, NULL);
INSERT INTO `vehiculo` VALUES (46, 1, NULL, 'l039z81m0', '', '524769', NULL, 18, 15, NULL, 'fxj1099191402875905', 'rpy5863h70833444433', 2001, 1330, 'blanco', '4 personas', 21058659, 62434323, 4655714, 3307677, '2016-08-22', '1991-05-05', 6, 8, 1571, 4, 0, 4, 0, NULL, NULL, '2005-07-27', 'In recusandae accusantium autem vel aut debitis quibusdam sed.', 'Voluptatem ea nihil explicabo totam deleniti et sed sed ipsum vel odit atque ratione molestiae.', 2, NULL);
INSERT INTO `vehiculo` VALUES (47, 1, NULL, 'r341j48u4', '', '223647', NULL, 28, 2, NULL, 'xym4598646060120137', 'jum7703k49101688279', 2006, 1904, 'amarillo', ' 5 personas', 64335827, 87696481, 8915072, 6597799, '2008-09-07', '1970-05-13', 6, 7, 1172, 2, 1, 3, 1, NULL, NULL, '1989-01-06', 'Atque et omnis laudantium consequuntur odio est quaerat.', 'Minima fugit nesciunt non reprehenderit voluptatem eligendi doloribus porro ea dicta aliquid omnis nihil perferendis autem.', 2, NULL);
INSERT INTO `vehiculo` VALUES (48, 1, NULL, 'u416t69f4', '', '188199', NULL, 107, 8, NULL, 'egh0203901012899356', 'fcz1398w28677474017', 2001, 1740, 'celeste', ' 5 personas', 66884098, 75588711, 6340386, 9831025, '1996-05-19', '2005-10-08', 6, 4, 1502, 1, 0, 4, 0, NULL, NULL, '2013-04-16', 'Et libero aliquam qui ea dolorum esse in.', 'Accusamus eum dicta eos eum hic ducimus harum rerum modi velit consequatur.', 1, NULL);
INSERT INTO `vehiculo` VALUES (49, 1, NULL, 'g661v04r5', '', '236990', NULL, 23, 11, NULL, 'gvq4821930113860329', 'uyh6410z44559040749', 2013, 1242, 'celeste', ' 8 personas', 50948128, 83962394, 8604219, 7006869, '1989-01-04', '1992-05-04', 4, 6, 1583, 1, 1, 3, 1, NULL, NULL, '1984-12-30', 'Nihil minima voluptatem pariatur quasi fugit distinctio possimus a est culpa quia debitis ut.', 'Quod quia mollitia quis tenetur aut est numquam hic dolore.', 2, NULL);
INSERT INTO `vehiculo` VALUES (50, 1, NULL, 'i721f52a0', '', '704580', NULL, 64, 12, NULL, 'icn0357965737860886', 'vdg8848r53954213566', 2013, 1326, 'blanco', ' 5 personas', 10799212, 33163088, 4381800, 1231598, '2004-04-13', '2007-12-30', 1, 7, 1818, 1, 1, 2, 0, NULL, NULL, '1987-11-16', 'Quia quam fuga quod perferendis quam delectus quo cupiditate aut dicta natus.', 'Ut sed dolorem voluptates enim quo odio laudantium totam in est occaecati dicta quia eveniet saepe facilis recusandae consequatur quibusdam sunt nam.', 2, NULL);
INSERT INTO `vehiculo` VALUES (51, 1, NULL, 's930k24f2', '', '386354', NULL, 16, 11, NULL, 'yjs3363446743312726', 'axa7677g34161156188', 2013, 1527, 'celeste', ' 7 personas', 51255758, 19270485, 8527676, 8422104, '1988-09-01', '1994-05-06', 5, 6, 1662, 1, 1, 4, 0, NULL, NULL, '1983-09-06', 'Qui animi qui numquam aut nihil quis eius at voluptas quaerat quia dolores consequatur.', 'Cum sed veniam at iusto blanditiis veritatis perspiciatis ex quia molestiae quia dicta voluptate debitis est iure sequi architecto.', 1, NULL);
INSERT INTO `vehiculo` VALUES (52, 1, NULL, 'r519w52m2', '', '849502', NULL, 42, 9, NULL, 'pwe4894653483318607', 'khx3536f40420751281', 2006, 1992, 'rojo', ' 8 personas', 45174089, 23486319, 5142928, 3338921, '2011-03-23', '2007-11-06', 5, 6, 1156, 4, 0, 3, 1, NULL, NULL, '2002-11-22', 'Nam ipsum delectus sequi inventore accusantium eos officiis animi quos eaque consectetur incidunt.', 'Facere repudiandae quisquam inventore iure ut minus ut et minima omnis quidem culpa tempora debitis amet dolor.', 1, NULL);
INSERT INTO `vehiculo` VALUES (53, 1, NULL, 'c221h51q9', '', '268692', NULL, 92, 15, NULL, 'nuq8456870080751380', 'yhw9197i89621189240', 2018, 1292, 'celeste', ' 7 personas', 77173551, 45522683, 4980775, 9239004, '1994-08-24', '1993-08-06', 1, 5, 1385, 3, 1, 3, 0, NULL, NULL, '1989-12-02', 'Doloribus voluptatem voluptate nesciunt voluptas aut impedit maiores hic reiciendis est quasi.', 'Qui maiores qui omnis qui qui consectetur adipisci nostrum eos dolorem dolorem delectus libero ea et sed dolorem tempore ipsa ut quisquam.', 2, NULL);
INSERT INTO `vehiculo` VALUES (54, 1, NULL, 'x000n54j2', '', '977971', NULL, 95, 6, NULL, 'mad1654144119856538', 'gch6051z13740915297', 2017, 1699, 'morado', ' 5 personas', 26663581, 21393846, 7808806, 7613225, '1991-03-11', '1990-05-12', 1, 4, 1158, 2, 0, 4, 1, NULL, NULL, '2009-07-29', 'Deserunt illo et quis saepe sed cupiditate necessitatibus explicabo repudiandae.', 'Corporis et autem qui illo deserunt nihil ex ut sint voluptatem.', 1, NULL);
INSERT INTO `vehiculo` VALUES (55, 1, NULL, 'o370z97g4', '', '075448', NULL, 97, 15, NULL, 'dxa8793107671077488', 'feu1197z93913880927', 2003, 1260, 'verde', ' 5 personas', 97086917, 84696731, 9461799, 6837875, '1998-12-08', '2016-03-28', 1, 6, 1253, 3, 1, 3, 1, NULL, NULL, '1983-05-18', 'Praesentium est dicta deserunt illo harum non dolores incidunt illo.', 'Ratione corporis maiores est odit ut facilis aut vel accusamus minima similique eos iste est tempora veritatis tempore consequatur molestias quia.', 1, NULL);
INSERT INTO `vehiculo` VALUES (56, 1, NULL, 'g818v39s3', '', '461803', NULL, 50, 2, NULL, 'hpd7095646213062284', 'wfq8213t55919671585', 2018, 1895, 'azul', '4 personas', 80735343, 67342994, 7043584, 8664392, '2002-10-27', '1973-06-30', 1, 8, 1837, 3, 1, 3, 1, NULL, NULL, '2005-04-13', 'Est enim debitis alias repellendus accusamus quis autem rerum accusantium dolor.', 'Consequuntur dolor optio ut tenetur temporibus id distinctio ut libero velit expedita omnis amet sint amet voluptatem sed dolorem.', 1, NULL);
INSERT INTO `vehiculo` VALUES (57, 1, NULL, 's585i83x0', '', '890571', NULL, 38, 9, NULL, 'dny3258531458971466', 'nqs3697b01297381931', 2006, 1613, 'celeste', ' 5 personas', 87147122, 29523432, 5287437, 4877564, '1975-04-15', '1995-06-04', 8, 5, 1630, 1, 0, 3, 0, NULL, NULL, '1987-10-02', 'Corrupti sit at minima ut placeat sint et.', 'Qui fuga ut perferendis earum omnis iste facilis aliquid nesciunt enim.', 2, NULL);
INSERT INTO `vehiculo` VALUES (58, 1, NULL, 'm322e65f2', '', '129644', NULL, 94, 1, NULL, 'qjn5961131855116032', 'xwl7157m38220454711', 2000, 1630, 'morado', ' 5 personas', 36035846, 19698908, 3749304, 2178394, '1978-10-23', '1981-01-04', 8, 8, 1730, 2, 0, 3, 1, NULL, NULL, '2013-03-03', 'Vero quia doloremque numquam ea perferendis consectetur enim repellat accusamus hic deleniti.', 'Molestiae illum aut qui tempore sequi qui perferendis pariatur quo.', 1, NULL);
INSERT INTO `vehiculo` VALUES (59, 1, NULL, 'u035m88v0', '', '849499', NULL, 96, 1, NULL, 'giw6198968601741329', 'rvb2332j40964305237', 2006, 1589, 'verde', ' 5 personas', 47748729, 62109514, 4069896, 3699617, '1981-01-28', '1998-11-26', 1, 4, 1592, 1, 0, 4, 1, NULL, NULL, '1982-01-03', 'Veniam nulla culpa modi veniam laudantium fugiat sequi cupiditate incidunt accusamus dicta eius fugit.', 'Unde quaerat unde consequuntur et cupiditate natus quam magnam nihil aliquid rerum aut repudiandae perferendis.', 1, NULL);
INSERT INTO `vehiculo` VALUES (60, 1, NULL, 'q468k85l3', '', '188243', NULL, 19, 14, NULL, 'pes6231485478646310', 'iub9711f37224588364', 2001, 1800, 'verde', ' 5 personas', 31009820, 85956085, 3637897, 8090575, '2012-05-08', '1997-02-27', 2, 8, 1570, 2, 0, 3, 0, NULL, NULL, '1978-09-09', 'Consequatur necessitatibus voluptatibus sit consequatur illo sapiente reprehenderit praesentium dolores rerum nam excepturi optio dolor.', 'Velit expedita pariatur similique nesciunt consequatur delectus voluptas laudantium doloremque necessitatibus iure.', 2, NULL);
INSERT INTO `vehiculo` VALUES (61, 1, NULL, 'k166j40w9', '', '984906', NULL, 20, 10, NULL, 'nod8266792254420846', 'jjt0920u74917230325', 2001, 1687, 'azul', ' 7 personas', 13351810, 53412389, 8810217, 9778004, '2011-07-17', '1976-04-29', 8, 8, 1866, 1, 0, 2, 0, NULL, NULL, '2013-04-28', 'Non facere vel sit velit quos nulla odit maxime facere optio dolore ipsa ullam natus.', 'Vitae sequi delectus et est nostrum eaque doloremque repellat est veritatis distinctio quas.', 1, NULL);
INSERT INTO `vehiculo` VALUES (62, 1, NULL, 'w454a31r1', '', '152321', NULL, 85, 1, NULL, 'ntb1275159541418878', 'vas8489z00674218566', 2004, 1368, 'negro', '4 personas', 69727580, 60618835, 1009772, 6713067, '2010-12-26', '1990-05-24', 8, 8, 1280, 1, 0, 4, 0, NULL, NULL, '1993-12-13', 'Nihil maxime excepturi non ipsa animi unde.', 'Ut sed officiis delectus qui eveniet est sequi nesciunt earum ipsam possimus cumque ut expedita eius sint non eum animi amet culpa.', 1, NULL);
INSERT INTO `vehiculo` VALUES (63, 1, NULL, 'y224c98d8', '', '508405', NULL, 114, 13, NULL, 'xtq4273921198425542', 'tix0980u22367887520', 2004, 1443, 'verde', ' 8 personas', 33758658, 54438639, 8451325, 3442039, '1979-11-01', '2015-02-06', 3, 4, 1695, 3, 0, 3, 0, NULL, NULL, '1973-11-23', 'Minus pariatur qui recusandae est eum rerum molestias aut nobis dolores.', 'Voluptas rerum sed sint temporibus alias consectetur ipsum eos porro qui suscipit nisi voluptate expedita et assumenda optio et impedit.', 1, NULL);
INSERT INTO `vehiculo` VALUES (64, 1, NULL, 'l590q08z5', '', '618898', NULL, 103, 3, NULL, 'hea1293845881523550', 'dho1811u04735424435', 2016, 1623, 'amarillo', ' 7 personas', 25445776, 94678562, 9605753, 8154907, '1971-08-16', '1978-12-26', 4, 4, 1311, 3, 0, 3, 1, NULL, NULL, '2018-12-14', 'Non culpa et est recusandae veniam tempore.', 'Dolores id fugiat enim voluptatum quam quia consectetur impedit aliquid voluptas blanditiis quae tempore sint est atque sint alias molestiae expedita.', 1, NULL);
INSERT INTO `vehiculo` VALUES (65, 1, NULL, 'r584o57g1', '', '863353', NULL, 79, 1, NULL, 'hhq4338570460258948', 'hfy6871h14480886500', 2017, 1727, 'rojo', ' 8 personas', 45253738, 25102115, 1049382, 1686958, '2014-03-13', '1985-06-19', 3, 4, 1374, 4, 1, 2, 0, NULL, NULL, '1977-08-20', 'Itaque qui placeat odit autem iste ullam voluptatem vitae animi voluptatem.', 'Sed ratione ab totam velit non unde unde et ipsa perferendis qui asperiores et a dolorem et inventore ut blanditiis et et iusto.', 2, NULL);
INSERT INTO `vehiculo` VALUES (66, 1, NULL, 'b773p83y8', '', '216925', NULL, 61, 3, NULL, 'muk1471341318096029', 'ynx7418l28438887734', 2015, 1623, 'blanco', ' 7 personas', 75893011, 25742625, 7131500, 2501532, '2009-04-18', '1974-06-24', 3, 5, 1827, 3, 1, 3, 1, NULL, NULL, '1970-06-09', 'Ut voluptate voluptatem eum architecto et aliquam sed repellendus iusto ut.', 'Provident placeat incidunt consequatur est incidunt nesciunt expedita accusamus vitae qui cupiditate saepe veritatis dolorem.', 1, NULL);
INSERT INTO `vehiculo` VALUES (67, 1, NULL, 'r058g91w2', '', '628673', NULL, 43, 15, NULL, 'ytb8915514043052932', 'xwr0669v71028012396', 2009, 1775, 'amarillo', ' 7 personas', 79667073, 25263510, 3615077, 1767002, '2006-03-20', '1980-04-22', 7, 8, 1479, 4, 1, 4, 1, NULL, NULL, '1994-03-30', 'Soluta minus voluptatibus consequatur vel aperiam blanditiis sint.', 'Quas eligendi reprehenderit perferendis et ipsa quaerat aliquid eos consequatur unde qui voluptatibus aut.', 1, NULL);
INSERT INTO `vehiculo` VALUES (68, 1, NULL, 'g935j81w4', '', '275401', NULL, 56, 4, NULL, 'ivx7994961700748413', 'wuw4091t84128004525', 2012, 1784, 'morado', ' 7 personas', 69494998, 84754760, 1646744, 3909640, '1980-04-15', '2012-12-13', 5, 8, 1978, 1, 1, 4, 0, NULL, NULL, '1991-01-22', 'Maxime voluptatem inventore neque quo autem provident et provident quos praesentium possimus.', 'Facere aut voluptatem sit occaecati saepe sunt veniam minus nihil.', 2, NULL);
INSERT INTO `vehiculo` VALUES (69, 1, NULL, 'k269c73g7', '', '417218', NULL, 61, 13, NULL, 'afv9527658133526388', 'azl8569g52547780188', 2018, 1820, 'rojo', ' 7 personas', 47501140, 26336263, 2073249, 2809774, '1987-08-30', '1998-05-03', 1, 6, 1026, 4, 0, 3, 0, NULL, NULL, '2019-01-03', 'Voluptas in sapiente est sint dolorem porro totam omnis nisi nihil cumque vel.', 'Consectetur repellat modi soluta ducimus hic qui nisi incidunt et.', 2, NULL);
INSERT INTO `vehiculo` VALUES (70, 1, NULL, 'z750b56v4', '', '261659', NULL, 7, 13, NULL, 'jaj9836572578034078', 'wpf8534z78456174503', 2010, 1295, 'negro', '4 personas', 57359022, 92900857, 5487622, 7744668, '1970-06-27', '2007-12-02', 6, 7, 1106, 4, 1, 3, 1, NULL, NULL, '2000-01-02', 'Quo eligendi tempore doloribus molestias mollitia ducimus ea ut facere reiciendis est est.', 'Repellat et quia ex odit at id nisi quis consequuntur in ut qui quia dolor excepturi animi.', 2, NULL);
INSERT INTO `vehiculo` VALUES (71, 1, NULL, 'k615b22s6', '', '567668', NULL, 7, 7, NULL, 'zgp2047993950904530', 'cbq2288v79026785898', 2013, 1234, 'celeste', ' 8 personas', 21627443, 50705455, 8522579, 8708878, '1991-05-23', '1998-04-17', 4, 8, 1337, 3, 1, 2, 0, NULL, NULL, '1995-06-09', 'Vel deserunt totam error veniam et deleniti et temporibus odio sit.', 'Iusto omnis necessitatibus consequatur mollitia error sunt neque explicabo eum quas mollitia suscipit dignissimos.', 2, NULL);
INSERT INTO `vehiculo` VALUES (72, 1, NULL, 'o845y54u0', '', '818366', NULL, 30, 12, NULL, 'kvk4391495440685518', 'heg7873c69183605412', 2016, 1848, 'amarillo', ' 8 personas', 83478605, 87429488, 1277748, 9904434, '1988-02-10', '1985-12-28', 3, 4, 1073, 2, 1, 3, 1, NULL, NULL, '1970-11-09', 'Architecto et natus quas sit unde facere quia et dolores voluptatem.', 'Molestiae recusandae repudiandae ullam consequatur quia error sunt tenetur quod voluptas debitis qui quidem qui velit ea a neque culpa expedita quidem velit.', 1, NULL);
INSERT INTO `vehiculo` VALUES (73, 1, NULL, 'q500w17b1', '', '420077', NULL, 102, 1, NULL, 'dwk2072921891529987', 'qsj2452x83254261175', 2015, 1599, 'negro', '4 personas', 77683747, 34250221, 2189369, 3733406, '1970-11-10', '1970-03-18', 7, 7, 1103, 1, 0, 4, 0, NULL, NULL, '2018-05-27', 'Nobis sint delectus non eveniet dolorum harum quod.', 'Non quia voluptatum odio similique pariatur ullam culpa aliquam perferendis non nam.', 1, NULL);
INSERT INTO `vehiculo` VALUES (74, 1, NULL, 'g240i67u0', '', '753722', NULL, 98, 10, NULL, 'ycr3957598306513495', 'ssr7266c96923920175', 2011, 1224, 'azul', ' 8 personas', 98553252, 25014924, 6150329, 7064240, '1994-12-08', '1971-06-09', 5, 5, 1441, 3, 1, 4, 0, NULL, NULL, '1971-05-26', 'Et voluptatem alias reiciendis ratione eos velit voluptatem saepe sunt et voluptate sequi eum cumque.', 'Placeat aliquam rerum dolores nihil error perferendis rem similique enim itaque enim omnis incidunt rem sint qui.', 1, NULL);
INSERT INTO `vehiculo` VALUES (75, 1, NULL, 'r388s49g2', '', '503529', NULL, 112, 2, NULL, 'ygh5516132819198393', 'cin3911d77321285565', 2007, 1551, 'negro', '4 personas', 18770707, 30554398, 1483693, 9714424, '1976-11-25', '1977-11-16', 4, 6, 1953, 2, 1, 3, 1, NULL, NULL, '2000-08-01', 'Dolore est voluptas quasi quia blanditiis blanditiis dolores iure.', 'Dolor sunt qui cumque quia voluptas quasi et corrupti mollitia nihil eaque sapiente.', 1, NULL);
INSERT INTO `vehiculo` VALUES (76, 1, NULL, 'x138k27s0', '', '641888', NULL, 38, 14, NULL, 'urh0768934836152739', 'peo6654d84825635194', 2001, 1944, 'blanco', '4 personas', 81497582, 61242931, 5745494, 3279536, '2004-01-22', '1994-05-01', 4, 5, 1105, 3, 1, 3, 1, NULL, NULL, '1981-12-18', 'Ut odit tenetur sapiente sed sint aut non odio.', 'Quam officia eius eum est vero consectetur voluptatem omnis accusantium repudiandae libero eaque.', 2, NULL);
INSERT INTO `vehiculo` VALUES (77, 1, NULL, 'g331a52e4', '', '499170', NULL, 104, 8, NULL, 'ugw7845686006856268', 'emv5593r87205307625', 2013, 1919, 'azul', ' 5 personas', 71866518, 71368664, 6403682, 5013442, '2003-10-17', '2017-11-06', 1, 6, 1423, 3, 1, 2, 1, NULL, NULL, '1985-09-16', 'Et ut nisi accusamus optio molestias nam beatae vel delectus quia.', 'Architecto eum consectetur adipisci id aut tenetur ipsum voluptatem labore ut ipsam mollitia facilis nam iste consequuntur.', 2, NULL);
INSERT INTO `vehiculo` VALUES (78, 1, NULL, 'u603v60r1', '', '058750', NULL, 30, 13, NULL, 'bpm6356694310753499', 'mcl4571q85158948468', 2002, 1400, 'blanco', ' 8 personas', 96131503, 47820093, 9804499, 6449425, '2004-03-11', '1997-10-22', 7, 8, 1081, 4, 1, 3, 1, NULL, NULL, '2018-11-16', 'Et tenetur dolorem autem et aliquam eaque repudiandae rerum similique minus necessitatibus.', 'Doloremque qui error voluptatem nostrum mollitia omnis optio nihil ut et quia minus sed architecto.', 1, NULL);
INSERT INTO `vehiculo` VALUES (79, 1, NULL, 'h989w73h9', '', '842456', NULL, 104, 13, NULL, 'xrf6287169132144886', 'sou5560g13995908653', 2008, 1289, 'azul', ' 7 personas', 68591277, 76227264, 1293639, 8990141, '1999-12-17', '1989-04-04', 2, 7, 1238, 1, 1, 2, 0, NULL, NULL, '1990-09-24', 'In nihil nobis beatae quas ullam cupiditate harum dolores.', 'Vitae assumenda qui iste sunt aut nihil sed necessitatibus est asperiores vel iure placeat.', 2, NULL);
INSERT INTO `vehiculo` VALUES (80, 1, NULL, 'r142n89y5', '', '927944', NULL, 96, 11, NULL, 'hkh0379749315372717', 'kxc5746k89778756600', 2003, 1355, 'morado', ' 5 personas', 82314225, 27653767, 7364088, 7811114, '1978-06-03', '2006-12-18', 8, 5, 1014, 2, 0, 3, 0, NULL, NULL, '1985-12-15', 'In harum saepe ut sequi non voluptatem.', 'Velit modi sed error quod ut ut perspiciatis atque non molestiae error corrupti maxime aliquam facilis vitae expedita recusandae.', 2, NULL);
INSERT INTO `vehiculo` VALUES (81, 1, NULL, 'n605k36n4', '', '875317', NULL, 93, 15, NULL, 'yie8461027632373336', 'btr3339g43184156317', 2008, 1890, 'morado', ' 5 personas', 45811320, 73868056, 5810961, 4257316, '1992-06-15', '1996-02-21', 4, 5, 1001, 2, 1, 3, 1, NULL, NULL, '1970-02-12', 'Cum sint quidem dolore accusamus soluta necessitatibus maxime molestias eaque esse maxime.', 'Necessitatibus maiores quod eum possimus aut debitis omnis est veniam vero sit itaque enim aliquam praesentium officiis dolorem cumque.', 2, NULL);
INSERT INTO `vehiculo` VALUES (82, 1, NULL, 'r164c90c1', '', '280236', NULL, 10, 13, NULL, 'vcc2654880330599062', 'zdv9324g10429234810', 2006, 1767, 'rojo', ' 7 personas', 27107312, 77299650, 4771157, 6627502, '1992-02-06', '1971-12-13', 1, 6, 1930, 1, 0, 4, 1, NULL, NULL, '1974-01-25', 'Labore aut quos tenetur quas commodi voluptates hic inventore impedit.', 'Voluptatem aut provident quis nihil exercitationem voluptate doloribus voluptatem in quam sunt ipsam sint modi accusantium illo totam voluptatem molestiae non quasi accusantium.', 2, NULL);
INSERT INTO `vehiculo` VALUES (83, 1, NULL, 'p607h63s9', '', '254121', NULL, 84, 6, NULL, 'mvy9098662512331558', 'uqu3482i81848314863', 2009, 1357, 'azul', ' 8 personas', 80735367, 35615692, 8527721, 3619905, '1972-10-31', '1984-05-24', 1, 6, 1510, 4, 1, 4, 0, NULL, NULL, '2014-08-26', 'Et natus in nisi est hic eos eius ut et eos qui dolor.', 'Et qui aliquam rem ut eveniet minima officiis minima nisi aliquam nisi cupiditate quas totam.', 1, NULL);
INSERT INTO `vehiculo` VALUES (84, 1, NULL, 'v474m34r4', '', '468549', NULL, 10, 2, NULL, 'qbh9374836885516252', 'pei3890g79718137195', 2000, 1771, 'negro', ' 8 personas', 62407767, 12162351, 3793348, 3034657, '1972-01-03', '1983-07-04', 1, 4, 1114, 2, 0, 4, 0, NULL, NULL, '2001-06-13', 'Molestiae laboriosam neque libero magni dolore rerum maiores consequatur qui vel autem.', 'Nemo esse autem fugit ratione quam impedit quis molestiae ipsa similique officia omnis sit animi placeat.', 2, NULL);
INSERT INTO `vehiculo` VALUES (85, 1, NULL, 'w161f71j1', '', '748027', NULL, 76, 6, NULL, 'gxp7964056013489073', 'qtb2959i05413584521', 2008, 1281, 'amarillo', '4 personas', 56849970, 66209013, 8063032, 1031005, '1974-12-12', '2012-10-23', 2, 5, 1035, 2, 1, 2, 0, NULL, NULL, '2007-12-04', 'Consequatur natus autem a maxime sed corrupti laboriosam in nulla.', 'Non consequatur vel minima saepe aut ut qui doloremque culpa consequatur laboriosam repellat recusandae.', 1, NULL);
INSERT INTO `vehiculo` VALUES (86, 1, NULL, 'z852h09l9', '', '608439', NULL, 23, 14, NULL, 'tdy5742035091638695', 'wiz5253y93190199102', 2013, 1906, 'blanco', '4 personas', 52109873, 93189350, 2056436, 8080491, '2016-11-17', '2001-07-26', 2, 8, 1301, 4, 0, 3, 0, NULL, NULL, '1972-10-31', 'Rerum doloribus non sit dicta expedita porro libero.', 'Et aliquam perspiciatis possimus qui tenetur qui quia incidunt praesentium delectus incidunt facilis ut eum eius quisquam.', 1, NULL);
INSERT INTO `vehiculo` VALUES (87, 1, NULL, 'y092h94p5', '', '271982', NULL, 98, 12, NULL, 'une7898170560194507', 'jqe8943s71511931042', 2019, 1893, 'celeste', ' 8 personas', 51093866, 80545340, 6791306, 8880565, '2008-05-08', '1974-01-10', 7, 8, 1844, 4, 1, 2, 1, NULL, NULL, '1996-03-16', 'Rem voluptatum omnis repellat et fuga animi earum.', 'Qui magni animi tempore voluptas quia voluptatibus voluptatem rem quia neque similique est atque eos temporibus eum nihil hic reiciendis aut laudantium nemo.', 1, NULL);
INSERT INTO `vehiculo` VALUES (88, 1, NULL, 'd498v94d4', '', '242886', NULL, 40, 4, NULL, 'vdf7358075359478632', 'fbk1795j71938734132', 2016, 1509, 'verde', ' 5 personas', 88527742, 32210738, 6554261, 2857884, '1984-11-17', '1978-12-28', 1, 8, 1970, 3, 0, 2, 1, NULL, NULL, '2003-11-24', 'Nulla molestiae nihil aut qui blanditiis qui magnam quia quasi.', 'Doloribus consectetur iure doloribus quas voluptatem voluptas ut consequuntur blanditiis amet reiciendis aut sequi ea et doloribus magnam reiciendis quia veritatis.', 2, NULL);
INSERT INTO `vehiculo` VALUES (89, 1, NULL, 'r855g88t4', '', '244013', NULL, 116, 5, NULL, 'fdl3277064989798137', 'dlh3755u07532971851', 2004, 1483, 'blanco', '4 personas', 50136907, 55932579, 2208908, 4548702, '2003-01-28', '1977-12-14', 7, 7, 1622, 2, 1, 3, 0, NULL, NULL, '1973-05-01', 'Sint voluptas reiciendis consequatur excepturi voluptate consequatur.', 'Voluptas aut vel perferendis necessitatibus earum ab eum molestiae dolorum molestiae voluptatibus porro nesciunt est ratione aliquam molestiae quaerat sed nobis error.', 1, NULL);
INSERT INTO `vehiculo` VALUES (90, 1, NULL, 'm091w61u2', '', '717997', NULL, 100, 1, NULL, 'run8683798831546559', 'leg0373r13981042093', 2013, 1659, 'rojo', '4 personas', 81470642, 51056256, 8703574, 1776697, '1976-01-12', '1996-09-23', 8, 4, 1682, 3, 1, 4, 1, NULL, NULL, '1974-11-05', 'Repudiandae quas vel laudantium et et sint laboriosam tempora sint architecto ipsam.', 'Repellendus voluptas qui magni et enim aliquid id maiores inventore vel accusamus nulla magni.', 2, NULL);
INSERT INTO `vehiculo` VALUES (91, 1, NULL, 'd903i67o4', '', '063076', NULL, 53, 11, NULL, 'cin0763187865070548', 'jvy0056v43468131447', 2010, 1816, 'morado', ' 8 personas', 92622178, 45409837, 7538825, 9657277, '1973-04-19', '1970-06-04', 8, 7, 1106, 3, 1, 2, 1, NULL, NULL, '2003-06-30', 'Est sequi veniam occaecati aut quidem et dolor.', 'Autem sint maiores aperiam harum voluptatem praesentium quidem hic tempora et facere possimus accusantium ut fugiat.', 2, NULL);
INSERT INTO `vehiculo` VALUES (92, 1, NULL, 'l327x29y5', '', '525678', NULL, 114, 3, NULL, 'ylu9923064196237742', 'qic2843u01469525982', 2004, 1268, 'amarillo', '4 personas', 10339010, 53012103, 8431435, 3431562, '1984-07-29', '2005-11-20', 6, 5, 1342, 3, 0, 2, 1, NULL, NULL, '1996-09-18', 'Fugiat laborum sunt amet ut commodi voluptatem sit.', 'Quas voluptas rerum qui modi est qui id tenetur eius ut debitis debitis aut voluptatem sunt placeat dolorem a labore sed laudantium dolorem.', 2, NULL);
INSERT INTO `vehiculo` VALUES (93, 1, NULL, 'g586z17j6', '', '173207', NULL, 108, 13, NULL, 'xxr4535338334015349', 'ejy4553w00008500255', 2008, 1353, 'verde', ' 7 personas', 54650720, 73098927, 4129856, 7236909, '1998-12-25', '1978-05-14', 2, 5, 1162, 2, 0, 2, 0, NULL, NULL, '1986-12-07', 'Expedita atque dicta qui distinctio modi commodi in non iusto reprehenderit.', 'Dolore et vel aut eaque dolorum a aspernatur ullam et eos doloribus et omnis cum cumque non quidem molestiae doloribus aut velit.', 2, NULL);
INSERT INTO `vehiculo` VALUES (94, 1, NULL, 'v800o56t3', '', '798133', NULL, 49, 1, NULL, 'ukw5441588166100417', 'fnn2169d20890554088', 2006, 1891, 'amarillo', '4 personas', 13770423, 85330124, 1019801, 1282234, '1986-01-10', '2001-01-12', 2, 6, 1386, 3, 0, 4, 0, NULL, NULL, '1999-05-03', 'Est est assumenda nobis animi veniam labore voluptate beatae.', 'Delectus voluptate ducimus cupiditate aut odio ea neque doloremque sed placeat consequatur.', 1, NULL);
INSERT INTO `vehiculo` VALUES (95, 1, NULL, 'p000o46s7', '', '101963', NULL, 76, 13, NULL, 'qhy4134940937378031', 'zmx5852p18242688792', 2019, 1889, 'morado', ' 8 personas', 94568300, 67518555, 4150610, 4877587, '1996-11-26', '1979-04-12', 3, 6, 1230, 2, 1, 2, 1, NULL, NULL, '1991-11-10', 'Facilis aut et fugit ab omnis et odit et velit velit quo dicta.', 'Et ducimus impedit veritatis unde et ut magni nobis accusantium quam placeat autem aut.', 1, NULL);
INSERT INTO `vehiculo` VALUES (96, 1, NULL, 'e409g80r5', '', '539778', NULL, 67, 12, NULL, 'jqc0795500767262754', 'xwq4877o34575678036', 2006, 1291, 'rojo', ' 5 personas', 43392029, 70323591, 7815035, 3624229, '2009-10-07', '1974-06-18', 3, 4, 1785, 1, 0, 2, 0, NULL, NULL, '2011-06-11', 'Natus sed sit natus ratione placeat id quo alias magnam dolorum rerum qui libero.', 'Vel tempora reprehenderit magnam et voluptates rerum in et omnis et magnam id labore quis occaecati ut natus accusamus quisquam voluptatem est.', 2, NULL);
INSERT INTO `vehiculo` VALUES (97, 1, NULL, 'c922t21h2', '', '554255', NULL, 29, 5, NULL, 'tlg0051079873215091', 'xlm5608u78267751239', 2000, 1303, 'blanco', ' 5 personas', 74340972, 33769559, 1874496, 4680299, '2005-09-18', '1973-03-30', 8, 6, 1543, 1, 0, 3, 1, NULL, NULL, '2011-04-01', 'Eum quod fugit nesciunt numquam rem asperiores sunt vel omnis.', 'Molestiae quam ea ad rerum quaerat aut omnis eligendi rerum numquam fugiat et nemo aliquam asperiores et excepturi officia et.', 1, NULL);
INSERT INTO `vehiculo` VALUES (98, 1, NULL, 'x584n89h5', '', '448718', NULL, 114, 12, NULL, 'opu7366806202914835', 'rry5178u07842929766', 2012, 1468, 'amarillo', ' 8 personas', 67754276, 88678359, 1051348, 2794332, '1987-04-18', '2014-03-22', 2, 7, 1568, 3, 0, 2, 1, NULL, NULL, '2016-11-12', 'Ut dolor nihil id molestiae illo ex illo amet.', 'Enim et consequatur alias fuga accusantium velit deserunt reiciendis totam dicta at alias voluptate voluptatem veritatis quis nisi ea omnis.', 2, NULL);
INSERT INTO `vehiculo` VALUES (99, 1, NULL, 'h400o40p4', '', '207224', NULL, 68, 1, NULL, 'awh2476822335278524', 'fkt3572s75221959116', 2009, 1735, 'morado', ' 8 personas', 87593147, 35660417, 2036793, 3099611, '1987-11-14', '1984-01-06', 3, 7, 1663, 4, 1, 4, 0, NULL, NULL, '1997-10-15', 'Alias nam magni sed earum corporis omnis suscipit non perferendis nemo consectetur ad.', 'Enim inventore blanditiis ea doloribus autem ullam natus dolorem quibusdam unde minima voluptas non.', 1, NULL);
INSERT INTO `vehiculo` VALUES (100, 1, NULL, 'k714o52v5', '', '639525', NULL, 89, 2, NULL, 'hcw7553343472559765', 'mch4350d56726861290', 2013, 1404, 'blanco', '4 personas', 14878904, 79638896, 4054632, 6251105, '2000-01-03', '2009-07-07', 1, 4, 1303, 3, 0, 2, 0, NULL, NULL, '1999-05-12', 'Eos consequatur et sit suscipit est sequi nulla sed cupiditate assumenda rerum dolore expedita.', 'Omnis perferendis deserunt assumenda quisquam quibusdam similique molestiae at accusantium est dolorum nesciunt cum ut.', 1, NULL);
COMMIT;

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
-- Records of vehiculo_combustible
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo_combustible` VALUES (1, 'Gasolina');
INSERT INTO `vehiculo_combustible` VALUES (2, 'Diesel');
INSERT INTO `vehiculo_combustible` VALUES (3, 'Híbrido');
INSERT INTO `vehiculo_combustible` VALUES (4, 'Eléctrico');
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehiculo_estilo
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo_estilo` VALUES (1, 'Sedán', 1);
INSERT INTO `vehiculo_estilo` VALUES (2, 'Station Wagon', 1);
INSERT INTO `vehiculo_estilo` VALUES (3, 'Hatchback', 1);
INSERT INTO `vehiculo_estilo` VALUES (4, 'Pickup 4x2', 1);
INSERT INTO `vehiculo_estilo` VALUES (5, 'Pickup 4x4', 1);
INSERT INTO `vehiculo_estilo` VALUES (6, 'Pánel', 1);
INSERT INTO `vehiculo_estilo` VALUES (7, 'Microbús/Minivan', 1);
INSERT INTO `vehiculo_estilo` VALUES (8, 'Todo Terreno 4x2', 1);
INSERT INTO `vehiculo_estilo` VALUES (9, 'Todo Terreno 4x4', 1);
INSERT INTO `vehiculo_estilo` VALUES (10, 'Casa Rodante', 1);
INSERT INTO `vehiculo_estilo` VALUES (11, 'Comercial 1.0-3.5 Ton.', 1);
INSERT INTO `vehiculo_estilo` VALUES (12, 'Comercial 4.0-4.5 Ton.', 1);
INSERT INTO `vehiculo_estilo` VALUES (13, 'Comercial 5.0-7.5 Ton.', 1);
INSERT INTO `vehiculo_estilo` VALUES (14, 'Comercial 8.0-9.5 Ton.', 1);
INSERT INTO `vehiculo_estilo` VALUES (15, 'Comercial 10.0+ Ton.', 1);
INSERT INTO `vehiculo_estilo` VALUES (16, 'Cuadraciclo Sport 4x2', 2);
INSERT INTO `vehiculo_estilo` VALUES (17, 'Cuadraciclo Utilitario 4x4', 2);
INSERT INTO `vehiculo_estilo` VALUES (18, 'MotoCarro', 2);
INSERT INTO `vehiculo_estilo` VALUES (19, 'Motocicleta', 2);
INSERT INTO `vehiculo_estilo` VALUES (20, 'Mulas (Side by Side)', 2);
COMMIT;

-- ----------------------------
-- Table structure for vehiculo_marca
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_marca`;
CREATE TABLE `vehiculo_marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `vehiculo_tipo_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_vehiculo_marca_vehiculo_tipo1_idx` (`vehiculo_tipo_id`),
  CONSTRAINT `fk_vehiculo_marca_vehiculo_tipo1` FOREIGN KEY (`vehiculo_tipo_id`) REFERENCES `vehiculo_tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehiculo_marca
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo_marca` VALUES (4, 'Alfa Romeo', 1);
INSERT INTO `vehiculo_marca` VALUES (5, 'AMC', 1);
INSERT INTO `vehiculo_marca` VALUES (6, 'Aro', 1);
INSERT INTO `vehiculo_marca` VALUES (7, 'Asia', 1);
INSERT INTO `vehiculo_marca` VALUES (8, 'Aston Martin', 1);
INSERT INTO `vehiculo_marca` VALUES (9, 'Audi', 1);
INSERT INTO `vehiculo_marca` VALUES (10, 'Austin', 1);
INSERT INTO `vehiculo_marca` VALUES (11, 'Baw', 1);
INSERT INTO `vehiculo_marca` VALUES (12, 'Bentley', 1);
INSERT INTO `vehiculo_marca` VALUES (13, 'Bluebird', 1);
INSERT INTO `vehiculo_marca` VALUES (14, 'BMW', 1);
INSERT INTO `vehiculo_marca` VALUES (15, 'Brilliance', 1);
INSERT INTO `vehiculo_marca` VALUES (16, 'Buick', 1);
INSERT INTO `vehiculo_marca` VALUES (17, 'BYD', 1);
INSERT INTO `vehiculo_marca` VALUES (18, 'Cadillac', 1);
INSERT INTO `vehiculo_marca` VALUES (19, 'Chana', 1);
INSERT INTO `vehiculo_marca` VALUES (20, 'Changan', 1);
INSERT INTO `vehiculo_marca` VALUES (21, 'Chery', 1);
INSERT INTO `vehiculo_marca` VALUES (22, 'Chevrolet', 1);
INSERT INTO `vehiculo_marca` VALUES (23, 'Chrysler', 1);
INSERT INTO `vehiculo_marca` VALUES (24, 'Citroen', 1);
INSERT INTO `vehiculo_marca` VALUES (25, 'Dacia', 1);
INSERT INTO `vehiculo_marca` VALUES (26, 'Daewoo', 1);
INSERT INTO `vehiculo_marca` VALUES (27, 'Daihatsu', 1);
INSERT INTO `vehiculo_marca` VALUES (28, 'Datsun', 1);
INSERT INTO `vehiculo_marca` VALUES (29, 'Dodge/RAM', 1);
INSERT INTO `vehiculo_marca` VALUES (30, 'Donfeng (ZNA)', 1);
INSERT INTO `vehiculo_marca` VALUES (31, 'Eagle', 1);
INSERT INTO `vehiculo_marca` VALUES (32, 'Faw', 1);
INSERT INTO `vehiculo_marca` VALUES (33, 'Ferrari', 1);
INSERT INTO `vehiculo_marca` VALUES (34, 'Fiat', 1);
INSERT INTO `vehiculo_marca` VALUES (35, 'Ford', 1);
INSERT INTO `vehiculo_marca` VALUES (36, 'Foton', 1);
INSERT INTO `vehiculo_marca` VALUES (37, 'Freightliner', 1);
INSERT INTO `vehiculo_marca` VALUES (38, 'Geely', 1);
INSERT INTO `vehiculo_marca` VALUES (39, 'Genesis', 1);
INSERT INTO `vehiculo_marca` VALUES (40, 'Geo', 1);
INSERT INTO `vehiculo_marca` VALUES (41, 'GMC', 1);
INSERT INTO `vehiculo_marca` VALUES (42, 'Gonow', 1);
INSERT INTO `vehiculo_marca` VALUES (43, 'Great Wall', 1);
INSERT INTO `vehiculo_marca` VALUES (44, 'Hafei', 1);
INSERT INTO `vehiculo_marca` VALUES (45, 'Haima', 1);
INSERT INTO `vehiculo_marca` VALUES (46, 'Heibao', 1);
INSERT INTO `vehiculo_marca` VALUES (47, 'Higer', 1);
INSERT INTO `vehiculo_marca` VALUES (48, 'Hino', 1);
INSERT INTO `vehiculo_marca` VALUES (49, 'Honda', 1);
INSERT INTO `vehiculo_marca` VALUES (50, 'Hummer', 1);
INSERT INTO `vehiculo_marca` VALUES (51, 'Hyundai', 1);
INSERT INTO `vehiculo_marca` VALUES (52, 'Infiniti', 1);
INSERT INTO `vehiculo_marca` VALUES (53, 'International', 1);
INSERT INTO `vehiculo_marca` VALUES (54, 'Isuzu', 1);
INSERT INTO `vehiculo_marca` VALUES (55, 'Iveco', 1);
INSERT INTO `vehiculo_marca` VALUES (56, 'JAC', 1);
INSERT INTO `vehiculo_marca` VALUES (57, 'Jaguar', 1);
INSERT INTO `vehiculo_marca` VALUES (58, 'Jeep', 1);
INSERT INTO `vehiculo_marca` VALUES (59, 'Jinbei', 1);
INSERT INTO `vehiculo_marca` VALUES (60, 'JMC', 1);
INSERT INTO `vehiculo_marca` VALUES (61, 'Jonway', 1);
INSERT INTO `vehiculo_marca` VALUES (62, 'Kenworth', 1);
INSERT INTO `vehiculo_marca` VALUES (63, 'Kia', 1);
INSERT INTO `vehiculo_marca` VALUES (64, 'Lada', 1);
INSERT INTO `vehiculo_marca` VALUES (65, 'Lamborghini', 1);
INSERT INTO `vehiculo_marca` VALUES (66, 'Lancia', 1);
INSERT INTO `vehiculo_marca` VALUES (67, 'Land Rover', 1);
INSERT INTO `vehiculo_marca` VALUES (68, 'Lexus', 1);
INSERT INTO `vehiculo_marca` VALUES (69, 'Lifan', 1);
INSERT INTO `vehiculo_marca` VALUES (70, 'Lincoln', 1);
INSERT INTO `vehiculo_marca` VALUES (71, 'Lotus', 1);
INSERT INTO `vehiculo_marca` VALUES (72, 'Mack', 1);
INSERT INTO `vehiculo_marca` VALUES (73, 'Magiruz', 1);
INSERT INTO `vehiculo_marca` VALUES (74, 'Mahindra', 1);
INSERT INTO `vehiculo_marca` VALUES (75, 'Maserati', 1);
INSERT INTO `vehiculo_marca` VALUES (76, 'Mazda', 1);
INSERT INTO `vehiculo_marca` VALUES (77, 'Mercedes Benz', 1);
INSERT INTO `vehiculo_marca` VALUES (78, 'Mercury', 1);
INSERT INTO `vehiculo_marca` VALUES (79, 'MG', 1);
INSERT INTO `vehiculo_marca` VALUES (80, 'Mini', 1);
INSERT INTO `vehiculo_marca` VALUES (81, 'Mitsubishi', 1);
INSERT INTO `vehiculo_marca` VALUES (82, 'Nissan', 1);
INSERT INTO `vehiculo_marca` VALUES (83, 'Oldsmobile', 1);
INSERT INTO `vehiculo_marca` VALUES (84, 'Opel', 1);
INSERT INTO `vehiculo_marca` VALUES (85, 'Peterbilt', 1);
INSERT INTO `vehiculo_marca` VALUES (86, 'Peugeot', 1);
INSERT INTO `vehiculo_marca` VALUES (87, 'Plymouth', 1);
INSERT INTO `vehiculo_marca` VALUES (88, 'Polarsun', 1);
INSERT INTO `vehiculo_marca` VALUES (89, 'Pontiac', 1);
INSERT INTO `vehiculo_marca` VALUES (90, 'Porsche', 1);
INSERT INTO `vehiculo_marca` VALUES (91, 'Proton', 1);
INSERT INTO `vehiculo_marca` VALUES (92, 'Rambler', 1);
INSERT INTO `vehiculo_marca` VALUES (93, 'Renault', 1);
INSERT INTO `vehiculo_marca` VALUES (94, 'Reva', 1);
INSERT INTO `vehiculo_marca` VALUES (95, 'Rolls Royce', 1);
INSERT INTO `vehiculo_marca` VALUES (96, 'Rover', 1);
INSERT INTO `vehiculo_marca` VALUES (97, 'Saab', 1);
INSERT INTO `vehiculo_marca` VALUES (98, 'Samsung', 1);
INSERT INTO `vehiculo_marca` VALUES (99, 'Saturn', 1);
INSERT INTO `vehiculo_marca` VALUES (100, 'Scania', 1);
INSERT INTO `vehiculo_marca` VALUES (101, 'Scion', 1);
INSERT INTO `vehiculo_marca` VALUES (102, 'Seat', 1);
INSERT INTO `vehiculo_marca` VALUES (103, 'Skoda', 1);
INSERT INTO `vehiculo_marca` VALUES (104, 'Smart', 1);
INSERT INTO `vehiculo_marca` VALUES (105, 'Soueast', 1);
INSERT INTO `vehiculo_marca` VALUES (106, 'Ssang Yong', 1);
INSERT INTO `vehiculo_marca` VALUES (107, 'Subaru', 1);
INSERT INTO `vehiculo_marca` VALUES (108, 'Suzuki', 1);
INSERT INTO `vehiculo_marca` VALUES (109, 'Tianma', 1);
INSERT INTO `vehiculo_marca` VALUES (110, 'Tiger Truck', 1);
INSERT INTO `vehiculo_marca` VALUES (111, 'Toyota', 1);
INSERT INTO `vehiculo_marca` VALUES (112, 'Volkswagen', 1);
INSERT INTO `vehiculo_marca` VALUES (113, 'Volvo', 1);
INSERT INTO `vehiculo_marca` VALUES (114, 'Western Star', 1);
INSERT INTO `vehiculo_marca` VALUES (115, 'Yugo', 1);
INSERT INTO `vehiculo_marca` VALUES (116, 'Zotye', 1);
INSERT INTO `vehiculo_marca` VALUES (117, 'AHM', 2);
INSERT INTO `vehiculo_marca` VALUES (118, 'AKT', 2);
INSERT INTO `vehiculo_marca` VALUES (119, 'Aprilia', 2);
INSERT INTO `vehiculo_marca` VALUES (120, 'Argo', 2);
INSERT INTO `vehiculo_marca` VALUES (121, 'Artic Cat', 2);
INSERT INTO `vehiculo_marca` VALUES (122, 'BMW', 2);
INSERT INTO `vehiculo_marca` VALUES (123, 'BSA', 2);
INSERT INTO `vehiculo_marca` VALUES (124, 'Bajaj', 2);
INSERT INTO `vehiculo_marca` VALUES (125, 'Benelli', 2);
INSERT INTO `vehiculo_marca` VALUES (126, 'Bombardier', 2);
INSERT INTO `vehiculo_marca` VALUES (127, 'Buell', 2);
INSERT INTO `vehiculo_marca` VALUES (128, 'Bultaco', 2);
INSERT INTO `vehiculo_marca` VALUES (129, 'CAN - AM', 2);
INSERT INTO `vehiculo_marca` VALUES (130, 'CFMOTO', 2);
INSERT INTO `vehiculo_marca` VALUES (131, 'Cagiva', 2);
INSERT INTO `vehiculo_marca` VALUES (132, 'Cobra', 2);
INSERT INTO `vehiculo_marca` VALUES (133, 'Daelim', 2);
INSERT INTO `vehiculo_marca` VALUES (134, 'Dinly', 2);
INSERT INTO `vehiculo_marca` VALUES (135, 'Ducati', 2);
INSERT INTO `vehiculo_marca` VALUES (136, 'Electro Bike', 2);
INSERT INTO `vehiculo_marca` VALUES (137, 'Formula', 2);
INSERT INTO `vehiculo_marca` VALUES (138, 'Freedom', 2);
INSERT INTO `vehiculo_marca` VALUES (139, 'Gas Gas', 2);
INSERT INTO `vehiculo_marca` VALUES (140, 'Geeley', 2);
INSERT INTO `vehiculo_marca` VALUES (141, 'Genesis', 2);
INSERT INTO `vehiculo_marca` VALUES (142, 'HISUN', 2);
INSERT INTO `vehiculo_marca` VALUES (143, 'Haojue', 2);
INSERT INTO `vehiculo_marca` VALUES (144, 'Harley Davidson', 2);
INSERT INTO `vehiculo_marca` VALUES (145, 'Hero', 2);
INSERT INTO `vehiculo_marca` VALUES (146, 'Honda', 2);
INSERT INTO `vehiculo_marca` VALUES (147, 'Husaberg', 2);
INSERT INTO `vehiculo_marca` VALUES (148, 'Husqvarna', 2);
INSERT INTO `vehiculo_marca` VALUES (149, 'Hyosung', 2);
INSERT INTO `vehiculo_marca` VALUES (150, 'Indian', 2);
INSERT INTO `vehiculo_marca` VALUES (151, 'Italika', 2);
INSERT INTO `vehiculo_marca` VALUES (152, 'Jawa', 2);
INSERT INTO `vehiculo_marca` VALUES (153, 'Jialing', 2);
INSERT INTO `vehiculo_marca` VALUES (154, 'John Deere', 2);
INSERT INTO `vehiculo_marca` VALUES (155, 'KTM', 2);
INSERT INTO `vehiculo_marca` VALUES (156, 'Katana', 2);
INSERT INTO `vehiculo_marca` VALUES (157, 'Kawasaki', 2);
INSERT INTO `vehiculo_marca` VALUES (158, 'Keeway', 2);
INSERT INTO `vehiculo_marca` VALUES (159, 'Kinetic', 2);
INSERT INTO `vehiculo_marca` VALUES (160, 'Kymco', 2);
INSERT INTO `vehiculo_marca` VALUES (161, 'LML', 2);
INSERT INTO `vehiculo_marca` VALUES (162, 'Lifan', 2);
INSERT INTO `vehiculo_marca` VALUES (163, 'Loncin', 2);
INSERT INTO `vehiculo_marca` VALUES (164, 'MRT', 2);
INSERT INTO `vehiculo_marca` VALUES (165, 'MV Agusta', 2);
INSERT INTO `vehiculo_marca` VALUES (166, 'MZ', 2);
INSERT INTO `vehiculo_marca` VALUES (167, 'Montesa', 2);
INSERT INTO `vehiculo_marca` VALUES (168, 'Moto Cruiser', 2);
INSERT INTO `vehiculo_marca` VALUES (169, 'Moto Guzzi', 2);
INSERT INTO `vehiculo_marca` VALUES (170, 'Moto Tek', 2);
INSERT INTO `vehiculo_marca` VALUES (171, 'Motoped', 2);
INSERT INTO `vehiculo_marca` VALUES (172, 'NSU', 2);
INSERT INTO `vehiculo_marca` VALUES (173, 'Norton', 2);
INSERT INTO `vehiculo_marca` VALUES (174, 'Osaka', 2);
INSERT INTO `vehiculo_marca` VALUES (175, 'Ossa', 2);
INSERT INTO `vehiculo_marca` VALUES (176, 'Peugeot', 2);
INSERT INTO `vehiculo_marca` VALUES (177, 'Piaggio', 2);
INSERT INTO `vehiculo_marca` VALUES (178, 'Pitster Pro', 2);
INSERT INTO `vehiculo_marca` VALUES (179, 'Polaris', 2);
INSERT INTO `vehiculo_marca` VALUES (180, 'Qingqui', 2);
INSERT INTO `vehiculo_marca` VALUES (181, 'Rokk', 2);
INSERT INTO `vehiculo_marca` VALUES (182, 'Royal Enfield', 2);
INSERT INTO `vehiculo_marca` VALUES (183, 'SSR', 2);
INSERT INTO `vehiculo_marca` VALUES (184, 'SWM', 2);
INSERT INTO `vehiculo_marca` VALUES (185, 'SYM', 2);
INSERT INTO `vehiculo_marca` VALUES (186, 'Sachs', 2);
INSERT INTO `vehiculo_marca` VALUES (187, 'Sang Yang', 2);
INSERT INTO `vehiculo_marca` VALUES (188, 'Senke', 2);
INSERT INTO `vehiculo_marca` VALUES (189, 'Serpento', 2);
INSERT INTO `vehiculo_marca` VALUES (190, 'Sherco', 2);
INSERT INTO `vehiculo_marca` VALUES (191, 'Sinski', 2);
INSERT INTO `vehiculo_marca` VALUES (192, 'Spazzio', 2);
INSERT INTO `vehiculo_marca` VALUES (193, 'Sukida', 2);
INSERT INTO `vehiculo_marca` VALUES (194, 'Suzuki', 2);
INSERT INTO `vehiculo_marca` VALUES (195, 'TGB', 2);
INSERT INTO `vehiculo_marca` VALUES (196, 'TVS', 2);
INSERT INTO `vehiculo_marca` VALUES (197, 'Triumph', 2);
INSERT INTO `vehiculo_marca` VALUES (198, 'UM', 2);
INSERT INTO `vehiculo_marca` VALUES (199, 'URAL', 2);
INSERT INTO `vehiculo_marca` VALUES (200, 'Unico', 2);
INSERT INTO `vehiculo_marca` VALUES (201, 'Venom', 2);
INSERT INTO `vehiculo_marca` VALUES (202, 'Vento', 2);
INSERT INTO `vehiculo_marca` VALUES (203, 'Vespa', 2);
INSERT INTO `vehiculo_marca` VALUES (204, 'Victory', 2);
INSERT INTO `vehiculo_marca` VALUES (205, 'Yamaha', 2);
INSERT INTO `vehiculo_marca` VALUES (206, 'Yumbo', 2);
INSERT INTO `vehiculo_marca` VALUES (207, 'Zero', 2);
INSERT INTO `vehiculo_marca` VALUES (208, 'Zongshen', 2);
INSERT INTO `vehiculo_marca` VALUES (209, 'Zundapp', 2);
COMMIT;

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
-- Records of vehiculo_tipo
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo_tipo` VALUES (1, 'Automovíl');
INSERT INTO `vehiculo_tipo` VALUES (2, 'Motocicleta');
COMMIT;

-- ----------------------------
-- Table structure for vehiculo_transmision
-- ----------------------------
DROP TABLE IF EXISTS `vehiculo_transmision`;
CREATE TABLE `vehiculo_transmision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehiculo_transmision
-- ----------------------------
BEGIN;
INSERT INTO `vehiculo_transmision` VALUES (1, 'Manual');
INSERT INTO `vehiculo_transmision` VALUES (2, 'Automática/Dual');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
