-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2019 a las 04:36:47
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `calendario_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Id` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Titulo` varchar(100) NOT NULL,
  `FechaInicio` date NOT NULL,
  `HoraInicio` time DEFAULT NULL,
  `FechaFinalizacion` date DEFAULT NULL,
  `HoraFinalizacion` time DEFAULT NULL,
  `DiaCompleto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`Id`, `IdUsuario`, `Titulo`, `FechaInicio`, `HoraInicio`, `FechaFinalizacion`, `HoraFinalizacion`, `DiaCompleto`) VALUES
(1, 6, 'Fiesta', '2019-08-20', '05:00:00', '2019-08-20', '07:00:00', 0),
(4, 6, 'Deportes', '2019-08-24', '08:00:00', '2019-08-24', '10:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `FechaNacimiento`, `Username`, `Password`) VALUES
(4, 'Edwin', '1989-07-27', 'edwinflores@nextu.com', '$2y$10$NjCjCyVxTomT1FOMFTVruuZvb0/ll0CAe0Y/FWC36B4C97X9YjjV6'),
(5, 'Matias', '2015-08-18', 'mat@nextu.com', '$2y$10$b1J6a9VaCUatEjP3IjMXwepuBH8WEpLSSbBVx2qeh685g/j1EnDES'),
(6, 'Leonardo', '1996-06-30', 'leo44@nextu.com', '$2y$10$oyn0JuVosfpQZN.X1Z6j1e3PXXtL6WgdW6yehdiONzAuGW5lYdtxi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
