-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 mars 2022 à 18:52
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
('DoctrineMigrations\\Version20220302184013', '2022-03-02 18:40:18', 103),
('DoctrineMigrations\\Version20220307133608', '2022-03-07 13:36:26', 105),
('DoctrineMigrations\\Version20220307141304', '2022-03-07 14:13:09', 218),
('DoctrineMigrations\\Version20220307141802', '2022-03-07 14:18:05', 221),
('DoctrineMigrations\\Version20220307142242', '2022-03-07 14:22:44', 63),
('DoctrineMigrations\\Version20220308002944', '2022-03-08 00:29:49', 186),
('DoctrineMigrations\\Version20220308004552', '2022-03-08 00:45:54', 264),
('DoctrineMigrations\\Version20220308005847', '2022-03-08 00:58:50', 178),
('DoctrineMigrations\\Version20220308010101', '2022-03-08 01:01:47', 320),
('DoctrineMigrations\\Version20220308141315', '2022-03-08 14:13:17', 190),
('DoctrineMigrations\\Version20220308141512', '2022-03-08 14:15:14', 137),
('DoctrineMigrations\\Version20220308141530', '2022-03-08 14:15:38', 142),
('DoctrineMigrations\\Version20220309231929', '2022-03-09 23:19:32', 27),
('DoctrineMigrations\\Version20220309232402', '2022-03-09 23:24:05', 56),
('DoctrineMigrations\\Version20220309232509', '2022-03-09 23:25:11', 23),
('DoctrineMigrations\\Version20220311201806', '2022-03-11 20:18:13', 84),
('DoctrineMigrations\\Version20220311225706', '2022-03-11 22:57:10', 66),
('DoctrineMigrations\\Version20220311231800', '2022-03-11 23:18:07', 71),
('DoctrineMigrations\\Version20220316204441', '2022-03-16 20:44:57', 122),
('DoctrineMigrations\\Version20220317170427', '2022-03-17 17:04:35', 91);

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
(5, 'Oiseaux', 'Voici le parcours oiseaux ! Clique pour faire le parcours.', '621fa307d0b03556002863.png', 31735, '2022-03-02 18:01:59', 45.83773072367752, 1.237046045891824),
(6, 'Sport', 'Voici le parcours du sport ! Clique pour faire le parcours.', '621fa30ed6c35451665206.png', 31820, '2022-03-02 18:02:06', 0, 0),
(9, 'Famille', 'Voici le parcours de la famille ! Clique pour faire le parcours.', '621fa3159e57e802230435.png', 38953, '2022-03-02 18:02:13', 45.835892730932, 1.2375563051559);

-- --------------------------------------------------------

--
-- Structure de la table `point`
--

DROP TABLE IF EXISTS `point`;
CREATE TABLE IF NOT EXISTS `point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pos` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parcours_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `sound_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sound_size` int(11) DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_B7A5F3246E38C0DB` (`parcours_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `point`
--

INSERT INTO `point` (`id`, `pos`, `latitude`, `longitude`, `text`, `titre`, `parcours_id`, `image_name`, `image_size`, `updated_at`, `sound_name`, `sound_size`, `url`) VALUES
(2, 1, 45.83866, 1.234474, '<div>Mésange charbonnière (famille des Paridés)</div>', 'Point d\'intérêt n°1 (début)', 5, '6232537c26a69157972160.jpg', 521127, '2022-03-16 22:15:40', '6232537c29cc5777299712.mp3', 1861578, NULL),
(3, 2, 45.838, 1.233, '<div>Mésanges bleue et noire (famille des Paridés); Mésange (ou Orite) à longue-queue (famille des Aegithalidés)</div>', 'Point d\'intérêt n°2', 5, '6232539a511a8313126614.jpg', 896252, '2022-03-16 22:16:10', '6232539a53375664068262.mp3', 924660, NULL),
(4, 3, 45.836186, 1.232371, '<div>Rougegorge familier (famille des Turdidés)</div>', 'Point d\'intérêt n°3', 5, '623254b96eaa0343527939.jpg', 40679, '2022-03-16 22:20:57', '623254b970d67638802598.mp3', 7193078, NULL),
(5, 4, 45.835198, 1.234785, '<div>Pic épeiche (famille des Picidés)</div>', 'Point d\'intérêt n°4', 5, '623254d679265642646871.jpg', 1005247, '2022-03-16 22:21:26', '623254d67b3bc126352974.mp3', 508299, NULL),
(6, 5, 45.834661, 1.240384, '<div>Pinson des arbres et Chardonneret élégant (famille des Fringillidés)</div>', 'Point d\'intérêt n°5', 5, '623255018a8f7734586530.jpg', 10158060, '2022-03-16 22:22:09', '623255018d03a307025952.mp3', 338186, NULL),
(7, 6, 45.834376, 1.243417, '<div>Merle noir (famille des Turdidés)</div>', 'Point d\'intérêt n°6', 5, '623255384fc4d819541678.jpg', 1196774, '2022-03-16 22:23:04', '6232553852033312138185.mp3', 304846, NULL),
(8, 7, 45.835531, 1.241751, '<div>Etourneau sansonnet (famille des Sturnidés)</div>', 'Point d\'intérêt n°7', 5, '62325551ca458461864357.jpg', 322504, '2022-03-16 22:23:29', '62325551ccf0e356200463.mp3', 1546918, NULL),
(10, 8, 45.835793, 1.238964, '<div>Geai des chênes; Corneille noire; Choucas des tours (famille des Corvidés)</div>', 'Point d\'intérêt n°8', 5, '6232556fd686b000557914.jpg', 652257, '2022-03-16 22:23:59', '6232556fd895a243071113.mp3', 713209, NULL),
(11, 9, 45.836212, 1.236158, '<div>Pic vert (famille des Picidés)</div>', 'Point d\'intérêt n°9', 5, '62325587a8192138166366.jpg', 837552, '2022-03-16 22:24:23', '62325587aa611479429494.mp3', 220659, NULL),
(12, 10, 45.83808, 1.235173, '<div>Pie bavarde (famille des Corvidés)</div>', 'Point d\'intérêt n°10', 5, '6232559ba0b7a845823883.jpg', 2152500, '2022-03-16 22:24:43', '6232559ba2e96708890809.mp3', 904894, NULL),
(13, 11, 45.838116, 1.236647, '<div>Bergeronnette grise (famille des Motacillidés)</div>', 'Point d\'intérêt n°11', 5, '623255b668386915959805.jpg', 1976908, '2022-03-16 22:25:10', '623255b66a6b4035055864.mp3', 522218, NULL),
(14, 12, 45.838136, 1.238206, '<div>Pigeons biset et ramier; Tourterelle turque (famille des Columbidés)</div>', 'Point d\'intérêt n°12 (fin)', 5, '623255cce5c8d544854617.jpg', 185897, '2022-03-16 22:25:32', '623255cce7b6c021110013.mp3', 1188768, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `number`) VALUES
(4, 'forestria@admin.fr', '[\"ROLE_ADMIN\"]', '$2y$13$Mnp2Zzf4U09/pmIPFD0jhekbDxQ..1y/dxHYabrZOt0lXUSKbMRc6', 'admin', 'admin', '0000000000');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `FK_B7A5F3246E38C0DB` FOREIGN KEY (`parcours_id`) REFERENCES `parcours` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
