-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 23 déc. 2024 à 18:28
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestcul`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add personnel', 7, 'add_personnel'),
(26, 'Can change personnel', 7, 'change_personnel'),
(27, 'Can delete personnel', 7, 'delete_personnel'),
(28, 'Can view personnel', 7, 'view_personnel'),
(29, 'Can add culture', 8, 'add_culture'),
(30, 'Can change culture', 8, 'change_culture'),
(31, 'Can delete culture', 8, 'delete_culture'),
(32, 'Can view culture', 8, 'view_culture'),
(33, 'Can add city', 9, 'add_city'),
(34, 'Can change city', 9, 'change_city'),
(35, 'Can delete city', 9, 'delete_city'),
(36, 'Can view city', 9, 'view_city'),
(37, 'Can add Suivi de Culture', 10, 'add_suivi'),
(38, 'Can change Suivi de Culture', 10, 'change_suivi'),
(39, 'Can delete Suivi de Culture', 10, 'delete_suivi'),
(40, 'Can view Suivi de Culture', 10, 'view_suivi'),
(41, 'Can add stock', 11, 'add_stock'),
(42, 'Can change stock', 11, 'change_stock'),
(43, 'Can delete stock', 11, 'delete_stock'),
(44, 'Can view stock', 11, 'view_stock'),
(45, 'Can add vente', 12, 'add_vente'),
(46, 'Can change vente', 12, 'change_vente'),
(47, 'Can delete vente', 12, 'delete_vente'),
(48, 'Can view vente', 12, 'view_vente');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$8gPWtQdI0p3oiLJId5LVHf$GE2cCtuso3G8TVhLsp34qKvJQcZ76gylWxA6pW9H9bs=', '2024-09-01 20:32:44.077324', 0, 'Hubert', '', '', 'jeanhubertat@gmail.com', 0, 1, '2024-09-01 20:31:48.884011'),
(2, 'pbkdf2_sha256$260000$e9XbM2wh2NLaUswcy8jYYR$9/grhusrsRLuSgMSoUyZxNDU8SMN1a5zlyL68ukqZtA=', '2024-09-19 08:19:03.263307', 0, 'george', '', '', 'ramirez@gmail.com', 0, 1, '2024-09-19 08:18:29.966509'),
(3, 'pbkdf2_sha256$260000$5zSaBclXPWjWetzLbLxO5Z$+b3UOa6pOrRb5ZEqDx6wbYk40UR4HXZLfKgYUzJAtcY=', '2024-10-25 10:04:59.699361', 0, 'huberto', '', '', '', 0, 1, '2024-10-24 18:27:58.853446'),
(4, 'pbkdf2_sha256$260000$cpPEfA2tq0yPiFGxpTwHzm$beZGWoAGof1UGbliHvRglzKkSIMtxb4DzXuwZY3wlJY=', '2024-11-07 12:19:39.590565', 0, 'Caleb', '', '', '', 0, 1, '2024-11-07 12:19:39.059786'),
(5, 'pbkdf2_sha256$260000$r9BoGSNGo0JEG1vUvmLUku$TrK3vVXMzMrsUd9m4601nBG6YRutJ9XtPWW/weYxrCM=', '2024-11-23 12:22:03.121712', 0, 'Jethro', '', '', '', 0, 1, '2024-11-07 12:56:14.425509');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cultureapp_culture`
--

CREATE TABLE `cultureapp_culture` (
  `id` bigint(20) NOT NULL,
  `nom_culture` varchar(100) NOT NULL,
  `personnel_id` bigint(20) NOT NULL,
  `types` varchar(50) NOT NULL,
  `varietes` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cultureapp_culture`
--

INSERT INTO `cultureapp_culture` (`id`, `nom_culture`, `personnel_id`, `types`, `varietes`) VALUES
(1, 'Tomate', 2, 'legume', 'Tomate Roma'),
(2, 'Poivron', 3, 'fruit', 'Roma'),
(3, 'Piment', 2, 'fruit', 'Piment Cayenne'),
(5, 'Haricots', 4, 'legume', 'Roma'),
(6, 'Blé', 8, 'céréale', 'Blé blanc d\'hiver'),
(7, 'Mil', 4, 'céréale', 'Roma'),
(8, 'Maïs', 3, 'céréale', 'Maïs blanc'),
(9, 'Piment', 3, 'fruit', 'Piment Jalapeño'),
(10, 'Riz', 4, 'céréale', 'Riz Thaï'),
(11, 'Blé', 9, 'céréale', 'Blé dur'),
(12, 'Blé', 9, 'céréale', 'Blé de printemps'),
(13, 'Riz', 2, 'legume', 'Riz Arborio');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'CultureApp', 'culture'),
(7, 'GestCulApp', 'personnel'),
(9, 'mainApp', 'city'),
(6, 'sessions', 'session'),
(11, 'StockApp', 'stock'),
(10, 'SuiviCulApp', 'suivi'),
(12, 'VenteApp', 'vente');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'GestCulApp', '0001_initial', '2024-08-29 22:41:56.428249'),
(2, 'contenttypes', '0001_initial', '2024-08-29 22:41:57.192625'),
(3, 'auth', '0001_initial', '2024-08-29 22:42:09.376031'),
(4, 'admin', '0001_initial', '2024-08-29 22:42:12.692176'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-08-29 22:42:12.891124'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-08-29 22:42:13.109207'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-08-29 22:42:14.802015'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-08-29 22:42:17.760423'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-08-29 22:42:18.028367'),
(10, 'auth', '0004_alter_user_username_opts', '2024-08-29 22:42:18.109263'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-08-29 22:42:19.052371'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-08-29 22:42:19.107097'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-08-29 22:42:19.173882'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-08-29 22:42:19.325217'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-08-29 22:42:19.496305'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-08-29 22:42:20.453315'),
(17, 'auth', '0011_update_proxy_permissions', '2024-08-29 22:42:20.527220'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-08-29 22:42:20.637813'),
(19, 'sessions', '0001_initial', '2024-08-29 22:42:21.122300'),
(20, 'GestCulApp', '0002_personnel_prenom', '2024-08-29 23:49:52.463311'),
(21, 'CultureApp', '0001_initial', '2024-09-05 20:32:15.479946'),
(22, 'mainApp', '0001_initial', '2024-09-07 02:05:01.952225'),
(23, 'SuiviCulApp', '0001_initial', '2024-09-19 11:22:07.144173'),
(24, 'SuiviCulApp', '0002_alter_suivi_options', '2024-09-19 14:18:53.367243'),
(25, 'StockApp', '0001_initial', '2024-09-20 13:35:38.548973'),
(26, 'SuiviCulApp', '0003_auto_20240923_1235', '2024-09-23 12:35:41.964196'),
(27, 'SuiviCulApp', '0004_suivi_quantite', '2024-09-23 12:55:42.375215'),
(28, 'CultureApp', '0002_culture_duree_croissance', '2024-09-23 14:06:29.373370'),
(29, 'CultureApp', '0003_remove_culture_duree_croissance', '2024-09-23 14:14:00.421073'),
(30, 'CultureApp', '0004_culture_croissance', '2024-09-24 21:50:00.695735'),
(31, 'CultureApp', '0005_auto_20240930_1250', '2024-09-30 12:50:34.978804'),
(32, 'SuiviCulApp', '0005_auto_20240930_1545', '2024-09-30 15:45:55.355571'),
(33, 'StockApp', '0002_auto_20241002_1745', '2024-10-02 17:45:26.907097'),
(34, 'StockApp', '0003_auto_20241002_1943', '2024-10-02 19:43:43.877997'),
(35, 'VenteApp', '0001_initial', '2024-10-02 22:14:41.961885');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ele4iamtg8i8q6wn0zjbqhqcjmotgo0', 'e30:1t923b:1wQydofSdXUUqUXpt6VvXdFY-18-umug67swDbPpawY', '2024-11-21 12:56:15.038637'),
('bbgyb9rbkrcim8agn4umq8ftxp5ip2hl', 'e30:1t91UB:tYNqLmovNMfLdEkBwchAGAYiZdV2dvwl7cAUsUvoZxY', '2024-11-21 12:19:39.558718'),
('fjz61j9non6x6qh0j69l95t60adlanf5', '.eJxVjEsOAiEQBe_C2pBuPoIu3XsG0kAjowaSYWZlvLtOMgvdvqp6LxFoXWpYB89hyuIsrDj8bpHSg9sG8p3arcvU2zJPUW6K3OmQ1575edndv4NKo37rI3hvFOhkEW1JuURnmBEcFMtUEqMpWidkBUAOwaDXaBmU9-pExoj3B9DhNvY:1tEp9H:SWehAVGNS55jNpIIPwHh8qUaCtYBqbzPfT2yxOXkuoM', '2024-12-07 12:22:03.189557'),
('hbve5zj31p52shvdnw8hxoxzqgdvctw8', '.eJxVjEsOwiAUAO_C2hDkj0v3PQN5vAdSNTQp7cp4dyXpQrczk3mxCPtW497zGmdiFybZ6ZclwEduQ9Ad2m3huLRtnRMfCT9s59NC-Xk92r9BhV7H1mFSAnRWOjlfPKCUEJxWAh3SuYSgBdhiHARCny3ZQt-IijZKB2PY-wPtxThH:1srCNT:7pkiWyePPfNxu9lL6WNltdKqrdEeKYLlvGitVnmAxtY', '2024-10-03 08:19:03.341071'),
('ywew0igmiumm9xh4kehvmb34bf7ylc8o', '.eJxVjDsOwjAQBe_iGlm2F_8o6XMGa9drkwCypXwqxN0hUgpo38y8l0i4rWPaljKnicVFaHH63Qjzo7Qd8B3brcvc2zpPJHdFHnSRQ-fyvB7u38GIy_itwXmTQ1AGFWgd-WwqkQPykMkqVlETWI6ZQ3Gos1fVAEBRlWo0aIt4fwDIRje7:1skrFc:pzskyYvSnTBifWPNMI8JivH6AZO8_sVoiYQPypsEiuU', '2024-09-15 20:32:44.244341');

-- --------------------------------------------------------

--
-- Structure de la table `gestculapp_personnel`
--

CREATE TABLE `gestculapp_personnel` (
  `id` bigint(20) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mot_de_passe` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gestculapp_personnel`
--

INSERT INTO `gestculapp_personnel` (`id`, `prenom`, `email`, `mot_de_passe`, `adresse`, `telephone`, `nom`) VALUES
(2, 'ANATOR', 'Jethro05@gmail.com', '1234', 'Kpeme', '96659962', 'Jethro'),
(3, 'SARKIS', 'Esther2024@gmail.com', '13579', 'Boulevard Du Haho (3 Hdn)', '+228 0696679343', 'Esther'),
(4, 'ADOGLI', 'annemarie@gmail.com', '4584', 'Adjidogome', '91746574', 'Anne-Marie'),
(8, 'WALLACE', 'Gedeon@gmail.com', '1234', 'Boulevard Du Haho (3 Hdn)', '+228 0696679343', 'Gédéon'),
(9, 'GADEGBEKOU', 'rosalie@gmail.com', '1234567890', 'Hedjranawoe', '22435020', 'Rosalie');

-- --------------------------------------------------------

--
-- Structure de la table `mainapp_city`
--

CREATE TABLE `mainapp_city` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `mainapp_city`
--

INSERT INTO `mainapp_city` (`id`, `nom`) VALUES
(1, 'Lomé'),
(9, 'Ottawa'),
(11, 'Vogan'),
(14, 'Chine'),
(17, 'Kara');

-- --------------------------------------------------------

--
-- Structure de la table `stockapp_stock`
--

CREATE TABLE `stockapp_stock` (
  `id` bigint(20) NOT NULL,
  `date_ajout` date NOT NULL,
  `fournisseur` varchar(255) NOT NULL,
  `nom_culture_id` bigint(20) NOT NULL,
  `quantite_initiale` decimal(10,2) NOT NULL,
  `quantite_restante` decimal(10,2) NOT NULL,
  `quantite_vendue` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stockapp_stock`
--

INSERT INTO `stockapp_stock` (`id`, `date_ajout`, `fournisseur`, `nom_culture_id`, `quantite_initiale`, `quantite_restante`, `quantite_vendue`) VALUES
(1, '2024-09-12', 'Riley', 1, 6600.00, 6584.00, 16.00),
(2, '2024-10-04', 'Riley', 9, 4708.00, 4647.00, 61.00),
(3, '2024-10-16', 'Manoe', 10, 8000.00, 7996.00, 4.00),
(4, '2024-10-10', 'Aurélie', 11, 2500.00, 2000.00, 500.00),
(5, '2024-11-24', 'Daniel', 13, 6050000.00, 6049950.00, 50.00);

-- --------------------------------------------------------

--
-- Structure de la table `suiviculapp_suivi`
--

CREATE TABLE `suiviculapp_suivi` (
  `id` bigint(20) NOT NULL,
  `date_plantation` date NOT NULL,
  `superficie` decimal(10,2) NOT NULL,
  `detail` longtext NOT NULL,
  `nom_culture_id` bigint(20) NOT NULL,
  `date_recolte` date DEFAULT NULL,
  `quantite_recolte` decimal(10,2) DEFAULT NULL,
  `quantite` decimal(10,2) NOT NULL,
  `engrais_utilises` varchar(50) NOT NULL,
  `quantite_pluie` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `suiviculapp_suivi`
--

INSERT INTO `suiviculapp_suivi` (`id`, `date_plantation`, `superficie`, `detail`, `nom_culture_id`, `date_recolte`, `quantite_recolte`, `quantite`, `engrais_utilises`, `quantite_pluie`) VALUES
(1, '2024-09-07', 2.00, 'Irrigations', 3, '2024-12-01', 11000.00, 0.25, 'Engrais NPK', 50.00),
(5, '2024-09-07', 0.50, 'Piquer', 2, '2024-12-06', 2500.00, 0.50, 'Aucun', NULL),
(6, '2024-09-07', 1.50, 'Piquer', 1, '2024-11-16', 6600.00, 1.50, 'Engrais organique', 0.00),
(7, '2024-09-07', 5.00, 'Tillages', 6, '2025-01-05', 20000.00, 2.50, 'Aucun', 1.50),
(9, '2024-09-19', 0.35, 'Arroser', 5, '2024-12-13', 1750.00, 0.20, 'Engrais azoté', 0.25),
(10, '2024-10-03', 1.07, 'Piquer', 9, '2024-12-17', 4708.00, 0.35, 'Engrais NPK', 0.11),
(11, '2024-05-15', 4.00, 'Arroser', 8, '2024-08-08', 17600.00, 2.00, 'Engrais organique', 1.50),
(12, '2024-10-09', 2.00, 'Irrigation', 10, '2025-02-06', 8000.00, 2.50, 'Aucun', 1.50),
(13, '2024-10-09', 0.50, 'Nothing', 11, '2025-02-06', 2500.00, 0.50, 'Aucun', NULL),
(14, '2024-10-21', 1.50, 'Irrigation', 12, '2025-01-14', 8250.00, 0.50, 'Engrais NPK', 50.00),
(15, '2024-11-23', 1000.00, 'Irrigation', 13, '2025-03-15', 6050000.00, 500.00, 'Engrais NPK', 1000.00);

-- --------------------------------------------------------

--
-- Structure de la table `venteapp_vente`
--

CREATE TABLE `venteapp_vente` (
  `id` bigint(20) NOT NULL,
  `quantite_vendue` int(10) UNSIGNED NOT NULL CHECK (`quantite_vendue` >= 0),
  `prix_unitaire` decimal(10,2) NOT NULL,
  `total_vente` decimal(10,2) NOT NULL,
  `client` varchar(255) NOT NULL,
  `date_vente` date NOT NULL,
  `mode_paiement` varchar(50) DEFAULT NULL,
  `remarque` longtext DEFAULT NULL,
  `nom_culture_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `venteapp_vente`
--

INSERT INTO `venteapp_vente` (`id`, `quantite_vendue`, `prix_unitaire`, `total_vente`, `client`, `date_vente`, `mode_paiement`, `remarque`, `nom_culture_id`) VALUES
(1, 16, 1500.00, 24000.00, 'Daniella ABBEY', '2024-10-02', 'espèces', 'Nothing much!', 1),
(2, 61, 2000.00, 122000.00, 'KOUDJO Komi', '2024-10-12', 'carte bancaire', 'Aucune', 9),
(3, 4, 1000.00, 4000.00, 'Josué EBELABA', '2024-10-22', 'virement', 'Aucune', 10),
(4, 500, 1500.00, 750000.00, 'Huberto Suazo', '2024-10-11', 'carte bancaire', 'Nothing', 11),
(5, 50, 2500.00, 125000.00, 'Blessing', '2024-11-29', 'espèces', 'Aucune', 13);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `cultureapp_culture`
--
ALTER TABLE `cultureapp_culture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CultureApp_culture_personnel_id_28fb8a04_fk_GestCulAp` (`personnel_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `gestculapp_personnel`
--
ALTER TABLE `gestculapp_personnel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `mainapp_city`
--
ALTER TABLE `mainapp_city`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stockapp_stock`
--
ALTER TABLE `stockapp_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StockApp_stock_nom_culture_id_1c694ac4_fk_CultureApp_culture_id` (`nom_culture_id`);

--
-- Index pour la table `suiviculapp_suivi`
--
ALTER TABLE `suiviculapp_suivi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `SuiviCulApp_suivi_nom_culture_id_6afd1246_fk_CultureAp` (`nom_culture_id`);

--
-- Index pour la table `venteapp_vente`
--
ALTER TABLE `venteapp_vente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `VenteApp_vente_nom_culture_id_0b57d378_fk_CultureApp_culture_id` (`nom_culture_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cultureapp_culture`
--
ALTER TABLE `cultureapp_culture`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `gestculapp_personnel`
--
ALTER TABLE `gestculapp_personnel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `mainapp_city`
--
ALTER TABLE `mainapp_city`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `stockapp_stock`
--
ALTER TABLE `stockapp_stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `suiviculapp_suivi`
--
ALTER TABLE `suiviculapp_suivi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `venteapp_vente`
--
ALTER TABLE `venteapp_vente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `cultureapp_culture`
--
ALTER TABLE `cultureapp_culture`
  ADD CONSTRAINT `CultureApp_culture_personnel_id_28fb8a04_fk_GestCulAp` FOREIGN KEY (`personnel_id`) REFERENCES `gestculapp_personnel` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `stockapp_stock`
--
ALTER TABLE `stockapp_stock`
  ADD CONSTRAINT `StockApp_stock_nom_culture_id_1c694ac4_fk_CultureApp_culture_id` FOREIGN KEY (`nom_culture_id`) REFERENCES `cultureapp_culture` (`id`);

--
-- Contraintes pour la table `suiviculapp_suivi`
--
ALTER TABLE `suiviculapp_suivi`
  ADD CONSTRAINT `SuiviCulApp_suivi_nom_culture_id_6afd1246_fk_CultureAp` FOREIGN KEY (`nom_culture_id`) REFERENCES `cultureapp_culture` (`id`);

--
-- Contraintes pour la table `venteapp_vente`
--
ALTER TABLE `venteapp_vente`
  ADD CONSTRAINT `VenteApp_vente_nom_culture_id_0b57d378_fk_CultureApp_culture_id` FOREIGN KEY (`nom_culture_id`) REFERENCES `cultureapp_culture` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
