-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Jeu 17 Mai 2018 à 21:59
-- Version du serveur :  5.7.22-0ubuntu0.17.10.1
-- Version de PHP :  7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `hackathon2`
--

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isOnBench` tinyint(1) NOT NULL,
  `universe_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `player`
--

INSERT INTO `player` (`id`, `name`, `image`, `gender`, `description`, `isOnBench`, `universe_id`, `team_id`) VALUES
(4, 'yoda', 'http://zupimages.net/viewer.php?id=18/20/oziy.jpg', 'male', 'Yoda était un individu d\'une espèce inconnue qui comptait parmi les maîtres Jedi les plus puissants et reconnus de toute l\'histoire de la galaxie, célèbre pour sa sagesse légendaire, sa maîtrise de la Force et ses talents au sabre laser.', 0, 4, 5),
(5, 'luke skywalker', 'http://zupimages.net/viewer.php?id=18/20/uq6o.jpg', 'male', 'Luke Skywalker est le personnage principal de la trilogie originale Star Wars. Il est le fils d\'Anakin Skywalker et de Padmé Amidala et le frère jumeau de la princesse Leia Organa.', 0, 4, 5),
(6, 'dark vador', 'http://zupimages.net/viewer.php?id=18/20/ateh.jpg', 'male', 'Anakin Skywalker était un Chevalier Jedi qui servit la République Galactique dans ses dernières années. Il devint par la suite le Seigneur Sith Dark Vador, second commandant de l\'Empire Galactique derrière son maître, Dark Sidious.', 0, 4, 5),
(7, 'sangoku', 'http://zupimages.net/viewer.php?id=18/20/xksy.jpg', 'male', 'Sangoku à la naissance n’était qu’un minable sans le moindre avenir comme le dit si bien son père Baddack. Sangoku fut peu après sa naissance envoyé sur Terre. À son arrivé il fut recueilli par San Gohan qui devint son grand-père adoptif, mais San Gohan a', 0, 3, 4),
(8, 'vegeta', 'http://zupimages.net/viewer.php?id=18/20/tqa6.jpeg', 'male', 'Vegeta est l’un des 7 derniers saïyens encore vivant. À sa première apparition on n’aurait jamais eu de doute au fait que Vegeta était un adversaire non seulement cruel ou sadique, mais aussi redoutable. Pourtant contre toute attente, Vegeta finira par co', 0, 3, 5),
(9, 'cell', 'http://zupimages.net/viewer.php?id=18/20/1lil.jpg', 'mutant', 'Cell est l\'un des trois antagonistes principaux de Dragon Ball Z avec Freezer et Boo. C\'est un humain artificiel de type évolutif créé par l\'ordinateur du Dr Gero. Il est un être humanoïde entièrement organique créé artificiellement, notamment par le biai', 0, 3, 5),
(10, 'superman', 'http://zupimages.net/viewer.php?id=18/20/63ht.jpg', 'male', 'Superman est grand, baraqué, il est brun aux yeux noirs. Il est vêtu d’une combinaison bleue avec « S » au niveau de la poitrine. Il a une cape rouge dont il ne se sépare jamais.', 0, 5, 3),
(11, 'flash', 'http://zupimages.net/viewer.php?id=18/06/mqdw.jpg', 'male', 'Flash est doué d’une vitesse de réaction et de déplacement proche de celle de la lumière, d’où son surnom d’homme le plus rapide du monde.', 0, 5, 5),
(12, 'doomsday', 'http://zupimages.net/viewer.php?id=18/20/lrl5.jpg', '?', 'Doomsday a été artificiellement créé par Bertron, un scientifique fou sans scrupules travaillant sur Krypton, le monde natal de Superman, bien que ni lui ni son créateur n\'aient été les Kryptoniens que nous connaissons (ceci s\'étant déroulé avant que la v', 0, 5, 3),
(13, 'groot', 'http://zupimages.net/viewer.php?id=18/20/6i7h.jpg', 'colosse', 'Groot est un « colosse floral », un extraterrstre végétal dont la planète d\'origine, X, fut découverte par les Krees. Encore enfant, il fut exilé de sa planète par les maitres-arbres, pour conduite violente.', 0, 2, 2),
(14, 'hulk', 'http://zupimages.net/viewer.php?id=18/20/an60.jpg', 'male', 'À l’origine, le corps de Hulk était gris, puis est devenu vert, comme nous le connaissons aujourd’hui. Au début, Banner ne se transformait en Hulk uniquement au coucher du soleil. Cependant, au fil des numéros, sa transformation se faisait après des modif', 0, 2, 2),
(15, 'rocket', 'http://zupimages.net/viewer.php?id=18/20/aghc.png', '?', 'Rocket Raccoon vient de Halfworld, une planète abandonnée, servant de maison de retraite pour une race humanoïde semblable aux humains. Ces aliens ont altéré génétiquement les animaux pour leur donner une intelligence humaine, de façon à ce qu\'ils servent', 0, 2, 2),
(16, 'seiya', 'http://zupimages.net/viewer.php?id=18/20/qg7x.jpeg', 'male', 'Seiya de Pégase est, comme son nom l\'indique, le héros principal de Saint Seiya. L\'histoire commence avec la fin de son entraînement puis suit les batailles qu\'il mène en compagnie de ses amis.', 0, 7, 7),
(17, 'shiryu', 'http://zupimages.net/viewer.php?id=18/20/ezmg.png', 'male', 'Shiryū, ancien Saint du Dragon, a perdu ses 5 sens lors d\'un combat contre Mars. Mais grâce à son Cosmos, il peut encore communiquer avec son fils Ryūhō, qu\'il a eu avec Shunrei. Plus tard dans l\'histoire, il reprend du service en tant que Gold Saint de l', 0, 7, 7),
(18, 'saga', 'http://zupimages.net/viewer.php?id=18/20/d7fs.jpg', 'male', 'Homme respecté et aimé de tous, réputé pour sa grande puissance et sa bonté ; Saga est proche de la perfection divine. Mais Saga cache son frère au point que personne, au Sanctuaire ou ailleurs, n\'a conscience de son existence', 0, 7, 7),
(19, 'harry potter', 'https://techcrunch.com/2017/11/08/niantics-follow-up-to-pokemon-go-will-be-a-harry-potter-ar-game-launching-in-2018/', 'male', 'harry potter', 0, 8, 8),
(20, 'dumbledore', 'http://harrypotter.wikia.com/wiki/Dumbledore_family', 'male', 'dumbledore', 0, 8, 8),
(21, 'voldemort', 'https://en.wikipedia.org/wiki/Lord_Voldemort', 'male', 'voldemort', 0, 8, 8),
(22, 'frodon', 'http://fr.jrrtolkien.wikia.com/wiki/Frodon_Sacquet', 'hobbit', 'frodon le hobbit', 0, 9, 9),
(23, 'aragorn', 'http://fr.jrrtolkien.wikia.com/wiki/Aragorn', 'male', 'aragorn', 0, 9, 9),
(24, 'gandalf', 'https://www.hobbydb.com/subjects/gandalf-character', 'male', 'gandalf', 0, 9, 9),
(25, 'capitain kirk', 'http://www.vulture.com/2015/07/was-captain-kirk-a-republican-shatner-says-nope.html', 'male', 'james T kirk', 0, 10, 10),
(26, 'spock', 'http://www.startrek.com/database_article/spock', 'vulcain', 'spock', 0, 10, 10),
(27, 'scotty', 'http://www.startrek.com/database_article/scott', 'male', 'scott \"scotty\" montgomery', 0, 10, 10),
(28, 'ryu', 'http://www.capcom-unity.com/street_fighter/go/thread/view/7411/625901/is-sakura-and-ryu-realted?liveView=1', 'male', 'ryu', 0, 11, 12),
(29, 'chun li', 'http://www.fanpop.com/clubs/chun-li/images/29679930/title/chun-li-pretty-photo', 'female', 'chun li', 0, 11, 12);

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `team`
--

INSERT INTO `team` (`id`, `name`, `image`) VALUES
(2, 'Avengers', 'http://via.placeholder.com/300x300'),
(3, 'DC', 'https://www.pentagram.com/work/dc-entertainment/story'),
(4, 'super saiyan', 'https://optimusjimbo.deviantart.com/art/Super-Saiyan-Baseball-Logo-199301355'),
(5, 'Jedi', 'https://www.cdiscount.com/maison/decoration-accessoires/sticker-autocollant-logo-jedi-starwars-star-wars/f-117634905-gtd3663961007586.html'),
(6, 'Matrix', 'https://www.redbubble.com/people/spy8/works/29628721-the-matrix-logo?p=metal-print'),
(7, 'Athena\'s knights', 'https://heroscontemporainsetpsychanalyse.wordpress.com/2012/10/02/les-chevaliers-du-zodiaque-ou-lhyperactivit/'),
(8, 'Team harry', 'https://www.aliexpress.com/item/Harry-Potter-Hogwarts-School-Logo-Multicolour-Tattoo-For-Body-Art-Painting-Body-Sticker-Nontoxic-and-Tasteless/767026046.html'),
(9, 'Ring community', 'http://cooldown.fr/news/lego-dimensions-le-seigneur-des-anneaux/'),
(10, 'star fleet', 'http://memory-alpha.wikia.com/wiki/Starfleet_insignia'),
(11, 'princess peach', 'https://twitter.com/peachnintendo'),
(12, 'street fighter', 'http://www.sfgalleries.net/art/sfex/'),
(13, 'black mamba', 'https://www.pinterest.com/pin/101964379033297411/'),
(14, 'Ripley', 'http://www.denofgeek.com/us/games/alien-isolation/237157/ellen-ripley-is-in-alien-isolation'),
(15, 'connor', 'http://www.sarahconnorfans.com/page/Sarah+Connor+Season+2'),
(16, 'transformers', 'http://glyos.wikia.com/wiki/Category:The_Transformers'),
(17, 'cowabunga', 'https://thiswonderfulword.com/2012/10/15/the-new-cowabunga/');

-- --------------------------------------------------------

--
-- Structure de la table `universe`
--

CREATE TABLE `universe` (
  `id` int(11) NOT NULL,
  `place` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `universe`
--

INSERT INTO `universe` (`id`, `place`, `name`, `description`, `image`) VALUES
(2, 'xandar', 'Marvel', 'Marvel', 'https://www.google.fr/imgres?imgurl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FSmFt46MElm4%2Fmaxresdefault.jpg&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DSmFt46MElm4&docid=rAFONbp7MGFpLM&tbnid=Hp7y2_pU9iThNM%3A&vet=12ahUKEwi_sdv4g43bAhVG7xQKHUSWCU44ZBAzK'),
(3, 'capsule corp city', 'dragon ball', 'dragon ball', 'https://commons.wikimedia.org/wiki/File:Dragonball_Anime-Serie_Original-Logo.svg'),
(4, 'Coruscant', 'star wars', 'star wars', 'https://commons.wikimedia.org/wiki/File:Star_Wars_Logo.svg'),
(5, 'metropolis', 'justice league', 'DC superheroes', 'https://www.youtube.com/watch?v=X4yL05SwaZg'),
(6, 'new york', 'matrix', 'matrix universe', 'https://www.google.fr/imgres?imgurl=https%3A%2F%2Fironmen.headwaterslife.org%2Fwp-content%2Fuploads%2F2018%2F01%2FMatrix-Background-Wallpaper.png&imgrefurl=https%3A%2F%2Fironmen.headwaterslife.org%2Fpersonal%2Fthe-matrix%2F&docid=nzfiOkTzLEAUvM&tbnid=fIzg'),
(7, 'sanctuary', 'chevalier du zodiaque', 'chevalier du zodiaque', 'https://www.google.fr/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Ffr%2F1%2F14%2FLes_Chevaliers_du_Zodiaque.png&imgrefurl=https%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FFichier%3ALes_Chevaliers_du_Zodiaque.png&docid=d14KPQv89QKCnM&tbnid=0V8LxXG'),
(8, 'poudlard', 'harry potter', 'harry potter', 'https://www.google.fr/imgres?imgurl=http%3A%2F%2F1000logos.net%2Fwp-content%2Fuploads%2F2017%2F02%2FHarry-Potter-Logo.png&imgrefurl=http%3A%2F%2F1000logos.net%2Fharry-potter-logo%2F&docid=K1PJdBe3G27v_M&tbnid=32AnoeonrKm_TM%3A&vet=10ahUKEwjFzJ72ho3bAhXMwB'),
(9, 'mordor', 'lord of the ring', 'lord of the ring', 'https://www.google.fr/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fdd%2Fb1%2Fa4%2Fddb1a4a72999261e754b325cb1a387d4.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F232850243208171984%2F&docid=SySK2c8Gg1iMoM&tbnid=a7QATWmxJLon8M%3A&vet=10ahU'),
(10, 'starfleet academy', 'star trek', 'star trek', 'http://sfwallpaper.com/categories/star-trek-logo-wallpaper.html'),
(11, 'Shadaloo', 'street fighter', 'street fighter', 'http://streetfighter.wikia.com/wiki/File:SF_logo.png'),
(12, 'hyrule', 'nintendo', 'mario and zelda', 'https://gamingbolt.com/nintendo-rebrands-returning-to-its-classic-red-logo'),
(13, 'tokyo', 'kill bill', 'kill  bill', 'https://anoanoanoano.deviantart.com/art/KILL-BILL-VOL-1-WALLPAPER-281834165'),
(14, 'los angeles', 'terminator', 'terminator', 'http://digitalcreativefront.blogspot.com/2015/07/terminator-genisys-review-thoughts-plot.html'),
(15, 'cybertron', 'transformers', 'transformers', 'https://wallpapercave.com/transformers-logo-wallpapers'),
(16, 'sewers of new york', 'TMNT', 'teanage mutant ninja turtle', 'http://logocomics.wikia.com/wiki/Teenage_Mutant_Ninja_Turtles'),
(17, 'nostromo space ship', 'alien', 'alien', 'https://www.behance.net/gallery/38280151/Alien-3-Logo');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98197A655CD9AF2` (`universe_id`),
  ADD KEY `IDX_98197A65296CD8AE` (`team_id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `universe`
--
ALTER TABLE `universe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `universe`
--
ALTER TABLE `universe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `FK_98197A65296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  ADD CONSTRAINT `FK_98197A655CD9AF2` FOREIGN KEY (`universe_id`) REFERENCES `universe` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
