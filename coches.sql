-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2018 a las 17:07:30
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cdcol`
--
CREATE DATABASE IF NOT EXISTS `cdcol` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `cdcol`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
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
--
-- Base de datos: `gasofa`
--
CREATE DATABASE IF NOT EXISTS `gasofa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gasofa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `DNI` varchar(9) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`DNI`, `NOMBRE`) VALUES
('12345678P', 't'),
('76543218G', 'Jaimito'),
('87654321H', 'www');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientenovip`
--

CREATE TABLE IF NOT EXISTS `clientenovip` (
  `DNI` varchar(9) NOT NULL,
  `LITROS` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientenovip`
--

INSERT INTO `clientenovip` (`DNI`, `LITROS`) VALUES
('76543218G', 20),
('87654321H', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientevip`
--

CREATE TABLE IF NOT EXISTS `clientevip` (
  `DNI` varchar(9) NOT NULL,
  `IDVIP` int(11) NOT NULL,
  `PUNTOS` int(11) NOT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientevip`
--

INSERT INTO `clientevip` (`DNI`, `IDVIP`, `PUNTOS`) VALUES
('12345678P', 1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combustible`
--

CREATE TABLE IF NOT EXISTS `combustible` (
  `TIPO` varchar(50) NOT NULL,
  `LITROS` float NOT NULL,
  `PRECIO` float NOT NULL,
  PRIMARY KEY (`TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `combustible`
--

INSERT INTO `combustible` (`TIPO`, `LITROS`, `PRECIO`) VALUES
('Diesel', 50, 1),
('Gasolina', 50, 1.3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasolinera`
--

CREATE TABLE IF NOT EXISTS `gasolinera` (
  `NOMBRE` varchar(50) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  `ID_GASOLINERA` int(11) NOT NULL,
  PRIMARY KEY (`ID_GASOLINERA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `gasolinera`
--

INSERT INTO `gasolinera` (`NOMBRE`, `DIRECCION`, `TELEFONO`, `ID_GASOLINERA`) VALUES
('Aaaa', 'add', 619573902, 123),
('qqqq', 'wwww', 645327123, 2134);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `ID_GASOLINERA` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `IMPORTE` float NOT NULL,
  `COMBUSTIBLE` varchar(50) NOT NULL,
  `LITROS` float NOT NULL,
  `SURTIDOR` int(11) NOT NULL,
  `DNI_CLIENTE` varchar(9) NOT NULL,
  `ID_TICKET` int(11) NOT NULL,
  PRIMARY KEY (`ID_GASOLINERA`,`ID_TICKET`),
  KEY `COMBUSTIBLE` (`COMBUSTIBLE`,`DNI_CLIENTE`),
  KEY `DNI_CLIENTE` (`DNI_CLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ticket`
--

INSERT INTO `ticket` (`ID_GASOLINERA`, `FECHA`, `IMPORTE`, `COMBUSTIBLE`, `LITROS`, `SURTIDOR`, `DNI_CLIENTE`, `ID_TICKET`) VALUES
(123, '2017-11-12', 12, 'Diesel', 2, 3, '12345678P', 123),
(123, '0000-00-00', 12, 'Diesel', 2, 2, '76543218G', 1234),
(123, '0000-00-00', 12, 'Diesel', 2, 3, '12345678P', 12345);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientenovip`
--
ALTER TABLE `clientenovip`
  ADD CONSTRAINT `clientenovip_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `cliente` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clientevip`
--
ALTER TABLE `clientevip`
  ADD CONSTRAINT `clientevip_ibfk_1` FOREIGN KEY (`DNI`) REFERENCES `cliente` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`ID_GASOLINERA`) REFERENCES `gasolinera` (`ID_GASOLINERA`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`DNI_CLIENTE`) REFERENCES `cliente` (`DNI`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`COMBUSTIBLE`) REFERENCES `combustible` (`TIPO`) ON DELETE NO ACTION ON UPDATE CASCADE;
--
-- Base de datos: `inmobiliaria`
--
CREATE DATABASE IF NOT EXISTS `inmobiliaria` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inmobiliaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE IF NOT EXISTS `imagen` (
  `id` int(10) unsigned NOT NULL,
  `foto` blob NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '',
  `tamano` varchar(15) NOT NULL DEFAULT '',
  `formato` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propiedades`
--

CREATE TABLE IF NOT EXISTS `propiedades` (
  `numpropiedad` int(11) NOT NULL AUTO_INCREMENT,
  `domicilio` char(50) DEFAULT NULL,
  `tipo` enum('Casa','Chalet','Piso','Parcela') DEFAULT NULL,
  `m2` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `vendida` enum('SI','NO') DEFAULT NULL,
  `dni_propietario` char(9) DEFAULT NULL,
  PRIMARY KEY (`numpropiedad`),
  KEY `dni_propietario` (`dni_propietario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `propiedades`
--

INSERT INTO `propiedades` (`numpropiedad`, `domicilio`, `tipo`, `m2`, `precio`, `vendida`, `dni_propietario`) VALUES
(1, 'los pinos', 'Parcela', 1000, 130000, 'SI', '5'),
(2, 'JIMENA 3', 'Piso', 90, 100000, 'NO', '11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios_clientes`
--

CREATE TABLE IF NOT EXISTS `propietarios_clientes` (
  `dni` char(9) NOT NULL,
  `apellnom` char(20) DEFAULT NULL,
  `password` char(6) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `propietarios_clientes`
--

INSERT INTO `propietarios_clientes` (`dni`, `apellnom`, `password`, `telefono`) VALUES
('00000000A', 'Administrador', 'admin', NULL),
('1', 'ab', '1ab', '122234'),
('11', 'Rubio Ramos', '11Rub', '458789'),
('123', 'Alberto Quevedo', '123Alb', '3212131'),
('5', 'Perez Marin', '5Per', '654887788');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `dni_cliente` char(9) NOT NULL DEFAULT '',
  `numpropiedad` int(11) NOT NULL DEFAULT '0',
  `precio` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`dni_cliente`,`numpropiedad`),
  KEY `numpropiedad` (`numpropiedad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`dni_cliente`, `numpropiedad`, `precio`, `fecha`) VALUES
('5', 1, 120000, '2012-12-03');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `propiedades`
--
ALTER TABLE `propiedades`
  ADD CONSTRAINT `propiedades_ibfk_1` FOREIGN KEY (`dni_propietario`) REFERENCES `propietarios_clientes` (`dni`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`dni_cliente`) REFERENCES `propietarios_clientes` (`dni`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`numpropiedad`) REFERENCES `propiedades` (`numpropiedad`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"coches","table":"reparacion"},{"db":"coches","table":"compra"},{"db":"coches","table":"vehiculos"},{"db":"coches","table":"venta"},{"db":"coches","table":"clientes"},{"db":"coches","table":"proveedor"},{"db":"coches","table":"empleados"},{"db":"gasofa","table":"cliente"},{"db":"gasofa","table":"clientenovip"},{"db":"gasofa","table":"clientevip"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-12-11 18:59:35', '{"lang":"es"}');
--
-- Base de datos: `practica_libre`
--
CREATE DATABASE IF NOT EXISTS `practica_libre` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `practica_libre`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banda_pirata`
--

CREATE TABLE IF NOT EXISTS `banda_pirata` (
  `ID_PERSONA` int(3) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `banda_pirata`
--

INSERT INTO `banda_pirata` (`ID_PERSONA`, `NOMBRE`) VALUES
(0, 'Sombrero Paja'),
(1, 'Barbanegra'),
(2, 'Pelirrojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_persona`
--

CREATE TABLE IF NOT EXISTS `datos_persona` (
  `ID` int(3) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  `TELEFONO` int(9) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `datos_persona`
--

INSERT INTO `datos_persona` (`ID`, `NOMBRE`, `TELEFONO`) VALUES
(0, 'Pedro', 111111111),
(1, 'Jaime', 222222222),
(2, 'Juan', 333333333);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `haki`
--

CREATE TABLE IF NOT EXISTS `haki` (
  `ID_PERSONA` int(3) NOT NULL,
  `ELECCION` varchar(2) NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `haki`
--

INSERT INTO `haki` (`ID_PERSONA`, `ELECCION`) VALUES
(0, 'si'),
(1, 'si'),
(2, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nueces`
--

CREATE TABLE IF NOT EXISTS `nueces` (
  `ID_PERSONA` int(3) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nueces`
--

INSERT INTO `nueces` (`ID_PERSONA`, `NOMBRE`) VALUES
(0, 'Mera Mera'),
(1, 'Pera Pera'),
(2, 'Manza Manza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje_fav`
--

CREATE TABLE IF NOT EXISTS `personaje_fav` (
  `ID_PERSONA` int(3) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personaje_fav`
--

INSERT INTO `personaje_fav` (`ID_PERSONA`, `NOMBRE`) VALUES
(0, 'Monkey D Luffy'),
(1, 'Pirata'),
(2, 'Pedrote');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimiento`
--

CREATE TABLE IF NOT EXISTS `seguimiento` (
  `ID_PERSONA` int(3) NOT NULL,
  `NOMBRE` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_PERSONA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seguimiento`
--

INSERT INTO `seguimiento` (`ID_PERSONA`, `NOMBRE`) VALUES
(0, 'Anime'),
(1, 'Manga'),
(2, 'Peliculas');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `banda_pirata`
--
ALTER TABLE `banda_pirata`
  ADD CONSTRAINT `FK_banda` FOREIGN KEY (`ID_PERSONA`) REFERENCES `datos_persona` (`ID`);

--
-- Filtros para la tabla `haki`
--
ALTER TABLE `haki`
  ADD CONSTRAINT `FK_haki` FOREIGN KEY (`ID_PERSONA`) REFERENCES `datos_persona` (`ID`);

--
-- Filtros para la tabla `nueces`
--
ALTER TABLE `nueces`
  ADD CONSTRAINT `FK_nueces` FOREIGN KEY (`ID_PERSONA`) REFERENCES `datos_persona` (`ID`);

--
-- Filtros para la tabla `personaje_fav`
--
ALTER TABLE `personaje_fav`
  ADD CONSTRAINT `FK_personajeFav` FOREIGN KEY (`ID_PERSONA`) REFERENCES `datos_persona` (`ID`);

--
-- Filtros para la tabla `seguimiento`
--
ALTER TABLE `seguimiento`
  ADD CONSTRAINT `FK_seguimiento` FOREIGN KEY (`ID_PERSONA`) REFERENCES `datos_persona` (`ID`);
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_multi_sets`()
    DETERMINISTIC
begin
        select user() as first_col;
        select user() as first_col, now() as second_col;
        select user() as first_col, now() as second_col, now() as third_col;
        end$$

DELIMITER ;
--
-- Base de datos: `videojuegos`
--
CREATE DATABASE IF NOT EXISTS `videojuegos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `videojuegos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(9) NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cliente`,`usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `dni`, `nombre`, `direccion`, `usuario`, `password`) VALUES
(1, '49094776L', 'Lou Grover', 'c/Villanueva', 'lou', 'lou'),
(2, '49094775D', 'Diego Terrón', 'c/Las Infantas', 'admin', 'admin'),
(3, '49094775W', 'Danny Williams', 'c/Las Meninas', 'danno', 'danno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familia`
--

CREATE TABLE IF NOT EXISTS `familia` (
  `cod` int(6) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `familia`
--

INSERT INTO `familia` (`cod`, `nombre`) VALUES
(1, 'rpg'),
(2, 'educativo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `num_ident` int(10) unsigned NOT NULL,
  `imagen` blob NOT NULL,
  `nombre` varchar(255) NOT NULL DEFAULT '',
  `tamano` varchar(15) NOT NULL DEFAULT '',
  `formato` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`num_ident`, `imagen`, `nombre`, `tamano`, `formato`) VALUES
(32132445, 0x89504e470d0a1a0a0000000d4948445200000072000000630802000000c835c314000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400003e3149444154785eed9d075c5b6796e87103d3bbe91df75e70c7b8d07b13020112eabd23d4104580101d44efcddd716c278e9d78269349326ddfec4ed9793bb39b6436339934a7388e4d911070dff9ae7092d999c9bcb7832799fdbdf33b485757d2d5b9ff7bbe536ec30efb56c812aed6276a7bf9a52c2359c41f416062459f7cf28bef2e3cd13ffafadf5fbe555897be8a0cd715c180e017bab48c3ef815595ac2bf88deb0822efd7fac7f2c365a5fc18a2dd8f44fb0226ecbb82e2d628b8b40165b06a7c6159ffc86e59bc2fac43d97accb8b2b48d004cc43d3f8e85e5e58b4ce2d2f99b1650bb668595eb02c59161053000b4e09efe3d1021e812c7c0bf18539b01c580c52b491567e0d66e3b2f2e2e9cb378215d6d88242e10a3ecc8a7821228b0be8e5d2e282c53cb3b438bfbc3c872dce62cbf318820b9fb72e59cca0186c00fcab96f9c5251cae8d2cfe5d7ce29b966f002b8cee27e9051e712a8824504344c02b31ab197104a04b334b96878f1efce1b38fdf9979f801b6f8185b9cc396e6310cde9d475ebcb4b0649903ffc43d7d196d1eb46d6099dfb0fcbdb1e26311054d00babc847cd63cffd8ba3087c3b522a0e8ad85c5f9cf3f7cf7cddb372fc944cc8c9453458414269560ac577577d4f5990cdfb97bedbddfff7ac9fa1986cd98673f59b6cec05796adb010e4d14f36d5173ff70d78ef378275d96a05a04b338f810b80b0cccf7d0e0eb8b4f01879e2d2ccefdefa557b63755afcc9f8d898b8a3fbb645044485784685b8836e09f73ab02b78eff680d3c7776894ac9b5787ba3b6bdb5b2a7ff4da9d8fde7f13be8b2dcf2e5a1e81f3436cb585d72f045eae18f1f4e5ef8a7565fd70f7412b0d2bbf68b65a1f63d8dc7fbef58b5b37a6bada6a1beb94121ef9ec89fd9141defe9ecebe2e0e819e2ebe2e1bdc1cecdc1ded3c9ded02bc3784f83904faac0f0f743a7a20f2e4e12d3bb6fa9f39b5372325f6f5576e5be71fc0165ab45a161717bf8a15fddcff74ac2865c3239ac2ac8b8b332fbd74fddc9903fbf7851e8d89de12e5b573b3dfb6c84d415e88a9b78383b7e3467f37575f67275f67471f677b6fa7759b5cd7fbb9aff7715913e8b331d4dfc5db656d78807bb0afebe650ffe7ae5e42017771c18615c4f69320ff03b0fef91558593fbc065a58c08b50ccfcfaeb772bca99c78f6edfbe6d53748497bfcfc6203f97406f675fb78dbeae4eaeebd63aad59ebb661a3878393af8bbb9f9bbba7a3bd97f3067f4f476f97f53e1e0ea0eece6b3d5dd787f87b01d6aca4f81f7cf71e90450b874406b518007df2cb2b763c7d591dac5f31188082aee4779bb3c05cdb07a06eb72c409d0fafe1cd65088230f0b3b36253930e1fdc1b15b8c97593a79bafbbbb8793938fbb8bb79bb38bc37a6787f51bd7afb35fb361dd9af51becd6dbaf5de7b86e9db3fd3a57a70d1eaef6dedece9b36b90404b88785f97ab9dbfbfb3847056f3a15b3ef173f7e0db34265865222d462b316b315ffd92762331214c957e6af9aac2e569badb65cfc653a06b18d3ff8187c70610155f590b85f7df9b9ccb4e367e3761d3bbc3934d0ddd365a38f9b87b7aba7eb461737276757c78d8e1bd66e745867bf619dbdfd4650870d1b37da3b38d96f70dcb01ee63b39ae7773777475b3777377f0f373f5f3710ef67707378ff0f73cbc7b4b43a5e2a3f7de865f9b9d9f5980a662115a882fc466e78a79df5eac4fe40b73bf50dbf0b3bd8b046a80b9d9cfb145f35bfffe7306393bf9dcbe987d2191c12ebe9ef680d5ddd1194039ae07a0f6c849d7da39acb35bb7d66e3d127bfbf5c0d401315dbf0ee66f586fe7b071ad93f33a0f4f474f88091e0ee0ad413e2ee17e1e9b837da343fce4228e756116fde6d2c2bc656ea5e705057b6cfad4e4e96205a2781c58791be62c429d8fcd9b3fffc0a82fcf483cb42dca2332c429c4cfd1c3659d9ba3bdd37a7ba70d8e36a6000eb06e5863b7c6ce6efdda756bd7ae5fb7662d040187756b41613ee0b67758bbd1711df8ac93d35a88099bbc1cc3fc3da2437c43fd3c037dddbd5c1dbada1b2de6c7566822d05e18db2e18d0a72e4f03eb9782463dee17903c16ad785f84993fbeffdb4193be30e754ead9bde101f63b37fb4259eaeeb4de01f9e6fa8deb904b3ad8afb7dfb006e9da3580cfd161e3860d105ed7826e58b71e51b65b03b8d7aeb55bbbce0e62b0e3c6759e6e0ec0115219c401600aeaefed7a68dfd6bbb7af41318b5a86650bda718376e27c75003d15d04f172b085a01c84ea8fe5f80e4f1eeefffbda35597706a6756d2be6de1cefb77f8850538bb3bdbb938acc34737c05b0f0114e2298c711455d7aeb15fbfc1c9c909b0024a5060ba6e1dca606b70b1b3b37370d8e0e8b4c1d3c3d9cb7d2390f574b1777771d8e4ed06454264a877dcb1dd3f7efdeea2f953a88ea13506acf89ec515f3bee558ff8271b00230f8d09e11e4a7b06efddd8d29f1fbcf9c88387d2ce4f8a1d0e81067a83d7ddc1d61d4e3401d21883a80b3dac3f35ae4966bd63a6cb0474cc133edc0455134804800b42124d83b3883cbc27cf8a497a76bc0264f5f2f6777e81d9ced83fcbd7d3d3706f93aee8af63b7772d78fbe770b910587c5b1423e7d02f61f15eb22daadb46c59b23c9c7ffc4129292523f9c081dd1ec9e7b61cdcede7e7b9c6dbdddec3190d7c77570fa78dcef6f6f68e8e0ea0e083e0bae095e0bcc014fc127c1398024d50bb35b8daad07ac90cd002b140aee6e90b89c81ac8fa78b8be35a7f4f87303fa7d84351270e4494e4c5ffee8d9f61cbf35fc58a93fd07c46a9eb3a0a86ac677ee2d7e7e7eac333de950d299edb1470313cf44478538f87bad75735ae3e1bc11ca26704c34c0215caeb15bbfce0ec22b24a935400de52b8415063f0c7f40b9c1dec986758d1d80dfb01e253094dc1cedd778ba39da1c165c35d8c7714784d7915d81b107c2630f6d1eee3642310bd6a0440a51d60a55df32f463df5eace0027fd6388800c85b97adcb0b9fdfbb7d393f23363de1c0e17dfec763fc628f0685f8af851a009a258f8d1ba00c809405c53fd4f90eebedd6d9d96d5cbf06a22dcaf800729d4dd780025aa8612108e0b5c17ac866107fa16c00bfddb8ce0e8a01282ac04ffd3d3684fadaef08753bb62b28fdccde7347b6920b523ebdff3b2809a038315bac6857226e3298881bbb9ab25a58bf4cae4f06172ea8fdb740e5ffe66f7e56929f54941d177f72ebfe1d1e29f15b016b64b07dc8267b2f473b68f3b785f96f0ff7735a63e7b2ce0e1e9dd7da4187eaedbcd175c35aa7b5762e1bec9c2183adb103f44ef6eb8020e00607877ecc71fd1a073b3b0f07e871e1d1cecbc9ce799dddd610cfad41aebb233cf7477bc76cf34d8edd99787c4746c2d1377efd2f68afe3e282c50241164fa7b8f1b8adab294f15eb92c53c07edb965e661b54a94111f43ca8d8bd9b1292e26383d61fb8943fefbb7fb84faae0f725fb737621325275e58969d9f74646fa4972fd0596fe7bbd12ec46363a8a7a39fd35a1f073b401ee4b911d0efd91c0a9bc1d10ea1874797b576a11e0ea11e1bbc37d86df177de19ea16bb2f9c967b36e7ccfe93bb037784381dd8ec85bcf538d41e27bfffdde721cae3650974d230c29e96ac526cc543ab8dec13acd00540585d80d5f8e1f7ef15e624510b534a72e2128e45e524ecce4edc197f3c2cf3ecaeed810e111e7627b7fb2b69192d4a4a93bca48a935770665ffc9e88ec93fb930e6e3bbd279c94742cf3c4ee337bc28f6ef18fdb1b1eb73732d86d8d8fbd5db8c7ba73fb3793928f33b3cea41c8a3ab9755369720c25e398b03849cbcae1179dcb38b96d5f84cbd19dfe5442c289835b766f0d6a3556a31dde0bf3601ef4d0f83e8baf165bab26ab8c1504e501ecc971d3250bb6387fef851b0519f1c5b9e7729362ce1d89483816519c7d283f7127233ff6c866f76dde76a7b6b855949ce9aa28ea5197f46968a60a6a5705b357cdef50b09ac4e4b6f2b256695903afa88292414d3f767677e076bf750907c31465197dd5c26e0dcbc02f34f00b9a84c42671413d2faf5355d6242daa6465b2f24f9edd1f726c5700ab343dfee4dedd5b82b3d3cf3dfaf403184598d56cdb790848ade86195e5696045652a228b2d2c58a02537dfb836951e7f0cb0f2cb32938e6f4d3d112da125094ace2ae869c5097bce6df788dfee22c9ddd7214a1bac28385f4bbf6a105dd08b46b49ce14ace580d67aa5e30a4610ea8e89de5e41a56162ff7383beb8886963a50c59cd0f3266b39032a4a6f05695059d2a7247548f25b8439cde2fc4a5a8ab4f85c41e2de73873717659f397e60eb9630df43bb377fefee2db4db101c7619a822a260ebaacb6ac5569bdae44bac4b8b5057cd4e0e99b29363b3e30f13d34e90734e659cda4acf3bc62b385151960c2bcf4cda493a165891bfdf244a1d57132635c5132af2b0aca45f5a32545136a2a10e54948ea868e3952c5093acb89e95de2e293095938634d47e05c924ca1f54140fc80bfba405fd32429728bbbfbcb05598a367a46aca52d8b9b1054987e07701ebde2d21877646d7eb94a837b19a6d58c1d0a7100356cb5b7159a16a1334034c86d86aee3054a7c71dce38139316b7b724ff4cfae91d277678505277cb0a63eb59a9edc24c1521a6a6e47897306d409add2bc81c16178ccb8aa755cc293573405e36a2669eaf164c57f1a7aa381395ac310d6da29236a9a38f6bca06e52503b2e23e49519f88d023c8ebe6e7f4f0727a04b9edbcdc566e5e4d599aba2455569ace2f4ecb3c7bf8e89ee8d3317bb994d2b9079f40a042024fe00db8f1ab2babe4adb63485c7ff15417396a0f6860afcfc60774efc0962caa99c842339c9474eee0f3abcd9999d75b08a9ed8c04a69e1a43631131aa8679a59896dac941e7ed698a470525e725ec938afe68ca9d9e395dce92ac1849633ae668dab19932ada792df342256b4a4d07eea34adab08c3c2821f50989264e760733a39b9b6312101ae9197565e955943441ee190e31a924fb6c52ecc1e3bbb7d20bf31f7df421da95868e1f3cb17cb5e5e96235cf3f86a2f5f57b2f14662614a59fcb4c389c706ad791bd81670ff8f3f38e00d61af2d95af2d9364e9a819ed0c24a81813ca1a25cd032afea7857ab45576b2457eb64571b14d70c15176a24e775a2cbb5921b86f29b8d8a4bb5a2910afa5425774ac79bd0b0115c4519906d6765803631330cf40c2333474d4a2c3abb8f9c71825d9c5694137f785714b530efb38f3e805c0a610a3ff1081dc3b0adc52acaaa6145f2042bca5e3856bcfb5a78e357ff529c939c76e6c889fd9bf7ed08dcbdd9a3207197acf4b49e9d5e433e575d7ca6959dd12d268c69cac6b57418e9935a0e00bd69a8b8d1a0bcd5acbdd552f55c6bf5f36d35773beaeeb4eb6f3757de6eab7ab14bff524ffdb34dea5bad95d70ce5176a44176a84e35a2604842e7ebebe2ca98e9a5c5d92484f3a7066e7a6f8984852cee9b2c2b4d347f670cb8a1e3ff8089d8904bd1f4ab52876d9cc5f4559add88a97027f827561c1bc689dfbcdbffe33213de1c481edbba2fdb66ff1ddbfc32fe9581827ef702d2bad819eda40496e61660e2a2883156593b582f37592f33592eb8d1a20081c5fee6efc4e77e3edf6ba173aeaef998c2ff7b67c7fa0fdd5c10e9878be4dff7c5bfd8d96eacbf51517f5b28b7592312dbb47426a17e43573b2f4b4942a721233edd0892d9e7b22dc12e37667a79e4c3c7d48c4a6cc3f7a8097552b589f38c56acad3c20a5e8aef268007ebfbbfff6d6941e6c11d111141ee3bb707c61e8d8eddef9717172dcc3da22b3e6ba4a5990444a8a8a6f5e2b15af1a566cdd566ddb5a6eae75aeb5eec347cb7cb78b7a3e176abfe4553d3f7fada5fee6d037da5bfe33bbdadcfb5d4df68d60fab256d7c6a13bbb89e9eaf2e4c90e5c6ca724fe84ae355857135b4547ecef143912e3bc29cb3920fe764c69d3ebe87c3289e7df80958655d5af847c56a46fd8cd5fcf8332e8d746877545498f7d163dbb3338eef89764c3a1c282988d5d3d2eacb529b99b9ad7c5203a7b08a4168e0935bc48c1621bdaf9c7fa1bae25a9dfa5943e54b5d8d2f751be1f185b6ba9bc69a8b55152d8c5251d2d9dcdd5bcf86059c0ad994b03930795b50ea8ea0ac7da1d9fb8393777865eedbc44b3fc4c9387a6cab6774c086d3c7b6c61edf79fce076461971e6b38f511040e7d1818d60f83f4e10b061058f8007cc3acf6794c4ec89de1ce17bfcc4ceaccce39b43d7a6c7862b2909dcb48329d19ee9db372544fb1e0ff58809f13c1cee1bb7352475f766dae923da828c665a61bf987eab4977a7ab1662c2b306cd9446d2cda7cbd3138069f6cecd0531fba4d9294d7c6abf5230aa930ca8b8462e0180969cdac24e3e28219cce8addbe23c4e9d881f0947331270eede0508be73eff1499b6848e752357fdb66305f3700b610a3fc70c5cc2828e735866a53c1ac4d63ddb82f7ef0d4f4d3a141db22ee7dc364acafea49dbec44311d2ecd8467661ab8c5927a429c805e48453c49331f4b3275479a906727eaf907aad5e7eb34975a7b5f219bd6c44c668a2122a0b32aa49b9ed5c7a238b52472baea612eb98a436096d48c31faee4b5898aaaca92b5254915c5892947a2c2bdd7eedb1e901a7f34fddc49a5886b9979884e98456d0b5eb5e2916075e52960c5db2d7881143c62d1bc34fb482de1a6c41d3eba6ff3f628df829c535bc3ed938e8512e2b6ca89671a5979c31a76a79cde5eceae28237072524484ec5a06b989436da415f1e28fb4320bfa24a5e7b5ecabb5e26b7a898953a8cb4b6865908615825195645c571e1f15bccf6b638caf53d1b15dacc4230dacfcde0aaa9197ab23a7aac96979a7768678d8ed88f03a77625fe289984aa97069f63164532b4457d41060560b1e0a56559e2e56b379ce32fb089b9be96b69483cb6ffc0b6d0d8986d994931419e76e4cc1821314ecfcaee9295b68b8bd9a9c7738f6edfe9ed7820c08b1a7ffae5b1c15e39af8d5baa2d4854e79d6ea6660c8a8bc6cba92352723325bdb630b18b5dd4c12ebede58f5ee2b77205cec70b29364c67789e984439b8b8f6fed9014f72a292d3ca29e99474f3fbe23c0718bbff3bea8c0c35b23d57ccecc47f7972d73e864589be160f36acb53c16a331415adcb505f3dc216cdcf4d8f659d3a72684bd0d9c3dbb29363f644ba30f24f54b3b31af984ca92a4b49d9b680907271b949907b61ef2f3d49208ff7ae34a0b8bdc40c955649f52e69cec64e60e880acf6b1863e5e4766a660d21beae30b98d4e68a6159caf920f55f01aa8840e3e6554cdaf2d4967c7efaf2888036f6de2e6d731b215c5a971bb427604baee0af58ddbbd3dedd8917bcf5cc3161730eb026c7e64eab736b6aed865036a53244be8d4eac585d76fdfd2f2e8c4f8d853bba3928fefce4b8c3977205450785acfcbade7e4caf34e161c0e5316c643b6a96714c9b353c755f229b5bcb1846028c994671caf2c38d34acd1c9751ae54724725a56de4f4aa9c53d539673a99041387d4c2208ca9f8533a61bf8cd625203590339a1839cdbc9c76494187b8b0919357cbca4b3d1815e5b176bb9febc9ad9169470f1955aac7f73f445857ce905f31771565d5b022d36c4f2b2f409660ac7df2fbb715746a0d9fd520e5251fda9e7a7c272121a624f5b05e40ac6666d63133caf34fa0ea9593d72628ee97b34714a231b97048c8ee6353aaf2cee98b12f445e7bae879376aa537a07f55d007b8c49692d44e6a4e1fa7b08f4f9a52712635dce172fa74257f42c91c10978eab19231a4a9fb278a0a2b4855fd0262153120e1d8df43dbb2b2271eff60609bf5955f1fb5fff6fdb4e2c1b59e4b6ab2a4f0f2b1e5d17177ef1c357757cf670634da384539a7432f1e0e6dcb87dac9c5306611104d66e4569b79cd4232bea10140cc8a9dd7cca78b9704ccc1de4505b4b725b4a335a69e935c4339db4dcab1ac18d6ae9333ae1a8a0b8b130b1939a35222e1912978c96d32eeaf897aa04a01734ec9b0db2691d6b545b36a8218f68a8ed7c020adce9c7724fec66659e6de0d1076b2a070dfab90fdf433bb3f153f0ac56a80a56045f9b5590d58aad4fe48f0c5b822cfbcbd75f6b55965fe96ced5488aae8a494fd9bd362b642bc6be0119b84c43631b1afa2b45344185652c754cc4925f7825a3221e6f433c983dcd21e56417d7102687b59deb49c7bb3a6fc7c39ab9b4e0057ed61e68d8a4a2e69d8534ac6b48a79d320b9ace35dd2b1af5473afeab9176ad9e33adab896de2b2b8162ab2ce1003de578b39871b5adb15fab7aa6bf0733cf42358d8e6aa3eb696ca70f215931fc6f96554d59b629fce4869563c49685777efecb01adee85ee9e0185fc859e0e715e72cade481921a1994f84c037a0a1754a88fd8a92894ad6b48e7751233cafe05fac1000c42101a55f50dc4049ad2b4ded64144fc985cf562b2fabc5035c4a5b6956172d7744587c51c9bc5927ba552fbe5ec37da69a77ad8a7d55c77a46cfbb50c302b23d92c21e69b18197cfc9386ee0955c6caebe6dea9c6ea87bf9f225cc3c8f5fbc81ccfef61ed0fe022b8c7cb0115dab629b6db62edeffd824579dafd10fcae4b7bbda46aa2a4acfc44873ce1ad9f906766ebf9a0a4160ac923ea9639fd772a794ec6905c7867542c6ece317eb4b520c94ec7e1ee3924679ab5677b3563b25e7b791f3dbc9d997549ceb55821b35825b7ad14d3d1fb002d36b55dc2bd5eccb75dc314d1960ed9616d633b3a1ccbadea9bfdbd776a7bb6bb4aaf2eed424363fbbbc30bf68238b5ac2559655c56aab58bfeaadd665cc6cb9d6d5d3afa81855abbf37dcffddb13ee8f72b0ad2eae8f94dbc02a8db8734d4a91ae674357b5ac3b8a0645f56f1aea94557d4e2eb55e583c2b27a527a3ba3f04aa5f276bdfeba4e7da34673bd523122a075510957d4fc3b8dcae7eb65cf1be4b71b6537f4e0b3fc6b35c2cbd5dca92ac6848e3aac2c05b2067a5697a4f4fb23ed3f9a1cf8d1c4e8f596e65b8383d882195296159d15bab4884e6c596579ca582d566c6eeed7df7fcd545e3e5553fdfdd1e157c6065f1ae8324939065671ab001a0112c4d64165c9741563525d0625d4b3d5e29b55f25bd515df69a91d97700ca41c139372bd46fb9aa9f3958e96573a9bef1a6a2f2a441d14421f8bf45293f65e8bf65e6be58b2daae71b14cfd48aae568baed408006bbfa2a85b94dfc5cf6f66650f96d35e1d6cfbe595c91f8c0c3ddfd539d5d68c9967f05dae90b5a00cf8967b2b10c56b1578b6057f7495aa75f1f1efde31a9d4e3d535f706fac0617f76fdf298ae42cf201939c52639a5a7bcb85f419aaca49ed7502138ded24b9ed797dfa9d7bed2de385d2e6a2d259a9865e332f1ab3d5dbf9818f9e948dfcd6acda484dbc72a1913d1ee36aa5fef6e78b5bbfea516ed0bcd9aeb7ae9452dff620d7f5c4b1dd1908714c5adacac5656dead66ed3f8df5bed46ebcdbde7ad9d070737800b3ac604547ddff51b07e2968ce12f6f9e783750dddca8a978606eef6987e7c7172b246dbc8a5d63388fd15f46e0969585532a5255fa961dcd4f36ed74bee3428ef19752fb7365c51c9fb5834d041011b1cf66e73c37375ba012eb587418238704d2bbe6350fda8cff883bec6efb455ddeba8be65a8b8a0e55fad158e692926715e3b37ab9d93d7c52b1a57702f68e4370cfa2b75fa097dcdbfbdfe2ada27b0388f0701ebb7370800bc2fb0a2c927028cadf373d8fcdcbdab573b94cadb7d7d17ebeb6eb6b75e31d6f5aba506565133b7a0959bd727274e6a4a9f6de0de3688ee18642f19d52fb7d4bc50af7b465b3e2ee1f57268a332fe79359450e51735e22111bd9f5b3226a15fd389c05b5f35e9bf6fd2bfdc51fdbd6efddd562d38ecb30dd2710da55f466c63673733727a84e449ad644a5bfe9d5ed358b5eed660ffc377de867e7adefc78e5ce03df5a6fc57d72e5060a082b382c8ab3e8e81bbab0d76afdf0adb7468c4d573bbb20144c5657f556487b2a048d6c520d251d92f56079d1a52ada73063e607da141fa62a3ea5e73e535ad141217e47d13abb4b134a793533222630d4be9bddc92365a6e3f977459c38394f56293f2a556f5cb9dba577b6abfd3a97bdea8b8d5289d50917ba179e5139a18b9d0b9dded6dbddeda087e7ab1bdf58d9ffc6879ee3138a919e2808d29d8bcdab26a5811ce15acb8e2a6025674b910bc353ffbc63fff74d4d838596f7871b0ff4aabe1a251d7212eab2dcb80643d584eba56cbb9d52078ae5e08d51284d7eb3a3154fe9372d6b894d6c1c83752732fe965d70dcaeb75f267ebe4bdbca2011e69ba827e45c3b956c9413556bdf805a3fcc5968adbcde5cfd60bc615a5fd5292495cdcc02c98d0ab6ef7775d6e6d82baead3dffe169b9b85227061c1bc7268009d278afbc1aacaea6005135702bfcd44503c2a406308f3e6e6662cb333d8a2f5df7ff293eb3dfd0395daab1dc69b3dc65e15474d4a84fe72405e74b586fd9c4178db007515ef928a7559cd9d56302764b45e36b1bd2c7b52c97ec9547ba7b512f4c5b6ca51316558408276e04205edbc827a45cb78b686fb6c2def7983f8f926e9f53afeb49ada2b26c1361bd489df78edc5ef5d39ffcab5abb3efbd8759a00b40072ee7ccb32b246df7d7f876628518fa47a90a61c57d161a0233aa0dd158b358b0f9f9476ffffefa40ff4453dd0ba35dc3b5b23a76ae8195d52b255eae615daea45fd6d0a7e414e89d40a137051de4150e0b4a9ea995bed2dbf0bc51f562b3f6e5f6aaf30ae694b46c885b3821817a8074be9c7c494d3bafa2c012aed7f1aed57247d0b946643d9370add7882d3cc260d4cfcc60f366b49b024c5ab45ad0ed1c703b612cc1a6ff366305dbbe340fc78a8e6ba09978c90d64212058ac0b1f7df4d3975ef897efdceaa99254d272a0d76a17e4413484026b5251d2cfcd9d9491c113fb98f963906d8494414ed14505fb850635b40957d5fc5b3ac96539f3a2943ec12f9e12964e0849d392d26979e9b89434262b9a52512ee998c392d216567e03bfe4272f5ec32c8f31cb1c3a2b6c099d7565055bf0e36cc8462b3ec6569b29c8ea60450471ac5f1a69f3569cec226a119058a1b7019fb52e606658cf991fddb9c2c93b5bcfcd6fe266f788f3c72b482312422f3b0b1cb09b9633c8248e714ac659c58365c4014ae15589e046b9e819291ff4b280314c21f690b2c69945632ce2202b6f445030292f1995140d4b8ba634d43105b55d48aa6417fcf6973fc42f7eb5e2f779c1edc20f5b8065c83cdcacaf0eb3d592d5c7ba42d6c614bf5508bc8471679b0fe30fe2ecccc3cfb0458bf9e377d884242d33d3c0c9ec911206657980754256382e2eea22678cd00b7b49b9edb9a9bd85793df9f95365d46778fccb6ce61495324e267564a6b6a427b464251833cf1af3cef5327320ce4e2a2943b2a25165590737dfc8252a18f9330f7e87764c582db6fb8d80e086822c7e7184f05b7a7e2bd8688308e06c6d2b32139f831c04f7567431eff222443498b67dcb3c0f4e34d7a957a81959b5ecf4364146b7206d4894332125f6d1330d3967f4c9b19571c72b0e1faa3c7aac2d31bd23310369525acbb9a4b6a494c633e79a1313eae2e374678e19b3e2c7786827e1a4923a24452710426965e41735a8d84b964f97b1797400180cb32ce3a31ef753e4ade898101806baea5cff56acb64d8f4022862bc7b157dc00142f5fd03386ee57831fe2b682cecee18dcd92e5fa642fa7e06c2d37ab9e99dcce4b1d92e65dd1522f56940dd0f32a620f549e3eda9c92d49692da959add959c033a41244f1753c68b8a87f2f307f273da32931a52e206a9f9372af9e8908cbcb44f486c65e534b3f3f4ecfcc1d64a6ce973c84ab3f373e804619b49680ce1810868e258bf0c5cab27ab14049e88cdf215f9ca0b78b60535d420c09a8042125bb2fcf8e5dbccfc782d3dad8e9962642777f2a196225fd57120c5b71725d5a7c7b56425f5130963a5d46785f2572aeb5eadaebbab503ec3e74e508a7b08e9dd85a9c3b49c097ed1a4b4785a4106ac266e9e9196d1ca2da8a613aef4b741be0288b0ddd145772bc63cd9fa6828e17efbc4c8559455c6fa3562f36bc08a0462ece23c60fdd79fbc22284ed330327494047d597c1b376b505a082112f2cf3027af8792d15d946122e68c52a95704d2e795ea17949a67a5924b3cf614bd64889c37c6cc9fe012c604840949d1b4a2744446eae2661b68e94d1c420da3e099810ebc0cb0c0d85f19fa08a52d50e15871a0dfe294f57f2136ac205f625d5ef8c37ffc42c92ad0b1b39445b19aa2e38d8ce44e4e66bf307f540a3569d184b0708441e82bcdef21150e904b0729e48192e2413269845a3cc92c9ee6169f17144f08888075544c189311e18b6dcc34032dd5c8c9ab6111ae0fe3581716a081b6fdf49fc18a5c76c5c25594bf1f5610dbbae14100222cc2faf0fdb7aa84a57a417e45f1a90ae2d1aae2380335b1839dd1cbcf1de4e70df3f3c779a4716ee908933cc2a60e3328a013ecb2296ed9348f72514481e10f4c4704843149c19094d0c5cb30d2930d8c140327bb869d777db80d5bf81c4a0efcae70e8149bffca14f4cbda6535e51bc08a222c7edb1608028fefbfad13943488893a5abcb624564d3c514b3edbc24ae9e4a677b2d34cacb4613e715a461d1352467894512e7407b40b52d60529635a4c9d1293a1c21d11158c48882372e2a08cd0ce4d6fa4253432016ba68e9d7da9df8859d0e956f8f56df819f74f98ae605cc18a67b35595bf2b56101b56bcf8b2628be6cf3ff84f35a710b01af8197a6682aae86455c9e9464662072fa38b97d6c5491f1410a6e4d449397d44441917532f29b95735822b6afe6515ef928a33594e1993928624c42139bacca58d976ea02734d0938cbc6cc03a65aa43de6a35e33d1ee47c806beb55718cf087b02eff4fc00a826385150197b53cfaf06d159b582f22b648f20cdc144df1296d516c6dd999767e46b724db24cc1e9010a11a9d5232c6e4b42b55a23b2ddae70cea6b35928b5afe8482315e4e1d2d270fcb4983e545bd1242333b4d4f39574b39d722ccab61e78c7454638b8f208843cc41378b5cb63145589180111055a19505fd1f80150502f40c78ad731fbfa7e516d7090b5aa5f98dbc74c0aa283856493ad5c24beb96e5f548f306cb49d33ad6988a3e544ebda297deedacbdd9a4b9a2975fae954d57f207e565a34ada988a3a5451d22d2634d253aa4bcfd652e2db45c45a4efe506b3586cd41108770831f6445c3df5655db04dfbcc014df75b9aaf274b1ae00fc9309f84309c46a367ffc5e25af442f207655141b79997a7a92aa28b68278a2baec9c919bda25ce1b5492272a59430ada7415ff925e72b54171a9b67c5a27b9502d1b53f1fb65b4c1725a8fb8c4242e6ae7136ac8095525e71a99e9dd727293a874b8b9065b7c0c411cb0428f87ce61461cf1788a63c45f3d95bb137f3358ada8b559c22c0b8b9fddafe49155b48ccef29256516e233b535b7cb63cff849a744a4f4f6c1566f7ca4afacbcbfae494510d7bba5a7cb95175ad517b5e5f3155251b55f3fbe5f41e29b99d4f6ce512eaa969ea82d3d5a5f16dbcfcfe726ab3a86cc858095821084053058ebab23310e528f87130044c8159f0d6938b08564ffe1e58f1355899809a153de2fe8a2d2e81b71a646c3929b15954d02cc8ee94101b98e9caa23859fe5105f1440d2db1994768e517f6c8cb0694ac2135a75fc919d18846759241157740c9e92da7b7f088f5d48c5a72aaa6e07445ee49e805601b0c55b05ac5d44629035b78802dcdcdce3f322fe27bd441503cb5618554053dec02e83f3c5674f52e7a81df6a60c18c3dfaa45e4a5794241b05f9ed92fc4e4951332faf9a9228cd3b26c83c505178aa9e91052d530bafc824a7764969f50c4223bbb0435cd6c42519b9c406464e65499232ff948a10a7c839a125c6b5f3f207cac98315f43621b98e4bb2de7f1333a37b645aa01e40305168c59f504805ac508e2ca0526095e5ef91b210471c2bb82a7e6ab915e29d79fe11363f833dbc3fd4a85697a5370bf2bbcbd129532659710b3f57433a0358855931e584d3cac2f8eab2f4265e418b805449c9d092d341c579a704d9c7c539c724d9472af28f690a63d584137a727c8f88d823291c5050bb64e4464efec3dfbc8e99ef5b1fbcb7bc300f2107e52cd8a43062a0d84258d14da3ad60a0cdd0d593bf1356db04b8ea02b492f0b034b7b0f0085b3663b39f0c3454c88ace75ca0a3b24f9fd8a920105a55b4e32b032200800567efa116eea615041c6317ed67176da61566a0c2d713ff9ec2e7ad2def28293eae238a8a8a026830e0d5aac412971405ed426cc6fe2e741fa32b0b2de7eed2666fe7479e6111880222caa53ad2b773247b7c57a0abb05bf29acd6c5398be533ccfcf0573fbc2720264a89a7bb64056dfcac6e69618fac08b002976a6a02045965e13935295194751cf8b2d362c04325f9a76405a7b46509f5dcf46661568b28b3999bdcc038574b3eddcc4c865eabbfbcb04b4e34f233a0e9823ef8428df067cf5d84aa63c16c01a6f3a825803216c70ab5015e71adbafc3db082e536ae08ab19dfd789ee1c3ef3d6cf7f9c7bfa80b8e0742d3d053cae5398d3272bec2b2feeab28ed9216ea19a9dad2737a5a1a44db46766e032ba78691d9c82734098990df4c156493b2c4a420764a739b382906fa3903351ebade1e71ae499cd32ccce892e5a9093143b2421d31be9e5582cdcd81af2e4231857beb4a77008580ad30f84bf2df75e4bf841505765c91c0c257d446e88b3791a2b809a908bfd611662c43e0449f843ffc2b68af0abeb7134536886b90392ce8f4a1e996c6e4bddb8a62f7d63153aa4b4eb630924cbcec3e21b15f5e0a7160404535b072b4c5f175948416760678b1494e365594f569988355dc011d6750c719abe6f52bcbfaca8b3bf9390d6589b525679a99a9d06bf59717748832da25e9b565719ac2b83a4adeec6ffe6de9d387f7dffe6079060c019e562b04dac5e595eb08a172b5990793001c377ee5d0219edc50cd00af51544603cfb66a5f2fffd758f1c5d9b07e456d8272ac0deb178a6e7b8ddf6266ce3c0b1699513f8e76b060e605ecc1c3018d8a78684f6d19514fcdae26c7690a0e35d313bbb9d9bd82825e31096a7b93ac142a27289beac8f11dbc2c938408a0c7aaf9930d926943f944836cb25e76b1513e5ec985bcdfc923182929fad2732dacf41e717eb724b79597d4214c05aceaa2b31d42c6c21b6f3e7cf377fdf5cd6fbcf203ecd12c363307253366868275115bb062e81c0674f51b5ea5a0a2010042acc20f76a1033378085e0dac36347f242b5e893636be6fdda6b089e1c7f19a09bd895784001f522db8244c596012bc7379c6320bd10d33cfcebef9c6905291b7334a9278bc9559a02f4d55171e531162eaa1e36465740b0b7a24248008dd67a7b8c4c8ccd593135b39999d42e2a09a36a9175d682abfd2aab9daa6bdd2acbadca498aa1600d60e6e7e53596a0334029ccc5e49419720a78d95d4ca8caf2f3b0d255703a5e0fe8f7e807df8512b8f2f8e3d35cde7fd7a7a1c7bfb4decc147d8ec2374d316cbfce2fce760eb826516d66fdebaf018e6a07106eb6cc36ad31528ff95cc9f933f83d5f67558ee8ae05be90956e4af0014ed11c299dab022b7863796d15bf0513008ddb11166c2c0b2a2db0c2ea2d066c6fef0763b8d52bc3d5216bb5716b74b4f38dbcaca6a6024c873f7d753135a39d9edbc5c288fa01e00aced4292919d0f0e5b4b4e86c6a9a7bc7458c39eaa135f6fafbcd95dfb4c9bf662836c4ccb81cdd0c9ce03ac0672422727ab5f56d82bccebe6a537959dad25c5d690cee98a327e7af93cf6d983cb953af5c1184978182fd85f7564ff559df2b7df7dc1f2d6bf637350ea3dc4e61e60d6b9655028a7972c9f3cfc0c77117cf883a2d543306c70feaafc15ac406a05eb931003bf64a36903baf2c368e3227cb62f82e2a5f612baee111486dbe3c7d87beff6904bca82832a63f6569fdad5901663a2a5b531d36a28a7a5b907a15b85a2aa8d9f0b61744845013549c9d005d4d1b26a4a539ad9791d62d46b0d69d9978c15373aabae36a9266b84d0a47609891dacdc666a5a2325d186b55f4c68a1c5b733936a8a4f5592cea80ad35e9b1ec31e7c7aabaa4e1abeb5263cdab865734568203b3288b77f5b5d7ad2f54ad57bdfbb8b7dfa1ef6f80136f3290605f512c4af2fae8c7fa278d083a715c05f2b5f170490737e295f62fd822652db2b88faf877e0c17688186d15d81890ab1e3dc6fef0ee45858a1a152ddbb2ad25e6b06e5b946c67404bd691616ef6a89c04de2ace3d50493e5bc74c6be5e500d94e51deb88ed1a7a0b50b4b8cec8246468e9199d32128e8929476cb28832af6984e30ace10e28683de2d24e41013ad44a4d6ba1a776a1d338088015bcd5483d5b557452577cba8210ffa30b23d887ef5f10c97551bb3ba2f7b4864618c343ca837c955bc3955b227961c1a5a101b2d823f79a0d9ffff427d8c7f7c1b56d8766bf648af46fc66a131bce3f45b9e2bfa0e09d681f26fe26bcc4370684fc9576e6d123eca3fbff343e519b90c00d0bd7456fa98d886a0c8fae8e08ebcb3835c6c8bcaaa27672321b5849fc9c7d4ad24928099a391946565a65c9b95e05b95f49038e6ddca2160e01b076890a7b65946e202ba6809a44e42e5171af846c12153633b21aa9a99dec1cc8783d7c42373fb7859608588d8cf84ae2717d49d2bbdfbd897dfac1059ea822784b47d4be469fa0d6c0406370803ec0b7ced7a72d2aaa362a421e16228c8a94ef3f70512cfbdd9d1717dff9031a6190197077b191c41f56107fbdfc05acb0802f83e99743fe8f99ae844ea468c85bd03997f045f820eea433fff6abaaf434eeb62dca2d9babc3c2ab7c03fab6ef3206845506064d93726ea979e715d44109a98997a12a8e95e4c5d431207de7825614c4764949c35ad6a8868dc0098b5bb9845e19eaf461d4f7c968a0bd522a50ee9795758b8a8db40cc00a4c6169ddbc7c08051dccf4869253752527aa0b8e36124fdfd5cbfe637af01a9ba50e8e6e09d9d21d16d9e6bbc9e8e5d1e2e3d1eee1d9eae165f0f131868656058754466d96456d531c39294d4ec7e6cc2bc7c19f30fddbb022a6b03814aabf600ab908361c082c13d59eb064980564577e0ade59447b4f909a1ffee29737ab6a73dc3dd5d15b7521a175418106ff80e680205344140c40a55fc01d89e8ae5e332e6775f28830f0cb09c7948527f465f1ed829c76415eab800005d6a88635a6650f2b6803c8494bbae564600a644794ec51156748c104a61004006b1b370fb44f523c202bed111501df0e7a721733b9bee8584dd6de8aa361d2ddfeb21d413d678e354484754545760505746ef26e7673e9f0f2e872f7ec70f1347979b77bfb3679f9d4fb0557074529a277966ddf837df200d60561453e8656174d01064406adf5d7c8d761b50d7f608a277d1b567c53814234c74bbc79c8f2e09de89c35a854a0849a7b6d6888bd779f7ceb766d5878cd26ff465fdfb64dfeed9bfc9a7c37b507077786456902837fac6f78aeba6a5a291a92339a58b935e404794e4c033d09824087301fc63e0456c03aae618fab59131af68082da5781980eab98e31ade84960f6407cb69e0c880b5834f80080b95d65039a55b58d8c6ce6e8778423d07da9077b427ffc4f715b4899cb313c9275bb744744584b4fbfb746ef2ec707731797874bb79f7b87a9b5c5c4dae6eedae9e2d1ebef55e81eae02df4cd3bb08f3ec1ccf83586f88084918860227ffaef6145827b233eda6d991d9683902ed96e208c3e81ee2c8b6150e2cd5be6d04ecbb9b9ffbc774f9796ca080f534547d68585350707357b7977fa6c326df2076df2f406b26d21c1e53ebe6ff50ebf317d7988cfec139475f00a6b4b9354f9c76b4ace363133a096ea10959ae4d4210d7342c79ec4ef2a3652c98697c014c2c264a5604a2704b8430a1413203840550bda272f850ead935fd8ccca842ed6c84ce89612d43947a587b7680e6d1b488fbb9895d8b16b6b7b44689b9faf69934f97bb7bb79ba7c9c5bbc7dda7cbd9a9dbd5a5d3d9adc5d5d3e0ba49bb299411b905bbffd11f63c561c23ae32ef5f5f267b1228704af7f124457987eb128abd5f69fee1617adf316f30c22fde69b376aebcaa2a315dbb7ab02030d2181cd7e3e2d9e6e5dbedebdbe9b7a7c7cfb7c032084b578fbb40706cadcdcfe97b616fbd9af6e576b87f8d42e76b1be340d124b1d25a59995ddc623b6098a3ba5d0bfd201eb849633a6668d5571872bd950b742a10a4ca7ab44007754c502ff05ac90cdba2524c0da238546b6b0959bd7cc496f16641b0484b16ae15bcf4c0d920beacf1c1dce4c6cddb3ab2522a22328a8c7dfbfc7ddcbe4ecdee9ec6172f530b938f682f3baba75b87935b978557a0732c22221df62d020ac22569ce693db44e162c30a491e5f203451b3f093d8c22c667ef42fd7ae54a7a4c876ecd44444e983425bfd2172f936bb3bb579b9b67bbb75f978757b7af7fbfac163b7b74f5f7050b5b7f7505cfcd273770649842106c9442f6e28cdd31526d794a642d2ef12969aa4b46e19bd4f491bd6322674dcf3b52268ff47abb8a395dc091d0f988202dc092d17b2560734bbb2e2210d1ddc19e26f97880473ba9514a3b8a8bd52f46fafdec3661ebd36d8cb3dbabf3b3fa36eef6e43647477f8e6be803018fe80b5cbd905775527c0dae3e1d6e5e9d5ecea5de9edcf088fc03efa0061453c110e7842a3140de3ff2656f816226b9bb2293cc042d1a64227352e60f39f2fbfffce6feedc92259c250405946fdfa20c0e6a080a82a8dfeae2daede6deeee2d4ecbca1ddd3b5c7c773c0db67d877539f3b0c37af01ff00e06e088be4f978379c8cb9c0a598a825464a51a7a0ac819ad7c12f3589cabac4741bd6410d734cc783ce6aa25e34a6178cd708c6abf8e0a7636a2ec4568809bdd00ec84afb546563351c08143de5941e6929740d1db232a38c31ddd381592c8fde7863b8525d43caaacf3cabdbb3a3213cba3f7247bf7f44979b77b7ab1b0035b96e34393bf4b83977bbbb42b46d75f3aaf2f1678685e1581fe33bba506259c10a2080cd7f0f2b5e883ea9a5606178550a590b72173a1b650106fee32a622e6fdf1ef1e62dea88704d807795b76b67a03fd42bc0aed5de61c0c3abd3c9b1cfc375d0db63d8c773d8dbbbdfddb3c7c5a3cfd3a73700cac6809e83bb5e9773ce3348b2b89386d2e25636a543483749582609031e7be48c7e15bd5fcb1cace48dd58a270d52203b512b04ac1055872b5803e50c680786d4ac013563b49a3d512f18d171a0d485680bdf1dd0482e3637befbf3ff8d3d9a7bfddab55631bb919d6b249cae3db8dd10163e10bebd775308d400ddeecebd1e007443aff3c63e1727938b337208d72758efbf0bab69db270b0a582114d8e8fc55f97fc36a4103009e67b1071fd276ed10868569c242eb83031a7cdcda3679b479b875b8bac2c8ea75f56cdbe0d0ebeadae7eed2efe13ae0e9063ae8e90964c167078382db83fc478e1d3c9f9f22debbe59f4786fee9e279239735a0559ae4a2fe0af190523aac160f6a387d4afa80963f69904f364826f5c2896ac1e4136f1d56b24107940c6867a7eb25978ce5937ad17025a7bf82d929619e37d4ffc7f75ec7e6963efcd5bff757eb1af91488bc267272d3915d8d61c10361d17dbe81260f2f1c2b4455fb0137e77e57e75e67e71e1c6bb5af1f332ce4bf6005a6a068e8e215c1d7cb9fc10a5f0272a02b2f70b8a86005a25075a1da600e9b7d20dabd531719511deadf18eadfeee7dde3e30d4cbba0527171858005f6753a39a3edef0ad3301326dcfa3cbdfaa136f0f56b090b33ecda39949d31c6a061bfff3df6e927af5dbd3adcd0d8a7d68dea6a86cb1513aa8a7e1917822ce49cf346f90583f4a2417cb14e8ceee2aae34f57ad1403933ae1549564aa5676d9a81d50f13b25f45e056f48a7f8cf1ffe04b32c7df2d6db23cdcd1d2a59bf5ad4c72f1e246736c5ec348405f6858641aceff5f0063b614821dbdcc166a72137f71e1728063cea834338d111d82780f5111e4a6d0c70a688304ee66be52f792baa529fbc00a62b5841cc0be8f25bc00a0dbe2124a2253aacd6c7154a6ba857403bdddc3a9d5d3a9cd068ea71f740c1cb0dea187748b268c2d3b3cfc7a7db3fd0181adeb87baff154dc08837ea7b363f1dd77507df6b39f3f3f3a315a533f595d33ac28370999101006d4b83336caae36caaf186417f4e2c91ae4b6107347b4bc0bb5d24b75f24b758aab06d5d57ae5b08273a351fbe8173fc63e7f34f3bb77ee5dbed8ac94766ba5834a7e379dd04f48693fb2a7313ca02738a8d7d7a7dfcbb7dfc3076aac4e378f4e885d5e5e7d6e1ebd6e5e1d3e7e5abf00667438f611c20aa31f0d5760fa24d7e0bdd05f913f8f157d11149681a304a8b621004b5f44272d59b04f3f566ddedd12bcb92338acc9dbdbe8e2d2e2ecd4e6ead2eae2dce6ec0c6edbeee2020ace6b9b80b740dbc16dbd3c4d7e019d2191c6a8ed75fb638648c59579395daaf2c7effe7ef9f1e7d8a347ffebce0bcff6765d32d60d2845e080e335a2f30dd22b46e5b566f5d5163578ee78bd78a44e38582718ace50eead8978cf21bcdcaebf5b267ab857599a7aa128ffce6c290e5d7fffac2605fa752d6a396f4aa78edecc26e4ace2021b9e9c036c0da151ad48d977dbddebe5d1e3e2dee9ecdee505779f47af9b7bafa34786caa0c8928090ec63efe10dd7b04afd211d3bf152bfe55a4385334e32b5871d656ece143d9d63d7521dbea02c3f4fe81b57e7e55be5eb5febe353e5ea0f59b7cab3d3d6abc3ceb7c7d6abdbd90fa7a83566ff2d6076c6a0809aef60fd66fd9a9d8be5b9f94d24ca355b3e99dfaea976fdf78f087b7d13554330ffee9b9678c42469782db514e9f34282eb5545f6dd75fead44fb5558e34a9068de5834d32d08b26cdc556c5f536d5b346f97375527dc609f2661f6dd2b1675bebfa34155d6ab149233255703a44943e4e516f7186726f54d5d670e396a8c6b0d0868080ba80801aff802a3f7fad8f5f8d5f508db77f5d40486570b83422ba2822124213baf788ad55055dc10a0cfe16ac4f360e3e85f6e440b4458b8449983333cbd8b99f17b6451019258c8a644784b1a34305dba3d89121f4d0005658102324801311020ad3ccd040564430bcc58c0c6645a1b025ddb95b76e060616424f7f429554951ad4ca89509abd48adeb6e6976e5e7bf887df8eb63766c51e6cd588dab5c29e1ac5a59eb6cbfd1da0e7fb5ac6bb1bc74cf5e3dd75133df537c63bae0f35b52b99bab2cc2135a79d4baccc3ddbc92b1daaae6855cbbaf59ae64a6995885a2fa5b749999a82d492dd518c9dd1bc9d5b785ba29811a18ca8305a6438282b3282131929de1c2ddcbc85bb751b293a9ab87f1ff6e8336cc1b212fb6c64d124befa7f4dfe621080606a7359fc055a10be787490075dc93a3b837d3e8b7d781ffbf003ecfd77b0fbefa32a0f46cd07ef61efbf8b1e41ef7f80d436fde1fbf84b78c4151a984f3ec23efb147b701f9d8461b52ccc3e42b1059d7d864e79c396cc98f9336cf663fc04d54798750e3e83feb9ee2234ca33e87a4b2b3e7ffe53743ad0dc7d6ce6436cf603ecf1fbd8ec7decf3f731f3e7505963730fd1c4327c1e5ec2c73ec33ebd8f7dfa1176ff43a46012d80036837e022fff80c15881ec0f9ff9ec63ecd1030cdd8a7011a5fdaf2ac28c1a84af973f8fd596a0a0ee87818fb0da763be2f3e11966a281000364ee313a5cb1f0184dcf9bc185d1d1b73933366f41fa78169b9dff2385cf209dc7ef9734bb886e4161c5ffeb1b1a68e868a8d98297768b4bf00154d9a073fdb0c579742beb25f46f77d05d80d0ce1ff43fe091a22104c5b4192fdaf18d81fa95196c1e3a4098893e89be0b1f80a559e077f1cb181fcf60b360276caa05b409172d4bb00196e6604b581f7d0c5b621936c9caff9fc6e50ba648c1d4bf012bb0fb53acb6e3bd30736e11160d9bd202c62e60e8102bfa806d7c8087db8e56c0e7406df104266c33d10322318f9f2e60fb87969006d1e119780bef0bd10e0774740efd2de23f64aba341610eb203fd16fa00feef8df07d14e847d009d7f34b68df10720a64ccb2ed1271c80d2874d94c870974bb71640faca605bf4a0fb29075c96c5e9a5bc416e617e1111608eb041fc505be687b46fb076035fe1a560cfb3fb9fcf681e4ed867c0000000049454e44ae426082, 'VICTOR', '16028', 'image/png');
INSERT INTO `fotos` (`num_ident`, `imagen`, `nombre`, `tamano`, `formato`) VALUES
(48438344, 0x89504e470d0a1a0a0000000d49484452000000e6000000b908030000000b6cb3ab0000000467414d410000b18f0bfc6105000000017352474200aece1ce9000000e4504c5445000000222325503729c29d824c5052dbdcd748545a525d61b173493e3b3a0d0f0ce4e5e25f331d2b2e39e0e2de121310854a2969371fa15f357b3f24723a1e995a32b7794deeefeb9354328a512fa96639b37040dcdedbf9faf5f2f3ed37251b06080945291be8e9e51f1a156f4129985329a2623af6f7f186431e924b242d1e16592b17ebece7975c3bbd804d7d4629ac6c42d5d7d5502b1abe84596e331652362585563ca05835b4b8b7ffffff20212a9e67441a15117a4f35ccd1d1040e36cccdc9ffdc1b4e210f3a2b2dffc91755473b7f6e5ee3a018ffdd22fcca23b26f24b0968575a8a5650000000a74524e5300e6e9fb67ed4117feae844f449d000020004944415478daed7d097be258966c39131b3032484808897d11182476b319901730d84efffffff322ce1564564f4d4f4fbfee1ea8af9418032681509c1327ced5d5e5b7dffedafedafedafedafedafedafedace748bc77f8bc56ee2fcfd67de92b158f22a19bb8925e37f56a4f19bd855ed36737b5bcbac32cdddaa994c26e37fba688ddd356b3580cc70bbcdd400f7b676f5a7021a4fae761960cc10a6008de0363308e13f0bca58a6568be0119960bd154e33f84b2df927a152402960b86e0aa3119d049ab9f93388eb0a9a437ca760553f8a4e2174954c5e3ad264ed36da32a72d22f694a208e966f2c251d6228c8a39b97da234022d0f5e5d30a1c9cd292d15aadbbfe112a91aa1bee0148d49a5bc3dc16c2a6d3d3148418aa003e7d585d6d058a6f64b5eded6226491fcd44473d503b50bc679d3ac9d588bd455e1cd6c32b71b1412c11a5df36f1789f3e6c865b3794b216a320b37512da1db5319494a6b5125adad2ecc12a1d75ad58ef94794206d2319bac9fc4a6c74435c126f5e1acedf9247de9875223592871ba2dddc2af1d944ac666a2a6f3317979f91c89e08c365b3b955f5434ae8a98ed64e8e5e00372f0967fc9898474e6b994df318b2a72a2af6b616618fb6da05856decf6f71e0f3c6e9a9b4864e5fe09f1a9da44506b97e3fbe299d3a7bea5bade364f7e9699b989c824ea93f73bfe87ccc57466f1d54f3201a1d954fa4368a0b4e9fbcde6669339c6aa94999f50f9eb326c5ff2c8a584244012e766037040ec57abd57abdeae337f0469294f9d5205d88dc4615f39497e40d14029cda66f8876b5ed5416c73f34bd0aafa730932143f56915b299312b67ed56f56eb332f1c7ab2699a67e047d334505b6d6e4e4e2192a10b08db58ed77863d23c9092ebdd0edf71dd7c1551f3fa1ebba21c16a08614474e6f6970a74012a948c1a8ea3070093d5891602da68dd6f2b90d8da6b5e87ee103027f5e666f3bbb0cd9c7bd8c65647982a10377ebdae0ddd79bfbf5eaffb5927e7b824b32d90b1cd756f369920a8d58e391ae1d579876dfcaa96b9fd3930b241b84e0c73a81326fef5b3392797ebf773c4bc563087a6a7cd80732395256a47cf3c6c93b59fa58435b25ad70cc3d47567adb67e3b9bcbf617b8b4159d73bd33f42c4babfa1b6ec74a54bbba88913c81092e27406999a6deef27ecf57a345a2fdaed76369b5db4d70b095a176c5a788e314141dd1ced6d2673deb533593b69ec06b532d00426d8446adaa37562b4169459e4a668d1dc1d9aa66511a936a9fb50e56818f0bc615efd4c4b06ac1610e650d7f5feda5edb36d944722268fbaee3cc9db9ab9b8009a0561068932a9259896d6d75ce308f0d180b49b3aee1a31bd3e9703874dd7e949b50598a100aa8ebce5d57d7c926a1a284c229a0398b5ee19ca5f626ea20690aaa13a0d4a6a00a414b5bb0eecf710da95d38ac2b40489565cc7acc4fcd80d5a54f50e979ce9533a6c60c58ec7d816930ef4016189d13643fc76d91cb395d44b2ab03a2651996273003c2dc2863717bce15e5ea544f36cd6a806d4ab2a02f400a46b9b58031d76d11a56e22624d031b9f1368411d309bd1d06decfc61924fb0390910b3c03845e442861c2464ce6981cb56abd5c5c6bc547b811505995c67af167984736633aa27b71bc20cb6d45985b2a3bb2df8811c3313414b46178cdb8e6e1266a0599e11089b1b350276d63628168d443685cded11274b8a935db747ac99289c0b5ef1764bb9031089a73168d55003e93cfba0cdc800177273b2d55839919fba93cb8e4689c4a85068b70b85c2a83092ad9d75ba0e74480b649b704441b2f3bc0732afa2c3ed1b317a13f9ec86d569e572ed5162f030b0ed4471342adab68d3b0f0f76624456e1118c60225b55a13cf30121c5a68cfbf8f5ed24005018f7167cec7a94b0074006a403fcd80fdcec07b83f5453d7b4a604ca6193e320f5cdb94b10616efcedb6be45e1b4501ddb6bbaf6844da082d116c40f786c3e0fc399379bcd269aa5116644e779772849392a44362701d99cb258785e1886fb70de7718af479c76a2edf4f7b3dd6ed55c71440c7da946983eddfb79d7131908a2d1db54837a7d0b0f34abd6abab6673b5020ccf339c42a1682712809928b843dd9bf9cdcca6bef7bcfaaed9ac1b81829939f37aa20a0a74b6599fa03fb1ac3a8765abb86a36ab9a676ad316605281ec82c35282389d7939db5ef73dcddf4c8c497d87bd72f630e5d82d472c414b60e19303dc7cbd6e3bbab8844ea7931bd94267dbedb0cfd473d9c228f160f7f58ee157b5196082e0b39f7071758459ad0701501aa6337a7828644789b53925d06edb4ee472a3754eb74c97ea04af8067245cbadac90cbb6775f6641e9393c379d0a0ba660257e2fb03dc0ec4768eb281ea9273412a6c9ea53b2ddd45df9273d6f3a1dbb5a6968620de81cdccd98fbbc72437ab8439311096dd5c0ecd73270cbdf91cdd08f8b42cd22a116b8588682ff4d6734b3d02985588d1b98f78a911cc2661a26482bd8e39b5fa7df49af3f9fae0c1bd022361066c44cdd09bcceef619caf05403f5c321e96c5ec0d1a278f356c62d51eecd8ed5990653adbebfdbdcede75523f43c6d6a4c3b9d2e1e37a6e6dcf20ecbfd5d6dbff2f74de4b2650dbda0be5b5d00cc1827c100662051a86de1c66babd5ea70582ef73ebbca69a7bb6801a766988676f8fefd50c3f6f5b5aaf9d8314333a857ab99dbb39f8210bfe36193dd2460121a41b59639ec8123f3657f8500a2691650a2ab0646c3334c77bede4f66b07b461d7f852e313b9b67afb4f1df62995b15b31c16a837fdad06cbba0de79e1678a106325b84d9029dc17c3d9caffbd9f5fa30d75b08ef2160c2095557b55a32767575be6a1b9b4c76b54c55c144fd0f10bb7affb0ce71580f662f406292cb56b78b9d00eb30445941511df5750813ca0c3acf49ddaf6daa5bc30cced522c4bf4143fd8c5fe728103ef4109a3a749d75df71437d6818ec3d21401c08ea906ccd98bbae8bbfd2f89966876c6a41953ed183289f6be4de6cb781a16d0193b9c9a13b8b055187dd71758f764fc144d8824dfc696ab872b0b39f739d96a3774c73cae434744f773ceddbd9c2d43c6ba855d1696a1c84d65d87085d77de773984678939e8725c0fbc01241e81abcd1546eb42219b034c0b295baf7aba5ec88dbae7ca666cea385373480bc4d1bca1ce4399391e3501ca8e2ef60705254a4dda213821b395938347ed9ccb672039c1e620db699f2dcc1baba5b74c4335d4c0e9e672390e5ab67444709720486847525306a14d4bef76cc4ecb41c87220de9c1a8419d8df739d45ee5ca5f606500af6a43ed90a4c9da3ec88490068e5722d4083079a0a4cf803009aa2b0b8ad960e13cfcdd1790050603e643b59e76c95d675a78b07cf8771839783c63aad6c219be5507bbbdd770d1e3a3211b3ad05f9d482c04447d65ae488320798885a1ee7ac7a0f0fed4ebb7fae4e28de77a7b941bf2a0585074dfa4089cf8fe41b8dfa211e9c8ad016f08f7e6f1b3876a28dc8c65316dc1dba4792abe1e0bbad67e7e73be4d5d1b3ad39254843bbc1d4244b8b020d406828948b22b642017e0f96d742d73d5a20a4731c8897a8059bc68fc183bb386317b468e73a81b0690e79088c001605db1ecdcd10bd09985ca0cde66874b1db353b8131ec8eecc4025adc660eeb6849c1a6b658d8fdf9f9baf7985be874a68469882970b2d945b690b013fd0ee2b1db6e17b2dde2770eb87fb7e98574f8d856e261945d804e1414c28404598b567b74c6ee3d3e6f4162ebd58966d004814b8e680d06235d9f7b666e8468ed760b32b40715ca2e5ae670eeb61309520927447f60046033dbcdb5cf799c64ae4f75bd2e4d35250819371a0c1eecb63b9f7b562beb98dab4bb60762e3a08cf616be8715ac2682dd3a2d4e13178772da7ebd9738699ec06ae4e362377901d151f1e0689421f30e1c7ebb74d3f004ec4abe918b7bee1719e1b60f659618f30ab5ebb63e9e70c33ecc0b307803985b98329c8f240989d101cc3a0ee6fa726c70fd08f38bab545b7a5cfe7fdf6a8dd064c995682be1ab9a907d3ee398fd4c63adbad05ef1ec81436b882422281101daddbcea2efc0db39ce0295450b5dd3834d82ef95498bf00e102c05932e28083ae1590fbb77ad60ca8a62f0407cd7c9b60bed4261d45ea3f7ca2e160bc79ccf9d79e8a1c5f638f403a1eaf7b31c968fe60871a8b60a4bdf3eef61f7986e49e1e4e8013e38ab3e7cdea2dd779092ba51e76470c3d338d9bdae714fb8e836db6d97134b38134a60e2f7b94f1c4e5a5d4d0a276c1050e4da39a7efb6470e3a14c3f7eb9cc467589c013ea9fa556d289333fb7d5d8d1fd01c04d56aa7f3eddc67f5c70cc254a3d19c93c87074d60ec2b1ee4f2cce8092196d085d725b470af747901f3069780aa65fb7acf39fd49fec185568904cf032659293bb762ca86c60cefb7208d73ed860d099a3c810fa7c2dd34d65788133f7569a659cff291ab1a9c5e3619cf9443a879ee93896f086da11cd750750fb30623135ea55cd59cf75a2340873e637cde9059c5874a375eb9ce1c5811e6ba87bd6d0d57c7f629830ef863133cd398a4a5f056e687adeacaaf5fbc7c95e50a0a6ef7dbb84f36d6256d59f4cd04173c6f0d03274afeab38e5ada6eb7dbeed05b9b9ceb14ec4c8333f6bc593dec0f4f30abb75717b2c84e3c59254c7e6cd3332cd7437d8122cd2690d22fdbfefa3a38872ffb300fb613ce63f3661e6012237e26fe059df2b7e2308931850c798631f76633bf1eecfce9f7e5f7c6cb4b2ab55ca652e397e5c357b8dba2c6d4bdbe17a1d4aa1bff621640885f551599a88f96d19f4f667ed5bfdd165e4a2f6afb5e2a2d97cbefa597afa6efcfeada3c82a981cc0b3aef38d90c7ec274430d4233f143fbe121617f7d07d8d2cbf707c709d7f6a18eb64b9b850c5a9e4885bd71f5dbe5c0dcf0fc13981d564fcfd3c2b9a59932fc6c9a8b112778a11383fe6cb7a66684e14c1bb262ceea55c0bca0555862b56a206c72a2ec3074e7ae077dc5e698b0b60bfe888f37ad49e085f370c6e3f59c46526dde5ed2c9d51b9f4d0a2982b775437d4e1b6700e5c2b617f6425dd301a2bcbae858b04b789c9a73bc2e6809967875a3ceb541d82268bdf97c484d32c1e572a9407effee98e2d5e1735d39c39113c29a9b0b4a4d9eded8f427d53a3f3d27278673dd8a60dadf81f1c15e7cb7c12de7f3a3b1961339273c63b5797b510b24c57c9e828bb222383dcf754d3959cc614e8a7d57b909e474f033812973a32f6a198bf8d5469d9f4a3b84b212baa169f1340de2b4e5b260cc86e6309cd3d66a01e70c572f6db5ab24cf84e369e39399e094562bb484bfe3b66776867ae8d5eb1c344000f8b717b6f64a4c9dfa5fe5f1795444cd1b82392033cd9ddac2109d8a190e874378f70967465701f3d2960c8aaf7c99480b98c0e057bd2147b84207d0763b9496854394a6e90165732223403c23f7d216d2895ff9b20c80d0396bfa33c30ac1a723380da74f908e17a2ebd6aa3c37902343fe655593c8bdfbbebfe1c4da89c649d2758dc7514290e805e8ac398c0932e18e667eb3ceb316fc4bab26b27d6379d8a8b0a5bfa9a3407a9e1986e60c051439ea999ea7bb46bdde6c4ef8946633e35fdeba9fdf269094e6265395b34baa327439437d3466e61ed969ed66c64c860eb8c0859acadfac5fde5a7bc960b2f3e5c40462900557ea8066ccb4dd4e9bec2044b3605747b5f4d5b47f3fd3d482cb5b9aeddb565633e014e22ae7be0b526d36dbedeac66c878cdc4d76485c86368d04ae356b727930935b39593ac25095a309a0b3beabcec2d9cc0348bf5e553d0981369b9a694c2e924d190df019944d5f85661d9df3ae3ed366b8aaee76d29308e3cd2a0cd27476816c066cc3c4db903285772604ceb8814ce42e3142618192c7fcbe5d269b4674da17f3cf6f2a3e95050499be9ca3c015db36cd3a9caee75d244c19f4d2d4697c5cd0805055e82ab03bf2a896beaa5b1ecbe885b22927862b9cbe62add95cf92a4f7933faa9ce601b4c4e2bfe7671287fbbe231314f0dd811289755c9803be06c8abe527bfc556655d50cb42f30b78079716cc6bf094c4f86ec26909cba9ce3b6c9f0b46b5fd1c80db2ab1972e0ccb2a69709534e2c014e98bc998cc2fa5c59f0565628138c74801ac91ca2e7f62e5169e372207738d4d136834f194298cd64b8875544461666f2183a6e3ecbc4d32e1426789299134c504e37f03c431489cbec8144ae44878787ba3a586d68972741379c1a64311c01c253747a5ee8ba21b5462db7e7097c4f269130892f50696313b520d290272ee8429be685e8ac5d673ed7e761182a989a3194194172eff28236c6b269924b6e434fc8f4dcf9dc9dbb3cc548a64079d41f3e83197c9130d1a0189e49088e03988682390499fd799f73d724687121dd92c0d605d64d299ba6ac6ee5387d976a8b222ae4f6ddb62caf87bbcc525d2678e952792eae4389c9fc27a27278ca0d82d65020812827cbce0d390e4d36f9a03b94a8bdb47e33c9f9d1ac9a0c529e2f049cf0e64306b0ebe6faba00e602a75ce74b665f226a2fa8df8caf93c95892a396d45990d9cf6579a69b2c4c0648fd3ee875294484463205ba44ad31b99491bdd8e78f5acdaf73ce9e61463079fa940b14b40a2249820bba04949eaeeebab47bd6f6426026dfdf7ed4d40105c33ac23ce294bb114a4166528af1377988e63d98c592b19b38bf4fed4cc3179feb26f9bc7a7f7bbfad4f826022e58454c9a2737d4ef11eba6a6d36dce67a824066824cf557fe191505eebe76eb5f5dd57e0cce1267ecfa70f5bc5a3dff787bdf724dc84091c90512b96817e7b1335e65953db9e63dc8adcef389b2fde8845c83037f3c73bef9fe3638438ccb54eaeef96e7507986fd3ad26332b0833a76647f3ec2fa136c773c6b23c1b2c5a38117ac49337c1a72ee69d2b686f6ab500c19f3cb3685d8eafafc76380bc5b3deb6f6f3fb69c65287369e5449476a1d096338680097746f85728acdb599e96aacb1372d97e747206fb97c96453ebbcbd79e7b42e497cb97cb97e792a8df38767c05cedde10b530341eed2c61f689b30dba749ee788db455995ad5858133a154ad6a213981ecf51857a556b88fd6fcfe7b3b072ecfafa1a38c7a552f9ab76870d1ff0ad63f090ad940fa99ab2f02ea903ce5c9bf7b90a5d5b057236abf6027d91acb83709341fa9f9be5aad6ae7f0158071601c2f970a65ea7eb922cc67fdf5ed87a50f23948e3a63b19d152062fc909d04ce33c6759e7c8d5bcc55da3dda5aaa973f456a3e5f21d5afbee2ffd7c1fa747f0d905fcb97f153239d6e940fa4738592f2e60ec58d2b6595b3c3c117901036f9149c308043a66641f68128adcc86827af90809ef79856caf7d3dc6feef4427967eba5e5e5f3fbdbc00e8f2fa29d548371e9712b5cfb9d7d71fe6b180506154589230f106048e8c154d42cc16a2bfb14991911200dd4acc02e5eaf9eb697c1dffbf115604e9d30b481c3f2d09739c1e9752e9462545adbd5b55df5edf5aaeb23a8ed48bb6aa29e2767212c76456f82699ea4f0273e871cefb760ab9461106ccd5728cf7b8fe4f9ba2f8b2574e211db15d3f012d8336557a1aa77abdc6a3122164e7ebbb4924425d4ead882db593f71554474c2dcb2aebc91136a3d633cd49ebed4d7f96d7ba7bc2be5c2e538d97e57f12e85289cef8e9a5547a794a336ac7e9f4789c06cc7249d179f7fefaf983a7552be22439b3c299f24047c3276ee1284072229cacca6bea88d9b7fd8aaf553bdc3f510098192fffb9e08d4370962f4fd8c6a0725c1a3ff10a419b4ee77bf9c783a220049d8e5a3d99855f6c8e6c114cda3db9c243621d726ed48bc938a081987d9757820255c6c80b7559fec780c66a8714108e617ad229fc944a6938036c84d92b978482d5f3fbebc70f9db02270f2abad6c5e36225885725619bf9c1b0d08716c61db7d7d9d0bccd5ddb281a07d62d010276af4bf1968fc26964cdecdfc6fd78455023ea424608e9f88167436b01db373f6f9fad972050683b2ad2e024ac2b7c0931d4f1cf77351072a6b66bbeef6fdf54dc2ffaeb62fe30d2003e3a7eb979723d07f9b1c01e2ae2e5329adedb207984f0293f80099b7701f402be5bbcc49853a707174af0057507085bfc269cb45d621ca56254a6e569bbebe0ea2985d96c784c9bdf9f2a48a57239d47b6c6ff0d66277927473b6421ebed17618e159b2564a52064d4a652a95e543bef54d8c2a6737561395395a593e7cdcb52c36a41e5acdc2964a3ee4c1520a7edff787d0da39845b8945e5e98ff63704a9820f5290d87f92f360df1e4b79926e74ec8846e637bc88f239cac23250ad0b8814f93ea01664f592114824f9804bd489800a2d85395255b38e66896a14b9685562940b9dcdaf4df8e31fb7c40cc8e9f9e94d641f944e45f90abd78d7fa91ac593332eb061a94d0ccaa10768929cc097024eb9095af3e9146ae778b53aa6274c0217e51815c89a846f5ba15da81aa330b7052643d76d0179c1efc014ab98cd2c1f4f3049a7e0a41e1169fc5f999193295731eaa88d5083792f4d8185e6406a1b29de4e0b583ccee2790cdbdcebc77ba75de432d88851fc223ea9208a546944db2245ca23b07b29d866f3fdf575af0ad3fe3e951e47c50b1af414d1898a86daf2f52fe231b9dbd5a31561005496f8c1369d371aa992521cb0491ad325de4a0176a3775f29abcfb87a1e10e76890407fd99675bf01689153b573216546c9116f8154de1dd96b1f02f4be3a9189886101035822054e242ae87c5a360eff82ef0cbe81b2ce640d6f4b00caa245fcd5ed84a51efa913461969e526013c9298053bd522a95af3caae2c9560538ad846d27d047171368a495e3e14ba9ca599095cf73519212a5adf9f85fc7a289868064326805a624e83545f7e929b56ceefe3fbfed3aae40065c7eb42318bb114aae76382e3752dc00936ca64af807d063c0ef0129d436b33acad0e78f8e3db08b805964f8168435405d3076db233e96cd09d7003c4ad86eb303328f0ee8b194227554f327184b22e53805b517b721ff771cedfca7adceae1e04fcbe162eb2ca98555bf47bba7cec351abcf4d22823e91e403710b7a53424385f4a572ad138c2ddf3ee93265e70166d2ee7ce0b6e53978afc5db4ed02b82c261209126bf7b7dbb7d78ffd91cc4a3a2d6eb214b15952cc2a7f92dfd7e590fefe9fe3349eacf26b4c34a28c96dd3a46ed11267c9d6c6996953c1429454253802932542edf4538672c2bd3c420c1c5ceb9483f57afb7d5dad15c1ba9680f10c7232e983de25898867efa44e6e13125f643017ba1bc336ad9f451f1ca87803e1fbaa8fd1340e3a43220502eb04a989d5f71e604661e3ebd97cf37b85b7ba2baf8475e516c1ab0f0bfc3f96e8dec6282abf313de83fd3090d5dd8bb254ffa0d8267aa46f7bd4b6fce9c7db89cc5299254b9883e97a521673fc82161e19934e95bfa65dbddbd1298cff6ba037b23003bf7c472d684d94115680d4bbad6ce7fb630574e689156f0e36918f8d126196c6b8341af9de6343d577e2fc787d9fb681b3c88b7c05c140be8740c104a95cb384d526abfb70b3279ff7552e5167699af1368db4744272131b603e2ea791307295b7d9b7ffcde8587cc5af51522895fe084e1d3f5daecf09363bcbc74a259f57302142f725e264dc228891a4405ac9c3f4ad4ef9f9c9fa59b455903e3c10e3e041801f6397cad4ea04fe8f8f8ff7c85eeccbf954291da52584bcd1483f51d5154c105a7ef1bab2d659abab773aa6413dfa8751faf560aa719938e152d6fd8b08551294cb769765c0249b951ee3b4427bd0437941dc026c1afadb435989644870a27e2e88877a2b74226e23d8c582d88545aee51acdd6eb497f56e947b88f14937fcc46a8879464a790625650fe7af78d7967a1608a75318cd9eeee1f8addf855932805a4a58c0f5e42979f962cb1d65a14ba08da4aaf57a954eef329720a13dfe8e1921621a23162ab12995bd61544e27b97380b54d7817c8f86402697402929dfedc0e5bdbeae4fc50426249d6627c49dd7a88c9fa0e5299100142e644da57c98b68e61cba5502de8eeee1f09dd6473cb6f7fd220b10aa58a5911a02e97925b2cb2c5286809b357aa347a15a4652a8fb81db384f2f284bd7d5f7efc05e7c7c75bab5b14cf538cc257b804ce4256d61eeeba1ce73a25e6a17c8f7c673ac0507237e619264c8c06ac56af417178fc923543a9186483ab8069b3faddff18b9b1e664aa55ab41b49cbe929da3cccaf7eed0b8fc0213119bea55d2e0319f06a1a986486e837e087c0267949fcf838f57e22477052998c26b91029495f506bb5d63fa764accd5ddfd63be02988c538264f14a633f36c6025352863073fc9f5c5d53c59dc548fc9f08bd69fa40598f407604a12cd9c858a5eb5e883debbc94ef01f39e303900944707d6c8435ff1f6ac9d905ee06de42b3ff9bc7b460bf9f923c249a80a6c743f0b4acce93b24f94e2566eda55c4941b54ba927faab0651a54b79ee44e0ed11263e01a55670ea8a9288d0a07ef7777126fdc9845fd66128f11174bce05f810b59e2a7608f0add97c77b6224cc712f95ef3162ef7149f30241ba1f97708db02dc30e293e57cf59f089feb34888851fc5287c8556c0ccea1d047684928959a9a461354a4ad07a08944a0a8d1e4a1624a091977a562997c216b2488456c59cde91c58a83eadf09dcd866ab55354bab1b501c97280b0b042a7eb2dcfbec8db3fc58b9f14f98a82190db0a004224520dd496fb52498145cafe82137dd907f90444fc3b71297462fff581f2f5f3ee949850b7341b3ba4234496ad02605660f01025a5147102e6fde3a18b085bc8379229e72d816b04dbbf8333e9cbf4c1c964a60d119e8e5370f428528bf2c1da34a2a3e23a0d987981c93272df138c0db9a45202338d0bb0c3dd567ef2d9279fdd283da13e839f2817dd5fb8ccdc951f111c881404ff98158aae39dfa0abcc736c9f30451b1ebf3ad2f2e4b8fa6d87b5a0d5e17a84a8fbd59bff36338360a6e66bcf3c37eccfd7736faeba253a6de917a99105bb521636d159c2b0a70953c29554a6d2114c5cc3ed326e97273e5de25cd0e5417b060253256abb8b9273e472b52a417e5090411d086d904dd099c7fd469a2981d0a533c127785c760a924e2c47ba5a905a4aa8063e6ffedb2976139e313a9b85e17ebf0fd7ebfd5c4275141180a611d6b398b51f2398f7e514fa12c8ed3dea07229624cadd5404b392fe7ddc4a7e2ec4d24ae9e40bff00cad62f117b5713216794225ea16640859841816e1039f766491c183ec063c951599e1525828ea800ee4070b77f3cfbefc6e7f75d7880e985b3fdfa7038ec0feb011b6296723450ec8bd95e2cbe10b30ae67d43052d631517c66dea4468599082f25ff8cc7ebc7d924fb5094cae89f90e3fb81be3b70900000794494441543aa23c3cde57508b4b087a1a47562824247487229b9737e82994f7e5fc3ad231d5ac23bfe8bb11b7c0e9ffe1cc85983fd14c99c90b2ee787358026b8218912f2cfa6f77eb0edd652601225de116fdb6b0895823425302537951c55e8137ee2fcf1f186fca4633fbad962d17c7ffdf8dc1d51ee1fe9b12a226474c9b892ccec517dd23dbc3a24b707b349988f5fada3588bc9c88a22e96a71f8edcd1fc66c8090f57472d95f27ecc3815fb593c0071ad9ea6301eb00f19643d93cc1c40e2fe39d11b4a012365324a89c3e212db1be961f5fee8e8668f04a1d622f7684d94587f913257c41e53e35ae200da1b36994ca9ef8bb3ccb3360227a009322c4f7074cfb547c7364938ad475b9966fb0fd033ae3f5c0b03cdd05cebdbe5e8f0e07f9243657e93cc24cd80f803d2a3d0a4420ad5005c9660921ca288526115d2a5d8ed8440d1de3898ff97d2dd2dba2f07942693b40f9b13baacf3ef558a1e0201db0cb7a25f157e82e4561a9e5f9126c1f3c6d456096975d5becb1e0644dc866dbfc3a482e28fe4774c6b65343f35c171a1bca17b41c1b262ebaaa7026064089c6a212c10450a44faf8cb8155084a964164d92baade29662f1d3f8a1d792ba22ce76e0b480328c50222fc1253c0ec212fe8a6600da5322976011bb1078111f1c0eaee4a9f78fcb9c5d3cf572595517b21cf1e5b23c7f4067720b949c6b16eefb40394f084a51c487d3b7b891d8b608ad0a5aec57a0e3dbf72aca1ea4155844ac64eb186ce29154f9fe24b81cd7fc7c6b998acb45f7f378f0ebaeb65a3e96e1e2a8618d0a870fc1212334d590a04d1f750e2154a209426e962890ec5d5908d4e8fe88472b48275c5ffc0fa632cf422f74f4bd9bcdb5d709a82cc9e497f00dd49886508bd4fc1298b2e5693719b400554a45512a958d1f885e08c2016bdf60fd2c2f5799239faf6f1dc527e4e7351a61afed4bf0ca708efcaf78c95e8f9d0fd86471eec103c905d9504620a72abd3c25a8b14609b63912a170b2228c0a9cd64077fb5fa673de548309c4874873fdec7a0e01c23e224a21741075fc83c42007a1ad4440a10e298a0f2f47872054f6c847ba2130d18f220a01f371ac8e96099fef53641550c2fc3c1f0ff1c1155418a7e90a5f926053691157daa1520fc2942ac9fba0a6f644831ecbf60fc6db4351d6862dc8d821bfe2d3d175d330fe4bd4c6b69319acc1de0be7edfebab09eaf25111f64c56e49d007aec285ad5d029b0a66055200e34a756df08dc10150934a45063f955223d85e10fa58398e0c10dd7431307f9c0a26d332cf120c4347f3584eb14cd11ac8381a9a202813deb04279c22eeca152f125bf0a92570f4cd191985198b575d6512b8aff6dd426b7138b30f7a19b5db7d700f9406195302542e2940c2daecba7a0cd53ebc1261beb0a3d3530a281c80be43c5b6ec044988d1fc7b8cee3433dded57e8e534fcd2e4ac9f168097602f79b78277424153a65d42b243c761fe23f32933dda2e3e8ada4a98df17fc64457a8d84ad86bc49675fe639fe6dd4c6abf55967e8ed67de7edeceaee59b3285473b22d256df9b690f5a48cd239b79660fbb6a80e2fe4de509138e0097b4445daaccbf236c8573e65274402ffcf8fc9806f078eb88df9e780ea1ff9e8e8701005d658fc77e960554c1ac34686d69fe84cd658eeac1911729f32a76dbed23cce4dfa4e6c4004a6f1fa29c14d623d88307a9995159e11da5b7dd25c914987022d440bc6f4fb88331c1de070bf884083ca97c12bfb8c07863f797ef8fc7579e071f9f9f9fb07e77c7634278c112381301925d230d34ee53be69db11a98c57208509c21ec80b9b2f7d4a902ddf769948c8a03e185de7725c07761a7cfb9bd40c2c1d310b90a89a6453bef254e92ba5288ad984dd1f4bcc4a4dc95301d92ba810c5b54a46e663aa2c82c9bf481d05cc460a71709c0916be7e12a71afa59edf1a295485fd3628c99997407bccf4685528bd790ac07bdece6d9ff3ca6d632c29db0a5bc8f989e8cda5c5f25e7efcff7e039edb03f217102e81a5013ebc483ca6e72ca24a7028decfb239b7916ec468a21ca6eac51a63ec0c8a7ef8fb20f4e5492f5585ccb3cba824f76c808b0cfb7cfcfb70f15b3359289fd9592c12560298b9a21d90188a64a865d2a22c1dc7d7c348259a6f62033196ed1f10b753cca75b94cd8ef929355530990027a080ff3c3fc279dfceade015ea56867bf5019046659de1f0009775c6ef45849d40784339251933c0920e2123e749ea9c5f1dba52a93ef1f9f6f6f1f32956b75977a44b701d72a6c35f2b26f445253a26d691924a1beb24d40b8304af2320af3f850a04118447e143011b2326b431763fbebf0579cdf94c90e6c7f50610b90f041894880c41eb045493c74909a6541cadd4fb789bd0b174ac7d7902ac031a11e238b2e01a0f15899ed28d5936ea65cde4b76be83cccf8f7025330c58a3a48808d23caba6ea08e8e01b3d6a500599cb8168d5dbe2d108e65776601795560acea29ad32195d334826fbfd019ab1adf66dfc0a68e903dccf707a4e780f16e0b42299fd2aed8ce75f9e8dbf38dfc35f6f67de3ba720dcf996fe0fa78695cdfa7aeefafafcbd7a9fb6b3caf92bfe6f353f863fe7e7fd4a0b7b74f71b399034aa6b4ca0d79d17bb9c8cbe085f812705b79fe46438697bfe73d0e94488f92a5643c1ce9e421a70227013aae4c9dff1669edff0369ca3562c57bc2470000000049454e44ae426082, 'PACO', '10492', 'image/png');
INSERT INTO `fotos` (`num_ident`, `imagen`, `nombre`, `tamano`, `formato`) VALUES
(55577789, 0x89504e470d0a1a0a0000000d494844520000015e000000fe0803000000459e9d720000000467414d410000b18f0bfc6105000000017352474200aece1ce900000300504c544500000085483193492b904528fcfafce2dce4616d77ece8eeb66748fe9f71cbc4dc7d422bce856a4d4e51170e0d8b543f673825794735352d2e965b467e635f8648317a50448c5746170e0aa55e46272a37e7c2b580453117181dc9cddc18205fa35a3d1213146e3a299b99b6d0b7b80b0604bda19eaa766abfbdd458392e130f0e35271fb32c3b958580d30e10aeaac97d255de5e1ea5c62967b7ea2c78167c3c5d7b18b7fece7ef06216efffffffffefffdfcfefcfafdfffcfffaf6fcfbf8fdfdfafffbf9fbf8f4fbf6f2faf9f5f9f4f0f8ff9f6ff1edf6ffa374da835ef6f3f7d37f5a200a03d6825de28a631708030f0502fd9a6be48c67f4f0f4f3946eee926df0ecf1fba381f59d7bf39774ee8e68fb9667d17c56321206dc8663ce7d5bf99976e98f6aeee9f43a1605dd855fc4714efda988f18c5fea8a65f8966fd1805ee286611c3aa52a0d02c77453c77a5ac56d48cb7854f39069ce7a57441b09c16942df8a68d78663fba07bcf7650a85d40ca724de8e3e9c06f50a2593da76246bb6f51ac5f43ec875ada7e59e58355c27556eb9472f69162ed9a7bdd7d50e0815bb76b4fb66341d18462e48f6ffdad8fbb6643b15f3ec06c496e351ccb8061cf71489d573bbb6a49bc633ce2ddee894327e8e3f1d8896bb65f3a26130add8f6f4f200bb16346dcd5ea132e8ad5764ca25d419c4e2ff19f817d3b20f6a487502714d3cce4b25b35ca6c43682e15e88660ad5b3bbc7458833f23c0795d452516a55535a95939975237060101b0694e5c2710aa5633905038d67954b26e53e4947776371d8d4b31ac654896563d371d10a15030d681649d533719369d733d285f311c844f3cfcb398c37e631f3faa0a21779c5b40964d30994a2ac2663d153093552e1ba06147a86951b57359d9d2dca8502fb1abc7c0b9d4fc3135e07b72c4695efb2424ce7465f0867ee73842ead1cfea2226f9958d223da1fbc0abdeada5533080252c7bf4e2dfcf95819c675790391ee59593e65c60a72c5bb0817b25348f3b3a8d6340480f163fd6cacf3e2a5882595c3e53aace2d40aa908f662f72a20e1aa7fcfec90000007d74524e5300fefefef7fe0dfefefefefefe21fdfefefe39fd3ac45986d1bc5efe9e7330fedcb5dbfbfedffefd94b599d9fd5efed5fea9fefcbd6287cbc9fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1aed58ee000020004944415478daecbd095c9be799ee6de0e7a031c4409ca469d3244ddb249d76ba4ca79d191bcc2a7e7c4248f808092415b400c2420a12422021400b26521484c4264b06cb0839169b6d40ac1666155b0093801b16db599ba4d99aa54d9ab6f93a9defbe5f9cb49df19c33e77ca7336dad076d2c5ef8eb7aaffbba9fe75df6ed0b8ee08071c79d770421fc5f677ad75d5ffae67dc4e878e4be6f3ef0c0035fbaebce2097ff2b68bff4f02397323b323a32323a8ec17306713fd671f0e1bbee082af9ffe7b8ebbecc83c7606466667474e4e57564c07366c60210862f3e72dfc320e320e3ff63b80f1fcccc3c9699712c23a3a4642163640428979464969480964b40c2380e3e725710d4ff09db6f3e02042f1d03be99680e791999790525790b79f05892d9b1909997077601df3ef64010d6ffb6e73e702cf3600768f75806d0bd9451d251d2915730525e9297b73052b29557b090d7d191d981742f5dfa66304ffc6f7beeb1bd8d3fb3047da0242f030ca2bc60abbc1c945bb23a32320246bce7ca99970e1e7ce4e16092f8cf2bf7e183b8d5674215cbc8582841b219e57d79e5797925055b2599e8c02062f86a268e8c4bc750c2418bf84fc27d04b81e3b0825ad636184209c919157b2b0d557d0d7599087b0c18533303e74107441bea8f4cc20dfffc4f8d27d842980ad02b7631d1d800eb45ab20096bb5abe559e97096e9107e2cdc4b247fc2040c6347cece0378306f1bf92eec3c0ea1891c6f65a090226fa02405e1de92b80d4909797b70a5e7c692f54746054c317e027c18cf6bf18df3cb857cff6367b70828282823c880b05e80f0505e5ab05057de50525101e32b1e8c15b718c88c4997b21e2e07d5f0a32fc9f048663846e09c20014d40b480bd00b4a4656f3ca0b3a3b57cb0bfa46d07ff1fbf0f50c7487853dd0d82a1ffb6630a3fd47e3ce472e613dcbcb24f0820d64003f80380232ce03d5f61594976f756e813be4edd12d219ae38ecc858ecc12a04bbc310f07f9fe07e33e9cbbc938b6801206ba0590bec06bb7fa460ad023f2e0569257deb79591b70a5f46ebe8e82821748c632f065f82262308f296e3014c591938c39001a9167a34f0dcf28c8272d02d41977009348b82d5827294301435d4f05e745b00f7cdc47a773098d06e19c930eaa20a33308995408f56d2d7b9054ccbd1804bca1132bc2887172350e0cae16750ba68119826709a9268f50e0613f0ade8a2df122176a160047d1538f66d01c68212840a01a22f2fa3a013a45c5e026d7179c14249410948bd3caf638ff35edac049b483c180760bed5eca5c201a04880805b8d91740a3067a2d2f29e82cefec2b58ed038c059d58ea70f20cbe03812173a1206f61218f881238c783bdc8b163f705cbdbbf090d073bf62619f0a3a304271df300691e48b813036fdf4a67742761112544639c87de80739479d8cf112923036ed843633717b4877f53d60e1eccc4fe3603e7ca33330af2324a88b2061f9d10c80a3a57fb3a3b896c46d80610873760b5003db7246f01fd370f7332f6d1384b1cb4873f162f5624d8b6f332460a508758c73089816c3bcbcb47caf3a231f3764e4062007728281f29d8029c23e01ef0762cf411a102c59c91416c02972e3d129c7ff8c366f852e6b1056c0e4aa06928c92847aa059dfd13057980168242f9ea5649de16e1c45bc0b173a5bc73abbca4a40f3a382263942f6440a55b28c1358dcc838037c8f70f9be18350903a20922d8097422020926e495feb2af803465d106e67c95e7a284743e85c89ceebdb029f28188147f84e3976210b25d820671253c5072f3d122c6f9fcd933d72f020314d9687d33380af0f79425e28872896d757b0059f951389b72f1afc16d8f7ad6e81678ce0044439741f60c6793837915102ef11e63bc07b2cd8bd7d4e17677621b58e807c3360bb079eab7905196010799d1350d3fa2726263acbf3e0ab135bd110d250ce843f8cc07b510ebeb00ad60cb792929b73ec1dc70e1e3b162c6f3743191a0311ca200640b45d2d079cab2059c8bb2bab13e59dadb3fd40b8006a5bffc4ca6af9d6047cab75626b6b646b049be5be9291bebe3e805d90010902a47b0cef971e0ea2bd191b3a1620ece26e0cd04c944fac02c6d6d509e824ca576627265afb91ee6c6b67f9c46c7f67f46af92ad0ef0f99ed04a620596890f3b0fc8151803f40753b76f012980d54b7205ac21c20f3827a1716324aa0b495f7b74e4ccc0e4574b67646ccb5b646b4f66c3a36675b2756c02426c6db813deaba35622e62025c622b7ab56f151271de08a6359c52cbc8239689e0763058dc6ee205e75dc05152de39db030ed01f12311bb132df33d43ad933a70ff4f4afb4f643ad9b0899072db7764e74aef6b7c297263a0b62565727a23b573b2123838a33b0c3e840b8990783530f9f9536dc376f046e50ffd1543bfb5be71c9bfd3d3d3d439b81507f680f32edef6f9d45314ff4c7cc9697afb4b60ecdb7827300ea5634e64eb08c725c96c3fe8d58e53c185c9bdf1bf71debc81b59e880485602450df2417f7f7b55e86cfb5058b381e4d7eb5b5b8120b00e018e58e5fa233a2340de1b93933d3d1311fdfd73fdadad68d89d79c4c424fc4d38ad7eec58b0b6ed99c3b1cc8591055cb6848cd05ade075afd60f4c2e5d1cb2d8a16927e0e74db3a3bdb33d4dfded3df1ed6bed9d3df1fb512b112b231373f3fd73e343709c8c1287afa41bee538cf8e4bc7972e651e0c4e9c11c9e11204b30edc85acaf73b6b5a7a060a27fb1f9cc990b2da59a0ad198a367a867a86bd9abeb5aac2579f43a5d95ae1dec1978b6f60c4dce553946bd43ed3da0e9d6a17ea8711823f288997548bec1c618c697700a1dd7dcfbfac07887203b2c9e2a2d6db950a199ca6db97a79cce0b61b8d4e99d5edb2c90c06a381441a0bede9699d1d02fb58aef22c8e2e878655812f83b8a1c6e164710631b979f05210efcdca06a10c622ee4ddb0cef2d0cb1515a515674e9d3aa9c9a5d2a85415cfaa56ab4c2e2bdf2d5149f84697dc2e5ff67b371ccbcbb5a416126974ac6b74f46acf2cd0867841b84306b16fd4a5607420bce158de4246f96ac156673f38ecd828d02dad68a9d6d4d5d5d54ba58562218f6633994c361b4d6d32a95456975b2dafadf2908c76b9b399d4dcd0300a7843c3dadbdba1ede8ec04f982743383b3eabfaf6c2505d01d4c4c84353734355d2e15558b2aaaabebeaebeb0706068e9731994c0e87c366b3bb4d1c8ecde642d614b54ba5e6a9ac2245694353f3e0e5aeaecdb02100dc0e61b8bc0477a4ba742ca8debd9e187a8a82d5be89ce9ec5e606673390ad2ed568a6f6e89e282b2e2e63160b389cca4a36930598cd6c139b6dee56096d2a1b8347cb95b4b4345d1e5becea0a0b0ddddc04072ecfc35da2006fd07bf7ed7b009436525ebebadadf33d6d074e6cc1911e03d097809f5969531cb8a99651c019b53291030996c16c7cc319b4d6cb3c90c2ab6f17854a5acc5d9d0bc18dab5b9b9091a6e1fea2426d5816f50bdfbf63d8c780bfa42565a9749a296968a96d2d2ea6a8d46730ef172cbc41c4e71713157505404cf6565652cb00a16470cfa35db6c0c906fae52d4d2d4d43c7a356c396c7333b4bd7d6896584386d638b843dfbe3bee3b989131521ebddad7dee5044e58d780efc96a94af94c3650904c5ecca460193cd2e3ec12de372b94c2e8b25eeee367733542a9e8a42d5c89a1a1a1aae77757501dfd0cdd0a188899285cc0e506f102f2ec12fe4f575ae4cf40f7535b534dcc47bf2e4c9738057cc1583db32b90058c02ae31c3f7e5c7cbc0ce8323945bdbdbde00e8439884e3537358f755dedea0a0d857bfb506b5e1eae0a0577d721f08e2c8cf441df1b466a696a3885782f5e04eb45efad7b6a8029c8a9accc61739839ccb2b2e3278e3f71bc4c0ceed07ba5bbbb11ecc12459e28b9ace345cb8bc78158c77131204f0ed8468d671f060703d68df5d1da0de119cc5d96c76369d42ed82782f9ed49c3c776e6aaa9ec5824406b7a24a416559d909e02b160f7018bd57ae5ce9ededeeb6b9796a3e7a6fc3289803aa17ec77ae7d752403672483733afbbed4b13092b7dadadfd3d585ce5b7ab1fa22580388f7e4b9a7ce4d49059c9ca29c22e195a2a2e2e2ca62027019b7b1f7ca5b3000706ff70c3557d172a1a1617014a259e8d5ab101fe6da67cb178e417608e2ddf74da0bb15dd3a3bb7d9d05081784f565f44e582f9d6d74ba19f60a313345ee9edae84e80070995ce695deb78871e5ad2be6198944216b6e681e1c1ded5afc2014f16eb6cf762ea07cef0be27db8636464abaf356268ac09acf7c7172f9e84db490df005ba6226c7c4c961f7e6345e692c2a62e79415ffa8ac98c3eebe42b085fb15b35925e1b734389b1ac61617bbae12e17773ae671557343333837dc5c30b0bd054b4b66e0e36349c3953817481afe69c062b1b175be19cc61cc0fb566363914000ad858053d4d8d8f8d6956ef34c37c633f79248a485e2067817af5eed82c66d6e2ea2b500f7973c18c4fbcd9191bebcd5d5a1f1d1e6e633a7203480f922dea9ba013197c362f73616616503ad365ec110512968848e8d2e34992199994c4295cb057d05b46d63600ec01792ef5c7b4f6bf90244b3e09e3aa0de919182e8d59ee5d1c1e60ba72035549c4473d04c31a44229f800e8f3ad468e9935c02ae3168376054ca06d668317cf98676666cc2ade920cba6252f3e8e8e82256b7d03954ef16e20d2e571078f3a227e674a3972f9fa940f5624b5137552f2d9422c85e365bc0650e40e81540652b03c2393939ddddd013b3a12956d9542ea54c2182ae786c7474f0f2e5c52ea0db3ebb329157d2d1112c6dfb1e1ed92a28e883966df4f21988bdd05140e405baf5752c69bd54c3ae138b9965e2016ef189b232c02b600a98dc32a6802de5f04c0c9b8dc797b8158a166d3324b3d1cb63a3638b617373433dadabe50b1941bcfbf67d6b642bba6fa27528f42a7803e632ac6ad04f500a41c0f5f5d0440c005c01610ce2b2b227b8624119f4192c9359652a54a95436de92925fda04c96c6c0c043cd615d6de3e14d1bfb535929711c4bbef5b0b5b90cbfa67dbbb9a2f9cf931b414b9d052d44fd5e15245bd548ad30ee2b2012e57cc2c1e28638acb8a4f807e991ca690255531a4bca925954486d16c70f432b82fd437c43bdbda57be9017542fe2edebdb6a6d1d0a1bbdd0dc545141cc364cd59dababc30933691d83c9e2b0b800995b069405396595f082c515b34d4261ae6aa97aaa5a2972f2e55a52f3f5c5b1c5aed1eb576fe22dc85b08e2dd77c7b7a0ab805cd6ae1b1d6b80d85b7a51933b05b16c6a4a2305be0303755c8149cc6522e0017199f878319325e0f436aa7826b1696a8a3755aa919d6a6969ba006ddbe5e6abd0ba85cd21deadf285858ee02eea777c6bab6f75b575bc7df9ea6562b2b702277aeb34f59aa9fa3a286b2c7119a21d60d6a3fb427a282be632d962168b29ae87219d5aca552a4b4b1b9ace5c1f1bbb3cba38d6158a4b9a58da461632ee0ae2056f885ee9d90cbbdcdce0dc9b4a9f026328ac934e415d83ae98cd61b298655c2e24de624131c45e9c511740c963718552868a52a79494b6b43460eec5a10b9d0b698fe85f1d195918e908e2bd6f0ba2c36ccf07a363679a9a9c48f7e2d4b9fac27af1004a57c06673388dbd1c01b30ce90eb041c15c0107a299b87e806b6299542a055f662d2d7542f0bd8ca56d79732e2404f0427418c9089ac37d235b7dd121ed6383834d0d4d2d15d5b9600ef585107907eab9e00739381f59d4985309c22d2b06f996c1282e1e8082c78674c631996d46855a2913699b0607912e813764367a6b0b1ab720defbc01c5623dac71a9a480d4e67292e62424f41974ab9680c95458d8d57721ad9394c9ccc0125b3c07c0560166c286fbdddbd8de66e9b5bb2a4e62b644e9c931c5d1e27f086448378837831396c6d4547b47b5a9a9c249253a4c855683414e827842c5625b4bf4557aebc75e5ca95c6a29cca6241650e8bc9e2226726a48722006c6aec3577bbdd56b7dc6ef04057e158ee9a9c04be73d15b7d23232341bcdf1ae903f16e905a9c16a7d320536814ca5ca950c81072d8380ff9d960e35c436525f10077764e65a30af09a71c1c2ec76bb23ed46cb58d5e2e6f2f8f82488776e05d43bb210c4fbadadd5959579875f4b32902c169942a450527936a0dbdd5dd4d88b6b6a8d5740c2e00f9c4a660e07040dd87bd96cd46e6f63232e07cdcc0c4746aefbfc553a1d4e984daeadb523de8591bc6072f8d6ea4af4ca64c062705a481683a8a5a55441e5d3186613c26bec6e2c6abc02f65b540492851b8758d804c8dd45b8140ff6db8d7823d787d7a7757a874307956d32640deca1af6f64612188f75b31d1d12bf3d31683c567b1185a9c2d12bed168b5ba67dce699de1990671108b711bcb7b1089783723845028e19f40b746db8563c33e3720f0ffbbc81f9c98dc98df9f1d0b9b9b528c0bbb500ee10dc0bea5bd12b2b31f37e03b0b5582c50dcac06832f727858eeee9e71bbbb6dddbdbd39bd5c30038c675c8e0019f77240bbdd60ba305cebd3db3b9311516b115121112b21219380776d2d640d4fe3b915dc4de76f41bc6b217e83010107c01f6a0dbaf10deff43020deddd95d9f31c3f69fd38be117d283800d95ad083e6577db54336efbface7c446bf44a34c4dcbebed6fed5d58988b990b5b5a890b5e89185adade06e3a7f1bbdba1232e9f7198641bc16bf2e743c54ef5fdf9d8f5a89590b89986d1df20ecf749b40bd8d8dc015dc41208027368701966b9f764ccee2f19b5bd17dabd1abfd2badabad132b1180376a8d880e417378207a2d26623260f0f9a60d7ebfb77d73d9b1bcb1313eb90292ecef8f988d180a5b5e77ab4c6cac6e394595f854c4eee6d95c56fbb47fb2a7b57565b5b3b3bc6fb515fec46a6b6bff44440cb8c31af4157d41bcfbee5a8b8909d998f6f9867dbbfef6cdcdd04dfd78c0b1313edb431c2b38dbda33e9d00fbbdc265c928760c6060d77779b67ecf6e1e98df1b99e95d99b47bd45b4aeccce45acc02731515151312bd015f70517e2eff8eaca5ad4f62ee05d9f9e0e2c7b0301bdc532bd4bf26f2e5fed0a6d0fdd0c0bdbac3218ad6eb3091a35365b8007019855ee48dff4f6e45c7bfb5058576dd5a0c7e2f33bdab7438036980378c35accc848f4b7f605c73d60b2db48777d183a036fc002a1416d94585d2a955aa9748e0e8e0d365b8c72abcac4e2400c06dfedb6d9dc76dfb47e1ce8b6878e19e490e35cd6754bed26346c3dad2193a05ec4bbfad5e042fcb763a084e9777dc3c380d760a9f218e412358fa7b2a9709d9d2aba406aee6a26698d7c97cdccc6dea22887e1b2cb7d01dd7808da42eb26c96a95d9238d76e3f0b477737e6e7e726e7e4fbdabab0fdc79ef97efbe7dd97ee19eaf2c4740ee25cc6178dd3e6c044a7c354f4551d9680c86c93d23af0a0d0bedaa6a90f1d50c133b07e36f914d6d975baae67bfaa1a2c5bc7fe890deef5f97cbd7870dfe2abd6e7c6e6e6303ec2106a78a267ac2ae86ddb6f5edcba79ace548c86405bb13b0c033672ab5c6e974b96682a97dae592ef86b4aeacbd1fd5331bd6e531aadd0c0e4ea035e6d0dc72dff4464fffc4446b6bdfb16307335657e642027e9f3fe0add2e3d898077758ed8bee0fbd7ad511b2739b5ac4bd76b94c545db119bdb23d3d0ceab54a24763e5fcee753e14560b2b533e35266e6b18588f1cdf6b0c506bb9a2e44bc398d6c1b7cbbbda77db6bfffa3917ff9f4d28ddf64f48544f5f4ebf555e301288d01fd36e21d69ed0a1df5b676f6dc7b7be2fda2f6830fb434aab375c53b0d7487f96ab555ce97cb6446cfd0ec6cfffb9f64dcb874f0eb1df77f34b778994432aa191c48658dff432854c97d559bd3dea1fec7defe242ff3d2c18ccc7f89595de99f98d505fc7aff7440bf71282a2aba7c68b16a593f3ed1f385db3392d9aff77c60b5abf93d11db88570ea6ab962b644e67d8c444ffca635fff048faeec1879fdfec7c69d6a9b4c6d1372983995c5e23a99d6a0d70f7bf5518fbdfd289e8c36f393471f9b44af680f18a6fdfe40c00bc52da6bc0b621ec93fd773cfed9919941ff4cbd836ab7523641bbdd748e1f1e84a99d6d93e3b3b7bd5ffdefdff82e80a3efdd9fdefbdd7eb66a9d436164b2a10300552b5d3a35ff68de94203effdecb182f2ceb5f722edf2daae9efe90399db72a40225521de094fd5f67aad7ff8832fde96781facfe60d1c4c9715b7510cc86e5723e854e5749444e5d68d76893043a8799f5f75722d6df3647fa640c3a47a56608712d686040b824f35439a67dfe699fcbe57645ce5ce936bbac726773557bfb5cfbd55a12a976fcd0da5a9fc3a19f691e8cbc5df1567ce0b271737aed2121815d9f5c2ee131e8f4d23363b54e3ccf80cddcdbdd6b369b676c6e97cad6ddedb6aa732954b150f894f42255e9ac5df6ea771c1e9fdd6a75cdcc44ceb8dc72a7d30a796d74acc1a0f5e840bed111933b571ac6d6af7ee5f6348752979926adcc91af44f8770deb7c6aa1904ba7d1a83c935028a4334c269bd96c73d1246e89dcea9eb1e66aaa29947af1c9935375a53227a96bd9b1bd31b75ca5351ad510e2ec72b916b29bda6a706a0d06c0bbb6b63231b9db2d1f5bef9abe2d93d90fa6ba67aaa5e23ac9ece4b4cfb72ea1d1855c060fb0e2d196d0b1a966666cea25adb3a9456e7747e62a34d5b953f5c2a9a7ea3415228f6779731cda33876e79946434805e3d06ad1d5a3d081516adc153350e7d5bdfa15ab9a53630aabf2df1464a8b96a6ea35a533fd738057a6a40a7181180f1364b34d2a9e42a128ad96c96412186a094d535da1a151eb4e3ef58474aafa7203a96af1ea72e8b82e60d192481e4f33c9aa5e5231183c9e0b6285c553b53cb716b315d2d0ac25e9c61cb723de3b55536c9166aac21cd9ba31ed331a9534ba944e671078392696c964425c2a9e4d65e351a4759a53753ccd94b4fea973e7348aab97f15095c5e5659dc700894e6494bb782a864dc5502df1217a583c63cb936b60be06d07597c5723be2fd76fd4553b55463d234b76efb7d4699440d1441bd2c01b3b292c361998452214fa532a9543c86b4b0ee64b586aad068eaeb9e3aa739756670d030363836d8d0d04cb2688d228551922bd1f00a793c9e52aeb5783c553ac01bb3f2defab061b4ca723b4efbfe63fdc5a50a9b8972eafaecceaecfc0a7d22852a94ac86531058262ae78aabe4eca12d70b59854226575cafa16a7235c4d19af5f52765cd4075b09974b9a1a945a690973641d9c33d2ba7a6a84b4abe96d45c555b05f28d59adf2d9232d3ad2b76f47bc5375a40a1343482d8d00bc5abe92c2a330a452269e7e84386f43fdc0009e6e80cb2c160f144e4dd55170d7d4faa79eba78b2a1a961d0d2dc7cb9a145c6a7d1a47446619d664a03b76aa592dfa4d592c66a75e80eabbadaf548dfe6e8edd8157fbb4ed36433d1e934c5dcceeeae5346a5f10ae97431b3ac8ccb2c03b262317700f79b06dc5cd6494d9d869a5b5d8dbb4c4f692e5f6f367a2ccd830d22c9124faa920e7007eaebeaeba6eaa6a8223e5f6bf478c6aa36e7d6d6b6bc0143e47b431fdc9678cf4d35a9542a0a95bf02788d4e2a8552c8a803aa036502f114b7acfe29403c508c3ba17206c485b975759a1fe79e943e557fb25a7475b0d9e30487d02a542aa9542c140f48a7eaa47575d225aa4c29d23a3d55a3847af5812ad27ae8ed8977ea94d246a35295d6906dc02bcaa5d54919c80a0f053a29bef854fd00584499a09253c966d69dbc5847cbd5d0ce0d0c0c9cd3940e8e7a9a3da4e6e69625954dc8124e9589b9e2c2fa7a0a8fc717c9645a92a76a0c1a8b98be6dfdf2d8b023ecb69c328b2cd5daa8d46aa57a78671af0d2689442ba548c87b281419c007f387ea2b818f73acd01359f9ba25135d575e227cac40353b90da05c43437343934445e3b05862a698cb050d330a795491424b720e56e9b02d5ef5ebaac62c81c5db72c2f707d5cdb6d28ad26ade3098835641cda5035e86980586cb1d282b2b7ba28cd8a5b728872dacbf3835959babb9383500dfa2a814b266cfa0a7b9b9d92972cd98381c268439aed8c411aa184a90afd353bb58057863a28797bbae7ac63db7e57afcb7abb5d5d74f554cd9e493a85e25552a158aebc01a58dc13c5026671f1934f0a720400183284189c975a3a25e58acb06c45353a52dcd6383a48606918c6f339b3938582c299b2365d8647c598bb376748cc0bbbed9fac172e8fa6dd914dfa99453af5fbf5eaa52cf4d4f6bb5124a359d41a70fb0b8e2ca1c36645f4165714e6565712574714ce1d4454d2e6d4a3a0076c19252652dcdb56363558372977bc66c32e12910396c93b9db066d854c0ec1ac0a825954f4ca744f4fd8a6fef69c90dcf703e792f2fa8533a5b6909d5d430b24073aa55ecc19a817e06e7a959ce395954c78599453d4cb992a2d2dd5e44e0de0d12b4c71215531383836367ad5e09a319bbbcd1c26f4d1bdbddd574c269a842f97693da13aefe45adfda46cf075d55f3b7e95adbb773e56e8d95764e35b9bd6b312a69b93ca990ce12e7300539b8b7348015e40c005d7311ada9ba3ab78ec215730495821c318ba674926a3d9edaabbec819736f375b2a60e35100ddbd669c9a6c20d5d6ea1c936b5b51d39ba3beedc06dba2bd41d3f502a6d6a86b8ce7b68c720a7aa0b29742924004e6563239bdd78a548505954c4ae14b059148da4b4baaeb050cc0455e7e4b0d9c225515343b3a879cc62b0bacc1c16879d834759f49a6d4b6a89dd69f1e8f488777b58ef9b9ebf3d5732d17d7934ab8dcde11a26a70d5a89954fa1b3a45c9609048bc7acc05325a45ef80275090f842d6488396fc157731a7bcd2aa3532b97b43493d6e5129e8d29ce61f71675837ccd2a9744eeb404aa006f4cb92f72d737ff95db774fa81fa8d426660edb1e0278450aaaaa50481772f0a8942bc4212b10cc8a9975a66e555dbd585a695209396fbdd598d3d8f856b7cb608f745bed4e923fd2a85da2e37967bbbb1baff0676c4b7cb9d3508b78a3cbd75dc3fada7b6f5bbafbbe1d1989272a93476cef1a157c85b2902ee6b0d8458dbd78bc4a634e657119576a339b0a85c02f8743553138d063145db9e2361a86235dae48a3c1101969685182ecd9b817bb6a66c96d951b2cb55ec4db1919b91ef8e2bedb78fca39dc361b064431bbb063e5f44e33158782622625fa7c6a29c6268c578ec6e334f586882fce556f36998d24cea489f6578ddb73e3c6cf4adbfb7ee6928e5d938dd26b3cd6673b96446ad25e0f7ce4f46cf0edbd70377dfce78eff8819423a4ab86b6778c4aa55c5dc8107205cca222286dec223c1bb29061eaeeb52da9782e50e2fabaddaa5609193491af6a27263a7a7277dd002611393cd842e1096d2ab3c9e656ee218b3100002000494441545b8d5a6d955ebfe158db0a191e1ebeadc5bb6fdf832a96894319da98364aa80d6a8a14dc01231918835800cd2e4b68c21371caac9e59bc56e65064a4d56a97fb2cbaa1f69ecef2f671cfcbafcac11e1aaaa9d0b0cdcca85c2d7cb9d112d0eb1cf3217d0ef9b0e1dedb1befbe7fe40919bcf6792fe45e051ff8b2ca881e57c0c96133996296b9bb976d36bb48a31f7c305a6b348019f8767777760cc3c3d33b433d6196975fb6acaffb3c0a35456533a9f922a3d669a9f57b75f3d05504ec06ffddb739de7d3fa0149a3636f44685047732a3e16a1b8b8d958c535c2c6643cf2084eaa76a58bcdec05799cd6ebfdebbb16930bc6ca9bd1a1656fb32c9a00587b58bf83495cde65e72db0d964060c7a1778c876cadaf5bf4c1fdd3ff71ddb5311920f1654abec49d5b28640c0889462187c3e4e0d1c32065818903c6aa5a9ae936cf90ba7406e3abafbe4cf2780c2fbfac7dd96804fbb58ba8349b0a5299d118a8f2eac61dcb1b11e5ebbeafdcf6e2c5faf6eda879bd4126e32b256a4a211de4cb65e7b0c17acbae00e41c01133a61569d9423a540db0bb1b7db04994c0e645f7ef555edab46b9dd2eb12a736936b74d25d79240de5e87433f1fb235fdc5a07689f185f95d125fa1b0f225aa5c461d0bbb0436b3b2b8a888987c1008042c4e25c766e214e161dc3866dc2eadf6d5575f5d9269e572395f26e253f1700c375feef303dd65bd773ee2abc1c3ae6e8ebb1d7a83d1aa102914121543481733b1b29555e614dda4cbe1b0844230d7de5e045ed4db6d7345924860114bafbe0a80ed7ce5f516e0ab50f3ed865aefb8c3bb333e17153ca0f8f3c907fdb247a654ababa90a492143ca64b2016a6511f06dccc9c1d31b72c436ded2125ecd868d13ec26934d0b01ccf8ea121fba08994c42159da9a6d0794aa51d525968c01f689f9f0c1e92f97bbcfe65bb8ca6a24a1434059dcb2ae608a0f9e556161555e289b6046c286bb26ac0aba1e0d47aa1cda492188c24a3dc0541cc69348ad42eeb208fce534b0c16af5757ab77cccd45058df773bc5e0b4906f2a5abaa69341393290063c829c60b314941b00c68769512116f4938c5a188992c36dd66b6cd58edc3f6610bd4329253ab55c8adda16b16a49a4adf52e8f05aafce3f35f0d62fd3c3b4cfa0c72be88e65629a9343a8b592cf89b9c6216db643329976834258f61e3a9a06d601799a6d802211047f7e5f39da4c1613c5101c920b74bf8cd0cc6928c14d06dfaf0e0959090a07a3fc7fb1587472612f1adaadc420605bcb7129ae24a0e8fa6a2d072a9144a1d638a45651741ab011d87d8048fdddd33ae19bb5c6e34e029783c249fd538c810d34460bd55d3bac0b8773222181c3e1f5f0e788c24b9d5ada23118d43a2eb86ea5d8c450f1a8b4ea5c8cc22693b9bb085a0c21570aa9addb6c32cfe084a43d721de906a6033ebbd1c3e3d09c1e87030a9b777272323ad852fc3ef8ea870d243e9f616230e88552b1a0b8b192c5a608d56a15b590c1e198f7ce43cfe92e12b2849c2273afcd257f55ee8376cd67210d4f57e91d24bb96c4ab54916a750ebf3e80471607bdf70ff11a8c76855a65e3091914a1589c53c4e6b04c3c9ed5e8729bcd3333ae572196b95f522dbdb4f452f592021a8a575f7ed9525beb19def54ffbf51bed4e3e5f6b632b49b5fa0d877f677e6e2ee26f83543f1fdfde09183c56b5dba636d1e926565965510ebb92e356387d2e2b1f9241c3cbd001bf8c4cf71e6058a6fddbbaf9f9f9ed9ded889e711ff419bd6c99a7aadd31eef56f6ecc857c3948f5f77827772d46a38c66634035a373040268277258b4a6b01e8bb3a1d933b83c34dbd33ebe39aeabf57b3cbaaae5e5b99088d9e895d5e8e89588e8f2d9b0ab24b755d668928f7a1d7abddeeb988f0809366d7f107c7776ab2c06addb3663e3d3a55c5665d115d02faff96a6767dfca4aff44ebc4a18fde7b2ff2bdf7de0f199a0b897afffdf71f7bfffd4fdf5fdd5ab8742c6f5657658974cb198d6e8b6ea31da2c38e63326225d8b4fd41323b34bd4b3238ad7cb5cdad360959ac9cc65e611143a2959142563b635a77e6df7bfbfefbdfc63bbeb8ffbdb71f7df4d18f1efdf49391927e9dc16870b95dbc22339f5435b7e1d73be6e72623826722f9a3dab6e3df1d26c9f8561b43ad12b2d850dbd8456c21640637e1b550cb3efcf043007b3fd27dfdbdb7df7ef4a3c71efb342664dc6f77cb25336e557791ca17f06e78fd3bdef9b988986065fb2377d89edef51bec2d56974bad32b1d8958d784ead4a7691d92c597af5d5975efac94bc4f8f0c39766e081a86fa4daaa2a0f2ec8ab4d269baa882db34c8febb797b7b7e726576282a9f78fc61777f5d316ab822f715b6d7413b11a8fd3916cbc5c6324e07de92737c7cd972f21e0da699f7d666686dd6863987a978c16c7a4de3fbeb1bd111213f4863f1ef7eee8a77d46ab5a2de13368424e259b8de7e4ac64823da8969600e94f7ffafbdb4f7e8a782d16ff2ed434339b381bea8c7c5aef9dd34f3bc637a0b00573c3bf718743db7affb05d4493ab692a3a9b29e410a78d64734c66934a05781b7ffad96844c63f79e9654f6d953f32d20a1d5d119e37cea29f7738f481e58deda8b560cbf66fb343ccf63cb8afdcaaa0f1d542218bc121cefa542900be6693ed25db4f7e7ae5ca4f09b03fc53dd03e7cf5e5b15ac3baddeec26b8e99dd2e5f60dcabf77a772627432262823dc5bf1df7446def4cfbe472b9dba556e3b204a1dec61cb689d18dd7bd034768fc29e1be3ffde95b573e04f17a2cb8e38ed9dc6d9b715bedb842efddd8d99edf8858890986de7f8737664dbfa19f1eb618e572a3c4c530b37bf1a49cb83faf19101280b1b0fd642f4380f5e289fbec2ef58cdb35e38e9cde99d7cfebf51b939351212bc154f6efa3c3dcca8ede0f782d72ab44ae50b3d9bd6c36bb12068b6dc25dfc41c24b2a1bd8c44b2fb95e7545ae0f47aeaffbac6ae8285c76b74f3fbdedddde989f9f9c5b0b391414efbfc71b8839b4a1f7ebd77d780617be424933b14d6c5ccb2c2a12025b08606ebb3d124ff2bfbe1e891fbbc3eb2e97cbed76c9ed16bfd7b1bdb133bf31171515111514ef2df0921c513bd3fee975ff70a4552eb199d4ee6e13cf8cfb3a14e1494f4d6abe5c6ef019fcd3783acff5617c30baf19a15f648c3face8e7e1bf91e9a9f8f8a09ae53dc02afa7a5ead0cef4b47f78d868943b153cb74905069c8327f5eeedc58b292ca9547c91563b4692471aadc64818600c76977dd86e0c8ceb37bcf360bc87a2d6d68299f75678ab1a44fa43dbe3d37e83418e875ad854361594b4caa2460e9ef41ffa3836dbcccb75c95c332a1b9ef0df3d639bb1461af0fc88fa4d30de6da01b1212ccbcb7c63b66d08ae60f6dfbfd168bd16095d370f24165e2e0a5571a1b89bdd5a1c9e08819781c26db3c2399714bcc2ed7f0badfb73e3dbee1d56fef4c1e9a0f89094ee6dc727cc5332812f127a33686d70d16b91dfb6315c364de4bbf7803be1c3687cbe24088e85699f132c566b7d5e7b3f87c7ec7bc7e67637b3b2a2a662de6de20cb5b746d5f213588442da490f777862deb06a3d5a9b0a9acdd78816d3c8ca588b82c139bc3c6fdcd7acdb8548c7cad46fbf0b06f5aef9dd76fcc6fe0a90d63e682a9ecd6785b6422add13877084f960cad0598af0c2ffc01faad04c048195a0c011b8f00ea3513d70451dbed461f88777b7b0e9c777e6d6d6d65722ea8de5b07b32691dc094df136e433cbb0dcaa96d86c6e9e19f7e9ad2c427fe8c5235a3878f465232036e38e50e00c167f2030897027c119561c8eb9e04cefadf1b6942a4432bb91af07f94efbac76b784a7b2759bbb796ce2a20a9578399ba2ee22f84af79e7871577f830117e2e7e6b7b723a262a21ce3e393c1d47bebdc6b10f1b576895d6e9fdeded14f0f43f8555bdd6e53b78d65b299c1767b4d78e0b019af2166ee9e71dbd4ae48603b3c1d98df704c1e3a14b3b6e6d53bc6e78313e9b74c0e50da2a240a89dc60947ba07db3db21e14a242e777763b749c561e3a483b91b9eaecc803574bbadaea5c8e1617f60b8766e7e7263fed0daeaa4d7ebd005773cfd0ff03a9d22194dc177898c7279607b7bda6eb047f2ad6e4808663cdb6c37645d34623c301b2f2326b7e3459ba6a703014708f8eedaca86dee118d78ddf1344794b73d002de5289c86ab75be546ffeeceeeb0dc2e7719ad80d7855392dd98c5f085ca3de3764746da23fdfec0b6773b301f029d30d2d57bbd9bcbc199f45be36d718a14920a9a446b75598d92e1eddd754ba411ea9bca8d17bd839c60732fb90071af0d1e2323237d7eaf6e637c1e1be1989835afdfeb0d6cea978378ff83dcab6d699151156a09cd6ab5abadf6c0f6ba6f5dee8a14b95c38c3c09f81079c679881a236e39a016798f606bc73dbf340772564dcbba903f1ea96c783786f8957e76caa1029945a895ac697dbd572b97e777877d80741c2eab6b95c33ee2589dce892d8dc2eb54b62b747927c8e71fdf8d04e48d44af4a457e70de880b06edc11c47b6bbc24a7a8892fe21bf97c8544020e2cf70e4faffbc080497699dd6a5749e422b91d042ce12f59237d1ebf57af77cccfe3894e431c0e4740afd779753ac74610efadc69db5901c4422894c629558f97209d437bb777b67d8e2f31922d78d5a50b1761db2b0dc6e34ca8d065240bfbcad9f9b3cb4161dd333ae0be81cfad071c7e6a6c31b4c0eb71a77379344ce16aa524395a8256abe556bb55b253ae28216bb3e18dac148cff0a841ae35c27ddd50abc795b5889043d12b21de39bc96cdf8b8ae6a5ca7d705f1de12afd3d9d222e253150a9944c1e72bed76add322f7efec4042db5df74f4f57590210c40c16e82476a10f065b38b4b616b512e1186f5ff6ebf5e3d0523874e00e41bcb71af73a5b9a44329952d2221359e572ab55629769b57c9f7e1acfdf30bfa3df01abd8de01cefac0cece36a4b1a898e8a89549b05d6885bd7a9d1e5a0a1d7c16c47bcbd86b113589a0ab5034817e6550dcf02a774ebbdc6098df39f4fef6fce4fccec6caa10def3c30de86163822246ab5352254ef0067d8f0faf5cb8e716f9543e70d766db7c6eb9489aa35d56a91ac85df229188f87cbed528b293a08e556d1cda3e7468322a2a246a673e6a7be7fdb5a8b588d6e8899e4900ea75e8035ec7f8b207b4ababd2e9826dc52d73592d09728386a6a4a1fb2a654057ade6cb213e189d7623c9bb1132391911015c43e6d7d622a2565afb6737025e70840d071e4bd115a8d55555e9aaf48ea07a6f35bed0d0d2525a9d9baba049944a65ae528d054ec197f08d5663b3dc2e8fb41b02b58ef1a1909e8888889ed690437a3f3a2e8c2a7dbb17c87a41b955b58e6069fbf7e3ae2ffdad97d40ce2a56af00cde285d99530e01580945ce68b73ae546adcb6ef704f4baf1b0b9c9c9f90dfd066876dc11d81ed73bf47e9da34a57abaf72e8817010ef1ff4120f3cfcf0c3f73d72a963be96d422aaaed6e42aa854354d29e12bb43268dd80b311fd019a0a83cf6ef49140a67a9dc33f8dbaddf0823b78f59bcbcbfeda5af4068f071e1dc1f9decfe0fef373bfba8423635e47586f756ea912044ca5d2682275c3924ba4905b5d50e140c1f648bb8570e2e1e1751fc4dec0cec64e403f8d9db03e106619f378bcb5639e2a3c2d7270271d627ce9e9a79f26f0666e2e0f0e36895a448adcdc5284aba6aa95ea06094dade45b69d0c1196556bbddceb74712e7e2f31974907df53bba1d3d2487f1daaa40174957ebd705802e78f0dc6ffe3908788feed30f01dd82f1e5b1b106a748e4cccdadcba5f2a934054f4d9589687cab8aa65453f95aa39d2fd7da5d5637a8582eb74cfbfcebbb7ebfde0fb61b00f17a3c9e00d8432dd2d539e6b67ef5dc3fdff6fb3adc85743f06bc13cba3634d0d0d4ef05e452e3597aaa15234e00e32258d660523c6d90723747172ad476e9f9971bbdd3391e00f96801e0057e9038e717f5555ada556e7f1e8d01c3626633a7ef5dc730fdcce0e7cc79d5f7c17f13efdabccf6aed1e666c0db82d60b588170aeb29046a1a8a92a099f4f63289b203f182572bbdd6ab5ba5c6010f680df62f04d3bbc81406dd5b467536f20015e92aeca03021e1f8f5839f6d073cf3df4d52f3c785bb27df01bfff4d81b6fdcc4bbda3536d8d054d1d0e4ac562873a9945c1a55a4a45029349a82a25629f960c0349988af1419657c394ef7bac07b0d16bfc1e0f7fbab6a03168bc160a8b5906a6b4955600fb555783831d803f0fdd7f7bffbc3db0feedfeffff5819701eff34f3ffdfcd30fb50e9e6900bc4d0d220514361a05ba361a8d4ae151a834aa8ac7e3f354741a4d22512f49145ae82e0c7683c562f15b86b5c898e4f7580c46a351eb3490c01888c6cd313e17d18a789ffbcdbf7ef4c237eeb8cd94fbeb0335bfbef6d11edea73f7e6eb5a1a9a9a2b4b4a24986787329b9541e4d915b585848c9e52985369b9ac7e351a095a32941c25aadd1691905c10e1b7d3e3c459113ba0eb9dc09a80dcd50dbf4b5555ec41b7110f13ef7afff7ae3c6ed24e03bbef1c2b5fdd7f61f00bcafbc4398c3d30b4e805b5adad222524261a351f04ea3f0e80c902e83c11032f0fa97d45cd0af4a22e14b2038d8e5469f56eb3390481ec8ca32ad512607fd5a0c9e5a0f34173ac7fc64c8d01edeef7de7b1175eb8f1dddbc5827ff84fbfbef6ebfde1d77e7dedd1375ef9de1ede5f392a4aababab4bc11b002f95964ba31516c2ad902e140a55009765324195a32a2556a5cccab78201831b18f0f45a16ad5c2497f0e173039eb5d783e60b78c7274342f6f0fee63b7fd7f6c2811b5fbb2d1ce2c1bf3f8074afedafb976ade6b7affcdd1edee7565b2af6f0e6025d286c149a9402a58d5ec812b284a05e78a2abe854894ca6e5a37af940d7e201b65a27f8021f148d7bf5c80c0648bfb5987be7e742e63ec77bfec0f917be763b08f8c16bd7ceefdf5fb37ffffef09afd692fbf72333abc7bd009ead5406c8040066ca985741a8347a1d3852c2e5dc861c160b284423a4da2b2f2153205f417ce261290055730ca157cb5442de12be44627e0adba29dfcfd4fbd077feeef481f307be76e3c68d6f3cf8572edd6b07ae11686bc2b36b6af67f9d7007ac6e0f85807c35d5a54aaa92f05e1a8f2295826c854204cb61b3382c215dcaa341234755a925907d254ab9566ed46a49325cf2b442a8e01bb586663fc6325c6c83daf6eff0de008b78f0af172e94337085fde1e1e180373b7b7fec9e7c9f878f05458546a35040bf86533960bd149e142fa82b66e039cb384c78644179a350f09b3408684a991c0c576be44b9640bb805c269169a1b3d8330734df955f7d8ef7fcf9f35fbbf1028c035ffb2b050ca6fbc201026fcdfe6c009c9d951d9efdf6775ef9ddf33840be228da61a8d9748bc1079e91486908bb680e7a837714c2c9ec9a6a2d15414785028957c2578add12ee1d3246a9e1a061fd56b217970d6c1ebd5fd11de03e7cfdf40bc076ebc70e3c63f7cf78777fcf5c145b6d70e00dd9a74946e767a56764dd26b447143f98ed8151a050db4cba7500a79520a5ef095524801f76532012f4b65b215827a81e41210552a5ab472f004a87312950adc01ba39103314369c30f3e26e6673ab0fdd2c6d2fb79d3f7bfe851b07f0fd858c0616f10fdf78f0af86f01d0ffef09f90ed5948bbd7b2d3b3b36bb240ba5959e4ac6cf2dbafdc94ef330f8550d11cd01b0a2137402cc3cbe2412413729850dbc0874d361b58324d4da18174a1c0f1f94abc70bc5ac5b0f1782aabc8e8d45a2c9eaa009803f415cb735b9fe17dafed6cdbd9032f9c3f8f7c0f1c203cf86b5ffbee5f01e2077ff8f7ff74ba0d7fa96b67dbf6631e03e5026178cc4acfcaca46f912749f7ffe57f25c19e095d0a09fe0a90aa5523a9daea08b59181c3860bd263c1311af900756002d339f58a707f1d268780d79154f6de7430caef513e64078efc84337db8aaf9f05bce741c150e16ee0fdc60b7f0d841ffcc6df9f6d3b0d75e5dad9b3d7ced69caed97f2d9f9c9c85ca4d076b20c791d3c9afbff1e23b4017c6d3d12a8526179ab5c242291dd9c203e432165e16a48ccec50b59407f01964c51a97990801554254d05601974fcb20acc5781ea25e192906e19cce1e0734fc3c773bff8ceeb67dbf2cf9e3d000a3e7b1eee67c1275eb8f102c1f8c677ff522bdd8307ceb6c1387baded741b94b3b67c7880a2969e950ad60084b3d2c9f1e959877ffeca6f3f46bacfbcf95048ae22172fa4cbe3d1e9e0bcd013f3f69219930b1a86de189a631e6d8947934868123012be42024d3378085076f1ed1291134fe28bf2752c43eefd15b42b70fbbbdfa6c17b0ceff3b53650f08103e7dbda081f462326c2da5f66bbf143c0da069b65dbe9fcf0fc7c788046223c0b2a5aea4dfd2627c72510f2fd1dc07dfccdc7dffc951398d128285ca0cb803b9d21c58e82b86c104e3c60d553a997683c2b94346b2e155c84ae12d279e0176a0974151612248780cee1181f1fdfbad9b1bcf152ca691c6dfb012ff8eff9b66b67912d7ef202caf885effe253ac437f0576a3b5d733a3f0d3e90f0fe1a2c68e964c09b9d9e9e1d9f1217174f3efce18baffdf2cd671e87f166075f09950dc0164a3138480b71c307fd72b0b760998442bc2a05b05453153409952fa1aa09f1e2d9e8d556be4cab05bcb59eda51c7f2f8f8e4c16708f5bef3c6db29f9a74fa78587637d43a66d6dfbcfdf78e1c0f9b36751cb58eefe12f9fe3d0085ad323c3f2d350d467e1a7843566a4d723219934356ca91f8f8f8a4a3c0f8e72ffe620fefb3cf6f4920371412c2958258019d5058c7221c02da0a9390a1a2982850c7a83c1a4d8dc6abc2e93422aee1ac8ec14322722fee9e1efdd03328dee77ff19d9fc1bb7b3a2d3bbfad06e5fbc2d9b69a94362871f0e2ec59a2de9d3dff8dbfbc38f64f04defc7c409b9d950671acad262b2b2d3e39854c268cb7263e9d9c9494408efbd96b2fbef3e69b04df775778149c2703d162692b54c1762f144a5926448c9367d018ab794b6a354d45a5a9112b8f817ae6492438c96380ca46cce95439c60fbef93c610ebf7d2d15dee1d36969f0b8e70e6df9d7d2dac01ece235e607bfe2f90efddf7ec4f05d1e4e7a7a6a6a4a626a7c0afd7969f9d9c129e90100ffe9b0e09223e3e21e9c8d1d88423680f8f3f8b789f7d68de8d8e0b718c01c90c18f384e24221132774d07de90c61612eb474aa5c1e854ae5a9c08a1968bd34e8e1b48017c4eb713a2d00b8efa1c711eff3efbcf261329a13fe0faee59f252ce17476fe69b0dff328dfcfc63fdef91705777419f0a6a174535309c2d9e013e1e929e00864726a5a567a7c564a4a5c6cdcd1b8b884c3680fcf3e8b789f7da8ca857c595ca158c8931616aaa0a2d1b1baf14c0c21863080c983644ca1415963d06de00d2a868a2751c840bd461269d0e334183cb5870ebef90c81f717afbc9e9a8ade0bff8bfc6c0889076e9c6d4bcdca3f7dfe8517da08bc6d44be39bbfae5bf14c0777fb1a1a961f0f564c09b9f9d9a9292929a0ca84f67a7c6a7a7a603dff4ac94742870f1e9f189b13092d01ebef7ec67fad52144305bb118c0f20ac11250be62167c8296018db1121d84071e8c8917becf009340eb6dd0929c069c44b3e8cbdfdd13efbb6fbc16979a9ad6969f9c9a0ecff9e789da76fa5a2aeaf7ec696ce730e0c0f8b427e29ebf84fd22eefc724345697545d3ebc9a9444d43f5a290c3d3b2b292c9d909f1981cb2c8c9d9c9c920dfa3714740bef7bff8e23bcf12ee0b7cbd362171353c044b0503a633b85c168b2ea4a37ae90c1a0f1a66b85329481727d4e8a065e8e2a02b766ab55aa870fe955f3d8bf344cf3fffbd57de4e41ac69f026a76465a79dc564761660a7e5ef3f7f00f142b8818473faeca3b343ededf7fcd99f05e20ba48a528d4653da0278b36e9a430a39353d3c1b2c2125e5683ce24d494d4f4e0797888371242e310ed219f0fdcc1fe6dd7b59812b84f8001d1c3171c614daa0cb0039530bc171a1b9c3a5384c6df0b3740a9803e432a7482ee7f3e5c3f30b600d88f7e3375e8b857719e8a6d6a424a7e7a7ecb9433e4418280c0750b880361c63f1f998a1f6d0d0f67beefcf3f685a6d2ea8bd51a50effd29a9441ebba9def0ecace4f8d4e49a84646888d361d4c4a7d464c5c5417a484a483afc93175ffce5b36810c0f7dd49375dc840fd32187575f442444d88d98446ac82ce8247c7484661084d26269758c5e02b9432a548c6b7035e7fe7c78f23dda741bc1fc6a12f85c30338544a6afe5e63919f929e129e7df66c7edbd9d3507e31e3a47d3ad413b619da1ef2e77bb5f33bbfb8887b83e08afa85c1fbe3097320e8a6a4a564a5a58467a524c7c5c7432acb86e800233e2ee16812da6f6262eccf213e10ee0b80df5d71db580c8e10ba352c715c16b38cc9253a3742b074bcac85584a489cc3618ab90c1e55c99701613cd2506298fdcde3cf10d6f0ee2baf2521d334506f2ab852767aea9e3b9c4e0567cacf3f9b9fdfd6067053816fdaa39dad3de00fed115ffdf374883bbed0dc3c38d8dcdcd07ca6a27971f1eb0929297bde0bb50d92436a72424232c4b1e47832d4b7e4e4f084f49af48444902e108e8bcbfa9c2f00fef813b909d041370cb68b648b8b994c7aa114f46ca217e2ca31ba0583c36131994c0e975148c30305144ac992d52a1ffacdb3cf1053f4181b608b49437c692935096428ad6d382d09358d4c4e494f8586f2f459229983555c1be9ef19ea191aea8958f9ea9f618dbbfb2b17ce9cb970016ecd83171a16c7bf9e98f2796903bee0bb35640c11e49a747085e4e4d4648c69b15989f171878f2426c5c6bdf6e26b1f3ffbf89b84ff3efe1b9f0d2f3e2a007cc4940ee0e58a9926ccbf2aa28d63625a1360b70cb1824e851699265992a8adf250a04be07dfe77affc3c09fe71086520ce347873e17dcd27f0b6817ce36bb2806c7e5b1af285f720e1d39ed0b0b0f6f6b02140fce5bbeef833f38553a77e8ce3148c33a79a1a167f9d181fbfe70cc9285678484b4e4e884b8e4f87d7c9e478723cd15940ad8b8f85ee22312e89d02f1120d0200e9973f0c4a7022690e5088a05f044a0461be6b2041c6671f1df541697310502705f5cba57d396786a79d727cf3ebe4717eb1a6e38f9a9c969a753d2f2619bc942772026cdf253606302cf4a8548bca781c447db472f8f5e5dbc7ef5ead5d0d0b0902fdff167e40ba453a72e9efcf1491817619cac1635bfbe871702513c39017e17a009ad533ef1849391d9f12969e4f8c4f078724a7c2c58707c5cec4b045fcc0f707bfa13093ba732475009548b01a200afb7cd2496e4c170399cca4a66255e4153500c9641a128693406cf25bffec99b8f3fbf47f7b76fdc4f645df837d388be02cc3e3da50df19e064f80ed08fe7f297bde809de7aae9190000200049444154e5b5d9e686cb8b83172e5fbe7c7db1eb6ad89fcdb9baeefecaa98b179f8271eedcb9a7a6887bf5a9d7136173443700dd2610b7ec78542f045ec80ee4f8d8f814fc22b4c7f01350dee2c0243e7c652fff3e433cfce67d13ea17ea1ab3182816136c39c4c23c475059897e4c7c195c9841d5d0283615ff72346817c5fbcc33bf78e5c3c3f0dee6a7e384034edba5a2e1a78713d1e174fefe707873c9f886e394533afc4fb37a9aa12e9f6a3a73aa01115f5ebcfa677170dcddf78c555c3c79eedc13389e7aaa1e3eea9eaa2b7dfd682cb04c49884f888b036b8d4d06d229d9e129e41432843172424d624a781a6caf50e9c089c947621312120ebffec68bbfd8f30714f0f39f50383904c1b2327810b338652ca910ac02e056fe3fc0f76ffe060173b952693d0fcc01b4fb39ddefbdf2f3c3d851a4a2f342df067d0d6c325960be070e40220b4fcece4f8b85373605131bb191251dbadcd4d4d4d272eacc85a6863317062f5feffaef3fbee8de7bc691eed413279e3871e2c4f1134f3c51ff443d0ccdeb1007401fe4789cba017f48015748250a1da8371b9c176a376c9fe1d01f838852e39292e2e2938f407ffcdb8f716e9d98a27ce6377e262085b2c62d2e6671b8b86309a4069380106f714e25ea97cb2c03beb93489fcc2278f13749f79e699dfbd08dd704a4a783e9a6f5b6a765b0de45b7863c9d8b89d85d76d69d969e1b0e190d330d9a4249053e23e1a6ba910b5349522e453a72e5c181cbd7acf1dffcdca5d5e1c3cf5e3934f01dbe3c78f3f79fc89278f9f181810d74ba75e3f9c189b9490901487ea0509a724e3d403746bf04b2501f4f04472567a7c723a393d3d9c1c0ff52f360e0ce268facf5f796daf4126c6bb9ff0b9620e96376e199345970eb0c4628c0c681a5ca08cd2e672c50c6921857fe193671e7f666fbcf3e26b49f1f18017b6fe94fcb3a0e0fc700867f09ea69fc6493368d193c112e2e3e3e05f864a9b8c59f1d15199a8f4545329e4f6968aa6a633cd63a357bf7aef9dff8d70bb462f9ff9f145a0fb04d02d3bfee493c707064ee0ad3ef7f5c3b1d0ef2641db9b18079ce35212b2c11c209f25c1ef980da69b0cad537c620d2e0a9193b3d393130e437c48884703fec5e3bf1fef1ee209c503a05e26c324e40aebe0ce2906bc7f532c80ba07d1812b6609e9420abfe28fe866615a81b490929f9dbf3f3d2d1b4ad87e286ee4e4d3a8dee4f0f0d3c929a72114421607c6f0f627c65fdb14894a5b9ae05e71aaa2a2020ce2f2f5abed43ff4d11e2de7b1ca3d72f40513bf7d467e27d121ec0229e183821e6bd7ef8e811d023f60cb147e392209185c7417503d9c693e3c80909e909c9f1d867a4a7808241cd10308e1c898d4d20c7be0e09f89dc7dffccc829fff8d82555656c61548294c96b49e414cf810ba2dc67b5919532ce68a974ec57c06f7f1775e7ce3675035619b4f4948ce4fc9ce87a6f86c7e1a587c7c0d391f67c9f6a7a5d5a49293c90968bf587bc98037715e26aa2ead2e6d29ad28ad40f982ff2e5e0d6b8fb8e70b77fe37d8c2e8e805f0858be73ec3fb24e225080f88a54ac01b8bc23d7a3436f668426c2ca4a20472526c425c7a5c12392b3e292b31390b249605b90c6a38a817c8c76182883b9afed22b38037c53becf3ef3eea752b45f0e8b25ad83de8d51286632a1d609cab880bd4c5c26ae2fe4b580761fff8cee6b3f833a190f669002d9b626353f3c2b2d2d2b2d15f826c583f99ec555947c809f9c00f1067237fc74526ce2e1f7ab65d500b802f7e5ae683a75a6f90ce487aeaeb0b0a188ff5a09dff1e5f1d1ebe00b907311ee534f00d4e34f205cc42be61e1f00ef3d7c3816d01e399a08f7f8d8e484aca371d9e4c44472625c5c3c3c41e14b84cab237fb9000c50f36d48423e0108990200801efe5876750c0c30c2e0c30de42bab0ae90855c21329471a1b9e08ab95c9b2ce64da48b4d1f6a373621313125392e0100e763f3989cba3f3b159ac484fdc9596d38c79b065601e601db16f84232987eecd1c4c31f3595a27a4b895de52b40bd302e2f5eefba0a12feaf9c89b8fb9063f1c219f08593e730ef3e4158ef71b89f78b2ec84f8c4c0891362eacf0e1f394c28f7c891a347128fc4a2bf251c01bfc83e82f36447c20fc7a7e30c443239b1067a0e72722219323084dfc3f0b347e3d0813fde9be2c108f1f4ef96185c1e94b0fababa4206001d282e9696812940bf0c5d9bf210268dcf9d01e498087fd5d144eccc4e2767d5605e81be2221f9685cca69dc69e7745a780244dd042ca7f0c37171c9478e1e7eb459518d644b51c115a708bc83972f8f2ec2b81af65f35db7ec797e797c76ed27dea1cb6130460f407247be2380aad0ef01e893b1a870d2f782f08362e3c113c00f3410279eff7c295a16c506f6c7c3284a4043239252d2d3e2eee305844fce19fbdf4ca6bdf7bf3d93dbe10b7ded91552c077c1080aebeab9d0ca958961804fb0c4b6dc431fa3741f07f162558b8b4b48c88a4f4c8f8dcfce865c0b7f6b72561aa838855829690377380ddd5a4d727a0d6c49d8db4085231f4d4cfefaa242532142fd969e3a05ea3d839328d8615c871b7472ff2580efbc675ed77c069be073e7a045abbf89f709244b3c416113730b7f76187d342e0e1f6371491827d021d927851f2543308bad892393d393e02be9e470004b4e8f872a979e9042c6f5a1d824725ceceb3f7ff117ef3cfb26ae2243107efcddf797783c0a7d8aaac8158ac542ae7400fe19486b622ecdf0cbc7d179e1277f8974e3e39252c8715041d353c9e8bdd9fb53d3b2c122c0e793c9a9a77135737f6a783e4a3a3e092744c8e04d20e06b3abe02cd17ada1e2d42980dbfc195de26971f14fbf2077f7a1f9b133a72ac076cfed29f729c27cf7e40bae40d8f0712ee567e0bd680f47c01ca0ca25c61fad894b484f3a8acc93b2e312215424901393c849f1585d926ba07a4385ab212724117fe830580a5af02ff6662190f0c79f1a243408b8b985142e44b501e827caa0c80979b2773e4b71a8dd441cf189471353c8f1a9e189a96920e0f8d46488c0e909f11009f3b1b6a565e5d7a4a6248727c2ff223e310136af234713127614b9b91a4db58630e05304e03dfd5ed81b972f77fd892df8de438eb1865315680c7b7421f44227bc8717fd01f13ec96522de2318cad01c8ec42661b64c48ca4a4e88ab399c002e7c1478c6c3af968e736700184a4c38a83a363e2511de8c242c8947938e92df06c06fa23dbc0932fef853ad9dc7a8a76aea347552719d18ed81c9a5557ffae633cf102207dfcd4ac0f49c0c51252135293935899c9a9f9af6ebac94b4f454e862c8f171e4fc36506f4d567e1bc83719132374c6b1f07f894d8c7d4c960b7cab35d584f94276d873870b38cfba6715a38b5ff8d3d2d5d53610704fded4eeb9276e9a038633ac7010d07e54565cb787174b1b7a2fb869627842727a522264b3247276226a38313c31810c692d2b1e725a52d2115c87833e0ee22ffc99231822c025eefff96bbf7b16cce1cd8f7ff9fdef1ff2f0f9144a1de0ad978ac5655cae94a112797ef9e6de78e7c59f67c561f2484e8887449b4f4e4e0d4f480f876006752d3b25b506d59b9c7ff6ec798c0ea753b352c371b90f5c1f6a206c60873f1251a9b9d51a5c2b2c2dc5ce0df5bb37ce9c21c43c383afa276c94ef9e770c369dfaf1c93db6442623e042f0fd3d5ee8dfb86534c27bd177092b059140b52123c8fd87e39392a0d0414d836c964d26a625e021291b5f93d353a0d34b823f90144b7876ece1fb5ffaf4fbdfff87afed875a79f8ebbb7c1ae0adab93d60f70a5d0ac51e4c3ff72e36b5ffb87ef7ffffffde56b3fc73f80710cac3b212b2d01ec809c1a0ede4b4ce9a681dba7005e62c7c2fcec54dcd1253925091a1a686960c3898b7dd42352ca72a91a05e8179bb7cff2030af8cca9a60a043cb6f8275beebcf390a3b9a9e2222a1727c7f0f109ec293e3306ec2c9efcd18f4efca8985b9885de7b044d14ee10cd401f09b0e1268068a1adc09988f8233547d1f2e2f033905122f9685c562c392b3d3616847f187b38f83ba0f73b4cbc80cf8fc61ecedae1f37953f5f552469d944e174a251f2541be8e23b614502e6c29e8bb4713531393a15b49ae3992129e9a958dcbc5907d311c26a7e2be23a7719a1d068486a3d85840337338317e7f189f964bd1a0016b88048c165c7153c01026d08f9b47bbe6fe347ceffcca06d2fd839a4608770fee137bbef0e4f11ffd8f1f41a34ac982e2140b31f7e861f4de84d884a318ccc2e3e2b28ec68313c765815ec192a17303a182098360a19f43e7484f80d7b1d893c421e823c03d163f41978172e730fe7fb55d6d685ce79965138fafa64ba06cb309ddec42684cc2427f94e6d79dfbf1de4fcde81d24185ff7feb08444060d8e64d07a2c145bf2957665b9081b2d480aaeeda8a6b89b18436b22b2586549bd04966ce88f6d9a7849d1b6eebab1bd5d376d69bec0e038ec39cf7be594dd3f4bac5e7dcc8c3ec6c99973cf73cef3bcefd544df89fd7d6ccbed1f1dfa37c7f5684ec2907d23dc0160607012aa14da1bbb3e4bdb198bfe2ce31aa122480d7bd3dc02a52d69f4fb9c032688913fed72e3d19014b82e37321e300e98532ec20bb7b6b4fefa1f07df9d7ffead75143501f7d83dc515ee1a4d60665b5c3c383838b867cf70e6dc13079ce45c6bea26112b5c16b2a51342079c02c20b6794035d08830ba02d27893295c8af415412fc22b1cbe511e1766ab7df9a9f185a00b60bcf0c4ccff33bfc1eb51c69db4d50a650b0e21cae2189e342c56bf0bc3aa5efb534ac5f9455002f7c03e714a034aa29490cb17613f554a7bf6fb43904fe4e92c0474a025321882ec15e3afbeaeb6fff111ac13bbf4cee8aea1e25a625b6c7b66401a80eb616c15dbe558775793e83c45ecd03c56a85a37238a1c49126a54edcd0c61dd8352f802a001e4b780881504a83b678c3bbc373c096846d9be3ee1ba79abb2f9f78e6c8f4f8321b47e2006d5a14d4495583070cc145a5351bc87e8c9ab6067cd388ed653f476ca375e0000ef81671043589224893aa05cedd6ff68df635879af8581089983e397de4e20121f0e929897380fad5f30f6cbf7f78f4273382aef1086c9c97924bbd25b88476b0d502b6ad6a757722ffd782105076015912a0b005ae8641d3f09b4918e42a703c056e72520c8e3b5ee6bb3015caa57910cd16dc3c0d80c344c0c5d33db53efbaffb9fddbd7b74f2434196f28edfc28fc50a5a14c0e5f95a457524b2c28b2c30d7a7f6c656c606afb6b815c0b2d218b52d8d222780355301053bd875ae7f14f8c29cf42f344523864a1f015d98e2bef203574e9fddf88ff30f6e77807b64eea5a52b94dd63a68c1d2d61167407cdbb3017efd5c6e1e184ceea33ed8538662eca56a832c5fe1f4244842c0a39801785f6e628fae0752d0c3d2b44b4a36b604d43ba800c8762d5448969a27fb7be3a79b96f78fa9f5c8765af16b2e5098d80db75124fd5a13c998af330015fe115ea6d6a6f144710a2224ad7ce9cf9de1a7c701d960db456d0e7089f35ce25fd2ffd03a30bfb49615ed067ba79d9407ce4c8d4ea94b0f7c0e9e5b3dfbf74fe813fd95ef97de85b3f59a1ee6e5196c56c4b150cb6d48696dc541bd5c3df096b2cfff89ff704659715c467f6047a740e5c3c9d21b301468da8a6299da0b4c5208d531c329bb05decd116405c6d7622f07cd285b37eb832fe8dbdcdf9dfc853db35780d4783bdb01eae0d950f680193ba6225237b73d4b93c89d94272556a714da455a450871c10fb841765d1f370d63cd51d3547df42df8281984662c8040d5e150142b1feeaeb0f3cb8bd73cec75ffadb9503274f9e20b2b45ffb168d5918144530c04218aa7c30563d5cfd4e58d634e939087699af33fa05ba5d602a9dc8c42d50e21c985ea09dc35000d450e32e6e2aa15092cf639ecc75ca3a66df7ea067f8b9e55d3559bf5a76355802f95af949a1235d8f50dd92d8955931404c8b18304320ea69bd02f6a2b6c9f29d76ea23dfa5a95231fdcb933dc303fd03c3bbfbfafa46fb89af1cfd9343ddee115edf9271637965fdf5b71f7c653be5e1d1b9b9952314dea3a545680db2035916341ebde606b25bad1e6e547feb52367976b3be49fd0741516e02a801fe47549e314c8410893029200f4e1868d8b29c5da0508648f40a39c42564b886d2d0a67926d1d9bb1e9c58799285cfa66e24540c51785739384b5c0ecf2210581581b6b2accea515220ef87adaae9ff9ee1af5a20d6b5664b193729649bd77a25df3e3035c66c5ad070bfdfd4d28f0e57ea3c29d0e5b95007875697de3fc032f6ca37b78e8fcdcccf2014177d16487d62047135bd86e1dbd50866ab5d118db63e02db5d7730cbcc0139e16a6d4f2a4d980876e9ed0a522ad2a60a9c43a6828097c5da2414d8f5e570caf49ca140828857dfba927d9fae1bf202d4f7e1dde5ad52dc50515b07e11d80b34d96d80bd4d0b2e6548a23c4fd34afb7b67da56db6ca9812b73f02da550119dc87d67e2b9818161ee5c3412d1946de40b500931c29cc64d2d0bbcaf3cb28de47d6965eae4e513c7a009c684b5802d94a12a825072b7da4b6cf1b97178ef2df70f7d2f42591820ff6796ef330dd7a4391681b870aa89b2e88219361228b31c0907f34c1a19938734364500a805217b962eeb9de40977eb8becd227c08a2f16e421d689f60bd8df3a4421cd2c9dd2f6262194e20c8c6f1e83c5f5dcca21bcb1385ff69d6a1ff61c1a188532ec1f1e1eed03be7dfd04183c6e0e4d1ce1152e575757012fc4f7956da3ef431b33f3a72fbec8994f69c250cc8c2ef4b6aaad46b541bb803badde6a6bac81e31bb74415c82dc35e972d9bc4f550d770ce82bda1138579ee86192714b010561864a0b60da8727a602780010678ecc8436dedda167ba101302532b777a427c7402c090f15d3a7f9c2ab15a38ae57cd122ddce28ba6945732f1d1bece919ae3b4d21be459b73a2d88e64215c021153bbe6fee6b9016e181fd80ffed243c045f4f7e103fea183b7231d88efa5d7cf3ff8c29f6e97fa3eba3203f2224eec1b2c0f808c6ad65bed6df4b67a7bcd677e22dcbd8d4675ef63c6a3ca8168117a9e4d45c8a904a11fe0c682e3058e89521e5c594021c8903dc0c924e074d9b03eb7815acd248b9ae80d728adc77d94aa63070e654935d3008c630cd78763f0ad921f79515c439e0053fb54a220f7201e4eb10df3abec69591752b8e7d15c7b08a0afaa2b27766c7b9a5ee194830e0351642ae58d79c9e843a1c9958ed2c2f6d7082bc6df47d7c657e09f09e80300cb60c751785b9c0d71ce02dab9a2133e07de63193a450786cf99f37fe2184e1c7b98b20e133f1ea9ce90228c317c327280dabcbd8065d28007761432500b54d4b5093b9684dcc1ee4d6f808f9a227c593031d884325f7157437cba22877b9c540537b611bd83d874dcb447bc1de7a254e51db72886fe24b6d53a1e728fbc39e91e706fa58dac8e0befdfd40162983575e1cea4e1f803e7458dbde86f85ed81efa3eb2b17e0eda70e28414b396c0bbaf456c1bd5458009c2f60ad80d224debd0d87dc3def2bd6220709ee303ce2c445865075d96e9206cd03d0459102a115094b5bce664a1a43817fae0265e606fda6eada8d19111565a08cf8cf19cb261efb10e06547178659ce44a33b8c5e0ab15446c45fa32cb646d8d02248c94aba67504cda8b3d4257e0432537d1ddfbd716ef6d07303c25d8a2f851821ae6fa89f06a24b743b534b5007c2bb3ddef7f1f58de5a9e9171750d844134a93db00c2c016a4257b51e4882de10585076e4816b6e91c0ce170eefb3ea75ab2151eb07a618410017ed21e28d434d7cd4d094b3227b474e0589e2bfa4b0926a8b6109535cd3376579e982b2950ff347e1d029043162ce82eb5d795f91ed7c7c33958196ed84f87f6e66b6be95a91666cf9c208c75c72c245b2ac95f93f9f1a191674870764036edf70df304b1b1b695d56b7cef2f20a82c50b2f5cf8ca7674d61fde585f3a7b60fac5632f1f3db6d82ab1a520c8d122c2a2bcbda20f0df1befb7f637f764026e0b36ab947a310f8216713105c0f354df9c86b4e4683113052788e650749e885b263c809f8a51a12b25d00c69c11592a26f55754015f80127bd290c427c56e3a5b8cb28923487c4b45793dd629ad17127218c534be697b738ddb8564597a0462ab08d621f0f1645ef0bb739d613887d1e1ddb2b37940f83bda2fe6617292dab0bcb462c4f7b5edf0668fae03dea9e98bc7d9be31d23bd8a03294077c2e384b8580403470a7553d3cfa1b594422a65fda042c3d08a9ec59e5d4c8909d86b01224d2db013d0b686fc60e30fbea0e3bee9e95f1912bbdc69acb3a48a6da740eb532acf1a8f1fb096361e2ab8a8e8202cccd016de0c7bc6604fc5925d2563b8e2bf06059141785b556e7329d7a25cddb5c591d4429179b796c1eef9affbb6e3f777ec2ffeee7475fff7093041e6a4e3649dfd59565c24b75d8863f95be73e3d595a5d353275f64623b6a7a62ecdab40458b1b9d45e11865ea16ea3ca76af5da6368ff56713052a237bc12d2741f15148afbef2e02272f6d2b883c50d90869d1c5404568a662e7025566739e4592b97730c63cc4c4d23d8661505725a1828bc760917bb06f00701d8cbf40de052ae2c86b3d531b5374dd27ad43e63b5db56943116335da8a8ae6255c73fa782f8a7e7669bc3fdc37d7dbbfb46a9127dfd100a54b8e6c8d0d0e444677975f52ce065b0d80e757818dc3dbb8c440c7130c60cf0125564df46b53c5a145c022da9f8f0378613d31d90a601e32df0036735e76d19bb39210422097305fb40a71682b921121cbb6621c4224c72144176dd358c05be2f754f12075b690e1bed784a5949e132fde2575506e39c27916bf9496e71ef119b383466290742c81539c2729ed4ad4abec6bd56ec99712d5fddd29a7b40a0be6c9c3e35d333c14b26358747879b03a3a42ec5e110f2c5e46477e2d4291187b7102c2efce8916dd0064e498f9c5c38767471cf62d9bae92579b7c4017ca5ef6585332857f77edb2d9b87e58de5b8f007d2ce0198060c0e6d00571e967b07950b63867a163a6c3e78810b3781dc668422823e67b9e36832b8f4679e183e0a884ff22bf694c15e36e662a4c00c4e2d072f73cee0b92d1fee16ae37215dd71087d9d469d773eeb95330c1100e9c59caf19f9c9be98cf01aaca577e0bd431c1235c79be39313ab06def30f507cff7a1b4cefd2590e879188f70dee93ee185c032b1beb19df086f954a815ba8ef58abbaf7b714869af85e69fb8a2170436d857e962509175683965e4147c6d11a98ab196ae98185a88c6eba629457863d927f03d63bfab29a594cc933c48796f8aee62429514e25f1bd82ecf5395fe2b23244e1940cde847bd01c0ad32db4d752ab9d64b9aa93d55681da067891766a9ecadfd99818e1557d90dda4aaf5311b8f2ec855c0ba131d03efdb52dbbef8d07dfb062aef818b97a59fb3d8bad75b3045ad4a499042678a9b918ae38f91b6467b25ce6e7a0138c9cb8fc0f7fad45b94369fb4551565e6ee285c59e2ba053e486c27145e522d9202af0d490e979668176770cd68af43fbcbcd1bd21552ecbfb962fe38f6493276d579b929ae2e83f642825d6ea049c1d7763d6d17908622e3b6206e6be146cd48b185117cb8ded3ed32a901de6142cb8b0983bc74672313e21cd64bf6fee82fee5b1b96ae4c71f7c47148ef569f41925983de419c2ea541bc9a7ca7551d7bf1c6bde621fbe01e6d6b8d0389cc9546af8c299061731788035b086f827c0678438e75d85b87108485cc38d8db81d688273603cbc433bd5f409c691fcf123a1650cef182a168427ba108ac9911941b010ee200d35bf0ea5e5194298d209c56a45996b765db737dcd57cc1dcae730c9df756ea9d369a2b88dee1e35dbc38930c01d6f36473a9dd9e595f58d4b84f7c26bcfdfa73aec7cfcecb2c0fbe28963f7e0854f00b6d5ad2cb1056ed5dcb65a7b4f6686b665bfd7712a2463209503954d716261fb84953db2204ca8bcc4cd459e70832261773c08e1c602c2cb110623078772b9cb054b327ea73e789c5e82c170d0ca0e99d8b8c94bf6cc407b112d58ccb4201cebb81d890eb7d31cae8c3b86908aeb5ce017135ee2cb1063bd74ae67562e163a097847cd6541c95d94b64961efc6a5b9b7de7af095575e7bed8b3bef531bce4e01de93d31087b27bde2b72206fa46a43aa9a1832d3521f1c7bf6dba1c175abb4817781cd5861c1f5a3bca114012f9637dfa5f6c275e9c2e1245e3618b3d4a1183a6c3af065c1276946882ee3745076c006a40760333096cb506034a02b901ab85738878ccd31a97070bd7065d45f98033fd1918bbbc0b692a6159db3e51b66dcf4e6b7290e145f573d35bf3ecbab8c4ff6f58b69800e37657241e730bbbadc53b217f03efff07d36cb4e13de694ed9a41b295df35e16b15ed1df16ed0201a60a8bef6d8dbdfc7bfb5e7997d5244ec5731d2d9921c4e90cc6a2ae412875a0820ae0d3b2e68986d7b56011f2c49514e1e19df34d440e7713dfc62b10dfbe71eb17bfbc8da7b273b976e11720af6ea2347721417b3d5887c08f18bbb348437be1c512e02a974089da7ea42b1132723d8bb9f4410616dc115b8f1c6ec540740b6b4eb06b6ea3a7431fc6aa06cf2b916d7c04087727d9905c2ae17de1c2f3cf3f727fdab074faca9503174f9e3495cd04e26a5514b72ab661ab6b46c4ab837be0dc0ebe7ccb366bf0b6c421b4518e60b9925c8a16cfdfa0801fc8010cb70db16e81ae4023ac4908a32da649838370383b0ec85ee99fdffde4e6b55b85a7bff0c49d3b777e75e757ef15ac998aecb5c0724b29cf524956d03944d45f7a5f5ea123e77671b8335869c00b1751b7da195b92d0092b4f012fbbbe48844e10bd3333333bd2ed8cd03e986b062310437847badd892d78df027b21bef7d5d67964fd2c37629f8471386e3a3a83ec8c99a3d7b807699509c6839c062deed9f7e28d7bcd06be7b5eadb0611d1c9936087b5dae214169f35caf30abac032ef9e32ab33c08f24ca6108a860ea5ae86d4e615b85fa18afff7d56bb7ecef01dba77ff6b3a73fbaf3b1468666f1739507b9b68340d5f0fab1e71bf99c8efa960b670bd1d57194474954446c4330c8b541e222cd40e2fa7753043fd2d7d33025c153f31bb313139d4996b4a1fe43c25eb0796468d2c0bb02788d3a3cff95fbd386125e2e1fd9273336f1658dcf20968699e93a0c02ed3d07f79eb892d966682ed30adb2c5282f6e2145532e481382069d096f981875245f6161e173129111060252db024247ba1c526b431ffdab7aededcf5f49d3b1f7f9285997dfbe3af6bd1de8cd3515fa94229d9060ee750cf58de78e1b4380a71ea47dc3d8e4751544f64389421b81575840a309bdb88989e155701babbe6667a66bb9d65c67f270000080d494441544964b5f1fe7ea409115ee0db1d81f69e8231bbf40653f12b179ebf1fe7bbf3f1ef9f9e9aba7240e03d6a0641ad520984bac62ef4ca3d1ab6d6c1d6c167177e6b97354dc4812eaa52336e965d47ae3505b980649039be5b314a10daa1346634cc6d06d2891c3b8a60e375701cf8e1b08067587bf7eaf5affff8c71f7d78ed165e2cfb89afc3c7017b2d1d21ae04f47dae7984f98d357517310236983b42136e178fa28a8ee3422a9d0c2bd294f1ade0e54a64fbbea29bb6bf347faee7540746817d32f9630443a0ee10e1ed94f0bef5b65187fb70be8f708bcad41548aff832d34e97e44078657049d24a60ab4a221e3c383670f9b1da5637cb34b642e939580ed7de33182730662e92124a1ab066bd87ef2d1c95e4d24be02893dd9fd0cac512b3d471c909ce01153aef5ffde0ceaffefd8977affda28e1ffdf9d34cce6c5980b5b26cc257961f2385f870b91a09915bf0d33cca38c98c629dba2983715664326bb350dbc29c575c03a9a336d5979d9227e76766806f77629cba30393e3e32690e36247b7a5636908a4bf1bd0fe7fb97eb67210e17112ac8debd52dae80f18da24bbb1b0b18d4371a80ef22b6307f72fdc704c2fa75cd4c8d98e27a06942494b0af46c2e9174123c06e3b85c87060daccdc9de50f6b5c870b8066a7260af51fd201895eb573f79efcdf776ddbc7abd80af4b003d474b441f686bb297037f9a680d94eb495849627f5366c57875192fe2b892015fd9e48cea56dfc4837a0edc29c9912c46b17e303703fe4ef24aa0876079892ceada48a73bbb0aed85f18575a03adc97f83ebe72f6f416bcc7cd623da3bdbda6cd4b6c1bd2ca219d4d5a3e78a29b89e135c31a198b99c6560053e62ad6212b08016dc845bd28442147156ab3a6d8bff129be362c16ca9bce5c27c38796e245ac03d7bf7ef5837f78f3ce27bfb879f3164a19871d70531487804b260afa5f400b09429e88e49a483e1790e8181e0da6170a9cf013ccaf86f7cd2d0e92ebb95faf277e9dde21406271ed0f67e6d7974e75c7c7fb9b87fac727474678ad1efa86ceeaecd2d2d2fafa1be7df666d83f87eee60b17386e89e36fb548e1e3d6ae06d6db51c3806aa1a1253316879617af79ef8c7cf56fd4be78575cb91139e432061af0cd912974b79370168ce46236e35979838481ff869544125a92291d60488efe700b172f5dad7defce86befdfbd7aedfd0aac5cc16f258acbd5f8c17787033cc82f68cafdca99d60a8938b91deb7aa123dc8d2a706416af5025ceac0d8de03519432eb266b40843eff6fcfcfa0acadbc8df370f8d0f0d35bb2300977ffa7bb573ead412acc379b62409eff37f761fb68ce43d79f1a4d9370c785b4c6dadcf6c994c2dcce882c9add57bf0e5e3b7b626f066012a20f66cd7d3b2e915277ba09c8c86cc96b14460879e53c0986de267328f2d150fec7569e47485bfe640b33d27496415a477e3dab54f3ffae893279df7af5dbde1857866996e0608711afead92e099036806c2a1f67dad65f311a45956f7fa36e919d141a45914e7ed988d348e85543d6d078ae8e2df8793d45fda98e71f979c1e9238d1047f87badd0ed94b7180f17d9decbd0075f8abcf0bef97055ea96cc7cd1a1284b6c54101b49c02b1a2c928b3c1953af8f6defd70bd4e69cc24b569f6bb3c99c3e7be8b38a1c224406a0b7d785e7860d8093295382137db15c00e06bb7950f67242d97b18c2a1e9dcb5dfbd7aedd76f7e7a7dd7bbd76f5efb3dac02129dce4227d38e2b65d1518a1b3e3da57c0fb280f325c78bca4b9154e208a78e9f5b7e54c9236a30e25ce64320ea08c8695a248a5d5f97134dcfbe7b697ee61ce461126f43238097e23bc151b1612f72c5032fdc576ddbf9f8fa69e37a4b78f7ed1b2b57e634ca495043babda211b4658b6370bdcdccac07b3cd2a1dc06ba417c29ab966b924607408b3635493a9cdd974b8ca8cab7c8d49a393459680ae98353b5ac283be7ef5e6071f5c7fff97b776ddbcf6bee53a9e920fbe101ab619952ee025cba0eed05ff673787dadc85749247b2834a84bf1859b401d2b6254389dca55faeaf5d8817988029c091c00bc313f33bfb2d4e15fe11a81e31d1901812770ac12def5f54ba62579e1c26b9fb7b63d3407df3075b1dcf77e7cdf518eda380aaa9a04dc28ad2fb92ca6b7b5b8efe089d16fdb652fc73615ce75bd3c936e3897f8d302b346711919d8ab828a2feb47425e5b2394afb9b5823d1d25ec953e7a993550fa6effe74f7ffddea79fdcb5dbcef59b376f3b5ca69a14a221e27d4db782a98d85535654509a73988f4a9aa84d10baa2223038aec0a9212ba7d0099df202adf5d451bc0097c0eb39bf9b995b47755b9d98edca1fe202be93134704de15e9e9887500bc9fb7b63d6cb4e18a54b663c74ae73068163f354a74a5b47184814fd5c1b167f72fdcb2edad5619577da05ec94a49e6021059d6284077556666c01cba7399a4b349834b6a3b628d64552fd270b8097ca92d5cf1c015d5d9c71f7df2e9cf5036dfbf79f3bf36c97379616aa629cfa1073758d197c88639253b997d2ede0681bd288a3db9929a16fbc0953a2900cf32860cdf49b95c27e0d214fbeedcdc1cccefd26a676202dadb1567d615ed452a9e017bdf36eaf095cf5dd95690d9785db2e9e9cb278ebdfcf2be83070f8eb169b647a2c5e1eabd63700f6463cfd8d83327faa61fdbf17f8ea2bcb5fee03e8f4af9382b1f67e5e3a2fc59eb0f7e36378fb3ece90fae7eed891dd6aeafe278f2e7e58f66f2adfffdef6a3e635eecd0f57c470c0bb6a3c834fe51dceea8572cd85d0d49c872c48a22cff3767d075cf0bdffe61f12de99f99e9e59f0977f3407c7373bb3b3a77885f6b9b9377e508aefff4b7bff07807b9405d61364bd0000000049454e44ae426082, 'PEDRO', '27676', 'image/png');
INSERT INTO `fotos` (`num_ident`, `imagen`, `nombre`, `tamano`, `formato`) VALUES
(98734534, 0x89504e470d0a1a0a0000000d4948445200000159000000e6080300000048c706fd0000000467414d410000b18f0bfc6105000000017352474200aece1ce90000023d504c5445000000b6b6c225272c24282f2b2e3235383c23262a12121819191e27282d25292f12141a8b5f4d29282b15181e2224282b272b2022271e1f24a8a9b61a1b2147322c1d1f251f21263c2d293f322f9d979d424c888c7f7f322b356952709b2c41abadba9ea1ae333d7a8a8d97b9bac4a3a5b1999ca9bfc0cb7683b200000300010701030c000109ffffff03050e06060afbfafd060811fdfcfef9f8fc09090ef7f6fa0a0c146331190f0d10512612793c1f6a351b5d2d16693f2d1f1615a16348744633a6674c633c2c87513b3258b31511136138259c60468647285b3220985c42e6e5ed71381b482b20703b21582913925a42814d36edebf24a2212522d1df5f3f8f0eef5f2f1f68d4b2beae8f07b49359a55337f4122421e0fc382635b3829563324c58769b6775a6f43302a1b17935030b17255683924e3e1eb2d211eac6b4ddfdde6bf7f61382119a15a388f553b3d271fc98b6da6603d391a0ebd7b5b7a462f4124180f0808774026ad6542dbd9e33525217f4529703f298b5641b974534e3125b87c61b46d4aab6e552d150c7e513d22100b190c0a2f54ad241c1c835744945f49d6d4de1b3f8eb077618a4e32402d279e6650694739d0ceda754e3dcac8d3e3e1e7a47661c2c1cc294ea59368569f6d5824489acd9378bb806b204490583e358563597f5c4e4656a6edd1bfc38b78e1bab2b92e39cd36409b4971dec1c6d7a99d203e84c89a8bb747623551a0f6dfcebda9ab615495ae8481f8e6d7d15565543d67d6868f1c2c581c37766c4b55996c69faede2e9d3d019224099392b380000002974524e5300fe467f12081efefe305af0fe8fd86b9fb6cefce6fec0a7e8cffcfefefdfefcce50f6346e9c8db4fe04c3ae0a000020004944415478daedbd895f5bd7b9f55f8f928de7183b499374baedfd698884401262100829082410201060264b46802c06239b4946080b330570988cb16b12c77613c79993a64ddba4bd7fdb6fade748b6d3e4be9ffbbe37bdb735da663606ebab75d6b39ebdf739e7273fc98eecc88eecc88eecc88eecc88eecc88eecf8d71e078f1fc842f8d1c6a1bd87321f1ed87bfaccfe2c911f0bec69f56988157cf79d3c7bead5d3a7f61d3a7ef8d0c12c98fff638a652a9cfee3b75ecf08133c772acaaa3a74e1e3b75ea58cea9ac2dfc37c7de532a53cebe336af589a327d42ab555ad0269beeecdb2f96f8dc3395693d594a3b2aa54392ab5c984f7a06a55a9d53947b374fe3b59e0588eda6ad559ad269301580d2683d5aac2677cabde77f0d0f1835953f87f1bfb73542a83cea43759757a13dee363300563bea88ea9d5aad3a74e667de1ff7a1cf8c971abdaa4d7e3c56ad06bf5062bc0ea40d860a07c4d2a40c6ebc9c35954ff3761ebe889e3878fe5180852afd35b415703b63a1df5aa8535c847700a00ce397ce8e8f1ac72ff8b72cd51994fee3b0b7680a935a9ac7a9d56abd3d3130c26f8ae4167858e01189febacc7f6ed3b9425fb5f037b12f04eed3b8a62051bd0809edea0d5a84c5aa8d5a0d76b755a8356a7d201ad8e684d39278e1fda7f18bdda818387b2f4fe0f5cf79f44b0d259d56ab8aac1a4b51ac45bcd46b3d9a83558cd66b3566b329bac7060fcb5c10019e79cdc7b4275eaccf1833939fbb200ff9338b077dfc9c36754065429150e7a03e469b442b706ab516700539bd10a5bd09a8d4603fd17df07415bd5396772ac466bce197413c7b3107fa8709d3cab561f3b754ca5042b1cf9d4ab59ab316a8d705aab51aba762b57aadd1a8d16868b4142d4a99496736a8e8cba6d3d98cfb032dd78913c7c047656271d22152193446b3de64d400a651af311ab51ab35907a446339282466b30832580eb4dd0369e04a3d964309bb2c5ecfb9304c7104f5197509c7406bd416f52819e0ee6aad1e881560b9ea866060d7883a3116fb52a9d56a3977f837f02c2787b3a4bf6bb65ebf8b1bda7a055a813f55ea7d3e8f540a5d318b438faa1529d5ea33342b4069b11ea851b68cd90a94607399bf18d4cbaf8c754eeb1ac1b7cc7074eaa966803e860b50cad3cb679886b10050816d66a349a50c4ac2a2d499bb52aa30ddd03dc5665d4d08cd9a619f89a2d617f37418090a5820bf08046dd3270ae0066a0b79aadc4aae1b16e8580cd5a138d16b900e2d618551ab34da3b1224b68f53a8d099a35a94f66d71d9e1927ac56d512d8b269458c92b4a537819ec14a9256040383ce0c419bd925d06eb51abc3399342a18adcd466b1017412fa1ce760b198b3db4ffcc69b5ca6a7d95050cb95fda2e03f5cbb91868d3a8450460ba024fbd995101a499bd601a660dc91b4d740c245d34bbd6ec148d320e9ec951536d7abc5aadca07e860cd32b3852f9918af385f60a001680d2aa8d4248ca963fc2dc01aac94307f02627096acc2f5e829951531941300d250210420ab324431d3cad4a14647de2a5a2bb303b5a98407e10e53b09a0d08091a045b2d357f625f76461c19f6841a168bee49c72c40b672506b59c5ac78cf264bcb04c6aca06122d3584de218680fac4cbd3af60b26ad5e715f36646a55ced16c15db7f56d662f8861382225dada42ca0e4b4a1813ad4d01c98c6a05dabbce5e4226769f964f0fbf47ae55fe9f93982c489ddee05c74f1ecd51537a246be2a14f5f404ca54ef5d25a51b97ad62b838a6101540df29e01824f0327bfe90e88b9fc26ce25205d9c3d7e70972bf6f4a9d36a1cc36a13d33e42ac8a0daac68000abd38ad75ad9594907cbc9178d9e93303a365b5c1663c5c2b362a0173032e8f92344d8265bce6e0e5ffbf79e39ba2f0787b2a4004907740352c4e1cd8e558fc0a5a31f30aaea088d254aba59b40e7a2b146ba0bad13be0d5a6314a1584ee4daadddc301c3c7e74ef891c1ef456bd81730138ec750214a47960eb509f54ec1874064902cc5d88073cda75b2b440a7d51a8c54299b5ebdd5689680c61f797af7ce811f38a93a996306211ee7269975b11918a460bbe85419fa251c683556ad554a1795492b16925c4ec02bc32f9c97a14bafc157cc5c8064cab09e3c7e7c972e3c1e569d9649021da70e759c77d14877c5a44a2d2ac8b55cebd24805b36ab88a40499af85d3aaed6485701ce24abb1598d4a6b8cbfd2aad45195f5d46eac63fb4fab040c41c028d94b69c85760b3d8132757c30d5c2fc027b2c6a0939e96d3b5c44fe01262f9bc98b446233fe76c8d9eb1964979375ac271ab155da9552280c96414d5e1c5c0639a2e0b1dc210b4d2b61aa15aea522b5e8be0a0d51b359c46c0c77ab364594e1ee8cd92be58f9f0aa6250d88db3b52798af649205e2b399b56608cd6cc43b74a95a33170c643a8b8333851ace6e71454cc74d1d3ab10e9128c396999f69f8f766833419b25a6ee0668fdde707078fc90a8b4e0bf73482ac91cbde3ac0629517a210a7990b8b1aae2ff28d62c45c5b348a57c8e7429f546d9cafe5a42d9398380c77d6e94cbbcd0f0e9eb6eaa5ddd2b2c332188d7aa391bc6c69aa345970852ecd40a9d54c4c2c2e4e4c188db64a9badb272c2282b0d3abab332e9659469458dc2998d1b1306fdc670669795af532aae60f3c0e6010c7c9c76e582b7c6684bf3b14d2c2e2c2e2c2c2ee2cdc278535753d7f8dc02fe8c8ccccdcd2d4c288265e7c5955c5634b308582f5b6a94d903c6af5d766ac3fe1c932c7dcbe28c56599c859f1a45ad5cfd06d79e9e91a2aea6a2fafaa6a6faa292ba786d5dbca4b4b0b0aea4b034d004ba8b1352f650b668181225f88ade98a1c2249beb743ab5fad8ae72da037b73b8535370703b1161a2c2abf406adcc59698d9573234df58525b5b5c5c5f2dad9d9592ca3169fd79694d4032efc41c355460a5763b6228599c51b38070ee19a54b05b955eb7abe6bd0e9e8c72ee45cc11e669335b45b1c02cc7b8d61c9deb2a2a2c2c01d95a82c5488315b8405b585858da34b7b048573698c5ad41586f94895ac60dd964a3e53270ced15d14bd0e9db1ca8a0bd9b2f8189578a555f294deb8d0d555545f2a649f819b112dd996806d2984bbc87fca2744afe1460fa5004a2f6ce2223bc2aede746cf734b9fbcfe41864e38580d56bd3b955d213143b31d75444b04f34cb9767b82a680b4b4beb8b9aba16e4591143c8e45fe438d96c6762b306fd9a768d1f1c3c455334492fab97ba9ee16ae4acf7e28802b6a4a42423d6ceef6ab6936849b6bea9ab6b41a3843571139a2c7e92c9aa92f50659f6b15a774df23a6a35c902161765d38d96f689688d8b235d4fc12a62ed7c328a59c8a4983d116dd7dc84e6e9d072c312671dd8e05ae90556ab69d7ccd59e2459839e9189bb0d35c67427c53713b4d8b4c78a64056835c639be49d355d042b382766431d3099ba158bd1ecd9c5e96ceb9068988a03a7b7c976c493a669225041a23429315f54b6606d8b62ece7535353d630519aeb5e764085bf9e277d18ad92ab982d30978c6b8deabd271c6d6aa569d3e7de6c02ed1acec85918d19cc057a3d322d011be746ba32c5ab3603166a05d273e77a7b7bd3783b9fa22d4da39d9b3066aa98961b6d01d72433333c834c6555ef8efdca87b8f5589a50f40856338900abd1669c10c12a5e205cabd35c056b4787f29a512ed18ad516353511adec0437f3992258ee4492eac50577956a575c1901fd974967e51aaccc5b996d46add1a6b1692a09965cd360152310ac1d4f8728979edbf93420806d06ad562b3b65f4b2642633077c55ef8e19f0133932cb8743d526c7ae4e9b9ed35a7802b69060a56a012b05dbd171a9e3d2a58e2b7825dbdeea736b60ab04049255d0b26330a44d8113102a9eb2cb2eda60dd0d156caf9ab3d27a5a01cfe6e09c9f1cbdc6b2114ebfd42bb1a038e3af6bf4814bcab8c2370a5a21db599b6918308096fe6acccce3822db77eb0541aacaaddb08bee8c80453832c015cd66f6b3361dbcb152622cc066bc00873cd47aae43c85ec150de8823acf5aead7556c7d3ad58695ab58bdaf45cb8b25ea9951320b9806edd0d7b6a2159ce1f6a653dc5ca7943982d84265e00aca58a178819ac890f8862af5cbd7af5ca55c17b49f15a4484e292e2ba9267d0c26a791683d6ac97d51d15d22cd780e13caa5d704af941954c9d72cbbc4e54cb1365f4465bbaa52d15c9b2ed629592d24517205892856c153f5893b6a1363d3393f18345231720cc46e554066eae5716cdb9b1e3b957ed519e406f428e67fee4be62e6247365e542c60b9e90ada619a07275288abdaec0559cf649d350accc272aa245c3a0951f47b436ad5e21ab934da206d5a9e75bb607736463a65e67a20570f20f0c8c665b994c6fa5c14a8b20c94011ad70bd8e41b60ad94ca32b644bd3d10b354cb630990d3aa36ceee0061c5aba9ea790aa9eef799903a778e696d564e60eb7f4c2b751abb3f58c176582416dc666052ca216147b3d3d80366db4205bdd9999a92d4db7b9238b36a38dd3e7ca665aadac3622da72d79df5399fa5dd9ba39cf9c96dc7b280a52cce98135d69b08a1714a7bd006401f6baa2d8ebd7f0c1153a42472f65dba9c4aeef903572add78ace439f4e5e7ad957c32a663df31c5bed219e9520e7cdf3a21aa8e370443d4bd8c44297d2223ceb054af512b0579f68f6ba52c9d8e542b375e4cac585f4fcc1c204cfd537d30f94f31eb961861b6e11c1d4479fe3a5c6132ab98a115ead563377c15ad92be8b5e6c5b926856cc913b269b0579f55ac7c24954ccc163e9b0eb4a5e9a95a9265876b3273c55d32ad6c4ce46e9963cf73b770d46a36c93e000a9772e5cc9f516336a280e1782e4cafcf489b00b08ac35ebb46a8d79477f8209d6c8196e140fa5be635993d5898e0fe0f1b252b579ee14e19935ce7eb39df3c77e0c43190b5f2b21078c7ab15686562d6b838973103112dc0b278c1080074747470f49a3246e5e5faf57e51adf8416d61a1926615b28b1a260ead2c5e3231cb990fb24dfcd8733ecf75f8a4d5248f5436c91be5f4020da70fa54b205a3aad90152b20cef3172e5cbe707e74f4c2f9f3e707474747bbaff7f553b4cc5e9dd02c991629fdedc2e284542eae9233c6f234062e659aacbb60fd761fcff6b042b532d72d6ea05d1c29ca909522463320589ac0e0f9f39733e3c28541a0edeeeeebbffe44b5b542b6a989af5d0b0b655cb9d52a7bf1194278ea0362ad75376c943924d734c2f1c96d6f3a99975a94a52f653a4601dbab98ecb5d1eec1f3502cb1bef38e827770701064fbfbfbafa60da1a49473df5d249bdeda817ec12a272fd17900596bdd1dab35fbe4127126d46f6943b55adb82327fa8a0ad2dae9699c32b15b37ddd833383f714ac9971e1debdd5d5d9d5d9d98a0aaf7778b8f7dc54bcb694b980833b923835abd35ae54c1c5a029dd6b02ba6be8faad45639e9c398de28ab9d48cfccb20e016c3c1e1f6b774daf4cb76f2ddfbd7d7be6defb30daa760573776eeee1c597e78f7c8ca72bbc33196acab2b294d93ed0259e5fc7c9e1ca693d34cf532afb60b16c60fabac56e9140cfaf42603e3c44857539a6c615d5dc4130885ee8752b9b9f73136c3cb607b41a812efe5d5dbd3cbcbf341fcede6e6e67d7c5f2ae006daae1145b4a2596ebfd1c9a94d14ad8679d6fa9c9f8abbffd019959c5527676f6895a5701430d9cd09b0a5252581715f6c3d771d23118df6248652c1f0c63d68f6fdcbefa082cdec6c4c1f39b21c1c4af4443112eb89c4ba2f107097148d286817948d5e5a3c7172bd14d9556f3298ad39279eeb79c4b36a1517fd0ca2265b665b8b4296d9a9d01318ea89aeaf2f45a34bd104fec452e381e595d57b2c5fef5ca015b8ee2edf5dde0ce62630962a5f5d5ac237fa7c9eb41fd068b90b9793dfcaa9e33a5e520d9eae333dcf67831cce319bf57216a89ca994d9d992268bd7c0f8500f884513431ca940c0e37147b6a6576620d8cb0809dd7d331b1b1bd37eb7c7178bc586a24343317cf752598f2fd024a205598db243447624f28c3b0922dcd9617e8e457bf8242fa5a355fc8f466016d12e64c81681ec902f95726e1d595999f627c7fc2ebf6bd8d5b03373e11d257acd7457946f540dbbc692e164fbf2dd8d9d9d657b20b767a9677c5c9c766464614293de55cf13ca798e2eaf8062e272f973bc807b589d9e34e545649f6e9413b232bae6867ca1887fe3f6ea4c77df6c45c3b0d75b555eeeed9fb9802661666670f0de4cdf6c7f7f39e2d6f0c6c62cc2d74695cb9f0c8df7f40c7551b4234a1bf6e4541091ad41b904a8f639be36f8811ce5ac0459f7cbec9b456fabec392ae201ed291c1bae6292c5e8ebeb9b2dafa840533078f93cc1922fda848a2b5e7e0bc6ea6c85776dad7a2c121899930a46cd2a647962130e0fa9977c2635dae7d90d0e5ae562265ad9479f51ec53b2234da591f854756f47797f5f379ad8ee19c1dbdfdf373a3a3343c95e18eceeabe807ec6e7c82bf5aed06d9eacea938cf5bc8b8c184a40339199797a592ebd370baebf0733c8d7830c726db9179450db9e4164f2e7842b6a9aba9b08e33b3bd972afa660647470721d4c119c2bdde0d9068c72e8c7643b2e40aeaa3ddf7eecdcc7aab3be3c5c5c525f54d8a66e74856ce0cd39980960bc556ab4e6f56ab4e3ecf7dd861954e238b807a7de6ec4fe3c413b24df5b575cadcac17a5c9dbe0ad80502f9c1fedbf0eb2902b3a866bb006081ab06fafac8d8db58f8dadad7516d7b20d436c4b937dba375f2cdd6ac213895f74ecd473dd815979aeb79496740b66b42964eb4b8bea65112cded9198f3bfc2b0d0d2b77573666672e0cf65dbd72b5bfbbfb7a1f047b151f0d76cf6e4ccf2f2fbb96575c6391c292ba5a650517b205d9c545693f58bf14b23c89878bc4e6e7fbf4e6e346b9928e5ef6d3cb22e0c4e25c7a1707e7bdb9a6501289bb5676a697e731563666ee0df65de112ee95abb295a36f70a6a261bedde174064341477bb2a4b454561981b648213b91b95882a4036e762269a3eaf96e700fca399cbc62919cf4cd0e6c517677d673feb08453df10619cc57ea16728e40cfb77ba07fb3b3861ab6cf3bcd437b3ea4fbac71726968c95c6c5219fbb90680b4b295b6e495c585c7c7ae2027736f0f2073c2bf23927bb5765569951b279110365e260224316729563babeb40966a97e4dfdda4474683c10593d7fa9baf35c66f76c6fc5cc72d7c8fd6f13b6978daf4c18171617c69b8a20580abeb0284d56392b97a6402ba0cd6af5d613cff74ce2a1b32ab54aab1ca58acf2e2e70ab777d293c96eb03d2fa277a26266cc6caa56fbe7a909adbba77aeb39a7b67af5cea3d57ddeb5d6df26d7efb69303a619e585cdc74ce4d2c2c74f19ff39cd167c81a95ed8872cd3abdc66cb3ed7bce67bb8e1979869d4e1652b85233a1b801d0203b15d677c127179a36b716166d0b89b9234792f680b3a21892a5cb5e01d9a9b5d9f661977f2ae2f32de4ce75254b8b461616468a0aebe2c57525f5e324abcc7789d5ca55d4780ed3a963679ff33d7387ac8c5c3c39434eae81192c2c08d9429eb4cc548a63bbb4d01e096e45e65d0d3b3b2b1baeb5da6a59bcb97af5522fda02efc66adfecea86df3fef9877b4c7e37591d2260fc8a25f2845bfb0b0b0f0d46879c555dab9f6f4d9e77de2fbac9c412033d27acd33644bd92474d6969416164f55fbfdd3ae8d959559f0db986d18aea5649568d0d1db595c5dbeba3ab33adb57beb2323ded6af00e578fd5a1ea4d91ac18ad72f503f1032bb7786a55aa93879ff785b083c7941cabe7d58c50bc842c97144a4bd0d756d796d4759eebede0acc0ecec6c4579d5c646f9a54e80e52ea42be99d31d5bd15dd7d9c5440ef3bcbd999b5a9785d8968562961d4ece2087c855744e2a4cca9a3fb9ffbc59a63e6f4da9749ab331229382c8c8c43b2243b555b3cc5133e50ac2aae5caaf2966f545cbbde0194bd97042c8317372c5fe99ee9af28afe8c79b2a056cbcae2e09bc8552c270148c149516cdf1b451b966da2e380164afcaa6b45e2c2c95732385b5855d73009c215bcc1df412af3abc551515b3dd83a3577ab92bb1577624cb3efaea73e73afa470767faabb8763bbcb6565d3d0527a8e3481b2dc042bef840363ac27c9effeb721ccab11a336ea0296b2a2a89d7425a4362b371dac11af71c418bfd72ac8f5eb87695224deff894bdde721ad3a53e4ed1f451b3e5e55e6fafe8b62e9921cbc94824e3b991cc2e52fdf37fa6ddfee32aa35c491e05bba7b4640a1174644129607194aeb58eaaab9c411c04b7ee6bd7baaf5dbdd2ab9095160c5041bf97a2ed1e3c7f7e54667041376d09bcc44c11c8cec15e0a51d49aba26d2c78775375c3275ef31ab512ed8adef89d435d496d63729a18b64995aaf5f875647d37be4ae43b288b0d5ca2961dc1233c50d34e7ce792bb8c94399a4ed2fcfb82d2fded335b4303232d734d55932561f5a50aeb3aedd1dd7503e9823d388d06cb276adb3a4a888335da5a8edf1ea5ed9cb75bdff5a665cbdd221602f5d922dc9ecc1f804700b4d39f2c3cccce8e88c98c270c3f09a88b6687c68ae6b68c9b9d659b7521a5ce47298de643eb63b2e7070e834efa8a633f7d495c4cf9de3c62185ecd49a48f67a1fb7cae2651492bdda515dac00e7eeceab9700bab32e7e0e21ac02e1607694f2866a2ba0e76a116d3dc88ef42cb4af75d626eb41966781e80da77705d9fd27734c2695d5a41d2a2c2ceeed286de209e252c0cea5f7752a7b65e108a3d7ae5677a6c1e2f351b2e546aef854c5cc85998a8a0a1ac70c57702e0df75657836c29344b33a8eb2c86356c4aec321854ea5d71cdaee366835ce6c5e82b2a293e77ae3043b6738adbe4ae2afb8f47b95776f0fcec39f9daf5eba3e7b9dde0fce8f5cc390a3befbf8f3eecc2e0a8b254c6ddb4534fc8e2e7c964f8263779690d869cddb115f128a7f879a9bd60514967757161d37817c9d6c9a6d92bd715c10e721bf285eeea4b8a5a072f7ffcf1c79fbef7e89df3b2e31b743b57eebd7f6f7546024277773fc3197d364dd6532273bd4e92d5ebac39bbe3622787ac720d4fadc6575fc253e59ac6c79bea0b6b65d1f6d2d57e65fffc85f340db7deeca75eef706da771e7dfce93b1f2b64afe1e8bf722ebeb17a6f66e6f2f9f3b2c0db7f8964230ad9aeae112e4d94d60727345a6edd3fbb4b2e85b63747ee55a70d9596707aab4821dbc9929f3654f8c0f9c19955efb9fefe727c895f25e9cb8374832b5555c30ddee1a9f6958a99f3ef5cbec05de07d7d9750ea4ab8b31e645114eb6b8b6b4b8b823ca75195b36fef6eb934e2c163728f89fbf5c5e7aa8b4b0b87c6e98bc85c1267158fc541de3dbbb6d61b19991b4f56a3b45d63c46501ab4e06e61686eac7a6922bde59ee9db9c0a5dcfe2b97ce75ca6936205b5f0f77998a1736a5b8bbcbb09beeb5b27f9fcaa433de2facf6f61697942a6479420dc8f65f57c84286b3484eb2c4b0301e392753321dbd9d1eb65870d248646c6565b65bc4ad94b073537569b2a5a5906cf158bc2817cd2dbc60575da1fe2c52d7fd4883f75c6dbc7e886e5052c7168c930650274fa5e9ebaef096d4b93666aaa6eae7464ae3d59c7989b88b8ac2d32b2bae6469a9bf61038dd879eee9907316ce75d63e215b54575cecbaeb19e2866febde5d75adeffda74c7a9f63a3b7ba245e44cd969670661664fb6107838c5c337d572ec50be3bde53333b30dae953a8fa7b4d4e35c3e323d3d35555c57585f388d4e01eded8c80bdda013dd7f1349bf1a1aefad2a24867e7d48a07cdedeeb884cc7752add538bed270ae385eac902d4c939593eb0607a945b4b6b5a588bc1d551bab55fe8827e0b1cfdfddb9dd305657585837365cd1d73d03ac33ddb3e5157206137a83405113c89616d647a6aaa796dd8b7aebb193bbed42dfa75486f115f4fad54fc9162bb18ba72a714b177bdb2b6b6b539d53c35533ab33b3b76fafdedec19b1597dfeff2565de1a4183c1692ae28974b1ec4d364c7eb4b4ab7fc53750efb8446756adf6ebbc5ddd9c339bee9b573685499bab8a858f284ec3574ac68ae98b0ae7887d786871b3640757575f5eecaf2f2dd69801df65ebad4cf8d73506cdf6c45955c1e2d5e52aa902d8d17b68fd596d4b9270caa9c336776d91dee0eeedd97bbd6d919af03d9a10cd97372018efe6e24da6eb40472d998e135977f7a7a796539ecd872a652e343be80a3ddbfc653f180b67ba66f76b6c22b67dcc5b96b8e640bc74ac66af113031326d5e95347779d6a0fbce4af2da97d86ac2c2ef20cbb3e467fb8015715bd6baeb03dd4e5bb1f1b49395289684f225ad6331e19e33c4dff6c5f5f77dfea6c3917cb65debb54c87ac6f8417d6113b91e3e7b66d7dd5bf8a46c769b2a1a1a1a5734ab9cc84c0305b1d16bfd68b7bcfe48d1880fb4124b3dc17967ac67b16ca9acac6cc897f40f7b2b2a66fb6731caab3ab8a02e648ba8d9ba91aea6ae52cf90faecf1bd3f39786877dd06e4d0fe9f9cf044eaeb9be269cd42be9d5382b6bc4256bcfbfaabbcc38ef1a6f1b9584fcf502ce60b6e7952a1fb433dd1b2c5b285b950183daeb7bca262036e30cc064c2ecec16ce029696aaaaf0f340d99ceeebedbaf1db7aa4ebe14f0e0a02da1ca489673df447ba9bcbca29f5b65abd6da433d23eef19eb2e85030351e0c85423edf666a1cc2c5e8190a385cc30d55551b1b1b5e9442de6b214db614c742a167bc6b49b56ff791ddc7d9ef5408684b9bc6d36e50274b61bddeb5f2f2fe6e08712ce05b003fdf50cf7ac811092403e33e9fdd1f691a4a24c076ae6761c8e7685869a8daa9aa1a4630a847232733325ddc290ab23ef5b113bbf0564bfbcfe6a8d67d214f204d96d739215ad841437945f76c95cb3d32d7533687bf0c049a56667736661bfc7eefecec862b30b2b050d63387d7a8cf193eb2b2b1d1303c152fac2f2d8c94f0a7754540d6130874a954eadd7953bb93d1982f10f004d264ebeaea9014aad77acbab66675df3be04dcb567c8e72b726deccceeccaede9b99ed9b59dd6898764d3bec3e38efdc22cf754ccd0b5974b61e77b24e9e27fb58a1c713689ab39e3ebb2befcd7ae0842a31ee0bb93d4fc972db5b35cad2ec4e60281aed890ec57c61d746f9c68e8cd57bab2b2b2b0d40eb9a76a1d91d2f8b46133dd1d4f24e830b6403201bf134c586c6f99e7f7df2f8eebc33ebfe635688d66e0f8e2864b9d85202b2c30dc3b71d3d0cae0b3eb7cbdb303d8de37d636367636563e5c80a14ebf2b7b727e3ed115f594f59225196d8c217fd49904dc6eb4036b13884a72b301e559fdca5b7bcdd7bda1af5a59cc171c9b35cbc05daf8145ad78de558cfd2d2c2dcb8c3bfe66707760452e58ece23f3f3eded8e70381cc17023352c569621e7de5d01594fc01da61bc4a21aa2bad36000002000494441544d5922361455ab558776e79ddb8faa4d4b315f2a86fc2464a7a6eaea22dc7530bc1206d8a58590632c924cb63b1c0ebb63ab1d48f161d8ee747b42210f8ef6a2406068d15656063b20d9c25267722c52df9458923bdf98ac3ab5f5d4e1dda95995c9d63314b519cb8662dcc9c1fd8491baba31976bc50e5e4b3e37dcb210d27483b7ffee11bf9fd73e69f74f1f891416f2923c5d433d0b0b4b89b2a1ade569bfc3e3b127e391c078a24cb975bb4e67ca39bb3b357be0b4ca64b519cddaca68ac896e3036c68d9aed7e57830f2d6c74bca9a8492eb7b1f1e9fbefbff7c517ef7dfcde177ff8e2e3f7df7bb4fafec749eee15c58185a871da3ed055937c82623f5e3894a5edd8057f0b3eedbadb716df7f68df09034f894d207d1526a7c6c692c9bae494dfefca5d8a26623d2323235d45b71fdd7bf4de7b1f7fd1fcd73fbcf7d7bffef50f8fdefbe2bd4fbf786fe72ecfa9096ea57acaca12a9f9e9b1b09045e14ad8b890a0d35bad39477fb26bc781936aab556766ae2dac1bc388d7f16a11cb433dd1d87a0c9adcbcfbe9df1e3dfae20f8fbef8eb1ffe2a64df03d9475f3cfaf8abaf0221f7bc231403d9d8fcb0900d474a8b6209a381b7aa519d3e757817dfb3fd277b7378a74b14b28007649378a94338981f4af40c85363d23beaf3efaf8bdf71ebdf757fac017effde10f7fc09b2f1efded8b475f7e359d8ca0b639d72b97ca72b75ced76b7db8e185b8468a0379dce39a3561fffc9ae1efb728ea9544b095fa03e12f73b4876ccefb7871289c4e6fc7cb8fdeea71f3f82bff2858441f7d34f3f7effd1a3af365caeb164bb7dd33eb4b4d413dbf287236ea7dd1e09f8100d740655cef1bdbb34713d63b63f3978e868623c10288cfbe3bcac591c64c77b12284bf3ed49bf6bfaf6ea7443d5c6eaeafbababf73efdf4d3d59d95e90d66dbf6a4c3ed4ba5a2654bd19403920d3aedec0f12653a83eed86eed11be37572b64e105f1b818ad133edbe374ccfbdb93ae612fdaaf9d4f3f7aefbdbffdeda3ed8f3efe747576a3bc6ad8e54ada9d015f2c518666e1bed3618f7882ee420fbe50a9b3ea4e1f3c90a52ae3348d3682d8857480d620046031a727ec7724dbd738b93d3bbbb3fafefbefdfbb776f950b8a15b355c3506928e88bf5209fadc742d02b06241b8baad426957adffe2c54196739e9e54e321cc493630e64d21e9fcfe94e86930eff7079057c60669583ef6667566757bdd30e7768dc370eb051f6b74e7730e47653c34b396772d4670e1fce4255ea18c8863c91643c09b2c924241b4d058376bb3d195e5ea902d1f7df9fb9d03d03cde2a3d54f572b565ce1a0cf971a1faa34572e5596f982c160c8e909f886a24bc70e1ddc7bf6f4f12cd4a746eb7147d8292493ce71287168d36977baed91f0f4f4c6ecfb480468c43ec5fb4fdfbf3733bb311d86407db1a1a1b24a8cc5dc10c806038118c9c2080e1dcc324d8f533e18ad9b6893497b205686909a72da3d6e7e6d7a6563165285cdf20fac766363251c0c0652a9544f4fb4d2662b2b5b0f8542c110cc201a559fcdd27c769c8809da88d31e41658a2d2da1b30aa582a84b9148c401d52211ec6cf4edcc72a6161e0b5b0d0552433d3d4b9536a3ad124d5c8a602159f5a92ccdeff462091f9d162051e17dd1251ce265f7633e28d1edf13823632e4ecf3a38376be7757982a1540ae52b5a5666339bcd241b4b0558bfa0d97d599adf994078d18711427d77877c3182ad2c4b0cc57ce321b77c39446eebbe586c3d964addf741a2be9ec45034ba08ae462ba70ef09518af029a75831fb0031cd121b70764cb54368cca68c217da04aff5188802231770a2d175bec6d0c5f68817986d6655e55214aa8dc57875d5d359cdfe7d3af009da54006d4294f7b59aa82c2b8371f644a350224a15ac77a9aca78c179bc5976265d11e7cc1c63b7ed818258662946c2cb62fdb7dfd7d3a5827590e84529bcd889a3f615b2ceb49f70265f0d4b2cab2a5a5e852cfd2d2baf45e95b459a311b22deba1ae41763c919d30f85eb3b0ee53d022a6f6c00bd4b05aa8b10772ad2444aa151f40b2b4017cb172c256c93f7c0e2ac19a607d81f56c92fdfb71787d1d45889a45875a29fe59c9060ba22d5b5c5c8462a39cd6e2fb9e04d54ab0c64aa30d76a0129f8517a057c84e187c2f77e5822c04bb9eca4df454aa548853369a0240f670ea2b5ad693e0ea18dd36bab408af8011c08ecd46ad8d5a4e8864b3647fa084a57231245725e006bc819aad726262a2b227c1b2df5356d913a3b72aa3ac920e8b6153998d0cb4891e019b25fbfd71d01702d9f5dc985cccdfc6831c7e3001ab8d962552eb6878190650d468037403a359e8ab41b7b27269692991e226842cd9ef8dfd294f90aa5d075960b3497325b19613b00962ad2c5b9c205ad62d336f958bd74a35df54aacb9662a12cd91f269beb76132d6ffd01cd6a15b64623636d940e4ba2403eb184a45b59294e009705553c0d30df68cc43b2eb59b2df271b89b843bcab0add80b7a934f30eabbc152ec41a5da42f40c41313651352da6cbc393bfa2f3c013615ec21ea8366d10367c97edf0ddc402baa45e8d26b8d028e7c2bc55649af325ac6004bb446ad999ac53b7c834da52e8ba6403614f0653b85ef91f5b923c9883b95bb1e65cfca5b34325451917001942eb15c5ba5bad23681af03ac46c53a676647019f4d848242766f16e5f77d36624fda8329902d336bf552a0c816fd028c80358dbd818de2955c202e8bd4858f542af40a21a7279425fb9f683692045a1430e8d2081b35e8352cfc36fa2aeb1450eae90095a0c9fb3a83ab4d4747ae841b24826e378c36955d5afc5e9e4d71ad261c0ec6a059b5da6cb61a2558d98c4634b9f4012855c5b92d7ec9463d6bb456b351c722a62e2b5b0fc8b278204bf687dc209974249de34bd14a9255d958c578e57e336a16209ba1525a8456922e322cf3ac4e52af7aa92c15a268b39afdc1d405b063638e10354b0f30f2feaa460dcda092b3089546016bd4d065610495665ee6c76c54a1822d0d059dcea0db13ca92fdde38f0a233926c27d904cf3050995572431f1efd46a519e34c8115cad518f542d6a8439d331a552860cc5c21b713469bca2e297c6fbce44e26c7dac79201740a0c5b52a378e4ab945e4bd22b6f376a54e66254b461b599f3b84b899e942fe8b4a3d5c892fd4fc88e39c2cea1f52830ea519db47a1d7dc048899a55f05ebd563a08993c14d335ab11c3caa2ebb16028e4b4dbdd59cdfe1059a7ddc16ddf765f225186100bff6417c61917a30aca4545d381ab55abd7cae4a14e5f592971b72c919b4a0565b392d3933a9a25f97dcd0a59873d30d48312469cec0954d2c5e23d0f7fa3d150c93bb799c575a959f40deaa544d017720615cd66c97e6f9c20d9f676a00dada35750192bd59c6e517a2d95998c150fd0f03ee12a70d69b8d9c4ce02258caee083a9359b23f388e0a597f7bbbd399e8295baa5471c5c62871156f405905530558c403b31ebd984199e4e23c4dc2e7b487ddf630c8864e64497e8fac334ccdfac7dcc11ece6f31d156429b6a5bba39e0d4a2d1863460666f8b70a0b25901b7ac6c29068f0ddb95d31b4f6649fe20598876ccee4ec87297a8d5c66c85fc6a2365e5535ba5c16c33b08ad920ec3268761d6433278ebe9425f9436459c2ec0efb7a2c5ac6e55b9b59673448a1928aa5bca8610bb0041bdee39b9696a2d1fb299801c8ca6eba17b37b647e906cbbdf6fb7fb7cb15ca0559731ac92a9d566ae642943bfa5aee4c7461b045ca956739526e57306c3cac9ce106d2837bba8f0f7e3b8330c40feb1763452a9dc1e2e294ad9a225586d4a2b06a132e8aa6c9c5c54a9b9b1a307b9804f09d022d0826c7651e1efc7615421a960e1b03b359ec8e5e536e0b76a94b04a15b58bb73695caaae27b340e4b4b7482582ae50456a63507351b4c65a7beff6e1c3ce9943ceb6f8fcfb7a79cb9dc0b8bec550682b250a3aa4ccfcbf0437102ee3148a4427626b576d9b46c773a83c16c7bfbdd71e8642268e741ed77819433ec4ca18c2d712367591948327c49b05571b3819a8b084bf0d8686eca118637fbd36429da97b246fb1d2b5025728376faacdfe51af647104e7db1a19e4414564a4f40a740a572391154d5eacaa528ffacc309f86f0896d900e120987b2aebb46202870eed3dbc6fdfb1f5f55cb881638c574075f9797b45408af1fa4738e881161d998a50796e08068d00712be8805ec37ec50e44b3ce606eeeabbbfd0cc603bff8cdaf8ffcec9b4f3e79ebddbfa8d77d299215cdbafc6378d38e5e35e8eb89c5644fb20c1bafc713e516da25da70c209b2f8c6f6740563a0750653b9ebeb2f1edeff9383fb76ab787ff1f3175ef8f6830f7ef9ee5b6fbdf597a8cf1702d9767a26a8ba8687875dede81aecc1a06f7d3d1ae5fe6e6ef98e2662eb29d985bc1e5d8f399d203bad9841bbe2060807a9758c57730c26d527bb726bfd6f5e78e1853d5e907debdd77dffacb922f156223a5801d1e6e181ef642bb7e871b32f4ad471309d9e83d34144b05834e676a33773d37e183c45dd3aef9793f6dd6910e0708c3eb3e3c1d2abdea93b77eb9cbb6801ff815047b67cf9e5b1b8fd39a5df28542ecc1fc8216641bbc0d0d6b401b76b22a8552b1d8104ff28805380deb0c0553a114bebf1d60a7fd2ebf438652c242a1d47a2a05b44b20fbd62f0fefa22b48ecffcdcb2fbfb0e7ce9d3bb76e7dfbf8f1d76fbd45cd063cc17477ab8876d8ebf50e53b576e7969c099ee2690c8110c1728e0002b73b5caee98686e9e9b4649f900df952a990cf97f88fb7383ef9d9cf4efc6257d0fdd5cb02f6d6ad9bb76e7df5f8f137f2e8d52177d0b9f9c46715b244eb6a0ffbc300e9f1f0d45a37d0a1070e0b487c33c036c00efc4fc08ac0f12c106feccf69b21ffceccecf7fb10b0ad70b004bbddeba71f3d69d0f1eff0c87ec5befaa43c13459579a6cc313b4ac4f3050b79b578a0987a96cfec1704dcbf52751c20856f159112d341b0abdfa970cd90ff7bcb0e7d7cfb56cf7ffea17bfdeb3e7e5976fc998bc71f3c6078f3f10b2ff91a266b7dae725192835cc0bab15434021133d92ab6835ddcffa5db0826921ab6483747f4bd98682a15705ec5bbffce083af502cf7fce6792b5607d25ad9ff8bdffcfc653ec23daf284e706b60f2e6e4578f3ff89a64ff3ca4b8c1fcbc42d6d520a2454418f64b642537d1ab68b69d130cf8aee969b0753dc90661d1aca00d06538a19bcf5f5073fdbc35ffb7ca9f657ff8e47f4f35fffe6d77c2f0389e0e59b376edcba73ebe6e4c08dc92f3f78fccdbb187f290b86a0d9f90cd9b41b085bb60e4affea78aa5889100d0de2b3a2e0678cd649eb08befa49c60cbebd837ac9ffc8f362b607f6ffdbcd9b376fdc84a9e23dde310fecb9f3c29e49f8003c767260f2c6248df6ddb7de450953c8a6250bb055555e6f9557a2ad5842fb9321d10c56e015b06886dbc569c3e1f4cc81533a863f3f3103fede3bb7f8bcfefcdffeb5fbdefd870e1f3df1d28b2fbe7a13e870ccdf9c044bd62bb8c09d3b2fdc18b8c1cf6e4c5ebc3839f015132dc69f879ed12c0b584315475ab669e14a70509a34e4ad95868c66fd19cd2aa2255967ee5f3266f0d94dba0fe9bef0c2cb2ffcfbbf2adc037b8fbe944ba7c321993bb93d70f1e2c0e4e400c78d1b77a8dc5b7b001bb451c106da066e7cf4c1e3af01f6ed4fca9e929d9e66a7e0adcab0a535483113eaca8b34135e7c7ddaa53461edede932875fcc655c25ccd20cbee4338adfa7c8f68517eefcfbbfa02b1c38fe52502e67ece4c81da8b95853737160a0066f2f4edeb8456bb87567fb22250c9f9d6cab99dcbef7f86724fbee7ff882421615699a311564cb39e0080de2b955e448fba55025ef82fb0a2b988b35ccff942ca3d9fa3392bdc3a3066c6f52b777c016aef02f56cd0ebfe88ef012b2604bb2f76b6a84694d1bded60c2064c9e3a38a897972a0a60dbc1f3f861dbcfdf6274b4256b0b234919ba0154700d7cc7b6f9ab47705dfd29021eb9f57a6be45b3e13024fbeebb19c9c2ece9ec37c58fc414307efdab7f217b3d1152c0922cd97ed3d8d8d606aa6df276e026d3c08d5bf007417be3c6404d63cdc5c67b8f5f7b9be3cf3e27c82e8b60414cc15a813fe58a27a4bd016f785395aa72f9b441d04ecffbe7fd0ad9b022dac427f8893816be7efc199fd0b4b30b5c1c359c0c7ae1859fffdbbf08dc832f853ceeba7871673c5e2cd733b3bfd2dad2d2a890c5ebc0cdc98b78849317e90ca86b2c6e8d8d35357f7bfc99907dfb3f824fc98a175454f0dee10a5a01ad90552003b9e857122d459bd62c2cd66e4ffdf95df991effeec0358d08d74cd8425e05841354b2740c2fd17985120589f7b6aaa3a3da6a61c2f37b7b63637b635f2a51164076aa0d61b6d350317b7b7f1d9e440635b4b634de39fd2a2fd24373cbfbc4cb0102cc856c8e827daf2b43164469a7a398d56f103c56669b1a01b522b60dffefaf1a7932ca030031c249393b0f89b4cd37bee2841852dc4cfffc9d3c2a117439e942f595d7d4e19bde7d6c6ee58305a1b1b5b1a5b5ada6a6edcb8d8b60d9c50ef45a8971f4eb635b6b4b56d2ba2fded6fff1cdc5224dbe0adf05609da7e2198c6292f55e4a990add8d828971a86e035af5c718ac5cbee5cfa4401fbee079f6ddfb83820870ae80ef05792310d57bc4962368ada3f71413b0eb0015f2a09a4bdbd1dbd6b6b1dc3c38e81bcbc3c0b74dbd2d2d20ab290e8f6764d0bbd01aac5e3bc880f9b5bdb5a3e7efcd3df02ec6fdf7ed5b19c46ab1cefc2b5e28956bd69bd0a58f9dbf28cd3b20fa3c5da798b80c45ff0d3defeeddb6fbff6f8233c93356d8c797819d866febb41bab76846c8280394329ce2ce3fa9e5ee7d29e501585f2a52bdb6b63685aec80f0acbadf9f9f979164bb385a670f1464d0b9302686e338cdda8b9b85dd3d6d8da0cec7ffcecb732debd3f4f3758a11dac90ec6c9a2c65aa74bba4eb1535cff6f7a7c932d3667cd6d1eef0fd59f969bffde9e3f721580610921db8b18dda791174b781129f5fac41dcde1e20efc9819bff7c19f7c0a17d2fe586dc1eb92694672ce9b6b7871b1afcd0d5b71690cd2fe0b034376e0fb05cb5f1edc5b6c91a2631648396364b7373ebdf1eff5e50bcf9cbcd79c9b22bdefeaa8cd1321d08d606c95c14ad175f045816b12aa5c17565a2417b7b2803f6f30fff0874fc6dd02c0e916de43f3cb5db6c5e6e906c1b13e1456615c8f7957faa3b39b3e17a31159453dc78c1c8a0736d38bce508a3567bcbcbbf2a20d93cfcc9cfcb6b1e1840b582605b18c5f0a0d026c07e5b5b5b61c5cd7ffaec7321fbe6d75be85a79db9f8a0a412b7e502568abd28a9562c6db048a03afa44b981fcd6d928bbfc157f16314b08f3fda663061c6a352994a80166de145218b27f7624d1a6ecdc00ba9d44b87fe59b09e0055b75c13d213f0002c3af6e18e35d4e8f94df4522b5f16e4bffe7abe8cd7f32d036dcd6489988007bb2d2f93405bd36229686e6dfce3876f2a68efe31f92d6ca6ac553d52a4efb946c45797f7f86ac37e3b39c3670b4db5ffdfc4d65bcf6f8d1c58b481fdb03db6208174976bba6115ea49433a4691904dc56b327e00ee6fe33acf5ee3ffe526e9050d91978e4329c4e14109777d8e1dc943675fe4e5ebe02967c9b6b5a9a6bda08b6711b954c7a8801c6dd9666a0b57cf4c7df53696fbef9f9a66b65c5bbb232ddb031bdf20c5a38aa52bbc41c68b324bb5125ad6e062daad7ab9fbff106b9bef1fbc77f6abb58d3d84a455e44de9ba4e15e9c84b503f34562c6e183ff844442c4975b8188db1d7ae97f7bad77ffbe17e1ad82b5385ee7f144223211620fba86fd200bed2c6fdd9f04d2d7690778f77a0b530004243d191e4dcdb63c1efc692ec82bb014c00fa8da37dff8e996d8016f4c05b44fc90acf74b20558de33b4a27cc3dbd0f0d4681d0e27c182ec1b6ffcee8f7fa2add7345e4438a899449266fa225f6a14e9a4064f35528b049796e6e6965b1eb48e6ecf8bffab8e70e0f88b2856d2c9c6e39d714f2862e7240ccf7c75b5730db0bda1616beb7e4bc60cf0eef596c6d6d636715a08a5e6221e4e63239d174edb9607b4cdf003a8f6cda768412c23daa74cabe46ea120dbd7d75741f7e5f23927c238ffad80055680fdec4f78fadae036780af13b6b18a1071868910820e536b86c2b8a6733a38bc582df7f2bc2bb68453c2feefd5fcd58218f476e4819efec4c8ac372768b13877e47d8197679bdf3f30d0f0aa8d5fcd7f3e45d638b05b285a3b6d1ea1a215e3c72a960cd05050c677fa01fbc29aa5d6ea8dac01f25d35628242b141f2059912c7d96debb820c56955e59f82e582990b452901d68a3622745b36d085f2df80a0cbe80500b70d0e0f7df89574f7582ad3bf5bf65b6fb4fe442af256e5e953b1e9f12b0ee20f30155eb77b43bdb87bd5effcaf22b79e4aabcbe5e2064f3da5af998c0b4151e0b29a180b536b616487af8db1f7f9756edd7d35e70555866fa30aab6429938909bb6f6cdf657a43bde7249b5c32ec7ab6fbfa1900558584f63b37425936d69b20807502b9e4c1c31f0f996bc823cbee0154fade5cbb135b4e49d7591c2c08bc7ff37dcf6308da030521280b7cabd4f43bc0d1ad1064136d89e6c0f52b3aeadcd9715cde60b600badac31bfd1d20aa7850dc0e250a41b5b0018da11b2798f3e93da03345f3fa95d8aa3f6a7455b7e858d583925db47b6fd19e2603bdd2e6045b11f7edc4cfb6ce46f6a133768ac01d66d86bee63c982e7e39cc00bf1564f32d209b67f9d23f4cb4c57525859ed4fa4b47f7eeff9f166c80774343d18a4f718aa07a2a09b221052dc88693ed2864c35efff2e61d88559c40c836b65a5a5af29b61683842db5a5b275b94f28577ad96825679901f7ff88622da37beaee2dd296408418e8a7e90c50b61f77563f47513efac848472af2bf7f327601ff1896c6e91b9a036e9fa5ada285dd4aab682bc56142ffc9d1c2a8cdca49b57f0a5c335bcb6563d0543805c52a9dcdc978efecfddace9e04bbccc396ff219708f55738aa0f75cd2c78b61b843ee50107fc26b7187d3d1dee09fbedfa6388102b7b5c502b2058d79966dca0955a39539012d59cb406b3355cb32f6a70fd391e98dd736042ad9f5f5f5f7a5d952b75729d86bd74647bb9fd205f4e9fb4f15fba8b985fd079e390a96410b2285f56cc3d32d7979036dac6c8dad79d2c7c008f288f8e5b0dff544b585bcaa5a2894ca3db1f77fc4740fbd08b0f22b436865e39c79f1fbdd04eb0c86c6c622f8ba7d6d6d8cf322f35bdf1069da6a41b611645b0b2cf996164bf3b6c5d206c7e5ec2c64d4dc0a7d896ef25afff8fbb421bcf91ab9ca1855f0822f5fae755febbb7ead7b74f4fce0e8e8e88cc0856aab363fcf78ec871f1548c96fa19bde68e4d4306a993c81cd052d70d76d48185edbcce6fba9665f0e3afc6bbde7aaab3b8beb6ae51ee59e524f2095fbd2be83ff23604301d9b786c3c537d5d1b146c84eb71b41d63edcc12daf8e76976b2c1cb66f6ebe52a0685671db96c6021ca1adcdf9cd8dcc3896560b67c559475a26992751a261c9058d40fb8688f6f3077d42759400810f9f81e6f9c1c1f3a3d780f7bc8c99d1c1c141d0edabd8fae913c57ed4cc9f86908783be11d90e69a071b219f660d9e60c46813cab30a2568bd21fd2e24936651f5ba3bf5577761617d7d6d695887403a9f5574ffc83d91e04585f2c267794700743f6de8e8e76b753a886c32187cb7bc9ebed18768dc16687e737375f205545b0d02ef50a7e281796bce6818202c816b9a0056680484b73809c5f877ab615b46f102da80e121de0016ff7e8f90b97dfb97cf932d08e0e9ebf70e1023183f5cc60f7ecc367c04a8ac29328b3973758285b985c2719b00ada9a0b5ab71b075af1cb9b9b153740e863407825157e3a6b2f70eb680ba581806ffdc57fe8c569f69ff2f96272131425668d755c1a763ba5f5e252bf33189ebe740570bd2e87b7bc616bf38662b0f9f22e0fae06b26df948079273e083285fcd5016a7c50724ade7a7b35746b5dfce0c9e1f1499ca913f78fef23bef00ede8b56b000bc21748177f3db87ae419b038e40bf2d80334d7d4c0cb91974179a019bf909ac533d88ac246eacd96d7159fcda3cb17bc124cc6a764744e51b7225cd882a07df51f79e7f713ebb184dc069c60e100c357ca870936c84df0f3f35b9b9b41ef952bc89bae79c4a0f96f9a334e2071163daca5d1d22c875e635b9e68160fb6c6c2c7dfdac8e3b74039343ffaec77694c9f7f0ba864779e6f31842c247b9e602ff36b970977e63b60995011e4383b8997b656fc02f968c042e6db9c296e44a77db1d5d2c8e71d058cff02649de1b129b6619d75f14e11adc02d11b6ebaf9efc87c584c3724d7d9f4c16723741b8eaca157f381cc6879b8e2dbe6c3a1bcaaf78fdaecdf97264d08ccd2acab5b4590a9a5b2c35afbfde6691c78107892fa19c6134b7d6e070e503e44345accda0fde9aa1cf4e447b0c0f9ce3b17e8b30a5a45b41706effef44da57a112cdc26cf02eb69e373c6a78e9d6beb006b9ae2b316d8cf402b7bbf5665c2284f7c36ef15fb581c91cb1d89177a3819c2dbc7d7164b3513d99efa0799edfe177dd184dc6a8abdacdd19f6975f2de72656428562f1b2e5a82abfd26077dedf3c822cfa25670b9e68b69973858ab3e5e7c3eb9ab7856c739bc5422d41c10512da59c5be8396f02e53a0b454790f971d4d4b967f79617047c002ad5801dd9ac77c4b8134affc052d42775bd12c1b961679329ba1599a4173be54b057789e7a9ddb13e1addf398157521241bea4df16160ada7fcc5ccd519f6f3c4d56764a841bfafbcbdbb764b67079797e6b797e7e73192ee0dae4d85a3e7293027ca2592044b56eaec9cfdfcecb4321e3c3ae29286865dae28a03f4d42c4d663e0fd0471f66d0be76efc26585aca03d7f7e142e2b8aa55a0937ad589ac7877fa3a314288b18db05969a463a104763cd53cd36a34f99e4a2720bbda940429745213b1597e99008e7444b30042fded51696d6a378ff43a6c10eadc307c61533e092c8d656f9f5ebdecd2da05dce8cad1574a090eed6d6e6d6c36f5a9f8d0628d5944d739e68b6b120afad8d642d6d2d0505930505688c0a2cc235bf99e52eefd1876f64d00a5701797e50412bc6a04403a406827d33e3b1c81779cc1f6d050c02f46e001e608e4512a166f14933ea17525f0dfe4bf9d46c1eed09bff99576ff180e48ee43619ba93444cac6146484d2fa225fe21f81f62c9896ca5257d00db0d0e96c775f7f5555c311323da290dd4097a4b07ef8f01565be3bad59c6591c88ad8df9f9906d8b08b519381bf1e0f328a4bcbcedbc0209981227f23ecaa0fdfcc185276441558612b9046cf706159b6910283d0b9ebe0279c22cdbad78d2b81604f54a3ddb9624ddd6d811d7c186000006b2494441542c9a6dcb13b23466aaf715d7985bd9e313817e0a21de92082f2e4ab0445b04b43fbed71e8a0502f585258501e5acad76c04c379e6cdb778e3ca44c9767fbfa2b3609f6c891872fe73f1b0df25ad1a4178866a1cc563498889530884938ee0da8975587cae113a14cea7ef4fb2701815cc56719bd48979a8580c155c0be99062b3f42a48f5f44bda2285ae0aedb62086d6da259a4b01a654e014e4c5b67e492f1ca7c38180449c403785e216747803959978c8833a08c158d27cefcd8e1eb84af2850c8a733904a059d0ec05be91b65cfde3dd33d83a4be3a7bf7e1d611349f1b5b9430c8de4acf1f8a0819672d799348b0f0595430302cc86347dbaa9822ed760049ac395f21fb1db43f5d15d1b22718a45e15aea2d9d1d9d79e807d241edb869f9b8f585750708354c5c1115cb709d3c2b2d9c87504d1aca5466914e01ef9a2d94d67d0cd795171db420f745b27778584720b21e05218c278f4c48feeb245a5b0f6783cee4e05ef3b60063b33337d77efeeccceaeaececccc10f24e0524bcb1f5105c8fdc7dd8989f69129416ac590943f2206006e0488f4533d6c894909928cda7cce1b5acd64fd1ce301ed00d942246b2a3a43bd8f7dae732c7f0e6ef3e13b0f96cf258e7f3e12fa85bcd96d601257c34c3d2955ad6ca54c029364b6bbab74d2f81be72ff3ea27998ad8207aec0a5bdbaba78921bd4226eb2866a7db1e8f11f391814054a09766aca6f0f393741f6f6ccccc6c32377ef1e79f0e0eeceedd5558897e670e4e1b2907da0745e996880e3ddd2b28d879a6769cb87a5e629c72a532d470d9a2676bc708b3c45b1a47c2b8df6cdd7662ed067a5d3255fa5f7ba70befbc1e7caeccdef3efb13c1be8e6e0b3f3d1fed40011b83b63cc50720d666c567e9062dc828d46cc1b64296bf9459ede54db9b4e2987f6d0dd12be916b2c938efc04bb2408b80301e3dfd6356b183eb4d0145b2536b6b6b0e905d3e323b33b38371fbf6ceedbb771fdebd7b7b95d352ab0f1f52b30feebe2c60f39fb460083ff0d9469aad24730815566bb90145a1b635e6e52953fb7905354ac6cca38d64542b55ecc29348c0842b19ecf64f95e56f82e53f6a692d5026577078301cf0e0df9666a155d12c1767e0b0adecb3013f5f3a0599757f9d6437433c292dec5f8b38c3495633de7b778c1bf122dc4f01d5d20fcefc98921d87640bd1974c55aff50eb73b01f6c8eae08c80bd7d7b15af3b771f3edce9ee9e997df8f001c03e78b047594ec8cc21b22b1868696eb4e4b5c26a07508cf324745a44b2f4865668768096979f9e6ca0217cf9fb270d83920fa46bb8904eb333af65c07e8c1f4217b1a06fb6e087dd6090b314b41608cc1aa54b606606ed5692dd6e6e69e52486ccce321ee05f7fb9b9793f783f180c3a5cbcf85710ba9daa9e1a1b53ce2a01d900f3c178f447f403b45f8acb764e71d7967d13a98a648fdc4e8f55a27d701776bb03cd3ec0cb37934f1b5b696e19af105fe9014aa49587df08cd221e1434e729a20587c97c366eb2920eb65ffefe77bfe311ffdabdcb4a4250f8cadb7bdfe22fff3f8c6f3f162b6022a06065a6b08033300c5e681190b8e0b8dc31c2bf69e6540c34db6cf93bcd82ec667bf8fea6ddde1eb6b73b9ccee4d85a75ef9a7f2c2c679c0652be006a18d0fe781704db17a3644be27101dbee44f97f78777566151670fba9681fdc16b20fee3e78f8e0c137ad699b5524f8ba050f0bc51a476b8d259f06d79227bd97457945b3d026e55c49408ad54a9b9ad7dcb23d796bcf9e97bfcac45a19f72e7cf5658d2c05f0f9b03098be8e4cc506afb195d9d8d2c6c8250d6e734d330d81e18011aca5059f43b912aef3942eccc2ffe91e748e0df34e877f7e1988e7ed61d842756fc7f05a7bfa04749f2f501828f28dc77eac4b00ed3fdda448766a6aeddc9a3fb8c94e0002dd79b09311eded1d906546807285ec2bf94f166d95e6169a4539a961cd12998031732c1eea0d4563021af96b1b780a5ecf57e6bdd050f1df7142a1f9cb4c3306b79db9fb554dbe344ed23e898970950d47765e2b8ca6a580cb6ef8d1961b2dcc579c6ddf6e5666dcd122f02dd2ad45349b9797ce3037b7a6abaae637efa385e4169fad70fbf0f05a6f6f47c7b03fccf32279aebaa790aa7df1479af63a1e4bd7af29d6aff07d76020fefde9bb9fde06e5ab01c0f9e92c5d75f56dc35b32a9ecf4737c9fa014bcd6f0515c959e2b4d416fe8a85ec461e09e771a29619d34263c84f6f60ca2bf8f29e12be462f5c587da5253f6dc9740d0402447f7c7f5e637e5e8bb88ea5317340485b5b6391bda6c80b352dadf8049a05fbb4132053f0276d2f6f546c80ec7db8c2f2f4f4f2fcfcb077ade35207679c89963785f3794ad9e4ff9744fbff0359493d46ce30db670000000049454e44ae426082, 'ROSA', '18846', 'image/png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineas`
--

CREATE TABLE IF NOT EXISTS `lineas` (
  `num_pedido` int(4) NOT NULL,
  `num_linea` int(11) NOT NULL,
  `producto` int(12) NOT NULL,
  PRIMARY KEY (`num_pedido`,`num_linea`),
  KEY `fkl2` (`producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `lineas`
--

INSERT INTO `lineas` (`num_pedido`, `num_linea`, `producto`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE IF NOT EXISTS `pedidos` (
  `num_pedido` int(4) NOT NULL,
  `id_cliente` int(9) NOT NULL,
  `fecha` date NOT NULL,
  `total_pedido` decimal(9,0) NOT NULL,
  PRIMARY KEY (`num_pedido`),
  KEY `fkp` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`num_pedido`, `id_cliente`, `fecha`, `total_pedido`) VALUES
(1, 2, '2017-12-04', '0'),
(2, 1, '2017-12-07', '0'),
(3, 3, '2017-12-10', '0'),
(4, 3, '2017-12-10', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `cod` int(12) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `nombre_corto` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `pvp` decimal(10,2) NOT NULL,
  `familia` int(6) NOT NULL,
  `stock` int(3) NOT NULL,
  PRIMARY KEY (`cod`,`nombre_corto`),
  KEY `fkpr` (`familia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod`, `nombre`, `nombre_corto`, `descripcion`, `pvp`, `familia`, `stock`) VALUES
(1, 'Brain Training', 'bratra', 'Famoso juego del Dr. Kawashima', '15.00', 2, 50),
(2, 'Inazuma Eleven', 'inaele', 'Famoso juego de fútbol', '9.00', 1, 200),
(3, 'Pokémon Cristal', 'pokcris', 'Famoso juego de combates, esta vez para 3DS', '9.00', 1, 50),
(4, 'New Art Academy', 'newartaca', 'Famoso juego de dibujo', '13.00', 2, 20);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `lineas`
--
ALTER TABLE `lineas`
  ADD CONSTRAINT `fkl` FOREIGN KEY (`num_pedido`) REFERENCES `pedidos` (`num_pedido`),
  ADD CONSTRAINT `fkl2` FOREIGN KEY (`producto`) REFERENCES `producto` (`cod`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fkp` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fkpr` FOREIGN KEY (`familia`) REFERENCES `familia` (`cod`);
--
-- Base de datos: `webauth`
--
CREATE DATABASE IF NOT EXISTS `webauth` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `webauth`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Volcado de datos para la tabla `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
