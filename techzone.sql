-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.18-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla techzone.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.categories: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `name`) VALUES
	(1, 'Laptops'),
	(2, 'Smartphones'),
	(3, 'Tablets'),
	(4, 'Accesorios'),
	(5, 'Cámaras'),
	(6, 'Audio'),
	(7, 'Televisores'),
	(8, 'Drones'),
	(9, 'Smart Home'),
	(10, 'Consolas de Videojuegos'),
	(11, 'Dispositivos de Almacenamiento'),
	(12, 'Software'),
	(13, 'Computadoras de Escritorio'),
	(14, 'Proyectores'),
	(15, 'Wearables'),
	(16, 'Servidores'),
	(17, 'Componentes de PC'),
	(18, 'Redes y Conectividad'),
	(19, 'Impresoras y Escáneres'),
	(20, 'Iluminación'),
	(21, 'Dispositivos de Seguridad'),
	(22, 'Baterías y Cargadores'),
	(23, 'Cables y Adaptadores'),
	(24, 'Electrónica de Consumo'),
	(25, 'GPS y Navegación'),
	(26, 'Robótica'),
	(27, 'Herramientas y Equipos de Prueba'),
	(28, 'Accesorios para Vehículos'),
	(29, 'Dispositivos Médicos'),
	(30, 'Instrumentos Musicales'),
	(50, 'Impresoras');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.customers
DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.customers: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `name`, `email`, `nickname`) VALUES
	(1, 'John Doe', 'john.doe@example.com', ''),
	(2, 'Jane Smith', 'jane.smith@example.com', ''),
	(3, 'Maria Rodriguez', 'maria.rodriguez@example.com', ''),
	(4, 'David Gonzalez', 'david.gonzalez@example.com', ''),
	(5, 'Ana Perez', 'ana.perez@example.com', ''),
	(6, 'Daniel Fernandez', 'daniel.fernandez@example.com', ''),
	(7, 'Lucas Ramirez', 'lucas.ramirez@example.com', ''),
	(8, 'Sofia Castillo', 'sofia.castillo@example.com', ''),
	(9, 'Mateo Herrera', 'mateo.herrera@example.com', ''),
	(10, 'Camila Luna', 'camila.luna@example.com', ''),
	(11, 'Emilia Morales', 'emilia.morales@example.com', ''),
	(12, 'Valentina Navarro', 'valentina.navarro@example.com', ''),
	(13, 'Nicolas Aguilar', 'nicolas.aguilar@example.com', ''),
	(14, 'Ariana Peña', 'ariana.peña@example.com', ''),
	(15, 'Emily Rios', 'emily.rios@example.com', ''),
	(16, 'Isabella Medina', 'isabella.medina@example.com', ''),
	(17, 'Santiago Guerrero', 'santiago.guerrero@example.com', ''),
	(18, 'Samuel Paredes', 'samuel.paredes@example.com', ''),
	(19, 'Andrea Vargas', 'andrea.vargas@example.com', ''),
	(20, 'Victoria Romero', 'victoria.romero@example.com', ''),
	(21, 'Diego Rojas', 'diego.rojas@example.com', ''),
	(22, 'Daniela Ortega', 'daniela.ortega@example.com', ''),
	(23, 'Mariana Zapata', 'mariana.zapata@example.com', ''),
	(24, 'Sebastian Osorio', 'sebastian.osorio@example.com', ''),
	(52, 'Michael Brown', 'michael.brown@example.com', ''),
	(53, 'Jessica Taylor', 'jessica.taylor@example.com', ''),
	(100, 'Fernando Pérez', 'fernando.perez@example.com', ''),
	(101, 'name', 'email', 'nickname'),
	(102, 'name', 'email', 'nickname');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.dates
DROP TABLE IF EXISTS `dates`;
CREATE TABLE IF NOT EXISTS `dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.dates: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
REPLACE INTO `dates` (`id`, `date`) VALUES
	(1, '2023-01-01 10:37:42'),
	(2, '2023-01-02 18:52:11'),
	(3, '2023-01-03 20:21:15'),
	(4, '2023-01-04 14:48:56'),
	(51, '2023-02-20 12:09:33'),
	(52, '2023-02-21 11:14:28'),
	(53, '2023-02-22 17:33:09'),
	(54, '2023-02-23 21:16:49'),
	(55, '2023-02-24 20:02:21'),
	(56, '2023-02-25 15:50:17'),
	(57, '2023-02-26 12:30:27'),
	(58, '2023-02-27 13:59:05'),
	(59, '2023-02-28 16:20:49'),
	(60, '2023-03-01 20:50:34'),
	(61, '2023-03-02 10:13:18'),
	(62, '2023-03-03 14:37:27'),
	(63, '2023-03-04 11:27:41'),
	(64, '2023-03-05 17:46:58'),
	(65, '2023-03-06 19:18:02'),
	(66, '2023-03-07 21:49:21'),
	(67, '2023-03-08 16:44:07'),
	(68, '2023-03-09 20:30:12'),
	(69, '2023-03-10 11:52:53'),
	(70, '2023-03-11 13:01:17'),
	(71, '2023-03-12 15:08:59'),
	(72, '2023-03-13 10:04:38'),
	(100, '2023-04-30 19:56:44');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.employees
DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.employees: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
REPLACE INTO `employees` (`id`, `name`, `role`, `department`) VALUES
	(1, 'Alice Johnson', 'Salesperson', 'Sales'),
	(2, 'Bob Thompson', 'Salesperson', 'Sales'),
	(3, 'Miguel Ángel García', 'Salesperson', 'Sales'),
	(4, 'Lucía Ramírez', 'Salesperson', 'Sales'),
	(12, 'Sophia Moore', 'Salesperson', 'Sales'),
	(13, 'Mia Jackson', 'Salesperson', 'Sales'),
	(14, 'Ethan White', 'Salesperson', 'Sales'),
	(15, 'Olivia Martin', 'Salesperson', 'Sales'),
	(16, 'Ava Clark', 'Salesperson', 'Sales'),
	(17, 'Isabella Lewis', 'Salesperson', 'Sales'),
	(18, 'Sophia Young', 'Salesperson', 'Sales'),
	(19, 'Mia Hall', 'Salesperson', 'Sales'),
	(20, 'Charlotte Allen', 'Salesperson', 'Sales'),
	(21, 'Amelia Rivera', 'Salesperson', 'Sales'),
	(22, 'Harper Scott', 'Salesperson', 'Sales'),
	(23, 'Ella Wright', 'Salesperson', 'Sales'),
	(24, 'Gianna Lopez', 'Salesperson', 'Sales'),
	(25, 'Aria Torres', 'Salesperson', 'Sales'),
	(26, 'Camila Green', 'Salesperson', 'Sales'),
	(27, 'Ariana Adams', 'Salesperson', 'Sales'),
	(28, 'Penelope Baker', 'Salesperson', 'Sales'),
	(29, 'Riley Nelson', 'Salesperson', 'Sales'),
	(30, 'Layla Carter', 'Salesperson', 'Sales'),
	(31, 'Lillian Mitchell', 'Salesperson', 'Sales'),
	(32, 'Zoe Robinson', 'Salesperson', 'Sales'),
	(33, 'Hannah Perry', 'Salesperson', 'Sales'),
	(50, 'Victoria Lee', 'Salesperson', 'Sales');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.inventory
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `location_id` (`location_id`),
  KEY `date_id` (`date_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `inventory_ibfk_3` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.inventory: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
REPLACE INTO `inventory` (`id`, `product_id`, `location_id`, `date_id`, `quantity`) VALUES
	(1, 1, 1, 1, 10),
	(2, 2, 2, 2, 15),
	(3, 3, 3, 3, 8),
	(4, 4, 4, 4, 12),
	(52, 52, 27, 52, 12),
	(53, 53, 28, 53, 15),
	(54, 1, 29, 54, 25),
	(55, 52, 30, 55, 18),
	(56, 31, 31, 56, 30),
	(57, 32, 32, 57, 22),
	(58, 33, 33, 58, 35),
	(59, 15, 34, 59, 15),
	(60, 28, 35, 60, 28),
	(61, 34, 36, 61, 40),
	(62, 12, 37, 62, 12),
	(63, 20, 38, 63, 20),
	(64, 32, 39, 64, 32),
	(65, 52, 38, 65, 45),
	(66, 25, 50, 66, 25),
	(67, 53, 5, 67, 55),
	(68, 10, 22, 68, 10),
	(69, 34, 29, 69, 38),
	(70, 52, 27, 70, 50),
	(71, 12, 11, 71, 12),
	(72, 24, 3, 72, 24);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.locations
DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.locations: ~40 rows (aproximadamente)
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
REPLACE INTO `locations` (`id`, `city`, `state`, `country`) VALUES
	(1, 'San Francisco', 'California', 'Estados Unidos'),
	(2, 'New York', 'New York', 'Estados Unidos'),
	(3, 'Toronto', 'Ontario', 'Canadá'),
	(4, 'Londres', 'Inglaterra', 'Reino Unido'),
	(5, 'Sydney', 'New South Wales', 'Australia'),
	(6, 'Tokio', 'Tokio', 'Japón'),
	(7, 'Roma', 'Lazio', 'Italia'),
	(8, 'Barcelona', 'Cataluña', 'España'),
	(9, 'São Paulo', 'São Paulo', 'Brasil'),
	(10, 'Moscú', 'Moscú', 'Rusia'),
	(11, 'Mumbai', 'Maharashtra', 'India'),
	(12, 'Shanghai', 'Shanghai', 'China'),
	(13, 'Seúl', 'Seúl', 'Corea del Sur'),
	(14, 'Johannesburgo', 'Gauteng', 'Sudáfrica'),
	(15, 'Buenos Aires', 'Buenos Aires', 'Argentina'),
	(16, 'Bogotá', 'Bogotá', 'Colombia'),
	(17, 'Santiago', 'Santiago', 'Chile'),
	(18, 'Lima', 'Lima', 'Perú'),
	(19, 'Lagos', 'Lagos', 'Nigeria'),
	(20, 'El Cairo', 'El Cairo', 'Egipto'),
	(21, 'Estambul', 'Estambul', 'Turquía'),
	(22, 'Yakarta', 'Yakarta', 'Indonesia'),
	(23, 'Kuala Lumpur', 'Kuala Lumpur', 'Malasia'),
	(24, 'Manila', 'Manila', 'Filipinas'),
	(25, 'Ciudad Ho Chi Minh', 'Ciudad Ho Chi Minh', 'Vietnam'),
	(26, 'Bangkok', 'Bangkok', 'Tailandia'),
	(27, 'Singapur', 'Singapur', 'Singapur'),
	(28, 'Auckland', 'Auckland', 'Nueva Zelanda'),
	(29, 'Taipéi', 'Taipéi', 'Taiwán'),
	(30, 'Hong Kong', 'Hong Kong', 'Hong Kong'),
	(31, 'Bruselas', 'Bruselas', 'Bélgica'),
	(32, 'Copenhague', 'Copenhague', 'Dinamarca'),
	(33, 'Helsinki', 'Helsinki', 'Finlandia'),
	(34, 'Oslo', 'Oslo', 'Noruega'),
	(35, 'Lisboa', 'Lisboa', 'Portugal'),
	(36, 'Zúrich', 'Zúrich', 'Suiza'),
	(37, 'Atenas', 'Atenas', 'Grecia'),
	(38, 'Ciudad de México', 'Ciudad de México', 'México'),
	(39, 'Guadalajara', 'Jalisco', 'México'),
	(50, 'París', 'Île-de-France', 'Francia');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.products: ~37 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
REPLACE INTO `products` (`id`, `name`, `price`, `cost`, `category_id`) VALUES
	(1, 'Laptop ABC', 1200.00, 800.00, 1),
	(2, 'Smartphone XYZ', 800.00, 600.00, 2),
	(3, 'Laptop DEF', 1300.00, 900.00, 1),
	(4, 'Smartphone ABC', 700.00, 500.00, 2),
	(5, 'Monitor 4K DEF', 700.00, 450.00, 4),
	(6, 'Smartphone GHI', 900.00, 700.00, 2),
	(7, 'Tablet JKL', 600.00, 400.00, 3),
	(8, 'Cámara DSLR RST', 950.00, 800.00, 5),
	(9, 'Audífonos Bluetooth UVW', 120.00, 60.00, 6),
	(10, 'Teclado Mecánico XYZ', 100.00, 60.00, 6),
	(11, 'Laptop GHI', 1100.00, 800.00, 1),
	(12, 'Smartphone JKL', 750.00, 500.00, 2),
	(13, 'Tablet MNO', 550.00, 350.00, 3),
	(14, 'Monitor Curvo PQR', 800.00, 600.00, 4),
	(15, 'Cámara DSLR STU', 850.00, 700.00, 5),
	(16, 'Micrófono USB VWX', 150.00, 70.00, 6),
	(17, 'Smartwatch YZA', 300.00, 150.00, 6),
	(18, 'Laptop BCD', 1500.00, 1000.00, 1),
	(19, 'Smartphone EFG', 950.00, 700.00, 2),
	(20, 'Tablet HIJ', 450.00, 300.00, 3),
	(21, 'Monitor 8K KLM', 1000.00, 800.00, 4),
	(22, 'Cámara Mirrorless NOP', 1200.00, 900.00, 5),
	(23, 'Router Inalámbrico QRS', 80.00, 50.00, 6),
	(24, 'Disco Duro Externo TUV', 200.00, 120.00, 6),
	(25, 'Impresora 3D WXY', 400.00, 300.00, 6),
	(26, 'Televisor 4K ZAB', 900.00, 600.00, 7),
	(27, 'Sistema de Sonido CDE', 350.00, 200.00, 6),
	(28, 'Laptop FGH', 1400.00, 1000.00, 1),
	(29, 'Smartphone IJK', 850.00, 600.00, 2),
	(30, 'Tablet LMN', 500.00, 300.00, 3),
	(31, 'Monitor Ultrawide OPQ', 900.00, 600.00, 4),
	(32, 'Cámara de Acción RST', 300.00, 200.00, 5),
	(33, 'Teclado y Mouse Inalámbricos UVW', 120.00, 70.00, 6),
	(34, 'Laptop XYZ', 1600.00, 1100.00, 1),
	(52, 'Cámara DSLR OPQ', 900.00, 700.00, 5),
	(53, 'Monitor 4K UVW', 650.00, 450.00, 4),
	(100, 'Mouse ergonómico RST', 40.00, 25.00, 6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.purchases
DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `date_id` (`date_id`),
  CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  CONSTRAINT `purchases_ibfk_3` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.purchases: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
REPLACE INTO `purchases` (`id`, `product_id`, `supplier_id`, `date_id`, `quantity`, `cost`) VALUES
	(1, 1, 1, 1, 10, 800.00),
	(2, 2, 2, 2, 15, 700.00),
	(3, 3, 3, 3, 20, 900.00),
	(4, 4, 4, 4, 25, 600.00),
	(5, 1, 1, 51, 50, 800.00),
	(6, 2, 2, 52, 55, 700.00),
	(7, 3, 3, 53, 60, 900.00),
	(8, 4, 4, 54, 65, 600.00),
	(9, 1, 1, 55, 70, 800.00),
	(10, 2, 2, 56, 75, 700.00),
	(11, 3, 3, 57, 80, 900.00),
	(12, 4, 4, 58, 85, 600.00),
	(13, 1, 1, 59, 90, 800.00),
	(14, 2, 2, 60, 95, 700.00),
	(15, 3, 3, 61, 100, 900.00),
	(16, 4, 4, 62, 105, 600.00),
	(17, 1, 1, 63, 110, 800.00),
	(18, 2, 2, 64, 115, 700.00),
	(19, 3, 3, 65, 120, 900.00),
	(20, 4, 4, 66, 125, 600.00),
	(21, 1, 1, 67, 130, 800.00),
	(22, 2, 2, 68, 135, 700.00),
	(23, 3, 3, 69, 140, 900.00),
	(24, 4, 4, 70, 145, 600.00),
	(25, 1, 1, 71, 150, 800.00),
	(26, 2, 2, 72, 155, 700.00);
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.sales
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `date_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `units_sold` int(11) NOT NULL,
  `revenue` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `location_id` (`location_id`),
  KEY `date_id` (`date_id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `sales_ibfk_3` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`),
  CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `sales_ibfk_5` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.sales: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
REPLACE INTO `sales` (`id`, `product_id`, `location_id`, `date_id`, `customer_id`, `employee_id`, `units_sold`, `revenue`) VALUES
	(1, 1, 1, 1, 1, 1, 1, 1200.00),
	(2, 2, 2, 2, 2, 2, 2, 1600.00),
	(3, 3, 3, 3, 3, 3, 1, 1300.00),
	(4, 4, 4, 4, 4, 4, 1, 700.00),
	(52, 52, 27, 52, 52, 12, 1, 900.00),
	(53, 53, 28, 53, 53, 13, 2, 1300.00),
	(54, 16, 38, 65, 12, 28, 3, 4392.00),
	(55, 4, 27, 66, 14, 17, 4, 3683.00),
	(56, 9, 33, 66, 12, 22, 1, 3930.00),
	(57, 19, 33, 58, 16, 30, 4, 2273.00),
	(58, 8, 15, 67, 8, 33, 5, 3256.00),
	(59, 5, 39, 53, 13, 15, 3, 3216.00),
	(60, 16, 5, 60, 2, 30, 1, 1295.00),
	(61, 29, 1, 52, 3, 33, 5, 3266.00),
	(62, 4, 23, 70, 4, 12, 1, 703.00),
	(63, 10, 10, 64, 7, 26, 2, 3277.00),
	(64, 19, 30, 63, 1, 26, 5, 4455.00),
	(65, 3, 7, 66, 16, 32, 1, 3796.00),
	(66, 1, 8, 53, 19, 15, 3, 1152.00),
	(67, 27, 28, 71, 17, 24, 1, 2490.00),
	(68, 2, 20, 65, 7, 15, 3, 2741.00),
	(69, 15, 17, 63, 19, 30, 1, 2866.00),
	(70, 19, 37, 54, 13, 19, 1, 1843.00),
	(71, 16, 36, 52, 13, 28, 3, 729.00),
	(72, 25, 7, 70, 20, 15, 5, 3267.00),
	(73, 10, 39, 69, 22, 19, 4, 1698.00);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- Volcando estructura para tabla techzone.suppliers
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla techzone.suppliers: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
