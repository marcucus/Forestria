-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 02 mars 2022 à 19:56
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `forestrias`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220207232411', '2022-02-07 23:24:17', 44),
('DoctrineMigrations\\Version20220207232605', '2022-02-07 23:26:10', 68),
('DoctrineMigrations\\Version20220207234853', '2022-02-07 23:48:59', 76),
('DoctrineMigrations\\Version20220207234926', '2022-02-07 23:49:29', 218),
('DoctrineMigrations\\Version20220207235201', '2022-02-07 23:52:04', 70),
('DoctrineMigrations\\Version20220208002435', '2022-02-08 00:24:41', 20),
('DoctrineMigrations\\Version20220302152940', '2022-03-02 15:30:33', 111),
('DoctrineMigrations\\Version20220302153342', '2022-03-02 15:33:45', 20),
('DoctrineMigrations\\Version20220302153506', '2022-03-02 15:35:09', 20),
('DoctrineMigrations\\Version20220302153557', '2022-03-02 15:36:01', 20),
('DoctrineMigrations\\Version20220302154954', '2022-03-02 15:50:00', 20),
('DoctrineMigrations\\Version20220302160942', '2022-03-02 16:09:46', 103),
('DoctrineMigrations\\Version20220302161103', '2022-03-02 16:11:05', 20),
('DoctrineMigrations\\Version20220302161230', '2022-03-02 16:12:33', 109),
('DoctrineMigrations\\Version20220302174036', '2022-03-02 17:40:41', 20),
('DoctrineMigrations\\Version20220302184013', '2022-03-02 18:40:18', 103);

-- --------------------------------------------------------

--
-- Structure de la table `parcours`
--

DROP TABLE IF EXISTS `parcours`;
CREATE TABLE IF NOT EXISTS `parcours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parcours`
--

INSERT INTO `parcours` (`id`, `name`, `description`, `image_name`, `image_size`, `updated_at`, `latitude`, `longitude`) VALUES
(3, 'Déchets', 'Voici le parcours des déchets ! Clique pour faire le parcours.', '621fa2ef0ab3e425994632.png', 35298, '2022-03-02 18:01:35', 0, 0),
(4, 'Handicap', 'Voici le parcours handicap ! Clique pour faire le parcours.', '621fa2f6e3aa4950039457.png', 50168, '2022-03-02 18:01:42', 45.83291558861, 1.2522536878985),
(5, 'Oiseaux', 'Voici le parcours nature spécial oiseaux ! Clique pour faire le parcours.', '621fa307d0b03556002863.png', 31735, '2022-03-02 18:01:59', 45.836413775621, 1.2374481037588),
(6, 'Sport', 'Voici le parcours du sport ! Clique pour faire le parcours.', '621fa30ed6c35451665206.png', 31820, '2022-03-02 18:02:06', 0, 0),
(9, 'Famille', 'Voici le parcours de la famille ! Clique pour faire le parcours.', '621fa3159e57e802230435.png', 38953, '2022-03-02 18:02:13', 45.835892730932, 1.2375563051559);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `number`) VALUES
(4, 'forestria@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$Mnp2Zzf4U09/pmIPFD0jhekbDxQ..1y/dxHYabrZOt0lXUSKbMRc6', 'admin', 'admin', '0000000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
