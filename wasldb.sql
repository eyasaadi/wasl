-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 12 mars 2022 à 17:17
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wasldb`
--

-- --------------------------------------------------------

--
-- Structure de la table `bilanneuro`
--

CREATE TABLE `bilanneuro` (
  `id` int(100) NOT NULL,
  `idEleve` int(100) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ddn` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `scolarise` varchar(255) DEFAULT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `antecedents` varchar(255) DEFAULT NULL,
  `accompagnant` varchar(255) DEFAULT NULL,
  `adressepar` varchar(255) DEFAULT NULL,
  `cadre` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `comportement_maturite` varchar(255) DEFAULT NULL,
  `maturiteaffective` varchar(255) DEFAULT NULL,
  `capacitesintello` varchar(255) DEFAULT NULL,
  `graphoperceptivospaciale` varchar(255) DEFAULT NULL,
  `TOPIG` varchar(255) DEFAULT NULL,
  `FCR` varchar(255) DEFAULT NULL,
  `agematurite` varchar(255) DEFAULT NULL,
  `fnattentionnelles` varchar(255) DEFAULT NULL,
  `cmpt_indspoapprentissage` varchar(255) DEFAULT NULL,
  `Lateralite` varchar(255) DEFAULT NULL,
  `maitriseconceptbase` varchar(255) DEFAULT NULL,
  `capacitemnestique` varchar(255) DEFAULT NULL,
  `comporaleecrite` varchar(255) DEFAULT NULL,
  `apprentissagescolaire` varchar(255) DEFAULT NULL,
  `lectureecriture` varchar(255) DEFAULT NULL,
  `apprentissagenumarithm` varchar(255) DEFAULT NULL,
  `comportnivmaturité` varchar(255) DEFAULT NULL,
  `autonomienivaffectif` varchar(255) DEFAULT NULL,
  `socialisation` varchar(255) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  `recommandationecole` varchar(255) DEFAULT NULL,
  `diagnostic` varchar(255) DEFAULT NULL,
  `adaptationexam` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `carteinstruction`
--

CREATE TABLE `carteinstruction` (
  `id` int(100) NOT NULL,
  `daterdv` varchar(255) DEFAULT NULL,
  `nomc` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `ddn` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `handicap` varchar(255) DEFAULT NULL,
  `ordre` int(11) DEFAULT NULL,
  `freres` varchar(255) DEFAULT NULL,
  `nivscolaire` varchar(255) DEFAULT NULL,
  `moyenne` int(11) DEFAULT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `parcours` varchar(255) DEFAULT NULL,
  `difficultes` varchar(255) DEFAULT NULL,
  `nomcpere` varchar(255) DEFAULT NULL,
  `agepere` varchar(255) DEFAULT NULL,
  `niveaupere` varchar(255) DEFAULT NULL,
  `jobpere` varchar(255) DEFAULT NULL,
  `telpere` int(11) DEFAULT NULL,
  `nomcmere` varchar(255) DEFAULT NULL,
  `agemere` varchar(255) DEFAULT NULL,
  `niveaumere` varchar(255) DEFAULT NULL,
  `jobmere` varchar(255) DEFAULT NULL,
  `telmere` varchar(255) DEFAULT NULL,
  `adressefam` varchar(255) DEFAULT NULL,
  `attentes` varchar(255) DEFAULT NULL,
  `cardiaque` tinyint(1) DEFAULT NULL,
  `asthme` tinyint(1) DEFAULT NULL,
  `epilepsie` tinyint(1) DEFAULT NULL,
  `diabete` tinyint(1) DEFAULT NULL,
  `dermato` tinyint(1) DEFAULT NULL,
  `allergie` tinyint(1) DEFAULT NULL,
  `maladie` tinyint(1) DEFAULT NULL,
  `suividocpsy` tinyint(1) DEFAULT NULL,
  `suivipsy` tinyint(1) DEFAULT NULL,
  `suiviortho` tinyint(1) DEFAULT NULL,
  `suiviergophysio` tinyint(1) DEFAULT NULL,
  `suivipsychomotrice` tinyint(1) DEFAULT NULL,
  `autre` tinyint(1) DEFAULT NULL,
  `soinsauto` varchar(255) DEFAULT NULL,
  `autonomie` varchar(255) DEFAULT NULL,
  `interactivite` varchar(255) DEFAULT NULL,
  `reactdanger` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `gestionargent` varchar(255) DEFAULT NULL,
  `agressif` varchar(255) DEFAULT NULL,
  `selfharm` varchar(255) DEFAULT NULL,
  `agitation` varchar(255) DEFAULT NULL,
  `rogneongles` varchar(255) DEFAULT NULL,
  `grosmots` varchar(255) DEFAULT NULL,
  `sucerdoigt` varchar(255) DEFAULT NULL,
  `autisme` varchar(255) DEFAULT NULL,
  `autrecomportement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_medical`
--

CREATE TABLE `dossier_medical` (
  `id` int(15) NOT NULL,
  `idPsy` int(15) NOT NULL,
  `idNeuro` int(15) NOT NULL,
  `idRapport` int(15) NOT NULL,
  `idCarte` int(15) NOT NULL,
  `dateCreation` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id` int(15) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `idDir` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `id` int(15) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `idParent` int(15) NOT NULL,
  `idAvs` int(15) NOT NULL,
  `idDossier` int(15) NOT NULL,
  `idEcole` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rapportpsycho`
--

CREATE TABLE `rapportpsycho` (
  `id` int(100) NOT NULL,
  `idEleve` int(100) NOT NULL,
  `nomc` varchar(255) DEFAULT NULL,
  `ddn` date DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `niveau` varchar(255) DEFAULT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `etatscolaire` varchar(255) DEFAULT NULL,
  `handicap` varchar(255) DEFAULT NULL,
  `suivi` varchar(255) DEFAULT NULL,
  `etatsocial` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `cadreengagement` varchar(255) DEFAULT NULL,
  `diagnostic` varchar(255) DEFAULT NULL,
  `recommandation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `cin` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bilanneuro`
--
ALTER TABLE `bilanneuro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carteinstruction`
--
ALTER TABLE `carteinstruction`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossier_medical`
--
ALTER TABLE `dossier_medical`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rapportpsycho`
--
ALTER TABLE `rapportpsycho`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dossier_medical`
--
ALTER TABLE `dossier_medical`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
