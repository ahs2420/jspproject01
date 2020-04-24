-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: project
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
-- Table structure for table `tb_board`
--

DROP TABLE IF EXISTS `tb_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_board` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int(10) unsigned NOT NULL COMMENT '  ',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `member_imgae` varchar(100) DEFAULT NULL COMMENT ' ',
  `member_userid` varchar(100) DEFAULT NULL,
  `content` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
-- Table structure for table `tb_board_config`
--

DROP TABLE IF EXISTS `tb_board_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_board_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `list_template` varchar(100) DEFAULT NULL COMMENT ' ',
  `content_template` varchar(100) DEFAULT NULL COMMENT ' ',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_board_config`
--

LOCK TABLES `tb_board_config` WRITE;
/*!40000 ALTER TABLE `tb_board_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_board_config` ENABLE KEYS */;
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
  `point` int(11) NOT NULL DEFAULT '0',
  `state` char(1) NOT NULL DEFAULT '1' COMMENT '(0:,1:,2:)',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '  ',
  `dept` int(11) NOT NULL DEFAULT '1' COMMENT ' ',
  `morder` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
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
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT ' ',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `option_id` int(11) NOT NULL DEFAULT '0' COMMENT ' ',
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
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(100) NOT NULL,
  `main_img` varchar(100) NOT NULL,
  `img` text NOT NULL COMMENT ' ( |)',
  `content` text NOT NULL,
  `price` int(11) NOT NULL,
  `end_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `maker_name` varchar(20) NOT NULL,
  `maker_tel` varchar(255) NOT NULL,
  `maker_homepage` varchar(255) NOT NULL,
  `maker_sns_type` varchar(255) NOT NULL COMMENT ' SNS (,)',
  `maker_sns_url` varchar(255) NOT NULL COMMENT ' SNS URL(,)',
  `policy` text NOT NULL,
  `information` text NOT NULL,
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
  `member_id` int(10) unsigned NOT NULL DEFAULT '0',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `market_price` int(10) unsigned NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `delevery_price` int(10) unsigned NOT NULL,
  `option_type` char(1) NOT NULL COMMENT '0: , 1: ,2: ',
  `option_kind` varchar(200) DEFAULT NULL COMMENT ' : | ,  :  ',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-24  1:41:39
