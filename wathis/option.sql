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
-- Table structure for table `tb_product_option`
--

DROP TABLE IF EXISTS `tb_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_product_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '상품 일련번ㄹ호',
  `title` varchar(100) NOT NULL COMMENT '이름',
  `description` varchar(100) NOT NULL COMMENT '설명',
  `market_price` int(10) unsigned NOT NULL COMMENT '시중가',
  `price` int(10) unsigned NOT NULL COMMENT '가격',
  `stock` int(10) unsigned NOT NULL COMMENT '재고',
  `delevery_chk` char(1) NOT NULL COMMENT '배송 필수 확인',
  `delevery_price` int(10) unsigned NOT NULL COMMENT '배송비',
  `option_type` char(1) NOT NULL COMMENT '0: 옵션없음, 1: 선택형옵션,2: 서술형옵션',
  `option_kind` varchar(200) DEFAULT NULL COMMENT '선택형 : |로 구분, 서술형 : 그냥 글자',
  `delivery_date` date NOT NULL COMMENT '배송시작예정일',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '등록일자',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_product_option`
--

LOCK TABLES `tb_product_option` WRITE;
/*!40000 ALTER TABLE `tb_product_option` DISABLE KEYS */;
INSERT INTO `tb_product_option` VALUES (1,1,'프로젝트 제목 ','ㅙㅗ',0,5000,123213,'1',1000,'1','ㅔㅑㅓㅔㅑㅓ','2020-06-23','2020-06-02 18:22:07'),(2,1,'프로젝트 제목 ','ㅙㅗ',0,5000,123213,'1',1000,'1','ㅔㅑㅓㅔㅑㅓ','2020-06-23','2020-06-02 18:24:39'),(3,1,'421','412',0,5000,123213,'1',8222,'1','42','2020-06-30','2020-06-02 18:26:16'),(5,6,'레고 스타워즈','레고\r\n로보트\r\n스타워즈',0,10000,1000,'1',2500,'1','M\r\nS\r\nL\r\nㅁㅁㅁ','2020-07-31','2020-06-04 10:39:10'),(6,6,'탈수기','탈수지 설명',0,50000,100,'0',0,'0','','2020-06-13','2020-06-04 10:43:23'),(8,7,'[슈퍼얼리버드]채움키트(도시락+클렌즈주스)','도시락4팩(4종x1) +클렌즈주스4팩(4종x1)',0,28900,500,'1',3000,'2','도시락4팩(4종x1) +클렌즈주스4팩(4종x1)','2020-06-04','2020-06-04 12:53:07'),(9,7,'[슈퍼얼리버드]채움키트2주패키지(도시락+클렌즈주스)','도시락8팩(4종x2) +클렌즈주스8팩(4종x2)',0,56800,500,'1',5000,'2','도시락8팩(4종x2) +클렌즈주스8팩(4종x2)','2020-06-04','2020-06-04 12:53:52'),(10,8,'[슈퍼얼리버드] 젤리냥수기 1개','젤리냥수기 1개 기 배송됩니다\r\n',0,39900,200,'1',2500,'0','','2020-06-30','2020-06-04 15:38:35'),(11,8,'[슈퍼얼리버드] 젤리냥수기 1개 + 냥냥 or 댕댕젤리팁 1개','젤리냥수기 1개 + 냥냥 or 댕댕젤리팁 1개 가 배송되는 옵션입니다\r\n',0,47900,600,'1',2500,'0','','2020-06-30','2020-06-04 15:39:10'),(12,8,'[슈퍼얼리버드] 젤리냥수기 2개','젤리냥수기 2개가 배송되는 옵션입니다',0,78900,20,'1',0,'0','','2020-06-30','2020-06-04 15:39:39'),(13,8,'[슈퍼얼리버드] 젤리냥수기 2개 + 냥냥 or 댕댕젤리팁2개','젤리냥수기 2개 + 냥냥 or 댕댕젤리팁2개 가 배송되는 옵션입니다',0,94900,70,'1',0,'0','','2020-06-30','2020-06-04 15:40:03'),(14,10,'[슈퍼 얼리버드] Deco X60(2 pack) X 1set','♥Deco X60(2 pack)기본 구성품 1set♥\r\n',0,229000,95,'1',2500,'2','♥7만원 가격 혜택♥\r\n6월9일부터 순차 발송','2020-06-18','2020-06-04 16:11:50'),(15,10,'[와디즈 한정 리워드] Deco X60(3 pack) X 1set','♥Deco X60(3 pack)기본 구성품 1set♥\r\n♥8만원 가격 혜택♥\r\n6월9일부터 순차 발송\r\n',0,319000,50,'1',2500,'0','','2020-06-18','2020-06-04 16:12:27'),(16,10,'[와디즈 한정 리워드] Deco X60(2 pack) X 1set','♥Deco X60(2 pack)기본 구성품 1set♥\r\n♥5만원 가격 혜택♥\r\n6월9일부터 순차 발송\r\n',0,249000,50,'1',2500,'0','','2020-06-18','2020-06-04 16:12:52'),(17,11,'[오직와디즈] 고단백식단 스타터팩','- 오늘라떼해 흑임자라떼맛 10잔\r\n- 매일단백해 10봉(맛옵션선택)\r\n',0,52200,600,'1',0,'2','35% 혜택(정가:80,000원)\r\n무료배송','2020-06-16','2020-06-04 16:26:35'),(18,11,'[오직와디즈] 고단백식단 2주팩','오늘라떼해 흑임자라떼맛 15잔\r\n매일단백해 15봉(맛옵션선택)\r\n',0,75600,500,'1',0,'0','','2020-06-04','2020-06-04 16:29:00'),(19,11,'[오직와디즈] 우리가족 엄지척 패밀리팩','- 오늘라떼해 흑임자라떼맛 30잔\r\n- 매일단백해 30봉(맛옵션선택)\r\n\r\n42% 혜택(정가:240,000원)\r\n무료배송',0,138600,100,'1',0,'0','','2020-06-04','2020-06-04 16:29:36'),(20,11,'[슈퍼얼리버드/한정수량] 2주팩','먼저 사는 사람이 임자!\r\n한정수량! 지금펀딩!\r\n- 오늘라떼해 흑임자라떼맛 15잔',0,30000,100,'1',0,'0','','2020-06-04','2020-06-04 16:30:28'),(21,12,'[체험판]루틴팬츠 단품 리워드 (1pcs)','루틴팬츠 03번 ‘쿨스판팬츠옵션을 기재해주세요.\r\n*핏 / 컬러 / 허리사이즈 / 기장 기재\r\n*3번팬츠는 핏에 따른 컬러가 다릅니다.\r\n1pcs가 발송됩니다.\r\n',0,39900,500,'1',2500,'1','[허리사이즈]\r\n-슬림핏 : 29,30,31,32,33,34,36,38\r\n-테이퍼드핏 : 29,30,32,34,36','2020-06-30','2020-06-04 16:47:51'),(22,12,'[정기배송] 6개월 PLAN 루틴팬츠 5벌','299,500->199,000원 (34% 혜택)\r\n*추후 발송되는 링크에서 컬러, 핏, 사이즈, 기장 선택\r\n여름 팬츠 2벌 / 가을팬츠 2벌 / 초겨울 팬츠 1벌’ 총 5벌',0,199000,1000,'1',12500,'0','','2020-06-16','2020-06-04 16:50:42'),(23,13,'A.[얼리버드] 스타일맵 + 와디즈 한정 뱃지','스타일맵x1,지관통x1, 자석x4, 뱃지x1,스티커7종 ※ 스타일맵+뱃지 [정가] 23,000원 [펀딩가(15%혜택)] 19,550원',0,19550,50,'1',2500,'0','','2020-06-30','2020-06-04 17:07:42'),(24,13,'E.스타일맵+뱃지+액자','스타일맵x1, 지관통x1, 자석x4, 뱃지x1, 맞춤액자x1, 스티커7종',0,39000,50,'1',2500,'0','','2020-06-30','2020-06-04 17:08:28'),(25,14,'[슈퍼울트라얼리버드] 홈지오 당질저감 멀티밥솥 1개','와디즈 론칭 기념 72시간 한정 50% 혜택 홈지오 당질저감 멀티밥솥\r\n5월 28일 오후 6시 마감',0,87900,2000,'0',0,'0','','2020-07-30','2020-06-04 17:23:19'),(26,14,'[슈퍼얼리버드] 홈지오 당질저감 멀티밥솥 2개','와디즈 론칭 49% 혜택 홈지오 당질저감 멀티밥솥 엄마랑 나랑 효도구성 1+1 (2개)',0,173000,2000,'1',0,'0','','2020-07-29','2020-06-04 17:24:33'),(27,14,'[얼리버드] 홈지오 당질저감 멀티밥솥 2개','와디즈 론칭 49% 혜택 홈지오 당질저감 멀티밥솥 엄마랑 나랑 효도구성 1+1 (2개)\r\n',0,193000,2000,'1',0,'0','','2020-07-24','2020-06-04 17:25:27'),(28,15,'[울트라 얼리버드] 실버라이닝 핸드타월 2세트(32% 혜택)','실버라이닝 핸드타월 2세트(총 10개)\r\n▶ 1개당 4,420원',0,44200,200,'1',0,'0','','2020-06-24','2020-06-04 17:32:29'),(30,15,'[울트라 얼리버드] 실버라이닝 핸드타월 3세트(34% 혜택)리버드] 실버라이닝 핸드타월 2세트(32% 혜택)','[울트라 얼리버드] 실버라이닝 핸드타월 3세트(34% 혜택)',0,64350,200,'1',0,'0','','2020-06-24','2020-06-04 17:33:39'),(31,16,'[슈퍼얼리버드] 한개로 시작해보기','46% 혜택 - 수분코팅제(라지) x 1',0,20900,160,'1',3000,'0','','2020-06-24','2020-06-04 17:45:44'),(32,16,'[슈퍼얼리버드] 네개로 친구&가족과 함께','51% 혜택 - 수분코팅제(라지) x 4\r\n(무료배송)\r\n',0,76500,100,'1',0,'0','','2020-06-27','2020-06-04 17:46:24'),(33,16,'[얼리버드] 네개로 친구&가족과 함께','44% 혜택 - 수분코팅제(라지) x 4 \r\n(무료배송)',0,87300,100,'1',0,'0','','2020-06-30','2020-06-04 17:46:51'),(34,17,'[72시간 한정] 스페셜 싱글세트(1세트)','1세트 ( 6ml x 5병)\r\n1개월분\r\n가격혜택 56% ( 정가 150,000원)',0,66000,9999,'1',0,'0','','2020-06-30','2020-06-04 18:06:49'),(35,17,'[72시간 한정] 스페셜 더블세트(2세트)','2세트 ( 6ml x 5병 x 2세트)\r\n2개월분 \r\n가격혜택 59% (정가 300,000원)\r\n* 72시간 한정 리워드는 2020년 5월28일 14시',0,123000,9999,'1',0,'0','','2020-06-30','2020-06-04 18:07:32'),(36,17,'[72시간 한정] 스페셜 패밀리세트(3세트)','3세트 (6ml x 5병 x 3세트)\r\n3개월분\r\n가격혜택 62% (정가 450,000원)\r\n* 72시간 한정 리워드는 2020년5월28일 14시에 마감예정입니다.\r\n',0,171000,9999,'1',0,'0','','2020-06-30','2020-06-04 18:08:06'),(37,17,'[슈퍼얼리버드] 싱글세트(1세트)','1세트 ( 6ml x 5병)\r\n1개월분\r\n가격혜택 50.5% ( 정가 150,000원)',0,74250,500,'1',0,'0','','2020-06-26','2020-06-04 18:08:40'),(38,17,'[슈퍼얼리버드] 싱글세트(1세트)','2세트 ( 6ml x 5병 x 2세트)\r\n2개월분 \r\n가격혜택 55.5% (정가 300,000원)',0,133650,500,'1',0,'0','','2020-06-08','2020-06-04 18:09:02'),(39,17,'[슈퍼얼리버드] 패밀리세트 (3세트)','3세트 (6ml x 5병 x 3세트)\r\n3개월분 \r\n가격혜택 60% (정가 450,000원)',0,180000,500,'1',0,'0','','2020-06-08','2020-06-04 18:09:24'),(40,18,'[울트라 싱글 얼리버드] 헬리오 프레셔 샤워 1개 구성','언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 1개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량이 모두 펀딩되었습니다.',0,99000,300,'1',0,'0','','2020-07-01','2020-06-04 18:22:08'),(41,18,'[슈퍼 싱글 얼리버드] 헬리오 프레셔 샤워 1개 구성','언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 1개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량 180개   현재 45개 남음!',0,108000,150,'1',0,'0','','2020-07-01','2020-06-04 18:22:30'),(42,18,'[울트라 듀얼 얼리버드] 헬리오 프레셔 샤워 2개 구성','언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 2개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량 50개   현재 22개 남음!',0,195000,30,'1',0,'0','','2020-07-01','2020-06-04 18:22:57'),(43,18,'[울트라 트리플 얼리버드] 헬리오 프레셔 샤워 3개 구성','언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 3개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량이 모두 펀딩되었습니다.',0,290000,10,'1',0,'0','','2020-07-01','2020-06-04 18:23:22'),(44,18,'[슈퍼 듀얼 얼리버드] 헬리오 프레셔 샤워 2개 구성','언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 2개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량 10개   현재 10개 남음!',0,214000,10,'1',0,'0','','2020-07-01','2020-06-04 18:23:43'),(45,18,'[슈퍼 트리플 얼리버드] 헬리오 프레셔 샤워 3개 구성','\r\n언제, 어디서나 세척과 샤워가 가능한 휴대용 헬리오 프레셔 샤워 3개 구성\r\n2020년 07월 초 (1~10일) 예정\r\n제한수량 5개   현재 5개 남음!',0,317000,5,'1',0,'0','','2020-07-01','2020-06-04 18:24:13'),(46,19,'울트라 얼리버드 혜택','정상가  249,000원 \r\n울트라 얼리버드 가격혜택  99,000원\r\n2020년 06월 말 (21~말일) 예정',0,99000,400,'1',0,'0','','2020-06-24','2020-06-04 18:39:31'),(47,19,'얼리버드 혜택','정상가  249,000원 \r\n울트라 얼리버드 가격혜택  99,000원\r\n2020년 06월 말 (21~말일) 예정',0,119000,400,'1',0,'0','','2020-06-30','2020-06-04 18:40:06'),(48,20,'[얼리버드]싱글팩','-구성품: 이바지 1벌 + 팬톤삭스 1개\r\n-혜택: 25% 가격 혜택 + 팬톤삭스 1개\r\n리워드 발송 시작일\r\n2020년 07월 초 (1~10일) 예정',0,59000,500,'1',2500,'0','','2020-07-01','2020-06-05 09:28:06'),(49,20,'[얼리버드]더블팩','-구성품: 이바지 2벌 + 팬톤삭스 2개\r\n-혜택: 30% 가격 혜택 + 팬톤삭스 2개\r\n리워드 발송 시작일\r\n2020년 07월 초 (1~10일) 예정',0,110000,500,'1',2500,'0','','2020-07-01','2020-06-05 09:28:45'),(50,20,'싱글팩','-구성품: 이바지 1벌 \r\n-혜택: 20% 가격 혜택\r\n리워드 발송 시작일\r\n2020년 07월 초 (1~10일) 예정',0,63000,500,'1',2500,'0','','2020-07-01','2020-06-05 09:29:09'),(51,20,'더블팩','-구성품: 이바지 2벌 \r\n-혜택: 25% 가격 혜택\r\n리워드 발송 시작일\r\n2020년 07월 초 (1~10일) 예정',0,118000,500,'1',2500,'0','','2020-07-01','2020-06-05 09:29:27'),(52,21,'1. [슈퍼얼리버드] 온에어플로어 Best','500ml 스프레이 1개 + 500ml 리필 2개 / 정상가 40,400 ➝ 37,000원 (8%)\r\n리워드 발송 시작일\r\n2020년 07월 말 (21~말일) 예정',0,37000,50,'1',3000,'0','','2020-07-21','2020-06-05 09:38:48'),(53,21,'2. [슈퍼얼리버드] 온에어플로어 Power','500ml 스프레이 1개 + 500ml 리필 4개 / 정상가 66,000 ➝ 58,000원 (12%)\r\n리워드 발송 시작일\r\n2020년 07월 말 (21~말일) 예정',0,58000,50,'1',0,'0','','2020-07-21','2020-06-05 09:40:03'),(54,21,'3. [슈퍼얼리버드] 온에어플로어 Friends','500ml 스프레이 2개 + 500ml 리필 4개 (+ 500ml 리필 1개 선물) / 정상가 80,800 ➝ 67,8\r\n발송 시작일 2020년 07월 말 (21~말일) 예정',0,67800,50,'1',0,'0','','2020-07-21','2020-06-05 09:42:00'),(55,21,'4. [슈퍼얼리버드] 온에어플로어 Family','500ml 스프레이 4개 + 500ml 리필 8개 (+ 500ml 리필 2개 선물) / 정상가 161,600 ➝ 129,000원 (20%)\r\n',0,129000,50,'1',0,'0','','2020-07-21','2020-06-05 09:44:50'),(56,21,'5. [얼리버드] 온에어플로어 Best','500ml 스프레이 1개 + 500ml 리필 2개 / 정상가 40,400 ➝ 38,200원 (5%)',0,38200,50,'1',0,'0','','2020-07-21','2020-06-05 09:46:15'),(57,21,'6. [얼리버드] 온에어플로어 Friends','500ml 스프레이 2개 + 500ml 리필 4개 (+ 500ml 리필 1개 선물) / 정상가 80,800 ➝ 69,400원 (14%)',0,69400,50,'1',0,'0','','2020-07-21','2020-06-05 09:46:30'),(58,22,'[슈퍼 얼리버드] 방탄주방','방탄주방 본품\r\n리워드 발송 시작일\r\n2020년 06월 말 (21~말일) 예정방탄주방 본품',0,39900,1000,'1',0,'0','','2020-06-21','2020-06-05 10:10:01'),(59,22,'[얼리버드] 방탄주방','방탄주방 본품\r\n리워드 발송 시작일s\r\n2020년 06월 말 (21~말일) 예정방탄주방 본품',0,42000,1000,'1',0,'0','','2020-06-21','2020-06-05 10:11:11'),(60,23,'1.슈퍼 얼리버드-싱글세트','싱글세트-완벽 꿀잠 자기\r\n별헤는 굿밤\r\n본품+배송비 별도(2500원)',0,12600,500,'1',2500,'0','','2020-06-21','2020-06-05 10:23:12'),(61,23,'2.슈퍼 얼리버드-커플세트','커플세트-이보다 상쾌함은 없다!\r\n별헤는 굿밤\r\n본품2+무료배송',0,23400,500,'1',0,'0','','2020-06-21','2020-06-05 10:23:37'),(62,23,'3.슈퍼 얼리버드-친구세트','친구세트-친구들과 함께 공구하기!\r\n별헤는 굿밤\r\n본품3+무료배송\r\n',0,32400,500,'1',0,'0','','2020-06-21','2020-06-05 10:23:53'),(63,23,'4.슈퍼 얼리버드-패밀리세트','패밀리세트-온 가족 하나씩, 상쾌하게!\r\n별헤는 굿밤\r\n본품5+무료배송',0,49500,400,'1',0,'0','','2020-06-21','2020-06-05 10:24:18'),(64,24,'[슈퍼얼리버드] 믹스매치팩 (10족 구성)','10족 구성의 믹스매치팩\r\n',0,24000,500,'1',0,'1','베이지S(10족)\r\n베이지M(10족)\r\n블랙S(10족)\r\n블랙M(10족)\r\n베이지S(5족)+베이지M(5족)\r\n베이지S(5족)+블랙S(5족)\r\n베이지S(5족)+블랙M(5족)\r\n베이지M(5족)+블랙S(5족) \r\n베이지M(5족)+블랙M(5족)\r\n블랙S(5족)+블랙M(5족)','2020-06-23','2020-06-05 10:38:29'),(65,24,'[얼리버드] 우리가족 패키지(40족 구성)','우리가족 모두가 신으실 수 있는\r\n40족구성의 우리가족 패키지',0,99000,100,'1',0,'1','베이지S(40족)\r\n베이지M(40족)\r\n블랙S(40족)\r\n블랙M(40족)\r\n베이지S(20족)+베이지M(20족)\r\n베이지S(20족)+블랙S(20족)\r\n베이지S(20족)+블랙M(20족)\r\n베이지M(20족)+블랙S(20족)\r\n베이지M(20족)+블랙M(20족)\r\n블랙S(20족)+블랙M(20족)\r\n베이지S(10족)+블랙S(10족)+베이지M(10족)+블랙M(10족)','2020-06-23','2020-06-05 10:39:01'),(66,24,'[얼리버드] 커플 패키지 (20족 구성)','커플 아이템으로 신으실 수 있는\r\n20족구성의 커플 패키지 ',0,53000,180,'1',0,'1','베이지S(20족)\r\n베이지S(10족)+베이지M(10족)\r\n베이지S(10족)+블랙S(10족)\r\n베이지S(10족)+블랙M(10족)\r\n베이지M(2O족)\r\n베이지M(10족)+블랙S(10족)\r\n베이지M(10족)+블랙M(10족)\r\n블랙S(20족)\r\n블랙M(20족)\r\n베이지S(5족)+베이지M(5족)+블랙S(5족)+블랙M(5족)','2020-06-23','2020-06-05 10:39:29'),(67,24,'[얼리버드] 블랙 매니아팩 (10족 구성)','블랙색상만!\r\n10족구성의 블랙 매니아팩',0,28500,150,'1',0,'1','블랙S(10족)\r\n블랙M(10족)\r\n블랙S(5족)+블랙M(5족)','2020-06-23','2020-06-05 10:40:02'),(68,24,'[얼리버드] 베이지 매니아팩 (10족 구성)','베이지색상만!\r\n10족구성의 베이지 매니아팩',0,28500,150,'1',0,'1','베이지S(10족)\r\n베이지M(10족)\r\n베이지S(5족)+베이지M(5족)','2020-06-23','2020-06-05 10:40:22'),(69,24,'[얼리버드] 믹스매치 팩 (10족 구성)','10족 구성의 믹스매치팩',0,28500,150,'1',0,'1','베이지S(5족)+블랙S(5족)\r\n베이지S(5족)+블랙M(5족)\r\n베이지M(5족)+블랙S(5족) \r\n베이지M(5족)+블랙M(5족)\r\n','2020-06-23','2020-06-05 10:40:45'),(70,24,'[기본리워드] 에어핏 체험팩 (6족 구성)','6족 구성의 체험팩',0,17500,100,'1',0,'1','베이지S(6족)\r\n베이지M(6족)\r\n블랙S(6족)\r\n블랙M(6족)\r\n베이지S(3족)+베이지M(3족)\r\n베이지S(3족)+블랙S(3족)\r\n베이지S(3족)+블랙M(3족)\r\n베이지M(3족)+블랙S(3족)\r\n베이지M(3족)+블랙M(3족)\r\n블랙S(3족)+블랙M(3족)','2020-06-23','2020-06-05 10:41:11'),(71,25,'[슈퍼얼리버드] 기어1','허리보호대 1개\r\n리워드 발송 시작일\r\n2020년 07월 중순 (11~20일) 예정',0,49000,100,'1',0,'0','','2020-06-05','2020-06-05 18:46:20'),(72,25,'[슈퍼얼리버드] 기어2','허리보호대 1개 + 네오프렌 손목보호대 1개\r\n리워드 발송 시작일\r\n2020년 07월 중순 (11~20일) 예정',0,55000,50,'1',0,'0','','2020-06-05','2020-06-05 18:46:43'),(73,25,' [슈퍼얼리버드] 기어3','허리보호대 1개 + 가디언 손목보호대 1개\r\n리워드 발송 시작일\r\n2020년 07월 중순 (11~20일) 예정',0,69000,50,'1',0,'0','','2020-06-05','2020-06-05 18:47:02'),(74,25,'[슈퍼얼리버드] 기어4','허리보호대 1개 + 펄크럼 손목보호대 1개\r\n2020년 07월 중순 (11~20일) 예정',0,69000,50,'1',0,'0','','2020-06-05','2020-06-05 18:47:43'),(75,25,'[얼리버드] 기어1','허리보호대 1개\r\n2020년 07월 중순 (11~20일) 예정',0,53000,100,'1',0,'0','','2020-06-05','2020-06-05 18:48:17'),(76,25,'[얼리버드] 기어2','허리보호대 1개 + 네오프렌 손목보호대 1개\r\n2020년 07월 중순 (11~20일) 예정',0,59000,50,'1',0,'0','','2020-06-05','2020-06-05 18:48:40'),(77,25,'[얼리버드] 기어3','허리보호대 1개 + 가디언 손목보호대 1개\r\n2020년 07월 중순 (11~20일) 예정',0,73000,50,'1',0,'0','','2020-06-05','2020-06-05 18:49:12'),(78,25,'[얼리버드] 기어4','허리보호대 1개 + 펄크럼 손목보호대 1개\r\n2020년 07월 중순 (11~20일) 예정',0,73000,50,'1',0,'0','','2020-06-05','2020-06-05 18:49:30');
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

-- Dump completed on 2020-06-05 18:53:34
