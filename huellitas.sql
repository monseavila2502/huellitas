-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 09-06-2022 a las 07:28:05
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `huellitas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `domicilio` varchar(50) NOT NULL,
  `telefono` int(50) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `id_factura` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `fecha_fac` date NOT NULL,
  `total` int(10) NOT NULL,
  PRIMARY KEY (`id_factura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(5) NOT NULL,
  `nombre_prod` text NOT NULL,
  `categoria` text NOT NULL,
  `clasificacion` text NOT NULL,
  `precio` int(10) NOT NULL,
  `marca` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_prod`, `categoria`, `clasificacion`, `precio`, `marca`) VALUES
(1, 'Croquetas cachorro', 'perros', 'alimento', 280, 'Nupec '),
(2, 'Croquetas adulto', 'perros', 'alimento', 260, 'Nupec'),
(3, 'croquetas para Perros Adulto', 'perros', 'alimento', 230, 'Nupec'),
(4, 'croquetas para Perros Senior', 'perros', 'alimento', 230, 'Nupec'),
(5, 'croquetas para adulto', 'perros', 'alimento', 910, 'Royal Canin '),
(6, 'Alimento Húmedo para Perro Adulto', 'perros', 'alimento', 66, 'Royal Canin '),
(7, 'Alimento Seco para Cachorro', 'perros', 'alimento', 958, 'Royal Canin'),
(8, 'Alimento Seco, Cachorro Raza Shih Tzu', 'perros', 'alimento', 338, 'Royal Canin '),
(9, 'Alimento Natural para Perro', 'perros', 'alimento', 260, 'WholeHearted'),
(10, 'Alimento Natural para Perro Adulto', 'perros', 'alimento', 260, 'WholeHearted'),
(11, 'Alimento Natural para Perro Adulto', 'perros', 'alimento', 260, 'WholeHearted '),
(12, 'Kitten Alimento', 'gatos', 'alimento', 650, 'Royal Canin'),
(13, 'Hairball Alimento Seco para Gato', 'gatos', 'alimento', 590, 'Royal Canin '),
(14, 'Alimento Seco para Gato Adulto', 'gatos', 'alimento', 590, 'Royal Canin '),
(15, 'Alimento Húmedo para Gato Receta de Pollo y Queso', 'gatos', 'alimento', 26, 'Fancy Feast Petits Filets '),
(16, 'Atún y Queso', 'gatos', 'alimento', 25, 'Fancy Feast Petits Filets'),
(17, 'Alimento Húmedo para Gato Receta de Salmón', 'gatos', 'alimento', 23, 'Fancy Feast Petits Filets'),
(18, 'Alimento Natural para Gatito Receta Pollo', 'gatos', 'alimento', 280, 'WholeHearted '),
(19, 'Alimento Natural para Gato', 'gatos', 'alimento', 280, ' WholeHearted'),
(20, 'Alimento Natural para Gato Adulto', 'gatos', 'alimento', 310, 'WholeHearted'),
(21, 'Alimento en Pellet para Tortuga Acuática', 'reptiles', 'alimento', 160, 'gourmet'),
(22, 'Alimento para Tortuga Acuática', 'reptiles', 'alimento', 420, 'Azooplus'),
(23, 'Formula Alimento para Tortuga Acuática', 'reptiles', 'alimento', 410, 'Zoo Med Maitenance'),
(24, 'Tenebrios Deshidratados para Reptiles Anfibios y Aves', 'reptiles', 'alimento', 290, 'Optiprot '),
(25, 'Alimento Reptomin Palitos', 'reptiles', 'alimento', 240, 'Tetra '),
(26, 'Alimento Reptotreat Palitos', 'reptiles', 'alimento', 210, 'Tetra '),
(27, 'Alimento en Gránulo para Peces Tropicales', 'peces', 'alimento', 330, 'Tetra Color '),
(28, 'Alimento en Hojuelas para Peces Tropicales', 'peces', 'alimento', 320, 'Tetra Color '),
(29, 'Alimento en Sticks para Cíclidos', 'peces', 'alimento', 320, 'Tetra Cichlid '),
(30, 'Alimento en Obleas para Peces de Fondo', 'peces', 'alimento', 170, 'Tetra Veggie '),
(31, 'Alimento en Hojuelas para Peces Tropicales', 'peces', 'alimento', 240, 'Tetra Min '),
(32, 'Alimento en Gránulo para Pez Goldfish', 'peces', 'alimento', 99, 'Tetra Color '),
(33, 'Alimento para Loros y Psitácidos', 'aves', 'alimento', 350, 'Versele-Laga '),
(34, 'Alimento Natural Super Premium para Loros', 'aves', 'alimento', 530, 'Cunipic '),
(35, 'Alimento para Loros', 'aves', 'alimento', 390, 'Versele-Laga '),
(36, 'Alimento de Semillas para Ninfas y Agapornis', 'aves', 'alimento', 430, 'Versele-Laga '),
(37, 'Alimento para Agaporni', 'aves', 'alimento', 520, 'Cunipic '),
(38, 'Alimento Balanceado para Periquitos', 'aves', 'alimento', 250, 'Versele-Laga '),
(39, 'Bebedero de Gravedad Rellenable Azul para Perro, Grande', 'perros', 'tazones', 500, 'Petmate '),
(40, 'Alimentador Elevado Doble con Base Metálica, Grande', 'perros', 'tazones', 560, 'Harmony '),
(41, 'Comedero Elevado Doble, 3 Tazas', 'perros', 'tazones', 600, 'Harmony '),
(42, 'Tazón de Acero Inoxidable para Perro', 'perros', 'tazones', 230, 'EveryYay '),
(43, 'Plato de Cerámica Decorado, Chico', 'perros', 'tazones', 190, 'Harmony '),
(44, 'Bebedero de Gravedad Rellenable Gris para Perro', 'perros', 'tazones', 180, 'You & Me '),
(45, 'Correa Retráctil Chico Negro, 4.8 m', 'perros', 'correas', 250, 'Flexi Classic '),
(46, 'Arnés de Malla y Correa Color Aqua', 'perros', 'correas', 230, 'Good2Go Set '),
(47, 'Arnés de Malla y Correa para Gato Color Negro', 'perros', 'correas', 230, 'Good2Go Set '),
(48, 'Arnés de Malla y Correa para Gato Color Morado', 'perros', 'correas', 240, 'Good2Go Set '),
(49, 'Arnés y Correa Color Rojo para Gato, Mediano', 'perros', 'correas', 207, 'Petsafe '),
(50, 'Set Arnés y Correa Diseño a Cuadros Color Rojo', 'perros', 'correas', 260, 'Bond & Co '),
(51, 'Peluche Oso Wild Knots con Estructura de Cuerda para Perro', 'perros', 'juguetes', 250, 'Kong '),
(52, 'Juguete para Perro Ardilla o Conejo de Peluche', 'perros', 'juguetes', 130, 'Leaps & Bounds '),
(53, 'Pelota de Goma Squeezz para Perro', 'perros', 'juguetes', 76, 'Kong '),
(54, 'Peluche de Pato Dr. Noyz con Sonido para Perro', 'perros', 'juguetes', 70, 'Kong '),
(55, 'Juguete Pingüino', 'perros', 'juguetes', 207, 'Leaps & Bounds'),
(56, 'Paquete con Tres Pelotas SqueakAir para Perro', 'perros', 'juguetes', 80, 'Kong '),
(57, 'Varita Multicolor Diseño Oruga para Gato', 'gatos', 'juguetes', 70, 'Leaps & Bounds '),
(58, 'Ratón Electrónico Interactivo para Gato, Gris', 'gatos', 'juguetes', 130, 'Hex Bug '),
(59, 'Surtido de Varita con Pelota Crujiente, Plumas y Repuestos para Gato', 'gatos', 'juguetes', 120, 'Leaps & Bounds '),
(60, 'Paquete de 12 Ratones de Peluche Colores Surtidos para Gato', 'gatos', 'juguetes', 170, 'Leaps & Bounds '),
(61, 'Grillo con Sonido para Gato, Verde', 'gatos', 'juguetes', 150, 'Leaps & Bounds '),
(62, 'Ratoncitos Divertidos con Plumas Colores Surtidos para Gato', 'gatos', 'juguetes', 60, 'Leaps & Bounds '),
(63, 'Arenero Esquinero con Tapa para Gato, Blanco', 'gatos', 'areneros', 620, 'Sopresh '),
(64, 'Arenero Geométrico con Tapa para Gato, Gris', 'gatos\r\n', 'areneros', 400, 'Sophresh '),
(65, 'Kit Mi Primer Gatito Arenero y Accesorios, Gris', 'gatos\r\n', 'areneros', 400, 'Sophresh '),
(66, 'Arena Natural Multigato sin Aroma, 6.3 kg', 'gatos\r\n', 'areneros', 520, 'World\'s Best '),
(67, 'Arena para Gato, 13.6 kg', 'gatos\r\n', 'areneros', 430, 'Sophresh '),
(68, 'Arena para Gato, 13.6 kg', 'gatos', 'areneros', 380, 'Sophresh '),
(69, 'Cama Tipo Cueva con Orejitas y Cola para Gato Color Gris', 'gatos', 'hogar', 500, 'Harmony '),
(70, 'Cama Tipo Iglú 2 en 1 para Gato Color Crema', 'gatos', 'hogar', 650, 'EveryYay '),
(71, 'Cama Tipo Cueva para Gato Color Gris', 'gatos', 'hogar', 500, 'Harmony '),
(72, 'Mueble Tipo Árbol con Rampa Talla Grande', 'gatos', 'hogar', 3000, 'EverYay '),
(73, 'Mueble Tipo Árbol Deluxe Ultra Resistente con 7 Niveles para Gato', 'gatos', 'hogar', 5700, 'You & Me '),
(74, 'Mueble Tipo Árbol Rascacielo para Gato', 'gatos', 'hogar', 2800, 'You & Me '),
(75, 'KIT Vertical Tropical para Reptil', 'reptiles', 'accesorios', 2700, 'Zilla '),
(76, 'Kit para Tortuga Acuática, 75 L', 'reptiles', 'accesorios', 4900, 'Tetra'),
(77, 'Kit de Hábitat para Camaleón', 'reptiles', 'accesorios', 4500, 'Zoo'),
(78, 'Terrario para Reptiles', 'reptiles', 'accesorios', 4000, 'Zoo '),
(79, 'Acondicionador para Tortuga', 'reptiles', 'accesorios', 210, 'Tetra'),
(80, 'Transportadora para Reptil', 'reptiles', 'accesorios', 240, 'Imagitarium '),
(81, 'Puente Flotante para Tortuga Acuática, Grande', 'reptiles', 'decoracion', 790, 'Zoo '),
(82, 'Bebedero de Cascada Con Luz Led para Reptiles, Mediano', 'reptiles', 'decoracion', 2600, 'Zoo '),
(83, 'Enredadera de Jungla, Grande', 'reptiles', 'decoracion', 360, 'Hagen '),
(84, 'Escondite Cueva Colgante para Reptiles Modelo Roca', 'reptiles', 'decoracion', 800, 'Zilla '),
(85, 'Cueva Escondite Color Natural para Reptiles', 'reptiles', 'decoracion', 85, 'Yolcame '),
(86, 'Comedero Alto Decorativo para Reptiles Arborícolas Modelo Roca', 'reptiles', 'decoracion', 750, 'Zilla'),
(87, 'Kit para Acuario con Luz LED, 109 L', 'peces', 'accesorios', 4600, 'Aqueon '),
(88, 'Kit para Acuario con Luz LED, 37 L', 'peces', 'accesorios', 2300, 'Aqueon '),
(89, 'Kit para Acuario con Luz LED, 75 L', 'peces', 'accesorios', 3600, 'Aqueon '),
(90, 'Kit de Acuario Semi-Hexagonal para Peces, 25.4 L', 'peces', 'accesorios', 1700, 'Imagitarium '),
(91, 'Kit de Acuario Hexagonal para Peces, 6.4 L', 'peces', 'accesorios', 990, 'Imagitarium '),
(92, 'Kit de Acuario de Escritorio para Peces, 25 L', 'peces', 'accesorios', 3000, 'Imagitarium Aqua ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
