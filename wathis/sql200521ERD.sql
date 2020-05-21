-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: projectErd
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `tb_article_boardCode`
--

DROP TABLE IF EXISTS `tb_article_boardCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_article_boardCode` (
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `tb_article_boardCode_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_article_boardCode`
--

LOCK TABLES `tb_article_boardCode` WRITE;
/*!40000 ALTER TABLE `tb_article_boardCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_article_boardCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_audit`
--

DROP TABLE IF EXISTS `tb_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_audit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT ' ',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `circulation_chk` tinyint(1) NOT NULL COMMENT ' ',
  `circulation_content` text COMMENT '  /    ',
  `Preparations_plan` text NOT NULL,
  `relay_plan` text NOT NULL,
  `reword_type` int(2) DEFAULT NULL COMMENT ' ',
  `reword_info` text COMMENT ' ',
  `Required_documents_orgName` varchar(50) DEFAULT NULL COMMENT '  ',
  `Required_documents_Name` varchar(50) DEFAULT NULL COMMENT '  ',
  `Required_documents_url` varchar(50) DEFAULT NULL COMMENT '   URL',
  `fees_chk` tinyint(1) NOT NULL COMMENT ' ',
  `Policy_Agreement` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `tb_audit_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_audit_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `tb_board_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board`
--

LOCK TABLES `tb_board` WRITE;
/*!40000 ALTER TABLE `tb_board` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `tb_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `tb_category` (`id`)
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
-- Table structure for table `tb_comment_boardCode`
--

DROP TABLE IF EXISTS `tb_comment_boardCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_comment_boardCode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `article_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `writer` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `tb_comment_boardCode_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_comment_boardCode_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `tb_article_boardCode` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comment_boardCode`
--

LOCK TABLES `tb_comment_boardCode` WRITE;
/*!40000 ALTER TABLE `tb_comment_boardCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comment_boardCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_maker_info`
--

DROP TABLE IF EXISTS `tb_maker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_maker_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT ' ',
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
  PRIMARY KEY (`id`),
  KEY `audit_id` (`audit_id`),
  CONSTRAINT `tb_maker_info_ibfk_1` FOREIGN KEY (`audit_id`) REFERENCES `tb_category` (`id`)
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `upassword` varchar(255) NOT NULL,
  `sns_type` varchar(10) NOT NULL COMMENT 'sns ',
  `sns_id` varchar(200) NOT NULL COMMENT 'sns  ',
  `uname` varchar(20) NOT NULL,
  `utel` varchar(255) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `ugroup` int(11) NOT NULL DEFAULT '0' COMMENT '(0:,1:)',
  `uimg` varchar(100) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '(0:,1:,2:)',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `tb_member_addr_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`)
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ()',
  `dept` int(11) NOT NULL DEFAULT '1' COMMENT ' ',
  `morder` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `tb_menu_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `tb_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_menu`
--

LOCK TABLES `tb_menu` WRITE;
/*!40000 ALTER TABLE `tb_menu` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `option_id` (`option_id`),
  CONSTRAINT `tb_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`id`),
  CONSTRAINT `tb_order_detail_ibfk_2` FOREIGN KEY (`option_id`) REFERENCES `tb_product_option` (`id`)
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL COMMENT ' ',
  `title` varchar(30) NOT NULL,
  `subtitle` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL COMMENT ' url',
  `url` varchar(200) NOT NULL COMMENT ' url',
  `start_date` datetime NOT NULL COMMENT '(,,)',
  `end_date` datetime NOT NULL COMMENT '(,,)',
  `status` char(1) DEFAULT '1' COMMENT '0:x,1:,2:',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `tb_popup_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_popup`
--

LOCK TABLES `tb_popup` WRITE;
/*!40000 ALTER TABLE `tb_popup` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `category_id` (`category_id`),
  KEY `audit_id` (`audit_id`),
  CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`id`),
  CONSTRAINT `tb_product_ibfk_3` FOREIGN KEY (`audit_id`) REFERENCES `tb_audit` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `product_id` (`product_id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `tb_product_comment_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_product_comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`),
  CONSTRAINT `tb_product_comment_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `tb_product_comment` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tb_product_notice_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `tb_member` (`id`),
  CONSTRAINT `tb_product_notice_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
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
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tb_product_option_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`id`)
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

-- Dump completed on 2020-05-21  7:00:16
