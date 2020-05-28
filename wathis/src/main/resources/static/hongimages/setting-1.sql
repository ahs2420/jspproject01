-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `tb_audit`
--

DROP TABLE IF EXISTS `tb_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_audit` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '심사 일련번호',
  `member_id` int unsigned NOT NULL DEFAULT '0' COMMENT '회원일련번호',
  `circulation_chk` tinyint(1) NOT NULL COMMENT '유통여부 확인',
  `circulation_content` text COMMENT '기존에 유통하던 제품/ 서비스에 비해 개선된 점',
  `preparations_plan` text NOT NULL COMMENT '준비계획',
  `relay_plan` text NOT NULL COMMENT '전달계획',
  `reword_type` int DEFAULT NULL COMMENT '리워드 종류',
  `reword_info` text COMMENT '리워드 정보제공고시',
  `required_documents_orgName` varchar(100) DEFAULT NULL COMMENT '필수 서류 원본이름',
  `required_documents_Name` varchar(100) DEFAULT NULL COMMENT '필수 서류 이름',
  `required_documents_url` varchar(100) DEFAULT NULL COMMENT '필수 서류 폴더 URL',
  `fees_chk` int NOT NULL COMMENT '수수료 정책동의',
  `policy_agreement` int NOT NULL,
  `status` int DEFAULT '1' COMMENT '심사 상태 0:반려 1:심사중 2:승인',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_audit`
--

LOCK TABLES `tb_audit` WRITE;
/*!40000 ALTER TABLE `tb_audit` DISABLE KEYS */;
INSERT INTO `tb_audit` VALUES (1,0,1,'른 판매처에서 유통된 적이 있다면 리워드로 제공 할 수 없습니다.\r\n기존에 유통하던 제품/ 서비스','까지 진행된 리워드의 준비 상태 및 앞으로의 계획을 구체적으로 설명해주세요. *\r\n\r\n1) 리워드가 유형의 제품인 경우 제','드의 전달 계획을 알려주세요. *\r\n\r\n1)리워드의 전달 방법(택배',0,NULL,'7e3dd20471b9d871c46e3d26e930bb0b.jpg','U433vwftCrVMxSr9rtP7noIH4ABIXMtW.jpg','/users/jinhong/git/jspproject01/wathis/src/main/resources/static/hongimages/mypageOneImgß',1,1,1,'2020-05-28 16:42:46');
/*!40000 ALTER TABLE `tb_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_member`
--

DROP TABLE IF EXISTS `tb_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_member` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `uid` varchar(50) NOT NULL COMMENT '회원아이디',
  `upassword` varchar(255) NOT NULL COMMENT '비밀번호',
  `sns_type` varchar(10) DEFAULT NULL COMMENT 'sns로그인 타입',
  `sns_id` varchar(200) DEFAULT NULL COMMENT 'sns 로그인 아이디',
  `uname` varchar(20) NOT NULL COMMENT '회원이름',
  `utel` varchar(255) DEFAULT NULL COMMENT '회원전화번호',
  `uemail` varchar(50) NOT NULL COMMENT '회원이메일주소',
  `ugroup` int NOT NULL DEFAULT '0' COMMENT '회원그룹(0:사용자,1:관리자)',
  `uimg` varchar(100) DEFAULT '0' COMMENT '회원이미지',
  `status` int NOT NULL DEFAULT '1' COMMENT '상태(0:탈퇴,1:정상,2:정지)',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_member`
--

LOCK TABLES `tb_member` WRITE;
/*!40000 ALTER TABLE `tb_member` DISABLE KEYS */;
INSERT INTO `tb_member` VALUES (1,'AA','4fc82b26aecb47d2868c4efbe3581732a3e7cbcc6c2efb32062c08170a05eeb8',NULL,NULL,'11',NULL,'11',0,'0',1,'2020-05-28 16:21:47');
/*!40000 ALTER TABLE `tb_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-28 18:27:52
