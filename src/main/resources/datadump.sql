CREATE DATABASE  IF NOT EXISTS `habittracking` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `habittracking`;
-- MySQL dump 10.13  Distrib 5.6.25, for osx10.6 (x86_64)
--
-- Host: 127.0.0.1    Database: HabitTracking
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `daily_entry`
--

DROP TABLE IF EXISTS `daily_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_entry` (
  `id_dly_ent` int(11) NOT NULL,
  `habit_id` int(11) unsigned NOT NULL,
  `date` date DEFAULT NULL,
  `response` varchar(20) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  KEY `relation_habit` (`habit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_entry`
--

LOCK TABLES `daily_entry` WRITE;
/*!40000 ALTER TABLE `daily_entry` DISABLE KEYS */;
INSERT INTO `daily_entry` VALUES (0,100,'2017-12-01','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-02','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-03','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-04','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-05','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-06','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-07','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-08','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-09','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-10','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-11','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-12','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-13','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-14','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-15','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-16','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-17','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-18','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-19','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-20','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-21','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-22','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-23','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-24','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-25','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-26','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-27','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-28','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-29','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-30','Y','2018-02-16 01:43:49',NULL),(0,100,'2017-12-31','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-01','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-02','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-03','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-04','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-05','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-06','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-07','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-08','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-09','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-10','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-11','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-12','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-13','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-14','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-15','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-16','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-17','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-18','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-19','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-20','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-21','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-22','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-23','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-24','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-25','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-26','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-27','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-28','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-29','Y','2018-02-16 01:43:49',NULL),(0,101,'2017-12-30','Y','2018-02-16 01:43:49',NULL),(1,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(1,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(2,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(3,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(4,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(5,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(6,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(7,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(8,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(9,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(10,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(11,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(12,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(13,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(14,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(15,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(16,101,'2017-12-31','Y','2018-02-16 01:43:49',123),(17,101,'2017-12-31','Y','2018-02-16 04:43:49',123),(18,101,'2017-12-31','Y','2018-02-16 04:43:49',123),(19,101,'2017-12-31','Y','2018-02-16 04:43:49',100);
/*!40000 ALTER TABLE `daily_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habit`
--

DROP TABLE IF EXISTS `habit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habit` (
  `habit_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `habit_name` varchar(100) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`habit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habit`
--

LOCK TABLES `habit` WRITE;
/*!40000 ALTER TABLE `habit` DISABLE KEYS */;
INSERT INTO `habit` VALUES (100,'Coding','Y','Career Dev.',NULL),(101,'Tech Training','Y','Career Dev.',NULL),(102,'kklnlkn','N','Daily',NULL),(103,'Sleep Time','Y','Daily',NULL),(104,'Wake-Up Time','Y','Daily',NULL),(105,'Greens Plus','Y','Daily',NULL),(106,'Lots of water','Y','Daily',NULL),(107,'Accupressure Eye points twice','Y','Daily',NULL),(108,'nail rub for white hair','Y','Daily',NULL),(109,'Yoga','Y','Daily',NULL),(110,'Jog/Long Walk','Y','Daily',NULL),(111,'Pranayama','Y','Daily',NULL),(112,'Dips/Body Building','Y','Daily',NULL),(113,'Diary','Y','Daily',NULL),(114,'Daily Gratitude','Y','Daily',NULL),(115,'Reading/Audio book','Y','Daily',NULL),(116,'Milk','Y','Health',NULL),(117,'Sip water','Y','Health',NULL),(118,'Water in the Morning','Y','Health',NULL),(119,'No water after the Food','Y','Health',NULL),(120,'Spirulina','Y','Health',NULL),(121,'Fruits/Fruit Juice/Aloe Vera','Y','Health',NULL),(122,'Almonds','Y','Health',NULL),(123,'Oil Pooling','Y','Health',NULL),(124,'Breakfast','Y','Health',NULL),(125,'Sprouts Regularly','Y','Health',NULL),(126,'Flossing and night brush','Y','Health',NULL),(127,'No Abuse','Y','Fake it till you believe it',NULL),(128,'Fearless Vocabulary','Y','Fake it till you believe it',NULL),(129,'Listen to Motivational Music','Y','Fake it till you believe it',NULL),(130,'Meditation','Y','Fake it till you believe it',NULL),(131,'Om Chanting/Gayatri mantra','Y','Fake it till you believe it',NULL),(132,'positive Affiramtions','Y','Fake it till you believe it',NULL),(133,'No Lies','Y','Fake it till you believe it',NULL),(134,'Fake it Till you BECOME IT','Y','Fake it till you believe it',NULL),(135,'Sandeep Maheshwari/Robin sharma/santosh nair etc..','Y','Fake it till you believe it',NULL);
/*!40000 ALTER TABLE `habit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (20);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joined_table`
--

DROP TABLE IF EXISTS `joined_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `joined_table` (
  `habit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `FKatdtp1u41krdknqdamyujrh4w` (`user_id`),
  CONSTRAINT `FKatdtp1u41krdknqdamyujrh4w` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joined_table`
--

LOCK TABLES `joined_table` WRITE;
/*!40000 ALTER TABLE `joined_table` DISABLE KEYS */;
INSERT INTO `joined_table` VALUES (101,11011),(102,11011),(103,11012),(103,11011);
/*!40000 ALTER TABLE `joined_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_setting`
--

DROP TABLE IF EXISTS `monthly_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_setting` (
  `id` int(11) unsigned NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(3) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `relation_habit_month` (`id`),
  CONSTRAINT `relation_habit_month` FOREIGN KEY (`id`) REFERENCES `habit` (`habit_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_setting`
--

LOCK TABLES `monthly_setting` WRITE;
/*!40000 ALTER TABLE `monthly_setting` DISABLE KEYS */;
INSERT INTO `monthly_setting` VALUES (100,2018,'JAN',11011),(101,2018,'JAN',11011),(102,2018,'JAN',11011),(103,2018,'JAN',11011),(104,2018,'JAN',11011),(105,2018,'JAN',11011),(106,2018,'JAN',NULL),(107,2018,'JAN',NULL),(108,2018,'JAN',NULL),(109,2018,'JAN',NULL),(110,2018,'JAN',NULL),(111,2018,'JAN',NULL),(112,2018,'JAN',NULL),(113,2018,'JAN',NULL),(114,2018,'JAN',NULL),(115,2018,'JAN',NULL),(116,2018,'JAN',NULL),(117,2018,'JAN',NULL),(118,2018,'JAN',NULL),(119,2018,'JAN',NULL),(120,2018,'JAN',NULL),(121,2018,'JAN',NULL),(122,2018,'JAN',NULL),(123,2018,'JAN',NULL),(124,2018,'JAN',NULL),(125,2018,'JAN',NULL),(126,2018,'JAN',NULL),(127,2018,'JAN',NULL),(128,2018,'JAN',NULL),(129,2018,'JAN',NULL),(130,2018,'JAN',NULL),(131,2018,'JAN',NULL),(132,2018,'JAN',NULL),(133,2018,'JAN',NULL),(134,2018,'JAN',NULL),(135,2018,'JAN',NULL),(100,2018,'FEB',11011),(101,2018,'FEB',11011),(102,2018,'FEB',11011),(103,2018,'FEB',11011),(104,2018,'FEB',11011),(105,2018,'FEB',11011),(106,2018,'FEB',NULL),(107,2018,'FEB',NULL),(108,2018,'FEB',NULL),(109,2018,'FEB',NULL),(110,2018,'FEB',NULL),(111,2018,'FEB',NULL),(112,2018,'FEB',NULL),(113,2018,'FEB',NULL),(114,2018,'FEB',NULL),(115,2018,'FEB',NULL),(116,2018,'FEB',NULL),(117,2018,'FEB',NULL),(118,2018,'FEB',NULL),(119,2018,'FEB',NULL),(120,2018,'FEB',NULL),(121,2018,'FEB',NULL),(122,2018,'FEB',NULL),(123,2018,'FEB',NULL),(124,2018,'FEB',NULL),(125,2018,'FEB',NULL),(126,2018,'FEB',NULL),(127,2018,'FEB',NULL),(128,2018,'FEB',NULL),(129,2018,'FEB',NULL),(130,2018,'FEB',NULL),(131,2018,'FEB',NULL),(132,2018,'FEB',NULL),(133,2018,'FEB',NULL),(134,2018,'FEB',NULL),(135,2018,'FEB',NULL),(100,2018,'MAR',11011),(101,2018,'MAR',11011),(102,2018,'MAR',11011),(103,2018,'MAR',11011),(104,2018,'MAR',11011),(105,2018,'MAR',11011),(106,2018,'MAR',NULL),(107,2018,'MAR',NULL),(108,2018,'MAR',NULL),(109,2018,'MAR',NULL),(110,2018,'MAR',NULL),(111,2018,'MAR',NULL),(112,2018,'MAR',NULL),(113,2018,'MAR',NULL),(114,2018,'MAR',NULL),(115,2018,'MAR',NULL),(116,2018,'MAR',NULL),(117,2018,'MAR',NULL),(118,2018,'MAR',NULL),(119,2018,'MAR',NULL),(120,2018,'MAR',NULL),(121,2018,'MAR',NULL),(122,2018,'MAR',NULL),(123,2018,'MAR',NULL),(124,2018,'MAR',NULL),(125,2018,'MAR',NULL),(126,2018,'MAR',NULL),(127,2018,'MAR',NULL),(128,2018,'MAR',NULL),(129,2018,'MAR',NULL),(130,2018,'MAR',NULL),(131,2018,'MAR',NULL),(132,2018,'MAR',NULL),(133,2018,'MAR',NULL),(134,2018,'MAR',NULL),(135,2018,'MAR',NULL);
/*!40000 ALTER TABLE `monthly_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(200) NOT NULL DEFAULT '',
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11011,'gs.nitin@gmail.com','enjoylifE!','Nitin','Kumar',31),(11012,'nitinc@bgsu.edu','enjoylifE!','Nitin','Chaurasia',31);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-14  0:50:10
