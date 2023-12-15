-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: tordb
-- ------------------------------------------------------
-- Server version	5.7.9

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
-- Table structure for table `angilal`
--

DROP TABLE IF EXISTS `angilal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `angilal` (
  `angilalID` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `angilalNer` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`angilalID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angilal`
--

LOCK TABLES `angilal` WRITE;
/*!40000 ALTER TABLE `angilal` DISABLE KEYS */;
INSERT INTO `angilal` VALUES ('A','A'),('B','B'),('C','C'),('D','D'),('E','E'),('M','M');
/*!40000 ALTER TABLE `angilal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camer`
--

DROP TABLE IF EXISTS `camer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `camer` (
  `camerID` varchar(8) CHARACTER SET latin1 NOT NULL,
  `camerBairshil` varchar(50) CHARACTER SET utf8 NOT NULL,
  `horooCode` int(11) NOT NULL,
  PRIMARY KEY (`camerID`),
  KEY `horooCode` (`horooCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camer`
--

LOCK TABLES `camer` WRITE;
/*!40000 ALTER TABLE `camer` DISABLE KEYS */;
INSERT INTO `camer` VALUES ('1','Багшийн дээд(зүүнээс баруун)',608),('2','Багшийн дээд(Баруунаас зүүн)',608),('3','ХААЯ-ы уулзвар',406),('4','narnii zam',426),('5','Зүүн 4 зам ',201);
/*!40000 ALTER TABLE `camer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duureg`
--

DROP TABLE IF EXISTS `duureg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duureg` (
  `duuregID` tinyint(4) NOT NULL,
  `duuregNer` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`duuregID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duureg`
--

LOCK TABLES `duureg` WRITE;
/*!40000 ALTER TABLE `duureg` DISABLE KEYS */;
INSERT INTO `duureg` VALUES (1,'Багануур'),(2,'Багахангай'),(3,'Баянгол'),(4,'Баянзүрх'),(5,'Налайх'),(6,'Сонгинохайрхан'),(7,'Сүхбаатар'),(8,'Хан-Уул'),(9,'Чингэлтэй');
/*!40000 ALTER TABLE `duureg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezemshigch`
--

DROP TABLE IF EXISTS `ezemshigch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezemshigch` (
  `ezemshigchRD` char(10) CHARACTER SET utf8 NOT NULL,
  `Ner` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Owog` varchar(20) CHARACTER SET utf8 NOT NULL,
  `hayag` varchar(50) CHARACTER SET utf8 NOT NULL,
  `utas` varchar(8) CHARACTER SET utf8 NOT NULL,
  `unemleh` varchar(8) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ezemshigchRD`),
  KEY `ner` (`Ner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezemshigch`
--

LOCK TABLES `ezemshigch` WRITE;
/*!40000 ALTER TABLE `ezemshigch` DISABLE KEYS */;
INSERT INTO `ezemshigch` VALUES ('РД48082513','Хэрэглэгч13','Овог13','addr13','98765013','8765013'),('РД50030748','Хэрэглэгч48','Овог48','addr48','98765048','8765048'),('РД50032735','Хэрэглэгч35','Овог35','addr35','98765035','8765035'),('РД50120610','Хэрэглэгч10','Овог10','addr10','98765010','8765010'),('РД51100133','Хэрэглэгч33','Овог33','addr33','98765033','8765033'),('РД51101162','Хэрэглэгч62','Овог62','addr62','98765062','8765062'),('РД52092140','Хэрэглэгч40','Овог40','addr40','98765040','8765040'),('РД52110589','Хэрэглэгч89','Овог89','addr89','98765089','8765089'),('РД55081568','Хэрэглэгч68','Овог68','addr68','98765068','8765068'),('РД55081857','Хэрэглэгч57','Овог57','addr57','98765057','8765057'),('РД56040391','Хэрэглэгч91','Овог91','addr91','98765091','8765091'),('РД56071669','Хэрэглэгч69','Овог69','addr69','98765069','8765069'),('РД56112232','Хэрэглэгч32','Овог32','addr32','98765032','8765032'),('РД57032626','Хэрэглэгч26','Овог26','addr26','98765026','8765026'),('РД57111476','Хэрэглэгч76','Овог76','addr76','98765076','8765076'),('РД57112724','Хэрэглэгч24','Овог24','addr24','98765024','8765024'),('РД58121121','Хэрэглэгч21','Овог21','addr21','98765021','8765021'),('РД60012025','Хэрэглэгч25','Овог25','addr25','98765025','8765025'),('РД60103105','Хэрэглэгч5','Овог5','addr5','98765005','8765005'),('РД61022047','Хэрэглэгч47','Овог47','addr47','98765047','8765047'),('РД61120661','Хэрэглэгч61','Овог61','addr61','98765061','8765061'),('РД62030531','Хэрэглэгч31','Овог31','addr31','98765031','8765031'),('РД62111341','Хэрэглэгч41','Овог41','addr41','98765041','8765041'),('РД63080773','Хэрэглэгч73','Овог73','addr73','98765073','8765073'),('РД63110427','Хэрэглэгч27','Овог27','addr27','98765027','8765027'),('РД63122377','Хэрэглэгч77','Овог77','addr77','98765077','8765077'),('РД64032882','Хэрэглэгч82','Овог82','addr82','98765082','8765082'),('РД64081181','Хэрэглэгч81','Овог81','addr81','98765081','8765081'),('РД65060174','Хэрэглэгч74','Овог74','addr74','98765074','8765074'),('РД65061078','Хэрэглэгч78','Овог78','addr78','98765078','8765078'),('РД65083009','Хэрэглэгч9','Овог9','addr9','98765009','8765009'),('РД66032280','Хэрэглэгч80','Овог80','addr80','98765080','8765080'),('РД66120186','Хэрэглэгч86','Овог86','addr86','98765086','8765086'),('РД67071466','Хэрэглэгч66','Овог66','addr66','98765066','8765066'),('РД68050352','Хэрэглэгч52','Овог52','addr52','98765052','8765052'),('РД68061960','Хэрэглэгч60','Овог60','addr60','98765060','8765060'),('РД68122098','Хэрэглэгч98','Овог98','addr100','98765098','8765098'),('РД70042949','Хэрэглэгч49','Овог49','addr49','98765049','8765049'),('РД70072993','Хэрэглэгч93','Овог93','addr93','98765093','8765093'),('РД71021390','Хэрэглэгч90','Овог90','addr90','98765090','8765090'),('РД73033001','Хэрэглэгч1','Овог1','addr1','98765001','8765001'),('РД73071887','Хэрэглэгч87','Овог87','addr87','98765087','8765087'),('РД73083151','Хэрэглэгч51','Овог51','addr51','98765051','8765051'),('РД73090530','Хэрэглэгч30','Овог30','addr30','98765030','8765030'),('РД76060237','Хэрэглэгч37','Овог37','addr37','98765037','8765037'),('РД76100436','Хэрэглэгч36','Овог36','addr36','98765036','8765036'),('РД77041229','Хэрэглэгч29','Овог29','addr29','98765029','8765029'),('РД77062695','Хэрэглэгч95','Овог95','addr95','98765095','8765095'),('РД77110783','Хэрэглэгч83','Овог83','addr83','98765083','8765083'),('РД78072545','Хэрэглэгч45','Овог45','addr45','98765045','8765045'),('РД79012185','Хэрэглэгч85','Овог85','addr85','98765085','8765085'),('РД79051003','Хэрэглэгч3','Овог3','addr3','98765003','8765003'),('РД80012465','Хэрэглэгч65','Овог65','addr65','98765065','8765065'),('РД80051434','Хэрэглэгч34','Овог34','addr34','98765034','8765034'),('РД80080307','Хэрэглэгч7','Овог7','addr7','98765007','8765007'),('РД81032397','Хэрэглэгч97','Овог97','addr99','98765097','8765097'),('РД81051188','Хэрэглэгч88','Овог88','addr88','98765088','8765088'),('РД81060722','Хэрэглэгч22','Овог22','addr22','98765022','8765022'),('РД82022364','Хэрэглэгч64','Овог64','addr64','98765064','8765064'),('РД82040502','Хэрэглэгч2','Овог2','addr2','98765002','8765002'),('РД84101211','Хэрэглэгч11','Овог11','addr11','98765011','8765011'),('РД85052242','Хэрэглэгч42','Овог42','addr42','98765042','8765042'),('РД85110992','Хэрэглэгч92','Овог92','addr92','98765092','8765092'),('РД86111875','Хэрэглэгч75','Овог75','addr75','98765075','8765075'),('РД86120150','Хэрэглэгч50','Овог50','addr50','98765050','8765050'),('РД87041619','Хэрэглэгч19','Овог19','addr19','98765019','8765019'),('РД90012928','Хэрэглэгч28','Овог28','addr28','98765028','8765028'),('РД90040446','Хэрэглэгч46','Овог46','addr46','98765046','8765046'),('РД91021208','Хэрэглэгч8','Овог8','addr8','98765008','8765008'),('РД91032416','Хэрэглэгч16','Овог16','addr16','98765016','8765016'),('РД91091255','Хэрэглэгч55','Овог55','addr55','98765055','8765055'),('РД91121496','Хэрэглэгч96','Овог96','addr97','98765096','8765096'),('РД92042617','Хэрэглэгч17','Овог17','addr17','98765017','8765017'),('РД92062654','Хэрэглэгч54','Овог54','addr54','98765054','8765054'),('РД92111304','Хэрэглэгч4','Овог4','addr4','98765004','8765004'),('РД93032206','Хэрэглэгч6','Овог6','addr6','98765006','8765006'),('РД93033118','Хэрэглэгч18','Овог18','addr18','98765018','8765018'),('РД93041920','Хэрэглэгч20','Овог20','addr20','98765020','8765020'),('РД93052072','Хэрэглэгч72','Овог72','addr72','98765072','8765072'),('РД94022310','Хэрэглэгч100','Овог100','addr102','98765100','8765100'),('РД94080743','Хэрэглэгч43','Овог43','addr43','98765043','8765043'),('РД95061284','Хэрэглэгч84','Овог84','addr84','98765084','8765084'),('РД95082267','Хэрэглэгч67','Овог67','addr67','98765067','8765067'),('РД95111153','Хэрэглэгч53','Овог53','addr53','98765053','8765053'),('РД96011623','Хэрэглэгч23','Овог23','addr23','98765023','8765023'),('РД96051570','Хэрэглэгч70','Овог70','addr70','98765070','8765070'),('РД97021215','Хэрэглэгч15','Овог15','addr15','98765015','8765015'),('РД97031614','Хэрэглэгч14','Овог14','addr14','98765014','8765014'),('РД97040699','Хэрэглэгч99','Овог99','addr101','98765099','8765099'),('РД97092639','Хэрэглэгч39','Овог39','addr39','98765039','8765039'),('РД98041994','Хэрэглэгч94','Овог94','addr94','98765094','8765094'),('РД98042771','Хэрэглэгч71','Овог71','addr71','98765071','8765071'),('РД99031679','Хэрэглэгч79','Овог79','addr79','98765079','8765079'),('РД99042556','Хэрэглэгч56','Овог56','addr56','98765056','8765056'),('РД99052044','Хэрэглэгч44','Овог44','addr44','98765044','8765044'),('РД99080138','Хэрэглэгч38','Овог38','addr38','98765038','8765038'),('РД99082259','Хэрэглэгч59','Овог59','addr59','98765059','8765059'),('РД99122363','Хэрэглэгч63','Овог63','addr63','98765063','8765063'),('РЭ92120433','Баянбаатар','Мөнхсайхан','Баянгол дүүрэг 7 хороо','94758482','9475844'),('УК99051131','Сүхбат','Эрдэнэбат','BZ duureg','94586050','678987');
/*!40000 ALTER TABLE `ezemshigch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horoo`
--

DROP TABLE IF EXISTS `horoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horoo` (
  `horooID` int(11) NOT NULL,
  `horooNer` varchar(20) CHARACTER SET utf8 NOT NULL,
  `duuregCode` tinyint(4) NOT NULL,
  PRIMARY KEY (`horooID`),
  KEY `FK1` (`duuregCode`),
  CONSTRAINT `FK1` FOREIGN KEY (`duuregCode`) REFERENCES `duureg` (`duuregID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horoo`
--

LOCK TABLES `horoo` WRITE;
/*!40000 ALTER TABLE `horoo` DISABLE KEYS */;
INSERT INTO `horoo` VALUES (101,'Багануур 1-р хороо',1),(102,'Багануур 2-р хороо',1),(103,'Багануур 3-р хороо',1),(104,'Багануур 4-р хороо',1),(105,'Багануур 5-р хороо',1),(201,'Багахангай 1-р хороо',2),(202,'Багахангай 2-р хороо',2),(301,'БГД 1-р хороо',3),(302,'БГД 2-р хороо',3),(303,'БГД 3-р хороо',3),(304,'БГД 4-р хороо',3),(305,'БГД 5-р хороо',3),(306,'БГД 6-р хороо',3),(307,'БГД 7-р хороо',3),(308,'БГД 8-р хороо',3),(309,'БГД 9-р хороо',3),(310,'БГД 10-р хороо',3),(311,'БГД 11-р хороо',3),(312,'БГД 12-р хороо',3),(313,'БГД 13-р хороо',3),(314,'БГД 14-р хороо',3),(315,'БГД 15-р хороо',3),(316,'БГД 16-р хороо',3),(317,'БГД 17-р хороо',3),(318,'БГД 18-р хороо',3),(319,'БГД 19-р хороо',3),(320,'БГД 20-р хороо',3),(321,'БГД 21-р хороо',3),(322,'БГД 22-р хороо',3),(323,'БГД 23-р хороо',3),(401,'БЗД 1-р хороо',4),(402,'БЗД 2-р хороо',4),(403,'БЗД 3-р хороо',4),(404,'БЗД 4-р хороо',4),(405,'БЗД 5-р хороо',4),(406,'БЗД 6-р хороо',4),(407,'БЗД 7-р хороо',4),(408,'БЗД 8-р хороо',4),(409,'БЗД 9-р хороо',4),(410,'БЗД 10-р хороо',4),(411,'БЗД 11-р хороо',4),(412,'БЗД 12-р хороо',4),(413,'БЗД 13-р хороо',4),(414,'БЗД 14-р хороо',4),(415,'БЗД 15-р хороо',4),(416,'БЗД 16-р хороо',4),(417,'БЗД 17-р хороо',4),(418,'БЗД 18-р хороо',4),(419,'БЗД 19-р хороо',4),(420,'БЗД 20-р хороо',4),(421,'БЗД 21-р хороо',4),(422,'БЗД 22-р хороо',4),(423,'БЗД 23-р хороо',4),(424,'БЗД 24-р хороо',4),(425,'БЗД 25-р хороо',4),(426,'БЗД 26-р хороо',4),(427,'БЗД 27-р хороо',4),(428,'БЗД 28-р хороо',4),(501,'Налайх 1-р хороо',5),(502,'Налайх 2-р хороо',5),(503,'Налайх 3-р хороо',5),(504,'Налайх 4-р хороо',5),(505,'Налайх 5-р хороо',5),(506,'Налайх 6-р хороо',5),(507,'Налайх 7-р хороо',5),(601,'СХД 1-р хороо',6),(602,'СХД 2-р хороо',6),(603,'СХД 3-р хороо',6),(604,'СХД 4-р хороо',6),(605,'СХД 5-р хороо',6),(606,'СХД 6-р хороо',6),(607,'СХД 7-р хороо',6),(608,'СХД 8-р хороо',6),(609,'СХД 9-р хороо',6),(610,'СХД 10-р хороо',6),(611,'СХД 11-р хороо',6),(612,'СХД 12-р хороо',6),(613,'СХД 13-р хороо',6),(614,'СХД 14-р хороо',6),(615,'СХД 15-р хороо',6),(616,'СХД 16-р хороо',6),(617,'СХД 17-р хороо',6),(618,'СХД 18-р хороо',6),(619,'СХД 19-р хороо',6),(620,'СХД 20-р хороо',6),(621,'СХД 21-р хороо',6),(622,'СХД 22-р хороо',6),(623,'СХД 23-р хороо',6),(624,'СХД 24-р хороо',6),(625,'СХД 25-р хороо',6),(626,'СХД 26-р хороо',6),(627,'СХД 27-р хороо',6),(628,'СХД 28-р хороо',6),(629,'СХД 29-р хороо',6),(630,'СХД 30-р хороо',6),(631,'СХД 31-р хороо',6),(632,'СХД 32-р хороо',6),(701,'СБД 1-р хороо',7),(702,'СБД 2-р хороо',7),(703,'СБД 3-р хороо',7),(704,'СБД 4-р хороо',7),(705,'СБД 5-р хороо',7),(706,'СБД 6-р хороо',7),(707,'СБД 7-р хороо',7),(708,'СБД 8-р хороо',7),(709,'СБД 9-р хороо',7),(710,'СБД 10-р хороо',7),(711,'СБД 11-р хороо',7),(712,'СБД 12-р хороо',7),(713,'СБД 13-р хороо',7),(714,'СБД 14-р хороо',7),(715,'СБД 15-р хороо',7),(716,'СБД 16-р хороо',7),(717,'СБД 17-р хороо',7),(718,'СБД 18-р хороо',7),(719,'СБД 19-р хороо',7),(720,'СБД 20-р хороо',7),(801,'ХУД 1-р хороо',8),(802,'ХУД 2-р хороо',8),(803,'ХУД 3-р хороо',8),(804,'ХУД 4-р хороо',8),(805,'ХУД 5-р хороо',8),(806,'ХУД 6-р хороо',8),(807,'ХУД 7-р хороо',8),(808,'ХУД 8-р хороо',8),(809,'ХУД 9-р хороо',8),(810,'ХУД 10-р хороо',8),(811,'ХУД 11-р хороо',8),(812,'ХУД 12-р хороо',8),(813,'ХУД 13-р хороо',8),(814,'ХУД 14-р хороо',8),(815,'ХУД 15-р хороо',8),(816,'ХУД 16-р хороо',8),(901,'ЧД 1-р хороо',9),(902,'ЧД 2-р хороо',9),(903,'ЧД 3-р хороо',9),(904,'ЧД 4-р хороо',9),(905,'ЧД 5-р хороо',9),(906,'ЧД 6-р хороо',9),(907,'ЧД 7-р хороо',9),(908,'ЧД 8-р хороо',9),(909,'ЧД 9-р хороо',9),(910,'ЧД 10-р хороо',9),(911,'ЧД 11-р хороо',9),(912,'ЧД 12-р хороо',9),(913,'ЧД 13-р хороо',9),(914,'ЧД 14-р хороо',9),(915,'ЧД 15-р хороо',9),(916,'ЧД 16-р хороо',9),(917,'ЧД 17-р хороо',9),(918,'ЧД 18-р хороо',9),(919,'ЧД 19-р хороо',9);
/*!40000 ALTER TABLE `horoo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mark` (
  `markID` int(11) NOT NULL,
  `markNer` varchar(20) CHARACTER SET latin1 NOT NULL,
  `uildverCode` tinyint(4) NOT NULL,
  PRIMARY KEY (`markID`),
  KEY `uildverCode` (`uildverCode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mark`
--

LOCK TABLES `mark` WRITE;
/*!40000 ALTER TABLE `mark` DISABLE KEYS */;
INSERT INTO `mark` VALUES (201,'Alfa Romeo 145',2),(202,'Alfa Romeo 146',2),(203,'Alfa Romeo 147',2),(204,'Alfa Romeo 155',2),(205,'Alfa Romeo 156',2),(206,'Alfa Romeo 159',2),(207,'Alfa Romeo 164',2),(208,'Alfa Romeo 166',2),(209,'Alfa Romeo 33',2),(210,'Alfa Romeo 4C',2),(211,'Alfa Romeo 75',2),(212,'Alfa Romeo GTV',2),(213,'Alfa Romeo Brera',2),(214,'Alfa Romeo Giulietta',2),(215,'Alfa Romeo GT',2),(216,'Alfa Romeo MiTo',2),(217,'Alfa Romeo Spider',2),(301,'Asia Motors Rocsta',3),(401,'Aston Martin Cygnet',4),(402,'Aston Martin DB7',4),(403,'Aston Martin DB9',4),(404,'Aston Martin DBS',4),(405,'Aston Martin Rapide',4),(408,'Aston Martin Vantage',4),(501,'Audi 100',5),(502,'Audi 80',5),(503,'Audi 90',5),(504,'Audi A1',5),(505,'Audi A2',5),(506,'Audi A3',5),(507,'Audi A4',5),(508,'Audi A4 Allroad',5),(509,'Audi A5',5),(510,'Audi A6',5),(511,'Audi A6 Allroad',5),(512,'Audi A7',5),(513,'Audi A8',5),(514,'Audi Cabriolet',5),(515,'Audi Coupé',5),(516,'Audi Q3',5),(517,'Audi Q5',5),(518,'Audi Q7',5),(519,'Audi R8',5),(520,'Audi TT',5),(601,'Austin Maestro',6),(602,'Austin Metro',6),(603,'Austin Mini',6),(604,'Austin Montego',6),(701,'Autobianchi A112',7),(801,'Bentley Arnage',8),(802,'Bentley Brooklands',8),(803,'Bentley Continental',8),(804,'Bentley Mulsanne',8),(1201,'Cadillac ATS',12),(1202,'Cadillac BLS',12),(1203,'Cadillac CTS',12),(1204,'Cadillac Eldorado',12),(1205,'Cadillac Escalade',12),(1206,'Cadillac Seville',12),(1207,'Cadillac SRX',12),(1208,'Cadillac STS',12),(1209,'Cadillac XLR',12),(1401,'Chevrolet Alero',14),(1402,'Chevrolet Aveo',14),(1403,'Chevrolet Blazer',14),(1404,'Chevrolet Camaro',14),(1405,'Chevrolet Captiva',14),(1406,'Chevrolet Corvette',14),(1407,'Chevrolet Cruze',14),(1408,'Chevrolet Epica',14),(1409,'Chevrolet Evanda',14),(1410,'Chevrolet HHR',14),(1411,'Chevrolet Kalos',14),(1412,'Chevrolet Lacetti',14),(1413,'Chevrolet Matiz',14),(1414,'Chevrolet Nubira',14),(1415,'Chevrolet Orlando',14),(1416,'Chevrolet Spark',14),(1417,'Chevrolet Tacuma',14),(1418,'Chevrolet Trax',14),(1419,'Chevrolet Volt',14),(1901,'Daewoo Espero',19),(1902,'Daewoo Evanda',19),(1903,'Daewoo Kalos',19),(1904,'Daewoo Lacetti',19),(1905,'Daewoo Lanos',19),(1906,'Daewoo Leganza',19),(1907,'Daewoo Matiz',19),(1908,'Daewoo Nexia',19),(1909,'Daewoo Nubira',19),(1910,'Daewoo Tacuma',19),(2501,'Ferrari 348',25),(2502,'Ferrari 360',25),(2503,'Ferrari 456',25),(2504,'Ferrari 458',25),(2505,'Ferrari 550',25),(2506,'Ferrari 575M',25),(2507,'Ferrari 599',25),(2508,'Ferrari 612',25),(2509,'Ferrari California',25),(2510,'Ferrari Enzo',25),(2511,'Ferrari F12',25),(2512,'Ferrari F355',25),(2513,'Ferrari F430',25),(2514,'Ferrari FF',25),(2801,'Ford B-MAX',28),(2802,'Ford C-MAX',28),(2803,'Ford Cougar',28),(2804,'Ford Escort',28),(2805,'Ford Expedition',28),(2806,'Ford Explorer',28),(2807,'Ford Fiesta',28),(2808,'Ford Focus',28),(2809,'Ford Focus C-Max',28),(2810,'Ford Fusion',28),(2811,'Ford Galaxy',28),(2812,'Ford Ka',28),(2813,'Ford Kuga',28),(2814,'Ford Mondeo',28),(2815,'Ford Mustang',28),(2816,'Ford Orion',28),(2817,'Ford Puma',28),(2818,'Ford Ranger',28),(2819,'Ford S-MAX',28),(2820,'Ford Scorpio',28),(2821,'Ford Sierra',28),(2822,'Ford Taurus',28),(2823,'Ford Thunderbird',28),(2824,'Ford Tourneo',28),(2825,'Ford Transit',28),(2826,'Ford Windstar',28),(3001,'Galloper Galloper',30),(3201,'Hummer H2',32),(3202,'Hummer H3',32),(3203,'Hyundai Accent',32),(3301,'Hyundai Atos',33),(3302,'Hyundai Coupé',33),(3303,'Hyundai Elantra',33),(3304,'Hyundai Excel',33),(3305,'Hyundai Genesis',33),(3306,'Hyundai Getz',33),(3307,'Hyundai Grandeur',33),(3308,'Hyundai i10',33),(3309,'Hyundai i20',33),(3310,'Hyundai i30',33),(3311,'Hyundai i40',33),(3312,'Hyundai ix20',33),(3313,'Hyundai ix35',33),(3314,'Hyundai Lantra',33),(3315,'Hyundai Matrix',33),(3316,'Hyundai Pony',33),(3317,'Hyundai Santa Fe',33),(3318,'Hyundai Scoupé',33),(3319,'Hyundai Sonata',33),(3320,'Hyundai Terracan',33),(3321,'Hyundai Trajet',33),(3322,'Hyundai Tucson',33),(3323,'Hyundai Veloster',33),(3324,'Hyundai XG',33),(3401,'Infiniti EX',34),(3402,'Infiniti FX',34),(3403,'Infiniti G',34),(3404,'Infiniti M',34),(3405,'Infiniti Q50',34),(3701,'Jaguar F-type',37),(3702,'Jaguar S-Type',37),(3703,'Jaguar XJ',37),(3704,'Jaguar X-Type',37),(3705,'Jaguar XF',37),(3706,'Jaguar XJS',37),(3707,'Jaguar XK',37),(3801,'Jeep Commander',38),(3802,'Jeep Compass',38),(3803,'Jeep Grand Cherokee',38),(3804,'Jeep Patriot',38),(3805,'Jeep Wrangler',38),(4001,'Kia Carens',40),(4002,'Kia Carnival',40),(4003,'Kia Cerato',40),(4004,'Kia Clarus',40),(4005,'Kia Joice',40),(4006,'Kia Magentis',40),(4007,'Kia Mentor',40),(4008,'Kia Opirus',40),(4009,'Kia Optima',40),(4010,'Kia Picanto',40),(4011,'Kia Pride',40),(4012,'Kia Ceed',40),(4013,'Kia Rio',40),(4014,'Kia Sephia',40),(4015,'Kia Shuma',40),(4016,'Kia Sorento',40),(4017,'Kia Soul',40),(4018,'Kia Sportage',40),(4019,'Kia Venga',40),(4201,'Lada 110',42),(4202,'Lada 111',42),(4203,'Lada 112',42),(4204,'Lada Kalina',42),(4205,'Lada Niva',42),(4206,'Lada Priora',42),(4207,'Lada Samara',42),(4301,'Lamborghini Gallardo',43),(4501,'Land Rover Defender',45),(4502,'Land Rover Discovery',45),(4701,'Lexus CT',47),(4702,'Lexus GS',47),(4703,'Lexus IS',47),(4704,'Lexus LS',47),(4705,'Lexus RX',47),(4706,'Lexus SC',47),(4801,'Lincoln Mark VIII',48),(4802,'Lincoln Navigator',48),(4803,'Lincoln Town Car',48),(4901,'Lotus Elise',49),(4902,'Lotus Esprit',49),(4903,'Lotus Europa',49),(4904,'Lotus Evora',49),(4905,'Lotus Exige',49),(5301,'Mazda 121',53),(5302,'Mazda 2',53),(5303,'Mazda 3',53),(5304,'Mazda 323',53),(5305,'Mazda 5',53),(5306,'Mazda 6',53),(5307,'Mazda 626',53),(5308,'Mazda CX-5',53),(5309,'Mazda CX-7',53),(5310,'Mazda CX-9',53),(5311,'Mazda Demio',53),(5312,'Mazda MPV',53),(5313,'Mazda MX-3',53),(5314,'Mazda MX-5',53),(5315,'Mazda MX-6',53),(5316,'Mazda Premacy',53),(5317,'Mazda RX-7',53),(5318,'Mazda RX-8',53),(5319,'Mazda Tribute',53),(5320,'Mazda Xedos 6',53),(5501,'Mercedes 190-seriess',55),(5502,'Mercedes 200-seriess',55),(5503,'Mercedes A-class',55),(5504,'Mercedes B-class',55),(5505,'Mercedes C-class',55),(5506,'Mercedes CL-class',55),(5507,'Mercedes CLC-class',55),(5508,'Mercedes CLK',55),(5509,'Mercedes CLK-class',55),(5510,'Mercedes CLS-class',55),(5511,'Mercedes E-class',55),(5512,'Mercedes G-class',55),(5513,'Mercedes GL-class',55),(5514,'Mercedes GLK-class',55),(5515,'Mercedes M-class',55),(5516,'Mercedes R-class',55),(5517,'Mercedes S-class',55),(5518,'Mercedes SL-class',55),(5519,'Mercedes SLK-class',55),(5520,'Mercedes SLS AMG',55),(5521,'Mercedes Sprinter',55),(5522,'Mercedes V-class',55),(5523,'Mercedes Vaneo',55),(5524,'Mercedes Viano',55),(5525,'Mercedes Vito',55),(5901,'Mitsubishi Carisma',59),(5902,'Mitsubishi Colt',59),(5903,'Mitsubishi Eclipse',59),(5904,'Mitsubishi Galant',59),(5905,'Mitsubishi Grandis',59),(5906,'Mitsubishi i-MiEV',59),(5907,'Mitsubishi L200',59),(5908,'Mitsubishi Lancer',59),(5909,'Mitsubishi Mirage',59),(5910,'Mitsubishi Outlander',59),(5912,'Mitsubishi Pajero',59),(6201,'Nissan 100 NX',62),(6202,'Nissan 200 SX',62),(6203,'Nissan 300 ZX',62),(6204,'Nissan 350Z',62),(6205,'Nissan 370Z',62),(6206,'Nissan Almera',62),(6207,'Nissan Almera Tino',62),(6208,'Nissan Cube',62),(6209,'Nissan Evalia',62),(6210,'Nissan GT-R',62),(6211,'Nissan Juke',62),(6212,'Nissan Leaf',62),(6213,'Nissan Maxima',62),(6214,'Nissan Micra',62),(6215,'Nissan Murano',62),(6216,'Nissan Note',62),(6217,'Nissan Pathfinder',62),(6218,'Nissan Patrol',62),(6219,'Nissan Pixo',62),(6220,'Nissan Primastar',62),(6221,'Nissan Primera',62),(6222,'Nissan Qashqai',62),(6223,'Nissan Serena',62),(6224,'Nissan Sunny',62),(6225,'Nissan Terrano',62),(6226,'Nissan X-Trail',62),(6801,'Porsche 911',68),(6802,'Porsche Boxster',68),(6803,'Porsche Cayenne',68),(6804,'Porsche Cayman',68),(6805,'Porsche Macan',68),(6806,'Porsche Panamera',68),(3101,'Honda Accord',31),(3102,'Honda Civic',31),(3103,'Honda Concerto',31),(3104,'Honda CR-V',31),(3105,'Honda CR-Z',31),(3106,'Honda CRX',31),(3107,'Honda FR-V',31),(3108,'Honda HR-V',31),(3109,'Honda Insight',31),(3110,'Honda Jazz',31),(3111,'Honda Legend',31),(3112,'Honda Logo',31),(3113,'Honda NSX',31),(3114,'Honda Prelude',31),(3115,'Honda S2000',31),(3116,'Honda Shuttle',31),(3117,'Honda Stream',31),(7201,'Rover 200-series',72),(7202,'Rover 25',72),(7203,'Rover 400-series',72),(7204,'Rover 45',72),(7205,'Rover 600-series',72),(7206,'Rover 75',72),(7207,'Rover 800-series',72),(7208,'Rover Mini',72),(7209,'Rover Tourer',72),(7301,'Saab 9-4X',73),(7302,'Saab 9-5',73),(7303,'Saab 9-7X',73),(7304,'Saab 900',73),(7305,'Saab 9000',73),(7901,'Subaru BRZ',79),(7902,'Subaru Forester',79),(7903,'Subaru Impreza',79),(7904,'Subaru Justy',79),(7905,'Subaru Legacy',79),(7906,'Subaru Mini Jumbo',79),(7907,'Subaru Outback',79),(7908,'Subaru SVX',79),(7909,'Subaru Trezia',79),(7910,'Subaru Vivio',79),(7911,'Subaru WRX',79),(7912,'Subaru XV',79),(8001,'Suzuki Baleno',80),(8002,'Suzuki Grand Vitara',80),(8003,'Suzuki Ignis',80),(8004,'Suzuki Jimny',80),(8005,'Suzuki Kizashi',80),(8006,'Suzuki Liana',80),(8007,'Suzuki Samurai',80),(8008,'Suzuki Splash',80),(8009,'Suzuki Swift',80),(8010,'Suzuki SX4',80),(8011,'Suzuki Vitara',80),(8012,'Suzuki Wagon R+',80),(8401,'Toyota Auris',84),(8402,'Toyota Avensis',84),(8403,'Toyota Avensis Verso',84),(8404,'Toyota Aygo',84),(8405,'Toyota Camry',84),(8406,'Toyota Carina',84),(8407,'Toyota Celica',84),(8408,'Toyota Corolla',84),(8409,'Toyota Corolla Verso',84),(8410,'Toyota Funcruiser',84),(8411,'Toyota GT86',84),(8412,'Toyota Hilux',84),(8413,'Toyota iQ',84),(8414,'Toyota Land Cruiser',84),(8417,'Toyota MR2',84),(8418,'Toyota Paseo',84),(8419,'Toyota Picnic',84),(8420,'Toyota Previa',84),(8421,'Toyota Prius',84),(8422,'Toyota Prius Wagon',84),(8423,'Toyota RAV4',84),(8424,'Toyota Starlet',84),(8425,'Toyota Urban Cruiser',84),(8426,'Toyota Verso',84),(8427,'Toyota Verso-S',84),(8428,'Toyota Yaris',84),(8429,'Toyota Yaris Verso',84),(8701,'Volkswagen Beetle',87),(8702,'Volkswagen Bora',87),(8703,'Volkswagen Caddy',87),(8704,'Volkswagen CC',87),(8705,'Volkswagen Corrado',87),(8706,'Volkswagen Crafter',87),(8707,'Volkswagen Golf Plus',87),(8708,'Volkswagen Touran',87),(8709,'Volkswagen Eos',87),(8710,'Volkswagen Fox',87),(8711,'Volkswagen Golf',87),(8712,'Volkswagen Jetta',87),(8713,'Volkswagen Lupo',87),(8715,'Volkswagen Passat',87),(8716,'Volkswagen Phaeton',87),(8717,'Volkswagen Polo',87),(8718,'Volkswagen Scirocco',87),(8719,'Volkswagen Sharan',87),(8720,'Volkswagen Tiguan',87),(8721,'Volkswagen Touareg',87),(8723,'Volkswagen Up',87),(8724,'Volkswagen Vento',87),(8801,'Volvo 340',88),(8802,'Volvo 440',88),(8803,'Volvo 460',88),(8804,'Volvo 480',88),(8805,'Volvo 740',88),(8806,'Volvo 760',88),(8807,'Volvo 780',88),(8808,'Volvo 850',88),(8809,'Volvo 940',88),(8810,'Volvo 960',88),(8811,'Volvo C30',88),(8812,'Volvo C70',88),(8813,'Volvo S40',88),(8814,'Volvo S60',88),(8815,'Volvo S70',88),(8816,'Volvo S80',88),(8817,'Volvo S90',88),(8818,'Volvo V40',88),(8819,'Volvo V50',88),(8820,'Volvo V60',88),(8821,'Volvo V70',88),(8822,'Volvo V90',88),(8823,'Volvo XC60',88),(8824,'Volvo XC70',88),(8825,'Volvo XC90',88);
/*!40000 ALTER TABLE `mark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mashin`
--

DROP TABLE IF EXISTS `mashin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mashin` (
  `plateNo` varchar(7) CHARACTER SET utf8 NOT NULL,
  `markCode` int(11) NOT NULL,
  `angilalCode` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `unguCode` bigint(20) NOT NULL,
  `ezemshigchRD` char(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`plateNo`),
  KEY `markCode` (`markCode`),
  KEY `angilalCode` (`angilalCode`),
  KEY `unguCode` (`unguCode`),
  KEY `ezemshigchRD` (`ezemshigchRD`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mashin`
--

LOCK TABLES `mashin` WRITE;
/*!40000 ALTER TABLE `mashin` DISABLE KEYS */;
INSERT INTO `mashin` VALUES ('1764УБД',501,'1',0,'РД73033099'),('2090УБА',1405,'1',0,'РД79099999'),('8095УБА',1406,'1',0,'РД92111304'),('0429УББ',1910,'1',0,'РД60103105'),('2353УБГ',2805,'1',73344657,'РД93032206'),('0019УБВ',2806,'1',0,'РД80080307'),('0977УБЕ',3201,'1',0,'РД91021208'),('3242УБГ',3202,'1',24144170,'РД65083009'),('0427УБЕ',3203,'1',40100200,'РД50120610'),('1156УБЖ',3317,'1',0,'РД84101211'),('0376УББ',3318,'1',66470326,'РД51011012'),('9842УБД',3319,'1',0,'РД48082513'),('5647УБД',3404,'1',0,'РД97031614'),('0094УБЖ',3405,'1',0,'РД97021215'),('5151УБВ',4009,'1',0,'РД91032416'),('7420УБГ',4010,'1',0,'РД92042617'),('0005УБЗ',4705,'1',0,'РД93033118'),('8801УБЕ',4706,'1',0,'РД87041619'),('4590УБД',5305,'1',0,'РД93041920'),('0154УБЕ',5306,'1',0,'РД58121121'),('5116УБЕ',5505,'1',0,'РД81060722'),('6146УБЖ',5512,'1',0,'РД96011623'),('4719УБА',6201,'1',0,'РД57112724'),('2916УББ',6218,'1',0,'РД60012025'),('6213УББ',6219,'1',0,'РД57032626'),('4341УБД',6226,'1',0,'РД63110427'),('4301УБЗ',3102,'1',0,'РД90012928'),('7378УБД',3103,'1',0,'РД77041229'),('3917УБГ',3104,'1',0,'РД73090530'),('4104УБД',3108,'1',0,'РД62030531'),('0598УБЕ',7902,'1',0,'РД56112232'),('2004УББ',7903,'1',0,'РД51100133'),('0051УББ',8405,'1',0,'РД80051434'),('1990УББ',8406,'1',0,'РД50032735'),('7767УБВ',8407,'1',0,'РД76100436'),('0354УБГ',8408,'1',0,'РД76060237'),('7678УБГ',8412,'1',0,'РД99080138'),('3110УБД',8413,'1',0,'РД97092639'),('9674УБВ',8414,'1',0,'РД52092140'),('3390УББ',8415,'1',0,'РД62111341'),('5818УБВ',8416,'1',0,'РД85052242'),('9975УБЖ',8421,'1',0,'РД94080743'),('4445УБД',8423,'1',0,'РД99052044'),('8299УБЕ',501,'1',0,'РД78072545'),('9446УБА',520,'1',0,'РД90040446'),('5104УББ',1405,'1',0,'РД61022047'),('5572УБЗ',1406,'1',0,'РД50030748'),('4182УБЖ',1910,'1',0,'РД70042949'),('7154УБВ',2805,'1',0,'РД86120150'),('8001УБГ',2806,'1',0,'РД73083151'),('9373УББ',3201,'1',0,'РД68050352'),('8567УБА',3202,'1',0,'РД95111153'),('0380УБЗ',3203,'1',0,'РД92062654'),('7788УБЕ',3317,'1',0,'РД91091255'),('4845УБЗ',3318,'1',0,'РД99042556'),('3322УБД',3319,'1',0,'РД55081857'),('7547УБГ',3404,'1',0,'РД49031758'),('2529УББ',3405,'1',0,'РД99082259'),('7936УБА',4009,'1',0,'РД68061960'),('2267УБГ',4010,'1',0,'РД61120661'),('2607УБГ',4705,'1',0,'РД51101162'),('6389УБЗ',4706,'1',0,'РД99122363'),('6090УБА',5305,'1',0,'РД82022364'),('8240УБВ',5306,'1',0,'РД80012465'),('8498УБА',5505,'1',0,'РД67071466'),('2095УББ',5512,'1',0,'РД95082267'),('8722УБГ',6201,'1',0,'РД55081568'),('5006УББ',6218,'1',0,'РД56071669'),('8155УБГ',6219,'1',0,'РД96051570'),('9946УБД',6226,'1',0,'РД98042771'),('3428УБЖ',3102,'1',0,'РД93052072'),('6495УБЖ',3103,'1',0,'РД63080773'),('3961УБА',3104,'1',0,'РД65060174'),('4549УБВ',3108,'1',0,'РД86111875'),('2025УБЕ',7902,'1',0,'РД57111476'),('2865УБЕ',7903,'1',0,'РД63122377'),('3062УББ',8405,'1',0,'РД65061078'),('9368УБВ',8406,'1',0,'РД99031679'),('8182УБЗ',8407,'1',0,'РД66032280'),('7939УБГ',8408,'1',0,'РД64081181'),('7347УББ',8412,'1',0,'РД64032882'),('0831УБВ',8413,'1',0,'РД77110783'),('4751УБВ',8414,'1',0,'РД95061284'),('2838УБВ',8415,'1',0,'РД79012185'),('8713УБЗ',8416,'1',0,'РД66120186'),('1394УБГ',8421,'1',0,'РД73071887'),('9388УБВ',8423,'1',0,'РД81051188'),('3370УБВ',501,'1',0,'РД52110589'),('4283УБА',520,'1',0,'РД71021390'),('1865УББ',1405,'1',0,'РД56040391'),('9017УБЖ',1406,'1',0,'РД85110992'),('6902УБВ',1910,'1',0,'РД70072993'),('7272УБВ',2805,'1',0,'РД98041994'),('7747УБВ',2806,'1',0,'РД77062695'),('2604УБЗ',3201,'1',0,'РД91121496'),('8282УБЕ',3202,'1',0,'РД81032397'),('1009УБЕ',3203,'1',0,'РД68122098'),('6144УБЗ',3317,'1',0,'РД97040699'),('9961УББ',3318,'1',0,'РД94022310'),('0508УБЖ',3319,'1',0,'РД73033001'),('7871УБГ',3404,'1',0,'РД82040502'),('1738УБЕ',3405,'1',0,'РД79051003'),('8758УБЕ',4009,'1',0,'РД92111304'),('2955УБГ',4010,'1',0,'РД60103105'),('6998УБА',4705,'1',0,'РД93032206'),('1610УБД',4706,'1',0,'РД80080307'),('6899УБА',5305,'1',0,'РД91021208'),('1325УБЕ',5306,'1',0,'РД65083009'),('0054УБД',5505,'1',0,'РД50120610');
/*!40000 ALTER TABLE `mashin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uildverlegch`
--

DROP TABLE IF EXISTS `uildverlegch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uildverlegch` (
  `uildverlegchID` tinyint(4) NOT NULL,
  `uildverlegchNer` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`uildverlegchID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uildverlegch`
--

LOCK TABLES `uildverlegch` WRITE;
/*!40000 ALTER TABLE `uildverlegch` DISABLE KEYS */;
INSERT INTO `uildverlegch` VALUES (1,'Abarth'),(2,'Alfa Romeo'),(3,'Asia Motors'),(4,'Aston Martin'),(5,'Audi'),(6,'Austin'),(7,'Autobianchi'),(8,'Bentley'),(9,'BMW'),(10,'Bugatti'),(11,'Buick'),(12,'Cadillac'),(13,'Carver'),(14,'Chevrolet'),(15,'Chrysler'),(16,'Citroen'),(17,'Corvette'),(18,'Dacia'),(19,'Daewoo'),(20,'Daihatsu'),(21,'Daimler'),(22,'Datsun'),(23,'Dodge'),(24,'Donkervoort'),(25,'Ferrari'),(26,'Fiat'),(27,'Fisker'),(28,'Ford'),(29,'FSO'),(30,'Galloper'),(31,'Honda'),(32,'Hummer'),(33,'Hyundai'),(34,'Infiniti'),(35,'Innocenti'),(36,'Iveco'),(37,'Jaguar'),(38,'Jeep'),(39,'Josse'),(40,'Kia'),(41,'KTM'),(42,'Lada'),(43,'Lamborghini'),(44,'Lancia'),(45,'Land Rover'),(46,'Landwind'),(47,'Lexus'),(48,'Lincoln'),(49,'Lotus'),(50,'Marcos'),(51,'Maserati'),(52,'Maybach'),(53,'Mazda'),(54,'Mega'),(55,'Mercedes'),(56,'Mercury'),(57,'MG'),(58,'Mini'),(59,'Mitsubishi'),(60,'Morgan'),(61,'Morris'),(62,'Nissan'),(63,'Noble'),(64,'Opel'),(65,'Peugeot'),(66,'PGO'),(67,'Pontiac'),(68,'Porsche'),(69,'Princess'),(70,'Renault'),(71,'Rolls-Royce'),(72,'Rover'),(73,'Saab'),(74,'Seat'),(75,'Skoda'),(76,'Smart'),(77,'Spectre'),(78,'SsangYong'),(79,'Subaru'),(80,'Suzuki'),(81,'Talbot'),(82,'Tesla'),(83,'Think'),(84,'Toyota'),(85,'Triumph'),(86,'TVR'),(87,'Volkswagen'),(88,'Volvo'),(89,'Yugo');
/*!40000 ALTER TABLE `uildverlegch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ungu`
--

DROP TABLE IF EXISTS `ungu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ungu` (
  `unguID` bigint(20) NOT NULL,
  `unguNer` varchar(20) NOT NULL,
  `unguHEX` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`unguID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ungu`
--

LOCK TABLES `ungu` WRITE;
/*!40000 ALTER TABLE `ungu` DISABLE KEYS */;
INSERT INTO `ungu` VALUES (71225520,'Amaranth','#E52B50'),(77737400,'Amber','#FFBF00'),(46263314,'Amethyst','#9966CC'),(76747261,'Apricot','#FBCEB1'),(37777724,'Aquamarine','#7FFFD4'),(77777,'Azure','#007FFF'),(42347760,'Baby blue','#89CFF0'),(75372734,'Beige','#F5F5DC'),(0,'Black','#000000'),(377,'Blue','#0000FF'),(112666,'Blue-green','#0095B6'),(42425742,'Blue-violet','#8A2BE2'),(67456603,'Blush','#DE5D83'),(63277462,'Bronze','#CD7F32'),(45445400,'Brown','#964B00'),(40000040,'Burgundy','#800020'),(34024543,'Byzantium','#702963'),(45400030,'Carmine','#960018'),(67430543,'Cerise','#DE3163'),(75647,'Cerulean','#007BA7'),(75763716,'Champagne','#F7E7CE'),(37777400,'Chartreuse green','#7FFF00'),(36637400,'Chocolate','#7B3F00'),(43653,'Cobalt blue','#0047AB'),(33647067,'Coffee','#6F4E37'),(56071463,'Copper','#B87333'),(76101571,'Coral','#F88379'),(67012074,'Crimson','#DC143C'),(177777,'Cyan','#00FFFF'),(73344657,'Desert sand','#EDC9AF'),(37374777,'Electric blue','#7DF9FF'),(24144170,'Emerald','#50C878'),(177477,'Erin','#00FF3F'),(77753400,'Gold','#FFD700'),(40100200,'Gray','#808080'),(177400,'Green','#00FF00'),(17777400,'Harlequin','#3FFF00'),(22600202,'Indigo','#4B0082'),(77777760,'Ivory','#FFFFF0'),(124153,'Jade','#00A86B'),(12325607,'Jungle green','#29AB87'),(55277334,'Lavender','#B57EDC'),(77773400,'Lemon','#FFF700'),(62121310,'Lilac','#C8A2C8'),(57777400,'Lime','#BFFF00'),(77600377,'Magenta','#FF00FF'),(77600257,'Magenta rose','#FF00AF'),(40000000,'Maroon','#800000'),(70130377,'Mauve','#E0B0FF'),(200,'Navy blue','#000080'),(63073442,'Ocher','#CC7722'),(40100000,'Olive','#808000'),(77722400,'Orange','#FFA500'),(77642400,'Orange-red','#FF4500'),(66470326,'Orchid','#DA70D6'),(77762664,'Peach','#FFE5B4'),(64361061,'Pear','#D1E231'),(63146377,'Periwinkle','#CCCCFF'),(7034673,'Persian blue','#1C39BB'),(77740313,'Pink','#FFC0CB'),(43442605,'Plum','#8E4585'),(30523,'Prussian blue','#003153'),(63104231,'Puce','#CC8899'),(40000200,'Purple','#800080'),(70605534,'Raspberry','#E30B5C'),(77600000,'Red','#FF0000'),(61612605,'Red-violet','#C71585'),(77600177,'Rose','#FF007F'),(70010537,'Ruby','#E0115F'),(76500162,'Salmon','#FA8072'),(44400012,'Sangria','#92000A'),(3651272,'Sapphire','#0F52BA'),(77622000,'Scarlet','#FF2400'),(60140300,'Silver','#C0C0C0'),(34100220,'Slate gray','#708090'),(51776000,'Spring bud','#A7FC00'),(177577,'Spring green','#00FF7F'),(64532214,'Tan','#D2B48C'),(22036062,'Taupe','#483C32'),(100200,'Teal','#008080'),(20160320,'Turquoise','#40E0D0'),(73501356,'Violet','#EE82EE'),(20101155,'Viridian','#40826D'),(77777777,'White','#FFFFFF'),(7024101,'Yankees Blue','#1C2841'),(77777400,'Yellow','#FFFF00');
/*!40000 ALTER TABLE `ungu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zorchil_audit`
--

DROP TABLE IF EXISTS `zorchil_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zorchil_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zorchilID` int(11) NOT NULL,
  `mashindugaar` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `changedat` datetime DEFAULT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zorchil_audit`
--

LOCK TABLES `zorchil_audit` WRITE;
/*!40000 ALTER TABLE `zorchil_audit` DISABLE KEYS */;
INSERT INTO `zorchil_audit` VALUES (1,3,'2090УБА','2018-02-08 16:58:30','update'),(2,53,'2090УБА','2018-02-08 16:58:30','update'),(3,103,'2090УБА','2018-02-08 16:58:30','update'),(4,4,'8095УБА','2018-02-08 17:16:27','delete'),(5,137,'0354УБГ','2018-02-09 20:05:17','update'),(6,13,'9842УБД','2018-03-28 12:28:43','delete'),(7,14,'5647УБД','2018-03-28 12:28:43','update');
/*!40000 ALTER TABLE `zorchil_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zorchilburtgel`
--

DROP TABLE IF EXISTS `zorchilburtgel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zorchilburtgel` (
  `burtgelID` int(11) NOT NULL,
  `ognoo` datetime NOT NULL,
  `camerCode` varchar(8) CHARACTER SET latin1 NOT NULL,
  `duremCode` tinyint(4) NOT NULL,
  `mashinDugaar` varchar(7) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`burtgelID`),
  KEY `camerCode` (`camerCode`),
  KEY `duremCode` (`duremCode`),
  KEY `mashinDugaar` (`mashinDugaar`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zorchilburtgel`
--

LOCK TABLES `zorchilburtgel` WRITE;
/*!40000 ALTER TABLE `zorchilburtgel` DISABLE KEYS */;
INSERT INTO `zorchilburtgel` VALUES (2,'2017-12-22 12:34:56','2',1,'6175УБЖ'),(3,'2017-12-23 12:12:12','2',2,'2090УБА'),(5,'2017-06-12 00:00:00','2',4,'0429УББ'),(6,'2016-07-11 00:00:00','2',6,'2353УБГ'),(7,'2016-03-09 00:00:00','2',1,'0019УБВ'),(8,'2016-02-02 00:00:00','2',2,'0977УБЕ'),(9,'2016-02-24 00:00:00','2',3,'3242УБГ'),(11,'2017-08-18 00:00:00','2',2,'1156УБЖ'),(12,'2016-12-13 00:00:00','2',2,'0376УББ'),(14,'2016-05-15 00:00:00','2',4,'5647УБД'),(15,'2017-12-06 00:00:00','2',4,'0094УБЖ'),(16,'2018-01-20 00:00:00','2',3,'5151УБВ'),(17,'2016-01-21 00:00:00','2',1,'7420УБГ'),(18,'2017-11-23 00:00:00','2',2,'0005УБЗ'),(19,'2017-10-08 00:00:00','2',2,'8801УБЕ'),(20,'2016-11-22 00:00:00','2',1,'4590УБД'),(21,'2017-03-29 00:00:00','2',1,'0154УБЕ'),(22,'2017-12-09 00:00:00','2',3,'5116УБЕ'),(23,'2016-02-19 00:00:00','2',2,'6146УБЖ'),(24,'2017-08-05 00:00:00','2',3,'4719УБА'),(25,'2016-11-25 00:00:00','2',3,'2916УББ'),(26,'2016-04-02 00:00:00','2',2,'6213УББ'),(27,'2017-10-06 00:00:00','2',2,'4341УБД'),(28,'2016-01-10 00:00:00','2',3,'4301УБЗ'),(29,'2017-03-22 00:00:00','2',1,'7378УБД'),(30,'2016-03-28 00:00:00','2',1,'3917УБГ'),(31,'2018-01-02 00:00:00','2',2,'4104УБД'),(32,'2017-07-01 00:00:00','2',4,'0598УБЕ'),(33,'2016-12-21 00:00:00','2',1,'2004УББ'),(34,'2016-07-01 00:00:00','2',2,'0051УББ'),(35,'2017-01-23 00:00:00','2',2,'1990УББ'),(36,'2016-07-04 00:00:00','2',4,'7767УБВ'),(37,'2016-03-08 00:00:00','2',2,'0354УБГ'),(38,'2017-05-07 00:00:00','2',4,'7678УБГ'),(39,'2016-01-23 00:00:00','2',1,'3110УБД'),(40,'2017-05-02 00:00:00','2',4,'9674УБВ'),(41,'2017-11-23 00:00:00','2',3,'3390УББ'),(42,'2016-07-19 00:00:00','2',1,'5818УБВ'),(43,'2017-10-28 00:00:00','1',3,'9975УБЖ'),(44,'2017-05-07 00:00:00','1',1,'4445УБД'),(46,'2016-07-16 00:00:00','1',3,'9446УБА'),(47,'2017-01-19 00:00:00','1',1,'5104УББ'),(48,'2016-03-21 00:00:00','1',4,'5572УБЗ'),(49,'2017-11-01 00:00:00','1',1,'4182УБЖ'),(50,'2017-11-10 00:00:00','1',3,'7154УБВ'),(51,'2016-05-05 00:00:00','1',3,'1764УБД'),(52,'2016-04-19 00:00:00','1',2,'6175УБЖ'),(53,'2017-12-23 12:12:12','1',2,'2090УБА'),(54,'2016-02-17 00:00:00','1',4,'8095УБА'),(55,'2018-01-03 00:00:00','1',2,'0429УББ'),(56,'2017-12-27 00:00:00','1',2,'2353УБГ'),(57,'2016-03-19 00:00:00','1',3,'0019УБВ'),(58,'2017-05-10 00:00:00','1',3,'0977УБЕ'),(59,'2016-09-16 00:00:00','1',1,'3242УБГ'),(60,'2016-05-15 00:00:00','1',2,'0427УБЕ'),(61,'2017-12-28 00:00:00','1',3,'1156УБЖ'),(62,'2016-06-08 00:00:00','1',3,'0376УББ'),(63,'2017-01-15 00:00:00','1',1,'9842УБД'),(64,'2016-11-26 00:00:00','1',4,'5647УБД'),(65,'2016-02-01 00:00:00','1',3,'0094УБЖ'),(66,'2017-06-15 00:00:00','1',3,'5151УБВ'),(67,'2016-03-04 00:00:00','1',3,'7420УБГ'),(68,'2016-01-12 00:00:00','1',2,'0005УБЗ'),(69,'2017-04-13 00:00:00','1',2,'8801УБЕ'),(70,'2016-11-24 00:00:00','1',3,'4590УБД'),(71,'2016-08-27 00:00:00','1',3,'0154УБЕ'),(72,'2017-01-29 00:00:00','1',4,'5116УБЕ'),(73,'2016-08-22 00:00:00','1',3,'6146УБЖ'),(74,'2016-08-31 00:00:00','1',1,'4719УБА'),(75,'2017-04-07 00:00:00','1',2,'2916УББ'),(76,'2016-06-17 00:00:00','1',4,'6213УББ'),(77,'2017-02-05 00:00:00','1',3,'4341УБД'),(78,'2017-07-06 00:00:00','1',1,'4301УБЗ'),(79,'2017-11-23 00:00:00','1',3,'7378УБД'),(80,'2016-02-07 00:00:00','1',3,'3917УБГ'),(81,'2017-09-27 00:00:00','1',4,'4104УБД'),(82,'2017-06-06 00:00:00','1',3,'0598УБЕ'),(83,'2017-05-05 00:00:00','1',2,'2004УББ'),(84,'2017-10-24 00:00:00','1',3,'0051УББ'),(85,'2017-03-23 00:00:00','1',3,'1990УББ'),(86,'2018-01-23 00:00:00','1',3,'7767УБВ'),(87,'2017-04-26 00:00:00','1',1,'0354УБГ'),(88,'2016-07-11 00:00:00','1',4,'7678УБГ'),(89,'2017-11-12 00:00:00','1',3,'3110УБД'),(90,'2017-02-23 00:00:00','1',1,'9674УБВ'),(91,'2016-05-26 00:00:00','1',3,'3390УББ'),(92,'2016-05-18 00:00:00','1',3,'5818УБВ'),(93,'2016-06-22 00:00:00','1',3,'9975УБЖ'),(94,'2017-10-24 00:00:00','1',3,'4445УБД'),(95,'2016-05-16 00:00:00','1',4,'8299УБЕ'),(96,'2016-06-07 00:00:00','1',3,'9446УБА'),(97,'2016-06-26 00:00:00','1',1,'5104УББ'),(98,'2017-12-01 00:00:00','1',4,'5572УБЗ'),(99,'2017-01-28 00:00:00','1',4,'4182УБЖ'),(100,'2017-12-06 00:00:00','1',2,'7154УБВ'),(101,'2016-11-26 00:00:00','1',2,'1764УБД'),(102,'2016-04-30 00:00:00','1',2,'6175УБЖ'),(103,'2017-12-23 12:12:12','1',1,'2090УБА'),(104,'2016-11-22 00:00:00','1',2,'8095УБА'),(105,'2017-07-07 00:00:00','1',2,'0429УББ'),(106,'2016-09-18 00:00:00','1',4,'2353УБГ'),(107,'2017-09-29 00:00:00','1',3,'0019УБВ'),(108,'2017-07-05 00:00:00','1',2,'0977УБЕ'),(109,'2016-02-15 00:00:00','1',1,'3242УБГ'),(110,'2017-09-28 00:00:00','1',3,'0427УБЕ'),(111,'2016-04-13 00:00:00','1',3,'1156УБЖ'),(112,'2017-02-26 00:00:00','1',2,'0376УББ'),(113,'2017-01-09 00:00:00','1',4,'9842УБД'),(114,'2017-05-24 00:00:00','1',4,'5647УБД'),(115,'2017-01-11 00:00:00','1',4,'0094УБЖ'),(116,'2018-01-22 00:00:00','1',2,'5151УБВ'),(117,'2017-06-12 00:00:00','1',2,'7420УБГ'),(118,'2016-08-10 00:00:00','1',2,'0005УБЗ'),(119,'2016-06-11 00:00:00','1',2,'8801УБЕ'),(120,'2016-08-13 00:00:00','1',4,'4590УБД'),(121,'2017-01-21 00:00:00','1',4,'0154УБЕ'),(122,'2016-05-01 00:00:00','1',3,'5116УБЕ'),(123,'2016-02-19 00:00:00','1',4,'6146УБЖ'),(124,'2017-09-25 00:00:00','1',4,'4719УБА'),(125,'2016-02-01 00:00:00','1',3,'2916УББ'),(126,'2017-09-18 00:00:00','1',2,'6213УББ'),(127,'2017-04-20 00:00:00','1',1,'4341УБД'),(128,'2017-07-07 00:00:00','1',1,'4301УБЗ'),(129,'2017-12-31 00:00:00','1',3,'7378УБД'),(130,'2017-09-11 00:00:00','1',1,'3917УБГ'),(131,'2017-11-12 00:00:00','1',1,'4104УБД'),(132,'2017-11-07 00:00:00','1',3,'0598УБЕ'),(133,'2017-10-14 00:00:00','1',6,'2004УББ'),(134,'2016-09-30 00:00:00','1',6,'0051УББ'),(135,'2017-09-08 00:00:00','1',6,'1990УББ'),(136,'2017-04-17 00:00:00','1',6,'7767УБВ'),(137,'2018-01-15 01:00:00','1',6,'0354УБГ'),(138,'2017-07-30 00:00:00','1',6,'7678УБГ'),(139,'2017-02-19 00:00:00','1',6,'3110УБД'),(140,'2016-09-04 00:00:00','1',6,'9674УБВ'),(141,'2016-08-31 00:00:00','1',6,'3390УББ'),(142,'2017-10-26 00:00:00','1',6,'5818УБВ'),(143,'2017-07-25 00:00:00','1',6,'9975УБЖ'),(144,'2016-06-20 00:00:00','1',6,'4445УБД'),(145,'2017-01-30 00:00:00','1',6,'8299УБЕ'),(146,'2016-06-17 00:00:00','1',6,'9446УБА'),(147,'2016-10-17 00:00:00','1',6,'5104УББ'),(148,'2017-10-26 00:00:00','1',6,'5572УБЗ'),(149,'2017-05-17 00:00:00','1',6,'4182УБЖ'),(150,'2016-02-26 00:00:00','1',6,'7154УБВ');
/*!40000 ALTER TABLE `zorchilburtgel` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER before_zorchilburtgel_update 
    BEFORE UPDATE ON zorchilburtgel
    FOR EACH ROW 
BEGIN
    INSERT INTO zorchil_audit
    SET action = 'update',
        mashindugaar = OLD.MashinDugaar,
        zorchilid = OLD.burtgelid,
        changedat = NOW(); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER zorchil_after_delete
AFTER DELETE
   ON zorchilburtgel FOR EACH ROW

BEGIN

   INSERT INTO zorchil_audit
   ( zorchilid,  mashinDugaar,
     changedat,  zorchil_audit.action)
   VALUES 
   ( OLD.burtgelid, OLD.MashinDugaar,
     NOW(), 'delete' 
     );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `zxtx`
--

DROP TABLE IF EXISTS `zxtx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxtx` (
  `duremID` tinyint(4) NOT NULL,
  `tailbar` varchar(2000) CHARACTER SET utf8 NOT NULL,
  `zaalt` varchar(10) CHARACTER SET latin1 NOT NULL,
  `torguuli` bigint(20) NOT NULL,
  `Huuli` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`duremID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxtx`
--

LOCK TABLES `zxtx` WRITE;
/*!40000 ALTER TABLE `zxtx` DISABLE KEYS */;
INSERT INTO `zxtx` VALUES (1,'Хот дотор 60км/ц дээш хурд хэтрүүлэхгүй байх','32.1',19200,'Хууль'),(2,'1-р эгнээгээр зорчихгүй байх','33.7',8000,'Хууль'),(3,'Улаан гэрлээр уулзвар нэвтрэхгүй байх','32.8',19200,'Хууль'),(4,'Суудлын/Хамгаалах бүс зүүсэн байх','34.6',8000,'Хууль'),(5,'Хөдөлгөөн дунд гар утас хэрэглэхгүй байх','34.1',8000,'Хууль'),(6,'Дугаарын хязгаарлалтыг баримтлах','34.2',20000,'Хууль');
/*!40000 ALTER TABLE `zxtx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tordb'
--

--
-- Dumping routines for database 'tordb'
--
/*!50003 DROP FUNCTION IF EXISTS `funGetTorguuli` */;
ALTER DATABASE `tordb` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `funGetTorguuli`(code integer) RETURNS int(11)
BEGIN
  declare k integer;
  
  SELECT torguuli INTO k FROM tordb.zxtx
  WHERE ID=code;
  
RETURN k;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tordb` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `getTorguuli` */;
ALTER DATABASE `tordb` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTorguuli`(IN carNo varchar(7))
BEGIN
SELECT zorchilburtgel.burtgelID as '№', 
       zorchilburtgel.ognoo 'Огноо', 
       camer.camerBairshil 'Хаана',  
	   zxtx.zaalt 'Заалт', zxtx.tailbar 'Тайлбар', 
       zxtx.torguuli 'Торгуулийн дүн(₮)' FROM camer  
	INNER JOIN zorchilburtgel ON camer.camerID = zorchilburtgel.camerCode INNER JOIN zxtx 
	ON zxtx.ID = zorchilburtgel.duremCode WHERE zorchilburtgel.mashinDugaar=@carNO;    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tordb` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `spNer` */;
ALTER DATABASE `tordb` CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spNer`(in num varchar(7) CHARACTER SET utf8, out ener varchar(25) CHARACTER SET utf8)
BEGIN
declare nr varchar(25);

SELECT Ner INTO nr FROM ezemshigch
  WHERE ezemshigchRD=
           (SELECT ezemshigchRD FROM tordb.mashin
             WHERE plateNo=num);

   SET ener=nr;
   select @ener;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `tordb` CHARACTER SET utf8 COLLATE utf8_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `updateTorguuli` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateTorguuli`()
BEGIN

DECLARE id bigint;

SELECT duremid into id
FROM durem
WHERE ((SELECT COUNT(*) FROM zorchilburtgel WHERE duremcode = duremid )*100 / (SELECT COUNT(*) FROM zorchilburtgel)) > 25;

UPDATE durem 
SET torguuli=torguuli+torguuli/5
WHERE duremID = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-04 14:50:22
