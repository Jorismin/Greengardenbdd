-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 20 mars 2022 à 21:38
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `greengardenproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_artc` int(11) NOT NULL,
  `nm_artc` varchar(50) DEFAULT NULL,
  `Lib_c` varchar(50) DEFAULT NULL,
  `Lib_l` varchar(50) DEFAULT NULL,
  `Prx_ach` decimal(15,2) DEFAULT NULL,
  `id_catgerorie_article` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_artc`, `nm_artc`, `Lib_c`, `Lib_l`, `Prx_ach`, `id_catgerorie_article`) VALUES
(1, 'plante1', 'libelléCourt', 'libelléLong', '16.00', 1),
(2, 'plante2', 'libelléCourt', 'libelléLong', '17.00', 1),
(3, 'plante3', 'libelléCourt', 'libelléLong', '18.00', 1),
(4, 'plante4', 'libelléCourt', 'libelléLong', '19.00', 1),
(5, 'plante5', 'libelléCourt', 'libelléLong', '20.00', 1),
(6, 'plante6', 'libelléCourt', 'libelléLong', '12.00', 1),
(7, 'plante7', 'libelléCourt', 'libelléLong', '20.00', 1),
(8, 'plante8', 'libelléCourt', 'libelléLong', '15.00', 1),
(9, 'plante9', 'libelléCourt', 'libelléLong', '19.00', 1),
(10, 'plante10', 'libelléCourt', 'libelléLong', '13.00', 1),
(11, 'plante11', 'libelléCourt', 'libelléLong', '13.00', 1),
(12, 'outilsjardinage1', 'libelléCourt', 'libelléLong', '12.00', 2),
(13, 'outilsjardinage2', 'libelléCourt', 'libelléLong', '13.00', 2),
(14, 'outilsjardinage3', 'libelléCourt', 'libelléLong', '12.00', 2),
(15, 'outilsjardinage4', 'libelléCourt', 'libelléLong', '12.00', 2),
(16, 'outilsjardinage5', 'libelléCourt', 'libelléLong', '16.00', 2),
(17, 'outilsjardinage6', 'libelléCourt', 'libelléLong', '11.00', 2),
(18, 'outilsjardinage7', 'libelléCourt', 'libelléLong', '20.00', 2),
(19, 'outilsjardinage8', 'libelléCourt', 'libelléLong', '19.00', 2),
(20, 'outilsjardinage9', 'libelléCourt', 'libelléLong', '20.00', 2),
(21, 'outilsjardinage10', 'libelléCourt', 'libelléLong', '19.00', 2),
(22, 'outilsjardinage11', 'libelléCourt', 'libelléLong', '20.00', 2),
(23, 'outilsjardinage12', 'libelléCourt', 'libelléLong', '13.00', 2),
(24, 'outilsbricolage1', 'libelléCourt', 'libelléLong', '12.00', 3),
(25, 'outilsbricolage2', 'libelléCourt', 'libelléLong', '13.00', 3),
(26, 'outilsbricolage3', 'libelléCourt', 'libelléLong', '17.00', 3),
(27, 'outilsbricolage4', 'libelléCourt', 'libelléLong', '15.00', 3),
(28, 'outilsbricolage5', 'libelléCourt', 'libelléLong', '18.00', 3),
(29, 'outilsbricolage6', 'libelléCourt', 'libelléLong', '15.00', 3),
(30, 'outilsbricolage7', 'libelléCourt', 'libelléLong', '16.00', 3),
(31, 'outilsbricolage8', 'libelléCourt', 'libelléLong', '16.00', 3),
(32, 'outilsbricolage9', 'libelléCourt', 'libelléLong', '20.00', 3),
(33, 'outilsbricolage10', 'libelléCourt', 'libelléLong', '14.00', 3),
(34, 'outilsbricolage11', 'libelléCourt', 'libelléLong', '16.00', 3),
(35, 'outilsbricolage12', 'libelléCourt', 'libelléLong', '18.00', 3);

-- --------------------------------------------------------

--
-- Structure de la table `categorie_articles`
--

CREATE TABLE `categorie_articles` (
  `id_catgerorie_article` int(11) NOT NULL,
  `decription` varchar(50) DEFAULT '',
  `id_catgerorie_article_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie_articles`
--

INSERT INTO `categorie_articles` (`id_catgerorie_article`, `decription`, `id_catgerorie_article_1`) VALUES
(1, 'PLANTE', 1),
(2, 'JARDINAGE', 2),
(3, 'BRICOLAGE', 3),
(4, 'MOTORISER', 4);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id_cli` int(11) NOT NULL,
  `nm_cli` varchar(50) DEFAULT NULL,
  `pre_cli` varchar(50) DEFAULT NULL,
  `sxe_cli` varchar(50) DEFAULT NULL,
  `adr_cli` varchar(50) DEFAULT NULL,
  `vil_cli` varchar(50) DEFAULT NULL,
  `cp_cli` int(11) DEFAULT NULL,
  `tel_cli` int(11) DEFAULT NULL,
  `coeff_cli` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id_cli`, `nm_cli`, `pre_cli`, `sxe_cli`, `adr_cli`, `vil_cli`, `cp_cli`, `tel_cli`, `coeff_cli`) VALUES
(1, 'Dahlia', 'Heaps', 'F', '2367 Roth Plaza', 'Hoogeveen', 7909, 942, NULL),
(2, 'Bob', 'Kaygill', 'M', '83 Hauk Place', 'Xiaocheng', NULL, 556, NULL),
(3, 'Phyllys', 'Heinrich', 'F', '53 8th Avenue', 'Venado Tuerto', 2600, 511, NULL),
(4, 'Marleen', 'Tatershall', 'F', '170 Aberg Place', 'Taurisma', NULL, 468, NULL),
(5, 'Raeann', 'Camellini', 'F', '8673 Artisan Plaza', 'Mongar', NULL, 711, NULL),
(6, 'Almeta', 'Fruish', 'F', '3821 Service Terrace', 'Enskede', 122, 702, NULL),
(7, 'Sandy', 'Ogilvie', 'F', '80226 3rd Point', 'Khinjān', NULL, 186, NULL),
(8, 'Cordie', 'Couthard', 'F', '27287 Sunbrook Way', 'Namīn', NULL, 107, NULL),
(9, 'Audra', 'Kinsley', 'F', '9105 Ramsey Alley', 'Jinqu', NULL, 236, NULL),
(10, 'Maison', 'Lethlay', 'M', '79 Stang Court', 'Jiguan', NULL, 389, NULL),
(11, 'Alaric', 'Pergens', 'M', '9 Kipling Drive', 'Czarnowąsy', 46, 547, NULL),
(12, 'Theo', 'Ferenczy', 'M', '2130 Manitowish Lane', 'Herceg-Novi', NULL, 306, NULL),
(13, 'Hansiain', 'Stollmeyer', 'M', '36 Florence Road', 'Laagri', NULL, 851, NULL),
(14, 'Kermit', 'Speir', 'M', '7229 Union Hill', 'Portela', 3140, 110, NULL),
(15, 'Tiffani', 'Fliege', 'F', '98660 Colorado Court', 'Rîbniţa', 0, 321, NULL),
(16, 'Misti', 'Hillock', 'F', '29792 Village Crossing', 'Norrköping', 603, 701, NULL),
(17, 'Salvidor', 'Husby', 'M', '5 Fairview Lane', 'Kharagauli', NULL, 727, NULL),
(18, 'Kathe', 'Trulock', 'F', '7 Washington Lane', 'Lyon', 69907, 491, NULL),
(19, 'Dory', 'Bynold', 'M', '75533 Loftsgordon Park', 'Nytva', 617000, 434, NULL),
(20, 'Tanner', 'Lambertazzi', 'M', '19738 Mandrake Drive', 'Verkhniy Kurkuzhin', 361515, 915, NULL),
(21, 'Linell', 'Giblett', 'F', '85 Golf Parkway', 'Bonao', 10412, 377, NULL),
(22, 'Brew', 'Clemmen', 'M', '0186 Schmedeman Point', 'Rybnaya Sloboda', 422650, 400, NULL),
(23, 'Fabien', 'Buchanan', 'M', '0 7th Hill', 'Alegrete', 97540, 825, NULL),
(24, 'Aeriell', 'O\'Cuddie', 'F', '5 Buhler Street', 'Jicomé', 11201, 370, NULL),
(25, 'Pru', 'Janning', 'F', '3 Tennyson Alley', 'Shuiche', NULL, 264, NULL),
(26, 'Veronica', 'Cheetham', 'F', '4532 Vermont Street', 'Imsida', 0, 978, NULL),
(27, 'Bernetta', 'Acock', 'F', '0 Lyons Pass', 'Al Fuwayliq', NULL, 584, NULL),
(28, 'Meir', 'Haswell', 'M', '3 Katie Hill', 'Xinglong', NULL, 324, NULL),
(29, 'Dominique', 'Hedworth', 'M', '8810 Maryland Alley', 'Dologon', 8714, 745, NULL),
(30, 'Feodor', 'Pennicard', 'M', '4547 Redwing Park', 'Shuozhou', NULL, 191, NULL),
(31, 'Renell', 'Itzkovici', 'F', '431 Sunnyside Crossing', 'Paita', NULL, 375, NULL),
(32, 'Melisandra', 'Biagini', 'F', '2 Summer Ridge Parkway', 'Richmond', 9840, 278, NULL),
(33, 'Pip', 'Natt', 'M', '37 Carpenter Court', 'Sunja', 44210, 291, NULL),
(34, 'Margi', 'Audrey', 'F', '7 Havey Terrace', 'Rennebu', 7398, 492, NULL),
(35, 'Renado', 'Orgee', 'M', '9 Rockefeller Way', 'Non Sung', 30160, 531, NULL),
(36, 'Joelynn', 'Bakhrushin', 'F', '8438 Judy Way', 'Bayuwan', NULL, 920, NULL),
(37, 'Dorothea', 'Massei', 'F', '33503 Tennyson Drive', 'Magole', NULL, 560, NULL),
(38, 'Sabra', 'Sommers', 'F', '417 Hazelcrest Avenue', 'Sukhobuzimskoye', 663040, 391, NULL),
(39, 'Courtnay', 'Chisnell', 'M', '0000 Melby Trail', 'Ilembula', NULL, 791, NULL),
(40, 'Eb', 'Bright', 'M', '5335 Vernon Drive', 'Santiago Vázquez', NULL, 131, NULL),
(41, 'Justen', 'Vibert', 'M', '95484 6th Road', 'Shuiyuesi', NULL, 568, NULL),
(42, 'Duffy', 'Garrison', 'M', '01870 Eagle Crest Road', 'Paris 11', 75542, 199, NULL),
(43, 'Filbert', 'Calladine', 'M', '0 Lakewood Drive', 'Buur Gaabo', NULL, 733, NULL),
(44, 'Alister', 'Vaune', 'M', '01 Kings Plaza', 'Jinhua', NULL, 273, NULL),
(45, 'Kiersten', 'Wakes', 'F', '38 Dexter Way', 'Évreux', 27022, 168, NULL),
(46, 'Petey', 'Burbage', 'M', '7358 Morrow Point', 'Uiasa', NULL, 919, NULL),
(47, 'Augustina', 'Dolman', 'F', '20 Riverside Circle', 'Kwangyang', NULL, 806, NULL),
(48, 'Dinny', 'Carruthers', 'F', '20 Parkside Pass', 'Kalá Déndra', NULL, 532, NULL),
(49, 'Nissie', 'Petrasek', 'F', '543 Morningstar Circle', 'Pavlovka', 617820, 908, NULL),
(50, 'Jerrie', 'Kharchinski', 'M', '64414 Lighthouse Bay Center', 'Nagoya-shi', 486, 450, NULL),
(51, 'Horatio', 'Cory', 'M', '61 Chive Junction', 'Sexmoan', 2005, 655, NULL),
(52, 'Kissiah', 'Mateev', 'F', '9236 Myrtle Plaza', 'Asnières-sur-Seine', 92665, 154, NULL),
(53, 'Cori', 'Moreby', 'M', '835 Schlimgen Point', 'Villa María', 5900, 816, NULL),
(54, 'Mirella', 'Blurton', 'F', '4 Utah Pass', 'Hluhluwe', 3960, 164, NULL),
(55, 'Sydney', 'Dalgarnowch', 'M', '713 Brown Junction', 'Sumberdangdang', NULL, 416, NULL),
(56, 'Lucho', 'Forde', 'M', '12 High Crossing Lane', 'Halayhay', 2207, 262, NULL),
(57, 'Ursola', 'MacTrustey', 'F', '30 Blaine Circle', 'Vilya', 607040, 274, NULL),
(58, 'Alverta', 'Capron', 'F', '6270 Di Loreto Junction', 'Alès', 30112, 654, NULL),
(59, 'Arther', 'Joron', 'M', '25 Anzinger Terrace', 'Tocumen', NULL, 691, NULL),
(60, 'Justinn', 'Bahde', 'F', '91826 Nobel Trail', 'La Argentina', 415088, 675, NULL),
(61, 'Loralee', 'Goggan', 'F', '0 Namekagon Place', 'Calumpit', 3003, 565, NULL),
(62, 'Gavin', 'Maiklem', 'M', '8 Troy Junction', 'Nîmes', 30034, 613, NULL),
(63, 'Eliot', 'Rawson', 'M', '592 Carioca Avenue', 'Bhisho', 3837, 512, NULL),
(64, 'Faina', 'Dreghorn', 'F', '7064 Lerdahl Road', 'Sukojember', NULL, 240, NULL),
(65, 'Arnuad', 'Orchart', 'M', '674 Vidon Drive', 'Belo Blato', NULL, 467, NULL),
(66, 'Daniele', 'Stoeckle', 'F', '42 Golden Leaf Park', 'Tiebukenwusan', NULL, 779, NULL),
(67, 'Odell', 'Borzoni', 'M', '49162 Meadow Ridge Trail', 'Khudoyelanskoye', 460056, 901, NULL),
(68, 'Harland', 'Parysowna', 'M', '9267 Sutteridge Terrace', 'Manjing', NULL, 110, NULL),
(69, 'Georgia', 'Spencelayh', 'F', '7 Birchwood Drive', 'Xiumei', NULL, 778, NULL),
(70, 'Barby', 'Lurner', 'F', '71 Susan Trail', 'Hetan', NULL, 425, NULL),
(71, 'Rolfe', 'Berge', 'M', '355 Mesta Avenue', 'Fengjiang', NULL, 693, NULL),
(72, 'Elvyn', 'Fairbrass', 'M', '6015 Monterey Park', 'Kipini', NULL, 569, NULL),
(73, 'Maggy', 'Bevis', 'F', '08 Havey Parkway', 'Las Vegas', 89166, 702, NULL),
(74, 'Josephine', 'ducarme', 'F', '31 Arapahoe Avenue', 'Magdalena', NULL, 665, NULL),
(75, 'Othilie', 'Skeats', 'F', '599 Lake View Junction', 'Monino', 142450, 657, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id_com` int(11) NOT NULL,
  `PDVHT` decimal(15,2) DEFAULT NULL,
  `PDVTTC` decimal(15,2) DEFAULT NULL,
  `Qte` int(11) DEFAULT NULL,
  `tva` decimal(15,2) DEFAULT NULL,
  `Adr_livr` varchar(50) DEFAULT NULL,
  `stat_livr` varchar(50) DEFAULT NULL,
  `id_cli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id_com`, `PDVHT`, `PDVTTC`, `Qte`, `tva`, `Adr_livr`, `stat_livr`, `id_cli`) VALUES
(1, '20.00', '24.00', 20, '0.20', '93 Clemons Street', ' expedié', 1),
(2, '15.00', '18.00', 85, '0.20', '3 Ridge Oak Trail', 'en preparation', 2),
(3, '10.00', '12.00', 34, '0.20', '76764 Union Parkway', 'reçu', 3),
(4, '20.00', '24.00', 20, '0.20', '90 Clemons Street', ' expedié', 4),
(5, '15.00', '18.00', 85, '0.20', '30 Ridge Oak Trail', 'en preparation', 5),
(6, '10.00', '12.00', 34, '0.20', '96764 Union Parkway', 'reçu', 6),
(7, '20.00', '24.00', 20, '0.20', '92 Clemons Street', ' expedié', 7),
(8, '15.00', '18.00', 85, '0.20', '31 Ridge Oak Trail', 'en preparation', 8),
(9, '10.00', '12.00', 34, '0.20', '74764 Union Parkway', 'reçu', 9),
(10, '20.00', '24.00', 20, '0.20', '99 Clemons Street', ' expedié', 10),
(11, '15.00', '18.00', 85, '0.20', '35 Ridge Oak Trail', 'en preparation', 11),
(12, '10.00', '12.00', 34, '0.20', '46764 Union Parkway', 'reçu', 12),
(13, '20.00', '24.00', 20, '0.20', '96 Clemons Street', ' expedié', 13),
(14, '15.00', '18.00', 85, '0.20', '12 Ridge Oak Trail', 'en preparation', 14),
(15, '10.00', '12.00', 34, '0.20', '75534 Union Parkway', 'reçu', 15),
(16, '20.00', '24.00', 20, '0.20', '98 Clemons Street', ' expedié', 16),
(17, '15.00', '18.00', 85, '0.20', '37 Ridge Oak Trail', 'en preparation', 17),
(18, '10.00', '12.00', 34, '0.20', '77764 Union Parkway', 'reçu', 18),
(19, '20.00', '24.00', 20, '0.20', '56 Clemons Street', ' expedié', 19),
(20, '15.00', '18.00', 85, '0.20', '56 Ridge Oak Trail', 'en preparation', 20),
(21, '10.00', '12.00', 34, '0.20', '87552 Union Parkway', 'reçu', 21);

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

CREATE TABLE `commercial` (
  `id_commercial` int(11) NOT NULL,
  `Nom_du_commercial` varchar(50) DEFAULT NULL,
  `Prenom_du_commercial_` varchar(50) DEFAULT NULL,
  `id_utilisateur` int(11) NOT NULL,
  `id_cli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commercial`
--

INSERT INTO `commercial` (`id_commercial`, `Nom_du_commercial`, `Prenom_du_commercial_`, `id_utilisateur`, `id_cli`) VALUES
(1, 'Tabina', 'Leathes', 1, 1),
(2, 'Nolly', 'Wahncke', 2, 2),
(3, 'Sula', 'Shewon', 3, 3),
(4, 'Ricki', 'Tomsen', 4, 4);

-- --------------------------------------------------------

--
-- Structure de la table `compte_utilisateur_`
--

CREATE TABLE `compte_utilisateur_` (
  `id_utilisateur` int(11) NOT NULL,
  `mdp_utilisateur` varchar(50) DEFAULT NULL,
  `pseudo_de_l_utilisateur` varchar(50) DEFAULT NULL,
  `mail_de_l_utilisateur` varchar(50) DEFAULT NULL,
  `id_cli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte_utilisateur_`
--

INSERT INTO `compte_utilisateur_` (`id_utilisateur`, `mdp_utilisateur`, `pseudo_de_l_utilisateur`, `mail_de_l_utilisateur`, `id_cli`) VALUES
(1, 'bTyvrHcqj', 'pbover0', 'afinley0@de.vu', 1),
(2, 'bLyEY6C', 'fcaws1', 'tcanlin1@artisteer.com', 2),
(3, 'tViKk207', 'apenhalurick2', 'hkloster2@cbc.ca', 3),
(4, '8QpHrJ3', 'grehorek3', 'alivermore3@wp.com', 4),
(5, 'O8z3oo', 'ngalletley4', 'jraffin4@blogspot.com', 5),
(6, 'oAxNcpAoys2E', 'ymiddiff5', 'sjanko5@wordpress.com', 6),
(7, 'YzqeTpoOk', 'mstrettle6', 'lambrozik6@google.cn', 7),
(8, 'nMCEJx', 'jdavidman7', 'kcalloway7@trellian.com', 8),
(9, '0Wt4NvRZh', 'cflageul8', 'sshottin8@cbsnews.com', 9),
(10, 'UUR52D5', 'hhetterich9', 'sduffield9@posterous.com', 10),
(11, 'wnqlxkDumq', 'wlapsleya', 'dlagesa@scribd.com', 11),
(12, 'KYnZ21VcwiIZ', 'olimeburnb', 'kmccritchieb@chronoengine.com', 12),
(13, 'pgCwfpYD8', 'afultonc', 'rhawsonc@wunderground.com', 13),
(14, 'OPg3ehBS', 'rworthingtond', 'bbumfreyd@sakura.ne.jp', 14),
(15, 'HfibYLtsjCw', 'lcouvee', 'bslymane@acquirethisname.com', 15),
(16, '39dipNYByPJA', 'arizziellof', 'mmelonbyf@nature.com', 16),
(17, 'CRnODi', 'amimmackg', 'pglencrossg@bravesites.com', 17),
(18, 'nT6vzdgM6Ns', 'fdykeh', 'imulvaghh@vinaora.com', 18),
(19, 'v5GTpDIPJ7', 'hgergi', 'dreichhardti@bloomberg.com', 19),
(20, 'dRQw97ka0', 'kbarendsj', 'ccrawj@deviantart.com', 20),
(21, 'JGFZ8jDuE', 'wbrecknallk', 'kartonk@go.com', 21),
(22, 'K4B4iFhF4p', 'abillowsl', 'strothl@geocities.jp', 22),
(23, 'JqbkoplSe', 'cstclairm', 'rhuertam@macromedia.com', 23),
(24, 'IKzcm3BdP3n', 'hpascalln', 'lendriccin@twitter.com', 24),
(25, 'jAl7rKyA5p9', 'lrotgeo', 'jtenmano@tinypic.com', 25),
(26, 'cwHI7WQHOc', 'fstansbyp', 'llafranconip@google.co.uk', 26),
(27, 'YunD62a8f7ye', 'nmeconiq', 'eescaleroq@ask.com', 27),
(28, 'rptQxav', 'ccanacottr', 'emoresider@seesaa.net', 28),
(29, 'K313mg', 'vapperleys', 'pgerolds@themeforest.net', 29),
(30, 'RsTlDkHr2', 'vmacaleeset', 'menocht@histats.com', 30),
(31, 'B8J05haiP', 'cstobartu', 'wpavlaseku@fema.gov', 31),
(32, 'LZhhCjM', 'kcrocev', 'krosendalev@blogger.com', 32),
(33, 'CQtQWRiLVJQ', 'hlifew', 'ttunuyw@meetup.com', 33),
(34, 'JYgb4r', 'wskellionx', 'lcrootx@sphinn.com', 34),
(35, 'qBbT1J5F', 'seastwayy', 'htruesdaley@usgs.gov', 35),
(36, '76NSvY', 'iegdellz', 'rbabalolaz@godaddy.com', 36),
(37, '9qdwmmwGfE', 'rbatchellor10', 'tpillington10@technorati.com', 37),
(38, 'm3Lbpxw', 'bkinze11', 'bsamber11@scribd.com', 38),
(39, 'qN6FBFIlEsG', 'cbumby12', 'sivanyukov12@cisco.com', 39),
(40, 'UUrSELllS', 'bblease13', 'rthrift13@reverbnation.com', 40),
(41, 'HMyk2vzHej', 'cdandy14', 'cdouble14@360.cn', 41),
(42, 'GQbfFg', 'dferrarello15', 'dhearon15@dagondesign.com', 42),
(43, '2RJN4cZlAWpu', 'tphillimore16', 'rllywarch16@de.vu', 43),
(44, 'TglqYXl869ce', 'gduckham17', 'cfreda17@goo.gl', 44),
(45, 'QtGOa5', 'lflaunders18', 'esmewings18@netscape.com', 45),
(46, 'SpwevFo', 'smendus19', 'bmeedendorpe19@weebly.com', 46),
(47, 'bSjckDR', 'ztremouille1a', 'ptomasian1a@aboutads.info', 47),
(48, 'I2iOvz', 'apetlyura1b', 'mbattman1b@wikipedia.org', 48),
(49, '26niKAvg6', 'mauld1c', 'rkunkel1c@people.com.cn', 49),
(50, 'E7LLkrxky', 'stregona1d', 'ksulland1d@artisteer.com', 50),
(51, 'NmNiBMb0WUqw', 'spurple1e', 'ehumber1e@altervista.org', 51),
(52, 'WwJAOOb', 'htittletross1f', 'mskells1f@posterous.com', 52),
(53, '8c8ljb5Bud', 'tchesters1g', 'ggreenstock1g@vinaora.com', 53),
(54, 'E4Lr97', 'tkindall1h', 'nmatthewman1h@mapy.cz', 54),
(55, 'fg12XJmsNPn', 'aspillett1i', 'liffe1i@studiopress.com', 55),
(56, 'eTwOEZcLc', 'tbenthall1j', 'jhorley1j@flavors.me', 56),
(57, 'G7PzrOR', 'otranter1k', 'sbattyll1k@facebook.com', 57),
(58, 'ZKfKb2pvsvIC', 'mrubinek1l', 'bteape1l@ft.com', 58),
(59, 'S9mo5Glh', 'bolczyk1m', 'sriguard1m@paginegialle.it', 59),
(60, 'axL91P', 'mmott1n', 'joriel1n@cdc.gov', 60),
(61, 'Mz2Z7yFnmum9', 'sstillwell1o', 'tjerrard1o@army.mil', 61),
(62, '4ZgV2h', 'cmacallester1p', 'bcharlet1p@gravatar.com', 62),
(63, 'agUKPGDlFOhj', 'crazzell1q', 'dowlner1q@google.com.br', 63),
(64, 'xVIJ5bwFv', 'gdezamora1r', 'ablaschke1r@51.la', 64),
(65, 'uynn9LV1J', 'gchaster1s', 'nsweatman1s@fc2.com', 65),
(66, 'UEbkX0ZaWKf', 'ckingdon1t', 'kmawtus1t@wix.com', 66),
(67, 'CJ9jaA', 'mivy1u', 'ebessom1u@livejournal.com', 67),
(68, 'WHnFRvL', 'lpalser1v', 'dickovici1v@hatena.ne.jp', 68),
(69, 'HersIL', 'kwynne1w', 'amiall1w@toplist.cz', 69),
(70, 'UWYn2qKgXAUl', 'itayspell1x', 'cgulvin1x@dell.com', 70),
(71, '5CtpFnu2GhWV', 'bheining1y', 'lmabbutt1y@hc360.com', 71),
(72, 'qPyqLPza8', 'mcharleston1z', 'cingledow1z@soup.io', 72),
(73, 'i8S4cYP9v', 'cbaudy20', 'cbariball20@twitpic.com', 73),
(74, 'Tz6ZcALQ', 'emckeveney21', 'egornar21@wikipedia.org', 74),
(75, 'JwphzL6X', 'fhowbrook22', 'ncalendar22@admin.ch', 75);

-- --------------------------------------------------------

--
-- Structure de la table `exister`
--

CREATE TABLE `exister` (
  `id_artc` int(11) NOT NULL,
  `Réference_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id_facture` int(11) NOT NULL,
  `Adresse_de_facturation` varchar(50) DEFAULT NULL,
  `date_de_facturation` date DEFAULT NULL,
  `Reduction_` int(11) DEFAULT NULL,
  `id_com` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fourni`
--

CREATE TABLE `fourni` (
  `id_artc` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `Nom_du_fournisseur_` varchar(50) DEFAULT NULL,
  `Prenom_du_fournisseur` varchar(50) DEFAULT NULL,
  `Categorie_fournisseur` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `Nom_du_fournisseur_`, `Prenom_du_fournisseur`, `Categorie_fournisseur`) VALUES
(1, 'Blondel', 'Fredra', 'Tools'),
(2, 'Godfery', 'Haven', 'Garden'),
(3, 'Circuit', 'Bearnard', 'Jewelry'),
(4, 'Jocic', 'Ranique', 'Industrial'),
(5, 'Jacketts', 'Cammie', 'Industrial'),
(6, 'Elvy', 'Kaitlyn', 'Garden'),
(7, 'Edwardes', 'Leesa', 'Home'),
(8, 'Bastiman', 'Laetitia', 'Industrial'),
(9, 'Bon', 'Sonni', 'Jewelry'),
(10, 'Corkhill', 'Ealasaid', 'Clothing'),
(11, 'Kefford', 'Tove', 'Outdoors'),
(12, 'Harrower', 'Israel', 'Books'),
(13, 'Huddy', 'Denver', 'Books'),
(14, 'Plampeyn', 'Devin', 'Automotive'),
(15, 'Schrader', 'Claire', 'Jewelry'),
(16, 'Sired', 'Carlita', 'Books'),
(17, 'Bill', 'Myrle', 'Computers'),
(18, 'Honsch', 'Loralee', 'Sports'),
(19, 'Noddle', 'Cherey', 'Sports'),
(20, 'Gonzales', 'Karita', 'Outdoors'),
(21, 'Stennard', 'Kelbee', 'Automotive'),
(22, 'Heinig', 'Darbie', 'Books'),
(23, 'Ruff', 'Philippe', 'Health'),
(24, 'Josefs', 'Cleveland', 'Clothing'),
(25, 'Lawlance', 'Thomasa', 'Books'),
(26, 'Sahlstrom', 'Kevon', 'Kids'),
(27, 'Cardno', 'Harli', 'Electronics'),
(28, 'Trueman', 'Angela', 'Computers'),
(29, 'Zanetello', 'Chilton', 'Beauty'),
(30, 'Rosario', 'Alfie', 'Computers'),
(31, 'Scurlock', 'Martguerita', 'Baby'),
(32, 'Plaistowe', 'Genevieve', 'Industrial'),
(33, 'Hebblewhite', 'Ede', 'Industrial'),
(34, 'Cresar', 'Cristie', 'Industrial'),
(35, 'Beswick', 'Markus', 'Toys'),
(36, 'Enrico', 'Homere', 'Shoes'),
(37, 'Maypother', 'Ahmad', 'Home'),
(38, 'Philipps', 'Walker', 'Automotive'),
(39, 'Tydeman', 'Nissa', 'Shoes'),
(40, 'Kirgan', 'Cort', 'Home'),
(41, 'Fawks', 'Kissee', 'Home'),
(42, 'Pala', 'Austin', 'Music'),
(43, 'Birkenhead', 'Dierdre', 'Sports'),
(44, 'Piccop', 'Selie', 'Movies'),
(45, 'Ewin', 'Antoine', 'Health'),
(46, 'Scolli', 'Arie', 'Outdoors'),
(47, 'Cariss', 'Lindy', 'Sports'),
(48, 'Sturges', 'Lois', 'Home'),
(49, 'Hamfleet', 'Claudius', 'Games');

-- --------------------------------------------------------

--
-- Structure de la table `selectionner`
--

CREATE TABLE `selectionner` (
  `id_cli` int(11) NOT NULL,
  `id_artc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `se_compose`
--

CREATE TABLE `se_compose` (
  `id_artc` int(11) NOT NULL,
  `id_com` int(11) NOT NULL,
  `Quantité` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `Réference_stock` int(11) NOT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `stock_min` int(11) DEFAULT NULL,
  `current_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_artc`),
  ADD KEY `id_catgerorie_article` (`id_catgerorie_article`);

--
-- Index pour la table `categorie_articles`
--
ALTER TABLE `categorie_articles`
  ADD PRIMARY KEY (`id_catgerorie_article`),
  ADD KEY `id_catgerorie_article_1` (`id_catgerorie_article_1`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_cli`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_catgerorie_article`) REFERENCES `categorie_articles` (`id_catgerorie_article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
