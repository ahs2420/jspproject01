-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_article_boardcode`
--

DROP TABLE IF EXISTS `tb_article_boardcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article_boardcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `writer` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `hit` int(11) DEFAULT '0',
  `fileName` varchar(300) DEFAULT NULL COMMENT ' ',
  `fileOriName` varchar(300) DEFAULT NULL COMMENT ' ',
  `fileUrl` varchar(300) DEFAULT NULL COMMENT '  ',
  `ref` int(11) DEFAULT NULL COMMENT '  (  )',
  `re_step` int(11) DEFAULT NULL COMMENT ' (  )',
  `re_level` int(11) DEFAULT NULL COMMENT ' (   )',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article_boardcode`
--

LOCK TABLES `tb_article_boardcode` WRITE;
/*!40000 ALTER TABLE `tb_article_boardcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_article_boardcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_article_event`
--

DROP TABLE IF EXISTS `tb_article_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL COMMENT '제목',
  `member_id` int(10) unsigned NOT NULL COMMENT '작성자 일련번호',
  `content` text COMMENT '내용',
  `hit` int(11) DEFAULT '0' COMMENT '조회수',
  `fileName` varchar(300) DEFAULT NULL COMMENT '첨부파일이름',
  `fileOriName` varchar(300) DEFAULT NULL COMMENT '첨부파일원래이름',
  `fileUrl` varchar(300) DEFAULT NULL COMMENT '첨부파일저장 위치',
  `ref` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 정렬 할때 사용(id)',
  `re_step` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 사용하는 그룹(답글의 그룹)',
  `re_level` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 들여쓰기',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article_event`
--

LOCK TABLES `tb_article_event` WRITE;
/*!40000 ALTER TABLE `tb_article_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_article_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_article_notice`
--

DROP TABLE IF EXISTS `tb_article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(300) NOT NULL COMMENT '제목',
  `member_id` int(10) unsigned NOT NULL COMMENT '작성자 일련번호',
  `content` text COMMENT '내용',
  `hit` int(11) DEFAULT '0' COMMENT '조회수',
  `fileName` varchar(300) DEFAULT NULL COMMENT '첨부파일이름',
  `fileOriName` varchar(300) DEFAULT NULL COMMENT '첨부파일원래이름',
  `fileUrl` varchar(300) DEFAULT NULL COMMENT '첨부파일저장 위치',
  `ref` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 정렬 할때 사용(id)',
  `re_step` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 사용하는 그룹(답글의 그룹)',
  `re_level` int(11) DEFAULT NULL COMMENT '답변형 게시판에서 들여쓰기',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article_notice`
--

LOCK TABLES `tb_article_notice` WRITE;
/*!40000 ALTER TABLE `tb_article_notice` DISABLE KEYS */;
INSERT INTO `tb_article_notice` VALUES (2,'subject',1,'content',2,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:09'),(3,'subject',1,'content',1,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(4,'subject',1,'content',1,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(5,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(6,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(7,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(8,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(9,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(10,'subject',1,'content',1,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(11,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(12,'subject',1,'content',1,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:21'),(13,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(14,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(15,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(16,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(17,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(18,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(19,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(20,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(21,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(22,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(23,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(24,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(25,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(26,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(27,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(28,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(29,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(30,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(31,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(32,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:22'),(33,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(34,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(35,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(36,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(37,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(38,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(39,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(40,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(41,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(42,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(43,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(44,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(45,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(46,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(47,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(48,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(49,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(50,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(51,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(52,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(53,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(54,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(55,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:23'),(56,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(57,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(58,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(59,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(60,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(61,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(62,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(63,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(64,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(65,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(66,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(67,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(68,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(69,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(70,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(71,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(72,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(73,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(74,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(75,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(76,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(77,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:24'),(78,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(79,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(80,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(81,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(82,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(83,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(84,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(85,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(86,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(87,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(88,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(89,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(90,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(91,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(92,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(93,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(94,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(95,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(96,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(97,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(98,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:25'),(99,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(100,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(101,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(102,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(103,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(104,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(105,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(106,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(107,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(108,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(109,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(110,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(111,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(112,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(113,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(114,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(115,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(116,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:26'),(117,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(118,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(119,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(120,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(121,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(122,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(123,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(124,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(125,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(126,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(127,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(128,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(129,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(130,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(131,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(132,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:27'),(133,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(134,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(135,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(136,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(137,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(138,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(139,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(140,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(141,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(142,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(143,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(144,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(145,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(146,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(147,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(148,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(149,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(150,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(151,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(152,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:28'),(153,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(154,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(155,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(156,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(157,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(158,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(159,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(160,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(161,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(162,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(163,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(164,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(165,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(166,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(167,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(168,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(169,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(170,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(171,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(172,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:29'),(173,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(174,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(175,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(176,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(177,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(178,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(179,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(180,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(181,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(182,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(183,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(184,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(185,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(186,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(187,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(188,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(189,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:30'),(190,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(191,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(192,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(193,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(194,'subject',1,'content',1,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(195,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(196,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(197,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(198,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(199,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(200,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(201,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(202,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(203,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(204,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:31'),(205,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(206,'subject',1,'content',2,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(207,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(208,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(209,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(210,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:32'),(211,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:33'),(212,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:33'),(213,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:33'),(214,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:33'),(215,'subject',1,'content',0,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:07:33'),(216,'subject',1,'content',6,'','fileOriName','fileUrl',9999,0,0,'2020-05-27 15:08:00'),(217,'게시글 수정',1,'게시글 수정내용ㄴ~~~~~~~~~~~',1,'159071795589192.jpg','Screenshot 2020-05-27 at 16.45.32.jpg','/upload/2020/',10000,0,0,'2020-05-29 10:47:01');
/*!40000 ALTER TABLE `tb_article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_audit`
--

DROP TABLE IF EXISTS `tb_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_audit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '심사 일련번호',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '회원일련번호',
  `circulation_chk` tinyint(1) NOT NULL COMMENT '유통여부 확인',
  `circulation_content` text COMMENT '기존에 유통하던 제품/ 서비스에 비해 개선된 점',
  `preparations_plan` text NOT NULL COMMENT '준비계획',
  `relay_plan` text NOT NULL COMMENT '전달계획',
  `reword_type` int(2) DEFAULT NULL COMMENT '리워드 종류',
  `reword_info` text COMMENT '리워드 정보제공고시',
  `required_documents_orgName` varchar(50) DEFAULT NULL COMMENT '필수 서류 원본이름',
  `required_documents_Name` varchar(50) DEFAULT NULL COMMENT '필수 서류 이름',
  `required_documents_url` varchar(50) DEFAULT NULL COMMENT '필수 서류 폴더 URL',
  `fees_chk` tinyint(1) NOT NULL COMMENT '수수료 정책동의',
  `policy_agreement` varchar(100) NOT NULL,
  `status` int(1) DEFAULT '1' COMMENT '심사 상태 0:반려 1:심사중 2:승인',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_audit`
--

LOCK TABLES `tb_audit` WRITE;
/*!40000 ALTER TABLE `tb_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `boardCode` varchar(20) NOT NULL COMMENT ' (,  )',
  `boardName` varchar(50) NOT NULL COMMENT '(  ',
  `boardColor` varchar(20) NOT NULL,
  `boardListTemplate` varchar(100) NOT NULL COMMENT '  (jsp)',
  `boardContentTemplate` varchar(100) NOT NULL COMMENT '  (jsp)',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
INSERT INTO `tb_board` VALUES (7,1,'notice','공지사항','#5D1049','listTemplate.jsp','stanContentTemplate.jsp','2020-05-27 14:30:48'),(8,1,'event','이벤트','#5D1049','photoTemplate.jsp','stanContentTemplate.jsp','2020-05-27 14:31:09');
/*!40000 ALTER TABLE `tb_board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '()',
  `dept` int(11) NOT NULL DEFAULT '1' COMMENT ' ',
  `title` varchar(30) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment_boardcode`
--

DROP TABLE IF EXISTS `tb_comment_boardcode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comment_boardcode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `writer` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment_boardcode`
--

LOCK TABLES `tb_comment_boardcode` WRITE;
/*!40000 ALTER TABLE `tb_comment_boardcode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment_boardcode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment_event`
--

DROP TABLE IF EXISTS `tb_comment_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comment_event` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '게시판 아이디',
  `comment` text,
  `member_id` int(10) unsigned NOT NULL COMMENT '작성자 일련번호',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment_event`
--

LOCK TABLES `tb_comment_event` WRITE;
/*!40000 ALTER TABLE `tb_comment_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comment_notice`
--

DROP TABLE IF EXISTS `tb_comment_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comment_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '게시판 아이디',
  `comment` text,
  `member_id` int(10) unsigned NOT NULL COMMENT '작성자 일련번호',
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment_notice`
--

LOCK TABLES `tb_comment_notice` WRITE;
/*!40000 ALTER TABLE `tb_comment_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_maker_info`
--

DROP TABLE IF EXISTS `tb_maker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_maker_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' ',
  `audit_id` int(10) unsigned NOT NULL,
  `marker_name` varchar(50) NOT NULL COMMENT ' ',
  `img_dir` varchar(100) DEFAULT NULL COMMENT '  ',
  `marker_img` varchar(100) NOT NULL COMMENT ' ',
  `marker_email` varchar(100) NOT NULL,
  `marker_phone` varchar(50) NOT NULL COMMENT ' ',
  `marker_kakao_id` varchar(100) DEFAULT NULL COMMENT ' ',
  `marker_kakao_url` varchar(100) DEFAULT NULL COMMENT ' url',
  `marker_home_page_url` varchar(100) DEFAULT NULL,
  `marker_facebook_url` varchar(100) DEFAULT NULL,
  `marker_twiter_url` varchar(100) DEFAULT NULL,
  `marker_instagram_url` varchar(100) DEFAULT NULL COMMENT ' ',
  `business_type` varchar(5) NOT NULL COMMENT ' ',
  `bankbook_img` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_maker_info`
--

LOCK TABLES `tb_maker_info` WRITE;
/*!40000 ALTER TABLE `tb_maker_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_maker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member`
--

DROP TABLE IF EXISTS `tb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `uid` varchar(50) NOT NULL COMMENT '회원아이디',
  `upassword` varchar(255) NOT NULL COMMENT '비밀번호',
  `sns_type` varchar(10) DEFAULT NULL COMMENT 'sns로그인 타입',
  `sns_id` varchar(200) DEFAULT NULL COMMENT 'sns 로그인 아이디',
  `uname` varchar(20) NOT NULL COMMENT '회원이름',
  `utel` varchar(255) DEFAULT NULL COMMENT '회원전화번호',
  `uemail` varchar(50) NOT NULL COMMENT '회원이메일주소',
  `ugroup` int(11) NOT NULL DEFAULT '0' COMMENT '회원그룹(0:사용자,1:관리자)',
  `uimg` varchar(100) DEFAULT NULL COMMENT '회원 이미지',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '상태(0:탈퇴,1:정상,2:정지)',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (1,'admin','0ffe1abd1a08215353c233d6e009613e95eec4253832a761af28ff37ac5a150c',NULL,NULL,'관리자',NULL,'1',1,NULL,1,'2020-05-26 18:16:36'),(2,'aa','4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8',NULL,NULL,'11',NULL,'11',0,NULL,1,'2020-05-28 19:08:06');
/*!40000 ALTER TABLE `tb_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member_addr`
--

DROP TABLE IF EXISTS `tb_member_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member_addr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `addr1` varchar(20) NOT NULL COMMENT ' ',
  `addr2` varchar(100) NOT NULL COMMENT ' ',
  `addr3` varchar(100) NOT NULL COMMENT ' ',
  `ship_name` varchar(50) NOT NULL COMMENT ' ',
  `ship_tel` varchar(255) NOT NULL COMMENT ' ',
  `ship_desc` varchar(30) NOT NULL DEFAULT '' COMMENT ' ',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member_addr`
--

LOCK TABLES `tb_member_addr` WRITE;
/*!40000 ALTER TABLE `tb_member_addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_member_addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_menu`
--

DROP TABLE IF EXISTS `tb_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '메뉴 그룹(부모요소)',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '메뉴 그룹(자동 체번)',
  `dept` int(11) NOT NULL DEFAULT '1' COMMENT '메뉴 깊이',
  `morder` int(11) NOT NULL DEFAULT '0' COMMENT '순서',
  `title` varchar(100) NOT NULL COMMENT '제목',
  `url` varchar(100) NOT NULL COMMENT '주소',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
INSERT INTO `tb_menu` VALUES (6,0,1,1,1,'리워드','/product/product-list','2020-05-28 11:03:51'),(7,0,2,1,2,'공지사항','/article?boardCode=notice','2020-05-28 11:06:50'),(8,0,3,1,3,'와디스 소개','/introduce','2020-05-28 11:07:07'),(9,0,4,1,4,'더보기','#','2020-05-28 11:59:34'),(23,9,4,2,1,'이벤트','/article?boardCode=event','2020-05-28 12:39:04'),(31,9,4,2,2,'aet','aet','2020-05-28 14:51:15'),(32,9,4,2,3,'taet','eataet','2020-05-28 14:51:24');
/*!40000 ALTER TABLE `tb_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT ' ',
  `delivery_fee` int(11) NOT NULL,
  `payment` int(11) NOT NULL DEFAULT '0',
  `account_num` varchar(20) DEFAULT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  `account_bank` varchar(20) DEFAULT NULL,
  `pay_type` char(1) NOT NULL DEFAULT '0' COMMENT '(0:,1:,2:)',
  `receiver_addr1` varchar(20) NOT NULL COMMENT ' ',
  `receiver_addr2` varchar(100) NOT NULL COMMENT ' ',
  `receiver_addr3` varchar(100) NOT NULL COMMENT ' ',
  `receiver_tel` varchar(255) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `receiver_etc` varchar(100) NOT NULL,
  `state` char(1) NOT NULL DEFAULT '1' COMMENT '(0:,1:,2:,3:(),4:,5:)',
  `delivery_id` varchar(30) NOT NULL COMMENT '( api )',
  `delivery_number` varchar(30) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order_detail`
--

DROP TABLE IF EXISTS `tb_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `option_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '( )',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order_detail`
--

LOCK TABLES `tb_order_detail` WRITE;
/*!40000 ALTER TABLE `tb_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_popup`
--

DROP TABLE IF EXISTS `tb_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_popup` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `member_id` int(10) unsigned NOT NULL COMMENT '회원 일련번호',
  `display` varchar(20) NOT NULL COMMENT '보여질 위치',
  `title` varchar(30) NOT NULL COMMENT '대제목',
  `subtitle` varchar(50) NOT NULL COMMENT '소제목',
  `img` varchar(200) NOT NULL COMMENT '이미지 url',
  `url` varchar(200) NOT NULL COMMENT '이동 url',
  `start_date` date NOT NULL COMMENT '시작일자',
  `end_date` date NOT NULL COMMENT '마감일자',
  `status` char(1) DEFAULT '1' COMMENT '0:출력x,1:출력,2:상단출력',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_popup`
--

LOCK TABLES `tb_popup` WRITE;
/*!40000 ALTER TABLE `tb_popup` DISABLE KEYS */;
INSERT INTO `tb_popup` VALUES (1,1,'product','팝업 제목22','팝업 소제목22','/upload/2020/1590728241329430.jpg','팝업 URL22','2020-06-14','2020-06-16','0','2020-05-28 18:34:50');
/*!40000 ALTER TABLE `tb_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product`
--

DROP TABLE IF EXISTS `tb_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `audit_id` int(10) unsigned NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0' COMMENT '  0:  1:  2:  3:  4:  ',
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL COMMENT ' ',
  `video_chk` tinyint(1) NOT NULL COMMENT '   ',
  `img_upload_dir` varchar(100) NOT NULL COMMENT ' ',
  `img` text NOT NULL COMMENT ' ( |)',
  `content` text NOT NULL,
  `price` int(11) NOT NULL,
  `start_date` date NOT NULL COMMENT ' ',
  `end_date` date NOT NULL,
  `maker_name` varchar(20) NOT NULL,
  `maker_tel` varchar(255) NOT NULL,
  `maker_homepage` varchar(255) NOT NULL,
  `maker_sns_type` varchar(255) NOT NULL COMMENT ' SNS (,)',
  `maker_sns_url` varchar(255) NOT NULL COMMENT ' SNS URL(,)',
  `keyword` varchar(255) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product`
--

LOCK TABLES `tb_product` WRITE;
/*!40000 ALTER TABLE `tb_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_comment`
--

DROP TABLE IF EXISTS `tb_product_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '    ',
  `member_imgae` varchar(100) DEFAULT NULL COMMENT ' ',
  `member_status` varchar(100) DEFAULT NULL COMMENT ', , ',
  `member_userid` varchar(100) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_comment`
--

LOCK TABLES `tb_product_comment` WRITE;
/*!40000 ALTER TABLE `tb_product_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_notice`
--

DROP TABLE IF EXISTS `tb_product_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product_notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_notice`
--

LOCK TABLES `tb_product_notice` WRITE;
/*!40000 ALTER TABLE `tb_product_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_product_option`
--

DROP TABLE IF EXISTS `tb_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `market_price` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `delevery_price` int(10) unsigned NOT NULL,
  `option_type` char(1) NOT NULL COMMENT '0: , 1: ,2: ',
  `option_kind` varchar(200) DEFAULT NULL COMMENT ' : | ,  :  ',
  `delivery_date` date NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_option`
--

LOCK TABLES `tb_product_option` WRITE;
/*!40000 ALTER TABLE `tb_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_site_config`
--

DROP TABLE IF EXISTS `tb_site_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_site_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `content` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_site_config`
--

LOCK TABLES `tb_site_config` WRITE;
/*!40000 ALTER TABLE `tb_site_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_site_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-29 14:02:18
