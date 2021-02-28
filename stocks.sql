-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 14-11-2020 a las 08:35:55
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stocks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_articulos`
--

CREATE TABLE `stock_articulos` (
  `codigo` int(4) NOT NULL,
  `codgaci` varchar(10) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock_articulos`
--

INSERT INTO `stock_articulos` (`codigo`, `codgaci`, `descripcion`) VALUES
(1111, 'T0156', 'TORNILLO DE ACERO MICROMETRICO ACO 8'),
(1111, 'T0158', 'TORNILLO DE ACERO MICROMETRICO ZULTZER'),
(2222, 'T0256', 'TUERCA DE ACERO MICROMETRICO ACO 8'),
(3333, 'T0188', 'TORNILLO DE DEBASTACION SLATFOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_codigos`
--

CREATE TABLE `stock_codigos` (
  `codvale` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock_codigos`
--

INSERT INTO `stock_codigos` (`codvale`) VALUES
(12345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_legajos`
--

CREATE TABLE `stock_legajos` (
  `legajo` int(10) NOT NULL,
  `nombre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `stock_legajos`
--

INSERT INTO `stock_legajos` (`legajo`, `nombre`) VALUES
(1, 'Juan Cruz'),
(2, 'Jose Alva'),
(3, 'Luis Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_vales`
--

CREATE TABLE `stock_vales` (
  `codigo` int(4) NOT NULL,
  `codgaci` varchar(10) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `legajo` int(10) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `vale` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `stock_codigos`
--
ALTER TABLE `stock_codigos`
  ADD PRIMARY KEY (`codvale`);

--
-- Indices de la tabla `stock_legajos`
--
ALTER TABLE `stock_legajos`
  ADD PRIMARY KEY (`legajo`);

--
-- Indices de la tabla `stock_vales`
--
ALTER TABLE `stock_vales`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `stock_codigos`
--
ALTER TABLE `stock_codigos`
  MODIFY `codvale` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
