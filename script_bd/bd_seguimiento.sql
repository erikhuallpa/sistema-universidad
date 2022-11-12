-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2022 a las 04:10:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_seguimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correcion`
--

CREATE TABLE `correcion` (
  `id_observacion` int(11) NOT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `fecha_correcion` date DEFAULT NULL,
  `detalle` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresado`
--

CREATE TABLE `egresado` (
  `id_egresado` int(11) NOT NULL,
  `ci` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `materno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `celular` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `id_encargado` int(11) NOT NULL,
  `cargo` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ci` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paterno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `materno` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `item` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrega`
--

CREATE TABLE `entrega` (
  `id_tramite` int(11) NOT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion`
--

CREATE TABLE `gestion` (
  `id_gestion` int(11) NOT NULL,
  `detalle` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `observacion`
--

CREATE TABLE `observacion` (
  `id_observacion` int(11) NOT NULL,
  `id_tramite` int(11) DEFAULT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `detalle` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recepcion`
--

CREATE TABLE `recepcion` (
  `id_tramite` int(11) NOT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tramite`
--

CREATE TABLE `tramite` (
  `id_tramite` int(11) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_egresado` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `carrera` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_gestion` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validacion`
--

CREATE TABLE `validacion` (
  `id_tramite` int(11) NOT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `fecha_validacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `correcion`
--
ALTER TABLE `correcion`
  ADD PRIMARY KEY (`id_observacion`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `egresado`
--
ALTER TABLE `egresado`
  ADD PRIMARY KEY (`id_egresado`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`id_encargado`);

--
-- Indices de la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD PRIMARY KEY (`id_tramite`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `gestion`
--
ALTER TABLE `gestion`
  ADD PRIMARY KEY (`id_gestion`);

--
-- Indices de la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD PRIMARY KEY (`id_observacion`),
  ADD KEY `id_tramite` (`id_tramite`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD PRIMARY KEY (`id_tramite`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`) USING BTREE,
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD PRIMARY KEY (`id_tramite`),
  ADD KEY `id_tipo` (`id_tipo`),
  ADD KEY `id_egresado` (`id_egresado`),
  ADD KEY `id_gestion` (`id_gestion`);

--
-- Indices de la tabla `validacion`
--
ALTER TABLE `validacion`
  ADD PRIMARY KEY (`id_tramite`),
  ADD KEY `id_encargado` (`id_encargado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tramite`
--
ALTER TABLE `tramite`
  MODIFY `id_tramite` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `correcion`
--
ALTER TABLE `correcion`
  ADD CONSTRAINT `correcion_ibfk_1` FOREIGN KEY (`id_observacion`) REFERENCES `observacion` (`id_observacion`),
  ADD CONSTRAINT `correcion_ibfk_2` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);

--
-- Filtros para la tabla `entrega`
--
ALTER TABLE `entrega`
  ADD CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_tramite`) REFERENCES `tramite` (`id_tramite`),
  ADD CONSTRAINT `entrega_ibfk_2` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);

--
-- Filtros para la tabla `observacion`
--
ALTER TABLE `observacion`
  ADD CONSTRAINT `observacion_ibfk_1` FOREIGN KEY (`id_tramite`) REFERENCES `tramite` (`id_tramite`),
  ADD CONSTRAINT `observacion_ibfk_2` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);

--
-- Filtros para la tabla `recepcion`
--
ALTER TABLE `recepcion`
  ADD CONSTRAINT `recepcion_ibfk_1` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`),
  ADD CONSTRAINT `recepcion_ibfk_2` FOREIGN KEY (`id_tramite`) REFERENCES `tramite` (`id_tramite`);

--
-- Filtros para la tabla `rol`
--
ALTER TABLE `rol`
  ADD CONSTRAINT `rol_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`),
  ADD CONSTRAINT `rol_ibfk_2` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);

--
-- Filtros para la tabla `tramite`
--
ALTER TABLE `tramite`
  ADD CONSTRAINT `tramite_ibfk_1` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`),
  ADD CONSTRAINT `tramite_ibfk_2` FOREIGN KEY (`id_egresado`) REFERENCES `egresado` (`id_egresado`),
  ADD CONSTRAINT `tramite_ibfk_3` FOREIGN KEY (`id_gestion`) REFERENCES `gestion` (`id_gestion`);

--
-- Filtros para la tabla `validacion`
--
ALTER TABLE `validacion`
  ADD CONSTRAINT `validacion_ibfk_1` FOREIGN KEY (`id_tramite`) REFERENCES `tramite` (`id_tramite`),
  ADD CONSTRAINT `validacion_ibfk_2` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
