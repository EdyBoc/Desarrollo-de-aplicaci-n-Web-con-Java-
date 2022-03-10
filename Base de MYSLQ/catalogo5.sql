-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3308
-- Tiempo de generación: 10-03-2022 a las 23:06:02
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogo5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

DROP TABLE IF EXISTS `estatus`;
CREATE TABLE IF NOT EXISTS `estatus` (
  `Id` int(15) NOT NULL,
  `Estatus` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`Id`, `Estatus`) VALUES
(1, 'ACTIVO'),
(2, 'INACTIVO'),
(3, 'CANCELADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios`
--

DROP TABLE IF EXISTS `medios`;
CREATE TABLE IF NOT EXISTS `medios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Medios` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `medios`
--

INSERT INTO `medios` (`Id`, `Medios`) VALUES
(1, 'Telefono'),
(2, 'Correo'),
(3, 'Chat'),
(4, 'Presencial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `quejas`
--

DROP TABLE IF EXISTS `quejas`;
CREATE TABLE IF NOT EXISTS `quejas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(1000) DEFAULT NULL,
  `Estatus` varchar(30) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `NombreOficina` varchar(20) DEFAULT NULL,
  `NombreEmpleado` varchar(20) DEFAULT NULL,
  `Correo` varchar(20) DEFAULT NULL,
  `Telefono` int(8) DEFAULT NULL,
  `FechaCreacion` varchar(40) DEFAULT NULL,
  `FechaModificacion` varchar(40) DEFAULT NULL,
  `Medios` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `quejas`
--

INSERT INTO `quejas` (`Id`, `Descripcion`, `Estatus`, `Nombre`, `NombreOficina`, `NombreEmpleado`, `Correo`, `Telefono`, `FechaCreacion`, `FechaModificacion`, `Medios`) VALUES
(20, 'Mal Servicio', 'Eliminado', 'Edy2', '', '', 'edy3@gmail.com', 57123023, '2021-11-11 00:54:26', NULL, NULL),
(19, 'Mal Servicio', 'Eliminado', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-11 00:52:46', NULL, NULL),
(17, 'Mal Servicio', 'Eliminado', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-02 21:11:43', NULL, NULL),
(18, 'Mal Servicio', 'Eliminado', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-10 22:20:33', '2021-11-15 21:29:06', NULL),
(15, 'Mal Servicio', 'Eliminado', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-02 00:06:07', '2021-11-02 00:10:32', NULL),
(11, 'Mal servicio o servicio no conforme', 'Eliminado', 'Miguel5', 'Soporte', 'IT', 'miguel@gmail.com', 57123023, '2021-10-25', '2021-11-02 00:11:00', NULL),
(21, 'Mal Servicio', 'Eliminado', 'Edy2', 'Contabilidad', 'Contador', 'edy@gmail.com', 57123023, '2021-11-11 01:00:42', '2021-11-16 17:29:39', NULL),
(13, 'Mal Servicio', 'Eliminado', 'Miguel5', '', '', 'miguel@gmail.com', 57123023, '2021-11-01', NULL, NULL),
(16, 'Mal Servicio', 'ACTIVO', 'Edy2', '', '', 'edy@gmail.com', 57123027, '2021-11-02 15:55:53', NULL, NULL),
(14, 'Mal Servicio', 'ACTIVO', 'Edy', 'Contabilidad', '', 'edy@gmail.com', 57123023, '2021-11-01 22:57:54', '2021-11-01 23:11:58', NULL),
(22, 'Mal Servicio', 'ACTIVO', 'Edy2', '', 'Contador', 'edy@gmail.com', 57123023, '2021-11-12 10:19:00', NULL, NULL),
(23, 'Mal Servicio', 'ACTIVO', 'Oscar', '', '', 'edy@gmail.com', 57123023, '2021-11-12 10:19:14', NULL, NULL),
(32, 'Mal Servicio', 'ACTIVO', 'Oscar ', '', '', 'edy@gmail.com', 57123023, '2021-11-12 23:57:22', NULL, 'Telefono,Chat'),
(34, 'Mal Servicio', 'ACTIVO', 'Edy12', '', '', 'edy2@gmail.com', 57123023, '2021-11-13 00:00:25', NULL, 'Chat'),
(35, 'Mal Servicio', 'ACTIVO', 'Edy12', '', '', 'edy@gmail.com', 57123023, '2021-11-13 00:01:32', NULL, 'Telefono'),
(36, 'Mal Servicio', 'ACTIVO', 'Edy2', 'Contabilidad', '', 'edy@gmail.com', 57123023, '2021-11-13 11:32:29', NULL, NULL),
(37, 'Mal Servicio', 'ACTIVO', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-13 11:33:39', NULL, NULL),
(38, 'Mal Servicio', 'ACTIVO', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-13 11:35:18', NULL, 'Telefono'),
(39, 'Mal Servicio inconforme', 'ACTIVO', 'Edy Monroy', 'Contabilidad', 'Contador2', 'edy@gmail.com', 22222222, '2021-11-13 12:19:20', NULL, 'Telefono'),
(40, 'Mal Servicio', 'ACTIVO', 'Edy2', 'Contabilidad', '', 'edy@gmail.com', 57123023, '2021-11-13 12:47:47', NULL, 'Telefono'),
(41, 'Mal Servicio', 'ACTIVO', 'Edy2', '', 'Contador', 'edy@gmail.com', 57123023, '2021-11-14 15:17:46', NULL, 'Telefono'),
(42, 'Mal Servicio', 'ACTIVO', 'Edy2', '', '', 'miguel@gmail.com', 57123023, '2021-11-15 21:07:47', NULL, 'Chat'),
(55, 'Operaciones Especiales', 'ACTIVO', 'Edy', '', '', 'edymonroy@gmail.com', 57123023, '2021-11-16 20:48:45', NULL, 'Chat'),
(53, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy@gmail.com', 57123023, '2021-11-16 17:54:01', NULL, NULL),
(54, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy@gmail.com', 57123023, '2021-11-16 18:13:02', NULL, 'Telefono'),
(46, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy2@gmail.com', 57123023, '2021-11-15 21:52:14', NULL, NULL),
(47, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy2@gmail.com', 57123023, '2021-11-16 11:20:51', NULL, 'Telefono'),
(48, 'Mal Servicio', 'ACTIVO', 'Edy Monroy', '', '', 'edy3@gmail.com', 57123023, '2021-11-16 15:19:23', NULL, 'Chat'),
(49, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy@gmail.com', 57123023, '2021-11-16 16:21:42', NULL, NULL),
(50, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy@gmail.com', 57123023, '2021-11-16 16:40:10', NULL, NULL),
(51, 'Mal Servicio', 'ACTIVO', 'Edy', '', '', 'edy@gmail.com', 57123023, '2021-11-16 16:42:51', NULL, NULL),
(52, 'Mal Servicio', 'ACTIVO', 'Edy2', '', '', 'edy@gmail.com', 57123023, '2021-11-16 16:45:37', NULL, NULL),
(56, 'Operaciones Especiales', 'ACTIVO', 'Edy', '', '', 'edymonroy@gmail.com', 57123023, '2021-11-16 20:48:57', NULL, 'Chat'),
(57, 'Operaciones Especiales', 'ACTIVO', 'Edy', 'Programacion', 'Programacion', 'edymonroy@gmail.com', 57123023, '2021-11-17 19:40:07', NULL, 'Presencial'),
(58, 'Operaciones Especiales', 'ACTIVO', 'Edy', 'Programacion', 'Programacion', 'edymonroy@gmail.com', 57123023, '2021-11-17 19:46:27', NULL, 'Presencial'),
(59, 'Operaciones Especiales', 'ACTIVO', 'Edy45', 'Programacion', 'Programacion', 'edymonroy@gmail.com', 57123023, '2021-11-17 20:15:07', '2021-11-17 20:18:36', 'Presencial'),
(60, 'Operaciones Especiales', 'ACTIVO', 'Edy58', 'Programacion', 'Programacion', 'edymonroy@gmail.com', 57123023, '2021-11-17 20:27:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_queja`
--

DROP TABLE IF EXISTS `tipo_queja`;
CREATE TABLE IF NOT EXISTS `tipo_queja` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SIGLAS` varchar(20) NOT NULL,
  `DESCRIPCION` varchar(50) NOT NULL,
  `FECHA_CREACION` varchar(30) NOT NULL,
  `FECHA_MODIFICACION` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0000-00-00',
  `ESTATUS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'Activo',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipo_queja`
--

INSERT INTO `tipo_queja` (`ID`, `SIGLAS`, `DESCRIPCION`, `FECHA_CREACION`, `FECHA_MODIFICACION`, `ESTATUS`) VALUES
(1, 'OE', 'Operacion Especial1', '2021-11-16', '2021-11-17', 'Activo'),
(2, 'QMS', 'Mal servicio  en las instalaciones', '2021-11-16', '2021-11-17', 'Activo'),
(3, 'QMS', 'Mal servicio en este mes', '2021-11-16', '2021-11-17', 'Activo'),
(4, 'QMS', 'Operaciones Especiales', '2021-11-16', '0000-00-00', 'Eliminado'),
(5, 'QMS1', 'Operaciones Especiales', '2021-11-16', '0000-00-00', 'Activo'),
(6, 'QMS2', 'Operaciones Especiales', '2021-11-16', '0000-00-00', 'Activo'),
(7, 'QMS3', 'Operaciones Especiales', '2021-11-17', '0000-00-00', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `User` varchar(40) DEFAULT NULL,
  `Clave` varchar(40) DEFAULT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `User`, `Clave`, `Nombre`) VALUES
(1, 'Admin', 'Admin', 'Admin'),
(2, 'Receptor', 'Receptor', 'Receptor'),
(3, 'Edy', 'Edy', 'Edy');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
