-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 24 nov. 2022 à 23:28
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `amyguisse`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `Prenom` varchar(100) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Anneedenaissance` varchar(100) NOT NULL,
  `Sexe` varchar(100) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Parti_politique` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `position`, `Prenom`, `Nom`, `Anneedenaissance`, `Sexe`, `Photo`, `Parti_politique`) VALUES
(1, 'President', 'Abdoulaye', 'Seck', '1960', 'Male', 'upload/male.png', 'And jeff'),
(2, 'President', 'Ousmane', 'Cissé', '1970', 'Male', 'upload/male.png', 'Ligueye rek'),
(23, 'President', 'Abdou', 'Dieng', '1958', 'Male', 'upload/male.png', 'Sokaly deuk bi'),
(24, 'President', 'Sokhna Fatou', 'Dramé', '1967', 'Female', 'upload/femelle.png', 'Developpement senegal');

-- --------------------------------------------------------

--
-- Structure de la table `circonscription`
--

CREATE TABLE `circonscription` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `Latitudegeographique` float NOT NULL,
  `Longitudegeographique` float NOT NULL,
  `region` text NOT NULL,
  `departement` text NOT NULL,
  `arrondissement` text NOT NULL,
  `commune` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `circonscription`
--

INSERT INTO `circonscription` (`id`, `nom`, `Latitudegeographique`, `Longitudegeographique`, `region`, `departement`, `arrondissement`, `commune`) VALUES
(1, 'Pikine', 14.7117, -17.5359, 'Dakar', '', '', ''),
(2, 'Guediawaye', 14.7771, -17.5194, 'Dakar', '', '', ''),
(3, 'Parcelles assainies', 14.7771, -17.5194, 'Dakar', '', '', ''),
(4, 'Dakar ville', 14.7771, -17.5194, 'Dakar', '', '', ''),
(5, 'Thies ville', 14.7887, -16.9973, 'Thies', '', '', ''),
(6, 'Mbour', 14.4166, -17.0047, 'Thies', '', '', ''),
(7, 'Saint-louis', 14.7771, -17.5194, 'Saint-louis', '', '', ''),
(8, 'Matam', 14.7771, -17.5194, 'Matam', '', '', ''),
(9, 'Ziguinchor', 14.7887, -16.9973, 'Ziguinchor', '', '', ''),
(10, 'Diourbel', 14.4166, -17.0047, 'Diourbel', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `cir_bureaudevote`
--

CREATE TABLE `cir_bureaudevote` (
  `id_bureau` int(11) NOT NULL,
  `cir_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ids`
--

CREATE TABLE `ids` (
  `id_number` varchar(100) NOT NULL,
  `names` varchar(225) NOT NULL,
  `started` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ids`
--

INSERT INTO `ids` (`id_number`, `names`, `started`) VALUES
('BFIN119', 'Abdou Fall', '2021-04-16'),
('BIT101', 'Amy diop', '2019-02-09'),
('BIT110', 'Fagueye Faye', '2015-01-09'),
('BIT112', 'Fatou Ndiaye', '2019-02-09'),
('BIT113', 'Pape seck', '2019-02-11'),
('BIT114', 'Solange Cisse', '2017-06-20'),
('BITED100', 'Idrissa Dieng', '2019-02-14'),
('DS116', 'Abou diallo', '2019-02-12'),
('LLB115', 'Sadio Cissé', '2017-07-16'),
('LLB118', 'Jacque Faye', '2013-10-17'),
('PBH117', 'Diop wade', '2018-07-12'),
('PBH119', 'ismaila diop', 'test\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `logins`
--

CREATE TABLE `logins` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `logins`
--

INSERT INTO `logins` (`user_id`, `username`, `login_time`) VALUES
(1, ' user', '2019-02-12 13:21:43'),
(2, ' user', '2019-02-12 13:37:32'),
(3, ' user', '2019-02-12 18:44:37'),
(4, ' user', '2022-11-24 14:12:45'),
(5, ' user', '2022-11-24 14:50:33');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(1, 'admin', 'admin', 'Université', 'Thiès', 977112458, 'amyguisse@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL DEFAULT 260,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(4, 'user', 'user', 'C', 'Cat3', 253626, 'char@mail.com');

-- --------------------------------------------------------

--
-- Structure de la table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `datedenaissance` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `account` varchar(100) NOT NULL DEFAULT 'Inactive',
  `date` date DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `Adresse` text NOT NULL,
  `Nomcentredevote` text NOT NULL,
  `Numerobureaudevote` text NOT NULL,
  `Circonscription` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `firstname`, `lastname`, `gender`, `datedenaissance`, `status`, `account`, `date`, `password`, `Adresse`, `Nomcentredevote`, `Numerobureaudevote`, `Circonscription`) VALUES
(59, 'BIT101', 'Wild', 'Cat3', 'Male', '0000-00-00', 'Voted', 'Active', '2019-02-09', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(60, 'BIT13', 'w', 'Turner', 'Male', '0000-00-00', 'Voted', 'Active', '2019-02-11', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(61, '119', 'Jane', 'Mwale', 'Female', '0000-00-00', 'Unvoted', 'Active', '2019-02-12', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(62, 'BIT110', 'Isaac ', 'Phiri', 'Male', '0000-00-00', 'Unvoted', 'Active', '2019-02-12', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(63, 'BIT114', 'James  ', 'Daka', 'Male', '0000-00-00', 'Voted', 'Active', '2019-02-12', 'test', '', '', '', ''),
(64, 'DS116', 'Angel', 'Koni', 'Female', '0000-00-00', 'Unvoted', 'Active', '2019-02-12', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(65, 'LLB115', 'Juliet', 'Kamasa', 'Female', '0000-00-00', 'Unvoted', 'Active', '2019-02-12', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(96, 'LLB118', 'sfert', 'erzerze', 'Male', '2022-11-03', 'Unvoted', 'Active', '2022-11-24', '7215ee9c7d9dc229d2921a40e899ec5f', 'szerzer', 'rzzerze', '8', 'Dakar ville'),
(71, 'BIT112', 'Lisa', 'Newtone', 'Female', '0000-00-00', 'Unvoted', 'Active', '2019-02-14', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(72, 'BITED100', 'Joe', 'Kay', 'Male', '0000-00-00', 'Unvoted', 'Active', '2019-02-14', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', ''),
(95, 'PBH119', 'oiezhroi', 'iuhiuoh', 'Male', '2022-11-10', 'Unvoted', 'Active', '2022-11-24', '7215ee9c7d9dc229d2921a40e899ec5f', 'ezrze', 'zrzr', '6', 'Dakar ville'),
(98, 'BIT113', 'pojop', 'jopjo', 'Male', '2022-11-04', 'Voted', 'Active', '2022-11-24', '7215ee9c7d9dc229d2921a40e899ec5f', 'oijio', 'iohjio', '7', 'Dakar ville');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL,
  `circonscription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`, `circonscription`) VALUES
(111, '1', '59', ''),
(112, '3', '59', ''),
(113, '6', '59', ''),
(114, '8', '59', ''),
(115, '9', '59', ''),
(116, '11', '59', ''),
(117, '14', '59', ''),
(118, '15', '59', ''),
(119, '18', '59', ''),
(120, '19', '59', ''),
(121, '22', '59', ''),
(122, '2', '63', ''),
(123, '3', '63', ''),
(124, '6', '63', ''),
(125, '8', '63', ''),
(126, '10', '63', ''),
(127, '11', '63', ''),
(128, '13', '63', ''),
(129, '16', '63', ''),
(130, '17', '63', ''),
(131, '19', '63', ''),
(135, '23', '98', 'Dakar ville');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Index pour la table `circonscription`
--
ALTER TABLE `circonscription`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cir_bureaudevote`
--
ALTER TABLE `cir_bureaudevote`
  ADD PRIMARY KEY (`id_bureau`);

--
-- Index pour la table `ids`
--
ALTER TABLE `ids`
  ADD PRIMARY KEY (`id_number`);

--
-- Index pour la table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Index pour la table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `cir_bureaudevote`
--
ALTER TABLE `cir_bureaudevote`
  MODIFY `id_bureau` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `logins`
--
ALTER TABLE `logins`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT pour la table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
