-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: hackaton2
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamOne` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `teamTwo` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `score` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `nbPool` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isOnBench` tinyint(1) NOT NULL,
  `universe_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_98197A655CD9AF2` (`universe_id`),
  KEY `IDX_98197A65296CD8AE` (`team_id`),
  CONSTRAINT `FK_98197A65296CD8AE` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `FK_98197A655CD9AF2` FOREIGN KEY (`universe_id`) REFERENCES `universe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (4,'yoda','http://zupimages.net/viewer.php?id=18/20/oziy.jpg','male','Yoda était un individu d\'une espèce inconnue qui comptait parmi les maîtres Jedi les plus puissants et reconnus de toute l\'histoire de la galaxie, célèbre pour sa sagesse légendaire, sa maîtrise de la Force et ses talents au sabre laser.',0,4,5),(5,'luke skywalker','http://zupimages.net/viewer.php?id=18/20/uq6o.jpg','male','Luke Skywalker est le personnage principal de la trilogie originale Star Wars. Il est le fils d\'Anakin Skywalker et de Padmé Amidala et le frère jumeau de la princesse Leia Organa.',0,4,5),(6,'dark vador','http://zupimages.net/viewer.php?id=18/20/ateh.jpg','male','Anakin Skywalker était un Chevalier Jedi qui servit la République Galactique dans ses dernières années. Il devint par la suite le Seigneur Sith Dark Vador, second commandant de l\'Empire Galactique derrière son maître, Dark Sidious.',0,4,5),(7,'sangoku','http://zupimages.net/viewer.php?id=18/20/xksy.jpg','male','Sangoku à la naissance n’était qu’un minable sans le moindre avenir comme le dit si bien son père Baddack. Sangoku fut peu après sa naissance envoyé sur Terre. À son arrivé il fut recueilli par San Gohan qui devint son grand-père adoptif, mais San Gohan a',0,3,4),(8,'vegeta','http://zupimages.net/viewer.php?id=18/20/tqa6.jpeg','male','Vegeta est l’un des 7 derniers saïyens encore vivant. À sa première apparition on n’aurait jamais eu de doute au fait que Vegeta était un adversaire non seulement cruel ou sadique, mais aussi redoutable. Pourtant contre toute attente, Vegeta finira par co',0,3,5),(9,'cell','http://zupimages.net/viewer.php?id=18/20/1lil.jpg','mutant','Cell est l\'un des trois antagonistes principaux de Dragon Ball Z avec Freezer et Boo. C\'est un humain artificiel de type évolutif créé par l\'ordinateur du Dr Gero. Il est un être humanoïde entièrement organique créé artificiellement, notamment par le biai',0,3,5),(10,'superman','http://zupimages.net/viewer.php?id=18/20/63ht.jpg','male','Superman est grand, baraqué, il est brun aux yeux noirs. Il est vêtu d’une combinaison bleue avec « S » au niveau de la poitrine. Il a une cape rouge dont il ne se sépare jamais.',0,5,3),(11,'flash','http://zupimages.net/viewer.php?id=18/06/mqdw.jpg','male','Flash est doué d’une vitesse de réaction et de déplacement proche de celle de la lumière, d’où son surnom d’homme le plus rapide du monde.',0,5,5),(12,'doomsday','http://zupimages.net/viewer.php?id=18/20/lrl5.jpg','?','Doomsday a été artificiellement créé par Bertron, un scientifique fou sans scrupules travaillant sur Krypton, le monde natal de Superman, bien que ni lui ni son créateur n\'aient été les Kryptoniens que nous connaissons (ceci s\'étant déroulé avant que la v',0,5,3),(13,'groot','http://zupimages.net/viewer.php?id=18/20/6i7h.jpg','colosse','Groot est un « colosse floral », un extraterrstre végétal dont la planète d\'origine, X, fut découverte par les Krees. Encore enfant, il fut exilé de sa planète par les maitres-arbres, pour conduite violente.',0,2,2),(14,'hulk','http://zupimages.net/viewer.php?id=18/20/an60.jpg','male','À l’origine, le corps de Hulk était gris, puis est devenu vert, comme nous le connaissons aujourd’hui. Au début, Banner ne se transformait en Hulk uniquement au coucher du soleil. Cependant, au fil des numéros, sa transformation se faisait après des modif',0,2,2),(15,'rocket','http://zupimages.net/viewer.php?id=18/20/aghc.png','?','Rocket Raccoon vient de Halfworld, une planète abandonnée, servant de maison de retraite pour une race humanoïde semblable aux humains. Ces aliens ont altéré génétiquement les animaux pour leur donner une intelligence humaine, de façon à ce qu\'ils servent',0,2,2),(16,'seiya','http://zupimages.net/viewer.php?id=18/20/qg7x.jpeg','male','Seiya de Pégase est, comme son nom l\'indique, le héros principal de Saint Seiya. L\'histoire commence avec la fin de son entraînement puis suit les batailles qu\'il mène en compagnie de ses amis.',0,7,7),(17,'shiryu','http://zupimages.net/viewer.php?id=18/20/ezmg.png','male','Shiryū, ancien Saint du Dragon, a perdu ses 5 sens lors d\'un combat contre Mars. Mais grâce à son Cosmos, il peut encore communiquer avec son fils Ryūhō, qu\'il a eu avec Shunrei. Plus tard dans l\'histoire, il reprend du service en tant que Gold Saint de l',0,7,7),(18,'saga','http://zupimages.net/viewer.php?id=18/20/d7fs.jpg','male','Homme respecté et aimé de tous, réputé pour sa grande puissance et sa bonté ; Saga est proche de la perfection divine. Mais Saga cache son frère au point que personne, au Sanctuaire ou ailleurs, n\'a conscience de son existence',0,7,7),(19,'harry potter','https://techcrunch.com/2017/11/08/niantics-follow-up-to-pokemon-go-will-be-a-harry-potter-ar-game-launching-in-2018/','male','harry potter',0,8,8),(20,'dumbledore','http://harrypotter.wikia.com/wiki/Dumbledore_family','male','dumbledore',0,8,8),(21,'voldemort','https://en.wikipedia.org/wiki/Lord_Voldemort','male','voldemort',0,8,8),(22,'frodon','http://fr.jrrtolkien.wikia.com/wiki/Frodon_Sacquet','hobbit','frodon le hobbit',0,9,9),(23,'aragorn','http://fr.jrrtolkien.wikia.com/wiki/Aragorn','male','aragorn',0,9,9),(24,'gandalf','https://www.hobbydb.com/subjects/gandalf-character','male','gandalf',0,9,9),(25,'capitain kirk','http://www.vulture.com/2015/07/was-captain-kirk-a-republican-shatner-says-nope.html','male','james T kirk',0,10,10),(26,'spock','http://www.startrek.com/database_article/spock','vulcain','spock',0,10,10),(27,'scotty','http://www.startrek.com/database_article/scott','male','scott \"scotty\" montgomery',0,10,10),(28,'ryu','http://www.capcom-unity.com/street_fighter/go/thread/view/7411/625901/is-sakura-and-ryu-realted?liveView=1','male','ryu',0,11,12),(29,'chun li','http://www.fanpop.com/clubs/chun-li/images/29679930/title/chun-li-pretty-photo','female','chun li',0,11,12),(30,'Mr bison','https://comicvine.gamespot.com/forums/battles-7/m-bison-vs-mandrakk-530003/','male','Mr bison',0,11,12),(31,'mario','https://itunes.apple.com/us/app/super-mario-run/id1145275343?mt=8','male','mario the plumber',0,12,11),(32,'luigi','https://www.reddit.com/r/SuperMarioRun/comments/61tnur/super_luigi_run/','male','luigi the plumber',0,12,11),(33,'link','https://www.pinterest.com/kwaslemon/the-legend-of-zelda/','male','link the legend of zelda',0,12,11),(34,'ellen ripley','http://avp.wikia.com/wiki/Ellen_Ripley','female','ellen ripley',0,17,14),(35,'alien','https://wccftech.com/alien-shooter-fox/','mutant','alien',0,17,14),(36,'alien','http://avp.wikia.com/wiki/Newborn','mutant','alien',0,17,14),(37,'the bride','https://www.black-leatherjacket.com/the-bride-kill-bill-leather-jacket','female','Beatrix Kiddo',0,13,13),(38,'o\'ren ishii','https://wall.alphacoders.com/tags.php?tid=38950','female','Cottonmouth',0,13,13),(39,'bill','http://killbill.wikia.com/wiki/Bill','male','bill',0,13,13),(40,'T800','https://dadmad.deviantart.com/art/Terminator-T-800-Model-101-412824404','machine','T800',0,14,15),(41,'T1000','http://terminator.wikia.com/wiki/T-1000_(Terminator_2:_Judgment_Day)','machine','T1000',0,14,15),(42,'sarah connor','http://terminator.wikia.com/wiki/File:Sarah_connor_linda.gif','female','sarah connor',0,14,15),(43,'optimus prime','http://www.goodsmile.info/en/product/6559/OPTIMUS+PRIME.html','machine','optimus prime',0,15,16),(44,'bumblebee','http://www.goodsmile.info/en/product/6560/BUMBLEBEE.html','machine','bumblebee',0,15,16),(45,'megatron','https://www.quora.com/How-did-Megatron-go-from-being-Galvatron-back-to-being-Megatron-again-with-a-different-form-in-Transformers-The-Last-Knight','machine','megatron',0,15,16),(46,'leonardo','http://www.fanpop.com/clubs/tmnt-leonardo/images/34435949/title/leonardo-photo','mutant','leonardo',0,16,17),(47,'master splinter','http://turtlepedia.wikia.com/wiki/File:Splinter_tf.png','mutant','master splinter',0,16,17),(48,'shredder','http://ultimateallstars.wikia.com/wiki/Shredder','male','shredder',0,16,17);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (2,'Avengers','http://via.placeholder.com/300x300'),(3,'DC','https://www.pentagram.com/work/dc-entertainment/story'),(4,'super saiyan','https://optimusjimbo.deviantart.com/art/Super-Saiyan-Baseball-Logo-199301355'),(5,'Jedi','https://www.cdiscount.com/maison/decoration-accessoires/sticker-autocollant-logo-jedi-starwars-star-wars/f-117634905-gtd3663961007586.html'),(6,'Matrix','https://www.redbubble.com/people/spy8/works/29628721-the-matrix-logo?p=metal-print'),(7,'Athena\'s knights','https://heroscontemporainsetpsychanalyse.wordpress.com/2012/10/02/les-chevaliers-du-zodiaque-ou-lhyperactivit/'),(8,'Team harry','https://www.aliexpress.com/item/Harry-Potter-Hogwarts-School-Logo-Multicolour-Tattoo-For-Body-Art-Painting-Body-Sticker-Nontoxic-and-Tasteless/767026046.html'),(9,'Ring community','http://cooldown.fr/news/lego-dimensions-le-seigneur-des-anneaux/'),(10,'star fleet','http://memory-alpha.wikia.com/wiki/Starfleet_insignia'),(11,'princess peach','https://twitter.com/peachnintendo'),(12,'street fighter','http://www.sfgalleries.net/art/sfex/'),(13,'black mamba','https://www.pinterest.com/pin/101964379033297411/'),(14,'Ripley','http://www.denofgeek.com/us/games/alien-isolation/237157/ellen-ripley-is-in-alien-isolation'),(15,'connor','http://www.sarahconnorfans.com/page/Sarah+Connor+Season+2'),(16,'transformers','http://glyos.wikia.com/wiki/Category:The_Transformers'),(17,'cowabunga','https://thiswonderfulword.com/2012/10/15/the-new-cowabunga/');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universe`
--

DROP TABLE IF EXISTS `universe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `universe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universe`
--

LOCK TABLES `universe` WRITE;
/*!40000 ALTER TABLE `universe` DISABLE KEYS */;
INSERT INTO `universe` VALUES (2,'xandar','Marvel','Marvel','https://www.google.fr/imgres?imgurl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FSmFt46MElm4%2Fmaxresdefault.jpg&imgrefurl=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DSmFt46MElm4&docid=rAFONbp7MGFpLM&tbnid=Hp7y2_pU9iThNM%3A&vet=12ahUKEwi_sdv4g43bAhVG7xQKHUSWCU44ZBAzK'),(3,'capsule corp city','dragon ball','dragon ball','https://commons.wikimedia.org/wiki/File:Dragonball_Anime-Serie_Original-Logo.svg'),(4,'Coruscant','star wars','star wars','https://commons.wikimedia.org/wiki/File:Star_Wars_Logo.svg'),(5,'metropolis','justice league','DC superheroes','https://www.youtube.com/watch?v=X4yL05SwaZg'),(6,'new york','matrix','matrix universe','https://www.google.fr/imgres?imgurl=https%3A%2F%2Fironmen.headwaterslife.org%2Fwp-content%2Fuploads%2F2018%2F01%2FMatrix-Background-Wallpaper.png&imgrefurl=https%3A%2F%2Fironmen.headwaterslife.org%2Fpersonal%2Fthe-matrix%2F&docid=nzfiOkTzLEAUvM&tbnid=fIzg'),(7,'sanctuary','chevalier du zodiaque','chevalier du zodiaque','https://www.google.fr/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Ffr%2F1%2F14%2FLes_Chevaliers_du_Zodiaque.png&imgrefurl=https%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FFichier%3ALes_Chevaliers_du_Zodiaque.png&docid=d14KPQv89QKCnM&tbnid=0V8LxXG'),(8,'poudlard','harry potter','harry potter','https://www.google.fr/imgres?imgurl=http%3A%2F%2F1000logos.net%2Fwp-content%2Fuploads%2F2017%2F02%2FHarry-Potter-Logo.png&imgrefurl=http%3A%2F%2F1000logos.net%2Fharry-potter-logo%2F&docid=K1PJdBe3G27v_M&tbnid=32AnoeonrKm_TM%3A&vet=10ahUKEwjFzJ72ho3bAhXMwB'),(9,'mordor','lord of the ring','lord of the ring','https://www.google.fr/imgres?imgurl=https%3A%2F%2Fi.pinimg.com%2Foriginals%2Fdd%2Fb1%2Fa4%2Fddb1a4a72999261e754b325cb1a387d4.jpg&imgrefurl=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F232850243208171984%2F&docid=SySK2c8Gg1iMoM&tbnid=a7QATWmxJLon8M%3A&vet=10ahU'),(10,'starfleet academy','star trek','star trek','http://sfwallpaper.com/categories/star-trek-logo-wallpaper.html'),(11,'Shadaloo','street fighter','street fighter','http://streetfighter.wikia.com/wiki/File:SF_logo.png'),(12,'hyrule','nintendo','mario and zelda','https://gamingbolt.com/nintendo-rebrands-returning-to-its-classic-red-logo'),(13,'tokyo','kill bill','kill  bill','https://anoanoanoano.deviantart.com/art/KILL-BILL-VOL-1-WALLPAPER-281834165'),(14,'los angeles','terminator','terminator','http://digitalcreativefront.blogspot.com/2015/07/terminator-genisys-review-thoughts-plot.html'),(15,'cybertron','transformers','transformers','https://wallpapercave.com/transformers-logo-wallpapers'),(16,'sewers of new york','TMNT','teanage mutant ninja turtle','http://logocomics.wikia.com/wiki/Teenage_Mutant_Ninja_Turtles'),(17,'nostromo space ship','alien','alien','https://www.behance.net/gallery/38280151/Alien-3-Logo');
/*!40000 ALTER TABLE `universe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-17 22:54:59
