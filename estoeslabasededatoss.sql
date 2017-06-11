-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-06-2017 a las 00:15:08
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c9`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 25, 'hacer la tarea', 'apurate', 0, '2017-03-05 01:35:42', '2017-03-05 01:35:42'),
(4, 26, 'PANADERIA', 'EL 15 EMPIEZA LAS CLASES', 1, '2017-03-05 22:00:49', '2017-03-06 01:25:41'),
(5, 25, 'yussef', 'dsfds', 0, '2017-03-10 19:30:08', '2017-03-10 19:30:08'),
(6, 27, 'boliche', 'encararse a 5 sino paga 50 la apuesta', 1, '2017-03-12 04:54:40', '2017-03-12 04:55:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lsta_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('ROLE_ADMIN','ROLE_USER') COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `lsta_name`, `email`, `password`, `role`, `is_active`, `created_at`, `updated_at`) VALUES
(24, 'yussef', 'yussef', 'mejia', 'aprocalot@gmail.com', '$2y$12$9SxRy0cB1RGwX78xyCZNUebpBmtl6rgvynTfwull3pCx7BYoGSl8i', 'ROLE_ADMIN', 1, '2017-03-05 01:31:51', '2017-03-05 01:31:51'),
(25, 'pierre', 'pierre', 'mejia', 'pierre@hotmail.com', '$2y$12$YSmBKWkHnc/DOZtn0YV9nuEx8CsaotoLexvmufnnzHsVPD9MDnSi.', 'ROLE_USER', 1, '2017-03-05 01:32:27', '2017-03-05 01:32:27'),
(26, 'olga', 'olga', 'cordova', 'olga@hotmail.com', '$2y$12$yKTrLsZDiwN1xICegewLFuIAROdKrpCpB6oIXPcydYDCAIvN/MVIW', 'ROLE_USER', 1, '2017-03-05 21:59:19', '2017-03-05 21:59:19'),
(27, 'lucas', 'lucas', 'fernandez', 'fnavarro.lucassyh@gmail.com', '$2y$12$WHUWoskA4b6yCyX3pBALdeSiGS4GG1SxPxFTZT4c6Pg2gCjUfvsUa', 'ROLE_USER', 1, '2017-03-12 04:53:55', '2017-03-12 04:53:55'),
(28, 'Sebascuaro', 'Sebascuaro', 'Rinaldi', 'rinaldi@hotmail.com', '$2y$12$NYAS565QFoU6dU3PjYLhDOrifcurTeqoeWOvJC1euZQl/vCEmNhzW', 'ROLE_ADMIN', 1, '2017-06-11 23:43:41', '2017-06-11 23:43:41');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_50586597A76ED395` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `FK_50586597A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
