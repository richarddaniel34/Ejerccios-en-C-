-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-04-2021 a las 18:08:00
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestorpedidos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `IDcategoria` int(11) NOT NULL,
  `nombreCategoria` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  `imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`IDcategoria`, `nombreCategoria`, `descripcion`, `imagen`) VALUES
(1, 'Equipo Informatico', 'Laptop, computador, Teclado', ''),
(2, 'Material de Oficina', 'Lapiceros, calendario', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleorden`
--

CREATE TABLE `detalleorden` (
  `IDdetalleorden` int(11) NOT NULL,
  `IDorden` int(11) NOT NULL,
  `IDproducto` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDempleado` int(11) NOT NULL,
  `nombreEmp` varchar(30) NOT NULL,
  `apellidoEmp` varchar(30) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `usuarioEmpleado` varchar(30) NOT NULL,
  `emailEmpleado` varchar(30) NOT NULL,
  `passwordEmpleado` varchar(20) NOT NULL,
  `fechaNac` date NOT NULL,
  `fechaContratacion` date NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `region` varchar(30) NOT NULL,
  `codigoPostal` varchar(10) NOT NULL,
  `pais` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IDempleado`, `nombreEmp`, `apellidoEmp`, `cedula`, `usuarioEmpleado`, `emailEmpleado`, `passwordEmpleado`, `fechaNac`, `fechaContratacion`, `direccion`, `ciudad`, `region`, `codigoPostal`, `pais`, `telefono`) VALUES
(1, 'Julio', 'Perez', '', 'julioperez', '', '', '1997-12-01', '2016-10-10', 'su casa #35', 'Jarabacoa', 'La Vega', '41000', 'Republica Dominicana', '8095743214'),
(2, 'Jimmy', 'Neutron', '', '1996-03-03', '', '', '0000-00-00', '2017-04-03', 'su casa en la ciudad #2', 'Jarabacoa', 'La Vega', '41000', 'República Dominicana', '8768768765'),
(3, 'Kimberly Alexandra', 'Moronta', '', 'Kalexandra', '', '', '0000-00-00', '2019-06-03', '104 kauri point road laingholm', 'Waitakere', 'Auckland', '0612', 'Nueva Zelanda', '096546543'),
(4, 'Jokasta', 'Perez', '', 'joperez', '', '', '1994-02-07', '2019-05-08', 'en su casa #4', 'La Vega', 'La Vega', '41000', 'República Dominicana', '5555555555'),
(5, 'Anthony Edward', 'Stark', '0000000000', 'Astark', 'anthonystark@mail.com', 'anthonystark@mail.co', '1979-06-05', '2008-02-12', 'calle, #23', 'La Vega', 'La Vega', '41000', 'República Dominicana', '0009876543'),
(6, 'Samuel', 'Wilson', '0988765432', 'Swilson', 'samwilson@mail.com', '121628e3f831277411b8', '1980-06-12', '2010-05-12', 'calle,#24', 'Jarabacoa', 'La Vega', '41000', 'Republica Dominicana', '0987654321'),
(7, 'Richard Daniel', 'Moronta García', '0988765432', 'rdaniel', 'richarddaniel_34@mail.com', '6fc8a80a6ed42d6b4794', '1997-12-01', '2016-11-12', 'mi casa, #23', 'Jarabacoa', 'La Vega', '41000', 'República Dominicana', '7654565432'),
(8, 'Julio', 'Berne', '0988765432', 'jberne', 'jberne@mail.com', 'b5e407f976dc8e6ffce5', '1998-04-13', '2020-12-01', 'su casa en la ciudad #2', 'Jarabacoa', 'La Vega', '41000', 'República Dominicana', '8768768765'),
(9, 'Bruce', 'Banner', '1234567890', 'bbanner', 'brucebanner@mail.com', 'brucebanner@mail.com', '1890-10-10', '2010-10-12', 'calle, #23', 'La Vega', 'La Vega', '41000', 'República Dominicana', '0009876543'),
(10, 'Wanda', 'Maximoff', '8791281618', 'wmaximoff', 'wandamaximoff@mail.com', '7d8093e2134bcfa71806', '1989-11-10', '2013-07-01', 'carretera,#45', 'Santiago', 'Santiago', '51000', 'República Dominicana', '8098097890'),
(11, 'Petro', 'Maximoff', '8761281515', 'pmaximoff', 'pietromaximoff@mail.com', 'pmaximoff', '1980-12-10', '2016-05-11', 'carretera,#46', 'Santiago', 'Santiago', '51000', 'República Dominicana', '8098097895'),
(12, 'Stephen', 'Strange', '1234567890', 'sstrange', 'stephenstrange@mail.com', '4c6a704646cb557d4947', '1986-03-10', '2012-04-10', 'Hato Viejo, Carretera Hatillo ', 'Jarabacoa', 'La Vega', '41000', 'República Dominicana', '1234567890'),
(13, 'James ', 'Barnes', '0000000000', 'jbarnes', 'jamesbarnes@mail.com', 'bucky', '1990-12-12', '2011-11-11', 'calle, #23', 'La Vega', 'La Vega', '41000', 'República Dominicana', '0009876543');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informacionenvio`
--

CREATE TABLE `informacionenvio` (
  `IDdireccion` int(11) NOT NULL,
  `direccionEnvio` varchar(30) NOT NULL,
  `paisEnvio` varchar(30) NOT NULL,
  `provinciaEnvio` varchar(30) NOT NULL,
  `ciudadEnvio` varchar(30) NOT NULL,
  `codigoPostal` varchar(10) NOT NULL,
  `IDuser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `informacionenvio`
--

INSERT INTO `informacionenvio` (`IDdireccion`, `direccionEnvio`, `paisEnvio`, `provinciaEnvio`, `ciudadEnvio`, `codigoPostal`, `IDuser`) VALUES
(1, 'calle, mi casa, #34', 'Republica Dominicana', 'La Vega', 'Jarabacoa', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `IDorden` int(11) NOT NULL,
  `IDempleado` int(11) NOT NULL,
  `fechaOrden` date NOT NULL,
  `fechaRequerida` date DEFAULT NULL,
  `fechaEnvio` date NOT NULL,
  `trackingNumber` varchar(80) NOT NULL,
  `Remitente` varchar(30) NOT NULL,
  `Destinatario` varchar(30) NOT NULL,
  `Ubicacion` varchar(30) NOT NULL,
  `regionEnvio` varchar(30) DEFAULT NULL,
  `codigoPostal` varchar(10) DEFAULT NULL,
  `paisEnvio` varchar(30) DEFAULT NULL,
  `IDusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`IDorden`, `IDempleado`, `fechaOrden`, `fechaRequerida`, `fechaEnvio`, `trackingNumber`, `Remitente`, `Destinatario`, `Ubicacion`, `regionEnvio`, `codigoPostal`, `paisEnvio`, `IDusuario`) VALUES
(1, 11, '2021-02-21', NULL, '2021-02-21', '33333333', 'tienda', 'Steve Rogers', 'Almacén Origen', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IDproducto` int(11) NOT NULL,
  `nombreProducto` varchar(30) NOT NULL,
  `IDcategoria` int(11) NOT NULL,
  `cantidadUnidad` int(11) NOT NULL,
  `PrecioUnidad` int(11) DEFAULT NULL,
  `unidadStock` int(11) DEFAULT NULL,
  `UnidadOrden` int(11) DEFAULT NULL,
  `descuento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(20) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Apellidos` varchar(30) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Clave` varchar(80) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Apellidos`, `Usuario`, `Clave`, `correo`, `telefono`) VALUES
(1, 'Richard Daniel Moronta Garcia', '', 'rdaniel97', 'admin', 'richarddaniel_34@hotmail.com', '8298606138'),
(2, 'Juan', 'Lopez', 'jlopez', 'e516f979536994a14d9b0500bca3a1287b9ea9fe', 'juanlopez@mail.com', '8097654321'),
(3, 'Steve', 'Rogers', 'rrogers', '51900b3d969df2904762df64a0fdb52b35440741', 'steverogers@mail.com', '8908767654');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`IDcategoria`);

--
-- Indices de la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  ADD PRIMARY KEY (`IDdetalleorden`),
  ADD KEY `IDorden` (`IDorden`),
  ADD KEY `IDproducto` (`IDproducto`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDempleado`);

--
-- Indices de la tabla `informacionenvio`
--
ALTER TABLE `informacionenvio`
  ADD PRIMARY KEY (`IDdireccion`),
  ADD KEY `IDuser` (`IDuser`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`IDorden`),
  ADD KEY `IDcliente` (`IDusuario`),
  ADD KEY `IDempleado` (`IDempleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IDproducto`),
  ADD KEY `IDcategoria` (`IDcategoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `IDcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  MODIFY `IDdetalleorden` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IDempleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `informacionenvio`
--
ALTER TABLE `informacionenvio`
  MODIFY `IDdireccion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `IDorden` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `IDproducto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleorden`
--
ALTER TABLE `detalleorden`
  ADD CONSTRAINT `detalleorden_ibfk_1` FOREIGN KEY (`IDproducto`) REFERENCES `productos` (`IDproducto`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalleorden_ibfk_2` FOREIGN KEY (`IDorden`) REFERENCES `ordenes` (`IDorden`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `informacionenvio`
--
ALTER TABLE `informacionenvio`
  ADD CONSTRAINT `informacionenvio_ibfk_1` FOREIGN KEY (`IDuser`) REFERENCES `usuarios` (`ID`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`IDusuario`) REFERENCES `usuarios` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ordenes_ibfk_2` FOREIGN KEY (`IDempleado`) REFERENCES `empleado` (`IDempleado`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`IDcategoria`) REFERENCES `categorias` (`IDcategoria`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
