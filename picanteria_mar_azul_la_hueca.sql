-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2025 a las 07:44:38
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `picanteria_mar_azul_la_hueca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('admin|127.0.0.1', 'i:4;', 1737230477),
('admin|127.0.0.1:timer', 'i:1737230477;', 1737230477);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_Cliente` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_Cliente`, `cedula`, `nombre`, `apellido`, `email`, `celular`, `usuario`, `contraseña`) VALUES
(1, '0706817624', 'Luis', 'Jaramillo', 'luisjaramillo@gmail.com', '0987654321', 'luis', '$2y$10$MFYb8Tpfp6Dt4a.9zJSSvej5ai.phvoo3idlDYDl7KAsDhqUo6BAm'),
(2, '0706817640', 'Carlos', 'Lopez', 'carloslopez@gmail.com', '0987654321', 'carlos', '$2y$10$ecAIWPHJjaQ8/vqfa0SzY.KVDvgL1CsFSHAcx0s0uAnOR7JVm3R2a'),
(3, '0706817632', 'Lucas', 'Jimenez', 'lucasjimenez@gmail.com', '0987654321', 'lucas', '$2y$10$7mPjQ5E5vViJV9NrCCZnp.OXmN3mvuMpSHAZXlL2JiKVBS4VCYGR.'),
(4, '0706817624', 'luci', 'Diaz', 'lucydiaz@gmail.com', '0879654123', 'lucy', '$2y$10$5l9Z7igICyHOAYrFS/rI/usKtFbWEio8SrrrJ0tqjgHPfcsvE.ydK'),
(5, '0702716010', 'Luis', 'Lojano', 'lojanoluis123@gmail.com', '0986364509', 'luislojano', 'Lojanito10*'),
(6, '0943732123', 'joshua', 'lojano', 'joshualojano48@gmail.com', '0997575080', 'joshua', '$2y$10$D0G8Rc57HxnIQpMGrO/wdOrGJxAd0BlcFTJN1I880PW8bWPFqCrUe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `tipo_entrega` varchar(255) NOT NULL,
  `estado_pago` varchar(255) DEFAULT NULL,
  `metodo_pago` varchar(255) NOT NULL,
  `total_total` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `cliente_id`, `fecha`, `tipo_entrega`, `estado_pago`, `metodo_pago`, `total_total`) VALUES
(1, 4, '2025-02-01 00:00:00', 'Servirse', 'Pagado', 'PayPal', 8.00),
(2, 6, '2025-02-01 00:00:00', 'Retirar', 'Pagado', 'PayPal', 22.50),
(3, 4, '2025-02-03 00:00:00', 'Retirar', 'Pendiente', 'Efectivo', 2.50),
(4, 4, '2025-02-03 00:00:00', 'Retirar', 'Pagado', 'PayPal', 2.50),
(5, 5, '2025-02-04 00:00:00', 'Servirse', 'Pagado', 'PayPal', 11.00),
(10, 4, '2025-02-04 00:00:00', 'Retirar', 'Pagado', 'PayPal', 5.00),
(11, 4, '2025-02-04 00:00:00', 'Retirar', 'Pagado', 'PayPal', 5.00),
(12, 4, '2025-02-04 00:00:00', 'Retirar', 'Pagado', 'PayPal', 5.00),
(13, 4, '2025-02-04 00:00:00', 'Retirar', 'Pagado', 'PayPal', 7.50),
(14, 4, '2025-02-11 00:00:00', 'Retirar', 'Pagado', 'PayPal', 5.00),
(15, 4, '2025-02-11 00:00:00', 'Retirar', 'Pagado', 'PayPal', 5.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_g_s`
--

CREATE TABLE `datos_g_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `ruc` varchar(13) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_g_s`
--

INSERT INTO `datos_g_s` (`id`, `nombre_empresa`, `logo`, `ruc`, `correo`, `telefono`, `direccion`, `created_at`, `updated_at`) VALUES
(1, 'Picantería Mar Azul - La Hueca', 'G3dDLyAJC9IPqFZQPqcqJOzApESLzU82xBVuvL1Z.ico', '0702716010001', 'luislojano371@gmail.com', '0986364509', 'Ciudadela Las Brisas', '2025-01-19 01:29:02', '2025-01-19 01:29:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compras`
--

CREATE TABLE `detalle_compras` (
  `id` int(11) NOT NULL,
  `compra_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `total` decimal(10,2) GENERATED ALWAYS AS (`costo` * `cantidad`) STORED,
  `estado_producto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_compras`
--

INSERT INTO `detalle_compras` (`id`, `compra_id`, `producto_id`, `cantidad`, `costo`, `estado_producto`) VALUES
(1, 1, 1, 1, 2.50, 'Listo'),
(2, 1, 9, 1, 1.50, 'En Espera'),
(3, 1, 4, 1, 4.00, 'En Espera'),
(4, 2, 1, 9, 2.50, 'En Espera'),
(5, 3, 1, 1, 2.50, 'Listo'),
(6, 4, 1, 1, 2.50, 'Listo'),
(7, 5, 2, 2, 5.00, 'En Espera'),
(8, 5, 8, 2, 0.50, 'En Espera'),
(13, 10, 1, 1, 2.50, 'Listo'),
(14, 10, 11, 1, 2.50, 'Listo'),
(15, 11, 1, 1, 2.50, 'Listo'),
(16, 11, 11, 1, 2.50, 'Listo'),
(17, 12, 1, 1, 2.50, 'Listo'),
(18, 12, 11, 1, 2.50, 'Listo'),
(19, 13, 1, 3, 2.50, 'Listo'),
(20, 14, 1, 2, 2.50, 'En Espera'),
(21, 15, 1, 2, 2.50, 'En Espera');

--
-- Disparadores `detalle_compras`
--
DELIMITER $$
CREATE TRIGGER `actualizar_total_total` AFTER INSERT ON `detalle_compras` FOR EACH ROW BEGIN
    UPDATE compras 
    SET total_total = (SELECT COALESCE(SUM(total), 0) FROM detalle_compras WHERE compra_id = NEW.compra_id)
    WHERE id = NEW.compra_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `set_costo_on_insert_detalle_compras` BEFORE INSERT ON `detalle_compras` FOR EACH ROW BEGIN
    DECLARE producto_costo DECIMAL(10, 2);
    -- Obtener el costo del producto desde la tabla productos
    SELECT costo INTO producto_costo
    FROM productos
    WHERE id = NEW.producto_id;

    -- Asignar el costo al nuevo registro
    SET NEW.costo = producto_costo;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_insert_vistaCompra` AFTER INSERT ON `detalle_compras` FOR EACH ROW BEGIN
    INSERT INTO vistaCompra (cedula, nomapeClient, estado_pago, fecha, metodo_pago, producto, 
                             costo, cantidad, total, total_total, tipo_entrega, estado_producto)
    SELECT 
        c.cedula,
        CONCAT(c.nombre, ' ', c.apellido) AS nomapeClient,
        co.estado_pago,
        co.fecha,
        co.metodo_pago,
        p.nombre AS producto,
        p.costo,
        NEW.cantidad,
        NEW.total,
        co.total_total,
        co.tipo_entrega,
        NEW.estado_producto
    FROM compras co
    JOIN cliente c ON co.cliente_id = c.id_Cliente
    JOIN detalle_compras dc ON co.id = dc.compra_id
    JOIN productos p ON dc.producto_id = p.id
    WHERE dc.id = NEW.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `f_pagos`
--

CREATE TABLE `f_pagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forma_pago` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2020_10_04_115514_create_moonshine_roles_table', 1),
(5, '2020_10_05_173148_create_moonshine_tables', 1),
(6, '2022_12_19_115549_create_moonshine_socialites_table', 1),
(7, '2024_10_03_164946_create_product_p_s_table', 1),
(8, '2024_10_03_170106_create_product_j_s_table', 1),
(9, '2024_10_04_150752_create_datos_g_s_table', 1),
(10, '2024_10_05_181038_create_f_pagos_table', 1),
(11, '2024_11_01_144722_create_sales_table', 1),
(12, '2024_11_01_145053_add_pdf_path_to_sales_table', 1),
(13, '2024_11_01_150605_add_fields_to_sales_table', 1),
(14, '2024_11_16_170848_create_clientes_table', 1),
(15, '9999_12_20_173629_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moonshine_socialites`
--

CREATE TABLE `moonshine_socialites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `moonshine_user_id` bigint(20) UNSIGNED NOT NULL,
  `driver` varchar(255) NOT NULL,
  `identity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moonshine_users`
--

CREATE TABLE `moonshine_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `moonshine_user_role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `email` varchar(190) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `moonshine_users`
--

INSERT INTO `moonshine_users` (`id`, `moonshine_user_role_id`, `email`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 1, 'luislojano371@gmail.com', '$2y$12$zJH.rlwVj57qsMf3eyzYAeitOrfkMY.o84ff6ogf7z3d6SckVq1WK', 'Luis Lojano', 'moonshine_users/1LT8A8vFqG9c1QzzlNAhaSz7SyLT8H08VSFTBTDr.jpg', NULL, '2025-01-18 20:10:59', '2025-01-19 01:16:28'),
(3, 1, 'palaquibay2001@gmail.com', '$2y$12$sv1fLxvrAdU/Iivlu7ngP.wUsTjo8QFF2Rvp9y0.pE6NFjSwogX2y', 'Carlos Palaquivay', 'moonshine_users/JuCddwEdVRkdn7O78Nlzbvjl6ojOsylqsdwxBEPW.jpg', NULL, '2025-01-19 01:17:48', '2025-01-19 01:31:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `moonshine_user_roles`
--

CREATE TABLE `moonshine_user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `moonshine_user_roles`
--

INSERT INTO `moonshine_user_roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-01-16 20:17:16', '2025-01-16 20:17:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `url_diseno_3d` varchar(255) DEFAULT NULL,
  `url_diseno_ra` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_origen`, `nombre`, `costo`, `imagen`, `url_diseno_3d`, `url_diseno_ra`, `activo`, `tipo`) VALUES
(1, 1, 'Encebollado', 2.50, '9jGeycidtB6ON0yn0tyhkKu3dUZ6OVGgQnIMi41b.png', 'https://player.onirix.com/exp/ejn25m', 'https://player.onirix.com/exp/ejn25m', 1, 'Plato'),
(2, 2, 'Ceviche de Camarón', 5.00, 'EWYk4Df9jPfO05hP2avnHN1A0jPmgpHdU2DlkvrR.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 1, 'Plato'),
(3, 3, 'Encebollado con Camarón', 4.50, 'DwVFFDZOVn2haQXcmsqSonuHz4hyDh2X32qBQIvT.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 1, 'Plato'),
(4, 4, 'Ceviche Blanco', 4.00, 'dFmvRRRQMjwlA9zvjdUnmaXzMDx7UtQFQXnf6bD0.png', 'https://studio.onirix.com/exp/l4wvKZ', 'https://studio.onirix.com/exp/l4wvKZ', 1, 'Plato'),
(5, 5, 'Guatita', 3.00, 'PGNSZSD06DGCFefZlPS3rWm0j3xhd4aapdwncMas.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 0, 'Plato'),
(8, 1, 'CoCa Cola 300ml', 0.50, 'ic5iL31APa7L3X8ndP2OJqFkaIJe95i7x3h0WAFN.png', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, 'Bebida'),
(9, 2, 'Coca Cola 1.35 L', 1.50, 'Ys0JYoOI8b4uQef0bU5bbbMCjWEp6EaVldt0iuqZ.jpg', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, 'Bebida'),
(10, 3, 'Juga de Naranja Personal', 1.25, 'zgbr9MljVarxWQFYHttZaYYm0fWfdPtmFSS8ZBiT.webp', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, 'Bebida'),
(11, 4, 'Jugo de Naranja de Litro', 2.50, 'a7a8O5A7JVaPOMJfjFqEQtpCvHb17PFwBIoxWkWi.webp', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, 'Bebida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_j_s`
--

CREATE TABLE `product_j_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `url_diseno_3d` varchar(255) DEFAULT NULL,
  `url_diseno_ra` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_j_s`
--

INSERT INTO `product_j_s` (`id`, `nombre`, `costo`, `imagen`, `url_diseno_3d`, `url_diseno_ra`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'CoCa Cola 300ml', 0.50, 'ic5iL31APa7L3X8ndP2OJqFkaIJe95i7x3h0WAFN.png', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, '2025-01-19 01:25:56', '2025-01-19 01:25:56'),
(2, 'Coca Cola 1.35 L', 1.50, 'Ys0JYoOI8b4uQef0bU5bbbMCjWEp6EaVldt0iuqZ.jpg', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, '2025-01-19 01:26:54', '2025-01-19 01:26:54'),
(3, 'Juga de Naranja Personal', 1.25, 'zgbr9MljVarxWQFYHttZaYYm0fWfdPtmFSS8ZBiT.webp', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, '2025-01-19 01:27:36', '2025-01-19 01:27:36'),
(4, 'Jugo de Naranja de Litro', 2.50, 'a7a8O5A7JVaPOMJfjFqEQtpCvHb17PFwBIoxWkWi.webp', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-j-resource/form-page', 1, '2025-01-19 01:28:08', '2025-02-11 05:42:14');

--
-- Disparadores `product_j_s`
--
DELIMITER $$
CREATE TRIGGER `after_jugos_delete` AFTER DELETE ON `product_j_s` FOR EACH ROW BEGIN
    DELETE FROM productos
    WHERE id_origen = OLD.id AND tipo = 'Bebida';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_jugos_insert` AFTER INSERT ON `product_j_s` FOR EACH ROW BEGIN
    INSERT INTO productos (id_origen, nombre, costo, imagen, url_diseno_3d, url_diseno_ra, activo, tipo)
    VALUES (NEW.id, NEW.nombre, NEW.costo, NEW.imagen, NEW.url_diseno_3d, NEW.url_diseno_ra, NEW.activo, 'Bebida');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_jugos_update` AFTER UPDATE ON `product_j_s` FOR EACH ROW BEGIN
    UPDATE productos
    SET nombre = NEW.nombre,
        costo = NEW.costo,
        imagen = NEW.imagen,
        url_diseno_3d = NEW.url_diseno_3d,
        url_diseno_ra = NEW.url_diseno_ra,
        activo = NEW.activo
    WHERE id_origen = OLD.id AND tipo = 'Bebida';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_p_s`
--

CREATE TABLE `product_p_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `costo` decimal(10,2) NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `url_diseno_3d` varchar(255) DEFAULT NULL,
  `url_diseno_ra` varchar(255) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_p_s`
--

INSERT INTO `product_p_s` (`id`, `nombre`, `costo`, `imagen`, `url_diseno_3d`, `url_diseno_ra`, `activo`, `created_at`, `updated_at`) VALUES
(1, 'Encebollado', 2.50, '9jGeycidtB6ON0yn0tyhkKu3dUZ6OVGgQnIMi41b.png', 'https://studio.onirix.com/exp/ejn25m', 'https://studio.onirix.com/exp/ejn25m', 1, '2025-01-19 01:18:51', '2025-02-05 02:16:09'),
(2, 'Ceviche de Camarón', 5.00, 'EWYk4Df9jPfO05hP2avnHN1A0jPmgpHdU2DlkvrR.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 1, '2025-01-19 01:20:52', '2025-01-19 01:20:52'),
(3, 'Encebollado con Camarón', 4.50, 'DwVFFDZOVn2haQXcmsqSonuHz4hyDh2X32qBQIvT.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 1, '2025-01-19 01:22:50', '2025-01-19 01:22:50'),
(4, 'Ceviche Blanco', 4.00, 'dFmvRRRQMjwlA9zvjdUnmaXzMDx7UtQFQXnf6bD0.png', 'https://studio.onirix.com/exp/l4wvKZ', 'https://studio.onirix.com/exp/l4wvKZ', 1, '2025-01-19 01:23:57', '2025-01-19 01:23:57'),
(5, 'Guatita', 3.00, 'PGNSZSD06DGCFefZlPS3rWm0j3xhd4aapdwncMas.png', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 'http://127.0.0.1:8000/admin/resource/product-p-resource/form-page', 0, '2025-01-19 01:24:40', '2025-01-28 19:52:38');

--
-- Disparadores `product_p_s`
--
DELIMITER $$
CREATE TRIGGER `after_comida_delete` AFTER DELETE ON `product_p_s` FOR EACH ROW BEGIN
    DELETE FROM productos
    WHERE id_origen = OLD.id AND tipo = 'Plato';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_comida_insert` AFTER INSERT ON `product_p_s` FOR EACH ROW BEGIN
    INSERT INTO productos (id_origen, nombre, costo, imagen, url_diseno_3d, url_diseno_ra, activo, tipo)
    VALUES (NEW.id, NEW.nombre, NEW.costo, NEW.imagen, NEW.url_diseno_3d, NEW.url_diseno_ra, NEW.activo, 'Plato');
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_comida_update` AFTER UPDATE ON `product_p_s` FOR EACH ROW BEGIN
    UPDATE productos
    SET nombre = NEW.nombre,
        costo = NEW.costo,
        imagen = NEW.imagen,
        url_diseno_3d = NEW.url_diseno_3d,
        url_diseno_ra = NEW.url_diseno_ra,
        activo = NEW.activo
    WHERE id_origen = OLD.id AND tipo = 'Plato';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `product_p_s_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_j_s_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('69rOA7SA3oc5FhhUsi9yxUmf5vMCHRw2dXTLh0dP', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiR2tZRllQRzVpZGVaWERienhOQ3ZETEc5RTdPYkgzMjNFd1JDWGFaUSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU2OiJsb2dpbl9tb29uc2hpbmVfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjM6InBhc3N3b3JkX2hhc2hfbW9vbnNoaW5lIjtzOjYwOiIkMnkkMTIkekpILnJsd1ZqNTdxc01mM2V5ellBZWl0T3Jma01ZLm84NGZmNm9nZjd6M2Q2U2NrVnExV0siO30=', 1738703927),
('cc6M5MbqkLrx4KZIIQnpCdn9VfVuwnR8ZMzGN5Kr', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiamFWNjdXTzVLZXNLTm9weHhCNGtoRjJydDRsQXllbktsNWlHUW5QMCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vcmVzb3VyY2UvcHJvZHVjdC1qLXJlc291cmNlL2luZGV4LXBhZ2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU2OiJsb2dpbl9tb29uc2hpbmVfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjM6InBhc3N3b3JkX2hhc2hfbW9vbnNoaW5lIjtzOjYwOiIkMnkkMTIkekpILnJsd1ZqNTdxc01mM2V5ellBZWl0T3Jma01ZLm84NGZmNm9nZjd6M2Q2U2NrVnExV0siO30=', 1738765840),
('o4ey21Ia2RC1s4ig0DKYZml0ZzJyLyG6LqRkd7pF', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMVpEbkNHTXRlU08xZGdVVFR3dElBN0J6UjFsVjExM2R4Zjc4THBMYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9yZXNvdXJjZS9tb29uLXNoaW5lLXVzZXItcmVzb3VyY2UvaW5kZXgtcGFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjU2OiJsb2dpbl9tb29uc2hpbmVfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MjM6InBhc3N3b3JkX2hhc2hfbW9vbnNoaW5lIjtzOjYwOiIkMnkkMTIkekpILnJsd1ZqNTdxc01mM2V5ellBZWl0T3Jma01ZLm84NGZmNm9nZjd6M2Q2U2NrVnExV0siO30=', 1753073873),
('RNemYdosY4PXac6qYDoxM5fRedCzRhRY75lA6hyD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidDlSaFpiaUZaRDU5ZE9wekttRzBqQjJ6RHlhdGw4eDg1bGRWV081MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1739234619);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vistacompra`
--

CREATE TABLE `vistacompra` (
  `id` int(11) NOT NULL,
  `cedula` varchar(10) DEFAULT NULL,
  `nomapeClient` varchar(255) DEFAULT NULL,
  `estado_pago` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  `producto` varchar(255) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_total` decimal(10,2) DEFAULT NULL,
  `tipo_entrega` varchar(50) DEFAULT NULL,
  `estado_producto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vistacompra`
--

INSERT INTO `vistacompra` (`id`, `cedula`, `nomapeClient`, `estado_pago`, `fecha`, `metodo_pago`, `producto`, `costo`, `cantidad`, `total`, `total_total`, `tipo_entrega`, `estado_producto`) VALUES
(1, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Encebollado', 2.50, 1, 2.50, 2.50, 'Retirar', 'Listo'),
(2, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Jugo de Naranja de Litro', 2.50, 1, 2.50, 5.00, 'Retirar', 'Listo'),
(3, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Encebollado', 2.50, 1, 2.50, 2.50, 'Retirar', 'Listo'),
(4, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Jugo de Naranja de Litro', 2.50, 1, 2.50, 5.00, 'Retirar', 'Listo'),
(5, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Encebollado', 2.50, 1, 2.50, 2.50, 'Retirar', 'Listo'),
(6, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Jugo de Naranja de Litro', 2.50, 1, 2.50, 5.00, 'Retirar', 'Entregado'),
(7, '0706817624', 'luci Diaz', 'Pagado', '2025-02-04 00:00:00', 'PayPal', 'Encebollado', 2.50, 3, 7.50, 7.50, 'Retirar', 'Listo'),
(8, '0706817624', 'luci Diaz', 'Pagado', '2025-02-11 00:00:00', 'PayPal', 'Encebollado', 2.50, 2, 5.00, 5.00, 'Retirar', 'En Espera'),
(9, '0706817624', 'luci Diaz', 'Pagado', '2025-02-11 00:00:00', 'PayPal', 'Encebollado', 2.50, 2, 5.00, 5.00, 'Retirar', 'En Espera');

--
-- Disparadores `vistacompra`
--
DELIMITER $$
CREATE TRIGGER `trg_update_compras_estadoPago` AFTER UPDATE ON `vistacompra` FOR EACH ROW BEGIN
    IF OLD.estado_pago <> NEW.estado_pago THEN
        UPDATE compras 
        SET estado_pago = NEW.estado_pago
        WHERE id IN (
            SELECT co.id FROM compras co
            JOIN cliente c ON co.cliente_id = c.id
            WHERE c.cedula = NEW.cedula
        );
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trg_update_detalleCompra_estadoProducto` AFTER UPDATE ON `vistacompra` FOR EACH ROW BEGIN
    IF OLD.estado_producto <> NEW.estado_producto THEN
        UPDATE detalle_compras 
        SET estado_producto = NEW.estado_producto
        WHERE id IN (
            SELECT dc.id FROM detalle_compras dc
            JOIN productos p ON dc.producto_id = p.id
            WHERE p.nombre = NEW.producto AND dc.total = NEW.total
        );
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_Cliente`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id` (`cliente_id`);

--
-- Indices de la tabla `datos_g_s`
--
ALTER TABLE `datos_g_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compra_id` (`compra_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `f_pagos`
--
ALTER TABLE `f_pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `moonshine_socialites`
--
ALTER TABLE `moonshine_socialites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `moonshine_socialites_driver_identity_unique` (`driver`,`identity`);

--
-- Indices de la tabla `moonshine_users`
--
ALTER TABLE `moonshine_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `moonshine_users_email_unique` (`email`),
  ADD KEY `moonshine_users_moonshine_user_role_id_foreign` (`moonshine_user_role_id`);

--
-- Indices de la tabla `moonshine_user_roles`
--
ALTER TABLE `moonshine_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_j_s`
--
ALTER TABLE `product_j_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product_p_s`
--
ALTER TABLE `product_p_s`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_p_s_id_foreign` (`product_p_s_id`),
  ADD KEY `sales_product_j_s_id_foreign` (`product_j_s_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `vistacompra`
--
ALTER TABLE `vistacompra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `datos_g_s`
--
ALTER TABLE `datos_g_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `f_pagos`
--
ALTER TABLE `f_pagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `moonshine_socialites`
--
ALTER TABLE `moonshine_socialites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `moonshine_users`
--
ALTER TABLE `moonshine_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `moonshine_user_roles`
--
ALTER TABLE `moonshine_user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `product_j_s`
--
ALTER TABLE `product_j_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product_p_s`
--
ALTER TABLE `product_p_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vistacompra`
--
ALTER TABLE `vistacompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compras`
--
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id_Cliente`);

--
-- Filtros para la tabla `detalle_compras`
--
ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`compra_id`) REFERENCES `compras` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `moonshine_users`
--
ALTER TABLE `moonshine_users`
  ADD CONSTRAINT `moonshine_users_moonshine_user_role_id_foreign` FOREIGN KEY (`moonshine_user_role_id`) REFERENCES `moonshine_user_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_product_j_s_id_foreign` FOREIGN KEY (`product_j_s_id`) REFERENCES `product_j_s` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_product_p_s_id_foreign` FOREIGN KEY (`product_p_s_id`) REFERENCES `product_p_s` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
