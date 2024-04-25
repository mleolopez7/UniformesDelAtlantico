-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 24-04-2024 a las 22:41:45
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `-sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acceso`
--

CREATE TABLE `acceso` (
  `id` int(11) NOT NULL,
  `evento` varchar(30) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `detalle` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id` int(11) NOT NULL,
  `caja` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id`, `caja`, `estado`) VALUES
(1, 'General', 1),
(2, 'Secundario', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ClienteID` int(11) NOT NULL,
  `NombreCompleto` varchar(70) NOT NULL,
  `Identificacion` varchar(25) NOT NULL,
  `Telefono` varchar(70) NOT NULL,
  `Estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ClienteID`, `NombreCompleto`, `Identificacion`, `Telefono`, `Estado`) VALUES
(1, 'Marco Antonio Solis', '1519-1890-00198', '97149684', 1),
(2, 'Mauricio Calderon', '1910-1998-00198', '98568956', 1),
(3, 'Marvin Ponce', '1519-1908-90890', '97149684', 1),
(11, 'Ace Barcelone', '0801-1994-10923', '90991092', 1),
(12, 'Jennifer López', '0801-1940-12311', '9990-9231', 1),
(13, 'Jessenia Perez', '0801-1998-09123', '99909990', 1),
(14, 'Alejandra Martinez', '0801-1980-10921', '90901292', 1),
(15, 'Ellio Perlman', '0801-2000-09122', '90900921', 1),
(16, 'Sebastian Ruly', '0809-1990-18298', '99909092', 1),
(17, 'Angélica María ', '0801-1910-81921', '99901892', 1),
(18, 'Matias Gomez', '0801-1990-12821', '99099212', 0),
(19, 'Rodrigo Hernandez', '0801-1982-18298', '90901291', 0),
(20, 'Kevin Carl', '0809-1990-18921', '90901212', 1),
(21, 'Karla Mercado', '0801-1990-12819', '99901212', 0),
(22, 'Desmond Miles', '0809-1990-12191', '99909012', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `factura` varchar(10) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `factura`, `total`, `fecha`) VALUES
(1, '12345', '5000.00', '2023-04-11'),
(2, '12212', '100.00', '2023-04-11'),
(3, '23123', '2000.00', '2023-04-11'),
(4, '12334', '468.00', '2023-04-11'),
(5, '112313', '500.00', '2024-03-14'),
(6, '921123', '1080.00', '2024-10-13'),
(7, '900113', '400.00', '2024-02-10'),
(8, '23234', '7500.00', '2024-02-17'),
(10, '929102', '2100.00', '2024-04-15'),
(12, '123123', '8379.00', '2024-03-15'),
(13, '122311', '5000.00', '2024-02-15'),
(14, '213133', '7500.00', '2024-05-15'),
(15, '123123', '5000.00', '2024-01-15'),
(16, '1231212', '4950.00', '2024-05-15'),
(17, '345454', '44000.00', '2024-06-15'),
(18, '123124', '5000.00', '2024-07-13'),
(19, '231323', '5500.00', '2024-08-11'),
(20, '1231231', '17500.00', '2024-09-05'),
(21, '123555', '4950.00', '2024-11-12'),
(22, '1234551', '4500.00', '2024-12-13'),
(23, '123123', '525.00', '2024-04-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `detalle_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallev`
--

CREATE TABLE `detallev` (
  `id_detallev` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `tipo_productob` varchar(30) NOT NULL,
  `descripcionpb` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `color` varchar(30) NOT NULL,
  `color_letra` varchar(100) NOT NULL,
  `logo_izquierdo` varchar(100) NOT NULL,
  `logo_derecho` varchar(100) NOT NULL,
  `logo_delantero` varchar(100) NOT NULL,
  `logo_trasero` varchar(100) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_compra`
--

INSERT INTO `detalle_compra` (`id`, `id_compra`, `proveedor`, `id_producto`, `producto`, `descripcion`, `cantidad`, `precio`, `sub_total`) VALUES
(1, 1, 'Plastitelas', 2, 'Polystretch', 'Tela en yarda para camisas de futbol.', 100, '50.00', '5000.00'),
(2, 2, 'Almacén La Tijera', 1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 1, '100.00', '100.00'),
(3, 3, 'Almacén La Tijera', 3, 'Camisa blanca', 'Camisa blanca para personalizar.', 50, '40.00', '2000.00'),
(4, 4, 'Almacén La Tijera', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 50, '12.00', '600.00'),
(5, 5, 'Almacén La Tijera', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 5, '100.00', '500.00'),
(6, 6, 'Plastitelas', 5, 'Tela Roja', 'Tela en yarda para camisas de futbol.', 40, '30.00', '1200.00'),
(9, 9, 'Cortitelas', 7, 'Tela negra', 'tela negra para camisas negras ', 100, '10.00', '1000.00'),
(10, 10, 'Confeccionadora Los robles', 8, 'Tela Blanca', 'Tela para bordado de camisas', 40, '50.00', '2000.00'),
(12, 12, 'Abarrotería los castaños', 12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 150, '49.00', '7350.00'),
(13, 13, 'Confeccionadora Los robles', 9, 'Tela color negro', 'tela negra para camisas negras ', 50, '100.00', '5000.00'),
(14, 14, 'Plastitelas', 7, 'Tela negra', 'tela negra para camisas negras', 50, '150.00', '7500.00'),
(15, 15, 'Almacenes el bodeguero', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 50, '100.00', '5000.00'),
(16, 16, 'Confeccionadora Los robles', 10, 'Botones', 'Botones para camisas polo', 100, '50.00', '5000.00'),
(17, 17, 'Almacenes La Tela', 1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 400, '100.00', '40000.00'),
(18, 18, 'Abarrotería los castaños', 10, 'Botones', 'Botones para camisas polo', 100, '50.00', '5000.00'),
(19, 19, 'Almacenes el bodeguero', 9, 'Tela color negro', 'tela negra para camisas negras ', 10, '550.00', '5500.00'),
(20, 20, 'Almacenes el bodeguero', 12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 350, '50.00', '17500.00'),
(21, 21, 'Abarrotería los castaños', 7, 'Tela negra', 'tela negra para camisas negras', 50, '100.00', '5000.00'),
(22, 22, 'Almacenes el bodeguero', 11, 'Agujas para máquina', 'Agujas utilizadas para la máquina ', 10, '450.00', '4500.00'),
(23, 23, 'Abarrotería los castaños', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 50, '10.00', '500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `detalle_permisos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permiso` int(11) NOT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalle_permisos` (`id`, `id_usuario`, `id_permiso`, `id_rol`) VALUES
(94, 3, 1, 0),
(95, 3, 2, 0),
(96, 3, 3, 0),
(134, 18, 1, 0),
(141, 15, 3, 0),
(142, 16, 1, 0),
(143, 16, 3, 0),
(144, 16, 7, 0),
(145, 16, 8, 0),
(146, 16, 9, 0),
(147, 16, 10, 0),
(148, 16, 11, 0),
(149, 16, 12, 0),
(150, 16, 13, 0),
(151, 16, 14, 0),
(152, 16, 15, 0),
(159, 1, 1, 0),
(160, 1, 3, 0),
(161, 1, 7, 0),
(162, 1, 8, 0),
(163, 1, 9, 0),
(164, 1, 10, 0),
(165, 1, 11, 0),
(166, 1, 12, 0),
(167, 1, 13, 0),
(168, 1, 14, 0),
(169, 1, 15, 0),
(210, 5, 1, NULL),
(211, 5, 3, NULL),
(212, 2, 1, NULL),
(213, 2, 3, NULL),
(214, 2, 7, NULL),
(215, 2, 8, NULL),
(216, 2, 9, NULL),
(217, 2, 10, NULL),
(223, 22, 16, NULL),
(229, 19, 1, NULL),
(230, 19, 3, NULL),
(231, 19, 12, NULL),
(232, 19, 15, NULL),
(233, 19, 16, NULL),
(236, 31, 1, NULL),
(237, 31, 15, NULL),
(238, 31, 16, NULL),
(239, 33, 16, NULL),
(240, 34, 1, NULL),
(241, 34, 3, NULL),
(242, 34, 7, NULL),
(243, 34, 8, NULL),
(244, 34, 9, NULL),
(245, 34, 10, NULL),
(246, 34, 11, NULL),
(247, 34, 12, NULL),
(248, 34, 13, NULL),
(249, 34, 14, NULL),
(250, 34, 15, NULL),
(251, 34, 16, NULL),
(252, 34, 17, NULL),
(253, 34, 18, NULL),
(254, 34, 19, NULL),
(255, 34, 21, NULL),
(256, 34, 22, NULL),
(257, 34, 23, NULL),
(258, 34, 24, NULL),
(259, 34, 25, NULL),
(260, 34, 26, NULL),
(261, 34, 27, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_salida`
--

CREATE TABLE `detalle_salida` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `motivo_salida` varchar(80) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `factura` varchar(10) NOT NULL,
  `tipo_productob` varchar(30) NOT NULL,
  `descripcionpb` varchar(100) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `color` varchar(30) NOT NULL DEFAULT 'N/A',
  `color_letra` varchar(100) NOT NULL DEFAULT 'N/A',
  `logo_izquierdo` varchar(100) NOT NULL DEFAULT 'N/A',
  `logo_derecho` varchar(100) NOT NULL DEFAULT 'N/A',
  `logo_delantero` varchar(100) NOT NULL DEFAULT 'N/A',
  `logo_trasero` varchar(100) NOT NULL DEFAULT 'N/A',
  `sub_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id`, `id_venta`, `factura`, `tipo_productob`, `descripcionpb`, `cantidad`, `precio`, `talla`, `color`, `color_letra`, `logo_izquierdo`, `logo_derecho`, `logo_delantero`, `logo_trasero`, `sub_total`) VALUES
(1, 1, '2A972', 'Uniforme', 'Uniforme completo de futbol, camisa, calsoneta, medias', 1, '100.00', 'L', 'Negro', 'Blanco', 'Sin logo', 'Sin logo', 'Sin logo', 'Sin logo', '100.00'),
(2, 2, '19112', 'Uniforme', 'Uniforme completo de futbol, camisa, calsoneta, medias', 10, '100.00', 'L', 'Negro', 'Blanco', 'Sin logo', 'Sin logo', 'Sin logo', 'Sin logo', '1000.00'),
(3, 3, '47BBA', 'Camisa', 'Camisa manga larga con logo empresarial', 5, '100.00', 'M', 'Negro', 'Blanco ', 'Sin logo', 'Sin logo', 'Sin logo', 'Sin logo', '500.00'),
(4, 4, '90515', 'Polo', 'Camisa tipo Polo', 10, '100.00', 'M', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1000.00'),
(5, 5, '305CC', 'Uniforme', 'Uniforme completo de futbol, camisa, calsoneta, medias', 100, '100.00', 'L', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1000.00'),
(6, 6, '21C46', 'Zapato', 'Zapatos', 2, '750.00', 'L', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1500.00'),
(7, 7, '50033', 'Camisa', 'Camisa manga larga con logo empresarial', 5, '550.00', 'L', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2750.00'),
(8, 8, 'A9731', 'Polo', 'Camisa tipo Polo', 3, '300.00', '', 'Blanca', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '900.00'),
(9, 9, '563AC', 'Polo', 'Camisa tipo Polo', 10, '245.00', 'M', 'Verde', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2450.00'),
(10, 10, '694B1', 'Camisa', 'Camisa personalizada con sublimación', 5, '450.00', 'M', 'Blanco', 'Negro', 'N/A', 'N/A', 'Foto', 'Acid ghost', '2250.00'),
(11, 12, '41348', 'Polo de trabajo', 'Camisa polo para empresas', 5, '500.00', 'M', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2500.00'),
(12, 14, 'ABC68', 'Polo de trabajo', 'Camisa polo para empresas', 5, '700.00', 'M', 'Blanca', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '3500.00'),
(13, 16, '4BB80', 'Uniforme', 'Uniformes para equipos de futbol', 5, '450.00', 'M', 'Negro', 'Blanco', 'Escudo', 'Copa', 'FENAFUT', 'BAC', '2250.00'),
(14, 16, '4BB80', 'Uniforme', 'Uniformes para equipos de futbol', 5, '450.00', 'S', 'Negro', 'Blanco', 'Escudo', 'Copa', 'FENAFUT', 'BAC', '2250.00'),
(15, 17, '35439', 'Zapato', 'Zapatos para trabajos pesados', 2, '700.00', 'M', 'Blancos', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1400.00'),
(16, 19, '779C1', 'Uniforme', 'Uniformes para equipos de futbol', 5, '1000.00', 'M', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(17, 20, 'B3447', 'Zapato', 'Zapatos para trabajos pesados', 4, '500.00', 'M', 'Verde', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2000.00'),
(18, 21, 'AB644', 'Uniforme', 'Uniformes para equipos de futbol', 5, '400.00', 'M', 'Amarillo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2000.00'),
(19, 21, 'AB644', 'Uniforme', 'Uniformes para equipos de futbol', 5, '400.00', 'XL', 'Amarillo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2000.00'),
(20, 22, '94AB3', 'Camisa', 'Camisa personalizada con sublimación', 10, '200.00', 'L', 'Roja', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '2000.00'),
(21, 23, '88A1B', 'Gorra', 'Gorra', 5, '300.00', 'M', 'Rosado', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1500.00'),
(22, 24, '4232B', 'Gorra', 'Gorra', 5, '300.00', 'L', 'Rosado', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1500.00'),
(23, 25, '31568', 'Camisa', 'Camisa manga larga con logo empresarial', 5, '200.00', 'S', 'Rojo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1000.00'),
(24, 26, 'C856A', 'Camisa', 'Camisa manga larga con logo empresarial', 15, '650.00', 'XL', 'Amarillo', 'Rojo', 'N/A', 'N/A', 'MUSICON', 'N/A', '9750.00'),
(25, 27, '50718', 'Gorra', 'Gorra', 10, '500.00', 'S', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(26, 27, '50718', 'Gorra', 'Gorra', 10, '500.00', 'XXL', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(27, 28, 'CB98B', 'Camisa', 'Camisa personalizada con sublimación', 20, '200.00', 'M', 'Rojo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '4000.00'),
(28, 28, 'CB98B', 'Camisa', 'Camisa personalizada con sublimación', 20, '200.00', 'XL', 'Rojo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '4000.00'),
(29, 28, 'CB98B', 'Camisa', 'Camisa personalizada con sublimación', 20, '200.00', 'S', 'Rojo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '4000.00'),
(30, 29, '37349', 'Polo de trabajo', 'Camisa polo para empresas', 20, '500.00', 'M', 'Gris', 'Negro', 'N/A', 'N/A', 'FICOHSA', 'N/A', '10000.00'),
(31, 29, '37349', 'Polo de trabajo', 'Camisa polo para empresas', 20, '500.00', 'XL', 'Gris', 'Negro', 'N/A', 'N/A', 'FICOHSA', 'N/A', '10000.00'),
(32, 30, '354BC', 'Zapato', 'Zapatos para trabajos pesados', 10, '1500.00', 'S', 'Negro', 'N/A', 'N/A', 'N/A', 'Caterpilar', 'N/A', '15000.00'),
(33, 31, '72287', 'Uniforme', 'Uniformes para equipos de futbol', 30, '500.00', 'L', 'Blanca', 'N/A', 'N/A', 'N/A', 'N/A', 'Aguila Roja', '15000.00'),
(34, 31, '72287', 'Uniforme', 'Uniformes para equipos de futbol', 30, '500.00', 'XXL', 'Blanca', 'N/A', 'N/A', 'N/A', 'N/A', 'Aguila Roja', '15000.00'),
(35, 32, '48488', 'Gorra', 'Gorra', 40, '500.00', 'S', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '20000.00'),
(36, 33, '04976', 'Camisa', 'Camisa manga larga con logo empresarial', 10, '500.00', 'M', 'Verde', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(37, 33, '04976', 'Camisa', 'Camisa manga larga con logo empresarial', 10, '500.00', 'XL', 'Verde', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(38, 33, '04976', 'Camisa', 'Camisa manga larga con logo empresarial', 10, '500.00', 'XXL', 'Verde', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(39, 34, '643AB', 'Camisa', 'Camisa personalizada con sublimación', 20, '500.00', 'XL', 'Beige', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '10000.00'),
(40, 35, '53758', 'Polo de trabajo', 'Camisa polo para empresas', 25, '400.00', 'M', 'Blanco', 'N/A', 'N/A', 'N/A', 'Olimpia', 'N/A', '10000.00'),
(41, 36, '554B3', 'Zapato', 'Zapatos para trabajos pesados', 10, '500.00', 'M', 'Azul', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(42, 36, '554B3', 'Zapato', 'Zapatos para trabajos pesados', 10, '500.00', 'XXL', 'Azul', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(43, 37, 'B9C82', 'Camisa', 'Camisa manga larga con logo empresarial', 20, '500.00', 'L', 'Blanco', 'Gris', 'N/A', 'N/A', 'BAC', 'N/A', '10000.00'),
(44, 37, 'B9C82', 'Camisa', 'Camisa manga larga con logo empresarial', 20, '500.00', 'M', 'Blanco', 'Gris', 'N/A', 'N/A', 'BAC', 'N/A', '10000.00'),
(45, 37, 'B9C82', 'Camisa', 'Camisa manga larga con logo empresarial', 20, '500.00', 'XL', 'Blanco', 'Gris', 'N/A', 'N/A', 'BAC', 'N/A', '10000.00'),
(46, 38, '03B95', 'Gorra', 'Gorra', 20, '500.00', 'M', 'Roja Oscuro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '10000.00'),
(47, 38, '03B95', 'Gorra', 'Gorra', 20, '500.00', 'XXL', 'Roja Oscuro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '10000.00'),
(48, 39, '067AB', 'Polo de trabajo', 'Camisa polo para empresas', 1, '100.00', 'M', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '100.00'),
(49, 40, '66046', 'Polo de trabajo', 'Camisa polo para empresas', 1, '100.00', 'L', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '100.00'),
(50, 42, '294C3', 'Polo de trabajo', 'Camisa polo para empresas', 1, '100.00', 'L', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '100.00'),
(51, 43, '11409', 'Polo de trabajo', 'Camisa polo para empresas', 1, '100.00', 'M', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '100.00'),
(52, 44, 'A05A0', 'Uniforme', 'Uniformes para equipos de futbol', 10, '100.00', 'M', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '1000.00'),
(53, 45, 'B3383', 'Polo de trabajo', 'Camisa polo para empresas', 10, '500.00', 'M', 'Negro', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '5000.00'),
(54, 46, '6C5A8', 'Uniforme', 'Uniformes para equipos de futbol', 1, '300.00', 'L', 'Azul', 'Blanco', 'Logo del equipo', 'Nombre persona', 'Numero', 'Brayan #11', '300.00'),
(55, 46, '6C5A8', 'Uniforme', 'Uniformes para equipos de futbol', 1, '300.00', 'L', 'Azul', 'Blanco', 'Logo del equipo', 'Nombre persona', 'Numero', 'Allan #9', '300.00'),
(56, 46, '6C5A8', 'Uniforme', 'Uniformes para equipos de futbol', 1, '300.00', 'M', 'Azul', 'Blanco', 'Logo del equipo', 'Nombre persona', 'Numero', 'Juan #1', '300.00'),
(57, 46, '6C5A8', 'Uniforme', 'Uniformes para equipos de futbol', 1, '300.00', 'S', 'Azul', 'Blanco', 'Logo del equipo', 'Nombre persona', 'Numero', 'Yanior #5', '300.00'),
(58, 46, '6C5A8', 'Camisa', 'Camisa manga larga con logo empresarial', 1, '280.00', 'L', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '280.00'),
(59, 47, '8708A', 'Uniforme', 'Uniformes para equipos de futbol', 1, '100.00', 'M', 'BNergo', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '100.00'),
(60, 48, '5C929', 'Camisa', 'Camisa manga larga con logo empresarial', 1, '500.00', 'M', 'Blanco', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', '500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `mensaje` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `telefono`, `direccion`, `mensaje`) VALUES
(1, 'Uniformes del Atlántico', '9483-2620', 'Barrio El Centro, Plaza Coral, Tela, Honduras', '¡POR FAVOR REVISAR SU PRODUCTO A LA HORA DE ENTREGA!\r\nNO SOMOS RESPONSABLES UNA VEZ ENTREGADO.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(11) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `almacen` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `proveedor`, `id_producto`, `producto`, `descripcion`, `cantidad`, `fecha_entrada`, `almacen`) VALUES
(1, 'Plastitelas', 2, 'Polystretch', 'Tela en yarda para camisas de futbol.', 49, '2024-04-12', 1),
(2, 'Almacén La Tijera', 1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 151, '2024-04-12', 1),
(3, 'Almacén La Tijera', 3, 'Camisa blanca', 'Camisa blanca para personalizar.', 10, '2024-04-12', 1),
(4, 'Almacén La Tijera', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 85, '2024-04-11', 1),
(7, 'Cortitelas', 7, 'Tela negra', 'tela negra para camisas negras xd', 98, '2024-04-11', 1),
(8, 'Confeccionadora Los robles', 8, 'Tela Blanca', 'Tela para bordado de camisas', 40, '2024-04-15', 1),
(9, 'Almacenes el bodeguero', 10, 'Botones', 'Botones para camisas polo', 246, '2024-01-15', 1),
(10, 'Abarrotería los castaños', 12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 250, '2024-03-15', 1),
(11, 'Confeccionadora Los robles', 9, 'Tela color negro', 'tela negra para camisas negras ', 60, '2024-02-15', 1),
(12, 'Almacenes el bodeguero', 11, 'Agujas para máquina', 'Agujas utilizadas para la máquina ', 10, '2024-04-13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `id_kardex` int(11) NOT NULL,
  `id_inventario` int(11) NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `tipo_kardex` enum('entrada','salida','','') NOT NULL,
  `fecha_entrada` date NOT NULL,
  `cantidad_entrada` int(11) NOT NULL,
  `fecha_salida` date NOT NULL,
  `factura` varchar(10) NOT NULL,
  `cantidad_salida` int(11) NOT NULL,
  `motivo_salida` varchar(80) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `costo_total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`id_kardex`, `id_inventario`, `proveedor`, `id_producto`, `producto`, `descripcion`, `tipo_kardex`, `fecha_entrada`, `cantidad_entrada`, `fecha_salida`, `factura`, `cantidad_salida`, `motivo_salida`, `precio_unitario`, `costo_total`) VALUES
(1, 0, 'Plastitelas', 2, 'Polystretch', 'Tela en yarda para camisas de futbol.', 'entrada', '2023-04-11', 100, '0000-00-00', '12345', 0, '', '50.00', '5000.00'),
(2, 0, 'Almacén La Tijera', 1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 'entrada', '2023-04-11', 1, '0000-00-00', '12212', 0, '', '100.00', '100.00'),
(3, 0, 'Almacén La Tijera', 3, 'Camisa blanca', 'Camisa blanca para personalizar.', 'entrada', '2023-04-11', 50, '0000-00-00', '23', 0, '', '40.00', '2000.00'),
(4, 0, 'Almacén La Tijera', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 'entrada', '2023-04-11', 50, '0000-00-00', '12334', 0, '', '12.00', '600.00'),
(9, 0, '', 2, 'Polystretch', '', 'salida', '0000-00-00', 0, '2024-04-11', '', 1, 'Uso de camisa', '0.00', '0.00'),
(10, 0, '', 2, 'Polystretch', '', 'salida', '0000-00-00', 0, '2024-04-12', '', 50, 'Uso de camisa', '0.00', '0.00'),
(11, 0, 'Almacén La Tijera', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 'entrada', '2024-03-14', 5, '0000-00-00', '1', 0, '', '100.00', '500.00'),
(12, 0, '', 4, 'Agujas en caja', '', 'salida', '0000-00-00', 0, '2024-04-12', '', 40, 'Uso de camisa', '0.00', '0.00'),
(18, 0, 'Cortitelas', 7, 'Tela negra', 'tela negra para camisas negras xd', 'entrada', '2024-01-01', 100, '0000-00-00', '12123', 0, '', '10.00', '1000.00'),
(19, 0, '', 7, 'Tela negra', '', 'salida', '0000-00-00', 0, '2024-04-12', '', 50, 'Uso de camisa', '0.00', '0.00'),
(20, 0, '', 7, 'Tela negra', '', 'salida', '0000-00-00', 0, '2024-06-12', '', 10, 'Uso de camisa', '0.00', '0.00'),
(21, 0, '', 3, 'Camisa blanca', '', 'salida', '0000-00-00', 0, '2024-04-13', '', 20, 'Uso de camisa', '0.00', '0.00'),
(22, 0, '', 3, 'Camisa blanca', '', 'salida', '0000-00-00', 0, '2024-04-14', '', 20, 'Uso de camisa', '0.00', '0.00'),
(23, 0, 'Confeccionadora Los robles', 8, 'Tela Blanca', 'Tela para bordado de camisas', 'entrada', '2024-04-15', 40, '0000-00-00', '929102', 0, '', '50.00', '2000.00'),
(24, 0, 'Almacenes el bodeguero', 10, 'Botones', 'Botones para camisas polo', 'entrada', '2024-01-15', 300, '0000-00-00', '900912', 0, '', '40.00', '18000.00'),
(25, 0, 'Abarrotería los castaños', 12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 'entrada', '2024-03-15', 150, '0000-00-00', '123123', 0, '', '49.00', '7350.00'),
(26, 0, 'Confeccionadora Los robles', 9, 'Tela color negro', 'tela negra para camisas negras ', 'entrada', '2024-02-15', 50, '0000-00-00', '122311', 0, '', '100.00', '5000.00'),
(27, 0, 'Plastitelas', 7, 'Tela negra', 'tela negra para camisas negras', 'entrada', '2024-05-15', 50, '0000-00-00', '213133', 0, '', '150.00', '7500.00'),
(28, 0, 'Almacenes el bodeguero', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 'entrada', '2024-01-15', 50, '0000-00-00', '123123', 0, '', '100.00', '5000.00'),
(29, 0, 'Confeccionadora Los robles', 10, 'Botones', 'Botones para camisas polo', 'entrada', '2024-06-15', 100, '0000-00-00', '123123', 0, '', '50.00', '5000.00'),
(30, 0, 'Almacenes La Tela', 1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 'entrada', '2024-07-15', 400, '0000-00-00', '345454', 0, '', '100.00', '40000.00'),
(31, 0, 'Abarrotería los castaños', 10, 'Botones', 'Botones para camisas polo', 'entrada', '2024-08-13', 100, '0000-00-00', '123124', 0, '', '50.00', '5000.00'),
(32, 0, 'Almacenes el bodeguero', 9, 'Tela color negro', 'tela negra para camisas negras ', 'entrada', '2024-09-11', 10, '0000-00-00', '231323', 0, '', '550.00', '5500.00'),
(33, 0, 'Almacenes el bodeguero', 12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 'entrada', '2024-10-05', 350, '0000-00-00', '1231231', 0, '', '50.00', '17500.00'),
(34, 0, 'Abarrotería los castaños', 7, 'Tela negra', 'tela negra para camisas negras', 'entrada', '2024-11-12', 50, '0000-00-00', '123555', 0, '', '100.00', '5000.00'),
(35, 0, 'Almacenes el bodeguero', 11, 'Agujas para máquina', 'Agujas utilizadas para la máquina ', 'entrada', '2024-12-13', 10, '0000-00-00', '1234551', 0, '', '450.00', '4500.00'),
(36, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-01-15', '', 100, 'Confeccion de camisas', '0.00', '0.00'),
(37, 0, '', 1, 'Hilo blanco', '', 'salida', '0000-00-00', 0, '2024-02-15', '', 150, 'Costura de gorras', '0.00', '0.00'),
(38, 0, '', 4, 'Agujas en caja', '', 'salida', '0000-00-00', 0, '2024-03-15', '', 15, 'Costurar gorras', '0.00', '0.00'),
(39, 0, '', 12, 'Hilo Rojo', '', 'salida', '0000-00-00', 0, '2024-05-15', '', 100, 'Reparacion de zapatos costurandolos', '0.00', '0.00'),
(40, 0, '', 7, 'Tela negra', '', 'salida', '0000-00-00', 0, '2024-06-15', '', 40, 'Costurar camisas', '0.00', '0.00'),
(41, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-07-15', '', 100, 'Costurar botones a camisas', '0.00', '0.00'),
(42, 0, '', 12, 'Hilo Rojo', '', 'salida', '0000-00-00', 0, '2024-08-15', '', 50, 'Hilo para costurar camisas', '0.00', '0.00'),
(43, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-09-15', '', 50, 'Botones que iran costurados en las camisas', '0.00', '0.00'),
(44, 0, '', 1, 'Hilo blanco', '', 'salida', '0000-00-00', 0, '2024-10-15', '', 100, 'Costurar gorras con este hilo', '0.00', '0.00'),
(45, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-11-15', '', 50, 'Botones laterales que iran en las gorras', '0.00', '0.00'),
(46, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-12-15', '', 100, 'Botones para costurar en camisas', '0.00', '0.00'),
(47, 0, '', 12, 'Hilo Rojo', '', 'salida', '0000-00-00', 0, '2023-04-15', '', 100, 'Hilo para los laterales', '0.00', '0.00'),
(48, 0, '', 4, 'Agujas en caja', '', 'salida', '0000-00-00', 0, '2024-04-19', '', 10, 'Para la camisas', '0.00', '0.00'),
(49, 0, '', 4, 'Agujas en caja', '', 'salida', '0000-00-00', 0, '2024-04-19', '', 5, 'Creacion de camisa polo para musicon', '0.00', '0.00'),
(50, 0, '', 7, 'Tela negra', '', 'salida', '0000-00-00', 0, '2024-04-19', '', 2, 'Creacion de camisa polo para musicon', '0.00', '0.00'),
(51, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-04-19', '', 2, 'Creacion de camisa polo para musicon', '0.00', '0.00'),
(52, 0, '', 10, 'Botones', '', 'salida', '0000-00-00', 0, '2024-04-19', '', 2, 'Costurar botones a camisas', '0.00', '0.00'),
(53, 0, 'Abarrotería los castaños', 4, 'Agujas en caja', 'Agujas para maquina de costurar.', 'entrada', '2024-04-19', 50, '0000-00-00', '123123', 0, '', '10.00', '500.00');

--
-- Disparadores `kardex`
--
DELIMITER $$
CREATE TRIGGER `after_kardex_insert` AFTER INSERT ON `kardex` FOR EACH ROW BEGIN
    IF NEW.tipo_kardex = 'entrada' THEN
        -- Verificar existencia del producto en el inventario
        IF (SELECT COUNT(*) FROM inventario WHERE id_producto = NEW.id_producto) = 0 THEN
            -- Si no existe, insertar en el inventario
            INSERT INTO inventario (proveedor, id_producto, producto, descripcion, cantidad, fecha_entrada)
            VALUES (NEW.proveedor, NEW.id_producto, NEW.producto, NEW.descripcion, NEW.cantidad_entrada, NEW.fecha_entrada);
        ELSE
            -- Si existe, actualizar la cantidad en el inventario
            UPDATE inventario
            SET cantidad = cantidad + NEW.cantidad_entrada
            WHERE id_producto = NEW.id_producto;
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_kardex_insert_salida` AFTER INSERT ON `kardex` FOR EACH ROW BEGIN
    IF NEW.tipo_kardex = 'salida' THEN
        -- Actualizar la cantidad en el inventario solo si hay suficiente cantidad del producto
        UPDATE inventario
        SET cantidad = CASE
            WHEN cantidad >= NEW.cantidad_salida THEN cantidad - NEW.cantidad_salida
            ELSE cantidad
        END
        WHERE id_producto = NEW.id_producto;

        -- Verificar si se actualizó alguna fila en el inventario
        IF ROW_COUNT() = 0 THEN
            -- Si no se actualizó ninguna fila, no hay suficiente cantidad en el inventario
            INSERT INTO error_log (mensaje) VALUES ('No hay suficiente cantidad del producto en el inventario para la salida');
        END IF;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_prima`
--

CREATE TABLE `materia_prima` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia_prima`
--

INSERT INTO `materia_prima` (`id_producto`, `producto`, `descripcion`, `estado`) VALUES
(1, 'Hilo blanco', 'Hilo para costurar blanco, en royo', 1),
(2, 'Polystretch', 'Tela en yarda para camisas de futbol.', 1),
(3, 'Camisa blanca', 'Camisa blanca para personalizar.', 1),
(4, 'Agujas en caja', 'Agujas para maquina de costurar.', 1),
(7, 'Tela negra', 'tela negra para camisas negras', 1),
(8, 'Tela Blanca', 'Tela para bordado de camisas', 1),
(9, 'Tela color negro', 'tela negra para camisas negras ', 1),
(10, 'Botones', 'Botones para camisas polo', 1),
(11, 'Agujas para máquina', 'Agujas utilizadas para la máquina ', 1),
(12, 'Hilo Rojo', 'Hilo de color rojo para camisas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `permiso` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `permiso`) VALUES
(1, 'usuarios'),
(3, 'configuracion'),
(7, 'nueva venta'),
(8, 'historial ventas'),
(9, 'proveedores'),
(10, 'nueva compra'),
(11, 'realizadas'),
(12, 'kardex'),
(13, 'productos'),
(14, 'inventario'),
(15, 'roles'),
(17, 'inventario'),
(18, 'producto terminado'),
(19, 'productos'),
(21, 'historial de compras'),
(22, 'clientes'),
(23, 'tallas'),
(24, 'materia prima'),
(25, 'historial de ventas'),
(26, 'produccion'),
(27, 'catalogo'),
(28, 'reportes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_base`
--

CREATE TABLE `productos_base` (
  `id_productob` int(11) NOT NULL,
  `codigo_productob` varchar(20) DEFAULT NULL,
  `nombrepb` varchar(200) DEFAULT NULL,
  `descripcionpb` text DEFAULT NULL,
  `tipo_productob` varchar(50) DEFAULT NULL,
  `estadopb` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos_base`
--

INSERT INTO `productos_base` (`id_productob`, `codigo_productob`, `nombrepb`, `descripcionpb`, `tipo_productob`, `estadopb`) VALUES
(1, 'CA001', 'Camisa Polo ', 'Camisa polo para empresas', 'Polo de trabajo', 1),
(2, 'UF001', 'Uniforme de Futbol', 'Uniformes para equipos de futbol', 'Uniforme', 1),
(3, 'CA002', 'Camisa Formal', 'Camisa manga larga con logo empresarial', 'Camisa', 1),
(4, 'GO001', 'Gorra Deportiva', 'Gorra deportiva', 'Gorra', 1),
(5, 'ZA001', 'Zapato de trabajo', 'Zapato de trabajo', 'Zapato', 1),
(7, 'CA003', 'Camisa Personal', 'Camisa para sublimacion', 'Camisa', 1),
(8, 'PA001', 'Pantalon de tela', 'Pantalon de tela', 'Pantalon Jean', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `proveedores_id` int(11) NOT NULL,
  `nombre_proveedor` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `condiciones_pago` varchar(60) NOT NULL,
  `plazo_entrega` varchar(60) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`proveedores_id`, `nombre_proveedor`, `direccion`, `telefono`, `condiciones_pago`, `plazo_entrega`, `estado`) VALUES
(13, 'Cortitelas', 'Col. Alameda', '98-23-34-43', 'Contado', '2 dias', 1),
(14, 'Almacén La Tijera', 'Col. las torres', '99-43-23-45', 'Contado', '1 dia', 1),
(15, 'Plastitelas', 'Barrio. Concepción', '97-14-95-94', 'Credito', '3 dias', 1),
(22, 'Almacenes La Tela', 'Col. Las crucitas', '2200-2202', 'Plazo', 'En 2 dias', 1),
(23, 'Confeccionadora Los robles', 'Frente a BAC Col. Las vegas', '2200-2921', 'Al contado', '2 dias', 1),
(24, 'Almacenes el bodeguero', 'Colonia san martin', '9002-0922', 'Credito', '3 dias', 1),
(25, 'Abarrotería los castaños', 'Colonia pedregal', '9092-0921', 'A plazo', '2 dias', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `permisos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `estado`, `permisos`) VALUES
(1, 'Administrador', 1, NULL),
(2, 'Gerente', 1, NULL),
(4, 'Costurero', 1, NULL),
(5, 'Cajero', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tallas`
--

CREATE TABLE `tallas` (
  `TallasID` int(11) NOT NULL,
  `TipoTalla` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tallas`
--

INSERT INTO `tallas` (`TallasID`, `TipoTalla`, `estado`) VALUES
(1, 'L', 1),
(2, 'M', 1),
(3, 'S', 1),
(4, 'XL', 1),
(5, 'XXL', 1),
(8, '18', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `factura` varchar(10) NOT NULL,
  `cliente` varchar(30) NOT NULL,
  `identificacion` varchar(25) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `fecha_actual` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `cajero` varchar(30) NOT NULL,
  `comentario` varchar(80) NOT NULL DEFAULT 'N/A',
  `descuento` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `abono` decimal(10,2) NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  `foto` varchar(100) DEFAULT 'default.jpg',
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `factura`, `cliente`, `identificacion`, `telefono`, `fecha_actual`, `fecha_entrega`, `cajero`, `comentario`, `descuento`, `total`, `abono`, `saldo`, `foto`, `estado`) VALUES
(1, '2A972', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2023-04-10', '2024-04-14', 'Jevinlo', '', 5, '95.00', '10.00', '85.00', '_a222ea59-27b8-4d38-999c-05331b35ae2c.jpg', 2),
(2, '19112', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2023-04-11', '2024-04-19', 'Jevinlo', '', 10, '900.00', '200.00', '700.00', '_a222ea59-27b8-4d38-999c-05331b35ae2c.jpg', 2),
(3, '47BBA', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-11', '2024-04-26', 'Jevinlo', '', 10, '450.00', '200.00', '250.00', '_a222ea59-27b8-4d38-999c-05331b35ae2c.jpg', 2),
(4, '90515', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-12', '2024-05-02', 'Jevinlo', 'N/A', 10, '900.00', '300.00', '600.00', '_a222ea59-27b8-4d38-999c-05331b35ae2c.jpg', 2),
(5, '305CC', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2024-04-12', '2024-06-20', 'Jevinlo', '', 10, '900.00', '400.00', '500.00', 'default.jpg', 2),
(6, '21C46', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-14', '2023-05-15', 'Jevinlo', 'N/A', 10, '1350.00', '200.00', '1150.00', '_a222ea59-27b8-4d38-999c-05331b35ae2c.jpg', 2),
(7, '50033', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-14', '2024-05-24', 'Jevinlo', 'N/A', 5, '2612.50', '500.00', '2112.50', 'default.jpg', 1),
(8, 'A9731', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2024-04-14', '2024-04-19', 'Jevinlo', '', 4, '864.00', '200.00', '664.00', 'default.jpg', 2),
(9, '563AC', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-14', '2024-04-18', 'Jevinlo', 'N/A', 5, '2327.50', '500.00', '1827.50', 'default.jpg', 0),
(19, '779C1', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2024-04-15', '2024-04-21', 'Jevinlo', 'N/A', 10, '4500.00', '1500.00', '3000.00', 'default.jpg', 0),
(20, 'B3447', 'Kevin Carl', '0809-1990-18921', '90901212', '2024-04-15', '2024-05-24', 'Jevinlo', 'N/A', 10, '1800.00', '1000.00', '800.00', 'default.jpg', 1),
(21, 'AB644', 'Matias Gomez', '0801-1990-12821', '99099212', '2024-04-15', '2024-04-28', 'Jevinlo', 'N/A', 10, '3600.00', '2000.00', '1600.00', 'default.jpg', 1),
(22, '94AB3', 'Rodrigo Hernandez', '0801-1982-18298', '90901291', '2024-04-15', '2024-05-03', 'Jevinlo', 'N/A', 10, '1800.00', '1000.00', '800.00', 'default.jpg', 2),
(24, '4232B', 'Ellio Perlman', '0801-2000-09122', '90900921', '2024-04-15', '2024-04-27', 'Jevinlo', 'N/A', 5, '1425.00', '500.00', '925.00', 'default.jpg', 1),
(26, 'C856A', 'Kevin Carl', '0809-1990-18921', '90901212', '2024-05-15', '2024-04-20', 'Jevinlo', 'N/A', 10, '8775.00', '2000.00', '6775.00', 'ZSM-AZUL-INDIGO.jpg', 2),
(27, '50718', 'Ace Barcelone', '0801-1994-10923', '90991092', '2024-01-15', '2024-04-25', 'Jevinlo', 'N/A', 10, '9000.00', '3000.00', '6000.00', 'default.jpg', 1),
(28, 'CB98B', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2024-02-15', '2024-04-30', 'Jevinlo', 'N/A', 10, '10800.00', '5000.00', '5800.00', 'default.jpg', 2),
(29, '37349', 'Jennifer López', '0801-1940-12311', '99909231', '2024-03-15', '2024-04-27', 'Jevinlo', 'N/A', 10, '18000.00', '5000.00', '13000.00', 'default.jpg', 1),
(30, '354BC', 'Matias Gomez', '0801-1990-12821', '99099212', '2024-06-15', '2024-04-28', 'Jevinlo', 'N/A', 10, '13500.00', '5000.00', '8500.00', 'default.jpg', 1),
(31, '72287', 'Desmond Miles', '0809-1990-12191', '99909012', '2024-07-10', '2024-07-18', 'Jevinlo', 'N/A', 10, '27000.00', '5000.00', '22000.00', 'default.jpg', 0),
(32, '48488', 'Alejandra Martinez', '0801-1980-10921', '90901292', '2024-08-15', '2024-04-20', 'Jevinlo', 'N/A', 10, '18000.00', '5000.00', '13000.00', 'default.jpg', 1),
(33, '04976', 'Angélica María', '0801-1910-81921', '99901892', '2024-09-15', '2024-05-05', 'Jevinlo', 'N/A', 10, '13500.00', '5000.00', '8500.00', 'default.jpg', 1),
(34, '643AB', 'Sebastian Ruly', '0809-1990-18298', '99909092', '2024-10-15', '2024-04-28', 'Jevinlo', 'N/A', 10, '9000.00', '2000.00', '7000.00', 'default.jpg', 0),
(35, '53758', 'Desmond Miles', '0809-1990-12191', '99909012', '2024-11-15', '2024-04-26', 'Jevinlo', 'N/A', 10, '9000.00', '6500.00', '2500.00', 'default.jpg', 1),
(36, '554B3', 'Rodrigo Hernandez', '0801-1982-18298', '90901291', '2024-12-15', '2024-04-26', 'Jevinlo', 'N/A', 15, '9000.00', '9000.00', '500.00', 'default.jpg', 0),
(37, 'B9C82', 'Jessenia Perez', '0801-1998-09123', '99909990', '2023-04-15', '2024-04-20', 'Jevinlo', 'N/A', 5, '28500.00', '15000.00', '13500.00', 'default.jpg', 2),
(38, '03B95', 'Rodrigo Hernandez', '0801-1982-18298', '90901291', '2023-08-15', '2024-05-04', 'Jevinlo', 'N/A', 10, '18000.00', '7000.00', '11000.00', 'default.jpg', 1),
(39, '067AB', 'Jennifer López', '0801-1940-12311', '9990', '2024-04-15', '2024-04-20', 'Jevinlo', 'N/A', 1, '99.00', '12.00', '87.00', 'default.jpg', 1),
(44, 'A05A0', 'Jennifer López', '0801-1940-12311', '9990-9231', '2024-04-15', '2024-04-21', 'Jevinlo', 'N/A', 10, '900.00', '100.00', '800.00', 'default.jpg', 1),
(45, 'B3383', 'Marvin Ponce', '1519-1908-90890', '97149684', '2024-04-17', '2024-04-27', 'Jevinlo', 'N/A', 10, '4500.00', '3500.00', '1000.00', 'default.jpg', 1),
(46, '6C5A8', 'Mauricio Calderon', '1910-1998-00198', '98568956', '2024-04-19', '0000-00-00', 'Jevinlo', 'N/A', 10, '1332.00', '600.00', '732.00', 'ZSM-AZUL-INDIGO.jpg', 2),
(47, '8708A', 'Marco Antonio Solis', '1519-1890-00198', '97149684', '2024-04-19', '2024-04-26', 'Jevinlo', 'N/A', 1, '99.00', '1.00', '98.00', 'default.jpg', 1),
(48, '5C929', 'Marvin Ponce', '1519-1908-90890', '97149684', '2024-04-19', '2024-07-25', 'Jevinlo', 'N/A', 1, '495.00', '1.00', '494.00', 'default.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_usuarios`
--

CREATE TABLE `_usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `_usuarios`
--

INSERT INTO `_usuarios` (`id`, `usuario`, `nombre`, `clave`, `correo`, `id_rol`, `id_caja`, `estado`, `token`) VALUES
(1, 'Jevinlo', 'Jeremy Gabriel López Castillo', 'f88fa5ec367813bccb28321b56d55e05e1a2572d44c1f2c11354708309e5da9c', 'jevinvega@gmail.com', 1, 1, 1, NULL),
(15, 'JeremyCA', 'Salvador Vega', '2e6a7d1050bd9dca160b4b8aba8d390bb3a02eed1e659984f7eba1e6f227e9ea', 'a91fe5070284d34b7885abe652577bcf', 4, 1, 1, NULL),
(16, 'JeremyCAA', 'Salvador Vega', 'b67e8fc3d0f74eb423dc2fd6b6125d3dbccc35703de2a4c43e694583ca526782', 'e7a1b6c4127ded78cc9d3f8eff6578cd', 5, 2, 1, NULL),
(85, 'Josseline', 'Salvador Vega', 'a6d518db8fbc78a04818da0fdbca65fabc4b08911134e87929ae2daa4d667608', 'salvadorvega912@gmail.com', 1, 1, 0, NULL),
(88, 'Heyson', 'Heyson Alberto', 'de8ffc2e607abf2d8b204eed9de16e10212ac1043751725bb6cbdc1e3ed82277', 'jeremygabriellopezcastillo@gmail.com', 1, 1, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acceso`
--
ALTER TABLE `acceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ClienteID`),
  ADD KEY `ClienteID` (`ClienteID`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`detalle_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `detallev`
--
ALTER TABLE `detallev`
  ADD PRIMARY KEY (`id_detallev`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_compra` (`id_compra`);

--
-- Indices de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_salida`
--
ALTER TABLE `detalle_salida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`id_kardex`);

--
-- Indices de la tabla `materia_prima`
--
ALTER TABLE `materia_prima`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_base`
--
ALTER TABLE `productos_base`
  ADD PRIMARY KEY (`id_productob`),
  ADD UNIQUE KEY `codigo_productob` (`codigo_productob`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`proveedores_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tallas`
--
ALTER TABLE `tallas`
  ADD PRIMARY KEY (`TallasID`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `_usuarios`
--
ALTER TABLE `_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_caja` (`id_caja`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acceso`
--
ALTER TABLE `acceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ClienteID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `detallev`
--
ALTER TABLE `detallev`
  MODIFY `id_detallev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalle_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT de la tabla `detalle_salida`
--
ALTER TABLE `detalle_salida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `kardex`
--
ALTER TABLE `kardex`
  MODIFY `id_kardex` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `materia_prima`
--
ALTER TABLE `materia_prima`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `productos_base`
--
ALTER TABLE `productos_base`
  MODIFY `id_productob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `proveedores_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tallas`
--
ALTER TABLE `tallas`
  MODIFY `TallasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `_usuarios`
--
ALTER TABLE `_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
