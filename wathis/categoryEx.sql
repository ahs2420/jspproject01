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
-- Table structure for table `tb_category`
--

DROP TABLE IF EXISTS `tb_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '카테고리그룹(부모요소)',
  `dept` int(11) NOT NULL DEFAULT '1' COMMENT '카테고리 깊이',
  `title` varchar(30) NOT NULL COMMENT '카테고리이름',
  `cate_img` varchar(100) NOT NULL COMMENT '카테고리 이미지',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_category`
--

LOCK TABLES `tb_category` WRITE;
/*!40000 ALTER TABLE `tb_category` DISABLE KEYS */;
INSERT INTO `tb_category` VALUES (4,0,1,'테크ㆍ가전','/upload/2020/1590999648421582.jpg','2020-06-01 17:20:48'),(5,0,1,'패션ㆍ잡화','/upload/2020/1590999672846163.jpg','2020-06-01 17:21:12'),(6,0,1,'뷰티','/upload/2020/1590999682918739.jpg','2020-06-01 17:21:22'),(7,0,1,'푸드','/upload/2020/1590999691685441.jpg','2020-06-01 17:21:31'),(8,0,1,'홈리빙','/upload/2020/1590999699316634.jpg','2020-06-01 17:21:39'),(9,0,1,'디자인소품','/upload/2020/1590999707389877.jpg','2020-06-01 17:21:47'),(10,0,1,'여행·레저','/upload/2020/1590999718901589.jpg','2020-06-01 17:21:58'),(11,0,1,'스포츠·모빌리티','/upload/2020/159099973062117.jpg','2020-06-01 17:22:10'),(12,0,1,'반려동물','/upload/2020/1590999739430767.jpg','2020-06-01 17:22:19'),(13,0,1,'모임','/upload/2020/1590999748910942.jpg','2020-06-01 17:22:28'),(14,0,1,'공연·컬쳐','/upload/2020/1590999763255672.jpg','2020-06-01 17:22:43'),(15,0,1,'소셜·캠페인','/upload/2020/1590999779889441.jpg','2020-06-01 17:22:59'),(16,0,1,'교육·키즈','/upload/2020/159099978867165.jpg','2020-06-01 17:23:08'),(17,0,1,'게임·취미','/upload/2020/159099979579741.jpg','2020-06-01 17:23:15'),(18,0,1,'출판','/upload/2020/1590999803228151.jpg','2020-06-01 17:23:23'),(19,0,1,'기부·후원','/upload/2020/1590999817060964.jpg','2020-06-01 17:23:37');
/*!40000 ALTER TABLE `tb_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-01 17:24:10
