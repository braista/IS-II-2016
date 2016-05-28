-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2016 a las 02:39:44
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bdatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `couchs`
--

CREATE TABLE IF NOT EXISTS `couchs` (
  `idcouch` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `capacidad` int(11) NOT NULL,
  `puntaje` double NOT NULL,
  `lugar` text NOT NULL,
  `habilitado` tinyint(1) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idtipocouch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `idestado` int(11) NOT NULL,
  `estado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
  `idimagen` int(11) NOT NULL,
  `imagen` int(11) NOT NULL,
  `idcouch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `idpago` int(11) NOT NULL,
  `nrotarjeta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
  `idpregunta` int(11) NOT NULL,
  `texto` text NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcouch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes-couchs`
--

CREATE TABLE IF NOT EXISTS `puntajes-couchs` (
  `idpuntaje` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcouch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes-usuarios`
--

CREATE TABLE IF NOT EXISTS `puntajes-usuarios` (
  `idpuntaje` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `idusuario_puntuador` int(11) NOT NULL,
  `idusuario_puntuado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `idreserva` int(11) NOT NULL,
  `fecha_inicio` int(11) NOT NULL,
  `fecha_fin` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idcouch` int(11) NOT NULL,
  `idestado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE IF NOT EXISTS `respuestas` (
  `idrespuesta` int(11) NOT NULL,
  `texto` int(11) NOT NULL,
  `idpregunta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocouch`
--

CREATE TABLE IF NOT EXISTS `tipocouch` (
  `idtipocouch` int(11) NOT NULL,
  `nombre` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuarios`
--

CREATE TABLE IF NOT EXISTS `tipousuarios` (
  `idtipousuario` int(11) NOT NULL,
  `tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` int(11) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `fnacimiento` date NOT NULL,
  `puntaje` smallint(6) NOT NULL,
  `email` varchar(15) NOT NULL,
  `clave` char(15) NOT NULL,
  `idtipousuario` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `couchs`
--
ALTER TABLE `couchs`
  ADD PRIMARY KEY (`idcouch`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`idestado`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`idimagen`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idpago`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`idpregunta`);

--
-- Indices de la tabla `puntajes-couchs`
--
ALTER TABLE `puntajes-couchs`
  ADD PRIMARY KEY (`idpuntaje`);

--
-- Indices de la tabla `puntajes-usuarios`
--
ALTER TABLE `puntajes-usuarios`
  ADD PRIMARY KEY (`idpuntaje`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idreserva`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`idrespuesta`);

--
-- Indices de la tabla `tipocouch`
--
ALTER TABLE `tipocouch`
  ADD PRIMARY KEY (`idtipocouch`) COMMENT 'id tipo de couch';

--
-- Indices de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  ADD PRIMARY KEY (`idtipousuario`) COMMENT 'holi';

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `couchs`
--
ALTER TABLE `couchs`
  MODIFY `idcouch` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `idestado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagen` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `idpago` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `idpregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puntajes-couchs`
--
ALTER TABLE `puntajes-couchs`
  MODIFY `idpuntaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puntajes-usuarios`
--
ALTER TABLE `puntajes-usuarios`
  MODIFY `idpuntaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idreserva` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `idrespuesta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipocouch`
--
ALTER TABLE `tipocouch`
  MODIFY `idtipocouch` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipousuarios`
--
ALTER TABLE `tipousuarios`
  MODIFY `idtipousuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
