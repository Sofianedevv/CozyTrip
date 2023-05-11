-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 avr. 2023 à 12:08
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cozytrip`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `photocategorie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `slug`, `photocategorie`) VALUES
(5, 'Hôtel', 'Hotel', '642d427f57e26.jpg'),
(7, 'Appartement', 'Appartement', '642d429f1db00.jpg'),
(8, 'Villa', 'Villa', '642d44759ea72.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `hebergement_id` int(11) DEFAULT NULL,
  `contenu` longtext NOT NULL,
  `date_creation` datetime NOT NULL,
  `date_modification` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `hebergement_id`, `contenu`, `date_creation`, `date_modification`, `user_id`) VALUES
(16, 4, '\'uy', '2023-04-07 09:32:04', NULL, 1),
(17, 5, 'ryuklruky', '2023-04-07 09:34:58', NULL, 1),
(18, 6, 'lbbiopuouiou', '2023-04-07 10:30:18', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230403093755', '2023-04-03 11:38:11', 28),
('DoctrineMigrations\\Version20230403124209', '2023-04-03 14:42:18', 35),
('DoctrineMigrations\\Version20230404074009', '2023-04-04 09:40:25', 38),
('DoctrineMigrations\\Version20230404080354', '2023-04-04 10:04:00', 7),
('DoctrineMigrations\\Version20230404104101', '2023-04-04 12:41:09', 7),
('DoctrineMigrations\\Version20230404115738', '2023-04-04 13:57:41', 43),
('DoctrineMigrations\\Version20230404115807', '2023-04-04 13:58:09', 6),
('DoctrineMigrations\\Version20230404120728', '2023-04-04 14:07:31', 31),
('DoctrineMigrations\\Version20230404121514', '2023-04-04 14:15:16', 16),
('DoctrineMigrations\\Version20230404121550', '2023-04-04 14:15:53', 26),
('DoctrineMigrations\\Version20230405083616', '2023-04-05 10:36:26', 27),
('DoctrineMigrations\\Version20230405101404', '2023-04-05 12:14:11', 54),
('DoctrineMigrations\\Version20230405101658', '2023-04-05 12:17:05', 30),
('DoctrineMigrations\\Version20230405113325', '2023-04-05 13:33:33', 7),
('DoctrineMigrations\\Version20230405142242', '2023-04-05 16:22:48', 7),
('DoctrineMigrations\\Version20230406115423', '2023-04-06 13:54:34', 80),
('DoctrineMigrations\\Version20230406123829', '2023-04-06 14:38:36', 15),
('DoctrineMigrations\\Version20230406124146', '2023-04-06 14:41:50', 28),
('DoctrineMigrations\\Version20230406131559', '2023-04-06 15:16:04', 71),
('DoctrineMigrations\\Version20230407074840', '2023-04-07 09:48:47', 76),
('DoctrineMigrations\\Version20230407081120', '2023-04-07 10:11:27', 30);

-- --------------------------------------------------------

--
-- Structure de la table `herbergement`
--

CREATE TABLE `herbergement` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `type` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `prix` double NOT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `herbergement`
--

INSERT INTO `herbergement` (`id`, `titre`, `description`, `type`, `adresse`, `prix`, `categorie_id`) VALUES
(4, 'Hôtel Marina', 'Le Royal Marina propose des chambres élégamment décorées et un centre de bien-être avec une piscine intérieure, à seulement 450 mètres de la place du Taj.', 'Hôtel', 'Dubai', 300, 5),
(5, 'Appartement Phocéen', 'Doté d\'une terrasse spacieuse, d\'un terrain de pétanque et d\'un magasin de concept, l\'Hôtel Maison Montgrand - Vieux Port vous propose 49 chambres et 13 appartements dans le centre de Marseille, à seulement 5 minutes à pied du Vieux-Port et à 4 km du stade Vélodrome.', 'Appartement', 'Marseille', 110, 5),
(6, 'Villa blue', 'Villa pour 10 voyageurs 5 chambres6 lits 2 salles de bain et 1 toilette', 'Villa', 'Skiathos', 370, 8),
(8, 'Villa Islandaise', 'La villa Islandaise Doté d\'un spa souterrain, d\'un lagon géothermal et d\'un restaurant qui réinvente les traditions culinaires islandaises, la villa Blue Lagoon Iceland est entouré des eaux riches en minéraux du Blue Lagoon.', 'Villa', 'Rekjavic', 700, 7);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `contenu` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `hebergement_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id`, `nom`, `hebergement_id`) VALUES
(7, 'Hotel-Marina642c171323402.jpg', 4),
(8, 'Hotel-Marina642c171323a6a.jpg', 4),
(9, 'Appartement-Phoceen642c182a567f9.jpg', 5),
(10, 'Appartement-Phoceen642c182a577c7.jpg', 5),
(11, 'Villa-blue642c18339e3b3.jpg', 6),
(12, 'Villa-blue642c1833a02f6.jpg', 6),
(13, 'Villa-blue642c1833a05c2.jpg', 6),
(14, 'Villa-Islandaise642c183bcaed8.jpg', 8),
(15, 'Villa-Islandaise642c183bcbe8f.jpg', 8),
(16, 'Hotel-Marina642c1eea549ab.jpg', 4),
(17, 'Hotel-Marina642c1eea55b06.jpg', 4),
(18, 'Hotel-Marina642c1eea55e40.jpg', 4),
(19, 'Hotel-Marina642c1eea56118.jpg', 4);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `hebergement_id` int(11) DEFAULT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prix_total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `hebergement_id`, `date_debut`, `date_fin`, `user_id`, `prix_total`) VALUES
(22, 4, '2023-04-01 00:00:00', '2023-04-02 00:00:00', 1, 300),
(24, 4, '2023-04-07 00:00:00', '2023-04-13 00:00:00', 1, 1800),
(25, 4, '2023-04-07 00:00:00', '2023-04-13 00:00:00', 1, 1800),
(26, 4, '2023-04-07 00:00:00', '2023-04-13 00:00:00', 2, 1800),
(27, 5, '2023-12-06 00:00:00', '2023-12-07 00:00:00', 2, 110),
(28, 5, '2023-12-08 00:00:00', '2023-12-09 00:00:00', 1, 110),
(29, 4, '2025-05-22 00:00:00', '2025-05-28 00:00:00', 1, 1800),
(30, 4, '2026-05-07 00:00:00', '2026-06-18 00:00:00', 1, 12600);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `pseudo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenom`, `pseudo`) VALUES
(1, 'admin@hotmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$zj/19bRwq/6wOueO527RjupdmtkFtrRxjDCvE3UIbuERkuni0M58W', 'admin', 'admin', 'admin'),
(2, 'user@user.fr', '[]', '$2y$13$In1J2NXFDfRW/Go5ldjSh.7pfOcDnzW5synz7fE2sccSxDSibLv5.', 'user', 'user', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_67F068BC23BB0F66` (`hebergement_id`),
  ADD KEY `IDX_67F068BCA76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `herbergement`
--
ALTER TABLE `herbergement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_78B8677FBCF5E72D` (`categorie_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_14B7841823BB0F66` (`hebergement_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_42C8495523BB0F66` (`hebergement_id`),
  ADD KEY `IDX_42C84955A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `herbergement`
--
ALTER TABLE `herbergement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC23BB0F66` FOREIGN KEY (`hebergement_id`) REFERENCES `herbergement` (`id`),
  ADD CONSTRAINT `FK_67F068BCA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `herbergement`
--
ALTER TABLE `herbergement`
  ADD CONSTRAINT `FK_78B8677FBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_14B7841823BB0F66` FOREIGN KEY (`hebergement_id`) REFERENCES `herbergement` (`id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK_42C8495523BB0F66` FOREIGN KEY (`hebergement_id`) REFERENCES `herbergement` (`id`),
  ADD CONSTRAINT `FK_42C84955A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
