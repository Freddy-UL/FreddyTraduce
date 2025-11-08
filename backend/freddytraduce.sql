-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-11-2025 a las 06:36:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `freddytraduce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabras`
--

CREATE TABLE `palabras` (
  `id` int(11) NOT NULL,
  `palabra_español` varchar(155) NOT NULL,
  `palabra_ingles` varchar(155) NOT NULL,
  `categoria` varchar(155) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `palabras`
--

INSERT INTO `palabras` (`id`, `palabra_español`, `palabra_ingles`, `categoria`, `fecha_creacion`) VALUES
(7, 'gato', 'cat', 'animales', '2025-11-08 03:46:25'),
(8, 'perro', 'dog', 'animales', '2025-11-08 03:46:25'),
(9, 'caballo', 'horse', 'animales', '2025-11-08 03:46:25'),
(10, 'vaca', 'cow', 'animales', '2025-11-08 03:46:25'),
(11, 'cerdo', 'pig', 'animales', '2025-11-08 03:46:25'),
(12, 'oveja', 'sheep', 'animales', '2025-11-08 03:46:25'),
(13, 'pollo', 'chicken', 'animales', '2025-11-08 03:46:25'),
(14, 'pato', 'duck', 'animales', '2025-11-08 03:46:25'),
(15, 'conejo', 'rabbit', 'animales', '2025-11-08 03:46:25'),
(16, 'león', 'lion', 'animales', '2025-11-08 03:46:25'),
(17, 'casa', 'house', 'hogar', '2025-11-08 03:46:25'),
(18, 'silla', 'chair', 'hogar', '2025-11-08 03:46:25'),
(19, 'mesa', 'table', 'hogar', '2025-11-08 03:46:25'),
(20, 'puerta', 'door', 'hogar', '2025-11-08 03:46:25'),
(21, 'ventana', 'window', 'hogar', '2025-11-08 03:46:25'),
(22, 'cama', 'bed', 'hogar', '2025-11-08 03:46:25'),
(23, 'sofá', 'sofa', 'hogar', '2025-11-08 03:46:25'),
(24, 'lámpara', 'lamp', 'hogar', '2025-11-08 03:46:25'),
(25, 'espejo', 'mirror', 'hogar', '2025-11-08 03:46:25'),
(26, 'alfombra', 'carpet', 'hogar', '2025-11-08 03:46:25'),
(27, 'manzana', 'apple', 'frutas', '2025-11-08 03:46:25'),
(28, 'plátano', 'banana', 'frutas', '2025-11-08 03:46:25'),
(29, 'naranja', 'orange', 'frutas', '2025-11-08 03:46:25'),
(30, 'fresa', 'strawberry', 'frutas', '2025-11-08 03:46:25'),
(31, 'uva', 'grape', 'frutas', '2025-11-08 03:46:25'),
(32, 'pera', 'pear', 'frutas', '2025-11-08 03:46:25'),
(33, 'melón', 'melon', 'frutas', '2025-11-08 03:46:25'),
(34, 'sandía', 'watermelon', 'frutas', '2025-11-08 03:46:25'),
(35, 'cereza', 'cherry', 'frutas', '2025-11-08 03:46:25'),
(36, 'piña', 'pineapple', 'frutas', '2025-11-08 03:46:25'),
(37, 'rojo', 'red', 'colores', '2025-11-08 03:46:25'),
(38, 'azul', 'blue', 'colores', '2025-11-08 03:46:25'),
(39, 'verde', 'green', 'colores', '2025-11-08 03:46:25'),
(40, 'amarillo', 'yellow', 'colores', '2025-11-08 03:46:25'),
(41, 'negro', 'black', 'colores', '2025-11-08 03:46:25'),
(42, 'blanco', 'white', 'colores', '2025-11-08 03:46:25'),
(43, 'morado', 'purple', 'colores', '2025-11-08 03:46:25'),
(44, 'naranja', 'orange', 'colores', '2025-11-08 03:46:25'),
(45, 'rosa', 'pink', 'colores', '2025-11-08 03:46:25'),
(46, 'gris', 'gray', 'colores', '2025-11-08 03:46:25'),
(47, 'comer', 'eat', 'verbos', '2025-11-08 03:46:25'),
(48, 'beber', 'drink', 'verbos', '2025-11-08 03:46:25'),
(49, 'correr', 'run', 'verbos', '2025-11-08 03:46:25'),
(50, 'caminar', 'walk', 'verbos', '2025-11-08 03:46:25'),
(51, 'dormir', 'sleep', 'verbos', '2025-11-08 03:46:25'),
(52, 'leer', 'read', 'verbos', '2025-11-08 03:46:25'),
(53, 'escribir', 'write', 'verbos', '2025-11-08 03:46:25'),
(54, 'hablar', 'speak', 'verbos', '2025-11-08 03:46:25'),
(55, 'escuchar', 'listen', 'verbos', '2025-11-08 03:46:25'),
(56, 'ver', 'see', 'verbos', '2025-11-08 03:46:25'),
(57, 'libro', 'book', 'objetos', '2025-11-08 03:46:25'),
(58, 'bolígrafo', 'pen', 'objetos', '2025-11-08 03:46:25'),
(59, 'lápiz', 'pencil', 'objetos', '2025-11-08 03:46:25'),
(60, 'cuaderno', 'notebook', 'objetos', '2025-11-08 03:46:25'),
(61, 'teléfono', 'phone', 'objetos', '2025-11-08 03:46:25'),
(62, 'computadora', 'computer', 'objetos', '2025-11-08 03:46:25'),
(63, 'reloj', 'watch', 'objetos', '2025-11-08 03:46:25'),
(64, 'mochila', 'backpack', 'objetos', '2025-11-08 03:46:25'),
(65, 'mesa', 'table', 'objetos', '2025-11-08 03:46:25'),
(66, 'silla', 'chair', 'objetos', '2025-11-08 03:46:25'),
(67, 'pan', 'bread', 'comida', '2025-11-08 03:46:25'),
(68, 'leche', 'milk', 'comida', '2025-11-08 03:46:25'),
(69, 'queso', 'cheese', 'comida', '2025-11-08 03:46:25'),
(70, 'huevo', 'egg', 'comida', '2025-11-08 03:46:25'),
(71, 'pollo', 'chicken', 'comida', '2025-11-08 03:46:25'),
(72, 'pescado', 'fish', 'comida', '2025-11-08 03:46:25'),
(73, 'arroz', 'rice', 'comida', '2025-11-08 03:46:25'),
(74, 'pasta', 'pasta', 'comida', '2025-11-08 03:46:25'),
(75, 'fruta', 'fruit', 'comida', '2025-11-08 03:46:25'),
(76, 'verdura', 'vegetable', 'comida', '2025-11-08 03:46:25'),
(77, 'cabeza', 'head', 'cuerpo', '2025-11-08 03:46:25'),
(78, 'mano', 'hand', 'cuerpo', '2025-11-08 03:46:25'),
(79, 'pie', 'foot', 'cuerpo', '2025-11-08 03:46:25'),
(80, 'brazo', 'arm', 'cuerpo', '2025-11-08 03:46:25'),
(81, 'pierna', 'leg', 'cuerpo', '2025-11-08 03:46:25'),
(82, 'ojo', 'eye', 'cuerpo', '2025-11-08 03:46:25'),
(83, 'oreja', 'ear', 'cuerpo', '2025-11-08 03:46:25'),
(84, 'boca', 'mouth', 'cuerpo', '2025-11-08 03:46:25'),
(85, 'nariz', 'nose', 'cuerpo', '2025-11-08 03:46:25'),
(86, 'diente', 'tooth', 'cuerpo', '2025-11-08 03:46:25'),
(87, 'coche', 'car', 'transportes', '2025-11-08 03:46:25'),
(88, 'bicicleta', 'bicycle', 'transportes', '2025-11-08 03:46:25'),
(89, 'autobús', 'bus', 'transportes', '2025-11-08 03:46:25'),
(90, 'tren', 'train', 'transportes', '2025-11-08 03:46:25'),
(91, 'avión', 'plane', 'transportes', '2025-11-08 03:46:25'),
(92, 'barco', 'boat', 'transportes', '2025-11-08 03:46:25'),
(93, 'moto', 'motorcycle', 'transportes', '2025-11-08 03:46:25'),
(94, 'taxi', 'taxi', 'transportes', '2025-11-08 03:46:25'),
(95, 'camión', 'truck', 'transportes', '2025-11-08 03:46:25'),
(96, 'metro', 'subway', 'transportes', '2025-11-08 03:46:25'),
(97, 'camisa', 'shirt', 'ropa', '2025-11-08 03:46:25'),
(98, 'pantalón', 'pants', 'ropa', '2025-11-08 03:46:25'),
(99, 'zapatos', 'shoes', 'ropa', '2025-11-08 03:46:25'),
(100, 'sombrero', 'hat', 'ropa', '2025-11-08 03:46:25'),
(101, 'chaqueta', 'jacket', 'ropa', '2025-11-08 03:46:25'),
(102, 'falda', 'skirt', 'ropa', '2025-11-08 03:46:25'),
(103, 'calcetines', 'socks', 'ropa', '2025-11-08 03:46:25'),
(104, 'abrigo', 'coat', 'ropa', '2025-11-08 03:46:25'),
(105, 'guantes', 'gloves', 'ropa', '2025-11-08 03:46:25'),
(106, 'bufanda', 'scarf', 'ropa', '2025-11-08 03:46:25'),
(107, 'levantar', 'bring up', 'phrasal_verb', '2025-11-08 03:58:42'),
(108, 'apagar', 'turn off', 'phrasal_verb', '2025-11-08 03:58:42'),
(109, 'encender', 'turn on', 'phrasal_verb', '2025-11-08 03:58:42'),
(110, 'dejar', 'give up', 'phrasal_verb', '2025-11-08 03:58:42'),
(111, 'seguir', 'carry on', 'phrasal_verb', '2025-11-08 03:58:42'),
(112, 'venir', 'come over', 'phrasal_verb', '2025-11-08 03:58:42'),
(113, 'ponerse de pie', 'stand up', 'phrasal_verb', '2025-11-08 03:58:42'),
(114, 'esperar', 'hold on', 'phrasal_verb', '2025-11-08 03:58:42'),
(115, 'irse', 'go away', 'phrasal_verb', '2025-11-08 03:58:42'),
(116, 'entrar', 'come in', 'phrasal_verb', '2025-11-08 03:58:42'),
(117, 'buscar', 'look for', 'phrasal_verb', '2025-11-08 03:58:42'),
(118, 'encontrar', 'find out', 'phrasal_verb', '2025-11-08 03:58:42'),
(119, 'devolver', 'give back', 'phrasal_verb', '2025-11-08 03:58:42'),
(120, 'terminar', 'finish off', 'phrasal_verb', '2025-11-08 03:58:42'),
(121, 'recoger', 'pick up', 'phrasal_verb', '2025-11-08 03:58:42'),
(122, 'bajar', 'get down', 'phrasal_verb', '2025-11-08 03:58:42'),
(123, 'subir', 'go up', 'phrasal_verb', '2025-11-08 03:58:42'),
(124, 'quitarse', 'take off', 'phrasal_verb', '2025-11-08 03:58:42'),
(125, 'ponerse', 'put on', 'phrasal_verb', '2025-11-08 03:58:42'),
(126, 'mirar', 'look at', 'phrasal_verb', '2025-11-08 03:58:42'),
(127, 'salir', 'go out', 'phrasal_verb', '2025-11-08 03:58:42'),
(128, 'volverse', 'turn around', 'phrasal_verb', '2025-11-08 03:58:42'),
(129, 'llevar', 'take away', 'phrasal_verb', '2025-11-08 03:58:42'),
(130, 'traer', 'bring back', 'phrasal_verb', '2025-11-08 03:58:42'),
(131, 'quedarse', 'stay in', 'phrasal_verb', '2025-11-08 03:58:42'),
(132, 'cuidar', 'look after', 'phrasal_verb', '2025-11-08 03:58:42'),
(133, 'esperar con ansias', 'look forward to', 'phrasal_verb', '2025-11-08 03:58:42'),
(134, 'apartarse', 'step aside', 'phrasal_verb', '2025-11-08 03:58:42'),
(135, 'despertar', 'wake up', 'phrasal_verb', '2025-11-08 03:58:42'),
(136, 'quedarse atrás', 'fall behind', 'phrasal_verb', '2025-11-08 03:58:42'),
(137, 'recuperarse', 'get over', 'phrasal_verb', '2025-11-08 03:58:42'),
(138, 'continuar', 'keep on', 'phrasal_verb', '2025-11-08 03:58:42'),
(139, 'rendirse', 'back down', 'phrasal_verb', '2025-11-08 03:58:42'),
(140, 'terminar', 'wrap up', 'phrasal_verb', '2025-11-08 03:58:42'),
(141, 'entrar', 'break in', 'phrasal_verb', '2025-11-08 03:58:42'),
(142, 'excluir', 'leave out', 'phrasal_verb', '2025-11-08 03:58:42'),
(143, 'venir con', 'come along', 'phrasal_verb', '2025-11-08 03:58:42'),
(144, 'lanzar', 'throw away', 'phrasal_verb', '2025-11-08 03:58:42'),
(145, 'devolver', 'give out', 'phrasal_verb', '2025-11-08 03:58:42'),
(146, 'apoyar', 'stand by', 'phrasal_verb', '2025-11-08 03:58:42'),
(147, 'caer', 'fall off', 'phrasal_verb', '2025-11-08 03:58:42'),
(148, 'destruir', 'break down', 'phrasal_verb', '2025-11-08 03:58:42'),
(149, 'buscar', 'check out', 'phrasal_verb', '2025-11-08 03:58:42'),
(150, 'guardar', 'put away', 'phrasal_verb', '2025-11-08 03:58:42'),
(151, 'resolver', 'sort out', 'phrasal_verb', '2025-11-08 03:58:42'),
(152, 'subir', 'climb up', 'phrasal_verb', '2025-11-08 03:58:42'),
(153, 'bajar', 'get off', 'phrasal_verb', '2025-11-08 03:58:42'),
(154, 'venir hacia', 'come toward', 'phrasal_verb', '2025-11-08 03:58:42'),
(155, 'retirarse', 'pull out', 'phrasal_verb', '2025-11-08 03:58:42'),
(156, 'detener', 'hold back', 'phrasal_verb', '2025-11-08 03:58:42'),
(157, 'volver', 'come back', 'phrasal_verb', '2025-11-08 03:58:42'),
(158, 'poner', 'set up', 'phrasal_verb', '2025-11-08 03:58:42'),
(159, 'aprender', 'pick up', 'phrasal_verb', '2025-11-08 03:58:42'),
(160, 'despegar', 'take off', 'phrasal_verb', '2025-11-08 03:58:42');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `palabras`
--
ALTER TABLE `palabras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `palabras`
--
ALTER TABLE `palabras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
