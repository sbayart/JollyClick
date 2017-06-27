-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2017 at 04:04 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `JollyClick`
--

-- --------------------------------------------------------

--
-- Table structure for table `clicker_skills`
--

CREATE TABLE `clicker_skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `valeur` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `skill_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clicker_skills`
--

INSERT INTO `clicker_skills` (`id`, `user_id`, `valeur`, `position`, `skill_id`) VALUES
(1, 1, 40, 1, 38),
(2, 2, 40, 1, 38),
(3, 3, 40, 1, 38),
(4, 4, 40, 1, 961),
(5, 5, 40, 1, 961),
(6, 6, 40, 1, 961),
(7, 7, 40, 1, 984),
(8, 8, 40, 1, 984),
(9, 9, 40, 1, 628),
(10, 10, 40, 1, 992),
(11, 1, 40, 1, 883),
(12, 2, 40, 1, 883),
(13, 3, 40, 1, 883),
(14, 4, 40, 1, 893),
(15, 5, 40, 1, 893),
(16, 6, 40, 1, 893),
(17, 7, 40, 1, 916),
(18, 8, 40, 1, 916),
(19, 9, 40, 1, 916),
(20, 1, 40, 1, 859),
(21, 2, 40, 1, 868),
(22, 3, 40, 1, 829),
(23, 4, 40, 1, 784),
(24, 5, 40, 1, 807),
(25, 6, 40, 1, 754),
(26, 7, 40, 1, 748),
(27, 8, 40, 1, 720),
(28, 9, 40, 1, 984),
(29, 10, 40, 1, 617),
(30, 10, 40, 1, 584);

-- --------------------------------------------------------

--
-- Table structure for table `faves`
--

CREATE TABLE `faves` (
  `id_fave` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faves`
--

INSERT INTO `faves` (`id_fave`, `date`, `type`, `user_id`, `content_id`) VALUES
(1, '2017-06-26 00:00:00', '', 1, 2),
(2, '2017-06-26 00:00:00', '', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `liked_skills`
--

CREATE TABLE `liked_skills` (
  `ID_porteur` int(11) NOT NULL,
  `ID_skill` int(11) NOT NULL,
  `compteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id_parent` int(11) NOT NULL,
  `cat_position` int(11) NOT NULL,
  `code_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`cat_id`, `name`, `cat_id_parent`, `cat_position`, `code_name`) VALUES
(1, 'Art', 1, 1, 'art'),
(2, 'Artisanat', 2, 1, 'crafts'),
(3, 'Informatique', 12, 2, 'it'),
(4, 'Sciences', 4, 1, 'sciences'),
(5, 'Business', 5, 1, 'business'),
(6, 'Sport & Aventure', 6, 1, 'sport'),
(7, 'Solidarité', 7, 1, 'solidarity'),
(8, 'Alimentation', 8, 1, 'food'),
(9, 'Journalisme', 9, 1, 'journalism'),
(10, 'Politique', 10, 1, 'politics'),
(11, 'Edition', 11, 1, 'edition'),
(12, 'Technologie', 12, 1, 'technology'),
(13, 'Education', 13, 1, 'education'),
(14, 'Musique', 1, 2, 'music'),
(15, 'Cinéma', 1, 2, 'cinema'),
(16, 'Litterature', 1, 2, 'literature'),
(17, 'BD', 1, 2, 'comics'),
(18, 'Théâtre', 1, 2, 'theatre'),
(19, 'Danse', 1, 2, 'dance'),
(20, 'Cirque', 1, 2, 'circus'),
(21, 'Sculpture', 1, 2, 'sculpture'),
(22, 'Photographie', 1, 2, 'photography'),
(23, 'Peinture', 1, 2, 'painting'),
(24, 'Art urbain', 1, 2, 'urbanart'),
(25, 'Art numérique', 1, 2, 'digitalart'),
(26, 'Bois', 2, 2, 'wood'),
(27, 'Métaux', 2, 2, 'metals'),
(28, 'Céramique', 2, 2, 'ceramics'),
(29, 'Bijou', 2, 2, 'jewellery'),
(30, 'Mode', 2, 2, 'mode'),
(31, 'Textile', 2, 2, 'textile'),
(32, 'Cuir', 2, 2, 'leather'),
(33, 'Jouet', 2, 2, 'toys'),
(34, 'Papier', 2, 2, 'paper'),
(35, 'Verre', 2, 2, 'glass'),
(36, 'Architecture', 2, 2, 'architecture'),
(37, 'Web', 3, 2, 'web'),
(38, 'Développement', 3, 2, 'programming'),
(39, 'Reseaux', 3, 2, 'networks'),
(40, 'Sciences expérimentales', 4, 2, 'experimental-sciences'),
(41, 'Sciences humaines', 4, 2, 'social-sciences'),
(42, 'Sciences naturelles', 4, 2, 'natural-siences'),
(43, 'Sciences cognitives', 4, 2, 'cognitive-sciences'),
(44, 'Sciences formelles', 4, 2, 'formal-sciences'),
(45, 'Médecine', 4, 2, 'medicine'),
(46, 'Gestion & Finances', 5, 2, 'management-finance'),
(47, 'Marketing & Commerce', 5, 2, 'marketing-trade'),
(48, 'Communication & Graphisme', 5, 2, 'communication-graphic-design'),
(49, 'Droit', 5, 2, 'right'),
(50, 'Administration', 5, 2, 'administration'),
(51, 'Sport', 6, 2, 'sports'),
(52, 'Aventure', 6, 2, 'adventure'),
(53, 'Humanitaire', 7, 2, 'humanitarianism'),
(54, 'Social', 7, 2, 'social'),
(55, 'Restauration', 8, 2, 'catering'),
(56, 'Gastronomie', 8, 2, 'gastronomy'),
(57, 'Production', 8, 2, 'production'),
(58, 'Education', 13, 2, 'education'),
(63, 'Associations', 63, 1, 'associations'),
(64, 'Spiritualité', 64, 1, 'spirituality'),
(65, 'Santé', 65, 1, 'health'),
(66, 'Environnement', 66, 1, 'environment'),
(67, 'Cosplay', 1, 2, 'cosplay'),
(68, 'Jeu vidéo', 12, 2, 'videogame');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skills_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skills_id`, `name`, `category_cat_id`) VALUES
(1, 'Accordéoniste', 14),
(2, 'Alto', 14),
(4, 'Balafoniste', 14),
(5, 'Baryton', 14),
(6, 'Bassiste', 14),
(7, 'Bassoniste', 14),
(8, 'Batteur', 14),
(10, 'Chanteur', 14),
(11, 'Chef d\'orchestre', 14),
(12, 'Chanteur de choeur', 14),
(16, 'Compositeur', 14),
(17, 'Contrebassiste', 14),
(18, 'Corniste', 14),
(19, 'Cymbaliste', 14),
(20, 'Flutiste', 14),
(22, 'Guitariste', 14),
(23, 'Harmoniciste', 14),
(24, 'Harpiste', 14),
(26, 'Joueur de banjo', 14),
(27, 'Joueur de cornemuse', 14),
(29, 'Joueur de didgeridoo', 14),
(30, 'Joueur de lyre', 14),
(31, 'Joueur de tam-tam', 14),
(32, 'Joueur de triangle', 14),
(33, 'Joueur de ukulélé', 14),
(34, 'Mandoliniste', 14),
(35, 'Organiste', 14),
(36, 'Parolier', 14),
(37, 'Percussionniste', 14),
(38, 'Pianiste', 14),
(39, 'Saxophoniste', 14),
(41, 'Soprane', 14),
(42, 'Ténor', 14),
(43, 'Tromboniste', 14),
(44, 'Trompettiste', 14),
(45, 'Tubiste', 14),
(46, 'Violiste', 14),
(47, 'Violoncelliste', 14),
(48, 'Violoniste', 14),
(49, 'Accessoiriste', 15),
(50, 'Acteur', 15),
(51, 'Assistant opérateur', 15),
(52, 'Agent', 15),
(53, 'Assistant de production', 15),
(54, 'Assistant opérateur', 15),
(55, 'Auteur de sous-titrage', 15),
(56, 'Bruiteur', 15),
(57, 'Cadreur', 15),
(58, 'Chargé de production', 15),
(59, 'Chef décorateur', 15),
(61, 'Coiffeur', 15),
(62, 'Costumier et habilleuse', 15),
(63, 'Dialoguiste', 15),
(64, 'Directeur de casting', 15),
(66, 'Directeur de production', 15),
(67, 'Directeur technique', 15),
(68, 'Ensemblier', 15),
(73, 'Ingénieur de la vision', 15),
(74, 'Ingénieur du son', 15),
(75, 'Figurant', 15),
(76, 'Machiniste', 15),
(77, 'Maquilleur', 15),
(79, 'Monteur', 15),
(80, 'Monteur son', 15),
(82, 'Opérateur steadicam', 15),
(83, 'Perchman', 15),
(84, 'Photographe de plateau', 15),
(85, 'Projectionniste', 15),
(86, 'Réalisateur', 15),
(87, 'Régisseur', 15),
(89, 'Scénariste', 15),
(94, 'Ecrivain', 16),
(95, 'Poète', 16),
(96, 'Libraire', 16),
(97, 'Nouvelliste', 16),
(98, 'Ecrivain Jeunesse', 16),
(99, 'Essayiste', 16),
(100, 'Conteur', 16),
(101, 'Biographe', 16),
(102, 'Pamphlétaire', 16),
(103, 'Animateur 2D', 17),
(104, 'Animateur 3D', 17),
(105, 'Animateur infographiste', 17),
(106, 'Animateur traditionnel', 17),
(107, 'Graphiste multimédia', 17),
(108, 'Auteur de BD', 17),
(109, 'Scénariste 3D', 17),
(110, 'Coloriste de BD', 17),
(111, 'Dessinateur publicitaire', 17),
(112, 'Graphiste', 17),
(113, 'Illustrateur', 17),
(114, 'Layout man', 17),
(116, 'Scénariste BD', 17),
(118, 'Acteur', 18),
(120, 'Agent artistique', 18),
(121, 'Bruiteur', 18),
(123, 'Coiffeur', 18),
(124, 'Costumier', 18),
(125, 'Critique dramatique', 18),
(126, 'Décorateur', 18),
(128, 'Dramaturge', 18),
(129, 'Éclairagiste', 18),
(130, 'Figurant', 18),
(131, 'Habilleuse', 18),
(132, 'Machiniste', 18),
(133, 'Metteur en scène', 18),
(134, 'Régisseur', 18),
(139, 'Boogie', 19),
(140, 'Breakdance', 19),
(142, 'Capoeira', 19),
(144, 'Claquette', 19),
(145, 'Contemporain', 19),
(146, 'Country', 19),
(147, 'Disco', 19),
(148, 'Electro', 19),
(149, 'Flamenco', 19),
(152, 'Jazz', 19),
(154, 'Lambada', 19),
(155, 'Mambo', 19),
(156, 'Merengue', 19),
(157, 'Rumba', 19),
(158, 'Salsa', 19),
(159, 'Slow', 19),
(160, 'Swing', 19),
(161, 'Tango', 19),
(162, 'Valse', 19),
(163, 'Acrobate', 20),
(164, 'Clown', 20),
(165, 'Contorsionniste', 20),
(166, 'Dompteur', 20),
(167, 'Dresseur d animaux', 20),
(169, 'Équilibriste', 20),
(170, 'Jongleur', 20),
(171, 'Magicien', 20),
(172, 'Porteur', 20),
(173, 'Trapéziste', 20),
(174, 'Voltigeur', 20),
(175, 'Sculpteur', 21),
(176, 'Photographe', 22),
(177, 'Peintre', 23),
(178, '3D Street artist', 24),
(179, 'Afficheur', 24),
(180, 'Artiste d intervention', 24),
(181, 'Colleur', 24),
(182, 'Créateur de pochoir', 24),
(183, 'Taggeur', 24),
(184, 'Installateur de rue', 24),
(185, 'Monteur vidéo', 24),
(186, 'Muraliste', 24),
(187, 'Sculpteur éphémère', 24),
(188, 'Sticker artist', 24),
(189, 'Tape artiste ', 24),
(192, 'Artiste fractal', 25),
(194, 'Estampeur numérique', 25),
(195, 'Game designer', 25),
(197, 'Imprimeur 3D', 25),
(198, 'Programmeur', 12),
(199, 'Pure data artist', 25),
(200, 'Synthétiseur d\'image 3D', 25),
(203, 'Chaisier', 26),
(205, 'Ebeniste', 26),
(206, 'Encadreur', 26),
(207, 'Facteur d\'instruments', 26),
(208, 'Luthier', 26),
(210, 'Pipier', 26),
(211, 'Restaurateur', 26),
(213, 'Sculpteur sur bois', 26),
(214, 'Tonnelier', 26),
(215, 'Tourneur sur bois', 26),
(216, 'Vannier', 26),
(217, 'Soudeur', 27),
(221, 'Ciseleur', 27),
(222, 'Coutelier', 27),
(224, 'Émailleur sur métal', 27),
(226, 'Ferronnier-forgeron', 27),
(227, 'Fondeur', 27),
(231, 'Graveur', 27),
(232, 'Modeleur mouleur', 27),
(237, 'Céramiste', 28),
(239, 'Modeleur', 28),
(240, 'Mouleur', 28),
(241, 'Porcelainier', 28),
(242, 'Potier', 28),
(248, 'Bijoutier', 29),
(249, 'Bijoutier fantaisie', 29),
(253, 'Émailleur', 29),
(256, 'Graveur', 29),
(259, 'Horloger', 29),
(260, 'Joaillier', 29),
(262, 'Orfèvre', 29),
(264, 'Sertisseur', 29),
(266, 'Chapelier', 30),
(268, 'Couturier', 30),
(269, 'Styliste', 30),
(270, 'Éventailliste', 30),
(273, 'Lunetier', 30),
(274, 'Modéliste', 30),
(275, 'Modiste', 30),
(276, 'Parurier floral', 30),
(277, 'Plumassier', 30),
(278, 'Tailleur', 30),
(279, 'Modèle', 30),
(280, 'Brodeur', 31),
(281, 'Dentellier', 31),
(282, 'Tulliste', 31),
(284, 'Plisseur', 31),
(286, 'Sérigraphe', 31),
(287, 'Tisserand', 31),
(288, 'Bottier', 32),
(290, 'Fourreur', 32),
(292, 'Gantier', 32),
(294, 'Malletier', 32),
(295, 'Maroquinier', 32),
(298, 'Sellier', 32),
(299, 'Tanneur', 32),
(300, 'Taxidermiste', 32),
(301, 'Charron', 33),
(303, 'Fabricant de figurines', 33),
(305, 'Fabricant de jouets', 33),
(306, 'Fabricant de manèges', 33),
(307, 'Fabricant de maquettes', 33),
(308, 'Fabricant de marionnettes', 33),
(309, 'Fabricant de poupées', 33),
(310, 'Calligraphe', 34),
(311, 'Cartonnier', 34),
(315, 'Enlumineur', 34),
(316, 'Fabricant de papier', 34),
(321, 'Imagier au pochoir', 34),
(322, 'Imprimeur', 34),
(328, 'Relieur', 34),
(330, 'Verrier', 35),
(332, 'Verrier décorateur', 35),
(333, 'Verrier fondeur', 35),
(334, 'Architecte', 36),
(335, 'Ardoisier', 36),
(336, 'Briquetier', 36),
(338, 'Charpentier', 36),
(339, 'Chauffagiste', 36),
(340, 'Chaumier', 36),
(341, 'Couvreur', 36),
(344, 'Échafaudeur', 36),
(345, 'Electricien', 36),
(350, 'Fontainier', 36),
(351, 'Ingénieur', 36),
(352, 'Jardinier', 36),
(355, 'Maçon', 36),
(356, 'Maître-verrier', 36),
(357, 'Marbrier', 36),
(358, 'Menuisier', 36),
(359, 'Métallier', 36),
(361, 'Parqueteur', 36),
(363, 'Plaquiste', 36),
(364, 'Plombier ', 36),
(365, 'Ramoneur', 36),
(367, 'Sculpteur sur pierre', 36),
(368, 'Serrurier', 36),
(369, 'Tailleur de pierre', 36),
(371, 'Tuilier', 36),
(372, 'UX designer', 37),
(373, 'Administrateur système sécurité', 37),
(374, 'Consultant web analytique', 37),
(375, 'Créateur de modules', 37),
(376, 'Créateur de site internet', 37),
(377, 'Analyste data', 37),
(378, 'Drupal', 37),
(379, 'Growth hacker', 37),
(381, 'Installateur de script', 37),
(382, 'Intégration HTML', 37),
(383, 'Joomla', 37),
(385, 'Porteur de projet web', 37),
(386, 'Rédacteur de contenu', 37),
(387, 'Responsable emailing,', 37),
(388, 'SaaS', 37),
(389, 'Spip', 37),
(390, 'UI designer', 37),
(391, 'Web marketeur', 37),
(392, 'Référenceur web', 37),
(393, 'Webmaster', 37),
(395, 'Wordpress', 37),
(396, 'Adobe (Flash, Flex, Air)', 38),
(397, 'Agile/Scrum', 38),
(398, 'Algorithme statistique matlab', 38),
(399, 'Application Android', 38),
(400, 'Application Facebook', 38),
(401, 'Application Iphone', 38),
(402, 'Application mobile', 38),
(404, 'Back End', 38),
(405, 'Bitcoin et crypto-monnaie', 38),
(406, 'C/C++', 38),
(407, 'Coldfusion', 38),
(408, 'Cordova phonegap', 38),
(409, 'Data base (SGBD)', 38),
(410, 'Delphi', 38),
(411, 'Développement BDD', 38),
(412, 'Django', 38),
(413, 'Framework (Zend, Symphony)', 38),
(414, 'Front End', 38),
(415, 'Développeur fullstack', 38),
(416, 'J2EE/JSP', 38),
(417, 'Java', 38),
(418, 'Javascript/Ajax/JQuery', 38),
(419, 'Développeur de jeux vidéo', 38),
(420, 'Linux', 38),
(421, 'Microsoft .Net/C#/ASP', 38),
(422, 'MS Office, Visual Basic', 38),
(423, 'Node.js', 38),
(424, 'Domotique', 38),
(425, 'Perl', 38),
(426, 'PHP/MySQL', 38),
(427, 'POO', 38),
(428, 'Python', 38),
(429, 'Ruby on Rails', 38),
(430, 'Smartwatches', 38),
(431, 'Windev/Webdev', 38),
(433, 'Xamarin', 38),
(434, 'Chimiste', 40),
(435, 'Chimiste inorganique', 40),
(436, 'Chimiste organique', 40),
(437, 'Physicien', 40),
(438, 'Physicien nucléaire', 40),
(439, 'Physicien ondulatoire', 40),
(440, 'Physicien quantique', 40),
(441, 'Thermochimiste', 40),
(442, 'Thermophysicien', 40),
(443, 'Anthropologue', 41),
(444, 'Archéologie', 41),
(445, 'Criminologue', 41),
(446, 'Économiste', 41),
(447, 'Épistémologue', 41),
(448, 'Ethnologue', 41),
(449, 'Historien', 41),
(450, 'Musicologue', 41),
(451, 'Paléoanthropologue', 41),
(452, 'Philosophe', 41),
(453, 'Sémiologue', 41),
(454, 'Sociologue', 41),
(455, 'Théologue', 41),
(456, 'Agroécologue', 42),
(457, 'Agronome', 42),
(458, 'Anatomiste', 42),
(459, 'Astrochimiste', 42),
(460, 'Astronome', 42),
(461, 'Astrophysicien', 42),
(462, 'Biochimiste', 42),
(463, 'Bioclimatologue', 42),
(464, 'Biogéographiste', 42),
(465, 'Biologiste', 42),
(467, 'Biophysicien', 42),
(468, 'Botaniste', 42),
(469, 'Climatologue', 42),
(472, 'Écophysiologue', 42),
(473, 'Écotoxicologue', 42),
(474, 'Embryologue', 42),
(475, 'Entomologue', 42),
(476, 'Géochimiste', 42),
(477, 'Géologue', 42),
(478, 'Géophysicien', 42),
(479, 'Généticien', 42),
(480, 'Herpétologue', 42),
(481, 'Histologue', 42),
(482, 'Hydrobiologue', 42),
(483, 'Hydrogéologue', 42),
(484, 'Hydrologue', 42),
(487, 'Météorologue', 42),
(488, 'Microbiologiste', 42),
(489, 'Microbiologiste des sols', 42),
(490, 'Minéralogue', 42),
(491, 'Mycologue', 42),
(492, 'Océanographiste', 42),
(495, 'Paléontologue', 42),
(496, 'Pédologue', 42),
(497, 'Pétrologue', 42),
(498, 'Pharmacologue', 42),
(499, 'Physiologue', 42),
(500, 'Sédimentologue', 42),
(501, 'Sismologue', 42),
(502, 'Sexologue', 42),
(503, 'Spéléologue', 42),
(504, 'Toxicologue', 42),
(505, 'Virologue', 42),
(506, 'Volcanologue', 42),
(507, 'Zoologue', 42),
(508, 'Cogniticien', 43),
(509, 'Comportementaliste', 43),
(510, 'Linguiste', 43),
(511, 'Neurologue', 43),
(512, 'Psychanalyste', 43),
(513, 'Psychologue', 43),
(514, 'Psychopathologiste', 43),
(515, 'Psychophysiologiste', 43),
(517, 'Mathématicien', 44),
(518, 'Logicien', 44),
(519, 'Géomètre', 44),
(520, 'Informaticien', 44),
(521, 'Topologicien', 44),
(522, 'Statisticien', 44),
(523, 'Addictologue', 45),
(524, 'Alcoologue', 45),
(525, 'Allergologue', 45),
(526, 'Andrologue', 45),
(527, 'Angiologue', 45),
(528, 'Cancérologue', 45),
(529, 'Cardiologue', 45),
(531, 'Chirurgien', 45),
(532, 'Dermatologue', 45),
(533, 'Diabétologue', 45),
(534, 'Endocrinologue', 45),
(535, 'Gynécologue', 45),
(536, 'Hématologue', 45),
(538, 'Immunologue', 45),
(539, 'Infectiologue', 45),
(540, 'Infirmière', 45),
(541, 'Médecin d\'urgence', 45),
(542, 'Médecin du travail', 45),
(543, 'Médecin esthétique', 45),
(544, 'Médecin généraliste', 45),
(545, 'Néphrologue', 45),
(546, 'Neurologue', 45),
(547, 'Nutritionniste', 45),
(548, 'Obstétricien', 45),
(549, 'Odontologue', 45),
(550, 'Ophtalmologue', 45),
(551, 'Orthopède', 45),
(553, 'Pédiatre', 45),
(554, 'Pharmacien', 45),
(555, 'Pneumologue', 45),
(556, 'Psychiatre', 45),
(557, 'Radiologue', 45),
(558, 'Rhumatologue', 45),
(559, 'Stomatologie', 45),
(560, 'Thérapeute', 45),
(561, 'Toxicologue', 45),
(562, 'Traumatologue', 45),
(563, 'Urologue', 45),
(564, 'Vénérologue', 45),
(565, 'Vétérinaire', 45),
(566, 'Chargé d\'études', 46),
(567, 'Analyste financier', 46),
(569, 'Assistant comptable', 46),
(570, 'Assistant de gestion', 46),
(571, 'Assistant Import-Export', 46),
(572, 'Assureur', 46),
(573, 'Auditeur comptable', 46),
(575, 'Chef comptable', 46),
(576, 'Commissaire aux comptes', 46),
(577, 'Comptable', 46),
(579, 'Contrôleur de gestion', 46),
(581, 'Expert comptable', 46),
(582, 'Gestionnaire de patrimoine', 46),
(583, 'Ingénieur d\'affaires', 46),
(584, 'Notaire', 46),
(585, 'Office manager', 46),
(586, 'Secrétaire comptable ', 46),
(587, 'Trader', 46),
(588, 'Administrateur des ventes', 47),
(589, 'Business developper', 47),
(590, 'Chargé d\'études marketing', 47),
(591, 'Chargé d\'études média', 47),
(592, 'Chargé de production', 47),
(593, 'Chargé de programmation', 47),
(594, 'Chef de produit marketing', 47),
(595, 'Chef de publicité', 47),
(596, 'Commercial', 47),
(597, 'Directeur marketing ', 47),
(598, 'Manager de marque', 47),
(599, 'Planner stratégique', 47),
(600, 'Responsable clientèle', 47),
(603, 'Responsable webmarketing', 47),
(604, 'Planneur stratégique', 48),
(605, 'Chargé d\'étude', 48),
(606, 'Chargé de RP', 48),
(607, 'Community manager', 48),
(608, 'Concepteur multimédia', 48),
(609, 'Directeur artistique', 48),
(610, 'Directeur clientèle', 48),
(611, 'Graphiste print', 48),
(612, 'Infographiste', 48),
(613, 'Organisateur événementiel', 48),
(614, 'Média planneur', 48),
(615, 'Publicitaire', 48),
(617, 'Webdesigner', 48),
(618, 'Actuaire', 49),
(622, 'Avocat', 49),
(623, 'Clerc de notaire', 49),
(624, 'Commissaire priseur', 49),
(625, 'Contrôleur du travail', 49),
(626, 'Fiscaliste', 49),
(627, 'Greffier', 49),
(628, 'Huissier de justice', 49),
(629, 'Juge', 49),
(630, 'Juge pour enfants', 49),
(631, 'Juriste', 49),
(632, 'Officier d\'État civil', 49),
(633, 'Procureur', 49),
(634, 'Secrétaire juridique', 49),
(635, 'Gestionnaire de paie', 50),
(637, 'Gestionnaire RH', 50),
(638, 'Aérobic', 51),
(639, 'Aïkidoka', 51),
(640, 'Archer', 51),
(641, 'Athlète', 51),
(642, 'Basketteur', 51),
(643, 'Biathlonien', 51),
(644, 'BMX-iste', 51),
(645, 'Bobsleigheur', 51),
(646, 'Bodybuildeur', 51),
(647, 'Bouliste', 51),
(648, 'Bowleur', 51),
(649, 'Boxeur', 51),
(650, 'Catcheur', 51),
(651, 'Cavalier', 51),
(653, 'Coureur', 51),
(654, 'Coureur automobile', 51),
(655, 'Coureur d\'orientation', 51),
(656, 'Cycliste', 51),
(657, 'Décathlonien', 51),
(658, 'Escrimeur', 51),
(659, 'Floorballeur', 51),
(661, 'Footballeur', 51),
(664, 'Futsaleur', 51),
(665, 'Golfeur', 51),
(666, 'Gymnaste', 51),
(667, 'Haltérophiliste', 51),
(668, 'Handballeur', 51),
(669, 'Hockeyeur sur gazon', 51),
(670, 'Hockeyeur sur glace', 51),
(671, 'Horse-balleur', 51),
(672, 'Joggeur', 51),
(673, 'Joueur d\'e-sport', 51),
(674, 'Joueur d\'échecs', 51),
(675, 'Joueur de Badminton', 51),
(676, 'Joueur de Baseball', 51),
(677, 'Joueur de Billard', 51),
(678, 'Joueur de Cricket', 51),
(679, 'Joueur de Curling', 51),
(680, 'Joueur de Hurling', 51),
(681, 'Joueur de Polo', 51),
(682, 'Joueur de Water polo', 51),
(683, 'Judoka', 51),
(684, 'Karateka', 51),
(685, 'Kendoka', 51),
(686, 'Kick-boxeur', 51),
(687, 'Kin-balleur', 51),
(688, 'Kitesurfeur', 51),
(689, 'Krav maga', 51),
(690, 'Kung fu', 51),
(691, 'Lanceur de marteau', 51),
(692, 'Lanceur du javelot', 51),
(693, 'Lugiste de course', 51),
(694, 'Lutteur', 51),
(695, 'Marathonien', 51),
(696, 'Marcheur', 51),
(697, 'Motocrosseur', 51),
(699, 'Nageur', 51),
(700, 'Nageur synchronisé', 51),
(701, 'Navigateur', 51),
(702, 'Paddleur', 51),
(703, 'Paintballeur', 51),
(704, 'Patineur', 51),
(705, 'Patineur artistique', 51),
(706, 'Patineur de vitesse', 51),
(708, 'Pêcheur sportif', 51),
(710, 'Pongiste', 51),
(711, 'Rameur', 51),
(712, 'Rugbyman à V', 51),
(713, 'Rugbyman à XIII', 51),
(714, 'Rugbyman à XV', 51),
(715, 'Skateur', 51),
(716, 'Ski Freestyleur', 51),
(717, 'Skieur alpin', 51),
(718, 'Skieur de fond', 51),
(719, 'Skieur nautique', 51),
(720, 'Skieur nordique', 51),
(721, 'Slamballeur', 51),
(722, 'Snowboardeur', 51),
(723, 'Softballeur', 51),
(724, 'Squasheur', 51),
(725, 'Sumo', 51),
(726, 'Surfeur', 51),
(727, 'Tae Bo', 51),
(728, 'Taekwondo', 51),
(729, 'Tai Chi', 51),
(730, 'Taihojutsu', 51),
(731, 'Tchoukballeur', 51),
(732, 'Tennisman', 51),
(733, 'Tireur', 51),
(734, 'Triathlonien', 51),
(735, 'Volleyballeur', 51),
(736, 'Vététiste', 51),
(737, 'Wakeboardeur', 51),
(738, 'Alpiniste', 52),
(739, 'Deltaplaneur', 52),
(740, 'Escaladeur', 52),
(741, 'Kayakiste', 52),
(742, 'Parachutiste', 52),
(743, 'Parapentiste', 52),
(744, 'Parkouriste', 52),
(745, 'Pilote d\'ULM', 52),
(746, 'Plongeur', 52),
(747, 'Rafteur', 52),
(748, 'Randonneur', 52),
(749, 'Spéléologue', 52),
(750, 'Affréteur', 53),
(751, 'Ambulancier', 53),
(752, 'Réanimateur', 53),
(753, 'Bénévole', 53),
(754, 'Chef de mission', 53),
(755, 'Chirurgien urgentiste', 53),
(756, 'Collecteur de fonds', 53),
(757, 'Conducteur routier', 53),
(759, 'Conseiller en microcrédit', 53),
(760, 'Coordinateur', 53),
(761, 'Développeur humanitaire', 53),
(763, 'Enseignant', 53),
(764, 'Hydrogéologue', 53),
(765, 'Infirmier', 53),
(767, 'Ingénieur sécurité sanitaire', 53),
(768, 'Interprète', 53),
(769, 'Logisticien', 53),
(770, 'Maître-chien', 53),
(771, 'Nutritionniste', 53),
(772, 'Pédologue', 53),
(773, 'Pilote d\'avion', 53),
(774, 'Pilote d\'hélicoptère', 53),
(775, 'Pisteur secouriste', 53),
(776, 'Professeur de langue des signes', 53),
(777, 'Responsable logistique', 53),
(778, 'Sage-femme', 53),
(779, 'Sapeur-pompier', 53),
(780, 'Technicien d\'intervention sociale', 53),
(781, 'Technicien de la qualité de l\'eau', 53),
(782, 'Technicien eau et installations', 53),
(783, 'Technicien traitement déchets', 53),
(784, 'Accompagnateur à la mobilité', 54),
(785, 'Agent de prévention', 54),
(787, 'Agent des écoles maternelles', 54),
(788, 'Assistant médico-psychologique', 54),
(789, 'Animateur enfant', 54),
(790, 'Animateur socioculturel', 54),
(791, 'Assistant de service social', 54),
(792, 'Assistant maternel', 54),
(793, 'Auxiliaire de vie', 54),
(794, 'Conseiller conjugal et familial', 54),
(796, 'Conseiller d\'insertion sociale', 54),
(797, 'Conseiller en économie familiale', 54),
(798, 'Éducateur de jeunes enfants', 54),
(799, 'Éducateur spécialisé', 54),
(800, 'Médiateur social', 54),
(801, 'Barman', 55),
(802, 'Chef de cuisine', 55),
(803, 'Chef de partie', 55),
(804, 'Sommelier', 55),
(805, 'Commis de cuisine', 55),
(806, 'Commis de salle', 55),
(807, 'Crêpier', 55),
(808, 'Cuisinier', 55),
(810, 'Économe', 55),
(811, 'Garçon de café', 55),
(812, 'Hôtesse d\'accueil', 55),
(813, 'Pizzaïolo', 55),
(814, 'Plongeur', 55),
(816, 'Second de cuisine', 55),
(817, 'Serveur', 55),
(819, 'Biscuitier', 56),
(820, 'Boucher', 56),
(821, 'Boulanger', 56),
(822, 'Caviste', 56),
(823, 'Charcutier', 56),
(824, 'Chocolatier', 56),
(825, 'Fromager', 56),
(826, 'Glacier', 56),
(827, 'Nougatier', 56),
(828, 'Oenologue', 56),
(829, 'Pâtissier', 56),
(830, 'Poissonnier', 56),
(831, 'Sardinier', 56),
(832, 'Traiteur', 56),
(833, 'Agriculteur', 57),
(834, 'Apiculteur', 57),
(835, 'Arboriculteur', 57),
(837, 'Brasseur', 57),
(838, 'Céréalier', 57),
(839, 'Cidrier', 57),
(840, 'Éleveur de brebis', 57),
(841, 'Eleveur de lapin', 57),
(842, 'Héliciculteur', 57),
(843, 'Horticulteur', 57),
(844, 'Maraicher', 57),
(845, 'Meunier', 57),
(846, 'Pêcheur', 57),
(847, 'Pisciculteur', 57),
(848, 'Viticulteur', 57),
(849, 'Assistant d\'éducation', 58),
(850, 'Auxiliaire de vie scolaire', 58),
(851, 'Bibliothécaire', 58),
(852, 'Conseiller en orientation', 58),
(853, 'Directeur d\'école', 58),
(854, 'Documentaliste', 58),
(856, 'Maître de conférences', 58),
(857, 'Professeur des écoles', 58),
(859, 'Surveillant', 58),
(860, 'Agencier', 9),
(861, 'Animateur radio', 9),
(862, 'Chef d\'édition', 9),
(863, 'Chroniqueur presse', 9),
(864, 'Chroniqueur radio', 9),
(865, 'Correspondant', 9),
(866, 'Critique dramatique', 9),
(867, 'Critique musical', 9),
(868, 'Dessinateur de presse', 9),
(870, 'Envoyé spécial', 9),
(871, 'Journaliste d\'enquête', 9),
(872, 'Journaliste mode', 9),
(873, 'Journaliste politique', 9),
(874, 'Journaliste radio', 9),
(876, 'Journaliste sportif', 9),
(877, 'Journaliste web', 9),
(879, 'Présentateur TV', 9),
(880, 'Rédacteur', 9),
(881, 'Rédacteur en chef', 9),
(882, 'Reporter-photographe', 9),
(883, 'Secrétaire de rédaction', 9),
(884, 'Attaché d\'administration', 10),
(885, 'Attaché parlementaire', 10),
(886, 'Chargé du protocole', 10),
(887, 'Conseiller en organisation', 10),
(888, 'Conseiller expert', 10),
(889, 'Conseiller politique', 10),
(892, 'Préfet', 10),
(893, 'Chef de projet e-book', 11),
(894, 'Chef de projet numérique', 11),
(898, 'Conducteur de presse numérique', 11),
(899, 'Conducteur de presse offset', 11),
(900, 'Conservateur de bibliothèque', 11),
(901, 'Délégué commercial édition', 11),
(903, 'Directeur de collection', 11),
(904, 'Iconographe', 11),
(905, 'Lecteur Correcteur', 11),
(906, 'Libraire', 11),
(907, 'Maquettiste', 11),
(908, 'Média-planner', 11),
(909, 'Opérateur de saisie', 11),
(910, 'Opérateur en PAO', 11),
(911, 'Packager éditorial', 11),
(912, 'Secrétaire d\'édition', 11),
(913, 'Secrétaire de rédaction', 11),
(914, 'Traducteur', 11),
(915, 'Acousticien', 12),
(916, 'Aérodynamicien', 12),
(920, 'Analyste concepteur informatique', 12),
(921, 'Ascensoriste', 12),
(922, 'Assembleur mécanique de précision', 12),
(923, 'Bobinier en matériel électrique', 12),
(925, 'Chaudronnier', 12),
(926, 'Chef d\'atelier', 12),
(927, 'Coboticien', 12),
(928, 'Conducteur de ligne automatisée', 12),
(929, 'Constructeur automobile', 12),
(930, 'Contrôleur de gestion', 12),
(931, 'Designer industriel', 12),
(932, 'Directeur R&D', 12),
(934, 'Électricien industriel', 12),
(935, 'Ergonome', 12),
(936, 'Fraiseur industriel', 12),
(937, 'Hydraulicien', 12),
(938, 'Ingénieur aéronautique', 12),
(939, 'Ingénieur automaticien', 12),
(941, 'Ingénieur construction navale', 12),
(942, 'Ingénieur d\'essais', 12),
(944, 'Ingénieur électrotechnicien', 12),
(945, 'Ingénieur énergies renouvelables', 12),
(947, 'Ingénieur génie industriel', 12),
(952, 'Ingénieur nanotechnologie', 12),
(953, 'Ingénieur nucléaire', 12),
(955, 'Ingénieur systèmes', 12),
(956, 'Lamineur Étireur', 12),
(957, 'Mécancien aéronautique', 12),
(958, 'Mécanicien', 12),
(959, 'Mécatronicien', 12),
(960, 'Métallier Charpentier', 12),
(961, 'Micromécanicien', 12),
(962, 'Monteur', 12),
(963, 'Monteur Câbleur', 12),
(964, 'Opérateur de fusion', 12),
(965, 'Opérateur de production', 12),
(966, 'Opérateur Régleur', 12),
(967, 'Outilleur Mouliste', 12),
(968, 'Peintre industriel', 12),
(969, 'Polisseur sur métaux', 12),
(970, 'Projeteur', 12),
(971, 'Radioprotectionniste', 12),
(972, 'Roboticien', 12),
(973, 'Soudeur insutriel', 12),
(975, 'Technicien de forge', 12),
(976, 'Technicien électronicien', 12),
(979, 'Technicien mesures', 12),
(980, 'Technicien motoriste', 12),
(981, 'Tourneur industriel', 12),
(982, 'Tuyauteur industriel', 12),
(983, 'Joueur de djembé', 14),
(984, 'Dessinateur', 17),
(986, 'Cosplayeur', 67),
(987, 'Zouk', 19),
(988, 'Samba', 19),
(989, 'Directeur du crédit', 46),
(990, 'Sénateur', 10),
(991, 'Député', 10),
(992, 'Maire', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `credentials` int(11) NOT NULL DEFAULT '1',
  `capabilities` text COLLATE utf8_unicode_ci NOT NULL,
  `registration_date` datetime NOT NULL,
  `password_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validation_token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teamizy` int(11) NOT NULL DEFAULT '0',
  `announcement_read` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `credentials`, `capabilities`, `registration_date`, `password_token`, `validation_token`, `teamizy`, `announcement_read`) VALUES
(1, 'John', 'Doe', 'johndoe@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(2, 'Maria', 'Débé', 'mariadb@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(3, 'Gill', 'Derai', 'gillderai@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(4, 'Jean-michel', 'Breton', 'jmbreton@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(5, 'Lucas', 'Melton', 'lucmelton@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(6, 'Marie', 'xiaom', 'mariexiaom@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(7, 'Francois', 'desjardin', 'francoisdes@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(8, 'Georges', 'Abitbol', 'georgesabi@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(9, 'Jean-Marc', 'Fraday', 'jmfradai@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00'),
(10, 'Hirene', 'Golut', 'hireneg@hackathon.fr', '$2y$10$mbYYgkmR9Gjl.zm5RJSo8uM13CqJqHikNGyYgJ1d0U/ZIfJYCb9Vi', 1, '[\"view\", \"member\"]', '2017-06-26 10:26:27', NULL, NULL, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clicker_skills`
--
ALTER TABLE `clicker_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faves`
--
ALTER TABLE `faves`
  ADD PRIMARY KEY (`id_fave`);

--
-- Indexes for table `liked_skills`
--
ALTER TABLE `liked_skills`
  ADD PRIMARY KEY (`ID_porteur`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skills_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clicker_skills`
--
ALTER TABLE `clicker_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `faves`
--
ALTER TABLE `faves`
  MODIFY `id_fave` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skills_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=993;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;