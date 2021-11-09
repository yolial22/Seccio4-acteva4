-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2021 a las 09:37:55
-- Versión del servidor: 10.5.8-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `llibres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `llibres`
--

CREATE TABLE `llibres` (
  `identificaor` int(11) NOT NULL,
  `titol` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `anynaixement` varchar(255) NOT NULL,
  `anypublicacio` int(11) NOT NULL,
  `editorial` varchar(255) NOT NULL,
  `numpagines` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `llibres`
--

INSERT INTO `llibres` (`identificaor`, `titol`, `autor`, `anynaixement`, `anypublicacio`, `editorial`, `numpagines`) VALUES
(255, 'El señor de los anillos', 'J.R.R. Tolkien', '1890', 1950, 'Minotauro', 1392),
(256, 'El juego de Ender', 'Orson Scott Card', '1951', 1977, 'Ediciones B', 509),
(257, 'Lazarillo de Tormes', 'Anónimo', 'N.C', 1554, 'Clásicos Populares', 150),
(258, 'Las uvas de la ira', 'John Steinbeck', '1902', 1939, 'Alianza', 619),
(259, 'Watchmen', 'Alan Moore', '1953', 1980, 'ECC', 416),
(260, 'La hoguera de las vanidades', 'Tom Wolfe', '1930', 1980, 'Anagrama', 636),
(261, 'La familia de Pascual Duarte', 'Camilo José Cela', '1916', 1942, 'Destino', 165),
(262, 'El señor de las moscas', 'William Golding', '1911', 1972, 'Alianza', 236),
(263, 'La ciudad de los prodigios', 'Eduardo Mendoza', '1943', 1986, 'Seix Barral', 541),
(264, 'Ensayo sobre la ceguera', 'José Saramago', '1922', 1995, 'Santillana', 439),
(265, 'Los surcos del azar', 'Paco Roca', '1969', 2013, 'Astiberri', 349),
(266, 'Ghosts of Spain', 'Giles Tremlett', '1962', 2006, 'Faber & Faber', 468),
(267, 'Sidi', 'Arturo Pérez Reverte', '1951', 2019, 'Penguin', 369),
(268, 'Dune', 'Frank Herbert', '1920', 1965, 'Acervo', 741);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `llibres`
--
ALTER TABLE `llibres`
  ADD PRIMARY KEY (`identificaor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `llibres`
--
ALTER TABLE `llibres`
  MODIFY `identificaor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
