-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2018 a las 11:00:00
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
(10, '', 'test', '', '', '', '', '', 0, 10, 35, 204, '', '', 0, '', 2, 0, '');

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
  MODIFY `id_documento_sii` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento_sistema`
--
ALTER TABLE `documento_sistema`
  MODIFY `id_documento_sistema` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
