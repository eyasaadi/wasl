-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 mars 2022 à 17:24
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
-- Base de données : `wasl`
--

-- --------------------------------------------------------

--
-- Structure de la table `bilan_neuro`
--

CREATE TABLE `bilan_neuro` (
  `id_neuro` int(11) NOT NULL,
  `id_eleve` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ddn_neuro` varchar(255) DEFAULT NULL,
  `age_neuro` varchar(255) DEFAULT NULL,
  `date_bilan` varchar(255) DEFAULT NULL,
  `scolarise` varchar(255) DEFAULT NULL,
  `ecole` varchar(255) DEFAULT NULL,
  `antecedents` varchar(255) DEFAULT NULL,
  `accompagnant` varchar(255) DEFAULT NULL,
  `adresse_par` varchar(255) DEFAULT NULL,
  `cadre_bilan` varchar(255) DEFAULT NULL,
  `sujet` varchar(255) DEFAULT NULL,
  `comportement_maturite` varchar(255) DEFAULT NULL,
  `maturité_affective` varchar(255) DEFAULT NULL,
  `capacites_intello` varchar(255) DEFAULT NULL,
  `grapho_perceptivospaciale` varchar(255) DEFAULT NULL,
  `TOPIG` varchar(255) DEFAULT NULL,
  `FCR` varchar(255) DEFAULT NULL,
  `age_maturite` varchar(255) DEFAULT NULL,
  `fn_attentionnelles` varchar(255) DEFAULT NULL,
  `cmpt_indspoapprentissage` varchar(255) DEFAULT NULL,
  `Lateralite` varchar(255) DEFAULT NULL,
  `maitrise_conceptbase` varchar(255) DEFAULT NULL,
  `capacite_mnestique` varchar(255) DEFAULT NULL,
  `comp_oraleecrite` varchar(255) DEFAULT NULL,
  `apprentissage_scolaire` varchar(255) DEFAULT NULL,
  `lecture_ecriture` varchar(255) DEFAULT NULL,
  `apprentissage_numarithm` varchar(255) DEFAULT NULL,
  `comport_nivmaturité` varchar(255) DEFAULT NULL,
  `autonomie_nivaffectif` varchar(255) DEFAULT NULL,
  `socialisation` varchar(255) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  `recommandation_ecole` varchar(255) DEFAULT NULL,
  `diagnostic` varchar(255) DEFAULT NULL,
  `adaptation_exam` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `carte_instruction`
--

CREATE TABLE `carte_instruction` (
  `id_instruction` int(11) NOT NULL,
  `date_rdv` varchar(255) DEFAULT NULL,
  `nom_prenom` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `ddn_instr` varchar(255) DEFAULT NULL,
  `age_instr` varchar(255) DEFAULT NULL,
  `handicap_type` varchar(255) DEFAULT NULL,
  `ordre_fam` int(11) DEFAULT NULL,
  `nom_freres` varchar(255) DEFAULT NULL,
  `niv_scolaire` varchar(255) DEFAULT NULL,
  `moyenne` int(11) DEFAULT NULL,
  `ecole_adr` varchar(255) DEFAULT NULL,
  `parcours` varchar(255) DEFAULT NULL,
  `difficultes` varchar(255) DEFAULT NULL,
  `nompre_pere` varchar(255) DEFAULT NULL,
  `age_pere` varchar(255) DEFAULT NULL,
  `niveau_pere` varchar(255) DEFAULT NULL,
  `job_pere` varchar(255) DEFAULT NULL,
  `tel_pere` int(11) DEFAULT NULL,
  `nompre_mere` varchar(255) DEFAULT NULL,
  `age_mere` varchar(255) DEFAULT NULL,
  `niveau_mere` varchar(255) DEFAULT NULL,
  `job_mere` varchar(255) DEFAULT NULL,
  `tel_mere` varchar(255) DEFAULT NULL,
  `adresse_fam` varchar(255) DEFAULT NULL,
  `attentes` varchar(255) DEFAULT NULL,
  `cardiaque` tinyint(1) DEFAULT NULL,
  `asthme` tinyint(1) DEFAULT NULL,
  `epilepsie` tinyint(1) DEFAULT NULL,
  `diabete` tinyint(1) DEFAULT NULL,
  `dermato` tinyint(1) DEFAULT NULL,
  `allergie` tinyint(1) DEFAULT NULL,
  `autre_maladie` tinyint(1) DEFAULT NULL,
  `suivi_docpsy` tinyint(1) DEFAULT NULL,
  `suivi_psy` tinyint(1) DEFAULT NULL,
  `suivi_ortho` tinyint(1) DEFAULT NULL,
  `suivi_ergophysio` tinyint(1) DEFAULT NULL,
  `suivi_psychomotrice` tinyint(1) DEFAULT NULL,
  `autre` tinyint(1) DEFAULT NULL,
  `soins_auto` varchar(255) DEFAULT NULL,
  `autonomie` varchar(255) DEFAULT NULL,
  `interactivite` varchar(255) DEFAULT NULL,
  `react_danger` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `gestion_argent` varchar(255) DEFAULT NULL,
  `agressif` varchar(255) DEFAULT NULL,
  `selfharm` varchar(255) DEFAULT NULL,
  `agitation` varchar(255) DEFAULT NULL,
  `rogne_ongles` varchar(255) DEFAULT NULL,
  `gros_mots` varchar(255) DEFAULT NULL,
  `sucer_doigt` varchar(255) DEFAULT NULL,
  `autisme` varchar(255) DEFAULT NULL,
  `autre_comportement` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `donnes_eleve`
--

CREATE TABLE `donnes_eleve` (
  `id_eleve` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `age_eleve` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  `avs` varchar(255) DEFAULT NULL,
  `adresse_eleve` varchar(255) DEFAULT NULL,
  `id_dossiermedicale` int(11) DEFAULT NULL,
  `niveau` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dossier_medicale`
--

CREATE TABLE `dossier_medicale` (
  `id_dossiermedical` int(12) NOT NULL,
  `id_eleve` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `id_neuro` int(11) NOT NULL,
  `id_instruction` int(11) NOT NULL,
  `id_rapportpsy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id_ecole` int(11) NOT NULL,
  `nom_ecole` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `directeur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_psychologique`
--

CREATE TABLE `rapport_psychologique` (
  `id_rapportpsy` int(11) NOT NULL,
  `id_eleve` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `nompre_rapport` varchar(255) DEFAULT NULL,
  `ddn_rapport` varchar(255) DEFAULT NULL,
  `genre_rapport` varchar(255) DEFAULT NULL,
  `niveau_rapport` varchar(255) DEFAULT NULL,
  `ecole_rapport` varchar(255) DEFAULT NULL,
  `etat_scolaire` varchar(255) DEFAULT NULL,
  `handicap_rapport` varchar(255) DEFAULT NULL,
  `suivi_rapport` varchar(255) DEFAULT NULL,
  `etat_social` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `cadre_engagement` varchar(255) DEFAULT NULL,
  `diagnostic_rapport` varchar(255) DEFAULT NULL,
  `recommandation_rapport` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(12) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `cin` varchar(8) NOT NULL,
  `tel_user` varchar(255) NOT NULL,
  `adresse_user` varchar(255) NOT NULL,
  `mail_user` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bilan_neuro`
--
ALTER TABLE `bilan_neuro`
  ADD PRIMARY KEY (`id_neuro`),
  ADD KEY `id_eleve` (`id_eleve`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `carte_instruction`
--
ALTER TABLE `carte_instruction`
  ADD PRIMARY KEY (`id_instruction`);

--
-- Index pour la table `donnes_eleve`
--
ALTER TABLE `donnes_eleve`
  ADD PRIMARY KEY (`id_eleve`);

--
-- Index pour la table `dossier_medicale`
--
ALTER TABLE `dossier_medicale`
  ADD PRIMARY KEY (`id_dossiermedical`),
  ADD KEY `id_eleve` (`id_eleve`),
  ADD KEY `id_neuro` (`id_neuro`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_instruction` (`id_instruction`),
  ADD KEY `id_rapportpsy` (`id_rapportpsy`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id_ecole`);

--
-- Index pour la table `rapport_psychologique`
--
ALTER TABLE `rapport_psychologique`
  ADD PRIMARY KEY (`id_rapportpsy`),
  ADD KEY `id_eleve` (`id_eleve`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bilan_neuro`
--
ALTER TABLE `bilan_neuro`
  MODIFY `id_neuro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `carte_instruction`
--
ALTER TABLE `carte_instruction`
  MODIFY `id_instruction` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `donnes_eleve`
--
ALTER TABLE `donnes_eleve`
  MODIFY `id_eleve` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dossier_medicale`
--
ALTER TABLE `dossier_medicale`
  MODIFY `id_dossiermedical` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id_ecole` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rapport_psychologique`
--
ALTER TABLE `rapport_psychologique`
  MODIFY `id_rapportpsy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bilan_neuro`
--
ALTER TABLE `bilan_neuro`
  ADD CONSTRAINT `bilan_neuro_ibfk_1` FOREIGN KEY (`id_eleve`) REFERENCES `donnes_eleve` (`id_eleve`),
  ADD CONSTRAINT `bilan_neuro_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `dossier_medicale`
--
ALTER TABLE `dossier_medicale`
  ADD CONSTRAINT `dossier_medicale_ibfk_1` FOREIGN KEY (`id_eleve`) REFERENCES `donnes_eleve` (`id_eleve`),
  ADD CONSTRAINT `dossier_medicale_ibfk_2` FOREIGN KEY (`id_neuro`) REFERENCES `bilan_neuro` (`id_neuro`),
  ADD CONSTRAINT `dossier_medicale_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `dossier_medicale_ibfk_4` FOREIGN KEY (`id_instruction`) REFERENCES `carte_instruction` (`id_instruction`),
  ADD CONSTRAINT `dossier_medicale_ibfk_5` FOREIGN KEY (`id_rapportpsy`) REFERENCES `rapport_psychologique` (`id_rapportpsy`);

--
-- Contraintes pour la table `rapport_psychologique`
--
ALTER TABLE `rapport_psychologique`
  ADD CONSTRAINT `rapport_psychologique_ibfk_1` FOREIGN KEY (`id_eleve`) REFERENCES `donnes_eleve` (`id_eleve`),
  ADD CONSTRAINT `rapport_psychologique_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
