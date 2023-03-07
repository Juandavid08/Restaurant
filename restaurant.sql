-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2022 a las 02:45:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurant`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `nombrecategoria` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`) VALUES
(8, 'POSTRES '),
(9, 'VERDULERIAS  '),
(13, 'CARNE'),
(14, 'POLLO'),
(15, 'PESCADO'),
(17, 'BEBIDAS '),
(18, 'PANIFICACIÓN'),
(19, 'SERVICIO DE MESA'),
(20, 'PIZZERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `iddetalle` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`iddetalle`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
(2, 11, 10, '23-01-2017', 1, 'MESA 1'),
(3, 19, 117, '19-01-2017', 1, 'MESA 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa1`
--

CREATE TABLE `mesa1` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa2`
--

CREATE TABLE `mesa2` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa3`
--

CREATE TABLE `mesa3` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa4`
--

CREATE TABLE `mesa4` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 4'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa5`
--

CREATE TABLE `mesa5` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa6`
--

CREATE TABLE `mesa6` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 6'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa7`
--

CREATE TABLE `mesa7` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 7'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa8`
--

CREATE TABLE `mesa8` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 8'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa9`
--

CREATE TABLE `mesa9` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 9'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa10`
--

CREATE TABLE `mesa10` (
  `idmesa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `precio` double NOT NULL,
  `fecha` varchar(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `mesa` varchar(50) NOT NULL DEFAULT 'MESA 10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombreproducto` text NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `precio` double NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombreproducto`, `idcategoria`, `precio`, `idusuario`) VALUES
(11, 'AGUA C/GAS', 17, 10, 1),
(12, 'COCA COLA 500CM', 17, 33, 1),
(13, 'VINO LA CASONA MALBEC', 17, 128, 1),
(14, 'ENSALADA C/ RÚCULA', 9, 43, 1),
(15, 'ENSALADA MIXTA', 9, 29, 1),
(16, 'SODA 500 CM', 17, 17, 1),
(19, 'MILANESA C/ FRITAS', 13, 117, 1),
(20, 'VINO VALDEROBLE TINTO', 17, 100, 1),
(21, 'FLAN', 8, 40, 1),
(23, 'COLITA DE CUADRIL', 13, 130, 1),
(25, '2 SERVICIO DE MESAS', 19, 40, 1),
(26, '3  SERVICIO DE MESAS', 19, 60, 1),
(27, '4  SERVICIO DE MESAS', 19, 80, 1),
(28, '5 SERVICIO DE MESAS', 19, 100, 1),
(29, '6 SERVICIO DE MESAS', 19, 120, 1),
(30, '7 SERVICIO DE MESAS', 19, 140, 1),
(31, '8 SERVICIO DE MESAS', 19, 160, 1),
(32, '9 SERVICIO DE MESAS', 19, 180, 1),
(33, '10 SERVICIO DE MESAS', 19, 200, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `idproveedor` int(11) NOT NULL,
  `nombreproveedor` varchar(150) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idreserva` int(11) NOT NULL,
  `nombrecliente` varchar(150) NOT NULL,
  `cantidadpersonas` varchar(150) NOT NULL,
  `telefono` varchar(150) NOT NULL,
  `diallegada` date NOT NULL,
  `horallegada` text NOT NULL,
  `observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idreserva`, `nombrecliente`, `cantidadpersonas`, `telefono`, `diallegada`, `horallegada`, `observaciones`) VALUES
(3, 'CARLOS ALVARES', '12', '12345678', '2017-01-24', '21:00', 'LIBRE MESA'),
(12, 'BIANCA ANIDUZZI', '22', '4584463', '2017-01-25', '22:00', 'Sin Restricciones'),
(16, 'DIEGO PENNISI', '13', '23455677', '2017-01-25', '20:45', 'VINO GRAN RESERVA\r\n'),
(17, 'DIEGO PENNISI', '22', '3414584463', '2017-01-24', '21:30', 'SIN PAN'),
(19, 'BIANCA ANIDUZZI', '14', '153693019', '2017-01-28', '22:00', 'MOZO JULIA\r\n'),
(20, 'Juan David Renteria', '5', '3116874555', '2022-04-20', '20:00', 'mesa limpia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `nombreusuario` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `fechacreado` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `fechacreado`) VALUES
(1, 'administrador', '1234', '2016-12-22 02:59:29'),
(2, 'juanda', '1234', '2017-01-24 03:47:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`iddetalle`),
  ADD KEY `FK__productos` (`idproducto`),
  ADD KEY `FK_detalles_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa1_productos` (`idproducto`),
  ADD KEY `FK_mesa1_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa2_productos` (`idproducto`),
  ADD KEY `FK_mesa2_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa3_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa4_productos` (`idproducto`);

--
-- Indices de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `FK_mesa5_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa6_productos` (`idproducto`),
  ADD KEY `FK_mesa6_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa7_productos` (`idproducto`),
  ADD KEY `FK_mesa7_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa8_productos` (`idproducto`),
  ADD KEY `FK_mesa8_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mesa9_productos` (`idproducto`),
  ADD KEY `FK_mesa9_usuarios` (`idusuario`);

--
-- Indices de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD PRIMARY KEY (`idmesa`),
  ADD KEY `FK_mase10_productos` (`idproducto`),
  ADD KEY `FK_mesa10_usuarios` (`idusuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `FK_productos_categorias` (`idcategoria`),
  ADD KEY `FK_productos_usuarios` (`idusuario`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`idproveedor`),
  ADD KEY `idcategoria` (`idcategoria`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `iddetalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mesa1`
--
ALTER TABLE `mesa1`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mesa2`
--
ALTER TABLE `mesa2`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa3`
--
ALTER TABLE `mesa3`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa4`
--
ALTER TABLE `mesa4`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa5`
--
ALTER TABLE `mesa5`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa6`
--
ALTER TABLE `mesa6`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa7`
--
ALTER TABLE `mesa7`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa8`
--
ALTER TABLE `mesa8`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa9`
--
ALTER TABLE `mesa9`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa10`
--
ALTER TABLE `mesa10`
  MODIFY `idmesa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `idproveedor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `FK__productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_detalles_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa1`
--
ALTER TABLE `mesa1`
  ADD CONSTRAINT `FK_mesa1_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa1_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa2`
--
ALTER TABLE `mesa2`
  ADD CONSTRAINT `FK_mesa2_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa2_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa3`
--
ALTER TABLE `mesa3`
  ADD CONSTRAINT `FK_mesa3_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa3_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa4`
--
ALTER TABLE `mesa4`
  ADD CONSTRAINT `FK_mesa4_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa5`
--
ALTER TABLE `mesa5`
  ADD CONSTRAINT `FK_mesa5_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa5_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa6`
--
ALTER TABLE `mesa6`
  ADD CONSTRAINT `FK_mesa6_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa6_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa7`
--
ALTER TABLE `mesa7`
  ADD CONSTRAINT `FK_mesa7_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa7_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`);

--
-- Filtros para la tabla `mesa8`
--
ALTER TABLE `mesa8`
  ADD CONSTRAINT `FK_mesa8_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa8_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa9`
--
ALTER TABLE `mesa9`
  ADD CONSTRAINT `FK_mesa9_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa9_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mesa10`
--
ALTER TABLE `mesa10`
  ADD CONSTRAINT `FK_mase10_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mesa10_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `FK_proveedores_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_proveedores_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
