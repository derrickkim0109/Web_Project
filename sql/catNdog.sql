CREATE DATABASE  IF NOT EXISTS `catNdog` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `catNdog`;
-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: catNdog
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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cNo` int(11) NOT NULL AUTO_INCREMENT,
  `member_mNo` int(11) NOT NULL,
  `items_iNo` int(11) NOT NULL,
  `cQty` int(11) DEFAULT NULL,
  `oState` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cNo`,`member_mNo`,`items_iNo`),
  UNIQUE KEY `cNo_UNIQUE` (`cNo`),
  KEY `fk_cart_member1_idx` (`member_mNo`),
  KEY `fk_cart_items1_idx` (`items_iNo`),
  CONSTRAINT `fk_cart_items1` FOREIGN KEY (`items_iNo`) REFERENCES `items` (`iNo`),
  CONSTRAINT `fk_cart_member1` FOREIGN KEY (`member_mNo`) REFERENCES `member` (`mNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `iNo` int(11) NOT NULL AUTO_INCREMENT,
  `iImage` varchar(200) DEFAULT NULL,
  `iImageReal` varchar(200) DEFAULT NULL,
  `iName` varchar(45) DEFAULT NULL,
  `iNation` varchar(45) DEFAULT NULL,
  `iCategory` varchar(20) DEFAULT NULL,
  `iPrice` varchar(45) DEFAULT NULL,
  `iInfo` text,
  `iStock` int(11) DEFAULT NULL,
  `iClick` int(11) DEFAULT NULL,
  `iInsertdate` date DEFAULT NULL,
  `iState` varchar(45) DEFAULT NULL,
  `iUpdatedate` date DEFAULT NULL,
  `iDeletedate` date DEFAULT NULL,
  `iImage2` varchar(200) DEFAULT NULL,
  `iImageReal2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iNo`),
  UNIQUE KEY `iNo_UNIQUE` (`iNo`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'shoping14.jpg','shoping14.jpg','강아지 드라이룸','독일','강아지','1200000','비싼데 좋음',100,4,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(2,'shoping7.jpeg','shoping7.jpeg','해바라기 스크래쳐','네덜란드','고양이','20000','튼튼한 내구도',149,15,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(3,'shoping13.jpg','shoping13.jpg','칠리 핫도그','미국','강아지','25000','아이디어 상품',99,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(4,'shoping4.jpg','shoping4.jpg','애리조나 어흥냥','미국','고양이','25000','귀엽습니다',32,7,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(5,'shoping3.jpg','shoping3.jpg','바나냥','태국','고양이','35000','숨숨집',66,6,'2020-12-06','판매중','2020-12-08','2020-12-09','info3.jpg','info3.jpg'),(6,'shoping12.jpg','shoping12.jpg','백설공주뭉멍','스웨덴','강아지','20000','나는 백설공주다 뭉멍',200,18,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(7,'shoping6.jpg','shoping6.jpg','사탕모자','일본','고양이','5000','쓸모는 없지만 귀엽습니다',75,9,'2020-12-06','판매중','2020-12-09',NULL,'info6.jpg','info6.jpg'),(9,'shoping16.jpg','shoping163.jpg','멍멍이네 전원주택','일본','강아지','50000','우리집보다 좋음',100,9,'2020-12-06','판매중','2020-12-09',NULL,'info16.jpg','info161.jpg'),(11,'shoping5.jpg','shoping5.jpg','라바멍','한국','강아지','30000','라바와 댕댕이들',200,3,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(12,'shopping50.jpg','shopping50.jpg','강아지 우산','싱가폴','강아지','10000','비맞지마라 오빠 속상하니까',200,7,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(13,'shoping20.jpg','shoping20.jpg','바비트리트먼트','미국','강아지','20000','럭셔리헤어부티크 뭉멍점',200,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(14,'shopping51.jpg','shopping51.jpg','강아지 수제간식','한국','강아지','25000','먹기도 아까워',200,11,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(17,'shopping49.jpg','shopping49.jpg','드라이자켓','한국','강아지','20000','퐁신퐁신',200,4,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(19,'shoping1.jpg','shoping1.jpg','이글루화장실','스웨덴','고양이','50000','모래안녕',200,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(20,'shopping55.jpeg','shopping55.jpeg','식빵고양이','캐나다','고양이','15000','멋낸거 아니죠 추워서 입은거임',200,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(21,'shoping21.jpg','shoping212.jpg','최고급한우사료','한국','강아지','54000','맛있어요(먹어봄?)',37,28,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(22,'shoping36.jpg','shoping36.jpg','고양이수제간식','한국','고양이','20000','고급형',148,23,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(23,'shoping17.jpg','shoping17.jpg','고양이rnf','일본','고양이','19000','먹을수 있습니다.',123,23,'2020-12-07','판매중','2020-12-08',NULL,NULL,NULL),(24,'shoping17.jpg','shoping17.jpg','고양이 간식','한국','고양이','15000','보급형',200,7,'2020-12-07','판매중','2020-12-09',NULL,NULL,NULL),(25,'shopping40.jpg','shopping40.jpg','발톱깎이','한국','강아지','38000','발톱깎아야해요',100,8,'2020-12-07','판매중','2020-12-09',NULL,NULL,NULL),(28,'shopping46.jpg','shopping46.jpg','스마트화장실','미국','고양이','1200000','알아서 청소하는 똑똑한 화장실',200,4,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(29,'shoping9.jpg','shoping9.jpg','고래의 집','태국','고양이','40000','고래의 꿈 아님',200,3,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(31,'shoping25.jpg','shoping25.jpg','고양이 마약볼','국산','고양이','4000','촉촉한 고양이',200,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(32,'shoping44.jpg','shoping44.jpg','DJ냥 스크래쳐','영국','고양이','13000','그 음악을 틀어줘요 DJ냥',200,7,'2020-12-06','판매중','2020-12-09',NULL,'info44.jpg','info44.jpg'),(33,'shoping11.webp','shoping11.webp','스틸 밥그릇','이탈리아','고양이','20000','씻기편해요',200,3,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(34,'shoping3.jpg','shoping3.jpg','바나냥','핀란드','고양이','35000','바나냥',47,4,'2020-12-08','판매중','2020-12-09',NULL,'info3.jpg','info3.jpg'),(35,'shopping42.jpg','shopping42.jpg','울프 워셔','미국','강아지','24000','이젠 목욕도 손쉽게!',200,5,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(44,'shoping8.jpg','shoping8.jpg','칫솔','핀란드','강아지','3000','실리콘',55,9,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(55,'shoping24.jpeg','shoping24.jpeg','유기농비스킷','일본','강아지','20000','유기농 재료만 썼습니다',196,4,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL),(67,'shopping48.jpg','shopping48.jpg','응가집게','한국','강아지','13000','뒷처리도 깔끔하게',200,3,'2020-12-06','판매중','2020-12-09',NULL,NULL,NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `mNo` int(11) NOT NULL AUTO_INCREMENT,
  `mId` varchar(45) NOT NULL,
  `mPw` varchar(45) NOT NULL,
  `mName` varchar(45) NOT NULL,
  `mEmail` varchar(45) NOT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `mAddress` varchar(50) NOT NULL,
  `mTel` varchar(45) NOT NULL,
  `mBirth` varchar(45) NOT NULL,
  `mGender` varchar(45) NOT NULL,
  `mState` varchar(45) NOT NULL,
  `mDate` date DEFAULT NULL,
  PRIMARY KEY (`mNo`),
  UNIQUE KEY `mno_UNIQUE` (`mNo`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','1111','김관리','ç','13536','경기 안산시 단원구 첨단로 7 (성곡동)','1111111','2020-12-09','남자','회원',NULL),(2,'qwe1','aaaa','김꽃분','tjfsde1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(3,'wreewr4','aaaa','김꽃분','t3123je1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(4,'tetrte','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(5,'werwer6','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(6,'ewrwww3','aaaa','김꽃분','tje1@daum.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(7,'werwerw','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(8,'jhjh1','aaaa','김꽃분','dasdas@google.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(9,'ewrwe3','aaaa','김꽃분','tje1@google.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(10,'werwe','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(11,'sdfsdf2','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','회원','2020-12-08'),(31,'bfkdifk1','1234','강말자','a@3','15616','경기 안산시 단원구 첨단로 7123 (성곡동)','123','2020-12-09','남자','회원','2020-12-06'),(32,'dsf','1234','영재정','d@3','13536','경기 안산시 단원구 첨단로 7 (성곡동)','1111111','2020-12-03','남자','회원','2020-12-06'),(33,'qwer143','1111','윤미림','11111@naver.com','06362','서울 강남구 밤고개로 76-211 (수서동)','11111','2020-12-18','남자','회원','2020-12-08'),(34,'bnm321','1111','김바보','11111@jdcdldl.com','08362','서울 구로구 부광로 96-161111 (항동, 항동 제일풍경채 포레스트)','1111','2020-12-17','여자','회원','2020-12-08'),(35,'thejoen1','aaaa','김꽃분','tje1@naver.com','09897','서울 강서구 마곡동 801-8마곡동','01012341256','1968-04-12','여자','탈퇴','2020-12-08');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `nNo` int(11) NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(45) DEFAULT NULL,
  `nContent` text,
  `nInsertdate` date DEFAULT NULL,
  `nDeletedate` date DEFAULT NULL,
  `nUpdatedate` date DEFAULT NULL,
  `nClick` int(11) DEFAULT NULL,
  PRIMARY KEY (`nNo`),
  UNIQUE KEY `noticeno_UNIQUE` (`nNo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'배송공지사항입니다','배송공지 입니다','2020-11-27','2020-12-08','2020-12-08',2),(2,'택배공지사항입니다','안녕하세요','2020-12-07',NULL,NULL,16),(3,'상품공지사항입니다','안녕하세요','2020-11-28',NULL,NULL,0),(4,'9월 이벤트!','9월 추수감사이벤트!!','2020-09-29',NULL,'2020-12-08',1),(5,'상품공지사항입니다','상품이 업데이트 되었습니다','2020-11-30',NULL,NULL,1),(6,'추석 배송 안내','한가위 연휴를 맞아 더욱 풍성하고 넉넉한 연휴가 되시길 바랍니다. 고객님들의 요청에 따라 추석명절상품 배송기간을 추가 연장 합니다.  16일(월) 오후 2시 주문건까지 정상적인 배송이 가능하며  16일(월) 오후 2시~17일(화) 오후 2시까지 주문 건은 서울 지역내에서 배송 가능합니다.   또한 16일(월) 2시~17일(화) 2시 주문건의 경우 택배사 물량 증가로 원하시는 날짜에 도착이 되지 않을 수 있습니다. 이점 유의 하셔서 배송일 지정시 참고 하시기 바랍니다.  감사합니다','2020-12-01',NULL,NULL,4),(7,'상품공지사항입니다','안녕하세요','2020-12-02',NULL,NULL,2),(8,'10월 할로윈 상품 이벤트','돌아온 할로윈 시즌 상품 이벤트','2020-10-25',NULL,NULL,21),(9,'배송비 무료 이벤트','배송비 무료 이벤트 기간 안내','2020-12-02',NULL,NULL,9),(10,'택배관련 공지입니다.','항상 빠른배송으로 보답하겠습니다','2020-12-04',NULL,NULL,10),(11,'공지사항입니다','안녕하세요 애니몰 회원 여러분!','2020-12-05',NULL,NULL,1),(12,'4분기 시즌 상품 업데이트','4분기 시즌상품이 업데이트 되었습니다.','2020-12-06',NULL,NULL,1),(13,'상품수정관련 공지입니다.','안녕하세요','2020-12-06',NULL,NULL,2),(14,'공지사항입니다','안녕하세요','2020-12-06',NULL,NULL,96),(15,'페이지 오류 수정','불편을 끼쳐드려 죄송합니다.','2020-12-07',NULL,NULL,1),(16,'12월 크리스마스 대축제','안녕하세요','2020-12-09',NULL,NULL,2),(17,'공지사항입니다','안녕하세요','2020-12-07',NULL,NULL,3);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `oNo` int(11) NOT NULL AUTO_INCREMENT,
  `member_mNo` int(11) DEFAULT NULL,
  `items_iNo` int(11) NOT NULL,
  `odate` date DEFAULT NULL,
  `oName` varchar(45) DEFAULT NULL,
  `oTel` varchar(45) DEFAULT NULL,
  `oAddress` varchar(100) DEFAULT NULL,
  `oPaymentMethod` varchar(45) DEFAULT NULL,
  `oDelno` int(11) DEFAULT NULL,
  `oQty` int(11) DEFAULT NULL,
  `oToName` varchar(45) DEFAULT NULL,
  `oToTel` varchar(45) DEFAULT NULL,
  `oToContent` text,
  `oDeletedate` date DEFAULT NULL,
  `oState` varchar(45) DEFAULT NULL,
  `member_mId` varchar(45) DEFAULT NULL,
  `oSum` int(11) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`oNo`,`items_iNo`),
  UNIQUE KEY `oNo_UNIQUE` (`oNo`),
  KEY `fk_order_member_idx` (`member_mNo`),
  KEY `fk_order_items1_idx` (`items_iNo`),
  CONSTRAINT `fk_order_items1` FOREIGN KEY (`items_iNo`) REFERENCES `items` (`iNo`),
  CONSTRAINT `fk_order_member` FOREIGN KEY (`member_mNo`) REFERENCES `member` (`mNo`)
) ENGINE=InnoDB AUTO_INCREMENT=20201226 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (20201204,NULL,1,'2020-12-06','강동구','131232','주특별자치도 제주시 한림읍 금악리 1025','휴대폰결제',NULL,4,'강동구','10','ㅇㄹㅇㄹ',NULL,'배송완료','qwer143',218500,'112312'),(20201205,NULL,2,'2020-12-06','김복순','123','서울 강남구 도산대로 409','신용카드',NULL,3,'김복순','1212','dssd',NULL,'배송 중','bfkdifk1',164500,'213123'),(20201206,NULL,3,'2020-12-06','정남이','231211','서울 은평구 응암동 677-3 1111 ','휴대폰결제',NULL,2,'정남이','101111111','프젝 끝난겸 선물!',NULL,'결제완료','qwer143',102500,'03470'),(20201207,NULL,4,'2020-12-06','양말자','34234','서울 강남구 밤고개로 76-211 (수서동)','휴대폰결제',NULL,4,'양말자','53453',NULL,NULL,'반품처리','bfkdifk1',218500,'12323'),(20201208,NULL,5,'2020-12-06','양말자','123','서울 강동구 풍성로 86 (구두수선대-12)','휴대폰결제',NULL,1,'김진표','1212','123123',NULL,'배송완료','qwer143',52500,'31333'),(20201209,NULL,6,'2020-12-06','정남이','123','대구 동구 첨단로 7 ddddd  (신서동)','신용카드',NULL,1,'임한수','5345','ddddddd',NULL,'주문취소','bfkdifk1',56500,'41068'),(20201210,NULL,7,'2020-12-06','김복순','32345','서울 강남구 밤고개로 76-211 (수서동)','신용카드',NULL,1,'유명한','435345',NULL,NULL,'배송완료','qwer143',52500,'423423'),(20201211,NULL,9,'2020-12-06','양말자','67575','서울 강동구 풍성로 86 (구두수선대-12)','무통장입금',NULL,1,'김코난','3453',NULL,NULL,'배송중','bfkdifk1',56500,'23423'),(20201212,NULL,11,'2020-12-07','정남이','231231','서울 강남구 밤고개로 76-211 (수서동)','무통장입금',NULL,0,'박보노','5345',NULL,NULL,'결제완료','qwer143',2500,'64564'),(20201213,NULL,12,'2020-12-07','김복순','2423','서울 마포구 큰우물로2길 22','휴대폰결제',NULL,3,'김흑마','3453',NULL,NULL,'배송 준비중','thejoen',164500,'2342'),(20201214,NULL,13,'2020-12-07','정남이','24234','서울 은평구 응암동 677-3 1111 ','무통장입금',NULL,0,'도그룻','67567',NULL,NULL,'배송 준비중','thejoen',2500,'234234'),(20201215,NULL,14,'2020-12-07','김복순','978968','서울 강남구 도산대로 409','휴대폰결제',NULL,0,'이말년','67567',NULL,NULL,'배송완료','qwer143',2500,'23423'),(20201216,NULL,17,'2020-12-07','김복순','78678','서울 마포구 큰우물로2길 22','휴대폰결제',NULL,1,'주호민','23423',NULL,NULL,'배송중','thejoen',17500,'36565'),(20201217,NULL,19,'2020-12-08','정남이','678768','강원 원주시 문막읍 반계리 1114-2','신용카드',NULL,5,'김길태','123123',NULL,NULL,'배송완료','admin',102500,'9879'),(20201218,NULL,20,'2020-12-09','김복순','67567','서울 은평구 응암동 677-3 1111 ','휴대폰결제',NULL,2,'임하중','2312',NULL,NULL,'배송완료','qwer143',42500,'897'),(20201219,NULL,13,'2020-12-09','김복순','1123213','주특별자치도 제주시 한림읍 금악리 1025','신용카드',NULL,2,'박상무','324423',NULL,NULL,'배송완료','qwer143',42500,'78678'),(20201220,NULL,2,'2020-12-09','김꽃분','1012341256','서울 강서구 마곡서로 9   (마곡동)','신용카드',NULL,1,'김정남','101303423','',NULL,'결제완료','thejoen1',22500,'07810'),(20201222,NULL,55,'2020-12-09','김꽃분','1012341256','서울 강서구 남부순환로 11   (공항동, 강서센트레빌4차)','신용카드',NULL,4,'김정남','101303423','',NULL,'배송 준비중','thejoen1',82500,'07622'),(20201223,NULL,34,'2020-12-09','김꽃분','1012341256','서울 광진구 용마산로 2   (중곡동)','무통장입금',NULL,3,'김정남','101111111','',NULL,'결제완료','thejoen1',107500,'04953'),(20201224,NULL,4,'2020-12-09','김꽃분','1012341256','서울 강남구 학동로 103   (논현동)','휴대폰결제',NULL,1,'김정남','101303423','',NULL,'결제완료','thejoen1',27500,'06044'),(20201225,NULL,7,'2020-12-10','김꽃분','1012341256','서울 강남구 남부순환로 2609   (도곡동)','무통장입금',NULL,2,'김정남','101303423','잘부탁해',NULL,'배송 준비중','thejoen1',12500,'06267');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `pNo` int(11) NOT NULL AUTO_INCREMENT,
  `pImage` varchar(200) DEFAULT NULL,
  `pImageReal` varchar(200) DEFAULT NULL,
  `pTitle` varchar(45) DEFAULT NULL,
  `pContent` text,
  `pInsertdate` date DEFAULT NULL,
  `pDeletedate` date DEFAULT NULL,
  `pUpdatedate` date DEFAULT NULL,
  `pClick` int(11) NOT NULL,
  `mId` varchar(45) DEFAULT NULL,
  `member_mNo` varchar(45) DEFAULT NULL,
  `pImage2` varchar(200) DEFAULT NULL,
  `pImageReal2` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pNo`),
  UNIQUE KEY `pNo_UNIQUE` (`pNo`),
  KEY `fk_post_member1_idx` (`mId`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (21,'02.jpg','02.jpg','새벽 댕댕이 짤 달리기1','','2020-12-09',NULL,NULL,0,'bnm321',NULL,NULL,NULL),(22,'images.jpeg','images.jpeg','새벽 댕댕이 짤 달리기6','ㅋㅋ','2020-12-09',NULL,'2020-12-09',2,'bnm321',NULL,NULL,NULL),(23,'cute-dog-on-the-couch-with-toy_23-2148567017.jpg','cute-dog-on-the-couch-with-toy_23-2148567017.jpg','새벽 댕댕이 짤 달리기2','','2020-12-09',NULL,'2020-12-09',1,'bnm321',NULL,NULL,NULL),(24,'V5X5EN8.jpg','V5X5EN8.jpg','새벽 댕댕이 짤 달리기3','','2020-12-09',NULL,NULL,0,'bnm321',NULL,NULL,NULL),(25,'unnamed (1).jpg','unnamed (1).jpg','새벽 댕댕이 짤 달리기4','','2020-12-09',NULL,NULL,2,'bnm321',NULL,NULL,NULL),(26,'03.jpg','03.jpg','새벽 댕댕이 짤 달리기5','','2020-12-09',NULL,NULL,0,'bnm321',NULL,NULL,NULL),(36,'1eeb2abf2024b8a694d9994cc7e7384f.jpg','1eeb2abf2024b8a694d9994cc7e7384f1.jpg','가입인사','잘부탁드려요','2020-12-06',NULL,'2020-12-09',85,'qwer143',NULL,NULL,NULL),(46,'011dc9d4c93ef1ad6c0714f08bb4a64c.jpg','011dc9d4c93ef1ad6c0714f08bb4a64c.jpg','오늘 가입했어요','반가워요','2020-12-06',NULL,'2020-12-09',7,'thejoen',NULL,NULL,NULL),(47,'unnamed.jpg','unnamed.jpg','돼지입니다','아 고양이라고 하네요ㅋㅋ','2020-12-06',NULL,'2020-12-09',18,'qwer143',NULL,NULL,NULL),(48,'1eeb2abf2024b8a694d9994cc7e7384f.jpg','1eeb2abf2024b8a694d9994cc7e7384f.jpg','이런 사이트가 있었네요!','좋네요','2020-12-06',NULL,'2020-12-09',18,'thejoen',NULL,NULL,NULL),(51,'post1.jpeg','post1.jpeg','아기강아지에요!','너무귀여워','2020-12-06',NULL,'2020-12-09',16,'thejoen',NULL,NULL,NULL),(52,'0c3653c10a9e2e6feceb03aea2ad2e6a.jpg','0c3653c10a9e2e6feceb03aea2ad2e6a.jpg','안녕하세요 오늘의 짤!','야리냥ㅋㅋㅋㅋ','2020-12-07',NULL,'2020-12-09',22,'qwer143',NULL,NULL,NULL),(53,'252415335242980527.jpeg','252415335242980527.jpeg','제가 딱 원하던 사이트에요!','매일매일 댕냥이 볼수 있어서 햄볶아요^^','2020-12-09',NULL,'2020-12-09',5,'bnm321',NULL,NULL,NULL),(61,'cute-dog-on-the-couch-with-toy_23-2148567017.jpg','cute-dog-on-the-couch-with-toy_23-21485670171.jpg','가입인사 드리겠습니다','잘 부탁드립니다~','2020-12-09',NULL,NULL,1,'thejoen1',NULL,NULL,NULL),(62,'ㅔㅐㄴㅅ2.jpg','ㅔㅐㄴㅅ2.jpg','좋은사이트의 번영을 기원합니다','사진이 많아서 좋네요 ㅎㅎ','2020-12-09',NULL,NULL,1,'thejoen1',NULL,NULL,NULL),(63,'01.jpg','011.jpg','귀여운 고양이 사진','입니다','2020-12-10',NULL,NULL,3,'thejoen1',NULL,NULL,NULL),(64,'03.jpg','031.jpg','ㅎㅇㅎㅇ','귀여워라','2020-12-10',NULL,'2020-12-10',2,'thejoen1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postwritecomment`
--

DROP TABLE IF EXISTS `postwritecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postwritecomment` (
  `pwcNo` int(11) NOT NULL AUTO_INCREMENT,
  `pwcContent` varchar(45) DEFAULT NULL,
  `pwcInsertdate` date DEFAULT NULL,
  `pwcDeletedate` date DEFAULT NULL,
  `mId` varchar(45) DEFAULT NULL,
  `post_pNo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pwcNo`),
  UNIQUE KEY `pwcNo_UNIQUE` (`pwcNo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postwritecomment`
--

LOCK TABLES `postwritecomment` WRITE;
/*!40000 ALTER TABLE `postwritecomment` DISABLE KEYS */;
INSERT INTO `postwritecomment` VALUES (2,'안녕하세요','2020-12-07',NULL,'b','51'),(18,'반가워요','2020-12-07',NULL,'b','50'),(19,'너무 귀엽지 않나요?','2020-12-07',NULL,'b','52'),(20,'아가가 너무 귀엽네요!','2020-12-09',NULL,'thejoen1','36'),(21,'아이쿠 운동 좀 해야겠어요 ㅠㅠ','2020-12-09',NULL,'thejoen1','47'),(22,'미묘가 여기 있군요!','2020-12-09',NULL,'thejoen1','46'),(23,'항상 애쓰십니다!','2020-12-09',NULL,'thejoen1','25'),(24,'그러게요 저도 요즘 이 사이트 포스트 보는 재미에 시간가는 줄 모르겠네요ㅎㅎ','2020-12-09',NULL,'thejoen1','53'),(25,'너무 귀엽죠?','2020-12-10',NULL,'thejoen1','63'),(26,'예뻐라!','2020-12-10',NULL,'thejoen1','53');
/*!40000 ALTER TABLE `postwritecomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `qNo` int(11) NOT NULL AUTO_INCREMENT,
  `items_iNo` int(11) DEFAULT NULL,
  `qCategory` varchar(10) NOT NULL,
  `qTitle` varchar(45) NOT NULL,
  `qContent` text NOT NULL,
  `qComment` text,
  `qInsertdate` date DEFAULT NULL,
  `qSecret` int(11) DEFAULT NULL,
  `qClick` int(11) DEFAULT NULL,
  `qImage` varchar(200) DEFAULT NULL,
  `qImageReal` varchar(200) DEFAULT NULL,
  `member_mNo` int(11) DEFAULT NULL,
  `qUpdatedate` date DEFAULT NULL,
  `mId` varchar(45) DEFAULT NULL,
  `qDeletedate` date DEFAULT NULL,
  PRIMARY KEY (`qNo`),
  UNIQUE KEY `qNo_UNIQUE` (`qNo`),
  KEY `fk_qna_items1_idx` (`items_iNo`),
  KEY `fk_qna_member1_idx` (`member_mNo`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (60,NULL,'교환문의','사이즈가 너무 작아요','우리뚱냥이 숨못쉬어요!',NULL,'2020-12-08',NULL,1,'shopping45.jpeg','shopping452.jpeg',NULL,NULL,'thejoen','2020-12-09'),(61,NULL,'교환문의','사이즈가 너무 작아요','교환가능할까요?','교환완료','2020-12-09',NULL,2,'shoping12.jpg','shoping121.jpg',NULL,'2020-12-09','thejoen',NULL),(62,NULL,'상품문의','이 제품 재입고 언제 되나요?','재입고시 문자 좀 부탁드릴수 있을까요','현재 입고되었습니다! 문자 또한 넣어드렸으니 확인해보시기 바랍니다','2020-12-09',NULL,2,'shoping16.jpg','shoping162.jpg',NULL,'2020-12-09','thejoen',NULL),(63,NULL,'상품문의','대량주문 가능할까요?','캣까페 운영중입니다. 할로윈 이벤트로 대량 주문 하고 싶은데 재고수량보다 좀 더 주문할 수 없을까요?\r\n연락 부탁드립니다',NULL,'2020-12-09',NULL,0,'shoping6.jpg','shoping61.jpg',NULL,NULL,'qwer143',NULL),(64,NULL,'배송문의','배송 언제쯤 될까요?','주말 지났는데 운송장정보가 안 뜹니다.',NULL,'2020-12-09',NULL,0,'shoping7.jpeg','shoping71.jpeg',NULL,NULL,'qwer143',NULL),(65,NULL,'배송문의','배송 언제쯤 될까요?','조금 급한데 빨리 배송해 주십사합니다',NULL,'2020-12-09',NULL,1,'shoping7.jpeg','shoping72.jpeg',NULL,NULL,'thejoen1',NULL);
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `writecomment`
--

DROP TABLE IF EXISTS `writecomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writecomment` (
  `wcNo` int(11) NOT NULL AUTO_INCREMENT,
  `wcContent` text,
  `wcInsertdate` varchar(45) DEFAULT NULL,
  `mId` varchar(45) DEFAULT NULL,
  `notice_nNo` int(11) NOT NULL,
  PRIMARY KEY (`wcNo`,`notice_nNo`),
  KEY `fk_comment_member1_idx` (`mId`),
  KEY `fk_writecomment_notice1_idx` (`notice_nNo`),
  CONSTRAINT `fk_writecomment_notice1` FOREIGN KEY (`notice_nNo`) REFERENCES `notice` (`nNo`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writecomment`
--

LOCK TABLES `writecomment` WRITE;
/*!40000 ALTER TABLE `writecomment` DISABLE KEYS */;
INSERT INTO `writecomment` VALUES (73,'안녕하십니까','2020-12-06 12:46:49','b',14),(74,'123123123','2020-12-06 12:57:27','b',14),(75,'asdasd','2020-12-06 14:04:50',NULL,14),(76,'asdasd','2020-12-06 14:04:54',NULL,14),(77,'','2020-12-06 14:04:58',NULL,14),(78,'asdasdasdasd','2020-12-06 14:05:00',NULL,14),(79,'확인했습니다','2020-12-06 14:16:51','b',14),(80,'안녕하세요','2020-12-06 14:57:03',NULL,14),(81,'안녕하세요','2020-12-06 14:58:14',NULL,14),(82,'안녕하세요','2020-12-06 14:58:33',NULL,14),(83,'안녕하세요','2020-12-06 14:58:37',NULL,14),(84,'test','2020-12-06 14:59:14','관리자',14),(85,'test1','2020-12-06 14:59:53',NULL,14),(86,'test1','2020-12-06 15:00:57',NULL,14),(87,'test1','2020-12-06 15:01:00',NULL,14),(88,'안녕핫에ㅛ','2020-12-06 15:03:00','관리자',14),(89,'안녀ㅛㅇ핫에요','2020-12-06 15:05:50','관리자',14),(90,'안녕핫에ㅛ','2020-12-06 15:09:59','관리자',14),(91,'dfd','2020-12-06 15:10:22',NULL,14),(92,'test11111','2020-12-06 15:10:43','b',14),(93,'안녕하세요','2020-12-06 15:30:40','관리자',14),(94,'바보들아','2020-12-06 17:13:08','관리자',14),(96,'fdgdfg','2020-12-07 16:14:20','관리자',14),(97,'ddfsgdfgdsfg','2020-12-07 16:14:37','관리자',14),(98,'l,m.','2020-12-07 16:18:44','관리자',14),(99,',m.','2020-12-07 16:18:45','관리자',14),(100,'kl','2020-12-07 16:18:46','관리자',14),(101,'2112','2020-12-07 16:21:28','b',14),(102,'klkjl','2020-12-07 16:21:32','b',14),(103,',..,','2020-12-07 16:22:20','관리자',14),(104,'as','2020-12-07 17:31:59',NULL,14);
/*!40000 ALTER TABLE `writecomment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31 17:18:24
