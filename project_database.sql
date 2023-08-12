CREATE DATABASE  IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` enum('F','M') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (13556838,'Anet','McDugal','F'),(16065236,'Wake','Mussilli','M'),(18727720,'Sigismund','Sagg','M'),(20880871,'Laverna','Agney','F'),(22954475,'Ahmed','Smyth','M'),(23145978,'Thorin','Kobel','M'),(23459002,'Berne','MacPhail','M'),(23529198,'Julee','Ferriday','F'),(24703644,'Gordan','Jellis','M'),(26426081,'Noemi','Tyrwhitt','F'),(27042380,'Devin','Benko','F'),(32186365,'Erika','De Fries','F'),(32515867,'Beale','Alderton','M'),(38479963,'Dur','McKeighen','M'),(39109489,'Spencer','Mounsey','M'),(45103852,'Laurie','Symers','F'),(47408565,'Sheelah','Vynall','F'),(49454444,'Ferrell','Jameson','M'),(50951230,'Cicely','Cornelisse','F'),(51234957,'Boone','Renny','M'),(52074623,'Jyoti','Marzella','F'),(52180263,'Nev','Gierek','M'),(55509175,'Calli','Calloway','F'),(55591786,'Donnie','Kinlock','F'),(55779979,'Cobbie','Cradduck','M'),(56468355,'Giavani','Meineking','M'),(57308570,'Burke','Copestick','M'),(57638071,'Marnia','Ceccoli','F'),(57859116,'Jackelyn','Loftus','F'),(61908123,'Augustine','Dalgarnowch','F'),(62986344,'Georgeta','Simmonett','F'),(69386385,'Robby','Gasperi','M'),(69532936,'Theo','Treleven','F'),(70238300,'Vivienne','Habble','F'),(70474914,'Kleon','Chatelot','M'),(74582071,'Davon','Vaadeland','M'),(76217526,'Burnaby','Malby','M'),(78766623,'Wynny','McTurk','F'),(78779003,'Linc','Annable','M'),(80730965,'Merrill','Timmes','M'),(81312816,'Elfreda','Bony','F'),(82724278,'Edmund','Castanaga','M'),(85091782,'Karen','Fansy','F'),(85586014,'Christoforo','Novelli','M'),(86261557,'Maximilien','Van Halen','M'),(87807304,'Viviyan','Saunton','F'),(89779462,'Aubrette','Battany','F'),(93426414,'Kayla','Serfati','F'),(95792331,'Mandie','Dybell','F'),(97492123,'Cristen','Hasslocher','F');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_in_movies`
--

DROP TABLE IF EXISTS `actors_in_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors_in_movies` (
  `movie_id` int NOT NULL,
  `actor_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `movie_id_idx` (`movie_id`),
  KEY `actor_id_idx` (`actor_id`),
  CONSTRAINT `actor_id` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`),
  CONSTRAINT `movie_he's_in` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_in_movies`
--

LOCK TABLES `actors_in_movies` WRITE;
/*!40000 ALTER TABLE `actors_in_movies` DISABLE KEYS */;
INSERT INTO `actors_in_movies` VALUES (1000,13556838),(1000,22954475),(1000,27042380),(1000,55509175),(6607,78766623),(6607,78779003),(6607,95792331),(7021,57859116),(7021,62986344),(7021,76217526),(7021,82724278),(7021,86261557),(8006,22954475),(8006,95792331),(8006,97492123),(8941,87807304),(8941,95792331),(9454,81312816),(9454,85586014),(9454,93426414),(9454,95792331),(9725,78779003),(9725,97492123);
/*!40000 ALTER TABLE `actors_in_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartoon`
--

DROP TABLE IF EXISTS `cartoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartoon` (
  `illustrator` varchar(45) DEFAULT NULL,
  `voice_actor` varchar(45) NOT NULL,
  `movie_id` int NOT NULL,
  KEY `movie_id2_idx` (`movie_id`),
  CONSTRAINT `movie_id2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartoon`
--

LOCK TABLES `cartoon` WRITE;
/*!40000 ALTER TABLE `cartoon` DISABLE KEYS */;
INSERT INTO `cartoon` VALUES ('Gage Martinez','Lorelle Geratt',9165),('Miran Matous','Frazier Auguste',7825),('Ivonne Solesbury','Terrel Verrall',2597),('Cassondra Lillecrop','Killie Wingeatt',4724),('John Prall','Preston Sellstrom',5819);
/*!40000 ALTER TABLE `cartoon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (12121212,'Roch','Pickup','0524934382','rpickup1@mapquest.com'),(12206153,'Nelson','McMeanma','0547777777','nmcmeanmao@admin.ch'),(12345678,'Sterling','Shingles','0568207858','sshingles0@cbslocal.com'),(14450030,'Bastian','Owen','0500000000','bowen15@adobe.com'),(14588773,'Win','Thornthwaite','0252222229','wthornthwaite5@mtv.com'),(15532495,'Andra','Doust','0206635358','adoust1t@weibo.com'),(19201984,'Norrie','Skellern','0526549963','nskellern2e@gov.uk'),(20572193,'Bobinette','Beetles','0574578458','bbeetles2@moonfruit.com'),(20968870,'Edyth','Sabathe','0533693699','esabathe1l@ed.gov'),(21435684,'Vernice','Paddie','0502523256','vpaddie1v@tuttocitta.it'),(22248010,'Dyann','Chillcot','0542321163','dchillcot27@alexa.com'),(24755754,'Francklin','Hawkslee','0501412111','fhawkslee2b@tinyurl.com'),(25365891,'Franklyn','Fitzharris','0540000000','ffitzharris20@dyndns.org'),(26262626,'Cary','Bowen','0520000000','cbowen7@si.edu'),(27249766,'Sibylle','Methven','0571111111','smethven14@squarespace.com'),(27376251,'Daphene','Dawtrey','0544444444','ddawtrey2d@bravesites.com'),(27521485,'Ninnette','Union','0533333333','nunion16@si.edu'),(28197601,'Kikelia','Harlett','0516666666','kharlett26@livejournal.com'),(28962661,'Onofredo','Priscott','0512223366','opriscottm@shutterfly.com'),(29587814,'Sibylle','Stoute','0548889999','sstoutec@mlb.com'),(29906063,'Oralle','Lambotin','0556666666','olambotinn@wufoo.com'),(30850749,'Rollins','Vitall','0539999999','rvitall1o@chron.com'),(31497739,'Storm','Shirlaw','0571111111','sshirlaw4@adobe.com'),(31956652,'Atalanta','Tabb','0563333333','atabbu@unblog.fr'),(32223713,'Staford','Domenge','0548888888','sdomenge12@foxnews.com'),(34309060,'Miguel','Fortnum','0566666666','mfortnum2h@nifty.com'),(34334598,'Georgie','Blaase','0511166666','gblaases@washingtonpost.com'),(34373839,'Alexis','Breede','0568888888','abreede1@macromedia.com'),(34991359,'Neddy','MacAlpyne','0541212121','nmacalpynee@infoseek.co.jp'),(35269398,'Emmie','Prevost','0541212125','eprevost1q@discovery.com'),(35436369,'Norina','O\'Cleary','0541212129','nocleary3@unesco.org'),(37102922,'Bethena','Muxworthy','0541212365','bmuxworthyy@answers.com'),(37326025,'Berky','Maplesden','0541219696','bmaplesden1b@dagondesign.com'),(38331178,'Cati','Nutley','0541212159','cnutley17@globo.com'),(40630699,'Benni','Matchell','0541654285','bmatchell1r@webeden.co.uk'),(41703801,'Jasmina','Lagen','0541555555','jlagen1m@cisco.com'),(42260042,'Cecil','Elgy','0541212127','celgyg@redcross.org'),(42700023,'Drucill','Boyton','0571561111','dboyton2a@springer.com'),(43346256,'Sonnnie','Thewys','0571198981','sthewysj@lulu.com'),(45515299,'Kaitlyn','Twort','0571858584','ktwort24@goo.gl'),(46069094,'Delano','Addekin','0571116911','daddekinp@soup.io'),(47094902,'Valentin','Brazener','0571569411','vbrazenert@spiegel.de'),(48178899,'Melodee','Edmand','0571663361','medmandv@theatlantic.com'),(50787890,'Sherline','Pavek','0571111121','spavek23@usda.gov'),(51886430,'Christine','Snelman','0577771811','csnelman1h@ebay.com'),(52315947,'Jermain','Hawkins','0571111111','jhawkinsr@squarespace.com'),(52525252,'Perkin','Adamovitz','0502103610','padamovitz2@bloomberg.com'),(54832816,'Raimundo','Cardnell','0571161011','rcardnell1k@w3.org'),(55843512,'Manny','Cuschieri','0571111111','mcuschieri2g@usnews.com'),(57344007,'Tye','Teml','0576101111','tteml28@japanpost.jp'),(57923944,'Juan','Twelvetree','0571116101','jtwelvetreef@g.co'),(59221254,'Davida','Coyett','0571157111','dcoyettd@hatena.ne.jp'),(61006904,'Gilemette','Huot','0571142221','ghuot1j@google.co.jp'),(62378909,'Jeromy','Yegorkov','0512223366','jyegorkov10@exblog.jp'),(62396157,'Conant','Tomkins','0512233536','ctomkins1i@bandcamp.com'),(63423196,'Ingeborg','McMurrugh','0511112336','imcmurrugh1f@comcast.net'),(65101360,'Oralia','Spata','0512223111','ospata1y@weibo.com'),(66125422,'Othella','Top','0512111766','otopi@etsy.com'),(68962718,'Luelle','Zavattieri','0512211196','lzavattieri1a@usda.gov'),(69491437,'Valaree','O\'Mannion','0512223366','vomannion1c@wsj.com'),(70765077,'Ethelbert','Raiment','0512299996','eraimentx@examiner.com'),(71394542,'Joyce','Paskell','0512454546','jpaskell6@stanford.edu'),(72084161,'Hinze','Scorrer','0512256969','hscorrer1w@joomla.org'),(72124379,'Stafford','Phonix','0514523366','sphonixa@liveinternet.ru'),(72332876,'Ewart','Chilles','0512223457','echilles1s@amazon.co.uk'),(73119935,'Marget','Santhouse','0512453366','msanthouse9@php.net'),(74469925,'Haze','Gresley','0514589366','hgresley22@goo.ne.jp'),(74747474,'Clerc','Casado','0514533366','ccasado6@constantcontact.com'),(75818341,'Gearalt','Hegerty','0514553366','ghegertyb@amazon.co.jp'),(78385924,'Berky','Odby','0512299166','bodbyk@ebay.co.uk'),(78527496,'Brannon','Greyes','0533320200','bgreyes13@yahoo.co.jp'),(79385425,'Regan','Galliver','0532121223','rgalliverw@eepurl.com'),(79489188,'Delmar','Hillin','0533333444','dhillinz@cnn.com'),(81103294,'Livy','Dewhirst','0533333555','ldewhirst8@yale.edu'),(81336828,'Astra','Schruyers','0533333666','aschruyers1d@boston.com'),(82627690,'Corey','Tierney','0533333777','ctierney1g@sbwire.com'),(83039976,'Pall','Swanwick','0533333888','pswanwick2f@jalbum.net'),(85285233,'Gerry','Dymick','0533333999','gdymick8@mtv.com'),(85417195,'Moyra','Saddler','0533333000','msaddler18@chronoengine.com'),(85608767,'Marlie','Treneman','0533333111','mtreneman19@linkedin.com'),(85858585,'Larry','Marwick','0503956451','lmarwick4@usda.gov'),(87654321,'Owen','Shallcrass','0508442059','oshallcrass3@163.com'),(88729487,'Laurene','Giacometti','0533574333','lgiacometti29@cnn.com'),(88976307,'Alena','Hawtin','0533159833','ahawtinq@sbwire.com'),(89640031,'Adelbert','Brenston','0533951423','abrenston1u@upenn.edu'),(91133615,'Marchelle','Klauber','0533369543','mklauberl@tmall.com'),(91379780,'Corinne','O\'Regan','0531563233','coregan1e@themeforest.net'),(91919191,'Jillene','Foat','1413328683','jfoat5@fema.gov'),(92257892,'Lita','Greeding','0548442059','lgreeding21@sphinn.com'),(92580535,'Deloria','Spinello','0578442059','dspinelloh@taobao.com'),(94928585,'Emmit','Ellams','0588442059','eellams2c@rambler.ru'),(94947790,'Torrin','Archibold','0558442059','tarchibold1n@aol.com'),(96097197,'Fayette','Oates','0528442059','foates7@booking.com'),(96181823,'Shelba','Haggus','0506663314','shaggus1p@skype.com'),(96211553,'Fin','Jann','0547879788','fjann11@europa.eu'),(96385274,'Wash','Greguol','0528543586','wgreguol9@infoseek.co.jp'),(96900247,'Rourke','Toxell','0523578357','rtoxell1x@sohu.com'),(98369924,'Aldrich','Stitle','0533698741','astitle25@accuweather.com'),(98501132,'Nari','Moyle','0512369874','nmoyle0@sourceforge.net'),(98935552,'Tori','Trase','0547896321','ttrase1z@dion.ne.jp');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `Year_of_employment` int NOT NULL,
  `main_job_filed` enum('usher','cashier') DEFAULT NULL,
  `theater_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `theater_id2_idx` (`theater_id`),
  CONSTRAINT `theater_id2` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (15308658,'Cornell','Benoey',2018,'usher',1),(25858749,'Vikky','McKeevers',2019,'usher',2),(32285641,'Jaquelyn','Bastie',2020,'cashier',NULL),(33296779,'Woody','Ockendon',2021,'usher',3),(34797228,'Kassi','Arnault',2019,'cashier',NULL),(35494588,'Lu','Grayshan',2020,'cashier',NULL),(35612167,'Emmy','Cheel',2020,'cashier',NULL),(36756697,'Maurine','Abden',2018,'usher',4),(40187143,'Byrann','Stillmann',2018,'usher',5),(42598704,'Yorgo','Grzegorecki',2022,'usher',6),(47235881,'Vidovik','Balsom',2018,'usher',6),(49951611,'Kory','Robertz',2021,'cashier',NULL),(55461981,'Hobey','Orum',2020,'cashier',NULL),(58270880,'Joane','Fanti',2019,'cashier',NULL),(65243637,'Eddy','Peagrim',2022,'usher',8),(70489223,'Anett','Osmint',2021,'cashier',NULL),(72765926,'Felic','Bader',2020,'usher',9),(73103275,'Truda','Spriggin',2019,'usher',12),(74316022,'Teodoor','Tedman',2020,'usher',10),(90287646,'Sissy','Matthews',2022,'usher',11);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_action`
--

DROP TABLE IF EXISTS `live_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_action` (
  `cinematographer` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `movie_id` int NOT NULL,
  KEY `movie_id3_idx` (`movie_id`),
  CONSTRAINT `movie_id3` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_action`
--

LOCK TABLES `live_action` WRITE;
/*!40000 ALTER TABLE `live_action` DISABLE KEYS */;
INSERT INTO `live_action` VALUES ('Sarajane Rennebeck','France',7021),('Adriane Matskevich','Spain',8941),('Dolores Hover','United States',6607),('Herbie Laughnan','Pakistan',9725),('Danie Patient','Costa Rica',1000),('Michael Pickthorne','Russia',8006),('Kayle Timewell','Brazil',9454);
/*!40000 ALTER TABLE `live_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `id` int NOT NULL,
  `movie_name` varchar(45) NOT NULL,
  `Release_date` date DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `Duration` int DEFAULT '120',
  `director` varchar(45) NOT NULL,
  `language` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1000,'Shotgun Wedding','2021-12-20','Drama',126,'Kirstin Helks','English'),(2597,'City for Conquest','2022-05-20','Drama',158,'Pru Tarquini','Gujarati'),(4724,'Wild Things: Diamonds in the Rough','2023-02-20','Mystery|Thriller',146,'Maia Kelloch','Yiddish'),(5819,'Deja Vu','2021-03-20','Drama',135,'Kirstin Helks','Malagasy'),(6607,'My Father the Hero (Mon père, ce héros.)','2004-01-20','Comedy|Drama',151,'Guillermo Prangnell','Lithuanian'),(7021,'Margaret\'s Museum','2022-11-20','Drama',120,'Alejandro Daniello','Icelandic'),(7825,'Charlotte Sometimes','2021-05-20','Drama|Romance',154,'Redford Beal','Punjabi'),(8006,'Sin City','2002-05-11','Drama',120,'Doe Bednell','English'),(8941,'Head in the Clouds','2018-08-20','Drama|Romance|War',141,'Doe Bednell','Ndebele'),(9165,'Manhattan Melodrama','2011-10-20','Crime|Drama|Romance',116,'Shell Swafield','Macedonian'),(9454,'I Wanna Dance with Somebody','2008-11-20','Drama',130,'Pru Tarquini','English'),(9725,'Or (a.k.a. My Treasure)','2003-03-20','Drama',125,'Dickie Sieghart','Maltese');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL,
  `payment_method` enum('cash','credit') DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `movie_id` int DEFAULT NULL,
  `theater_id` int DEFAULT NULL,
  `order_method` enum('online','in person') DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cotumer_id_idx` (`customer_id`),
  KEY `theater_id_idx` (`theater_id`),
  KEY `movie_id_idx` (`movie_id`),
  KEY `employee_id2_idx` (`employee_id`),
  CONSTRAINT `cotumer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `employee_id2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `theater_id` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4952,'cash',34309060,5819,12,'in person',33296779),(5243,'cash',22248010,7825,9,'in person',35494588),(5498,'credit',87654321,1000,2,'online',NULL),(5802,'credit',19201984,8941,5,'online',NULL),(7434,'credit',22248010,1000,2,'online',NULL),(8467,'cash',34309060,9454,7,'in person',47235881),(8626,'credit',29906063,6607,5,'online',NULL),(8863,'cash',34309060,8006,1,'in person',90287646),(9000,'credit',54832816,9165,9,'online',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `screenings`
--

DROP TABLE IF EXISTS `screenings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `screenings` (
  `movie_id` int NOT NULL,
  `theater_id` int NOT NULL,
  PRIMARY KEY (`movie_id`,`theater_id`),
  KEY `movie_screen_in_idx` (`movie_id`),
  KEY `theater_id_idx` (`theater_id`),
  CONSTRAINT `movie_screen_in` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `where_screening` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `screenings`
--

LOCK TABLES `screenings` WRITE;
/*!40000 ALTER TABLE `screenings` DISABLE KEYS */;
INSERT INTO `screenings` VALUES (1000,2),(1000,9),(2597,4),(4724,5),(5819,7),(6607,6),(7021,8),(7825,11),(8006,3),(8941,10),(9165,9),(9454,12),(9725,1);
/*!40000 ALTER TABLE `screenings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_number`
--

DROP TABLE IF EXISTS `seat_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_number` (
  `order_id` int NOT NULL,
  `seat_number` int NOT NULL,
  PRIMARY KEY (`order_id`,`seat_number`),
  CONSTRAINT `order_id2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_number`
--

LOCK TABLES `seat_number` WRITE;
/*!40000 ALTER TABLE `seat_number` DISABLE KEYS */;
INSERT INTO `seat_number` VALUES (4952,87),(4952,88),(4952,89),(5243,60),(5802,50),(5802,51),(5802,52),(5802,53),(5802,54),(7434,70),(7434,71),(7434,72),(8467,60),(8467,61),(8626,50),(8626,51),(8626,52),(8626,53),(8626,54),(8863,90),(8863,91);
/*!40000 ALTER TABLE `seat_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater` (
  `id` int NOT NULL,
  `number_of_seats` int DEFAULT NULL,
  `theater_type` enum('VIP','4D','Normal') DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `number_of_seats_check` CHECK ((`number_of_seats` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater`
--

LOCK TABLES `theater` WRITE;
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT INTO `theater` VALUES (1,100,'Normal'),(2,100,'Normal'),(3,80,'4D'),(4,60,'VIP'),(5,100,'Normal'),(6,100,'Normal'),(7,70,'VIP'),(8,100,'Normal'),(9,100,'Normal'),(10,90,'4D'),(11,100,'Normal'),(12,100,'Normal'),(13,60,'VIP'),(14,60,'VIP');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-07 12:37:10
