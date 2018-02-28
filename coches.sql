-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2018 a las 17:17:18
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `coches`
--
CREATE DATABASE IF NOT EXISTS `coches` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `coches`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camion`
--

CREATE TABLE IF NOT EXISTS `camion` (
  `cargamax` int(10) NOT NULL,
  `tipocarga` varchar(30) NOT NULL,
  `cap_comb` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `telefono` int(9) NOT NULL,
  `disponible` char(2) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`dni`, `nombre`, `apellidos`, `telefono`, `disponible`) VALUES
('65478123G', 'manuel', 'pedraza', 678954123, 'si'),
('65897412Z', 'juan', 'pozo carrera', 698574123, 'si'),
('98564132Z', 'ana', 'rosales', 789546123, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coche`
--

CREATE TABLE IF NOT EXISTS `coche` (
  `num_puertas` int(1) NOT NULL,
  `tapiceria` varchar(30) NOT NULL,
  `tipocoche` varchar(30) NOT NULL,
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `coche`
--

INSERT INTO `coche` (`num_puertas`, `tapiceria`, `tipocoche`, `id`) VALUES
(5, 'cuero', 'turismo', 1),
(5, 'tela', 'turismo', 2),
(5, 'cuero', 'turismo', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `vehiculo` varchar(7) NOT NULL,
  `importe` float NOT NULL,
  `fecha` date NOT NULL,
  `proveedor` varchar(9) NOT NULL,
  `empleado` varchar(9) NOT NULL,
  `comentarios` text NOT NULL,
  `disponible` char(2) NOT NULL,
  KEY `vehiculo` (`vehiculo`),
  KEY `proveedor` (`proveedor`),
  KEY `empleado` (`empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`vehiculo`, `importe`, `fecha`, `proveedor`, `empleado`, `comentarios`, `disponible`) VALUES
('1234BFG', 4000, '2018-02-26', 'A12345678', '21345678B', ' ', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `salario` float NOT NULL,
  `disponible` char(2) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`dni`, `nombre`, `apellidos`, `salario`, `disponible`) VALUES
('12345678A', 'diego', 'gonzalez', 1500, 'si'),
('21345678B', 'fabian', 'alfaro', 1250, 'si'),
('21356478G', 'maria', 'marquez', 1400, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE IF NOT EXISTS `marcas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `marca`) VALUES
(1, 'seat'),
(2, 'mercedes'),
(3, 'audi'),
(4, 'bmw'),
(5, 'citroen'),
(6, 'renault'),
(7, 'toyota'),
(8, 'volkswagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE IF NOT EXISTS `proveedor` (
  `cif` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL,
  `disponible` char(2) NOT NULL,
  PRIMARY KEY (`cif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`cif`, `nombre`, `direccion`, `telefono`, `disponible`) VALUES
('A12345678', 'luis', 'dos hermanas', 765468534, 'si'),
('B12345678', 'antonio', 'alcala de guadaira', 678945123, 'si'),
('L32165478', 'paco', 'sevilla', 698754123, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparacion`
--

CREATE TABLE IF NOT EXISTS `reparacion` (
  `vehiculo` varchar(7) NOT NULL,
  `desc_rep` text NOT NULL,
  `coste` float NOT NULL,
  `disponible` char(2) NOT NULL,
  KEY `vehiculo` (`vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reparacion`
--

INSERT INTO `reparacion` (`vehiculo`, `desc_rep`, `coste`, `disponible`) VALUES
('1234BFG', 'Aleron roto', 44, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE IF NOT EXISTS `vehiculos` (
  `matricula` varchar(7) NOT NULL,
  `marca` varchar(30) NOT NULL,
  `modelo` varchar(30) NOT NULL,
  `tasacion` float NOT NULL,
  `combustible` varchar(10) NOT NULL,
  `plazas` int(2) NOT NULL,
  `id_v` int(10) NOT NULL AUTO_INCREMENT,
  `disponible` char(2) NOT NULL,
  PRIMARY KEY (`matricula`),
  KEY `id_v` (`id_v`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`matricula`, `marca`, `modelo`, `tasacion`, `combustible`, `plazas`, `id_v`, `disponible`) VALUES
('1234BFG', 'seat', 'leon', 5000, 'diesel', 5, 1, 'no'),
('2413JGF', 'skoda', 'fabia', 3300, 'diesel', 5, 2, 'si'),
('5689KGJ', 'mercedes', 'clase a', 12000, 'gasolina', 5, 3, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE IF NOT EXISTS `venta` (
  `vehiculo` varchar(7) NOT NULL,
  `importe` float NOT NULL,
  `fecha` date NOT NULL,
  `cliente` varchar(9) NOT NULL,
  `empleado` varchar(9) NOT NULL,
  `comentarios` text NOT NULL,
  `disponible` char(2) NOT NULL,
  KEY `vehiculo` (`vehiculo`),
  KEY `cliente` (`cliente`),
  KEY `empleado` (`empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`vehiculo`, `importe`, `fecha`, `cliente`, `empleado`, `comentarios`, `disponible`) VALUES
('1234BFG', 5000, '2018-02-26', '65478123G', '12345678A', '', 'si');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camion`
--
ALTER TABLE `camion`
  ADD CONSTRAINT `camion_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vehiculos` (`id_v`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `coche`
--
ALTER TABLE `coche`
  ADD CONSTRAINT `coche_ibfk_1` FOREIGN KEY (`id`) REFERENCES `vehiculos` (`id_v`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`vehiculo`) REFERENCES `vehiculos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`proveedor`) REFERENCES `proveedor` (`cif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reparacion`
--
ALTER TABLE `reparacion`
  ADD CONSTRAINT `reparacion_ibfk_1` FOREIGN KEY (`vehiculo`) REFERENCES `vehiculos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`vehiculo`) REFERENCES `vehiculos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`empleado`) REFERENCES `empleados` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
