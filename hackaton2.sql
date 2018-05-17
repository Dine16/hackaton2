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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (4,'yoda','https://zupimages.net/up/18/20/oziy.jpg','male','Yoda était un individu d\'une espèce inconnue qui comptait parmi les maîtres Jedi les plus puissants et reconnus de toute l\'histoire de la galaxie, célèbre pour sa sagesse légendaire, sa maîtrise de la Force et ses talents au sabre laser.',0,4,5),(5,'luke skywalker','https://zupimages.net/up/18/20/uq6o.jpg','male','Luke Skywalker est le personnage principal de la trilogie originale Star Wars. Il est le fils d\'Anakin Skywalker et de Padmé Amidala et le frère jumeau de la princesse Leia Organa.',0,4,5),(6,'dark vador','https://zupimages.net/up/18/20/ateh.jpg','male','Anakin Skywalker était un Chevalier Jedi qui servit la République Galactique dans ses dernières années. Il devint par la suite le Seigneur Sith Dark Vador, second commandant de l\'Empire Galactique derrière son maître, Dark Sidious.',0,4,5),(7,'sangoku','https://zupimages.net/up/18/20/xksy.jpg','male','Sangoku à la naissance n’était qu’un minable sans le moindre avenir comme le dit si bien son père Baddack. Sangoku fut peu après sa naissance envoyé sur Terre. À son arrivé il fut recueilli par San Gohan qui devint son grand-père adoptif, mais San Gohan a',0,3,4),(8,'vegeta','https://zupimages.net/up/18/20/tqa6.jpeg','male','Vegeta est l’un des 7 derniers saïyens encore vivant. À sa première apparition on n’aurait jamais eu de doute au fait que Vegeta était un adversaire non seulement cruel ou sadique, mais aussi redoutable. Pourtant contre toute attente, Vegeta finira par co',0,3,4),(9,'cell','https://zupimages.net/up/18/20/1lil.jpg','mutant','Cell est l\'un des trois antagonistes principaux de Dragon Ball Z avec Freezer et Boo. C\'est un humain artificiel de type évolutif créé par l\'ordinateur du Dr Gero. Il est un être humanoïde entièrement organique créé artificiellement, notamment par le biai',0,3,4),(10,'superman','https://zupimages.net/up/18/20/63ht.jpg','male','Superman est grand, baraqué, il est brun aux yeux noirs. Il est vêtu d’une combinaison bleue avec « S » au niveau de la poitrine. Il a une cape rouge dont il ne se sépare jamais.',0,5,3),(11,'flash','https://zupimages.net/up/18/06/mqdw.jpg','male','Flash est doué d’une vitesse de réaction et de déplacement proche de celle de la lumière, d’où son surnom d’homme le plus rapide du monde.',0,5,3),(12,'doomsday','https://zupimages.net/up/18/20/lrl5.jpg','?','Doomsday a été artificiellement créé par Bertron, un scientifique fou sans scrupules travaillant sur Krypton, le monde natal de Superman, bien que ni lui ni son créateur n\'aient été les Kryptoniens que nous connaissons (ceci s\'étant déroulé avant que la v',0,5,3),(13,'groot','https://zupimages.net/up/18/20/6i7h.jpg','colosse','Groot est un « colosse floral », un extraterrstre végétal dont la planète d\'origine, X, fut découverte par les Krees. Encore enfant, il fut exilé de sa planète par les maitres-arbres, pour conduite violente.',0,2,2),(14,'hulk','https://zupimages.net/up/18/20/an60.jpg','male','À l’origine, le corps de Hulk était gris, puis est devenu vert, comme nous le connaissons aujourd’hui. Au début, Banner ne se transformait en Hulk uniquement au coucher du soleil. Cependant, au fil des numéros, sa transformation se faisait après des modif',0,2,2),(15,'rocket','https://zupimages.net/up/18/20/aghc.png','?','Rocket Raccoon vient de Halfworld, une planète abandonnée, servant de maison de retraite pour une race humanoïde semblable aux humains. Ces aliens ont altéré génétiquement les animaux pour leur donner une intelligence humaine, de façon à ce qu\'ils servent',0,2,2),(16,'seiya','https://zupimages.net/up/18/20/qg7x.jpeg','male','Seiya de Pégase est, comme son nom l\'indique, le héros principal de Saint Seiya. L\'histoire commence avec la fin de son entraînement puis suit les batailles qu\'il mène en compagnie de ses amis.',0,7,7),(17,'shiryu','https://zupimages.net/up/18/20/ezmg.png','male','Shiryū, ancien Saint du Dragon, a perdu ses 5 sens lors d\'un combat contre Mars. Mais grâce à son Cosmos, il peut encore communiquer avec son fils Ryūhō, qu\'il a eu avec Shunrei. Plus tard dans l\'histoire, il reprend du service en tant que Gold Saint de l',0,7,7),(18,'saga','https://zupimages.net/up/18/20/d7fs.jpg','male','Homme respecté et aimé de tous, réputé pour sa grande puissance et sa bonté ; Saga est proche de la perfection divine. Mais Saga cache son frère au point que personne, au Sanctuaire ou ailleurs, n\'a conscience de son existence',0,7,7),(19,'harry potter','https://techcrunch.com/wp-content/uploads/2017/11/harrypotter.jpg?w=990&crop=1','male','harry potter',0,8,8),(20,'dumbledore','https://vignette.wikia.nocookie.net/harrypotter/images/2/20/Albus_Dumbledore.JPG/revision/latest/scale-to-width-down/350?cb=20080706131332','male','dumbledore',0,8,8),(21,'voldemort','https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/Lordvoldemort.jpg/220px-Lordvoldemort.jpg','male','voldemort',0,8,8),(22,'frodon','https://vignette.wikia.nocookie.net/seigneur-des-anneaux/images/6/6e/Frodo-baggins.jpg/revision/latest/scale-to-width-down/260?cb=20180123201711&path-prefix=fr','hobbit','frodon le hobbit',0,9,9),(23,'aragorn','https://vignette.wikia.nocookie.net/seigneur-des-anneaux/images/8/83/Aragorn.jpg/revision/latest/scale-to-width-down/260?cb=20140215115907&path-prefix=fr','male','aragorn',0,9,9),(24,'gandalf','https://lph5i1b6c053kq7us26bdk75-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/gandalf-facts.jpg','male','gandalf',0,9,9),(25,'capitain kirk','http://pixel.nymag.com/imgs/daily/vulture/2015/07/26/26-Kirk.w529.h529.jpg','male','james T kirk',0,10,10),(26,'spock','http://www.startrek.com/uploads/assets/db_articles/6ee08d45f7a94d4c6fda9ee84833054a687ddf77.jpg','vulcain','spock',0,10,10),(27,'scotty','http://www.startrek.com/uploads/assets/db_articles/507ee4c3161907baabb77c99d5e1105f22ef621c.jpg','male','scott \"scotty\" montgomery',0,10,10),(28,'ryu','https://cdn.capcom-unity.com/capcom-unity.com/user/street_fighter/profile.jpg?type=group&ts=1206-1451','male','ryu',0,11,12),(29,'chun li','http://www.fanpop.com/clubs/chun-li/images/29679930/title/chun-li-pretty-photo','female','chun li',0,11,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (2,'Avengers','https://static.planetminecraft.com/files/resource_media/screenshot/1313/image_5162273_thumb.jpg'),(3,'DC','https://vignette.wikia.nocookie.net/rocketleague/images/8/83/DC_Comics_player_banner_icon.png/revision/latest?cb=20171110173723'),(4,'super saiyan','https://pre00.deviantart.net/3385/th/pre/i/2011/059/8/6/super_saiyan_baseball_logo_by_optimusjimbo-d3anpwr.png'),(5,'Jedi','https://pbs.twimg.com/profile_images/706705820554113024/nMv9bKOo_400x400.jpg'),(6,'Matrix','http://thumbs2.modthesims.info/img/4/3/2/4/7/1/MTS_Beo-929924-matrix.jpg'),(7,'Athena\'s knights','https://heroscontemporainsetpsychanalyse.files.wordpress.com/2012/10/les-chevaliers-du-zodiaque.jpg'),(8,'Team harry','https://leslecturessucrees.files.wordpress.com/2016/07/logo-1.png?w=620'),(9,'Le Seigneur des Anneaux','https://cdn6.aptoide.com/imgs/d/8/3/d83afe7846e83f701a3616dea6312f95_icon.png?w=256'),(10,'Starfleet','https://i.pinimg.com/originals/24/1a/5b/241a5b16da2951bc958e40ac198835cc.png'),(11,'Mario','https://cdn.icon-icons.com/icons2/206/PNG/256/Mario_-_Profile_24687.png'),(12,'Street Fighter','https://orig00.deviantart.net/b214/f/2016/049/7/9/street_fighter_v__5____icon_by_blagoicons-d9s75t3.png'),(13,'Black Mamba','https://78.media.tumblr.com/avatar_7dd67cffbbad_128.pnj'),(14,'Ripley','http://www.scified.com/articles/neca-have-no-plans-making-any-future-alien-covenant-figures-38.jpg'),(15,'Terminator','http://fr.web.img2.acsta.net/newsv7/16/09/07/16/54/287557.jpg'),(16,'Transformers','http://icons.iconarchive.com/icons/3xhumed/mega-games-pack-32/256/Transformers-Revenge-of-the-Fallen-2-icon.png'),(17,'Cowabunga','https://cdn.pcpartpicker.com/static/forever/images/user/344536.95f0e133db93bf31cf447b8b5886c535.83647c484026de523ecd58d8f763c205.256c.jpg');
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

-- Dump completed on 2018-05-17 23:53:03
