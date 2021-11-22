-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 nov. 2021 à 15:54
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibli`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE `auteur` (
  `a_id` int(11) NOT NULL,
  `nom` varchar(90) NOT NULL,
  `prenom` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`a_id`, `nom`, `prenom`) VALUES
(0, 'Twain', 'Mark'),
(1, 'Asimov', 'Isaac'),
(2, 'Ōtomo', 'Katsuhiro'),
(3, 'Martelle', 'Myriam'),
(4, 'Touache', 'Sébastien'),
(5, 'Goscinny', 'René'),
(6, 'Ferri', 'Jean-Yves'),
(7, 'Uderzo', 'Albert'),
(8, 'Conrad', 'Didier'),
(9, 'SILVERBERG', 'Robert'),
(10, 'Swift', 'Jonathan'),
(11, 'Ligaran,', ''),
(12, 'Nabokov', 'Vladimir'),
(13, 'BARJAVEL', 'René'),
(14, 'Barjavel', 'René'),
(15, 'Wul', 'Stefan'),
(16, 'HUXLEY', 'Aldous'),
(17, 'Döblin', 'Alfred'),
(18, 'Bradbury', 'Ray'),
(19, 'Tolstoï', 'Léon'),
(20, 'Aldiss', 'Brian Wilson'),
(21, 'Hemingway', 'Ernest'),
(22, 'Woolf', 'Virginia'),
(23, 'Fiodor', 'Dostoïevski'),
(24, 'Lessing', 'Doris'),
(25, 'Dickens', 'Charles'),
(26, 'Flaubert', 'Gustave'),
(27, 'Dostoïevski', 'Fiodor'),
(28, 'Melville', 'Herman'),
(29, 'Simak', 'Clifford D.'),
(30, 'Orwell', 'George'),
(31, 'Cervantes', 'Miguel de'),
(32, 'Balzac', 'Honoré de'),
(33, 'Kafka', 'Franz'),
(34, 'Matheson', 'Richard'),
(35, 'Py', 'Olivier'),
(36, 'Shakespeare', 'William'),
(37, 'BOULLE', 'Pierre'),
(38, 'Austen', 'Jane'),
(39, 'Ibsen', 'Henrik'),
(40, 'Ballard', 'J. G.'),
(41, 'Demois', 'Agathe'),
(42, 'Godeau', 'Vincent'),
(43, 'Camus', 'Albert'),
(44, 'Frémon', 'Jean'),
(45, 'Lovecraft', 'H. P.'),
(46, 'Camp', 'Lyon Sprague de'),
(47, 'Morrison', 'Toni'),
(48, 'Svevo', 'Italo'),
(49, 'Pelot', 'Pierre'),
(50, 'Corneille', ''),
(51, 'Faerber', 'Johan'),
(52, 'Conrad', 'Joseph'),
(53, 'Deutsch', 'Michel'),
(54, 'Maupassant', 'Guy de'),
(55, 'Mann', 'Thomas'),
(56, 'Ovide', ''),
(57, 'Spinrad', 'Norman'),
(58, 'Warren', 'Henry S.'),
(59, 'JEURY', 'Michel'),
(60, 'Goscinny', ''),
(61, 'Maḥfūẓ', 'Naǧīb'),
(62, 'Farmer', 'Philip José'),
(63, 'Lorca', 'Federico Garcia'),
(64, 'Kernighan', 'Brian W.'),
(65, 'Pike', 'Rob'),
(66, 'Dostoïevski', 'Fédor Mikhaïlovitch'),
(67, 'Musil', 'Robert'),
(68, 'Faulkner', 'William'),
(69, 'Fransa', 'France'),
(70, 'GUIN', 'Ursula LE'),
(71, 'Yourcenar', 'Marguerite'),
(72, 'Boulle', 'Pierre'),
(73, 'Gascony', 'Rene'),
(74, 'Chaucer', 'Geoffrey'),
(75, 'Chenet', 'Gérard'),
(76, 'Knuth', 'Donald E.'),
(77, 'Saramago', 'José'),
(78, 'Vonnegut', 'Kurt'),
(79, 'Goscinny', 'Rene'),
(80, 'Márquez', 'Gabriel García'),
(81, 'Rabelais', 'François'),
(82, 'Laporte', 'Michel'),
(83, 'Nadel', 'Olivier-Marc'),
(84, 'Grimm', 'Jacob'),
(85, 'Grimm', 'Wilhelm'),
(86, 'Vergilius', 'Publius Maro'),
(87, 'Virgile', ''),
(88, 'Eliot', 'George'),
(89, 'Sophocle', ''),
(90, 'Márquez', 'Gabriel Garcia'),
(91, 'Borges', 'Jorge Luis'),
(92, 'Dick', 'Philip K.'),
(93, 'Gogol', 'Nikolaï'),
(94, 'Grass', 'Günter'),
(95, 'iMinds', ''),
(96, 'Zelazny', 'Roger'),
(97, 'Montardre', 'Hélène'),
(98, 'Rulfo', 'Juan'),
(99, 'Sedgewick', 'Robert'),
(100, 'Wayne', 'Kevin'),
(101, 'Lindgren', 'Astrid'),
(102, 'Achebe', 'Chinua'),
(103, 'Bruneau', 'Clotilde'),
(104, 'D.', 'Dim'),
(105, 'Santagati', 'Federico'),
(106, 'Ferry', 'Luc'),
(107, 'Poli', 'Didier'),
(108, 'Rushdie', 'Salman'),
(109, 'Herbert', 'Frank'),
(110, 'Lovecraft', 'Howard Phillips'),
(111, 'Rincé', 'Dominique'),
(112, 'Gogol', 'Nikolai'),
(113, 'Brontë', 'Emily'),
(114, 'Fall', 'Malick'),
(115, 'Stendhal', ''),
(116, 'Wikipedia', 'Source'),
(117, 'Morante', 'Elsa'),
(118, 'Karsenti', 'Bruno');

-- --------------------------------------------------------

--
-- Structure de la table `auteur_de`
--

CREATE TABLE `auteur_de` (
  `a_id` int(11) NOT NULL,
  `isbn` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auteur_de`
--

INSERT INTO `auteur_de` (`a_id`, `isbn`) VALUES
(0, '978-2081509511'),
(1, '000-0000000097'),
(1, '978-2207249123'),
(2, '978-2723428262'),
(3, '978-2745989857'),
(4, '978-2745989857'),
(5, '978-2012100060'),
(5, '978-2012100084'),
(5, '978-2012101418'),
(5, '978-2012101500'),
(5, '978-2012101517'),
(5, '978-2012101531'),
(5, '978-2012101555'),
(5, '978-2012101562'),
(5, '978-2012101685'),
(5, '978-2012101784'),
(5, '978-2864972662'),
(6, '978-2864972662'),
(6, '978-2864972716'),
(6, '978-2864973270'),
(7, '978-0785909903'),
(7, '978-2012100060'),
(7, '978-2012100084'),
(7, '978-2012101418'),
(7, '978-2012101500'),
(7, '978-2012101517'),
(7, '978-2012101524'),
(7, '978-2012101531'),
(7, '978-2012101555'),
(7, '978-2012101562'),
(7, '978-2012101685'),
(7, '978-2012101784'),
(7, '978-2864972051'),
(7, '978-2864972662'),
(8, '978-2864972662'),
(9, '978-2221197691'),
(9, '978-2221216361'),
(10, '978-2335008586'),
(11, '978-2335008586'),
(12, '978-0141391601'),
(13, '978-2258116405'),
(13, '978-2258116429'),
(14, '978-2072534911'),
(14, '978-2072535031'),
(15, '979-1025100639'),
(16, '978-2259221702'),
(17, '978-2070219292'),
(18, '978-1439142677'),
(18, '978-2072455162'),
(19, '978-2081364509'),
(19, '978-2352879183'),
(19, '978-2371240087'),
(20, '978-2207500293'),
(21, '978-2072762093'),
(22, '978-2081358881'),
(22, '978-2253031536'),
(23, '978-1911572909'),
(24, '978-2253025320'),
(25, '978-2322185801'),
(26, '978-2759902293'),
(27, '978-2371131118'),
(28, '978-8190732673'),
(29, '978-2277118473'),
(29, '978-2290112168'),
(30, '978-0547249643'),
(31, '978-2371130418'),
(32, '978-2806231697'),
(33, '978-2081351981'),
(33, '978-2757827413'),
(34, '978-2072457340'),
(34, '978-2072457388'),
(35, '978-2330052768'),
(36, '978-2330052768'),
(36, '978-2806240187'),
(37, '978-2260019183'),
(38, '978-2215130475'),
(39, '978-2330068349'),
(40, '978-0881844221'),
(41, '979-1023500448'),
(42, '979-1023500448'),
(43, '978-2072376429'),
(44, '978-2846825573'),
(45, '978-2824904269'),
(46, '978-2820511034'),
(47, '978-2267028133'),
(48, '978-2824902371'),
(49, '978-2820508935'),
(50, '978-2218972324'),
(51, '978-2218972324'),
(52, '978-0199555918'),
(53, '978-2277118473'),
(54, '978-2346014453'),
(55, '978-2213703848'),
(55, '978-2253063193'),
(56, '978-2253158677'),
(57, '978-2290105504'),
(58, '978-0201914658'),
(59, '978-2221119693'),
(59, '978-2221119709'),
(60, '978-2012101524'),
(61, '978-2742744824'),
(62, '978-2253062820'),
(63, '978-8832957402'),
(64, '978-0201615869'),
(65, '978-0201615869'),
(66, '979-1021900486'),
(67, '978-2757803691'),
(68, '978-2070361625'),
(69, '000-0000000162'),
(70, '978-2221128121'),
(71, '978-2070369218'),
(72, '978-2266006095'),
(72, '978-2402281775'),
(73, '978-2864972051'),
(74, '978-2070406340'),
(75, '978-2371270060'),
(76, '978-0321635747'),
(77, '978-2020403436'),
(78, '978-2757820919'),
(79, '978-0785909903'),
(80, '978-2020238113'),
(81, '978-2013230827'),
(82, '978-2013230827'),
(83, '978-2013230827'),
(84, '978-2290117965'),
(85, '978-2290117965'),
(86, '978-2251013039'),
(87, '978-2251013039'),
(88, '978-1853262371'),
(89, '978-2290080207'),
(90, '978-2246819554'),
(91, '978-2070366149'),
(92, '978-0547728247'),
(92, '978-2290157268'),
(93, '978-2371240001'),
(94, '978-2020314305'),
(95, '978-1921746864'),
(96, '978-2072487958'),
(97, '978-2092532195'),
(98, '000-0000000069'),
(99, '978-0132762564'),
(100, '978-0132762564'),
(101, '978-2011179043'),
(102, '978-2708701915'),
(103, '978-2331035531'),
(104, '978-2331035531'),
(105, '978-2331035531'),
(106, '978-2331035531'),
(107, '978-2331035531'),
(108, '978-2070402632'),
(109, '978-1101658055'),
(110, '978-2814510012'),
(111, '978-2402282697'),
(112, '978-2824709420'),
(113, '978-2253174561'),
(114, '978-2402255462'),
(115, '978-2367881171'),
(116, '978-1153611725'),
(117, '978-2070315017'),
(118, '978-2130592150');

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `code_barre` char(15) DEFAULT NULL,
  `isbn` char(14) NOT NULL,
  `retour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`code_barre`, `isbn`, `retour`) VALUES
('137332830764072', '978-2013230827', '2020-02-20'),
('654834075188732', '978-2070406340', '2020-02-17'),
('035184062854281', '978-2072762093', '2020-02-18'),
('421921003090881', '978-2081358881', '2020-04-28'),
('421921003090881', '978-2207249123', '2020-04-28'),
('533299198788609', '978-2251013039', '2020-02-28'),
('533299198788609', '978-2253174561', '2020-02-28'),
('934701281931582', '978-2260019183', '2020-01-01'),
('917547585216771', '978-2290105504', '2020-04-07'),
('137332830764072', '978-2335008586', '2020-02-20'),
('137332830764072', '978-2352879183', '2020-02-20'),
('934701281931582', '978-2371240087', '2020-01-01'),
('035184062854281', '978-2742744824', '2020-02-18'),
('035184062854281', '978-2745989857', '2020-02-18'),
('654834075188732', '978-2806231697', '2020-02-17'),
('421921003090881', '978-2824709420', '2020-04-28'),
('654834075188732', '978-2864973270', '2020-02-17');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `titre` varchar(300) NOT NULL,
  `editeur` varchar(90) NOT NULL,
  `annee` int(11) NOT NULL,
  `isbn` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`titre`, `editeur`, `annee`, `isbn`) VALUES
('Pedro Páramo', 'New York : Grove Press', 1959, '000-0000000069'),
('Seconde Fondation', 'adsaa', 1979, '000-0000000097'),
('Les Plus qu\'humains', 'adsaa', 1999, '000-0000000162'),
('Algorithms', 'Addison-Wesley Professional', 2011, '978-0132762564'),
('Lolita', 'Penguin UK', 2012, '978-0141391601'),
('Nostromo', 'Oxford University Press', 2009, '978-0199555918'),
('The Practice of Programming', 'Addison-Wesley Professional', 1999, '978-0201615869'),
('Hacker\'s Delight', 'Addison-Wesley Professional', 2003, '978-0201914658'),
('The Art of Computer Programming', 'Addison-Wesley Professional', 1997, '978-0321635747'),
('1984', 'Houghton Mifflin Harcourt', 1983, '978-0547249643'),
('Ubik', 'Houghton Mifflin Harcourt', 2012, '978-0547728247'),
('Le Domaine des dieux', 'French & European Publications', 1992, '978-0785909903'),
('Vermilion Sands', 'Carroll & Graf Pub', 1988, '978-0881844221'),
('Dune', 'Penguin', 2003, '978-1101658055'),
('À la recherche du temps perdu', 'Books LLC, Wiki Series', 2010, '978-1153611725'),
('Fahrenheit 451', 'Simon and Schuster', 2011, '978-1439142677'),
('Middlemarch', 'Wordsworth Editions', 1994, '978-1853262371'),
('L\'Idiot', 'Les Editions de Londres', 2019, '978-1911572909'),
('Polymath', 'iMinds Pty Ltd', 2014, '978-1921746864'),
('Fifi Brindacier', 'Hachette Romans', 2013, '978-2011179043'),
('Astérix et Cléopâtre', 'Dargaud', 1999, '978-2012100060'),
('Astérix chez les Bretons', 'Dargaud', 2002, '978-2012100084'),
('Astérix et les Normands', 'Dargaud', 2005, '978-2012101418'),
('Les Lauriers de César', 'Educa Books', 2008, '978-2012101500'),
('Le Devin', 'Educa Books', 2010, '978-2012101517'),
('Astérix en Corse', 'Dargaud', 2005, '978-2012101524'),
('Le Cadeau de César', 'Educa Books', 2005, '978-2012101531'),
('Obélix et Compagnie', 'Educa Books', 2008, '978-2012101555'),
('Astérix chez les Belges', 'Dargaud', 1979, '978-2012101562'),
('Le Tour de Gaule d\'Astérix', 'Educa Books', 2007, '978-2012101685'),
('Astérix légionnaire', 'Educa Books', 2011, '978-2012101784'),
('Gargantua et Pantagruel', 'Livre de Poche Jeunesse', 2009, '978-2013230827'),
('Cent ans de solitude', 'Contemporary French Fiction', 1995, '978-2020238113'),
('Le Tambour', 'Contemporary French Fiction', 1997, '978-2020314305'),
('L\'Aveuglement', 'Contemporary French Fiction', 2000, '978-2020403436'),
('Berlin Alexanderplatz', 'Editions Gallimard', 1933, '978-2070219292'),
('La storia', 'Editions Gallimard', 2004, '978-2070315017'),
('Le Bruit et la Fureur', 'Gallimard Education', 1972, '978-2070361625'),
('Fictions', 'Gallimard Education', 1974, '978-2070366149'),
('Mémoires d\'Hadrien', 'Gallimard Education', 1974, '978-2070369218'),
('Les Enfants de minuit', 'Gallimard Education', 2010, '978-2070402632'),
('Les Contes de Canterbury', 'Gallimard Education', 2000, '978-2070406340'),
('L\'Étranger', 'Editions Gallimard', 2012, '978-2072376429'),
('Chroniques martiennes', 'Editions Gallimard', 2016, '978-2072455162'),
('L\'Homme qui rétrécit', 'Editions Gallimard', 2017, '978-2072457340'),
('Je suis une légende', 'Editions Gallimard', 2013, '978-2072457388'),
('Seigneur de lumière', 'Editions Gallimard', 2014, '978-2072487958'),
('Ravage', 'Editions Gallimard', 2014, '978-2072534911'),
('Le Voyageur imprudent', 'Editions Gallimard', 2014, '978-2072535031'),
('Le Vieil Homme et la Mer', 'Editions Gallimard', 2018, '978-2072762093'),
('Le Procès', 'Flammarion', 2014, '978-2081351981'),
('Mrs Dalloway', 'Flammarion', 2015, '978-2081358881'),
('La Mort d\'Ivan Ilitch', 'Flammarion', 2015, '978-2081364509'),
('Les Aventures de Huckleberry Finn', 'Flammarion', 2020, '978-2081509511'),
('Ulysse', 'Nathan', 2012, '978-2092532195'),
('L\'Homme total', 'Presses Universitaires de France - PUF', 2011, '978-2130592150'),
('Fondation et Empire', 'Editions Denoël', 1999, '978-2207249123'),
('Croisière sans escale', 'Editions Denoël', 1990, '978-2207500293'),
('La Montagne magique', 'Fayard', 2016, '978-2213703848'),
('Orgueil et Préjugés', 'Fleurus', 2015, '978-2215130475'),
('Médée', 'Hatier', 2013, '978-2218972324'),
('Les Singes du temps', 'Robert Laffont', 2011, '978-2221119693'),
('Le Temps incertain', 'Robert Laffont', 2011, '978-2221119709'),
('La Main gauche de la nuit', 'Robert Laffont', 2012, '978-2221128121'),
('Les Monades urbaines', 'Robert Laffont', 2016, '978-2221197691'),
('Le Château de Lord Valentin', 'Robert Laffont', 2017, '978-2221216361'),
('L\'Amour aux temps du choléra', 'Grasset', 2009, '978-2246819554'),
('Énéide', 'Belles Lettres', 1993, '978-2251013039'),
('Le Carnet d\'or', 'Le Livre de poche', 1980, '978-2253025320'),
('La Promenade au phare', 'LGF/Le Livre de Poche', 1983, '978-2253031536'),
('Le Noir Dessein', 'Livre de poche', 1998, '978-2253062820'),
('Les Buddenbrook', 'LGF/Le Livre de Poche', 1993, '978-2253063193'),
('Les Métamorphoses', 'Le Livre de Poche', 2011, '978-2253158677'),
('Les Hauts de Hurlevent', 'Le Livre de Poche', 2012, '978-2253174561'),
('Le Grand secret', 'Presses de la Cité', 2014, '978-2258116405'),
('La Nuit des temps', 'Presses de la Cité', 2014, '978-2258116429'),
('Le Meilleur des mondes', 'Plon', 2013, '978-2259221702'),
('La Planète des singes', 'Julliard', 2011, '978-2260019183'),
('Contes de l\'absurde', 'Presses Pocket', 1978, '978-2266006095'),
('Beloved', 'Christian Bourgois', 2015, '978-2267028133'),
('Au carrefour des étoiles', 'J\'ai Lu', 1997, '978-2277118473'),
('Œdipe roi', 'J\'ai Lu', 2013, '978-2290080207'),
('Jack Barron et l\'Éternité', 'J\'ai Lu', 2016, '978-2290105504'),
('Demain les chiens', 'J\'ai Lu', 2015, '978-2290112168'),
('Contes', 'J\'ai Lu', 2015, '978-2290117965'),
('Le Maître du Haut Château', 'J\'ai Lu', 2017, '978-2290157268'),
('Les Grandes Espérances', 'BoD - Books on Demand', 2019, '978-2322185801'),
('Le Roi Lear', 'Éditions Actes Sud', 2015, '978-2330052768'),
('Une maison de poupée', 'Éditions Actes Sud', 2016, '978-2330068349'),
('La Naissance des dieux', 'Glénat BD', 2017, '978-2331035531'),
('Les Voyages de Gulliver', 'Primento', 2015, '978-2335008586'),
('Le Vagabond', 'BnF collection ebooks', 2016, '978-2346014453'),
('Guerre et Paix', 'Archipoche', 2016, '978-2352879183'),
('Le Rouge et le Noir', 'Les Éditions de l\'Ebook malin', 1971, '978-2367881171'),
('Don Quichotte', 'Les éditions Pulsio', 2016, '978-2371130418'),
('Les Frères Karamazov', 'Les éditions Pulsio', 2016, '978-2371131118'),
('Les Âmes mortes', 'Bibliothèque russe et slave', 2018, '978-2371240001'),
('Anna Karénine', 'Bibliothèque russe et slave', 2018, '978-2371240087'),
('Sécheresse', 'La Cheminante', 2014, '978-2371270060'),
('La Plaie', 'FeniXX', 1967, '978-2402255462'),
('Les Jeux de l\'esprit', 'FeniXX', 1971, '978-2402281775'),
('L\'Éducation sentimentale', 'FeniXX', 1990, '978-2402282697'),
('Le monde s\'effondre', 'Editions Présence Africaine', 1972, '978-2708701915'),
('Akira', 'Glénat', 2000, '978-2723428262'),
('Les Fils de la Médina', 'Arles [France] : Actes sud', 2003, '978-2742744824'),
('Les Robots', 'Editions Milan', 2017, '978-2745989857'),
('L\'Homme sans qualités', 'Contemporary French Fiction', 2011, '978-2757803691'),
('Le Berceau du chat', 'Contemporary French Fiction', 2010, '978-2757820919'),
('Le Château', 'Points', 2011, '978-2757827413'),
('Madame Bovary', 'UPblisher', 2016, '978-2759902293'),
('Le Père Goriot', 'Primento', 2012, '978-2806231697'),
('Hamlet', 'Primento', 2012, '978-2806240187'),
('La Couleur tombée du ciel', 'Tiers Livre Éditeur', 2014, '978-2814510012'),
('Delirium Circus', 'Bragelonne', 2013, '978-2820508935'),
('La Main de Zeï', 'Bragelonne Classic', 2016, '978-2820511034'),
('Le Journal d\'un fou', 'Bibebook', 2013, '978-2824709420'),
('La Conscience de Zeno', 'République des Lettres', 2015, '978-2824902371'),
('Par-delà le mur du sommeil', 'République des Lettres', 2018, '978-2824904269'),
('L\'Île des morts', 'POL Editeur', 2010, '978-2846825573'),
('L\'Odyssée d\'Astérix', 'Educa Books', 2008, '978-2864972051'),
('Astérix chez les Pictes', 'Editions Albert René', 2013, '978-2864972662'),
('Le Papyrus de César', 'Editions Albert René', 2015, '978-2864972716'),
('Astérix et la Transitalique', 'Editions Albert René', 2017, '978-2864973270'),
('Moby Dick', 'Campfire Graphic Novels', 2010, '978-8190732673'),
('Romancero gitano', 'Greenbooks editore', 2020, '978-8832957402'),
('Crime et Châtiment', 'Editions Humanis', 2012, '979-1021900486'),
('La Grande Traversée', 'Seuil Jeunesse', 2014, '979-1023500448'),
('Niourk', 'French Pulp éditions', 2018, '979-1025100639');

-- --------------------------------------------------------

--
-- Structure de la table `usager`
--

CREATE TABLE `usager` (
  `nom` varchar(90) NOT NULL,
  `prenom` varchar(90) NOT NULL,
  `adresse` varchar(300) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `code_barre` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `usager`
--

INSERT INTO `usager` (`nom`, `prenom`, `adresse`, `cp`, `ville`, `email`, `code_barre`) VALUES
('BERNARD', 'STÉPHANE', '131, Place de la Mairie', '75015', 'Paris', 'sbernard2@chezmoi.net', '035184062854281'),
('DUBOIS', 'PHILIPPE', '35, Rue du Moulin', '75014', 'Paris', 'pdubois5@chezmoi.net', '137332830764072'),
('MICHEL', 'VALÉRIE', '104, Rue du Stade', '75013', 'Paris', 'vmichel5@monmail.com', '199614051174633'),
('MOREAU', 'ALAIN', '48, Rue du Château', '75005', 'Paris', 'amoreau1@abc.de', '421921003090881'),
('ROBERT', 'PASCAL', '95, Rue de la Gare', '75005', 'Paris', 'probert9@monmail.com', '533299198788609'),
('FOURNIER', 'DAVID', '157, Rue de la Fontaine', '75007', 'Paris', 'dfournier4@abc.de', '612978231522917'),
('SIMON', 'SANDRINE', '45, Rue du Château', '75020', 'Paris', 'ssimon2@abc.de', '654834075188732'),
('DURAND', 'JULIEN', '183, Rue de la Gare', '75019', 'Paris', 'jdurand9@email.fr', '782124241492509'),
('LAURENT', 'FRANÇOISE', '90, Rue Principale', '75005', 'Paris', 'flaurent3@monmail.com', '917547585216771'),
('PETIT', 'SÉBASTIEN', '5, Rue du Stade', '75012', 'Paris', 'spetit4@email.fr', '934701281931582');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auteur`
--
ALTER TABLE `auteur`
  ADD PRIMARY KEY (`a_id`);

--
-- Index pour la table `auteur_de`
--
ALTER TABLE `auteur_de`
  ADD PRIMARY KEY (`a_id`,`isbn`),
  ADD KEY `fk_isbn` (`isbn`);

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `fk_usager_code_barre` (`code_barre`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`isbn`);

--
-- Index pour la table `usager`
--
ALTER TABLE `usager`
  ADD PRIMARY KEY (`code_barre`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auteur_de`
--
ALTER TABLE `auteur_de`
  ADD CONSTRAINT `fk_auteur_id` FOREIGN KEY (`a_id`) REFERENCES `auteur` (`a_id`),
  ADD CONSTRAINT `fk_isbn` FOREIGN KEY (`isbn`) REFERENCES `livre` (`isbn`);

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `fk_livre_isbn` FOREIGN KEY (`isbn`) REFERENCES `livre` (`isbn`),
  ADD CONSTRAINT `fk_usager_code_barre` FOREIGN KEY (`code_barre`) REFERENCES `usager` (`code_barre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
