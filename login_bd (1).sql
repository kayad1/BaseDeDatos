-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-10-2022 a las 05:49:25
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `login_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agregar_cliente`
--

CREATE TABLE `agregar_cliente` (
  `nombre_apellido` varchar(50) NOT NULL,
  `Dni` int(7) NOT NULL,
  `telefono` int(9) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agregar_cliente`
--

INSERT INTO `agregar_cliente` (`nombre_apellido`, `Dni`, `telefono`, `correo`) VALUES
('susana del rio', 70835975, 912429025, 'jiron las perlas 2040'),
('carlos adrian', 70835971, 912429022, 'jiron las gall 2000'),
('carlos', 70835971, 912429023, 'dsadada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agregar_producto`
--

CREATE TABLE `agregar_producto` (
  `nombre_producto` varchar(100) NOT NULL,
  `codigo` int(4) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `stock` int(4) NOT NULL,
  `precio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `agregar_producto`
--

INSERT INTO `agregar_producto` (`nombre_producto`, `codigo`, `descripcion`, `stock`, `precio`) VALUES
('Agua san luis sin gas', 1, 'Agua san luis sin gas', 100, 7),
('Barbarian 174 IPA', 2, 'Barbarian 174 IPA', 100, 22),
('Barbarian Nena Whopy Wheat', 3, 'Barbarian Nena Whopy Wheat', 100, 18),
('Barbarian Quinua Pils', 4, 'Barbarian Quinua Pils', 100, 18),
('Barbarian Red Ale', 5, 'Barbarian Red Ale', 100, 22),
('Cerveza Cusqueña Doble Malta', 6, 'Cerveza Cusqueña Doble Malta', 100, 11),
('Cerveza corona', 7, 'Cerveza corona', 100, 13),
('Cerveza cusqueña', 8, 'Cerveza cusqueña', 100, 11),
('Cerveza pilsen', 9, 'Cerveza pilsen', 100, 10),
('Chicha / maracuyá personal', 10, 'Chicha / maracuyá personal', 100, 6),
('Hamburguesa + papas', 11, 'Hamburguesa de carne + pallas fritas ', 100, 25),
('Hamburguesa + papas', 12, 'Hamburguesa doble de carne + pallas fritas + queso', 100, 20),
('Para compartir', 18, '2 Hamburguesas doble de carne + pallas fritas + queso', 100, 18),
('Hamburguesa + papas + bebidas', 28, 'Hamburguesa doble de carne + pallas fritas + queso + gaseosa 500 ml', 100, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `igv`
--

CREATE TABLE `igv` (
  `dni` int(7) NOT NULL,
  `ps_igv` varchar(11) NOT NULL,
  `igv` varchar(11) NOT NULL,
  `precio_final` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `igv`
--

INSERT INTO `igv` (`dni`, `ps_igv`, `igv`, `precio_final`) VALUES
(70835971, '152.52', '33.48', '186.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Cargo` varchar(15) NOT NULL,
  `Usuario` varchar(15) NOT NULL,
  `Contra` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Apellido`, `Cargo`, `Usuario`, `Contra`) VALUES
('carlos adrian', 'delgadillo trevejo', 'vendedor', 'rum', 1018),
('aaaaa', 'aaaa', 'vedsad', 'aaa', 123),
('paolo', 'gerrero', 'vendedor', 'garena', 1018),
('carlos adrian', 'delgadillo trevejo', 'vende', '1010', 1010),
('carlos joel', 'delgado', 'vendedor', '101010', 101010),
('carlos adrian', 'delgadillo trevejo', 'Asesor Delivery', 'kayad123', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IDVENTA` int(5) NOT NULL,
  `CODIGO` int(7) NOT NULL,
  `PRODUCTO` varchar(100) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `CANTIDAD` int(3) NOT NULL,
  `PRECIO` int(5) NOT NULL,
  `NOMBREAPELLIDO` varchar(100) NOT NULL,
  `DNIRUC` int(10) NOT NULL,
  `NUMERO` int(11) NOT NULL,
  `CORREO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`IDVENTA`, `CODIGO`, `PRODUCTO`, `DESCRIPCION`, `CANTIDAD`, `PRECIO`, `NOMBREAPELLIDO`, `DNIRUC`, `NUMERO`, `CORREO`) VALUES
(353, 28, 'Hamburguesa + papas + bebidas', 'Hamburguesa doble de carne + pallas fritas + queso + gaseosa 500 ml', 5, 28, 'carlos adrian', 70835971, 912429022, 'jiron las gall 2000'),
(354, 7, 'Cerveza corona', 'Cerveza corona', 2, 13, 'carlos adrian', 70835971, 912429022, 'jiron las gall 2000'),
(355, 9, 'Cerveza pilsen', 'Cerveza pilsen', 2, 10, 'carlos adrian', 70835971, 912429022, 'jiron las gall 2000');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `igv`
--
ALTER TABLE `igv`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IDVENTA`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `IDVENTA` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
