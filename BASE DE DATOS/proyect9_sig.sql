-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2018 a las 21:18:58
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyect9_sig`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL,
  `nomb_contacto` varchar(50) DEFAULT NULL,
  `encuesta1` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_contacto`, `nomb_contacto`, `encuesta1`, `telefono`, `email`) VALUES
(1, NULL, 7, '3214456486486', 'r@gmail.com'),
(2, NULL, 11, '3215567913', 'ra');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `coordenadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `coordenadas` (
`id_evento` int(11)
,`fecha` datetime
,`latitud` double
,`longitud` double
,`estado` int(11)
,`encuesta` int(11)
,`usuario` int(11)
,`imagen` varchar(100)
,`id_encuesta` int(11)
,`nomb_encta` varchar(80)
,`est_encta` int(11)
,`ADMIN` int(11)
,`dia` int(2)
,`mes` varchar(10)
,`ano` int(4)
,`hora` time
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE `encuesta` (
  `id_encuesta` int(11) NOT NULL,
  `nomb_encta` varchar(80) DEFAULT NULL,
  `est_encta` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`id_encuesta`, `nomb_encta`, `est_encta`, `usuario`) VALUES
(7, 'INCENDIO', 0, 3),
(8, 'Basura', 1, 0),
(9, 'Estudiantes', 0, 0),
(10, 'Evento sub_yamboro', 1, 3),
(11, 'Evaluacion quimica', 1, 3),
(12, 'Capacitacion instructores', 0, 4),
(13, 'Gripe', 1, 4),
(14, 'conferencia', 1, 6),
(15, 'Prueba', 1, 7);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `estadistica_anual`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `estadistica_anual` (
`id_evento` int(11)
,`EVENTO` varchar(80)
,`AÑO` int(4)
,`TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `estadistica_diaria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `estadistica_diaria` (
`id_evento` int(11)
,`EVENTO` varchar(80)
,`HORA` varchar(7)
,`TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `estadistica_evento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `estadistica_evento` (
`EVENTO` varchar(80)
,`MES` varchar(10)
,`AÑO` int(4)
,`MES_NUM` int(2)
,`TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `estadistica_mensual`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `estadistica_mensual` (
`id_evento` int(11)
,`EVENTO` varchar(80)
,`MES` varchar(10)
,`AÑO` int(4)
,`MES_NUM` int(2)
,`TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id_evento` int(11) NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `latitud` double DEFAULT NULL,
  `longitud` double DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `encuesta` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id_evento`, `fecha`, `latitud`, `longitud`, `estado`, `encuesta`, `usuario`, `imagen`) VALUES
(500, '2018-08-14 15:01:16', 1.8922644, -76.0899811, 0, 7, 1, 'imagenes/Foto/fecha(Tue_08_18)/Hora(22_01_20).jpg'),
(501, '2018-08-14 15:02:16', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto/fecha(Tue_08_18)/Hora(22_02_20).jpg'),
(502, '2018-06-14 15:04:22', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto/fecha(14_08_2018)/Hora(22_04_26).jpg'),
(503, '2018-07-14 15:07:16', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto/fecha14_08_2018/Hora/22_07_20.jpg'),
(504, '2018-06-14 15:09:30', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto_Fecha_14_08_2018_Hora_22_09_34.jpg'),
(505, '2018-02-14 15:10:25', 1.8922722, -76.08998, 0, 7, 1, 'imagenes/Foto_Fecha_14_08_2018_Hora_22_10_29.jpg'),
(506, '2018-01-14 15:18:26', 1.8927349479532931, -76.09033785118253, 0, 7, 1, 'imagenes/Foto_Fecha_14_08_2018_Hora_22_18_30.jpg'),
(507, '2018-09-02 16:11:25', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto_Fecha_14_08_2018_Hora_23_11_29.jpg'),
(508, '2018-03-14 16:14:59', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto_Fecha_14_08_2018_Hora_23_15_03.jpg'),
(510, '2018-04-17 13:44:31', 1.8926661236662217, -76.08997359380956, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_44_36.jpg'),
(511, '2018-02-17 13:46:50', 1.8924966224366488, -76.08974569779348, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_46_56.jpg'),
(512, '2018-01-17 13:48:22', 1.892234471844296, -76.08977821263018, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_48_28.jpg'),
(513, '2018-08-17 13:49:40', 1.892195745484094, -76.08982861419307, 0, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_49_46.jpg'),
(514, '2018-08-17 13:54:49', 1.8925276392264243, -76.09008656294885, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_54_54.jpg'),
(515, '2018-08-21 13:56:48', 1.8921219264546132, -76.0900320372836, 0, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_56_54.jpg'),
(516, '2018-02-17 13:58:34', 1.8921255067146947, -76.08948993273448, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_58_39.jpg'),
(517, '2018-08-17 13:59:22', 1.8922482624034633, -76.08949579913194, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_20_59_27.jpg'),
(518, '2018-08-21 14:00:51', 1.8924119769727008, -76.0897398684942, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_21_00_56.jpg'),
(519, '2017-02-17 14:24:07', 1.8922661, -76.0899729, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_21_24_12.jpg'),
(520, '2017-04-17 14:35:04', 1.892267, -76.0899735, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_21_35_10.jpg'),
(521, '2018-03-17 14:37:47', 1.8922688, -76.089982, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_21_37_52.jpg'),
(522, '2018-03-17 14:39:17', 1.892271, -76.0899819, 1, 7, 1, 'imagenes/Foto_Fecha_17_08_2018_Hora_21_39_23.jpg'),
(523, '2018-08-24 10:54:30', 1.8922454, -76.0899857, 1, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_17_54_30.jpg'),
(524, '2018-08-24 11:03:04', 1.8922463, -76.0899857, 1, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_18_03_05.jpg'),
(525, '2018-08-24 11:57:30', 1.8923784494083113, -76.0899784616337, 1, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_18_57_30.jpg'),
(526, '2018-08-24 12:02:23', 1.89238138378416, -76.0900006578175, 0, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_19_02_24.jpg'),
(527, '2018-08-24 12:05:54', 1.8922571, -76.0899831, 1, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_19_05_55.jpg'),
(528, '2018-08-24 13:59:17', 1.8923766032917344, -76.0902025442155, 0, 8, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_20_59_18.jpg'),
(529, '2018-08-24 14:02:47', 1.8924723551988143, -76.09024199169309, 1, 7, 1, 'imagenes/Foto_Fecha_20_08_2018_Hora_21_02_48.jpg'),
(530, '2018-08-27 10:23:46', 37.421998333333335, -122.08400000000002, 1, 7, 1, 'imagenes/Foto_Fecha_27_08_2018_Hora_17_23_48.jpg'),
(531, '2018-08-27 10:25:01', 37.421998333333335, -122.08400000000002, 0, 8, 1, 'imagenes/Foto_Fecha_27_08_2018_Hora_17_25_03.jpg'),
(532, '2018-08-27 10:28:16', 37.421998333333335, -122.08400000000002, 1, 7, 1, 'imagenes/Foto_Fecha_27_08_2018_Hora_17_28_18.jpg'),
(533, '2018-08-27 10:34:35', 37.421998333333335, -122.08400000000002, 1, 7, 1, 'imagenes/Foto_Fecha_27_08_2018_Hora_17_34_37.jpg'),
(534, '2018-08-27 10:42:01', 37.421998333333335, -122.08400000000002, 1, 7, 1, 'imagenes/Foto_Fecha_27_08_2018_Hora_17_42_04.jpg'),
(535, '2018-09-01 09:26:44', 1.8922595, -76.0899852, 1, 9, 1, 'imagenes/Foto_Fecha_29_08_2018_Hora_16_26_47.jpg'),
(536, '2018-08-29 13:36:21', 37.421998333333335, -122.08400000000002, 1, 9, 1, 'imagenes/Foto_Fecha_29_08_2018_Hora_20_36_25.jpg'),
(537, '2018-08-29 13:51:48', 37.421998333333335, -122.08400000000002, 1, 10, 1, 'imagenes/Foto_Fecha_29_08_2018_Hora_20_51_51.jpg'),
(538, '2018-08-31 10:52:07', 1.8922553, -76.0899746, 1, 7, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_17_52_11.jpg'),
(539, '2018-08-31 10:58:11', 1.8922474, -76.0899896, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_17_58_15.jpg'),
(540, '2018-08-31 11:01:49', 37.421998333333335, -122.08400000000002, 1, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_18_01_54.jpg'),
(541, '2018-08-31 13:44:13', 1.8476655, -76.0633043, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_20_44_18.jpg'),
(542, '2018-08-31 13:46:55', 1.8922476, -76.0899919, 1, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_20_47_00.jpg'),
(543, '2018-08-31 14:54:34', 37.421998333333335, -122.08400000000002, 1, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_21_54_39.jpg'),
(544, '2018-08-31 15:01:22', 37.421998333333335, -122.08400000000002, 1, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_01_27.jpg'),
(545, '2018-08-31 15:31:10', 37.421998333333335, -122.08400000000002, 1, 10, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_31_15.jpg'),
(546, '2018-08-31 15:33:59', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_34_04.jpg'),
(547, '2018-08-31 15:36:21', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_36_26.jpg'),
(548, '2018-08-31 15:39:35', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_39_40.jpg'),
(549, '2018-08-31 15:46:09', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_46_14.jpg'),
(550, '2018-08-31 15:49:11', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_49_16.jpg'),
(551, '2018-08-31 15:51:32', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_51_37.jpg'),
(552, '2018-08-31 15:57:01', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_57_06.jpg'),
(553, '2018-08-31 15:57:33', 37.421998333333335, -122.08400000000002, 0, 7, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_57_38.jpg'),
(554, '2018-08-31 15:58:40', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_22_58_45.jpg'),
(555, '2018-08-31 16:00:15', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_23_00_20.jpg'),
(556, '2018-08-31 16:55:18', 37.421998333333335, -122.08400000000002, 0, 11, 1, 'imagenes/Foto_Fecha_31_08_2018_Hora_23_55_23.jpg'),
(557, '2018-09-01 16:51:34', 1.8524396673635741, -76.04902937988128, 0, 7, 1, 'imagenes/Foto_Fecha_01_09_2018_Hora_23_51_34.jpg'),
(558, '2018-09-03 22:49:01', 37.421998333333335, -122.08400000000002, 1, 9, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_05_49_01.jpg'),
(563, '2018-09-04 09:26:29', 1.892351174554865, -76.09014828729381, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_16_26_29.jpg'),
(564, '2018-09-04 09:30:19', 1.892610550974034, -76.09002064037439, 0, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_16_30_19.jpg'),
(565, '2018-09-04 10:22:03', 1.892513130454101, -76.09011576798332, 0, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_17_22_03.jpg'),
(566, '2018-09-04 11:55:15', 1.8923446, -76.089978, 1, 13, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_18_55_15.jpg'),
(567, '2018-09-04 12:07:33', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_19_07_33.jpg'),
(568, '2018-09-04 12:16:06', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_19_16_06.jpg'),
(569, '2018-09-04 12:18:40', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_19_18_40.jpg'),
(570, '2018-09-04 12:23:17', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_19_23_17.jpg'),
(571, '2018-09-04 12:28:52', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_04_09_2018_Hora_19_28_52.jpg'),
(572, '2018-09-05 07:03:44', 0, 0, 1, 13, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_14_03_44.jpg'),
(573, '2018-09-05 07:14:15', 0, 0, 1, 13, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_14_14_15.jpg'),
(574, '2018-09-05 07:15:24', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_14_15_24.jpg'),
(575, '2018-09-05 07:22:24', 0, 0, 1, 12, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_14_22_24.jpg'),
(576, '2018-09-05 09:07:14', 0, 0, 0, 7, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_16_07_14.jpg'),
(577, '2018-09-05 09:16:45', 1.8564563, -76.0509761, 0, 7, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_16_16_45.jpg'),
(578, '2018-09-05 11:14:13', 0, 0, 0, 14, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_18_14_13.jpg'),
(579, '2018-09-05 11:14:13', 1.8548750506403258, -76.04777628829902, 0, 14, 1, 'imagenes/Foto_Fecha_05_09_2018_Hora_18_14_13.jpg'),
(580, '2018-09-07 14:16:02', 1.8922302, -76.0899489, 0, 15, 1, 'imagenes/Foto_Fecha_07_09_2018_Hora_21_16_02.jpg'),
(581, '2018-09-19 15:42:49', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_19_09_2018_Hora_22_42_49.jpg'),
(582, '2018-09-19 22:45:36', 0, 0, 1, 7, 1, 'imagenes/Foto_Fecha_20_09_2018_Hora_05_45_36.jpg'),
(583, '2018-09-22 19:52:02', 0, 0, 1, 7, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_02_52_02.jpg'),
(584, '2018-09-22 20:11:29', 0, 0, 1, 7, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_11_29.jpg'),
(585, '2018-09-22 20:13:53', 0, 0, 1, 14, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_13_53.jpg'),
(586, '2018-09-22 20:18:59', 0, 0, 1, 7, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_18_59.jpg'),
(587, '2018-09-22 20:20:59', 0, 0, 1, 11, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_20_59.jpg'),
(588, '2018-09-22 20:37:57', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_37_57.jpg'),
(589, '2018-09-22 20:45:01', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_23_09_2018_Hora_03_45_01.jpg'),
(590, '2018-09-25 20:38:49', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_38_48.jpg'),
(591, '2018-09-25 20:39:28', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_39_28.jpg'),
(592, '2018-09-25 20:40:36', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_40_36.jpg'),
(593, '2018-09-25 20:43:02', 0, 0, 1, 13, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_43_02.jpg'),
(594, '2018-09-25 20:47:45', 0, 0, 1, 13, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_47_45.jpg'),
(595, '2018-09-25 20:57:22', 37.421998333333335, -122.08400000000002, 1, 11, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_03_57_22.jpg'),
(596, '2018-09-25 21:02:35', 37.421998333333335, -122.08400000000002, 1, 11, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_02_35.jpg'),
(597, '2018-09-25 21:04:34', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_04_34.jpg'),
(598, '2018-09-25 21:05:35', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_05_35.jpg'),
(599, '2018-09-25 21:13:14', 37.421998333333335, -122.08400000000002, 1, 10, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_13_14.jpg'),
(600, '2018-09-25 21:14:03', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_14_03.jpg'),
(601, '2018-09-25 21:16:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_16_51.jpg'),
(602, '2018-09-25 21:19:41', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_04_19_41.jpg'),
(603, '2018-09-26 12:17:04', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_17_04.jpg'),
(604, '2018-09-26 12:17:43', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_17_43.jpg'),
(605, '2018-09-26 12:18:47', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_18_47.jpg'),
(606, '2018-09-26 12:29:12', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_29_12.jpg'),
(607, '2018-09-26 12:35:05', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_35_05.jpg'),
(608, '2018-09-26 12:36:32', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_26_09_2018_Hora_19_36_32.jpg'),
(609, '2018-10-07 21:42:29', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_42_29.jpg'),
(610, '2018-10-07 21:42:30', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_42_30.jpg'),
(614, '2018-10-07 21:55:20', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_55_20.jpg'),
(615, '2018-10-07 21:55:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_55_20.jpg'),
(616, '2018-10-07 21:55:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_55_20.jpg'),
(617, '2018-10-07 21:55:21', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_55_21.jpg'),
(618, '2018-10-07 21:58:45', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_04_58_45.jpg'),
(619, '2018-10-07 22:03:41', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_03_41.jpg'),
(620, '2018-10-07 22:05:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_05_51.jpg'),
(621, '2018-10-07 22:11:38', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_11_38.jpg'),
(622, '2018-10-07 22:11:39', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_11_39.jpg'),
(623, '2018-10-07 22:16:38', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_16_38.jpg'),
(624, '2018-10-07 22:16:39', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_16_39.jpg'),
(625, '2018-10-07 22:16:39', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_16_39.jpg'),
(626, '2018-10-07 22:16:39', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_16_39.jpg'),
(627, '2018-10-07 22:20:17', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_20_17.jpg'),
(628, '2018-10-07 22:20:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_20_18.jpg'),
(629, '2018-10-07 22:20:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_20_18.jpg'),
(630, '2018-10-07 22:20:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_20_18.jpg'),
(631, '2018-10-07 22:20:18', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_20_18.jpg'),
(632, '2018-10-07 22:27:25', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_25.jpg'),
(633, '2018-10-07 22:27:25', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_25.jpg'),
(634, '2018-10-07 22:27:25', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_25.jpg'),
(635, '2018-10-07 22:27:25', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_25.jpg'),
(636, '2018-10-07 22:27:26', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_26.jpg'),
(637, '2018-10-07 22:27:26', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_27_26.jpg'),
(638, '2018-10-07 22:29:33', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_33.jpg'),
(639, '2018-10-07 22:29:33', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_33.jpg'),
(640, '2018-10-07 22:29:34', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_34.jpg'),
(641, '2018-10-07 22:29:34', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_34.jpg'),
(642, '2018-10-07 22:29:34', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_34.jpg'),
(643, '2018-10-07 22:29:34', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_34.jpg'),
(644, '2018-10-07 22:29:34', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_29_34.jpg'),
(645, '2018-10-07 22:31:55', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_55.jpg'),
(646, '2018-10-07 22:31:55', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_55.jpg'),
(647, '2018-10-07 22:31:56', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_56.jpg'),
(648, '2018-10-07 22:31:56', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_56.jpg'),
(649, '2018-10-07 22:31:57', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_57.jpg'),
(650, '2018-10-07 22:31:57', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_57.jpg'),
(651, '2018-10-07 22:31:57', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_57.jpg'),
(652, '2018-10-07 22:31:57', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_31_57.jpg'),
(653, '2018-10-07 22:38:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_19.jpg'),
(654, '2018-10-07 22:38:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_19.jpg'),
(655, '2018-10-07 22:38:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_19.jpg'),
(656, '2018-10-07 22:38:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_19.jpg'),
(657, '2018-10-07 22:38:20', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_20.jpg'),
(658, '2018-10-07 22:38:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_20.jpg'),
(659, '2018-10-07 22:38:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_20.jpg'),
(660, '2018-10-07 22:38:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_20.jpg'),
(661, '2018-10-07 22:38:20', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_08_10_2018_Hora_05_38_20.jpg'),
(662, '2018-10-19 18:57:32', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_32.jpg'),
(663, '2018-10-19 18:57:35', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_35.jpg'),
(664, '2018-10-19 18:57:37', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_37.jpg'),
(665, '2018-10-19 18:57:40', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_40.jpg'),
(666, '2018-10-19 18:57:42', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_42.jpg'),
(667, '2018-10-19 18:57:43', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_43.jpg'),
(668, '2018-10-19 18:57:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_51.jpg'),
(669, '2018-10-19 18:57:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_51.jpg'),
(670, '2018-10-19 18:57:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_51.jpg'),
(671, '2018-10-19 18:57:52', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_01_57_52.jpg'),
(672, '2018-10-19 19:01:12', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_12.jpg'),
(673, '2018-10-19 19:01:12', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_12.jpg'),
(674, '2018-10-19 19:01:12', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_12.jpg'),
(675, '2018-10-19 19:01:12', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_12.jpg'),
(676, '2018-10-19 19:01:12', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_12.jpg'),
(677, '2018-10-19 19:01:13', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_13.jpg'),
(678, '2018-10-19 19:01:13', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_13.jpg'),
(679, '2018-10-19 19:01:13', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_13.jpg'),
(680, '2018-10-19 19:01:13', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_13.jpg'),
(681, '2018-10-19 19:01:13', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_13.jpg'),
(682, '2018-10-19 19:01:14', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_01_14.jpg'),
(683, '2018-10-19 19:03:17', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_17.jpg'),
(684, '2018-10-19 19:03:17', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_17.jpg'),
(685, '2018-10-19 19:03:17', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_17.jpg'),
(686, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(687, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(688, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(689, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(690, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(691, '2018-10-19 19:03:18', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_18.jpg'),
(692, '2018-10-19 19:03:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_19.jpg'),
(693, '2018-10-19 19:03:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_19.jpg'),
(694, '2018-10-19 19:03:19', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_20_10_2018_Hora_02_03_19.jpg'),
(695, '2018-10-21 19:32:03', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_02_32_03.jpg'),
(696, '2018-10-21 19:35:09', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_02_35_09.jpg'),
(697, '2018-10-21 19:35:09', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_02_35_09.jpg'),
(698, '2018-10-21 20:19:55', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_03_19_55.jpg'),
(699, '2018-10-21 20:19:56', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_03_19_56.jpg'),
(700, '2018-10-21 20:19:56', 0, 0, 1, 13, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_03_19_56.jpg'),
(701, '2018-10-21 20:19:57', 0, 0, 1, 8, 1, 'imagenes/Foto_Fecha_22_10_2018_Hora_03_19_57.jpg'),
(702, '2018-10-22 20:46:15', 0, 0, 1, 14, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_46_15.jpg'),
(703, '2018-10-22 20:46:22', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_46_22.jpg'),
(704, '2018-10-22 20:50:53', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_50_53.jpg'),
(705, '2018-10-22 20:54:37', 37.421998333333335, -122.08400000000002, 1, 14, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_54_37.jpg'),
(706, '2018-10-22 20:54:51', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_54_51.jpg'),
(707, '2018-10-22 20:55:00', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_55_00.jpg'),
(708, '2018-10-22 20:55:06', 37.421998333333335, -122.08400000000002, 1, 8, 1, 'imagenes/Foto_Fecha_23_10_2018_Hora_03_55_06.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id_pgta` int(11) NOT NULL,
  `nomb_pgta` varchar(300) DEFAULT NULL,
  `estado_pgta` varchar(10) DEFAULT NULL,
  `tipo_pregunta` int(11) DEFAULT NULL,
  `encuesta2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id_pgta`, `nomb_pgta`, `estado_pgta`, `tipo_pregunta`, `encuesta2`) VALUES
(72, 'Nombre de quien reporta?', '1', 1, 7),
(73, 'Numero telefonico', '1', 1, 7),
(74, 'Tipo de basura', '1', 2, 8),
(75, 'Que significado tiene su proyecto de vida', '1', 2, 9),
(76, 'Causa del incendio', '1', 2, 7),
(77, '¿Cuál es el concepto de gestión humana? ¿Realizar la representación gráfica del concepto?', '1', 2, 7),
(78, '¿Cuál considera es la principal fuente de conflicto entre el gerente y el área de gestión humana?\n', '1', 2, 7),
(79, '¿Cuál considera es la principal fuente de conflicto entre el gerente y el área de gestión humana?\n', '1', 2, 11),
(80, 'Nombre y apellidos', '1', 1, 11),
(81, 'Identificacion', '1', 1, 11),
(82, 'Nombres', '1', 1, 12),
(83, 'Profesión', '1', 1, 12),
(84, 'Telefono', '1', 1, 12),
(85, 'Sintomas', '1', 2, 13),
(86, 'nombre del aprendiz', '1', 1, 14),
(87, 'entendieron el tema los aprendices', '1', 1, 14),
(88, 'Nombre', '1', 1, 15),
(89, 'como te parece el funcinamiento', '1', 2, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_rpta` int(11) NOT NULL,
  `nomb_rpta` varchar(300) DEFAULT NULL,
  `estado_rpta` int(11) DEFAULT NULL,
  `pregunta` int(11) DEFAULT NULL,
  `tipo_dato` enum('numerico','texto','multiple') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `respuesta`
--

INSERT INTO `respuesta` (`id_rpta`, `nomb_rpta`, `estado_rpta`, `pregunta`, `tipo_dato`) VALUES
(33, 'texto', 1, 72, 'texto'),
(34, 'numerico', 1, 73, 'numerico'),
(35, 'escombros', 1, 74, 'multiple'),
(36, 'Plasticos', 1, 74, 'multiple'),
(37, 'Buena', 1, 75, 'multiple'),
(38, 'mala', 1, 75, 'multiple'),
(39, 'vela', 1, 76, 'multiple'),
(40, 'cigarros', 1, 76, 'multiple'),
(41, 'Es la integración del cambio, de los requisitos del proyecto son generalmente estables,\nnormalmente solo hay pequeños cambios en la lista de priorizada de pendientes del producto.', 1, 77, 'multiple'),
(42, 'Son componentes del lado del servidor desarrollados en los que se puedan utilizar y ensamblar\nen distintas aplicaciones que requieran para la empresa.', 1, 77, 'multiple'),
(43, '1: Se hace para el conjunto de la organización o una independencia, para un cargo independientemente de su tamaño institucional.', 1, 79, 'multiple'),
(44, '2: Nos ayuda a considerar el valor que tienen las personas informadas que son dueñas de información perfecta en los procedimientos', 1, 79, 'multiple'),
(45, 'texto', 1, 80, 'texto'),
(46, 'numerico', 1, 81, 'numerico'),
(47, 'texto', 1, 82, 'texto'),
(48, 'texto', 1, 83, 'texto'),
(49, 'numerico', 1, 84, 'numerico'),
(50, 'Dolor de cabeza', 1, 85, 'multiple'),
(51, 'fiebre', 1, 85, 'multiple'),
(52, 'Malestar general', 1, 85, 'multiple'),
(53, 'Tos', 1, 85, 'multiple'),
(54, 'texto', 1, 86, 'texto'),
(55, 'texto', 1, 87, 'texto'),
(56, 'texto', 1, 88, 'texto'),
(57, 'Bueno', 1, 89, 'multiple'),
(58, 'regular', 1, 89, 'multiple'),
(59, 'mala', 1, 89, 'multiple');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `id_resultado` int(11) NOT NULL,
  `evento` int(11) NOT NULL,
  `resultado` varchar(60) DEFAULT NULL,
  `respuesta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`id_resultado`, `evento`, `resultado`, `respuesta`) VALUES
(1, 505, 'Roque', 33),
(2, 506, 'Vanessa', 33),
(3, 507, 'zxc', 33),
(4, 508, '3215', 34),
(5, 508, 'roqueiad', 33),
(6, 510, 'Laura', 33),
(7, 511, '1235', 34),
(8, 511, 'laboratorio', 33),
(9, 512, '12345', 34),
(10, 512, 'montaña', 33),
(11, 513, '45485', 34),
(12, 513, 'enlace', 33),
(13, 514, '9948', 34),
(14, 514, 'Biotic', 33),
(15, 515, '948488', 34),
(16, 515, 'Medio hierta', 33),
(17, 516, '84849', 34),
(18, 516, 'Mirador', 33),
(20, 517, '646166', 34),
(21, 517, 'Coordinación', 33),
(22, 518, 'Baños', 33),
(23, 519, '8454', 34),
(24, 520, 'juan', 33),
(25, 521, 'programadora tecnoparque', 33),
(26, 522, '9848844', 34),
(27, 522, 'Instructor wilson', 33),
(28, 523, 'Laura Cristina', 33),
(29, 524, '312188484', 34),
(30, 524, 'roque', 33),
(31, 525, '545464', 34),
(32, 525, 'bejehs', 33),
(33, 526, '616', 34),
(34, 526, 'wilson', 33),
(35, 527, '6464', 34),
(36, 527, 'jsysysys', 33),
(37, 528, '36', 36),
(38, 529, '94646646464664', 34),
(39, 529, 'hsh', 33),
(40, 533, '558875', 34),
(41, 534, '3215569875', 34),
(42, 534, 'juan', 33),
(43, 535, '37', 37),
(44, 536, '38', 38),
(45, 538, '42', 42),
(46, 539, '44', 44),
(47, 541, '43', 43),
(48, 542, 'roqe', 45),
(49, 542, '44', 44),
(50, 555, '44', 44),
(51, 555, '55', 46),
(52, 555, 'roque', 45),
(53, 557, '41', 41),
(54, 557, '3215569231', 34),
(55, 557, 'roque', 33),
(56, 557, '40', 40),
(57, 563, 'Pepito Pérez', 47),
(58, 564, 'Aprendices', 47),
(59, 564, '123456', 49),
(60, 564, 'Tecnólogo obras civiles', 48),
(61, 565, 'Jesús', 47),
(62, 565, '13', 49),
(63, 566, '52', 52),
(64, 567, 'argtf', 47),
(65, 567, '7334', 49),
(66, 567, 'sdfg', 48),
(67, 568, 'Roque castro', 47),
(68, 568, '123', 49),
(69, 568, 'Ing Sistemas', 48),
(70, 569, 'sdfgsdfg', 47),
(71, 570, 'jskd', 47),
(72, 570, 'zLKJ', 48),
(73, 571, 'Juana', 47),
(74, 571, 'Abogada', 48),
(75, 571, '239955', 49),
(76, 575, 'roberto', 47),
(77, 575, 'Ingeniero mecanico', 48),
(78, 575, '23', 49),
(79, 576, 'dd', 33),
(80, 577, 'Juan', 33),
(81, 578, 'isabela', 54),
(82, 578, 'si', 55),
(83, 579, 'Andrés scarpeta', 54),
(84, 579, 'si', 55),
(85, 580, 'roque', 56),
(86, 580, '57', 57),
(87, 581, '36', 36);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `resultado_encuesta`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `resultado_encuesta` (
`ID` int(11)
,`Evento` varchar(80)
,`Encuesta` varchar(300)
,`IMAGEN` varchar(100)
,`Resultado` varchar(300)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `resultado_encuesta_solucion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `resultado_encuesta_solucion` (
`ID` int(11)
,`Evento` varchar(80)
,`Encuesta` varchar(300)
,`Resultado` varchar(300)
,`SEGUIMIENTO` varchar(80)
,`FECHA` datetime
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE `seguimiento` (
  `id_seguimiento` int(11) NOT NULL,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `descripcion` varchar(80) DEFAULT NULL,
  `evento` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`id_seguimiento`, `fecha`, `descripcion`, `evento`) VALUES
(1, '2018-08-16 09:28:18', 'Herida gravemente', 506),
(2, '2018-08-16 09:40:36', 'Accidentada', 506),
(3, '2018-08-16 10:03:41', 'Quemada', 505),
(4, '2018-08-16 10:04:30', 'reportera accidentada', 506),
(5, '2018-08-16 10:05:27', 'Perro accidentado', 506),
(6, '2018-08-16 10:15:12', 'Fuga', 506),
(7, '2018-08-16 10:16:03', 'Enfermera', 506),
(8, '2018-08-16 10:40:45', 'dat', 505),
(9, '2018-08-16 10:44:03', 'MUjer enferma', 506),
(10, '2018-08-16 10:44:18', 'new', 506),
(11, '2018-08-16 10:44:41', 'Pron', 506),
(12, '2018-08-16 10:45:05', 'new register', 506),
(13, '2018-08-16 10:46:26', 'Operacion naranja', 506),
(14, '2018-08-16 10:47:31', 'qw', 506),
(15, '2018-08-16 10:47:40', 'a', 506),
(16, '2018-08-16 10:50:56', 'Investigacion', 506),
(17, '2018-08-16 10:51:29', 'Nueva', 506),
(18, '2018-08-16 10:53:33', 'Enferma Psicologicamente', 505),
(19, '2018-08-16 10:54:42', 'Proceso de identidad', 505),
(20, '2018-08-16 10:55:16', 'procesossssssss', 506),
(21, '2018-08-16 10:55:49', 'nmew resid', 505),
(22, '2018-08-16 11:03:15', 'jundamente', 506),
(23, '2018-08-16 11:06:32', 'jua', 506),
(24, '2018-08-16 11:07:06', 'dfg', 506),
(25, '2018-08-16 11:19:16', 'nueva Prioridad', 505),
(26, '2018-08-16 11:20:05', 'Ambulancia llego ', 505),
(27, '2018-08-17 09:04:50', 'transito pesado', 508),
(28, '2018-08-17 09:05:18', 'Terminando fuga de gas', 507),
(29, '2018-08-17 09:06:34', 'Operacion sin validacion cancelado', 504),
(30, '2018-08-17 09:06:58', 'Evento sin validacion. Evento cancelado', 503),
(31, '2018-08-17 09:07:21', 'evento sin validacion', 502),
(32, '2018-08-17 09:07:38', 'Cancelado', 501),
(33, '2018-08-17 14:02:57', 'Gaver se incendio', 513),
(34, '2018-08-17 14:25:20', 'Derrame', 519),
(35, '2018-08-21 10:21:18', 'fuga de gas', 515),
(36, '2018-08-24 12:04:13', 'ftg', 526),
(37, '2018-08-24 14:00:16', 'Llego el carro al sitio', 528),
(38, '2018-08-31 13:49:42', 'Calificacion 5.0', 541),
(39, '2018-08-31 13:51:29', 'Calificacion 1.0', 539),
(40, '2018-09-06 10:03:36', '7 personas accidentadas', 542),
(41, '2018-09-07 14:18:13', 'Me parece importante su opinion', 580);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `seguimiento_table`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `seguimiento_table` (
`ID` int(10)
,`DESCRIPCION` varchar(80)
,`FECHA` datetime
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `clave_serie` varchar(99) DEFAULT NULL,
  `nombre_empresa` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_pregunta`
--

CREATE TABLE `tipo_pregunta` (
  `id_tipo_pgta` int(11) NOT NULL,
  `nomb_tipo_pgta` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_pregunta`
--

INSERT INTO `tipo_pregunta` (`id_tipo_pgta`, `nomb_tipo_pgta`) VALUES
(1, 'Pregunta Abierta'),
(2, 'Pregunta Opcion Multiple ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `login` varchar(70) DEFAULT NULL,
  `password` varchar(95) DEFAULT NULL,
  `rol` enum('Administrador','Publico','Funcionario') DEFAULT NULL,
  `serie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `login`, `password`, `rol`, `serie`) VALUES
(1, 'usuario', '123', '123', 'Publico', NULL),
(3, 'Roque Castro', 'r@gmail.com', '12', 'Administrador', NULL),
(4, 'Instructores', 'capaIns@gmail.com', '45', 'Administrador', NULL),
(5, 'Evento', 'evento@gmail.com', 'kljshfbgiusdghskdfn', 'Administrador', NULL),
(6, 'conferencia', 'conferencia@gmail.com', '1234567890', 'Administrador', NULL),
(7, 'prueba', 'prueba@gmail.com', '1234567890', 'Administrador', NULL);

-- --------------------------------------------------------

--
-- Estructura para la vista `coordenadas`
--
DROP TABLE IF EXISTS `coordenadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `coordenadas`  AS  select `eve`.`id_evento` AS `id_evento`,`eve`.`fecha` AS `fecha`,`eve`.`latitud` AS `latitud`,`eve`.`longitud` AS `longitud`,`eve`.`estado` AS `estado`,`eve`.`encuesta` AS `encuesta`,`eve`.`usuario` AS `usuario`,`eve`.`imagen` AS `imagen`,`enc`.`id_encuesta` AS `id_encuesta`,`enc`.`nomb_encta` AS `nomb_encta`,`enc`.`est_encta` AS `est_encta`,`enc`.`usuario` AS `ADMIN`,dayofmonth(`eve`.`fecha`) AS `dia`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `mes`,year(`eve`.`fecha`) AS `ano`,cast(`eve`.`fecha` as time) AS `hora` from (`evento` `eve` join `encuesta` `enc` on((`enc`.`id_encuesta` = `eve`.`encuesta`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `estadistica_anual`
--
DROP TABLE IF EXISTS `estadistica_anual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `estadistica_anual`  AS  select `enc`.`id_encuesta` AS `id_evento`,`enc`.`nomb_encta` AS `EVENTO`,year(`eve`.`fecha`) AS `AÑO`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by year(`eve`.`fecha`),`enc`.`id_encuesta` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `estadistica_diaria`
--
DROP TABLE IF EXISTS `estadistica_diaria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `estadistica_diaria`  AS  select `enc`.`id_encuesta` AS `id_evento`,`enc`.`nomb_encta` AS `EVENTO`,if((hour(`eve`.`fecha`) > 12),concat((hour(`eve`.`fecha`) - 12),' PM'),concat(hour(`eve`.`fecha`),' AM')) AS `HORA`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) where (cast(`eve`.`fecha` as date) = curdate()) group by `enc`.`id_encuesta`,if((hour(`eve`.`fecha`) > 12),concat((hour(`eve`.`fecha`) - 12),' PM'),concat(hour(`eve`.`fecha`),' AM')),cast(`eve`.`fecha` as date) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `estadistica_evento`
--
DROP TABLE IF EXISTS `estadistica_evento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `estadistica_evento`  AS  select `enc`.`nomb_encta` AS `EVENTO`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `MES`,year(`eve`.`fecha`) AS `AÑO`,month(`eve`.`fecha`) AS `MES_NUM`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by `enc`.`id_encuesta`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))),year(`eve`.`fecha`),month(`eve`.`fecha`) order by month(`eve`.`fecha`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `estadistica_mensual`
--
DROP TABLE IF EXISTS `estadistica_mensual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `estadistica_mensual`  AS  select `enc`.`id_encuesta` AS `id_evento`,`enc`.`nomb_encta` AS `EVENTO`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))) AS `MES`,year(`eve`.`fecha`) AS `AÑO`,month(`eve`.`fecha`) AS `MES_NUM`,count(`enc`.`id_encuesta`) AS `TOTAL` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) group by `enc`.`id_encuesta`,if((month(`eve`.`fecha`) = 1),'Enero',if((month(`eve`.`fecha`) = 2),'Febrero',if((month(`eve`.`fecha`) = 3),'Marzo',if((month(`eve`.`fecha`) = 4),'Abril',if((month(`eve`.`fecha`) = 5),'Mayo',if((month(`eve`.`fecha`) = 6),'Junio',if((month(`eve`.`fecha`) = 7),'Julio',if((month(`eve`.`fecha`) = 8),'Agosto',if((month(`eve`.`fecha`) = 9),'Septiembre',if((month(`eve`.`fecha`) = 10),'Octubre',if((month(`eve`.`fecha`) = 11),'Noviembre',if((month(`eve`.`fecha`) = 12),'Diciembre','')))))))))))),year(`eve`.`fecha`),month(`eve`.`fecha`) order by month(`eve`.`fecha`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `resultado_encuesta`
--
DROP TABLE IF EXISTS `resultado_encuesta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `resultado_encuesta`  AS  select `eve`.`id_evento` AS `ID`,`enc`.`nomb_encta` AS `Evento`,`pgta`.`nomb_pgta` AS `Encuesta`,`eve`.`imagen` AS `IMAGEN`,if((`pgta`.`tipo_pregunta` = 1),`result`.`resultado`,`rpta`.`nomb_rpta`) AS `Resultado` from ((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `resultado_encuesta_solucion`
--
DROP TABLE IF EXISTS `resultado_encuesta_solucion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `resultado_encuesta_solucion`  AS  select `eve`.`id_evento` AS `ID`,`enc`.`nomb_encta` AS `Evento`,`pgta`.`nomb_pgta` AS `Encuesta`,if((`pgta`.`tipo_pregunta` = 1),`result`.`resultado`,`rpta`.`nomb_rpta`) AS `Resultado`,`segui`.`descripcion` AS `SEGUIMIENTO`,`segui`.`fecha` AS `FECHA` from (((((`encuesta` `enc` join `pregunta` `pgta` on((`pgta`.`encuesta2` = `enc`.`id_encuesta`))) join `respuesta` `rpta` on((`rpta`.`pregunta` = `pgta`.`id_pgta`))) join `resultado` `result` on((`result`.`respuesta` = `rpta`.`id_rpta`))) join `evento` `eve` on((`eve`.`id_evento` = `result`.`evento`))) join `seguimiento` `segui` on((`eve`.`id_evento` = `segui`.`evento`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `seguimiento_table`
--
DROP TABLE IF EXISTS `seguimiento_table`;

CREATE ALGORITHM=UNDEFINED DEFINER=`proyect9_sig`@`localhost` SQL SECURITY DEFINER VIEW `seguimiento_table`  AS  select `segui`.`evento` AS `ID`,`segui`.`descripcion` AS `DESCRIPCION`,`segui`.`fecha` AS `FECHA` from `seguimiento` `segui` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`),
  ADD KEY `fk_enc_contacto` (`encuesta1`);

--
-- Indices de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  ADD PRIMARY KEY (`id_encuesta`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id_evento`),
  ADD KEY `fk_evento_encuesta_idx` (`encuesta`),
  ADD KEY `fk_usuario_evento_idx` (`usuario`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id_pgta`),
  ADD KEY `fk_pgta_tipo_pgta_idx` (`tipo_pregunta`),
  ADD KEY `fk_encta_pgta_idx` (`encuesta2`);

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_rpta`),
  ADD KEY `fk_pgta_rpta_idx` (`pregunta`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`id_resultado`),
  ADD UNIQUE KEY `uniq_resultado` (`resultado`,`evento`),
  ADD KEY `fk_resul_rpta_idx` (`respuesta`),
  ADD KEY `fk_resul_event_idx` (`evento`);

--
-- Indices de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD PRIMARY KEY (`id_seguimiento`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`);

--
-- Indices de la tabla `tipo_pregunta`
--
ALTER TABLE `tipo_pregunta`
  ADD PRIMARY KEY (`id_tipo_pgta`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `encuesta`
--
ALTER TABLE `encuesta`
  MODIFY `id_encuesta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `id_pgta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_rpta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `id_resultado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  MODIFY `id_seguimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT de la tabla `tipo_pregunta`
--
ALTER TABLE `tipo_pregunta`
  MODIFY `id_tipo_pgta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD CONSTRAINT `fk_enc_contacto` FOREIGN KEY (`encuesta1`) REFERENCES `encuesta` (`id_encuesta`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `fk_evento_encuesta` FOREIGN KEY (`encuesta`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuario_evento` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_encta_pgta` FOREIGN KEY (`encuesta2`) REFERENCES `encuesta` (`id_encuesta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pgta_tipo_pgta` FOREIGN KEY (`tipo_pregunta`) REFERENCES `tipo_pregunta` (`id_tipo_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD CONSTRAINT `fk_pgta_rpta` FOREIGN KEY (`pregunta`) REFERENCES `pregunta` (`id_pgta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `fk_resul_event` FOREIGN KEY (`evento`) REFERENCES `evento` (`id_evento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resul_resp` FOREIGN KEY (`respuesta`) REFERENCES `respuesta` (`id_rpta`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
