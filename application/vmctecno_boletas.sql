-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-07-2018 a las 11:28:14
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vmctecno_boletas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletas`
--

CREATE TABLE `boletas` (
  `id_boleta` bigint(20) UNSIGNED NOT NULL,
  `sucursal` bigint(20) UNSIGNED NOT NULL,
  `numero` int(12) NOT NULL,
  `fecha` date NOT NULL,
  `monto` int(11) NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `boletas`
--

INSERT INTO `boletas` (`id_boleta`, `sucursal`, `numero`, `fecha`, `monto`, `id_usuario`) VALUES
(8, 15, 43, '2018-05-22', 8000, 1),
(9, 15, 44, '2018-05-22', 2000, 1),
(10, 15, 44, '2018-05-22', 505690, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `comuna_id` int(11) NOT NULL,
  `comuna_nombre` varchar(64) NOT NULL,
  `provincia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`comuna_id`, `comuna_nombre`, `provincia_id`) VALUES
(1, 'Arica', 1),
(2, 'Camarones', 1),
(3, 'General Lagos', 2),
(4, 'Putre', 2),
(5, 'Alto Hospicio', 3),
(6, 'Iquique', 3),
(7, 'Camiña', 4),
(8, 'Colchane', 4),
(9, 'Huara', 4),
(10, 'Pica', 4),
(11, 'Pozo Almonte', 4),
(12, 'Antofagasta', 5),
(13, 'Mejillones', 5),
(14, 'Sierra Gorda', 5),
(15, 'Taltal', 5),
(16, 'Calama', 6),
(17, 'Ollague', 6),
(18, 'San Pedro de Atacama', 6),
(19, 'María Elena', 7),
(20, 'Tocopilla', 7),
(21, 'Chañaral', 8),
(22, 'Diego de Almagro', 8),
(23, 'Caldera', 9),
(24, 'Copiapó', 9),
(25, 'Tierra Amarilla', 9),
(26, 'Alto del Carmen', 10),
(27, 'Freirina', 10),
(28, 'Huasco', 10),
(29, 'Vallenar', 10),
(30, 'Canela', 11),
(31, 'Illapel', 11),
(32, 'Los Vilos', 11),
(33, 'Salamanca', 11),
(34, 'Andacollo', 12),
(35, 'Coquimbo', 12),
(36, 'La Higuera', 12),
(37, 'La Serena', 12),
(38, 'Paihuaco', 12),
(39, 'Vicuña', 12),
(40, 'Combarbalá', 13),
(41, 'Monte Patria', 13),
(42, 'Ovalle', 13),
(43, 'Punitaqui', 13),
(44, 'Río Hurtado', 13),
(45, 'Isla de Pascua', 14),
(46, 'Calle Larga', 15),
(47, 'Los Andes', 15),
(48, 'Rinconada', 15),
(49, 'San Esteban', 15),
(50, 'La Ligua', 16),
(51, 'Papudo', 16),
(52, 'Petorca', 16),
(53, 'Zapallar', 16),
(54, 'Hijuelas', 17),
(55, 'La Calera', 17),
(56, 'La Cruz', 17),
(57, 'Limache', 17),
(58, 'Nogales', 17),
(59, 'Olmué', 17),
(60, 'Quillota', 17),
(61, 'Algarrobo', 18),
(62, 'Cartagena', 18),
(63, 'El Quisco', 18),
(64, 'El Tabo', 18),
(65, 'San Antonio', 18),
(66, 'Santo Domingo', 18),
(67, 'Catemu', 19),
(68, 'Llaillay', 19),
(69, 'Panquehue', 19),
(70, 'Putaendo', 19),
(71, 'San Felipe', 19),
(72, 'Santa María', 19),
(73, 'Casablanca', 20),
(74, 'Concón', 20),
(75, 'Juan Fernández', 20),
(76, 'Puchuncaví', 20),
(77, 'Quilpué', 20),
(78, 'Quintero', 20),
(79, 'Valparaíso', 20),
(80, 'Villa Alemana', 20),
(81, 'Viña del Mar', 20),
(82, 'Colina', 21),
(83, 'Lampa', 21),
(84, 'Tiltil', 21),
(85, 'Pirque', 22),
(86, 'Puente Alto', 22),
(87, 'San José de Maipo', 22),
(88, 'Buin', 23),
(89, 'Calera de Tango', 23),
(90, 'Paine', 23),
(91, 'San Bernardo', 23),
(92, 'Alhué', 24),
(93, 'Curacaví', 24),
(94, 'María Pinto', 24),
(95, 'Melipilla', 24),
(96, 'San Pedro', 24),
(97, 'Cerrillos', 25),
(98, 'Cerro Navia', 25),
(99, 'Conchalí', 25),
(100, 'El Bosque', 25),
(101, 'Estación Central', 25),
(102, 'Huechuraba', 25),
(103, 'Independencia', 25),
(104, 'La Cisterna', 25),
(105, 'La Granja', 25),
(106, 'La Florida', 25),
(107, 'La Pintana', 25),
(108, 'La Reina', 25),
(109, 'Las Condes', 25),
(110, 'Lo Barnechea', 25),
(111, 'Lo Espejo', 25),
(112, 'Lo Prado', 25),
(113, 'Macul', 25),
(114, 'Maipú', 25),
(115, 'Ñuñoa', 25),
(116, 'Pedro Aguirre Cerda', 25),
(117, 'Peñalolén', 25),
(118, 'Providencia', 25),
(119, 'Pudahuel', 25),
(120, 'Quilicura', 25),
(121, 'Quinta Normal', 25),
(122, 'Recoleta', 25),
(123, 'Renca', 25),
(124, 'San Miguel', 25),
(125, 'San Joaquín', 25),
(126, 'San Ramón', 25),
(127, 'Santiago', 25),
(128, 'Vitacura', 25),
(129, 'El Monte', 26),
(130, 'Isla de Maipo', 26),
(131, 'Padre Hurtado', 26),
(132, 'Peñaflor', 26),
(133, 'Talagante', 26),
(134, 'Codegua', 27),
(135, 'Coínco', 27),
(136, 'Coltauco', 27),
(137, 'Doñihue', 27),
(138, 'Graneros', 27),
(139, 'Las Cabras', 27),
(140, 'Machalí', 27),
(141, 'Malloa', 27),
(142, 'Mostazal', 27),
(143, 'Olivar', 27),
(144, 'Peumo', 27),
(145, 'Pichidegua', 27),
(146, 'Quinta de Tilcoco', 27),
(147, 'Rancagua', 27),
(148, 'Rengo', 27),
(149, 'Requínoa', 27),
(150, 'San Vicente de Tagua Tagua', 27),
(151, 'La Estrella', 28),
(152, 'Litueche', 28),
(153, 'Marchihue', 28),
(154, 'Navidad', 28),
(155, 'Peredones', 28),
(156, 'Pichilemu', 28),
(157, 'Chépica', 29),
(158, 'Chimbarongo', 29),
(159, 'Lolol', 29),
(160, 'Nancagua', 29),
(161, 'Palmilla', 29),
(162, 'Peralillo', 29),
(163, 'Placilla', 29),
(164, 'Pumanque', 29),
(165, 'San Fernando', 29),
(166, 'Santa Cruz', 29),
(167, 'Cauquenes', 30),
(168, 'Chanco', 30),
(169, 'Pelluhue', 30),
(170, 'Curicó', 31),
(171, 'Hualañé', 31),
(172, 'Licantén', 31),
(173, 'Molina', 31),
(174, 'Rauco', 31),
(175, 'Romeral', 31),
(176, 'Sagrada Familia', 31),
(177, 'Teno', 31),
(178, 'Vichuquén', 31),
(179, 'Colbún', 32),
(180, 'Linares', 32),
(181, 'Longaví', 32),
(182, 'Parral', 32),
(183, 'Retiro', 32),
(184, 'San Javier', 32),
(185, 'Villa Alegre', 32),
(186, 'Yerbas Buenas', 32),
(187, 'Constitución', 33),
(188, 'Curepto', 33),
(189, 'Empedrado', 33),
(190, 'Maule', 33),
(191, 'Pelarco', 33),
(192, 'Pencahue', 33),
(193, 'Río Claro', 33),
(194, 'San Clemente', 33),
(195, 'San Rafael', 33),
(196, 'Talca', 33),
(197, 'Arauco', 34),
(198, 'Cañete', 34),
(199, 'Contulmo', 34),
(200, 'Curanilahue', 34),
(201, 'Lebu', 34),
(202, 'Los Álamos', 34),
(203, 'Tirúa', 34),
(204, 'Alto Biobío', 35),
(205, 'Antuco', 35),
(206, 'Cabrero', 35),
(207, 'Laja', 35),
(208, 'Los Ángeles', 35),
(209, 'Mulchén', 35),
(210, 'Nacimiento', 35),
(211, 'Negrete', 35),
(212, 'Quilaco', 35),
(213, 'Quilleco', 35),
(214, 'San Rosendo', 35),
(215, 'Santa Bárbara', 35),
(216, 'Tucapel', 35),
(217, 'Yumbel', 35),
(218, 'Chiguayante', 36),
(219, 'Concepción', 36),
(220, 'Coronel', 36),
(221, 'Florida', 36),
(222, 'Hualpén', 36),
(223, 'Hualqui', 36),
(224, 'Lota', 36),
(225, 'Penco', 36),
(226, 'San Pedro de La Paz', 36),
(227, 'Santa Juana', 36),
(228, 'Talcahuano', 36),
(229, 'Tomé', 36),
(230, 'Bulnes', 37),
(231, 'Chillán', 37),
(232, 'Chillán Viejo', 37),
(233, 'Cobquecura', 37),
(234, 'Coelemu', 37),
(235, 'Coihueco', 37),
(236, 'El Carmen', 37),
(237, 'Ninhue', 37),
(238, 'Ñiquen', 37),
(239, 'Pemuco', 37),
(240, 'Pinto', 37),
(241, 'Portezuelo', 37),
(242, 'Quillón', 37),
(243, 'Quirihue', 37),
(244, 'Ránquil', 37),
(245, 'San Carlos', 37),
(246, 'San Fabián', 37),
(247, 'San Ignacio', 37),
(248, 'San Nicolás', 37),
(249, 'Treguaco', 37),
(250, 'Yungay', 37),
(251, 'Carahue', 38),
(252, 'Cholchol', 38),
(253, 'Cunco', 38),
(254, 'Curarrehue', 38),
(255, 'Freire', 38),
(256, 'Galvarino', 38),
(257, 'Gorbea', 38),
(258, 'Lautaro', 38),
(259, 'Loncoche', 38),
(260, 'Melipeuco', 38),
(261, 'Nueva Imperial', 38),
(262, 'Padre Las Casas', 38),
(263, 'Perquenco', 38),
(264, 'Pitrufquén', 38),
(265, 'Pucón', 38),
(266, 'Saavedra', 38),
(267, 'Temuco', 38),
(268, 'Teodoro Schmidt', 38),
(269, 'Toltén', 38),
(270, 'Vilcún', 38),
(271, 'Villarrica', 38),
(272, 'Angol', 39),
(273, 'Collipulli', 39),
(274, 'Curacautín', 39),
(275, 'Ercilla', 39),
(276, 'Lonquimay', 39),
(277, 'Los Sauces', 39),
(278, 'Lumaco', 39),
(279, 'Purén', 39),
(280, 'Renaico', 39),
(281, 'Traiguén', 39),
(282, 'Victoria', 39),
(283, 'Corral', 40),
(284, 'Lanco', 40),
(285, 'Los Lagos', 40),
(286, 'Máfil', 40),
(287, 'Mariquina', 40),
(288, 'Paillaco', 40),
(289, 'Panguipulli', 40),
(290, 'Valdivia', 40),
(291, 'Futrono', 41),
(292, 'La Unión', 41),
(293, 'Lago Ranco', 41),
(294, 'Río Bueno', 41),
(295, 'Ancud', 42),
(296, 'Castro', 42),
(297, 'Chonchi', 42),
(298, 'Curaco de Vélez', 42),
(299, 'Dalcahue', 42),
(300, 'Puqueldón', 42),
(301, 'Queilén', 42),
(302, 'Quemchi', 42),
(303, 'Quellón', 42),
(304, 'Quinchao', 42),
(305, 'Calbuco', 43),
(306, 'Cochamó', 43),
(307, 'Fresia', 43),
(308, 'Frutillar', 43),
(309, 'Llanquihue', 43),
(310, 'Los Muermos', 43),
(311, 'Maullín', 43),
(312, 'Puerto Montt', 43),
(313, 'Puerto Varas', 43),
(314, 'Osorno', 44),
(315, 'Puero Octay', 44),
(316, 'Purranque', 44),
(317, 'Puyehue', 44),
(318, 'Río Negro', 44),
(319, 'San Juan de la Costa', 44),
(320, 'San Pablo', 44),
(321, 'Chaitén', 45),
(322, 'Futaleufú', 45),
(323, 'Hualaihué', 45),
(324, 'Palena', 45),
(325, 'Aisén', 46),
(326, 'Cisnes', 46),
(327, 'Guaitecas', 46),
(328, 'Cochrane', 47),
(329, 'O\'higgins', 47),
(330, 'Tortel', 47),
(331, 'Coihaique', 48),
(332, 'Lago Verde', 48),
(333, 'Chile Chico', 49),
(334, 'Río Ibáñez', 49),
(335, 'Antártica', 50),
(336, 'Cabo de Hornos', 50),
(337, 'Laguna Blanca', 51),
(338, 'Punta Arenas', 51),
(339, 'Río Verde', 51),
(340, 'San Gregorio', 51),
(341, 'Porvenir', 52),
(342, 'Primavera', 52),
(343, 'Timaukel', 52),
(344, 'Natales', 53),
(345, 'Torres del Paine', 53);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_sii`
--

CREATE TABLE `documento_sii` (
  `id_documento_sii` bigint(20) UNSIGNED NOT NULL,
  `numero` int(7) NOT NULL,
  `tipo_documento` int(3) NOT NULL,
  `tipo_compra` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rut_proveedor` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `folio` int(11) NOT NULL,
  `fecha_documento` date NOT NULL,
  `monto_exento` int(11) NOT NULL,
  `monto_neto` int(11) NOT NULL,
  `monto_iva_recuperable` int(11) NOT NULL,
  `monto_iva_no_recuperable` int(11) NOT NULL,
  `cod_iva_no_recuperable` int(11) NOT NULL,
  `monto_total` int(11) NOT NULL,
  `monto_neto_activo_fijo` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `iva_activo_fijo` int(11) NOT NULL,
  `iva_uso_comun` int(11) NOT NULL,
  `impto_sin_derecho_credito` int(11) NOT NULL,
  `iva_no_retenido` int(11) NOT NULL,
  `tabacos_puros` int(11) NOT NULL,
  `tabacos_cigarrillos` int(11) NOT NULL,
  `tabacos_elaborados` int(11) NOT NULL,
  `NCE` int(11) NOT NULL,
  `codigo_otro_impuesto` int(11) NOT NULL,
  `valor_otro_impuesto` int(11) NOT NULL,
  `tasa_otro_impuesto` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documento_sii`
--

INSERT INTO `documento_sii` (`id_documento_sii`, `numero`, `tipo_documento`, `tipo_compra`, `rut_proveedor`, `razon_social`, `folio`, `fecha_documento`, `monto_exento`, `monto_neto`, `monto_iva_recuperable`, `monto_iva_no_recuperable`, `cod_iva_no_recuperable`, `monto_total`, `monto_neto_activo_fijo`, `iva_activo_fijo`, `iva_uso_comun`, `impto_sin_derecho_credito`, `iva_no_retenido`, `tabacos_puros`, `tabacos_cigarrillos`, `tabacos_elaborados`, `NCE`, `codigo_otro_impuesto`, `valor_otro_impuesto`, `tasa_otro_impuesto`) VALUES
(833, 1, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 860562, '2018-04-27', 0, 950627, 180619, 0, 0, 1131246, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(834, 2, 33, 'Del Giro', '89854000-6', 'TURISMO TAITAO S.A.', 20365, '2018-04-27', 0, 699100, 132829, 0, 0, 831929, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(835, 3, 33, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 120, '2018-04-27', 0, 4484000, 851960, 0, 0, 5335960, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(836, 4, 33, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 121, '2018-04-27', 0, 230000, 43700, 0, 0, 273700, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(837, 5, 33, 'Del Giro', '76496130-7', 'Sociedad Concesionaria Costanera Norte S.A.', 2429903, '2018-04-27', 9333, 419, 80, 0, 0, 9832, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(838, 6, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16384961, '2018-04-27', 0, 132728, 25218, 0, 0, 157946, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(839, 7, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 895189, '2018-04-30', 134068, 10900, 2071, 0, 0, 147039, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(840, 8, 33, 'Del Giro', '79588870-5', 'ESMAX DISTRIBUCION LIMITADA', 966697, '2018-04-29', 0, 87306, 16588, 0, 0, 118687, '', 0, 0, 0, 0, 0, 0, 0, 0, 28, 14792, '12.46'),
(841, 9, 33, 'Del Giro', '79588870-5', 'ESMAX DISTRIBUCION LIMITADA', 966698, '2018-04-29', 0, 14058, 2671, 0, 0, 19409, '', 0, 0, 0, 0, 0, 0, 0, 0, 28, 2681, '13.81'),
(842, 10, 33, 'Del Giro', '79588870-5', 'ESMAX DISTRIBUCION LIMITADA', 966699, '2018-04-29', 0, 34296, 6516, 0, 0, 63649, '', 0, 0, 0, 0, 0, 0, 0, 0, 35, 22837, '35.88'),
(843, 11, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16386938, '2018-04-30', 0, 339214, 64451, 0, 0, 403665, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(844, 12, 33, 'Del Giro', '76491253-5', 'INGENIERIA Y SERVICIOS GLOBALNET SPA', 2086, '2018-05-01', 0, 78775, 14967, 0, 0, 93742, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(845, 13, 33, 'Del Giro', '96992030-1', 'Sociedad Concesionaria Vespucio Norte Express S.A.', 1296340, '2018-04-27', 3278, 486, 92, 0, 0, 3856, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(846, 14, 33, 'Del Giro', '76425136-9', 'TRANSPORTES MAPS LIMITADA', 1450, '2018-05-02', 0, 2000000, 380000, 0, 0, 2380000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(847, 15, 33, 'Del Giro', '79588870-5', 'ESMAX DISTRIBUCION LIMITADA', 967651, '2018-04-30', 0, 6270, 1191, 0, 0, 8531, '', 0, 0, 0, 0, 0, 0, 0, 0, 28, 1070, '12.54'),
(848, 16, 33, 'Del Giro', '79588870-5', 'ESMAX DISTRIBUCION LIMITADA', 967652, '2018-04-30', 0, 9278, 1763, 0, 0, 12704, '', 0, 0, 0, 0, 0, 0, 0, 0, 28, 1663, '13.09'),
(849, 17, 33, 'Del Giro', '76425136-9', 'TRANSPORTES MAPS LIMITADA', 1456, '2018-05-03', 0, 1800000, 342000, 0, 0, 2142000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(850, 18, 33, 'Del Giro', '76425136-9', 'TRANSPORTES MAPS LIMITADA', 1457, '2018-05-03', 0, 1700000, 323000, 0, 0, 2023000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(851, 19, 33, 'Del Giro', '96919400-7', 'EAGLE COPTERS SOUTH AMERICA S.A.', 2646, '2018-04-20', 0, 11888400, 2258796, 0, 0, 14147196, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(852, 20, 33, 'Del Giro', '96697410-9', 'ENTEL TELEFONIA LOCAL S.A.', 7407395, '2018-05-01', 0, 32475, 6170, 0, 0, 38645, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(853, 21, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1914, '2018-04-16', 0, 14812683, 2814410, 0, 0, 17627093, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(854, 22, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1915, '2018-04-16', 0, 3003048, 570579, 0, 0, 3573627, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(855, 23, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1937, '2018-04-30', 0, 897542, 170533, 0, 0, 1068075, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(856, 24, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1942, '2018-04-30', 0, 392700, 74613, 0, 0, 467313, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(857, 25, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1943, '2018-04-30', 0, 9673914, 1838044, 0, 0, 11511958, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(858, 26, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1944, '2018-04-30', 0, 452041, 85888, 0, 0, 537929, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(859, 27, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1945, '2018-04-30', 0, 7111651, 1351214, 0, 0, 8462865, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(860, 28, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1946, '2018-04-30', 0, 293576, 55779, 0, 0, 349355, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(861, 29, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1947, '2018-04-30', 0, 4476537, 850542, 0, 0, 5327079, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(862, 30, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1948, '2018-04-30', 0, 60796270, 11551291, 0, 0, 72347561, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(863, 31, 33, 'Del Giro', '96919400-7', 'EAGLE COPTERS SOUTH AMERICA S.A.', 2656, '2018-05-02', 0, 34269868, 6511275, 0, 0, 40781143, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(864, 32, 33, 'Del Giro', '96919400-7', 'EAGLE COPTERS SOUTH AMERICA S.A.', 2658, '2018-05-02', 0, 13136070, 2495853, 0, 0, 15631923, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(865, 33, 33, 'Del Giro', '77574330-1', 'SERVICIOS Y TECNOLOGIA LIMITADA', 618636, '2018-05-06', 0, 7294, 1386, 0, 0, 8680, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(866, 34, 33, 'Del Giro', '89854000-6', 'TURISMO TAITAO S.A.', 21221, '2018-05-07', 0, 145800, 27702, 0, 0, 173502, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(867, 35, 33, 'Del Giro', '96556940-5', 'PROVEEDORES INTEGRALES PRISA S A', 10138953, '2018-05-08', 0, 22370, 4250, 0, 0, 26620, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(868, 36, 33, 'Del Giro', '96711590-8', 'Manantial S.A.', 3426651, '2018-04-30', 0, 20000, 3800, 0, 0, 23800, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(869, 37, 33, 'Del Giro', '96711590-8', 'Manantial S.A.', 3426652, '2018-04-30', 0, 20000, 3800, 0, 0, 23800, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(870, 38, 33, 'Del Giro', '96711590-8', 'MANANTIAL S.A.', 3021327, '2018-04-30', 0, 15560, 2956, 0, 0, 18516, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(871, 39, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16439973, '2018-05-07', 0, 31761, 6035, 0, 0, 37796, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(872, 40, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16439974, '2018-05-07', 0, 404, 77, 0, 0, 481, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(873, 41, 33, 'Del Giro', '96711590-8', 'Manantial S.A.', 3428582, '2018-04-30', 0, 20000, 3800, 0, 0, 23800, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(874, 42, 33, 'Del Giro', '96711590-8', 'MANANTIAL S.A.', 3028693, '2018-04-30', 0, 9880, 1877, 0, 0, 11757, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(875, 43, 33, 'Del Giro', '96711590-8', 'MANANTIAL S.A.', 3028953, '2018-04-30', 0, 9880, 1877, 0, 0, 11757, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(876, 44, 33, 'Del Giro', '96919400-7', 'EAGLE COPTERS SOUTH AMERICA S.A.', 2665, '2018-05-07', 0, 30483922, 5791945, 0, 0, 36275867, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(877, 45, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16478334, '2018-05-08', 0, 7632, 1450, 0, 0, 9082, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(878, 46, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 862858, '2018-05-11', 0, 785778, 149298, 0, 0, 935076, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(879, 47, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 862876, '2018-05-11', 0, 1306211, 248180, 0, 0, 1554391, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(880, 48, 33, 'Del Giro', '76491253-5', 'INGENIERIA Y SERVICIOS GLOBALNET SPA', 2127, '2018-05-07', 0, 244958, 46542, 0, 0, 291500, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(881, 49, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16493243, '2018-05-14', 0, 1361, 259, 0, 0, 1620, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(882, 50, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16493244, '2018-05-14', 0, 74220, 14102, 0, 0, 88322, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(883, 51, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16493245, '2018-05-14', 0, 2563, 487, 0, 0, 3050, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(884, 52, 33, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 26128, '2018-05-15', 0, 135030, 25656, 0, 0, 160686, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(885, 53, 33, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 26144, '2018-05-16', 0, 135030, 25656, 0, 0, 160686, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(886, 54, 33, 'Del Giro', '11775974-1', 'RICHARDS ALBERTO JARA RODRIGUEZ', 145, '2018-05-16', 0, 220000, 41800, 0, 0, 261800, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(887, 55, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 863434, '2018-05-16', 0, 1092801, 207632, 0, 0, 1300433, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(888, 56, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16461032, '2018-05-07', 0, 7416, 1409, 0, 0, 8825, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(889, 57, 33, 'Del Giro', '96806980-2', 'Entel PCS Telecomunicaciones S.A.', 36279617, '2018-05-11', 0, 559288, 106265, 0, 0, 665553, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(890, 58, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16508555, '2018-05-16', 0, 1361, 259, 0, 0, 1620, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(891, 59, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 863595, '2018-05-17', 0, 459233, 87254, 0, 0, 546487, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(892, 60, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16519136, '2018-05-17', 0, 75707, 14384, 0, 0, 90091, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(893, 61, 33, 'Del Giro', '86966100-7', 'DHL EXPRESS (CHILE) LIMITADA', 1147672, '2018-05-18', 0, 8346, 1586, 0, 0, 9932, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(894, 62, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 904026, '2018-05-22', 335419, 22050, 4190, 0, 0, 361659, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(895, 63, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 904027, '2018-05-22', 210156, 21800, 4142, 0, 0, 236098, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(896, 64, 33, 'Del Giro', '97006000-6', 'BANCO DE CREDITO E INVERSIONES', 16524663, '2018-05-22', 0, 127406, 24207, 0, 0, 151613, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(897, 65, 33, 'Del Giro', '96565580-8', 'CIA DE LEASING TATTERSALL S A', 864698, '2018-05-23', 0, 448385, 85193, 0, 0, 533578, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(898, 66, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 905900, '2018-05-24', 3551112, 180120, 34223, 0, 0, 3765455, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(899, 67, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 905901, '2018-05-24', 2702368, 120080, 22815, 0, 0, 2845263, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(900, 68, 33, 'Del Giro', '85633900-9', 'TRAVEL SECURITY SA', 905902, '2018-05-24', 1361874, 60515, 11498, 0, 0, 1433887, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(901, 69, 33, 'Del Giro', '76496130-7', 'Sociedad Concesionaria Costanera Norte S.A.', 2469818, '2018-05-27', 3296, 422, 80, 0, 0, 3798, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(902, 70, 33, 'Del Giro', '96919400-7', 'EAGLE COPTERS SOUTH AMERICA S.A.', 2671, '2018-05-18', 0, 12647200, 2402968, 0, 0, 15050168, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(903, 71, 33, 'Del Giro', '86966100-7', 'DHL EXPRESS (CHILE) LIMITADA', 1155434, '2018-05-25', 81734, 2809, 534, 0, 0, 85077, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(904, 72, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1957, '2018-05-18', 0, 10048142, 1909147, 0, 0, 11957289, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(905, 73, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 1989, '2018-05-25', 0, 714344, 135725, 0, 0, 850069, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(906, 74, 33, 'Del Giro', '89854000-6', 'TURISMO TAITAO S.A.', 20396, '2018-05-29', 0, 109800, 20862, 0, 0, 130662, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(907, 75, 33, 'Del Giro', '96992030-1', 'Sociedad Concesionaria Vespucio Norte Express S.A.', 1323863, '2018-05-25', 2225, 486, 92, 0, 0, 2803, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(908, 76, 33, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 26349, '2018-05-30', 0, 874447, 166145, 0, 0, 1040592, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(909, 77, 33, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 26350, '2018-05-30', 0, 556028, 105645, 0, 0, 661673, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(910, 78, 33, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 26351, '2018-05-30', 0, 1039528, 197510, 0, 0, 1237038, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(911, 79, 33, 'Del Giro', '76923540-K', 'EAGLE COPTERS CENTRO MANTENIMIENTO AUTORIZADO S.A.', 2010, '2018-05-29', 0, 111353, 21157, 0, 0, 132510, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(912, 80, 33, 'Del Giro', '76491253-5', 'INGENIERIA Y SERVICIOS GLOBALNET SPA', 2141, '2018-05-26', 0, 135714, 25786, 0, 0, 161500, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(913, 81, 34, 'Del Giro', '80314700-0', 'Empresa de Transportes Rurales SpA', 7260141, '2018-04-30', 147500, 0, 0, 0, 0, 147500, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(914, 82, 34, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 14, '2018-04-27', 192151, 0, 0, 0, 0, 192151, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(915, 83, 34, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 15, '2018-04-27', 673249, 0, 0, 0, 0, 673249, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(916, 84, 34, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 16, '2018-04-27', 893336, 0, 0, 0, 0, 893336, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(917, 85, 34, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 17, '2018-04-27', 60900, 0, 0, 0, 0, 60900, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(918, 86, 34, 'Del Giro', '76496130-7', 'Sociedad Concesionaria Costanera Norte S.A.', 4713534, '2018-04-27', 6162, 0, 0, 0, 0, 6162, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(919, 87, 34, 'Del Giro', '76010909-6', 'ZEAL Sociedad Concesionaria S.A.', 92756, '2018-04-30', 27320, 0, 0, 0, 0, 27320, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(920, 88, 34, 'Del Giro', '76010909-6', 'ZEAL Sociedad Concesionaria S.A.', 92790, '2018-04-30', 34150, 0, 0, 0, 0, 34150, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(921, 89, 34, 'Del Giro', '76010909-6', 'ZEAL Sociedad Concesionaria S.A.', 92798, '2018-04-30', 13660, 0, 0, 0, 0, 13660, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(922, 90, 34, 'Del Giro', '76161557-2', 'ERBETTA, COSTA, MELO, GUZMAN ABOGADOS LIMITADA', 808, '2018-05-04', 486083, 0, 0, 0, 0, 486083, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(923, 91, 34, 'Del Giro', '76052468-9', 'ADASME Y COMPANIA LIMITADA', 533, '2018-05-14', 1650000, 0, 0, 0, 0, 1650000, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(924, 92, 34, 'Del Giro', '76052468-9', 'ADASME Y COMPANIA LIMITADA', 534, '2018-05-14', 1583334, 0, 0, 0, 0, 1583334, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(925, 93, 34, 'Del Giro', '61104000-8', 'Dirección General de Aeronautica Civil', 188297, '2018-05-16', 1665, 0, 0, 0, 0, 1665, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(926, 94, 34, 'Del Giro', '96945440-8', 'SOC CONCESIONARIA AUTOPISTA CENTRAL S A', 5515523, '2018-05-18', 9687, 0, 0, 0, 0, 9687, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(927, 95, 34, 'Del Giro', '96945440-8', 'SOC CONCESIONARIA AUTOPISTA CENTRAL S A', 5513089, '2018-05-18', 10609, 0, 0, 0, 0, 10609, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(928, 96, 34, 'Del Giro', '96618230-K', 'Aldunate y Asociados S.A.', 492, '2018-05-22', 2029109, 0, 0, 0, 0, 2029109, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(929, 97, 34, 'Del Giro', '6450825-3', 'OSCAR CARLOS ANTONIO MEDEL OLAVARRIA', 2, '2018-05-23', 722222, 0, 0, 0, 0, 722222, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(930, 98, 34, 'Del Giro', '76496130-7', 'Sociedad Concesionaria Costanera Norte S.A.', 4766859, '2018-05-27', 5088, 0, 0, 0, 0, 5088, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(931, 99, 34, 'Del Giro', '76604401-8', 'JAC CARGO LIMITADA', 215, '2018-05-28', 2348706, 0, 0, 0, 0, 2348706, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(932, 100, 34, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 7261, '2018-05-30', 202545, 0, 0, 0, 0, 202545, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(933, 101, 34, 'Del Giro', '80314700-0', 'Empresa de Transportes Rurales SpA', 7262062, '2018-05-31', 51600, 0, 0, 0, 0, 51600, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(934, 102, 61, 'Del Giro', '76703240-4', 'TRANSPORTES QUIROZ HERMANOS LTDA', 4, '2018-04-27', 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(935, 103, 61, 'Del Giro', '76157291-1', 'SERVICIOS DE AVIACION HELILOG LIMITADA', 3, '2018-05-02', 0, 8368674, 1590048, 0, 0, 9958722, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00'),
(936, 104, 61, 'Del Giro', '76057714-6', 'AG.AD.ALBERTO ROMERO SANCHEZ Y CIA.LTDA.', 1319, '2018-05-16', 0, 135030, 25656, 0, 0, 160686, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_sistema`
--

CREATE TABLE `documento_sistema` (
  `id_documento_sistema` bigint(20) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `correl` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `proveedor` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `rut` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `exento` int(11) NOT NULL,
  `afecto` int(11) NOT NULL,
  `iva_cd` int(11) NOT NULL,
  `iva_sd` int(11) NOT NULL,
  `otros_impuestos` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `documento_sistema`
--

INSERT INTO `documento_sistema` (`id_documento_sistema`, `numero`, `correl`, `fecha`, `proveedor`, `rut`, `exento`, `afecto`, `iva_cd`, `iva_sd`, `otros_impuestos`, `total`) VALUES
(1041, 3, 42, '2018-05-02', 'SERV. DE AVIACION HELILOG LTDA.', ' 76157291-1', 0, -8368674, -1590048, 0, 0, -9958722),
(1042, 1319, 90, '2018-05-16', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, -135030, -25656, 0, 0, -160686),
(1043, 808, 16, '2018-05-04', 'ERBETTA COSTA MELO GUZMAN ABOGADOS .LTDA.', ' 76161557-2', 486083, 0, 0, 0, 0, 486083),
(1044, 533, 64, '2018-05-14', 'ADASME Y CIA. LTDA.', ' 76052468-9', 1650000, 0, 0, 0, 0, 1650000),
(1045, 188297, 68, '2018-05-16', 'DIRECCION GENERAL DE AERONAUTICA CIVIL', ' 61104000-8', 1665, 0, 0, 0, 0, 1665),
(1046, 5515523, 73, '2018-05-18', 'SOC. CONCES. AUTOPISTA CENTRAL S.A.', ' 96945440-8', 9687, 0, 0, 0, 0, 9687),
(1047, 5513089, 74, '2018-05-18', 'SOC. CONCES. AUTOPISTA CENTRAL S.A.', ' 96945440-8', 10609, 0, 0, 0, 0, 10609),
(1048, 492, 76, '2018-05-22', 'ALDUNATE Y ASOCIADOS S.A', ' 96618230-K', 2029109, 0, 0, 0, 0, 2029109),
(1049, 4766859, 85, '2018-05-27', 'SOC.CONCES. COSTANERA NORTE', ' 76496130-7', 5088, 0, 0, 0, 0, 5088),
(1050, 534, 88, '2018-05-14', 'ADASME Y CIA. LTDA.', ' 76052468-9', 1583334, 0, 0, 0, 0, 1583334),
(1051, 2, 89, '2018-05-23', 'OSCAR MEDEL OLAVARRIA', '  6450825-3', 722222, 0, 0, 0, 0, 722222),
(1052, 7262062, 96, '2018-05-31', 'TUR BUS', ' 80314700-0', 51600, 0, 0, 0, 0, 51600),
(1053, 215, 98, '2018-05-28', 'JAC  CARGO  LTDA.', ' 76604401-8', 2348706, 0, 0, 0, 0, 2348706),
(1054, 7261, 101, '2018-05-30', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 202545, 0, 0, 0, 0, 202545),
(1055, 7407395, 1, '2018-05-01', 'ENTEL TELEFONIA LOCAL', ' 96697410-9', 0, 32475, 6170, 0, 0, 38645),
(1056, 2086, 2, '2018-05-01', 'ING.Y SERV. GLOBALNET  SPA', ' 76491253-5', 0, 78775, 14967, 0, 0, 93742),
(1057, 1450, 6, '2018-05-02', 'TRANSPORTES  MAPS LTDA.', ' 76425136-9', 0, 2000000, 380000, 0, 0, 2380000),
(1058, 1456, 7, '2018-05-03', 'TRANSPORTES  MAPS LTDA.', ' 76425136-9', 0, 1800000, 342000, 0, 0, 2142000),
(1059, 1457, 8, '2018-05-03', 'TRANSPORTES  MAPS LTDA.', ' 76425136-9', 0, 1700000, 323000, 0, 0, 2023000),
(1060, 21221, 40, '2018-05-07', 'TURISMO TAITAO S.A.', ' 89854000-6', 0, 145800, 27702, 0, 0, 173502),
(1061, 618636, 41, '2018-05-06', 'SERVICIOS Y TECNOLOGIA LTDA.', ' 77574330-1', 0, 7294, 1386, 0, 0, 8680),
(1062, 16478334, 43, '2018-05-08', 'BANCO  BCI', ' 97006000-6', 0, 7632, 1450, 0, 0, 9082),
(1063, 10138953, 44, '2018-05-08', 'PROVEED.INTEGRALES PRISA S.A.', ' 96556940-5', 0, 22370, 4250, 0, 0, 26620),
(1064, 2665, 45, '2018-05-07', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 0, 30483922, 5791945, 0, 0, 36275867),
(1065, 862876, 46, '2018-05-11', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 1306211, 248180, 0, 0, 1554391),
(1066, 862858, 47, '2018-05-11', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 785778, 149298, 0, 0, 935076),
(1067, 2658, 48, '2018-05-02', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 0, 13136070, 2495853, 0, 0, 15631923),
(1068, 2646, 49, '2018-05-20', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 0, 11888400, 2258796, 0, 0, 14147196),
(1069, 2656, 50, '2018-05-02', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 0, 34269868, 6511275, 0, 0, 40781143),
(1070, 2127, 51, '2018-05-07', 'ING.Y SERV. GLOBALNET  SPA', ' 76491253-5', 0, 244958, 46542, 0, 0, 291500),
(1071, 16439974, 52, '2018-05-07', 'BANCO  BCI', ' 97006000-6', 0, 404, 77, 0, 0, 481),
(1072, 16439973, 53, '2018-05-07', 'BANCO  BCI', ' 97006000-6', 0, 31761, 6035, 0, 0, 37796),
(1073, 145, 60, '2018-05-16', 'RICHARDS A. JARA RODRIGUEZ', ' 11775974-1', 0, 220000, 41800, 0, 0, 261800),
(1074, 26351, 61, '2018-05-30', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, 1039528, 197510, 0, 0, 1237038),
(1075, 16508555, 62, '2018-05-16', 'BANCO  BCI', ' 97006000-6', 0, 1361, 259, 0, 0, 1620),
(1076, 16519136, 63, '2018-05-17', 'BANCO  BCI', ' 97006000-6', 0, 75707, 14384, 0, 0, 90091),
(1077, 16493243, 65, '2018-05-14', 'BANCO  BCI', ' 97006000-6', 0, 1361, 259, 0, 0, 1620),
(1078, 16493244, 66, '2018-05-14', 'BANCO  BCI', ' 97006000-6', 0, 74220, 14102, 0, 0, 88322),
(1079, 16493245, 67, '2018-05-14', 'BANCO  BCI', ' 97006000-6', 0, 2563, 487, 0, 0, 3050),
(1080, 863434, 69, '2018-05-16', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 1092801, 207632, 0, 0, 1300433),
(1081, 16461032, 70, '2018-05-07', 'BANCO  BCI', ' 97006000-6', 0, 7416, 1409, 0, 0, 8825),
(1082, 36279617, 71, '2018-05-11', 'ENTEL  PCS  TELECOMUNICAC. S.A.', ' 96806980-2', 0, 559288, 106265, 0, 0, 665553),
(1083, 16524663, 75, '2018-05-22', 'BANCO  BCI', ' 97006000-6', 0, 127406, 24207, 0, 0, 151613),
(1084, 904026, 77, '2018-05-22', 'TRAVEL SECURITY', ' 85633900-9', 335419, 22050, 4190, 0, 0, 361659),
(1085, 904027, 78, '2018-05-22', 'TRAVEL SECURITY', ' 85633900-9', 210156, 21800, 4142, 0, 0, 236098),
(1086, 1147672, 79, '2018-05-18', 'DHL EXPRESS  (CHILE)  LTDA', ' 86966100-7', 0, 8346, 1586, 0, 0, 9932),
(1087, 905902, 80, '2018-05-24', 'TRAVEL SECURITY', ' 85633900-9', 1361874, 60515, 11498, 0, 0, 1433887),
(1088, 905900, 81, '2018-05-24', 'TRAVEL SECURITY', ' 85633900-9', 3551112, 180120, 34223, 0, 0, 3765455),
(1089, 864698, 82, '2018-05-23', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 448385, 85193, 0, 0, 533578),
(1090, 905901, 83, '2018-05-24', 'TRAVEL SECURITY', ' 85633900-9', 2702368, 120080, 22815, 0, 0, 2845263),
(1091, 2469818, 84, '2018-05-27', 'SOC.CONCES. COSTANERA NORTE', ' 76496130-7', 3296, 422, 80, 0, 0, 3798),
(1092, 863595, 87, '2018-05-17', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 459233, 87254, 0, 0, 546487),
(1093, 26128, 91, '2018-05-15', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, 135030, 25656, 0, 0, 160686),
(1094, 1155434, 92, '2018-05-25', 'DHL EXPRESS  (CHILE)  LTDA', ' 86966100-7', 81734, 2809, 534, 0, 0, 85077),
(1095, 2671, 93, '2018-05-18', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 0, 12647200, 2402968, 0, 0, 15050168),
(1096, 20396, 94, '2018-05-29', 'TURISMO TAITAO S.A.', ' 89854000-6', 0, 109800, 20862, 0, 0, 130662),
(1097, 1323863, 95, '2018-05-25', 'SOC.CONC. VESPUCIO NORTE', ' 96992030-1', 2225, 486, 92, 0, 0, 2803),
(1098, 2141, 97, '2018-05-26', 'ING.Y SERV. GLOBALNET  SPA', ' 76491253-5', 0, 135714, 25786, 0, 0, 161500),
(1099, 1989, 99, '2018-05-25', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 714344, 135725, 0, 0, 850069),
(1100, 1957, 100, '2018-05-18', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 10048142, 1909147, 0, 0, 11957289),
(1101, 26144, 102, '2018-05-16', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, 135030, 25656, 0, 0, 160686),
(1102, 26349, 103, '2018-05-30', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, 874447, 166145, 0, 0, 1040592),
(1103, 26350, 104, '2018-05-30', 'AG.AD. ALBERTO ROMERO S.Y CIA. LT', ' 76057714-6', 0, 556028, 105645, 0, 0, 661673),
(1104, 4, 28, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 0, 0, 0, 0, 0, 0),
(1105, 7260141, 3, '2018-04-30', 'TUR BUS', ' 80314700-0', 147500, 0, 0, 0, 0, 147500),
(1106, 4713534, 5, '2018-04-27', 'SOC.CONCES. COSTANERA NORTE', ' 76496130-7', 6162, 0, 0, 0, 0, 6162),
(1107, 92790, 19, '2018-04-30', 'ZEAL  SOC. CONCESIONARIA S,A', ' 76010909-6', 34150, 0, 0, 0, 0, 34150),
(1108, 92798, 20, '2018-04-30', 'ZEAL  SOC. CONCESIONARIA S,A', ' 76010909-6', 13660, 0, 0, 0, 0, 13660),
(1109, 92756, 21, '2018-04-30', 'ZEAL  SOC. CONCESIONARIA S,A', ' 76010909-6', 27320, 0, 0, 0, 0, 27320),
(1110, 16, 29, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 893336, 0, 0, 0, 0, 893336),
(1111, 17, 30, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 60900, 0, 0, 0, 0, 60900),
(1112, 15, 31, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 673249, 0, 0, 0, 0, 673249),
(1113, 14, 32, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 192151, 0, 0, 0, 0, 192151),
(1114, 2076, 72, '2018-04-30', 'EAGLE COPTERS SOUTH AMERICA S.A', ' 96919400-7', 3495120, 0, 0, 0, 0, 3495120),
(1115, 2429903, 4, '2018-04-27', 'SOC.CONCES. COSTANERA NORTE', ' 76496130-7', 9333, 419, 80, 0, 0, 9832),
(1116, 1937, 9, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 897542, 170533, 0, 0, 1068075),
(1117, 1942, 10, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 392700, 74613, 0, 0, 467313),
(1118, 1943, 11, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 9673914, 1838044, 0, 0, 11511958),
(1119, 1944, 12, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 452041, 85888, 0, 0, 537929),
(1120, 1945, 13, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 7111651, 1351214, 0, 0, 8462865),
(1121, 1946, 14, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 293576, 55779, 0, 0, 349355),
(1122, 1947, 15, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 4476537, 850542, 0, 0, 5327079),
(1123, 860562, 17, '2018-04-27', 'CIA DE LEASING TATTERSALL', ' 96565580-8', 0, 950627, 180619, 0, 0, 1131246),
(1124, 895189, 18, '2018-04-30', 'TRAVEL SECURITY', ' 85633900-9', 134068, 10900, 2071, 0, 0, 147039),
(1125, 1296340, 22, '2018-04-27', 'SOC.CONC. VESPUCIO NORTE', ' 96992030-1', 3278, 486, 92, 0, 0, 3856),
(1126, 16386938, 23, '2018-04-30', 'BANCO  BCI', ' 97006000-6', 0, 339214, 64451, 0, 0, 403665),
(1127, 16384961, 24, '2018-04-27', 'BANCO  BCI', ' 97006000-6', 0, 132728, 25218, 0, 0, 157946),
(1128, 966698, 25, '2018-04-29', 'PETROBRAS', ' 79588870-5', 2680, 14058, 2671, 0, 0, 19409),
(1129, 966697, 26, '2018-04-29', 'PETROBRAS', ' 79588870-5', 14793, 87306, 16588, 0, 0, 118687),
(1130, 966699, 27, '2018-04-29', 'PETROBRAS', ' 79588870-5', 22837, 34296, 6516, 0, 0, 63649),
(1131, 121, 33, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 0, 230000, 43700, 0, 0, 273700),
(1132, 120, 34, '2018-04-27', 'TRANSP.QUIROZ HNOS. LTDA', ' 76703240-4', 0, 4484000, 851960, 0, 0, 5335960),
(1133, 20365, 35, '2018-04-27', 'TURISMO TAITAO S.A.', ' 89854000-6', 0, 699100, 132829, 0, 0, 831929),
(1134, 1915, 36, '2018-04-16', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 3003048, 570579, 0, 0, 3573627),
(1135, 1914, 37, '2018-04-16', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 14812683, 2814410, 0, 0, 17627093),
(1136, 967651, 38, '2018-04-30', 'PETROBRAS', ' 79588870-5', 1070, 6270, 1191, 0, 0, 8531),
(1137, 967652, 39, '2018-04-30', 'PETROBRAS', ' 79588870-5', 1663, 9278, 1763, 0, 0, 12704),
(1138, 3028953, 54, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 9880, 1877, 0, 0, 11757),
(1139, 3021327, 55, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 15560, 2956, 0, 0, 18516),
(1140, 3428582, 56, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 20000, 3800, 0, 0, 23800),
(1141, 3028693, 57, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 9880, 1877, 0, 0, 11757),
(1142, 3426651, 58, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 20000, 3800, 0, 0, 23800),
(1143, 3426652, 59, '2018-04-30', 'MANANTIAL  S.A', ' 96711590-8', 0, 20000, 3800, 0, 0, 23800),
(1144, 1948, 86, '2018-04-30', 'EAGLE COPTERS CENTRO DE MANTENIMIENTO', ' 76923540-K', 0, 60796270, 11551291, 0, 0, 72347561);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `glosa_operacion`
--

CREATE TABLE `glosa_operacion` (
  `id_glosa_operacion` int(3) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `glosa_operacion`
--

INSERT INTO `glosa_operacion` (`id_glosa_operacion`, `nombre`) VALUES
(1, 'venta afecta a IVA'),
(2, 'exportación'),
(3, 'compra exenta de IVA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_caja`
--

CREATE TABLE `libro_caja` (
  `id_libro_caja` bigint(20) UNSIGNED NOT NULL,
  `documento` int(1) NOT NULL COMMENT '1 Ingreso, 2 Egreso',
  `tipo_documento` int(2) NOT NULL,
  `rut_emisor` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_operacion` date NOT NULL,
  `monto_neto` int(12) NOT NULL,
  `iva` int(12) NOT NULL,
  `m_no_gravada` int(11) NOT NULL COMMENT 'Monto operaciones exentas o no gravadas con IVA',
  `monto_total` int(11) NOT NULL COMMENT '(Monto percibido o pagado',
  `monto_percibido` int(11) NOT NULL,
  `glosa_operacion` int(11) NOT NULL,
  `entidad_relacionada` tinyint(1) NOT NULL COMMENT 'Operación con entidad relacionada',
  `percepcion` tinyint(1) NOT NULL COMMENT '(Percepción o pago proviene de operación devengada con anterioridad al ingreso al régimen simplificado o al 31.12.2014',
  `plazo_pago` tinyint(1) NOT NULL COMMENT 'Operación pactada con pago a plazo',
  `fecha_exi` date NOT NULL COMMENT 'Fecha de exigibilidad del pago',
  `monto_ingreso` int(12) NOT NULL,
  `monto_egreso` int(12) NOT NULL,
  `saldo` int(12) NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `libro_caja`
--

INSERT INTO `libro_caja` (`id_libro_caja`, `documento`, `tipo_documento`, `rut_emisor`, `fecha_operacion`, `monto_neto`, `iva`, `m_no_gravada`, `monto_total`, `monto_percibido`, `glosa_operacion`, `entidad_relacionada`, `percepcion`, `plazo_pago`, `fecha_exi`, `monto_ingreso`, `monto_egreso`, `saldo`, `id_usuario`) VALUES
(1, 1, 30, '22222222-2', '2018-06-08', 0, 19, 0, 0, 0, 1, 1, 1, 1, '2018-06-28', 0, 0, 0, 1),
(2, 1, 32, '25686840-6', '2018-05-31', 12, 19, 500, 500, 500, 3, 0, 0, 0, '1970-01-01', 500, 500, 500, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `provincia_id` int(11) NOT NULL,
  `provincia_nombre` varchar(64) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`provincia_id`, `provincia_nombre`, `region_id`) VALUES
(1, 'Arica', 1),
(2, 'Parinacota', 1),
(3, 'Iquique', 2),
(4, 'El Tamarugal', 2),
(5, 'Antofagasta', 3),
(6, 'El Loa', 3),
(7, 'Tocopilla', 3),
(8, 'Chañaral', 4),
(9, 'Copiapó', 4),
(10, 'Huasco', 4),
(11, 'Choapa', 5),
(12, 'Elqui', 5),
(13, 'Limarí', 5),
(14, 'Isla de Pascua', 6),
(15, 'Los Andes', 6),
(16, 'Petorca', 6),
(17, 'Quillota', 6),
(18, 'San Antonio', 6),
(19, 'San Felipe de Aconcagua', 6),
(20, 'Valparaiso', 6),
(21, 'Chacabuco', 7),
(22, 'Cordillera', 7),
(23, 'Maipo', 7),
(24, 'Melipilla', 7),
(25, 'Santiago', 7),
(26, 'Talagante', 7),
(27, 'Cachapoal', 8),
(28, 'Cardenal Caro', 8),
(29, 'Colchagua', 8),
(30, 'Cauquenes', 9),
(31, 'Curicó', 9),
(32, 'Linares', 9),
(33, 'Talca', 9),
(34, 'Arauco', 10),
(35, 'Bio Bío', 10),
(36, 'Concepción', 10),
(37, 'Ñuble', 10),
(38, 'Cautín', 11),
(39, 'Malleco', 11),
(40, 'Valdivia', 12),
(41, 'Ranco', 12),
(42, 'Chiloé', 13),
(43, 'Llanquihue', 13),
(44, 'Osorno', 13),
(45, 'Palena', 13),
(46, 'Aisén', 14),
(47, 'Capitán Prat', 14),
(48, 'Coihaique', 14),
(49, 'General Carrera', 14),
(50, 'Antártica Chilena', 15),
(51, 'Magallanes', 15),
(52, 'Tierra del Fuego', 15),
(53, 'Última Esperanza', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `region_id` int(11) NOT NULL,
  `region_nombre` varchar(64) NOT NULL,
  `region_ordinal` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`region_id`, `region_nombre`, `region_ordinal`) VALUES
(1, 'Arica y Parinacota', 'XV'),
(2, 'Tarapacá', 'I'),
(3, 'Antofagasta', 'II'),
(4, 'Atacama', 'III'),
(5, 'Coquimbo', 'IV'),
(6, 'Valparaiso', 'V'),
(7, 'Metropolitana de Santiago', 'RM'),
(8, 'Libertador General Bernardo O\'Higgins', 'VI'),
(9, 'Maule', 'VII'),
(10, 'Biobío', 'VIII'),
(11, 'La Araucanía', 'IX'),
(12, 'Los Ríos', 'XIV'),
(13, 'Los Lagos', 'X'),
(14, 'Aisén del General Carlos Ibáñez del Campo', 'XI'),
(15, 'Magallanes y de la Antártica Chilena', 'XII');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursal` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `id_usuario` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursal`, `nombre`, `id_usuario`) VALUES
(4, 'tabla extranjero', 10),
(15, 'sucursal_3', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(3) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`id_tipo_documento`, `nombre`) VALUES
(30, 'Factura'),
(32, 'factura de venta bienes y servicios no afectos o exentos de IVA'),
(33, 'Factura Electrónica'),
(34, 'Factura No Afecta o Exenta Electrónica'),
(35, 'Boleta'),
(38, 'Boleta exenta'),
(39, 'Boleta Electrónica'),
(40, 'Liquidación Factura'),
(41, ' Boleta Exenta Electrónica'),
(43, 'Liquidación-Factura Electrónica'),
(45, ' factura de compra'),
(50, 'Guía de Despacho'),
(52, 'Guía de Despacho Electrónica'),
(55, 'nota de débito'),
(56, 'Nota de Débito Electrónica'),
(60, 'nota de crédito'),
(61, 'Nota de Crédito Electrónica'),
(103, 'Liquidación '),
(110, 'Factura de Exportación Electrónica'),
(111, 'Nota de Débito de Exportación Electrónica '),
(112, 'Nota de Crédito de Exportación Electrónica'),
(801, 'Orden de Compra'),
(802, ' Nota de pedido '),
(803, 'Contrato'),
(804, 'Resolución'),
(805, 'Proceso ChileCompra'),
(806, 'Ficha ChileCompra'),
(807, '807 DUS 808 B/L (Conocimiento de embarque)'),
(809, 'AWB (Air Will Bill)'),
(810, 'MIC/DTA'),
(811, 'Carta de Porte'),
(812, 'Resolución del SNA donde califica Servicios de Exportación'),
(813, 'Pasaporte'),
(814, 'Certificado de Depósito Bolsa Prod. Chile.'),
(815, 'Vale de Prenda Bolsa Prod. Chile ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `rut` varchar(14) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `numero` int(11) NOT NULL COMMENT 'numero calle',
  `region` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `comuna` int(3) NOT NULL,
  `vivienda` varchar(50) COLLATE utf8_spanish_ci NOT NULL COMMENT 'Dpto./ Casa/ Oficina/ Condominio',
  `razon_social` varchar(100) COLLATE utf8_spanish_ci NOT NULL COMMENT 'razón social',
  `tipo_cliente` int(1) NOT NULL COMMENT 'juridico o natural',
  `nombre_fantasia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_contribuyente` int(1) NOT NULL,
  `plan` int(11) NOT NULL COMMENT 'plan contratado',
  `giro` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `email`, `nombre`, `apellido`, `rut`, `calle`, `telefono`, `password`, `numero`, `region`, `provincia`, `comuna`, `vivienda`, `razon_social`, `tipo_cliente`, `nombre_fantasia`, `tipo_contribuyente`, `plan`, `giro`) VALUES
(1, 'alex@gmail.com', '', '', '26014685-9', 'Sebastián Elcano', '(9)-61670734', '1234', 1752, 7, 23, 91, 'departamento', 'Global Corp SPA', 1, 'Global Corp', 3, 1, 'telecomunicaciones'),
(10, 'jose@gmail.com', 'José', 'Campos', '', '', '', '1234', 0, 10, 35, 204, '', '', 0, '', 2, 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD PRIMARY KEY (`id_boleta`),
  ADD UNIQUE KEY `id_boleta` (`id_boleta`),
  ADD KEY `boletas_ibfk_1` (`id_usuario`),
  ADD KEY `boletas_ibfk_2` (`sucursal`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`comuna_id`),
  ADD KEY `provincia_id` (`provincia_id`);

--
-- Indices de la tabla `documento_sii`
--
ALTER TABLE `documento_sii`
  ADD PRIMARY KEY (`id_documento_sii`),
  ADD UNIQUE KEY `folio` (`folio`),
  ADD UNIQUE KEY `id_documento_sii` (`id_documento_sii`);

--
-- Indices de la tabla `documento_sistema`
--
ALTER TABLE `documento_sistema`
  ADD PRIMARY KEY (`id_documento_sistema`),
  ADD UNIQUE KEY `id_documento_sistema` (`id_documento_sistema`);

--
-- Indices de la tabla `glosa_operacion`
--
ALTER TABLE `glosa_operacion`
  ADD PRIMARY KEY (`id_glosa_operacion`);

--
-- Indices de la tabla `libro_caja`
--
ALTER TABLE `libro_caja`
  ADD PRIMARY KEY (`id_libro_caja`),
  ADD UNIQUE KEY `id_libro_caja` (`id_libro_caja`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `tipo_documento` (`tipo_documento`),
  ADD KEY `glosa_operacion` (`glosa_operacion`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`provincia_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`region_id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursal`),
  ADD UNIQUE KEY `id` (`id_sucursal`),
  ADD KEY `sucursales_ibfk_2` (`id_usuario`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `idUsuario` (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boletas`
--
ALTER TABLE `boletas`
  MODIFY `id_boleta` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `comuna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT de la tabla `documento_sii`
--
ALTER TABLE `documento_sii`
  MODIFY `id_documento_sii` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT de la tabla `documento_sistema`
--
ALTER TABLE `documento_sistema`
  MODIFY `id_documento_sistema` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1145;

--
-- AUTO_INCREMENT de la tabla `libro_caja`
--
ALTER TABLE `libro_caja`
  MODIFY `id_libro_caja` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `provincia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `regiones`
--
ALTER TABLE `regiones`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id_sucursal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `boletas`
--
ALTER TABLE `boletas`
  ADD CONSTRAINT `boletas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `boletas_ibfk_2` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id_sucursal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `comunas_ibfk_1` FOREIGN KEY (`provincia_id`) REFERENCES `provincias` (`provincia_id`);

--
-- Filtros para la tabla `libro_caja`
--
ALTER TABLE `libro_caja`
  ADD CONSTRAINT `libro_caja_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libro_caja_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `libro_caja_ibfk_3` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`),
  ADD CONSTRAINT `libro_caja_ibfk_4` FOREIGN KEY (`glosa_operacion`) REFERENCES `glosa_operacion` (`id_glosa_operacion`);

--
-- Filtros para la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD CONSTRAINT `provincias_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regiones` (`region_id`);

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `sucursales_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
