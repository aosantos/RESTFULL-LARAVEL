-- --------------------------------------------------------
-- Servidor:                     localhost
-- Versão do servidor:           10.2.3-MariaDB-log - mariadb.org binary distribution
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para rest
CREATE DATABASE IF NOT EXISTS `rest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `rest`;

-- Copiando estrutura para tabela rest.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.migrations: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(17, '2014_10_12_000000_create_users_table', 1),
	(18, '2014_10_12_100000_create_password_resets_table', 1),
	(19, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(20, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(22, '2016_06_01_000004_create_oauth_clients_table', 1),
	(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(24, '2017_12_30_151557_create_products_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.oauth_access_tokens: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('11e86b16a42e9d4e94ff9e86453c909b6a84d298ccf4f31b3f2f58e59df04e552501f27df20858b4', 1, 1, NULL, '[]', 0, '2018-01-01 23:44:56', '2018-01-01 23:44:56', '2018-01-04 23:44:56'),
	('142273cdf1ba4bd831567fb8d9eb1759238756e1953d559f8358e19d360ad3ee8eae4183903504f5', 3, 2, NULL, '[]', 0, '2018-03-04 19:06:46', '2018-03-04 19:06:46', '2018-03-07 19:06:44'),
	('271e51979a4ab65548f9e510699fce101425c0938da8668b924254ef24f11547164a9eb75ebdc599', 1, 2, NULL, '[]', 0, '2018-01-01 22:26:58', '2018-01-01 22:26:58', '2018-01-04 22:26:58'),
	('285d9c42829696b8d4df8b55c0fe59c7b6dbaf98e02cd75a255aa461a0acfd2619c29462624393ba', 1, 1, NULL, '[]', 0, '2018-01-01 22:26:37', '2018-01-01 22:26:37', '2018-01-04 22:26:37'),
	('41f8397f1c1d63018930049baa4df84c6fe441dcbdbbd1b66ce9a8c0ca5eb151fc4dc25d7888fb4c', 1, 1, NULL, '[]', 0, '2018-01-01 23:45:07', '2018-01-01 23:45:07', '2018-01-04 23:45:07'),
	('50c21e82c5698fb1cc3a3bdeca9d51fecac560fbe5134e9127aa9b150fb82b2785635852ab7c2b64', 1, 1, NULL, '[]', 0, '2018-01-01 23:41:51', '2018-01-01 23:41:51', '2018-01-04 23:41:51'),
	('9287aa98e45ade82333999fb0c1bfedf2975f7d77fb054e870da8c94e52fa5d6f8edfbcc702a44da', 1, 2, NULL, '[]', 0, '2018-01-01 21:58:26', '2018-01-01 21:58:26', '2018-01-04 21:58:26'),
	('963a960e126f0f34aedc61b718e044307f370f52d6cd86358f964bd8d2f304c6424eb4bc8d78b04a', 1, 1, NULL, '[]', 0, '2018-01-01 22:12:49', '2018-01-01 22:12:49', '2018-01-04 22:12:49'),
	('af9ad47514a0c6f4161cd4ab8496fa2f92b376b62a2662a2faaaa6cf651724a513ca1e86c68e7a32', 1, 1, NULL, '[]', 0, '2018-01-01 23:38:40', '2018-01-01 23:38:40', '2018-01-04 23:38:40'),
	('dd48f941000ba810e91835601a69fe5e701ec6232d52d951329bb4a96d5e5070f9ed2306948bae06', 1, 2, NULL, '[]', 0, '2018-03-04 14:49:03', '2018-03-04 14:49:03', '2018-03-07 14:49:01');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.oauth_auth_codes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.oauth_clients: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Usuários', 'SdhavmkYDczUBmDtXP1lSdcfXGqn87XqDfRHWAt2', 'http://laravel2.dev.com/api/v1/users/me', 0, 1, 0, '2018-01-01 21:39:29', '2018-01-01 21:39:29'),
	(2, 1, 'Laravel Password Grant Client', 'ADpHIeJrl2Ws1uEFGUjmGv7GGQ0Mh2E0RpimANDJ', 'http://localhost', 0, 1, 0, '2018-01-01 21:57:48', '2018-01-01 21:57:48');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.oauth_personal_access_clients: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.oauth_refresh_tokens: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('0313b85c02949ca877e4eab6aaa75643541cc75d4d1e031b6e5d03f28f675e6de8ea20e1c7e99057', '142273cdf1ba4bd831567fb8d9eb1759238756e1953d559f8358e19d360ad3ee8eae4183903504f5', 0, '2018-04-03 19:06:45'),
	('37e89aba0884b244e447846ee63db0a03dfb883921713dbab391248c9dbe925601f525773723e698', '963a960e126f0f34aedc61b718e044307f370f52d6cd86358f964bd8d2f304c6424eb4bc8d78b04a', 0, '2018-01-31 22:12:50'),
	('95a2cafc6ce29e023fbdf4da238439ba68db4d79d9de03e1536f7c96102f233370c6169973a30e82', 'dd48f941000ba810e91835601a69fe5e701ec6232d52d951329bb4a96d5e5070f9ed2306948bae06', 0, '2018-04-03 14:49:06'),
	('aa4c785f7a30574258a97b5268846c4b6d3daf4891a97d1375fcd88e506f2d44488b188f83e9d86d', '9287aa98e45ade82333999fb0c1bfedf2975f7d77fb054e870da8c94e52fa5d6f8edfbcc702a44da', 0, '2018-01-31 21:58:26'),
	('bc9b727fa1646efd26762ad957961d4a8ca5a6be30e1eeefb3f20e1193943c399efe6f2c98ff1e19', '285d9c42829696b8d4df8b55c0fe59c7b6dbaf98e02cd75a255aa461a0acfd2619c29462624393ba', 0, '2018-01-31 22:26:37'),
	('cdd3f933265e6520c6b98bc4ca8f2253df08531e11ef0d146bd701f961bc12f3684ef64225e99e5f', '271e51979a4ab65548f9e510699fce101425c0938da8668b924254ef24f11547164a9eb75ebdc599', 0, '2018-01-31 22:26:58');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.products: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `lm`, `name`, `free_shipping`, `description`, `price`) VALUES
	(55, '2018-03-04 19:00:47', '2018-03-04 19:00:47', '1001', 'Furadeira X', '0', 'Furadeira eficiente X', '100.00'),
	(56, '2018-03-04 19:00:47', '2018-03-04 19:00:47', '1002', 'Furadeira Y', '1', 'Furadeira super eficiente Y', '140.00'),
	(57, '2018-03-04 19:00:47', '2018-03-04 19:00:47', '1003', 'Chave de Fenda X', '0', 'Chave de fenda simples', '20.00'),
	(58, '2018-03-04 19:00:48', '2018-03-04 19:00:48', '1008', 'Serra de Marmore', '1', 'Serra com 1400W modelo 4100NH2Z-127V-L', '399.00'),
	(59, '2018-03-04 19:00:48', '2018-03-04 19:00:48', '1009', 'Broca Z', '0', 'Broca simples', '3.90'),
	(60, '2018-03-04 20:00:31', '2018-03-04 20:00:31', '1010', 'Luvas de Proteção', '0', 'Luva de proteção básica', '5.60');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Copiando estrutura para tabela rest.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela rest.users: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Anderson', 'andoliversant@hotmail.com', '$2y$10$WShcecs3nv9FgnQJRnbwhupCGdSuJUxIcwKxG/ITz2FZ.c3zE7nv2', NULL, '2018-03-04 17:10:07', '2018-03-04 17:10:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
