-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-05-2024 a las 16:01:39
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_jezer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` bigint NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Short', 'Gran variedad en short para su gusto ', 'fondoshort.webp', '2021-08-20 03:04:04', 'short', 1),
(2, 'Polo', 'Lo mejor en polos lo encuentras en Jezer Moda', 'fondopolo.jpeg', '2021-08-21 00:47:10', 'polo', 1),
(3, 'Polera', 'Gran variedad en Poleras', 'fondopolera.webp', '2023-11-20 12:56:37', 'polera', 1),
(4, 'Pantalón', 'Pantalón de todos los tamaños', 'fondopantalon2.webp', '2023-11-20 13:40:16', 'pantalon', 1),
(5, 'Camisa', '¡Gran variedad en camisas!', 'fondocamisa.jpg', '2023-11-26 00:24:22', 'camisa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` bigint NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `numerotelefono` int NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `numerotelefono`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Fernando Herrera', 9101020, 'toolsfordeveloper@gmail.com', 'Mensaje del primer suscriptor!', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', '2021-08-20 04:06:18'),
(2, 'Julio', 917390964, 'julio@gmail.com', 'Necesito compras un producto navideño', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', '2023-11-21 15:21:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `id` bigint NOT NULL,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(4, 3, 86, 35.00, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

CREATE TABLE `detalle_temp` (
  `id` bigint NOT NULL,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(135, 87, 'pro_12f4286d0d1904a880bbae959bcf6446.jpg'),
(136, 86, 'pro_2556594988ad80896f244016ba94b3fe.jpg'),
(139, 104, 'pro_8bbb7840c210d2b06916ea9c433ba49b.jpg'),
(140, 103, 'pro_98fca9693f21f669c04b91c30787c7ae.jpg'),
(141, 102, 'pro_d7c7ac8b3113c5c2d966d0cf5e147521.jpg'),
(142, 101, 'pro_54253a59b37f57e6c790280b5fc49cc0.jpg'),
(143, 100, 'pro_3edbef1e32186535cd3dc86fb7af4e8e.jpg'),
(144, 99, 'pro_c07b7f17de74deb2021fd43c7655090b.jpg'),
(145, 98, 'pro_2279fd4adab62e3d2d71e45938ff53fb.jpg'),
(146, 97, 'pro_15e50fd92d197d7dedebb6daf335bbf0.jpg'),
(147, 96, 'pro_63266b79dd874fa33070cdc15aa99ce2.jpg'),
(148, 95, 'pro_528eec68145d94f4038b3ae7736b3533.jpg'),
(149, 94, 'pro_be35af735a0f338e711495ba66ec9b18.jpg'),
(150, 93, 'pro_1d2fe7416ab93ddda45933ae4350b172.jpg'),
(152, 91, 'pro_f02be72cabe40784a6879ca9b5692307.jpg'),
(153, 89, 'pro_b0f682b5d2a711abef5a5d601f60230a.jpg'),
(154, 88, 'pro_506aa4d4986146d8ee3df877eb585ac9.jpg'),
(155, 92, 'pro_7b88f9c9a4232ba9d861ce91c5141d98.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

CREATE TABLE `modulo` (
  `idmodulo` bigint NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` bigint NOT NULL,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(1, '4561654687', NULL, NULL, 3, '2024-05-03 03:41:57', 50.00, 450.00, 3, 'Antigua Guatemala, Antigua Guatemala', 'Completo'),
(2, NULL, '8XD37465755620710', '{\"id\":\"4S6284553D668511R\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"payee\":{\"email_address\":\"sb-6z0da4580133@business.example.com\",\"merchant_id\":\"ULNZF7CTTE748\"},\"description\":\"Compra de artículos en Tienda Virtual por $350 \",\"soft_descriptor\":\"PAYPAL *JOHNDOESTES\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Guatemala City\",\"admin_area_1\":\"Guatemala City\",\"postal_code\":\"01001\",\"country_code\":\"GT\"}},\"payments\":{\"captures\":[{\"id\":\"8XD37465755620710\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"350.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2021-08-20T09:48:38Z\",\"update_time\":\"2021-08-20T09:48:38Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-iimwo4579006@personal.example.com\",\"payer_id\":\"ZTA3QXTY5JS6Q\",\"address\":{\"country_code\":\"GT\"}},\"create_time\":\"2021-08-20T09:46:25Z\",\"update_time\":\"2021-08-20T09:48:38Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/4S6284553D668511R\",\"rel\":\"self\",\"method\":\"GET\"}]}', 3, '2024-05-03 03:41:57', 50.00, 350.00, 1, 'Guatemala, Guatemala', 'Completo'),
(3, NULL, NULL, NULL, 5, '2024-05-14 04:03:42', 5.00, 75.00, 2, 'San Vicente, Cañete', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `idpermiso` bigint NOT NULL,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(3, 1, 1, 1, 1, 1, 1),
(4, 1, 2, 1, 1, 1, 1),
(5, 1, 3, 1, 1, 1, 1),
(6, 1, 4, 1, 1, 1, 1),
(7, 1, 5, 1, 1, 1, 1),
(8, 1, 6, 1, 1, 1, 1),
(9, 1, 7, 1, 1, 1, 1),
(10, 1, 8, 1, 1, 1, 1),
(11, 1, 9, 1, 1, 1, 1),
(12, 2, 1, 1, 1, 1, 1),
(13, 2, 2, 0, 0, 0, 0),
(14, 2, 3, 1, 1, 1, 0),
(15, 2, 4, 1, 1, 1, 0),
(16, 2, 5, 1, 1, 1, 0),
(17, 2, 6, 1, 1, 1, 0),
(18, 2, 7, 1, 0, 0, 0),
(19, 2, 8, 1, 0, 0, 0),
(20, 2, 9, 1, 1, 1, 1),
(21, 3, 1, 0, 0, 0, 0),
(22, 3, 2, 0, 0, 0, 0),
(23, 3, 3, 0, 0, 0, 0),
(24, 3, 4, 0, 0, 0, 0),
(25, 3, 5, 1, 0, 0, 0),
(26, 3, 6, 0, 0, 0, 0),
(27, 3, 7, 0, 0, 0, 0),
(28, 3, 8, 0, 0, 0, 0),
(29, 3, 9, 0, 0, 0, 0),
(30, 4, 1, 1, 0, 0, 0),
(31, 4, 2, 0, 0, 0, 0),
(32, 4, 3, 1, 1, 1, 0),
(33, 4, 4, 1, 0, 0, 0),
(34, 4, 5, 1, 0, 1, 0),
(35, 4, 6, 0, 0, 0, 0),
(36, 4, 7, 1, 0, 0, 0),
(37, 4, 8, 1, 0, 0, 0),
(38, 4, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` bigint NOT NULL,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '1234567', 'Jorge', 'Caceres H', 999999999, 'admin@admin.com', 'f69ed3a744195d7d1429b167f449ed9a76f36ba6a74f997a7bfe179649de32c4', 'CF', 'JECH', 'Cañete', NULL, 1, '2024-04-03 01:34:15', 1),
(2, '1234560', 'Jose', 'Gil', 999999999, 'gil@info.com', '02423ab2e61297b8262449c93e19be42fb5bbb275860a7d93b1ebdc7b6535ed7', NULL, NULL, NULL, NULL, 2, '2024-04-03 01:34:15', 1),
(3, '87654321', 'Nayzeth', 'Bautista', 999999999, 'nayzeth@info.com', 'c31e649c34f6dab81a8f24ea572b19b106990a5fda235e92c7e0680ccc221cfd', '468798', 'Tamara', 'Chincha', NULL, 3, '2024-04-03 01:34:15', 1),
(4, '3156166', 'Fernando', 'Yovera', 999999999, 'fer@info.com', '56976bf24998ca63e35fe4f1e2469b5751d1856003e8d16fef0aafef496ed044', NULL, NULL, NULL, NULL, 4, '2024-04-03 01:34:15', 1),
(5, '236574', 'Carlos', 'Moran Tello', 999999999, 'moran@gmail.com', 'ac9c2c34c9f7ad52528c3422af40a66e2e24aaf2a727831255413c9470158984', NULL, NULL, NULL, NULL, 3, '2024-05-14 04:03:14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `idpost` bigint NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> \n    <h3 class=\"ltext-103 cl5\">Marcas</h3> \n</div> \n<div> \n    <p>Trabajamos con los mejores</p> \n</div> \n<div class=\"row\"> \n    <div class=\"col-md-3\">\n        <picture>\n            <img src=\"Assets/images/MR1.jpg\" alt=\"Marca 1\" width=\"150\" height=\"150\" />\n        </picture>\n    </div>\n    <div class=\"col-md-3\">\n        <picture>\n            <img src=\"Assets/images/MR2.jpg\" alt=\"Marca 2\" width=\"150\" height=\"150\" />\n        </picture>\n    </div>\n    <div class=\"col-md-3\">\n        <picture>\n            <img src=\"Assets/images/MR3.jpg\" alt=\"Marca 3\" width=\"150\" height=\"150\" />\n        </picture>\n    </div>\n    <div class=\"col-md-3\">\n        <picture>\n            <img src=\"Assets/images/MR4.png\" alt=\"Marca 4\" width=\"150\" height=\"150\" />\n        </picture>\n    </div>\n</div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(2, 'Tienda', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:27', 'tienda', 1),
(3, 'Carrito', '<p>Contenido p&aacute;gina!</p>', '', '2021-08-06 01:21:52', 'carrito', 1),
(4, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\">\r\n  <div class=\"container\">\r\n    <!-- Sección de Historia -->\r\n    <div class=\"row p-b-148\">\r\n      <div class=\"col-md-7 col-lg-8\">\r\n        <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\">\r\n          <h3 class=\"mtext-111 cl2 p-b-16\">Historia</h3>\r\n          <p class=\"stext-113 cl6 p-b-26\">\r\n          En el pintoresco pueblo de Imperial, ubicado en la encantadora región de Cañete, vivía un joven emprendedor llamado Jezer. Desde temprana edad, Jezer mostraba un gran interés por la moda y siempre destacaba por su estilo único y su habilidad para combinar prendas de forma creativa.\r\n\r\nA medida que Jezer crecía, se dio cuenta de que en Imperial había una demanda creciente de moda masculina atractiva para el público juvenil. Observó que muchos jóvenes compartían su pasión por la moda y estaban ávidos de nuevas tendencias y estilos que les permitieran expresar su individualidad.\r\n\r\nDecidido a satisfacer esta necesidad, Jezer decidió iniciar su propio negocio de compra y venta de ropa varonil. Con un enfoque en poleras, polos, camisas, shorts, pantalones y otros artículos de moda juvenil, Jezer se propuso ofrecer una selección diversa de marcas y estilos que reflejaran las últimas tendencias en la moda masculina.\r\n\r\nAunque inicialmente comenzó pequeño, vendiendo prendas desde su propio hogar y a través de las redes sociales, Jezer pronto se dio cuenta del potencial de su negocio y decidió expandirse. Abrió una pequeña tienda en el centro de Imperial, donde los jóvenes podían encontrar una variedad de prendas de moda a precios accesibles.\r\n\r\nCon su pasión por la moda y su habilidad para entender las necesidades de su público objetivo, Jezer logró hacer crecer rápidamente su negocio. Se asoció con diferentes marcas de renombre y se convirtió en un punto de referencia para los jóvenes de Imperial que buscaban las últimas tendencias en moda masculina.\r\n\r\nCon el tiempo, Jezer se convirtió en un pilar en la comunidad de Imperial, no solo como un exitoso emprendedor, sino también como un modelo a seguir para otros jóvenes que soñaban con iniciar sus propios negocios. Su historia inspiró a muchos a perseguir sus pasiones y a creer en el poder de la determinación y el trabajo arduo para alcanzar el éxito en la vida.  \r\n          </p>\r\n        </div>\r\n      </div>\r\n      <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\">\r\n        <div class=\"how-bor1\">\r\n          <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849825_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!-- Fin de la Sección de Historia -->\r\n\r\n    <!-- Sección de Nuestra Misión y Nuestra Visión -->\r\n    <div class=\"row\">\r\n      <div class=\"col-md-7 col-lg-8 p-b-30\">\r\n        <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\">\r\n          <!-- Nuestra Misión -->\r\n          <h2 class=\"mtext-111 cl2 p-b-16\">\r\n            <span style=\"color: #236fa1;\">Nuestra Misión</span>\r\n          </h2>\r\n          <p class=\"stext-113 cl6 p-b-26\">\r\n            Comercializar ropa de excelente calidad y precios accesibles, asegurando la disponibilidad y el servicio, manteniendo costos competitivos a través del aprovechamiento de nuestros recursos. Basándonos en principios de ética, generando relaciones duraderas y de confianza con nuestros clientes, proveedores y empleados. Todo esto cumpliendo cabalmente con obligaciones sociales y el medio ambiente.\r\n          </p>\r\n          <div class=\"bor16 p-l-29 p-b-9 m-t-22\"></div>\r\n\r\n          <!-- Nuestra Visión -->\r\n          <h2 class=\"mtext-111 cl2 p-b-16\">\r\n            <span style=\"color: #236fa1;\">Nuestra Visión</span>\r\n          </h2>\r\n          <p class=\"stext-113 cl6 p-b-26\">\r\n            En el año 2024, ampliará la tienda cambiándola a un amplio local, ubicado en el mismo centro comercial, para incrementar los espacios de exhibición y las ventas en un 50%.\r\n          </p>\r\n          <div class=\"bor16 p-l-29 p-b-9 m-t-22\"></div>\r\n        </div>\r\n      </div>\r\n      <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\">\r\n        <div class=\"how-bor2\">\r\n          <div class=\"hov-img0\"><img src=\"https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849822_1280.jpg\" alt=\"IMG\" width=\"500\" height=\"333\" /></div>\r\n        </div>\r\n      </div>\r\n    </div>\r\n    <!-- Fin de la Sección de Nuestra Misión y Nuestra Visión -->\r\n\r\n  </div>\r\n</section>\r\n', 'img_2f644b056a9fd3624c7595d24b1d9273.jpg', '2021-08-09 03:09:44', 'nosotros', 1),
(5, 'Contacto', '<div class=\"map\"></div>', 'img_3024f13dc010ffab8c22da05ac6a32b9.jpg', '2021-08-09 03:11:08', 'contacto', 1),
(6, 'Preguntas frecuentes', '\n<ol> <li><strong>&iquest;Cu&aacute;l es el tiempo de entrega de los producto? </strong> El tiempo de entrega varía según la ubicación, generalmente entre 3 y 7 días hábiles.</li> <li><strong>&iquest;C&oacute;mo es la forma de env&iacute;o de los productos?</strong> Utilizamos servicios de mensajería reconocidos para asegurar una entrega rápida y segura.</li> <li><strong>&iquest;Cu&aacute;l es el tiempo m&aacute;ximo para solicitar un reembolso?</strong> Puedes solicitar un reembolso hasta 30 días después de la compra.</li> </ol> <p>&nbsp;</p> <p>Otras preguntas</p> <ul> <li><strong>&iquest;Qu&eacute; formas de pago aceptan? </strong><span style=\"color: #666666; font-family: Arial, sans-serif; font-size: 15px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Aceptamos tarjetas de crédito, débito, PayPal y transferencias bancarias.</span></li> </ul>\n', '', '2021-08-11 01:24:19', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la Tienda Virtual!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<section class=\"py-5 text-center\"> <div class=\"container\"> <p>Visitanos y obten los mejores precios del mercado, cualquier art&iacute;culo que necestas para vivir mejor</p> <a class=\"btn btn-info\" href=\"../../tienda_virtual/tienda\">VER PRODUCTOS</a></div> </section> <div class=\"py-5 bg-light\"> <div class=\"container\"> <div class=\"row\"> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s1.jpg\" alt=\"Tienda Uno\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s2.jpg\" alt=\"Sucural dos\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> <div class=\"col-md-4\"> <div class=\"card mb-4 box-shadow hov-img0\"><img src=\"https://abelosh.com/tienda_virtual/Assets/images/s3.jpg\" alt=\"Sucural tres\" width=\"100%\" height=\"100%\" /> <div class=\"card-body\"> <p class=\"card-text\">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quaerat necessitatibus eligendi, soluta ipsa natus, at earum qui enim, illum doloremque, accusantium autem nemo est esse nulla neque eaque repellendus amet.</p> <p>Direcci&oacute;n: Antigua Gautemala <br />Tel&eacute;fono: 4654645 <br />Correo: info@abelosh.com</p> </div> </div> </div> </div> </div> </div>', 'img_d72cb5712933863e051dc9c7fac5e253.jpg', '2021-08-11 02:26:45', 'sucursales', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` bigint NOT NULL,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(86, 2, '20001', 'Polo Dimor', '<p>Polo Dimor 1</p>', 35.00, 5, NULL, '2024-05-14 03:53:47', 'polo-dimor', 1),
(87, 2, '20002', 'Polo Dimor', '<p>Polo dimor</p>', 37.00, 7, NULL, '2024-05-14 03:54:20', 'polo-dimor', 1),
(88, 1, '1000011', 'Shorts quicksilver celeste', '<p>S-M-XL</p>', 40.00, 3, NULL, '2024-05-14 03:42:24', 'shorts-quicksilver-celeste', 1),
(89, 1, '1000012', 'Shorts quicksilver turquesa', '<p>S-M-XL</p>', 40.00, 3, NULL, '2024-05-14 03:57:23', 'shorts-quicksilver-turquesa', 1),
(91, 1, '1000013', 'Shorts quicksilver naranja', '<p>S-M-XL</p>', 40.00, 3, NULL, '2024-05-14 03:58:20', 'shorts-quicksilver-naranja', 1),
(92, 1, '1000014', 'Shorts quicksilver azul', '<p>S-M-XL</p>', 40.00, 3, NULL, '2024-05-14 03:59:21', 'shorts-quicksilver-azul', 1),
(93, 1, '1000015', 'Shorts quicksilver rojo', '<p>S-M-XL</p>', 40.00, 3, NULL, '2024-05-14 04:00:22', 'shorts-quicksilver-rojo', 1),
(94, 1, '1000016', 'SHORT BOARSHORT PARADISE Nego', '<p>S-M-XL</p>', 55.00, 10, NULL, '2024-05-14 04:05:26', 'short-boarshort-paradise-nego', 1),
(95, 1, '1000017', 'SHORT BOARSHORT PARADISE Negro Blanco', '<p>S-M-XL</p>', 55.00, 10, NULL, '2024-05-14 04:05:57', 'short-boarshort-paradise-negro-blanco', 1),
(96, 1, '1000018', 'SHORT BOARSHORT PARADISE Celeste', '<p>S-M-XL</p>', 55.00, 10, NULL, '2024-05-14 04:06:33', 'short-boarshort-paradise-celeste', 1),
(97, 1, '1000019', 'SHORT BOARSHORT PARADISE Negro Celeste', '<p>S-M-XL</p>', 55.00, 10, NULL, '2024-05-14 04:07:08', 'short-boarshort-paradise-negro-celeste', 1),
(98, 1, '1000020', 'SHORT BOARSHORT PARADISE Negro Violeta', '<p>S-M-XL</p>', 55.00, 10, NULL, '2024-05-14 04:11:52', 'short-boarshort-paradise-negro-violeta', 1),
(99, 1, '1000021', 'SHORT WALKSHORT ORGANIC Gris Oscuro', '<p>S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:14:25', 'short-walkshort-organic-gris-oscuro', 1),
(100, 1, '1000022', 'SHORT WALKSHORT ORGANIC Negro', '<p>S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:15:05', 'short-walkshort-organic-negro', 1),
(101, 1, '1000023', 'SHORT WALKSHORT ORGANIC Camuflado', '<p>S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:15:52', 'short-walkshort-organic-camuflado', 1),
(102, 1, '1000024', 'SHORT WALKSHORT ORGANIC Negro Blanco', '<p>S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:16:12', 'short-walkshort-organic-negro-blanco', 1),
(103, 1, '1000025', 'SHORT BOARSHORT PARADISE Blanco Mostaza', '<p>S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:16:46', 'short-boarshort-paradise-blanco-mostaza', 1),
(104, 1, '1000026', 'SHORT BOARSHORT PARADISE Azul Raya', '<p><strong>Tallas:</strong> S-M-XL</p>', 60.00, 15, NULL, '2024-05-14 04:21:00', 'short-boarshort-paradise-azul-raya', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

CREATE TABLE `reembolso` (
  `id` bigint NOT NULL,
  `pedidoid` bigint NOT NULL,
  `idtransaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` bigint NOT NULL,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `observaciones` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `observaciones`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 'Como administrador tiene privilegios superiores a diferencia de cualquier usuario.', 1),
(2, 'Supervisor', 'Supervisor de tiendas', 'Como supervisor tiene acceso a diferentes funcionalidades solo para ver, más no para editar.', 1),
(3, 'Cliente', 'Clientes en general', 'Permisos simples, no tienen acceso a funcionalidades de los trabajadores de la Tienda Virtual', 1),
(4, 'Vendedor', 'Operador de tienda', 'Maneja funcionalidades de acuerdo a su rol', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

CREATE TABLE `suscripciones` (
  `idsuscripcion` bigint NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`) VALUES
(1, 'Roberto', 'toolsfordeveloper@gmail.com', '2021-08-20 04:05:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` bigint NOT NULL,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`),
  ADD KEY `personaid` (`personaid`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productoid` (`productoid`);

--
-- Indices de la tabla `modulo`
--
ALTER TABLE `modulo`
  ADD PRIMARY KEY (`idmodulo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `personaid` (`personaid`),
  ADD KEY `tipopagoid` (`tipopagoid`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idpermiso`),
  ADD KEY `rolid` (`rolid`),
  ADD KEY `moduloid` (`moduloid`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`),
  ADD KEY `rolid` (`rolid`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idpost`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `categoriaid` (`categoriaid`);

--
-- Indices de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidoid` (`pedidoid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  ADD PRIMARY KEY (`idsuscripcion`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT de la tabla `modulo`
--
ALTER TABLE `modulo`
  MODIFY `idmodulo` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `idpermiso` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `idpost` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de la tabla `reembolso`
--
ALTER TABLE `reembolso`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `suscripciones`
--
ALTER TABLE `suscripciones`
  MODIFY `idsuscripcion` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
