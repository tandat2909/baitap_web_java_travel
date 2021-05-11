-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: traveldb
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
                           `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `pw` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 active\\n0 inactive',
                           `roleID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           PRIMARY KEY (`accountID`),
                           KEY `fk_account_role1_idx` (`roleID`),
                           CONSTRAINT `fk_account_role1` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='thông tin tài khoản';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('0daa73cc-8d38-4b91-a7ad-911eb6ea8270','user1j','$2a$10$.w8ogVvsV5w527HgLe7Eo.aUPJTxCqZ3KBbfpPri.Gygimq.DDaDS',1,'ROLE_CUSTOMER'),('18a0a722-c44d-48b1-861e-287027e17882','tandat2909','$2a$10$ltE7jevG7OcHUXqog6lCOePg3Oqo1Jw2wQoovuBtWlZfGk9ZE3w8W',1,'ROLE_CUSTOMER'),('23574328-d2c9-45fd-bb83-b970891862a9','user73','$2a$10$y8WRnYrm4pK/ruKIt1cF1uOhQtpP.OcJWVoJZT2HdfUFIM6C27FvO',1,'ROLE_CUSTOMER'),('24a156ae-39de-4602-b3f1-85accc0fd700','tandat1234ssss','$2a$10$iCqTXIWD1jathtpDjFhzy.qjJ9lT9O0pTeDBojZ1/TIWmx2QEkneK',1,'ROLE_CUSTOMER'),('25a13416-bd56-47ae-a475-d8c4272a2e98','sjhgsajdhfahsdf','$2a$10$i.IkGXx.2m89prQxZhbrhuEBdynTSQglYiigBHPCa3/eM48c03ZWO',0,'ROLE_CUSTOMER'),('26f64943-bec1-4861-aa19-9efdcea7237f','tandat234234','$2a$10$kHo6LSYe74o5DfpvAE5xjuIIGn58By8UgK0CqFhbuRiuxPXbllttG',0,'ROLE_CUSTOMER'),('2761744a-0149-46a5-8860-924cc6441592','tinice','$2a$10$yFgzuZRkrGp04Hv5EFLyPu92JY1Qe56ejpZm5i139QwOT5He.qggK',1,'ROLE_CUSTOMER'),('4358351d-3069-43e6-a917-28f93772b56f','user1','$2a$10$TnIFRxeIBmE0dwB21CmKmutQuukCN42iwYpxIRdqE5uGI9IG.0VmG',1,'ROLE_CUSTOMER'),('4791bf66-93a7-4d28-acaf-de75565190b6','tandat','$2a$10$igIGmWTHFKwo7xebSA98oeQFnHOL7wsiyZ5Nrgwuq/p1e2l2WtpvK',1,'ROLE_ADMIN'),('5224c8f5-e49c-4f7a-a1ed-8e94c442fd19','222222','$2a$10$RjMzanJCS3pt3VzqAaBeK.jb7ACfey5f8ZvuiEgZq6QTBnHtuVgxO',1,'ROLE_CUSTOMER'),('5c58e63c-5138-49cb-9764-85385eb112cb','s','$2a$10$NcuYXYqAcTjtIjsijye6eeHX6LsUl8ynLDW0PtALp/KC3zw14.oaK',1,'ROLE_CUSTOMER'),('5f740d7b-2815-4ae9-ae04-51fd63aab72a','user733','$2a$10$48Y5KBrvD5Sa72UMkV29TO73nli6huum.zG1b0x5w/kHGWAtOS/9q',1,'ROLE_CUSTOMER'),('6ce6252e-7cc1-4b24-b872-67aba1a1802f','123456','$2a$10$evDUM9hNnBcJSyGPs8Dtgumq3YANr2yHZ0bc76mkaFX/HI6JIcfpm',1,'ROLE_EMPLOYEE'),('70e81791-ef64-4e6d-913a-474b289bbf2f','2234234234234','$2a$10$T5BBNRGnnq4llbwjBeLlsOHsi9Fe5ywYwySaqMZ02G.0dUm24jL7u',1,'ROLE_CUSTOMER'),('7f1112ae-65b8-4bd4-817e-399b595c4c98','1234568','$2a$10$ky65TG2BGy4KFl/9tjUy9e1lFAKVxVHMXnMyl4kck2KRRh1lUc2oK',1,'ROLE_CUSTOMER'),('7f54b408-bec4-4745-93b8-9c18ee607f85','duongtu','$2a$10$AV41jXgDd3FjVIWXEEybQOSOP3sNG3GV5ncYvppIm4RQ8n4gdH/m2',1,'ROLE_CUSTOMER'),('813a9c36-4453-4dbe-b3fc-e2a0385023b5','quynh','$2a$10$hOn9pptKvBcVAd886agIDuqp0tEob31D7hGNLBx9JaHB5chh6y6NC',1,'ROLE_ADMIN'),('9be1d83f-516d-4eef-94e5-2b3f2ac9f370','ss','$2a$10$/QB5/ARsLl86X7Uuohor4u.mNIx/n6hnXEm83GnLh0FNsLwL7Thga',1,'ROLE_CUSTOMER'),('a7b25eed-2aad-49a3-8721-927bb81e22ed','tandat2234234','$2a$10$FNAz4HzDbAVpAs8F6r/DaeM67ejG6SUxyyh9QkJeg.6lisJKE.0kK',0,'ROLE_CUSTOMER'),('aa69fbe7-e2c2-4d04-8a72-0b078e6ab6a7','customer','$2a$10$HdZgjI5UpPz9dw1lYF8.3O/Lv5yzcaZ1p/NAGjc4kEXXqJl26k.26',1,'ROLE_CUSTOMER'),('b470582c-9d10-41cc-a2f4-c8dd425dec02','qwe','$2a$10$7n8GOZqtUomVbU4Vdpo.H.EY1cZeioUj8S7XoiYYn8DO4Szm39VN6',0,'ROLE_CUSTOMER'),('c0ae2397-c718-40ce-9538-58ae0972dca1','user122','$2a$10$ma9pIB6WWrm/2k6ONuN.deOVBX/4vmqy6Z2oyENiCcOU/dB1MZhBm',1,'ROLE_CUSTOMER'),('dc6e5a19-58a7-46b0-ae23-3cb2218f3f33','user7','$2a$10$TXnExY5qqhyXToMYJwqOzOzwxbqHXiWLFY7FW6p63tIEsip0LnWqC',1,'ROLE_CUSTOMER'),('eca670bf-68e5-47e1-929e-0a4367424dbe','admin','$2a$10$HJOFSmQjkB/Qq.yVPgSKse/Zi41mPeBK99vZW36yLtgbotAQuwrIq',1,'ROLE_CUSTOMER'),('f8007680-5756-43a9-ad6a-e2598975663c','tandat1234','$2a$10$jd1hKxkB4sjVfTqhCbyxierYqbDSC82XScVcss9krPkbj5QIIAlE2',1,'ROLE_CUSTOMER'),('fd184360-579c-4dd3-a056-5b0fa413fac6','customers','$2a$10$I4oTRWKmUq9m.8Rrwp3PZOXCx9tCXGe0sfmbB8ojJ24mt96Ssv7k6',1,'ROLE_CUSTOMER');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ages`
--

DROP TABLE IF EXISTS `ages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ages` (
                        `ageID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        PRIMARY KEY (`ageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ages`
--

LOCK TABLES `ages` WRITE;
/*!40000 ALTER TABLE `ages` DISABLE KEYS */;
INSERT INTO `ages` VALUES ('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','Em bé'),('bdee5279-4601-484c-8fce-e8f5781deda3','Trẻ nhỏ'),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','Trẻ em'),('f53d20c2-7f20-4fad-bab6-76847d102ef9','Người lớn');
/*!40000 ALTER TABLE `ages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
                           `bookingID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `customerID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `employeesID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           `BookingDate` datetime NOT NULL,
                           `totalMoney` decimal(10,0) DEFAULT '0',
                           `status` tinyblob NOT NULL,
                           `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `amoutGuests` int NOT NULL DEFAULT '1' COMMENT 'số lượng khách hàng',
                           `note` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           `typePay` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                           PRIMARY KEY (`bookingID`),
                           KEY `fk_booking_customer1_idx` (`customerID`),
                           KEY `fk_booking_employees_idx` (`employeesID`),
                           KEY `fk_booking_tour1_idx` (`tourID`),
                           CONSTRAINT `fk_booking_customer1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
                           CONSTRAINT `fk_booking_employees` FOREIGN KEY (`employeesID`) REFERENCES `employees` (`employeeID`),
                           CONSTRAINT `fk_booking_tour1` FOREIGN KEY (`tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
                           `commentID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `content` longblob NOT NULL,
                           `date_comment` datetime DEFAULT NULL,
                           `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           `comment_parent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           `newID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                           PRIMARY KEY (`commentID`),
                           KEY `fk_comment_account1_idx` (`accountID`),
                           KEY `fk_comment_news1_idx` (`newID`),
                           KEY `fk_comment_commentparent_idx` (`comment_parent`),
                           CONSTRAINT `fk_comment_account1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`),
                           CONSTRAINT `fk_comment_commentparent` FOREIGN KEY (`comment_parent`) REFERENCES `comment` (`commentID`),
                           CONSTRAINT `fk_comment_news1` FOREIGN KEY (`newID`) REFERENCES `news` (`newID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='lưu comment của bài viêt';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES ('34405862-af8d-4340-8d07-3ed825e0cb39',_binary 'ưewe','2021-05-11 01:24:48','4791bf66-93a7-4d28-acaf-de75565190b6','f82920e0-c035-44bf-9667-a1b0709800bf','9c67ad6b-0b39-4266-8fc3-445cee0e3efe'),('56ae3e0a-3c18-453f-971f-83a86f63c55e',_binary 'weeeeeeeeeeee','2021-05-11 01:25:28','4791bf66-93a7-4d28-acaf-de75565190b6',NULL,'9c67ad6b-0b39-4266-8fc3-445cee0e3efe'),('849e7268-8961-4b72-931c-59135f7beaf0',_binary 'ưewe','2021-05-11 01:24:57','4791bf66-93a7-4d28-acaf-de75565190b6','f82920e0-c035-44bf-9667-a1b0709800bf','9c67ad6b-0b39-4266-8fc3-445cee0e3efe'),('b60b5a80-4b24-4013-92ae-f582a9d10bba',_binary 'ew','2021-05-11 01:24:44','4791bf66-93a7-4d28-acaf-de75565190b6','f82920e0-c035-44bf-9667-a1b0709800bf','9c67ad6b-0b39-4266-8fc3-445cee0e3efe'),('f82920e0-c035-44bf-9667-a1b0709800bf',_binary 'etter','2021-05-11 01:24:37','4791bf66-93a7-4d28-acaf-de75565190b6',NULL,'9c67ad6b-0b39-4266-8fc3-445cee0e3efe');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
                            `contentID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `Date` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `content` blob NOT NULL,
                            `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `landMarkID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            PRIMARY KEY (`contentID`),
                            KEY `fk_content_tours_idx` (`tourID`),
                            KEY `fk_content_landMarks_idx` (`landMarkID`),
                            CONSTRAINT `fk_content_landMarks` FOREIGN KEY (`landMarkID`) REFERENCES `landmarks` (`landMarkID`),
                            CONSTRAINT `fk_content_tours` FOREIGN KEY (`tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES ('72bc8454-f47f-491a-bf0c-14839d590be1','2021-05-12 00:00:00',_binary 'Trả phòng khách sạn Xe đưa đoàn ra ga Sapa, Quý khách trải nghiệm đến khu du lịch Fansipan Legend bằng Tàu hỏa leo núi Mường Hoa hiện đại nhất Việt Nam với tổng chiều dài gần 2000m, thưởng ngoạn bức tranh phong cảnh đầy màu sắc của cánh rừng nguyên sinh, thung lũng Mường Hoa. Đến khu du lịch Fansipan Legend Quý khách tự do tham quan: <br />- Tham quan tiểu cảnh Vườn tre, chiêm bái chùa Trình – Bảo An Thiền Tự hoặc tự do mua sắm …<br />- Chinh phục đỉnh núi Fansipan với độ cao 3.143m hùng vĩ bằng cáp treo (chi phí tự túc) và cầu phúc lộc, bình an cho gia đình tại Bích Vân Thiền Tự hay tự thưởng cho<br /><br />','8197372d-1d2f-481b-91e6-5c13096a7206','1'),('73a63121-04a3-44e5-994a-9951fd22812f','2021-05-11 00:00:00',_binary 'Quý khách tập trung tại sân bay Tân Sơn Nhất - Ga đi trong nước. Hướng dẫn viên làm thủ tục cho đoàn đáp chuyến bay Vietravel Airlines đi Hà Nội. Đến sân bay Nội Bài, xe và HDV Vietravel đón Quý khách khởi hành đi Sapa theo cung đường cao tốc hiện đại và dài nhất Việt Nam. Đến Sapa, Quý khách dùng bữa tối và nhận phòng.<br />Buổi tối Quý khách dạo phố, ngắm nhà thờ Đá Sapa, tự do thưởng thức đặc sản vùng cao như: thịt lợn cắp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao. <br />Nghỉ đêm tại Sapa.<br />','8197372d-1d2f-481b-91e6-5c13096a7206','15'),('7c08ad4d-2250-4bcf-9c73-8be5e73d2aec','2021-05-14 00:00:00',_binary 'Quý khách trả phòng khách sạn. Xe đưa Quý khách đi tham quan : <br />- Khu Du Lịch Tràng An: du khách lên thuyền truyền thống đi tham quan thắng cảnh hệ thống núi đá vôi hùng vĩ và các thung lũng ngập nước thông với nhau bởi các dòng suối tạo nên các hang động ngập nước quanh năm. Điểm xuyến trong không gian hoang sơ, tĩnh lặng là hình ảnh rêu phong, cổ kính của các mái đình, đền, phủ nằm nép mình dưới chân các dãy núi cao.<br />Đoàn dùng bữa trưa. Buổi chiều, tiếp tục tham quan:<br />- Tuyệt Tịnh Cốc: nơi đây khung cảnh thơ mộng hữu tình với hồ nước trong vắt, xe đưa đoàn xuyên qua lòng núi vào trong động tham quan chùa và động An Tiêm, điểm<br />','8197372d-1d2f-481b-91e6-5c13096a7206','63'),('fb55d3f0-61c1-4037-bb37-55009fa870e6','2021-05-13 00:00:00',_binary 'Quý khách ăn sáng, tự do nghỉ ngơi cho đến giờ trả phòng.<br />Một số lựa chọn dành cho Quý khách muốn khám phá thêm phố núi Sapa (chi phí tự túc): <br /> <br />- Lựa chọn 1: Cầu Kính Rồng Mây - một trong những công trình nổi bật của khu du lịch sinh thái, nghỉ dưỡng Thác Trắng Cổng Trời. Cầu bắt đầu từ đèo Ô Quy Hồ ôm sát vách núi Hoàng Liên Sơn với độ cao 1000m so với độ cao của vách núi. Quý khách có thể lựa chọn trải nghiệm cảm giác mạnh Cầu Độc Mộc, Xích Đu, Zipline (chi phí tự túc) để ngắm trọn nét đẹp hùng vĩ của núi Hoàng Liên Sơn.<br /> ','8197372d-1d2f-481b-91e6-5c13096a7206','20');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
                            `customerID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `firstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                            `lastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                            `birthDay` date DEFAULT NULL,
                            `CCID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `phoneNumber` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                            `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                            `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                            `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            PRIMARY KEY (`customerID`),
                            UNIQUE KEY `accountID_UNIQUE` (`accountID`),
                            KEY `fk_customer_account_idx` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='bảnh lưu khách hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('130da0ed-92d6-425e-b103-a87319ffddf4','Tấn','Đạt','vutandat29092000@gmail.com','2003-05-11','232342342342','0965929852','aa69fbe7-e2c2-4d04-8a72-0b078e6ab6a7',NULL,'Nam',NULL),('2810b0ae-17df-4224-a6af-dd97a049198f','Tấn','Đạt','vutandat29092000@gmail.com','1999-01-04','121231231222','0965929852','18a0a722-c44d-48b1-861e-287027e17882',NULL,'Nam','477/40 Nguyễn Văn Công'),('2c0ca0e3-dca5-4028-b060-62446a4bd386','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435',NULL,NULL,'Nam',NULL),('5716b425-4b43-4346-89e5-fea2e62f4f00','Nguyễn','Trọng',NULL,'2021-05-11',NULL,NULL,'2761744a-0149-46a5-8860-924cc6441592',NULL,'Name',NULL),('5c72405d-d822-4c71-a22f-4165d603c7b2','Văm','Ba',NULL,'2021-04-27',NULL,NULL,'5c58e63c-5138-49cb-9764-85385eb112cb',NULL,'Name',NULL),('75aea740-e9b0-4f61-90c8-8767157d4005','Phan Thị','Quỳnh','quynhquanque0000@gmail.com.vn','2000-01-11','234234232323','0774046060','813a9c36-4453-4dbe-b3fc-e2a0385023b5',NULL,'Nữ',NULL),('776fa00c-04ad-496a-babe-19da0821b879','Tấn Đạt','Vũ','vutandat29092000@gmail.com','2003-04-10','233333332',NULL,'70e81791-ef64-4e6d-913a-474b289bbf2f',NULL,'Nữ',NULL),('7f50e5da-6e25-49d0-b838-84377c52ea15','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435','7f1112ae-65b8-4bd4-817e-399b595c4c98',NULL,'Nam',NULL),('8c89e268-0d46-4ced-b52d-0352c7f4cdc1','Dương','Tư','vutandat29092000@gmail.com','2003-05-04','234234234233','0965929852','7f54b408-bec4-4745-93b8-9c18ee607f85',NULL,'Nam',NULL),('9a292de5-38ac-4a2f-ab57-3daf3fb9d854','Tấn','Đạt','vutandat29092000@gmail.com','2003-04-10','234234234','0965929852','9be1d83f-516d-4eef-94e5-2b3f2ac9f370',NULL,'Nữ',NULL),('9ccdb154-f779-4703-9f4e-ae47e6d7aa87','Tấn','Đạt','vutandat29092000@gmail.com','1998-01-05','233333332','0965929852','a7b25eed-2aad-49a3-8721-927bb81e22ed',NULL,'Nam','477/40 Nguyễn Văn Công'),('a45c31b1-98bb-4ed0-bf0f-28796edf88c8','Vũ','Tấn Đạt',NULL,'2021-05-11',NULL,NULL,'b470582c-9d10-41cc-a2f4-c8dd425dec02',NULL,'Nữ',NULL),('ad7e515d-124d-4563-8478-635b5d99fe81',NULL,'Dat','v@s.com','2000-10-02','093234433','0987652435','5f740d7b-2815-4ae9-ae04-51fd63aab72a','/image','Nữ',NULL),('aeb00244-5372-4f6d-bfe2-c2583bfa5524',NULL,'Dat','v@s.com','2000-10-02','093234433','0987652435','5224c8f5-e49c-4f7a-a1ed-8e94c442fd19','/image','Nữ',NULL),('b4c62559-f154-42c4-ba66-e63e936c5d8c','Tấn','Đạt',NULL,'2021-05-20',NULL,NULL,'eca670bf-68e5-47e1-929e-0a4367424dbe',NULL,'Name',NULL),('d3b19fbb-859f-4dbf-b414-b3257d4263ba','Tấn','Đạt','vutandat29092000@gmail.com','2000-10-02','093234433','0965929852',NULL,NULL,'Nam','477/40 Nguyễn Văn Công'),('d5182a05-f541-43ba-9b10-69adc4f6ebc2','Tấn','Đạt','vutandat29092000@gmail.com','2003-05-07','234234234233','0965929852',NULL,NULL,'Nam','477/40 Nguyễn Văn Công'),('d8bdb72d-e1bb-4611-af0b-e8eba0bd22b0','Tố','Như',NULL,'2021-06-03',NULL,NULL,NULL,NULL,'Name',NULL),('deeb511a-f679-41ee-b435-d6bdbe529847','Tấn','Đạt','1851050032dat@ou.edu.vn','1999-12-30','234237423847','0965928952',NULL,NULL,'Nam','285822346'),('ecc5bbce-cfd3-43a3-9c7b-646ca6c32565','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435',NULL,NULL,'Name',NULL),('fda40698-5b57-472f-85f0-572dccdbcd87','Huỳnh','Nguyễn Bắc Giang',NULL,'2021-05-05',NULL,NULL,NULL,NULL,'Name',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diadiemdi`
--

DROP TABLE IF EXISTS `diadiemdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diadiemdi` (
                             `landMarkID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `tour_tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             PRIMARY KEY (`landMarkID`,`tour_tourID`),
                             KEY `fk_diadiemdi_landmarks1_idx` (`landMarkID`),
                             KEY `fk_diadiemdi_tour1_idx` (`tour_tourID`),
                             CONSTRAINT `fk_diadiemdi_landmarks1` FOREIGN KEY (`landMarkID`) REFERENCES `landmarks` (`landMarkID`),
                             CONSTRAINT `fk_diadiemdi_tour1` FOREIGN KEY (`tour_tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diadiemdi`
--

LOCK TABLES `diadiemdi` WRITE;
/*!40000 ALTER TABLE `diadiemdi` DISABLE KEYS */;
/*!40000 ALTER TABLE `diadiemdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
                             `employeeID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `firstName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `lastName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `CCID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `birthDay` date NOT NULL,
                             `phoneNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                             PRIMARY KEY (`employeeID`,`accountID`),
                             UNIQUE KEY `accountID_UNIQUE` (`accountID`),
                             KEY `fk_employees_account1_idx` (`accountID`),
                             CONSTRAINT `fk_employees_account1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='bảng thông tin nhân viên';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('1','Tấn','ddddd','vutandat29092000@gmail.com','314323544','1999-01-15','0965929852','477/40 Nguyễn Văn Công','70e81791-ef64-4e6d-913a-474b289bbf2f',NULL,'Nữ'),('2','bbbbbbbbbbb','cccccccccc','dddddddddddd','1234312545145','2015-05-16','5245423543','sdsdfgsdgfg','9be1d83f-516d-4eef-94e5-2b3f2ac9f370',NULL,'nam'),('3','ccccccccccc','dddddddddd','sssssssssss','2532465464554','2014-05-09','2454656456','vsagfdsgdsg','f8007680-5756-43a9-ad6a-e2598975663c',NULL,'nam'),('ee2d9001-f6c6-460e-a605-10fd6d171ed7','Tan','Dat','v@s.com','093234433','2000-10-02','0987652435',NULL,'6ce6252e-7cc1-4b24-b872-67aba1a1802f',NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landmarks`
--

DROP TABLE IF EXISTS `landmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `landmarks` (
                             `landMarkID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `provinceID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `landMarkName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
                             `details` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             PRIMARY KEY (`landMarkID`),
                             KEY `fk_landmarks_province1_idx` (`provinceID`),
                             CONSTRAINT `fk_landmarks_province1` FOREIGN KEY (`provinceID`) REFERENCES `province` (`provinceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='địa danh';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landmarks`
--

LOCK TABLES `landmarks` WRITE;
/*!40000 ALTER TABLE `landmarks` DISABLE KEYS */;
INSERT INTO `landmarks` VALUES ('1','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Đảo Lan Châu','Đảo Lan Châu nằm ngay sát bờ biển Cửa Lò thường được người dân địa phương gọi là đảo Rú Cóc. Nơi đây nhờ sự kết hợp khéo léo của thiên nhiên đã tạo một Lan Châu mê đắm lòng người. '),('10','0a9e87a0-a270-431a-b131-a686cf2a381a','Bãi Dừa – Tư Nghĩa.','Khu du lịch thác Trắng thuộc huyện Minh Long và cách thành phố Quảng Ngãi tầm hơn 20km. Khung cảnh ở đây thực sự ấn tượng bởi rừng núi hoang sơ, trong lành, dòng thác đổ xuống giữa khung cảnh bao quanh là biết bao cây cối, sông suối tung bọt trắng xóa. Đến Quảng Ngãi, bạn đừng bỏ qua nơi đây bởi bạn sẽ có ngay những bức ảnh sống ảo với view đẹp quên sầu ngay tại đây.'),('100','eaf8aeaa-0a8b-49ef-8601-3bf495af58b3','Biển Xuân Thành','Cũng là một bãi biển đẹp thuộc địa phận tỉnh Hà Tĩnh với vị trí thuận tiện ngay gần nhiều di tích văn hoá và lịch sử nổi tiếng, Xuân Thành đã và đang thu hút nhiều khách du lịch đến thăm quan và nghỉ dưỡng. Khám phá biển Xuân Thành, bạn sẽ được chiêm ngưỡng hệ thống đảo Ngư, đảo Mắt nối liền nhau trong trong cảnh sắc thiên nhiên của biển xanh cát trắng trong lành và đắm mình trong không gian mát mẻ, sảng khoái.'),('101','eb2e9a0b-e5e9-4a46-a107-ecf9530b3d30','Nhà cổ trăm cột','Nhà cổ trăm cột là một trong những ngôi nhà cổ nổi tiếng nhất Nam Bộ nói riêng và Việt Nam nói chung. Căn nhà gần 900 mét vuông này nằm lọt thỏm giữa khu vườn rộng hơn 4 hecta, với cửa chính quay về hướng Tây Bắc.'),('102','eb2f26c5-7417-4b4c-a805-98e5ed5bd4ea','Biển Sầm Sơn','Biển Sầm Sơn thuộc thành phố Sầm Sơn, tỉnh Thanh Hóa trải dài gần 6 km từ cửa Lạch Hới đến chân núi Trường Lệ, với bờ cát vàng trải dài, thoai thoải, nước trong xanh từ lâu đã trở thành điểm đến hấp dẫn khách du lịch trong và ngoài nước. Bờ biển ở đây bằng phẳng với các bãi cát rộng đặc biệt là sóng đánh mạnh và cao vừa đủ, nước trong và nồng độ muối vừa phải.'),('103','f15a72ff-fc92-43bb-af96-1f7267b822e6','Đền Hùng','Đền Hùng là tên gọi khái quát của Khu di tích lịch sử Đền Hùng – quần thể đền chùa thờ phụng các Vua Hùng và tôn thất của nhà vua trên núi Nghĩa Lĩnh, gắn với Giỗ Tổ Hùng Vương – Lễ hội Đền Hùng được tổ chức tại địa điểm đó hàng năm vào ngày 10 tháng 3 âm lịch.'),('104','ff2fb0b9-d78d-47c9-8a05-37b2283f7895','Nhà máy thủy điện Na Hang','Đây là nhà máy thuỷ điện có công suất lớn thứ tư của miền Bắc sau nhà máy thủy điện Lai Châu, Sơn La và Hoà Bình. Nhà máy trước đây còn được gọi là Nhà máy thủy điện Na Hang hiện tên chính thức là Nhà máy thủy điện Tuyên Quang, nằm trên lưu vực sông Gâm, thuộc địa phận xã Vĩnh Yên và thị trấn Na Hang.'),('11','0f6da271-1752-40b0-a9fd-cf70cc1c1975','Phố Hiến','Khu phố tọa lạc trên hai phường Lam Sơn và Hồng Châu, Hưng Yên, trải rộng khoảng 5km2 và được hình thành từ khoảng thế kỷ XIII. Trước đây phố Hiến đã từng là một thương cảng sầm uất nhất cả nước vào thể kỷ XVII – XVIII.Trải qua biết bao những đổi thay của lịch sử, địa danh phố Hiến ngày nay đã không còn bóng dáng của thương cảng nổi tiếng ngày nào nhưng những giá trị văn hóa, những ngôi chùa cổ, những kho tượng Phật nghìn năm vẫn còn được lưu giữ nguyên vẹn. '),('12','0f6da271-1752-40b0-a9fd-cf70cc1c1975','Làng Nôm','Làng Nôm là một trong những điểm du lịch hấp dẫn nhất tại Hưng Yên thuộc địa phận xã Đại Đồng, huyện Văn Lâm, Hưng Yên. Đây là một ngôi làng cổ thu hút rất nhiều du khách ghé thăm để tìm kiếm nét đẹp mộc mạc của miền quê Bắc Bộ. Làng Nôm ngày nay luôn giữ cho mình được không khí cũ kĩ nhưng rất đỗi thân thương. Đến đây bạn sẽ được đi qua cây cầu đá bắc qua sông, tìm hiểu các ngôi nhà cổ hay tham gia phiên chợ làng nhộn nhịp. '),('13','0f6da271-1752-40b0-a9fd-cf70cc1c1975','Đền Chử Đồng Tử','Đền Chử Đồng Tử là một điểm du lịch tâm linh nổi tiếng tại Hưng Yên và được xem là \"Tứ bất tử\" của tín ngưỡng dân tộc. Đền Chử Đồng Tử gồm 2 ngôi đền là đền Đa Hòa nằm ở thôn Đa Hòa, xã Bình Minh và đền Dạ Trạch thuộc địa phận xã Dạ Trạch, huyện Khoái Châu.'),('14','161c7b60-ce16-4e78-b73d-b91aaa0a619e','Hòn đảo Phú Quốc','Đảo Phú Quốc được biết đến là một địa điểm du lịch ở Kiên Giang được nhiều du khách trong và ngoài nước tìm đến nhiều nhất khi họ đến du lịch Kiên Giang. Với lợi thế về thời tiết cũng như dòng nước biển trong xanh, nhiều món ăn phong phú.'),('15','161c7b60-ce16-4e78-b73d-b91aaa0a619e','Hà Tiên','Địa điểm du lịch ở Hà Tiên nổi tiếng với những danh lam thắng cảnh đẹp, núi non và thiên nhiên tươi mát, đặc sản ngon rẻ tại chợ đêm gần dòng sông Giang Thạnh. Tại Hà Tiên, du khách có thể tận hưởng chuyến du lịch tại bãi biển Mũi Nai, núi Bình San,…'),('16','161c7b60-ce16-4e78-b73d-b91aaa0a619e','Đảo Hải Tặc','Đây là hòn đảo bí ẩn khiến cho bất cứ ai khi nghe đến tên cũng liên tưởng đến các bộ phim cướp biển, nhưng thực tế địa điểm du lịch ở Kiên Giang này lại là nơi có phong cảnh hoang sơ, hấp dẫn dành cho du khách có những trải nghiệm khó quên khi một lần đặt chân đến đây.'),('17','17575159-39fb-4317-8f58-166ac26ad02a','Quảng trường Ba Đình – Lăng Bác','Nếu đã đặt chân tới mảnh đất ngàn năm văn hiến thì Lăng Bác – Quảng trường Ba Đình là địa điểm du lịch ở Hà Nội mà các bạn không thể bỏ qua. Nơi đây là trung tâm chính trị của Việt Nam với nhà Quốc hội, Phủ Chủ tịch, Bảo tàng Hồ Chí Minh,…'),('18','17575159-39fb-4317-8f58-166ac26ad02a','Hồ Gươm','Hồ Gươm hay hồ Hoàn Kiếm là một trong những nơi nên đến ở Hà Nội khi du lịch thủ đô. Nằm ở giữa trung tâm, Hồ Gươm được ví như trái tim của thành phố ngàn năm tuổi này.. Mặt hồ như tấm gương lớn soi bóng những cây cổ thụ, những rặng liễu thướt tha tóc rủ, những mái đền, chùa cổ kính, tháp cũ rêu phong, các toà nhà mới cao tầng vươn lên trời xanh.'),('19','17575159-39fb-4317-8f58-166ac26ad02a','Phố cổ Hà Nội','Muốn tìm hiểu về cuộc sống, văn hóa và con người Tràng An thì bạn đừng bỏ qua phố cổ – một trong những địa điểm du lịch ở Hà Nội đầy thú vị và hấp dẫn với du khách. Phố cổ Hà Nội nằm ở phía Tây và phía Bắc của Hồ Hoàn Kiếm, là nơi tập trung đông dân cư sinh sống có 36 phố phường. Mỗi con phố ở đây chủ yếu tập trung bán một loại mặt hàng nhất định. '),('2','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Làng sen quê Bác','Đến với xứ Nghệ, bạn không thể bỏ qua một đia điểm du lịch ở Nghệ An mà du khách hay đặt chân đến đó là Làng Sen. Nơi đây còn có tên gọi khác là làng Kim Liên nơi đã sinh thành và nuôi dưỡng nên vị lãnh tụ dân tộc vĩ đại.'),('20','3824a58f-a585-4129-ade3-4067ffb71d76','Biển Tân Thành','Gọi là biển nhưng không phải để tắm, gọi là cát nhưng không phải gam màu óng vàng đặc trưng. Biển Tân Thành chứa những đặc điểm kì lạ xứng danh một trong những địa điểm du lịch Tiền Giang nổi tiếng.'),('21','3824a58f-a585-4129-ade3-4067ffb71d76','Chùa Vĩnh Tràng','Du lịch Tiền Giang, bạn nhất định không nên bỏ qua chùa Vĩnh Tràng – ngôi chùa lớn nhất Tiền Giang. Ngôi chùa được xây dựng đầu thế kỷ 19 với sự kết hợp giữa kiến trúc phương Đông và Tây hài hòa trong từng đường nét chạm khắc.'),('22','3824a58f-a585-4129-ade3-4067ffb71d76','Chợ nổi Cái Bè','Ai đến Tiền Giang mà chưa một lần đi đến chợ nổi Cái Bè thì quả là một sự lãng phí. Chợ nằm trên con sông Tiền rộng lớn giáp ranh giữa ba tỉnh Tiền Giang, Vĩnh Long và Bến Tre. Khác với những chợ nổi miền Tây khác, chợ Cái Bè họp từ tờ mờ sáng đến tối khuya. Khách du lịch có thể thoải mái tìm đến trải nghiệm sông nước tại chợ ở bất kì thời điểm nào trong ngày.'),('23','3c5495c4-ca2f-452b-bcdb-a4f394003f81','Bãi Biển Cồn Vành Thái Bình','Nói đến chiếu làng Hới là nói tới sự hội tụ những tuyệt kỹ tinh xảo nhất của một chiếc chiếu. Từ sự cầu kỳ về nguyên liệu đến việc lựa cói rồi lên khung dệt. Chiếu Hới chính là sản phẩm truyền thống của làng này. Và là sản phẩm thủ công mỹ nghệ nổi tiếng nhất vùng. Không chỉ của Hưng Hà mà vươn ra cả nước. Lách cách thoi đưa, sớm tối những người thợ thủ công làng Hới đang dệt những chiếc chiếu đẹp về hình thức, tốt về chất lượng. Mang những tâm tình của người dân vùng đồng bằng Sông Hồng.'),('24','3c5495c4-ca2f-452b-bcdb-a4f394003f81','Đền Thánh Mẫu Thái Bình','Đền Thánh Mẫu là di tích lịch sử văn hóa đã được xếp hạng thuộc xã Đông Sơn, huyện Đông Hưng, tỉnh Thái Bình. Đền thờ một bà Hoàng hậu nhà Đinh có tên húy là Đinh Thị Tỉnh, hiệu Trinh Minh hoàng hậu. Trong đời sống tâm linh của người Việt, tín ngưỡng thờ Mẫu là một trong những hình thức tín ngưỡng dân gian phổ biến nhất. Từ nhiều thập kỷ qua, giới nghiên cứu tín ngưỡng dân gian trong và ngoài nước đều thống nhất nhận định: tín ngưỡng thờ Mẫu là một loại hình tín ngưỡng dân gian giàu tố chất nhân văn độc đáo của Việt Nam.'),('25','3c5495c4-ca2f-452b-bcdb-a4f394003f81','Làng dệt chiếu Hới ','Biển Cổn Vành ở Thái Bình là một địa điểm cực đáng nhớ để bạn có thời gian trải nghiệm cũng như khám phá cảnh đẹp thiên nhiên nơi đây. Biển Cồn Vành là sự kết hợp hòa quyện giữa nắng gió và cát biển mang lại cho bạn những trải nghiệm khó quên. Biền Cồn Vành mang một ý nghĩa hoang sơ nằm trong khu dự trữ sinh quyển châu thổ sông Hồng và đã được UNESCO công nhận là hệ sinh thái rừng ngập mặn phong phú và thuần khiết.'),('26','3d3b32bc-4bf2-4fd7-9673-b49e154c2ac9','Ghềnh Đá Dĩa Phú Yên.','Tọa lạc tại xã An Ninh Đông, thuộc huyện Tuy An, tỉnh Phú Yên miền trung xuất phát từ thị trấn Chí Thạnh về vùng đất phía Đông 12km là gành Đá Dĩa vì nó có hình dạng như các chồng dĩa nhô ra biển. Nếu bạn nhìn từ xa, bạn sẽ thấy ghềnh đá đĩa có hình dáng như một tổ ong khổng lồ được bao phủ bởi các trụ đá xếp ngay ngắn chồng lên nhau, nhìn rất thú vị. Gành Đá Đĩa là một trong những địa điểm du lịch đẹp các bạn có thể đi tại Phú Yên.'),('27','3d3b32bc-4bf2-4fd7-9673-b49e154c2ac9','Gành Đèn.','Một địa điểm tham quan mà du khách nhắc đến nhiều chỉ sau ghềnh Đá Dĩa là gành Đèn, nằm xã An Ninh Đông huyện Tuy An, Phú Yên. Điểm cuốn hút ở nơi đây chính là các tảng đá lớn nhỏ được xếp chồng lên nhau, nhìn rất hoang sơ nhưng vô cùng yên bình. Đến với gành Đèn, bạn sẽ có cơ hội tận mắt ngắm hải đăng gành Đèn, một trong những ngọn hải đăng đẹp.\n\n'),('28','3d3b32bc-4bf2-4fd7-9673-b49e154c2ac9','Nhà thờ Mằng Lăng.','Đây là một trong những nhà thờ công giáo có tuổi thọ lâu đời nhất ở Việt Nam, nằm phía Bắc xã An Thạch, huyện Tuy An, tỉnh Phú Yên được khởi công xây dựng vào năm 1892. Tương truyền, cuốn sách về chữ quốc ngữ đầu tiên của nước ta đã được cất giữ tại nhà thờ Mằng Lăng. Và đây cũng là nơi giảng dạy của cha Đắc Lộ (giám mục Alexandre de Rhodes) cho các tín đồ Thiên chúa giáo.'),('29','4278c021-afda-4e9a-a565-3d6e23c1ee72','Ải Chi Lăng','Mẫu Sơn là vùng núi cao chạy theo hướng Đông Tây, nằm ở phía Đông Bắc tỉnh Lạng Sơn, cách thành phố Lạng Sơn khoảng 30km về phía Đông. Đỉnh Mẫu Sơn là vùng núi cao của tỉnh, có địa hình đa dạng. Nơi đây bao gồm quần thể 80 ngọn núi lớn nhỏ.'),('3','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Biển Cửa Hội','Tại Cửa Hội có Khu du lịch sinh thái Cửa Hội được thành lập năm 2000 trên diện tích 5ha. Đây là địa điểm hợp lý cho việc tổ chức cắm trại, hội nghị, hội thảo. Là nơi thư giãn, chơi thể thao, câu cá hay dạo bộ trong rừng.\n\nTuy không phải là một bãi biển lý tưởng để tắm như Cửa Lò nhưng Cửa Hội là cửa biển lớn, có tầm quan trọng về vị trí chiến lược cả kinh tế giữa hai tỉnh. Từ Cửa Hội, du khách có thể ngược sông Lam đến thăm các thắng cảnh di tích lịch sử như làng cá Hội Thống, bến Giang Đình.'),('30','4278c021-afda-4e9a-a565-3d6e23c1ee72','Thành Nhà Mạc','Với chiều dài gần 20km, rộng 3km Ải Chi Lăng có quy mô hoành tráng và đồ sộ. Ải Chi Lăng được coi là bức tường thành của kinh thành Thăng Long trong việc chặn đứng các cuộc viễn chinh khét tiếng từ phương Bắc tràn sang.'),('31','4278c021-afda-4e9a-a565-3d6e23c1ee72','Núi Phai Vệ','Công trình này là di tích kiến trúc quân sự phản chiếu thời kỳ phong kiến Việt Nam, được xếp hạng di tích lịch sử Quốc gia. Dấu tích của thành Nhà Mạc còn lại đến hiện nay gồm 2 đoạn tường dài khoảng 300 mét, mặt thành rộng khoảng 1 mét. Nó được xây dựng bằng những khối đá lớn giữa hẻm núi, tuy được gia cố trùng tu nhưng vẫn giữ được dấu tích hoang phế, điêu tàn. Mỗi khi đến thăm Thành Nhà Mạc vào chiều tà, bạn sẽ cảm thấy một chút bâng khuâng nghĩ về lối xưa xe ngựa.\n\n'),('32','428d586a-2c36-41ce-9b65-bfd8cfeb0931','Bãi Rạng.','Bãi Rạng là một bãi biển nhỏ, nằm gần gần bờ Xương Lý (khoảng 600m) mang vẻ đẹp hoang sơ chưa từng được khai thác. Là địa điểm nên đến khi đặt chân khám phá du lịch cảnh đẹp Bình Định – mảnh đất miền Trung mến khách.'),('33','428d586a-2c36-41ce-9b65-bfd8cfeb0931','Tháp Dương Long.','Khi du lịch tháp, bạn có thể sử dụng xe máy làm phương tiện di chuyển từ quốc lộ 1A đi về phía Bắc khoảng 35 km, tới thị trấn Gò Găng gần Sân Bay Phù Cát, bạn rẽ trái (tức đường vào sân bay Phù Cát, nhưng không rẽ vào sân bay Phù Cát) mà đi tiếp (quốc lộ 19B khoảng 15 km nữa là tới Tháp.'),('34','428d586a-2c36-41ce-9b65-bfd8cfeb0931','Chùa Long Khánh.','Chùa Long Khánh đã có hơn 300 năm tuổi, tọa lạc số 141 đường Trần Cao Vân, phường Lê Lợi, tỉnh Bình Định.\n\nĐược biết đây là ngôi chùa do một thiền sư tên là Đức Sơn xây dựng, thời điểm đó chùa được xây dựng với mục đích phục vụ cộng đồng người Hoa sinh sống tại nơi này.'),('35','435fdb20-404f-44eb-86e1-d275d15ec195','Di tích rừng Trần Hưng Đạo.','Khu di tích rừng Trần Hưng Đạo thuộc xã Tam Kim, huyện Nguyên Bình, nằm cách trung tâm Tp Cao Bằng khoảng 50km. Ngày 22/12/1944 dưới sự chỉ huy của Đại tướng Võ Nguyên Giáp tại đây đã diễn ra lễ thành lập Đội Việt Nam tuyên truyền Giải phóng quân – tiền thân của Quân đội Nhân dân Việt Nam ngày nay. Đội hồm 34 chiến sĩ trong đó 25 chiến sĩ là con em các dân tộc tỉnh Cao Bằng.'),('36','435fdb20-404f-44eb-86e1-d275d15ec195','Di tích đồn Phai Khắt.','Di tích đồn Phai Khắt là nơi diễn ra trận đấu đầu tiên của đội Việt Nam Tuyên truyền Giải phóng quân sau khi thành lập. Đồn Phai Khắt thuộc xã Tam Kim, huyện Nguyên Bình, cách khu rừng Trần Hưng Đạo 7km. Tại đây, lúc 17h ngày 25/12/1944, đội Việt Nam Tuyên truyền Giải phóng quân cùng nhân dân địa phương đã tiêu diệt và bắt gọn chỉ huy cùng toàn bộ binh lính, thu vũ khí của địch.'),('37','435fdb20-404f-44eb-86e1-d275d15ec195','Di tích mộ anh hùng liệt sỹ Kim Đồng.','Kim Đồng (tên thật là Nông Văn Dền) sinh năm 1929. Ngày 15/5/1941, đồng chí Đức Thanh là cán bộ cách mạng quyết định thành lập Đội nhi đồng cứu quốc tại làng Nà Mạ, gồm có 4 đội viên: Kim Đồng, Cao Sơn, Thanh Thuỷ, Thuỷ Tiên do Kim Đồng làm đội trưởng.'),('38','485dfa1c-2517-4e56-b344-d4c9d9681716','Sông Đăk bla.','Dòng sông Đăk Bla không chỉ là nguồn cung cấp nước và phù sa trù phú cho công tác sản xuất nông nghiệp của người dân mà còn là một điểm du lịch hấp dẫn đông đảo du khách gần xa tìm đến khi du lịch Kon Tum. Dòng sông này như một dải lụa mềm mại vắt ngang qua thành phố Kon Tum, tạo thành điểm nhấn ấn tượng cho thành phố Kon Tum.'),('39','485dfa1c-2517-4e56-b344-d4c9d9681716','Nhà rông Kon Klor – Nhà rông lớn nhất Tây Nguyên.','Nhà rông Kon Klor tọa lạc tại một vị trí rất đẹp với con đường Trần Hưng Đạo rộng thênh thang và thẳng tắp ngay trước mặt. Phía bên phải nhà rông là cây cầu treo xinh đẹp cùng những ruộng mía xanh ngút ngàn xung quanh. Nhà rông Kon Klor được xây dựng theo kiểu truyền thống với chất liệu hoàn tằng bằng gỗ, tre, nứa, tranh, lá và có những họa tiết, hoa văn trang trí rất công phu. Các nghệ nhân và người dân làng Kon Klor đã phối hợp vô cùng ăn ý để gìn giữ những nét đặc trưng của mình trên nhà rông. Với mái nhà cao vút, nhà rông Kon Klor sừng sững, vững chãi được coi là điểm tựa cho hồn làng, cũng là niềm tự hào của các nghệ nhân và người dân Ba Na.'),('4','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Vườn quốc gia Phù Mát','Thiên nhiên ở Pù Mát hoang sơ, kì bí đúng như cái tên của nó là mời gọi du khách về tham quan. Nơi đây du khách có thể chiêm ngưỡng mọi vẻ đẹp của cây hoa lá. Nơi đây có nhiều thác cao, nước chảy mạnh, vang vọng cả núi rừng.\n\nNếu một lần ghé thăm xứ Nghệ hãy đến với với vườn quốc gia Phù Mát để tận hưởng không khí nơi đây. Đảm bảo sẽ không làm bạn thất vọng vì đây luôn là địa điểm du lịch ở Nghệ An được yêu thích.'),('40','485dfa1c-2517-4e56-b344-d4c9d9681716','Cầu treo Kon Klor.','Nhắc đến các điểm tham quan nổi tiếng của du lịch Kon Tum, cầu treo Kon Klor - cây cầu nối liền hai bờ sông Đăk Bla huyền thoại cũng là một địa điểm không thể thiếu. Từ trên cây cầu này, phóng tầm mắt ngắm nhìn không gian làng mạc, đồng lúa, ruộng ngô, bãi mía xung quanh cùng với dòng sông mải miết chảy ngay dưới chân cầu, du khách sẽ cảm thấy tâm hồn mình như thoáng đạt hơn.'),('41','4af3b4da-d23e-4f8a-b715-e8238a5d84d8','Cồn Phụng','Ở Bến Tre, địa điểm hấp dẫn nhất mà du khách nên ghé thăm chính là Cồn Phụng (cù lao Đạo Dừa) nổi giữa sông Tiền, thuộc xã Tân Thạch, huyện Châu Thành. Điểm nổi bật mà Cồn Phụng khiến nhiều du khách tìm đến chính là không gian mát mẻ, những vườn trái cây thay đổi quanh năm như sầu riêng, mít, xoài, chuối, chôm chôm, mận, sơ ri,…'),('42','4af3b4da-d23e-4f8a-b715-e8238a5d84d8','Cồn Quy','Cùng với Cồn Phụng, một địa điểm khác có tên trong bộ “tứ linh” của khu vực Đồng bằng sông Cửu Long là cồn Quy. Cồn Quy thuộc xã Tân Thạch và Quới Sơn, huyện Châu Thành, tỉnh Bến Tre. Du lịch Miền Tây, đến với Cồn Quy, bạn được sống trong một không gian yên bình, chưa hề xuất hiện dấu tích đô thị hóa, khí hậu vô cùng ôn hòa.'),('43','4af3b4da-d23e-4f8a-b715-e8238a5d84d8','Cồn Phú Đa','Trong hệ thống hàng trăm cồn nổi phục vụ khách du lịch Bến Tre, cồn Phú Đa nổi bật lên là một vùng đất có cảnh trí thiên nhiên rất đẹp, môi trường sinh thái trong lành. Cồn Phú Đa thuộc xã Vĩnh Bình, huyện Chợ Lách, tỉnh Bến Tre, nơi đây còn có biệt hiệu là “cồn ốc gạo” bởi đặc sản ốc gạo với những con ốc vừa to vừa ngọt. Du khách đến đây sẽ được lựa chọn để thưởng thức nhiều món ốc gạo được chế biến khác nhau như ốc gạo luộc, ốc gạo xào dừa, ốc gạo xào sả ớt, bánh xèo nhân ốc gạo…ngoài ra, đến cồn Phú Đa, bạn cũng sẽ được ăn trái cây ngay tại vườn.'),('44','4b9ed685-f6ed-46a5-bb97-6950d0017ee2','Đầm Thị Tường','Nằm cách thành phố Cà Mau khoảng 40km, Đầm Thị Tường là một trong những đầm nuôi tôm cá lớn nhất Cà Mau. Đầm Thị Tường là đầm nước tự nhiên có diện tích lớn nhất vùng Đồng bằng sông Cửu Long và được mệnh danh là “biển Hồ giữa đồng bằng”.'),('45','4b9ed685-f6ed-46a5-bb97-6950d0017ee2','Rừng ngập mặn Cà Mau','Cách thành phố Cà Mau khoảng 60 km và sau hơn giờ đi bằng tàu cao tốc du khách sẽ được khám phá rừng ngập mặn Cà Mau – khu rừng ngập mặn lớn thứ 2 trên thế giới, sau rừng Amazon ở Nam Mỹ.'),('46','4b9ed685-f6ed-46a5-bb97-6950d0017ee2','Mũi Cà Mau','Nằm cách thành phố Cà Mau khoảng 120km, với 2 giờ đồng hồ đi xe máy, bạn sẽ đến được mũi Cà Mau, mảnh đất nằm nhô ra ở điểm tận cùng phía nam của Tổ quốc, thuộc địa phận xóm Mũi, xã Đất Mũi, huyện Ngọc Hiển.'),('47','55171f9a-9b26-41d4-b28d-66f33ac8302e','Làng tre Phú An','Làng tre Phú An không chỉ là địa điểm du lịch xanh được đông đảo du khách yêu thích mà còn là điểm đến quen thuộc của những người hoài cổ, yêu cái chất nông thôn thuần hậu'),('48','55171f9a-9b26-41d4-b28d-66f33ac8302e','Khu du lịch Phương Nam','Phương Nam được đánh giá là một trong những khu du lịch nghỉ dưỡng rất được yêu thích  ở Bình Dương. Với cảnh quanh xanh mát và trong lành, nơi đây được ví như lá phổi xanh của thành phố Bình Dương.'),('49','55171f9a-9b26-41d4-b28d-66f33ac8302e','Khu du lịch Dìn Ký','Nếu bạn đang tìm cho mình một điểm dừng chân lý tưởng, cách xa khói bụi đô thị để tận hưởng trọn vẹn kỳ nghỉ cuối tuần thì hãy đến khu du lịch Dìn Ký.'),('5','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Bãi biển Diễn Thành ','Nơi đây trở thành điểm đến của không ít du khách, bởi không chỉ tiện đường, bãi biển sạch đẹp, mà còn bởi ở đây hải sản tươi ngon. Đây cũng chính là lí do mà biển diễn thành luôn được xem là địa điểm du lịch ở Nghệ An đông khách du lịch.\n\nKhông ồn ào như các điểm du lịch biển khác, bãi biển Diễn Thành mang vẻ yên bình quá đỗi khác lạ. Lúc bình minh những ngư dân chân chất ngàn đời bám biển trong khung cảnh lao động hàng ngày vẫn diễn ra.'),('50','586e9e83-c10d-4d9d-9774-75952f7a35cc','Bà Nà Hills.','Ai đến Đà Nẵng lần đầu đều sẽ có mong muốn “cháy bỏng” được tham quan Bà Nà Hills bởi vẻ đẹp đã được rất nhiều du khách khen ngợi của nơi đây. Có thể nói, Bà Nà Hills chính là một châu Âu thu nhỏ ngay trên đỉnh núi, một trong các địa điểm du lịch Đà Nẵng độc đáo và vô giá của Việt Nam. Du khách muốn đến đây sẽ mua phải đi cáp treo lên tới đỉnh núi Bà Nà.'),('51','586e9e83-c10d-4d9d-9774-75952f7a35cc','Nhà đảo ngược – Upside down World Đà Nẵng.','Đây là một địa chỉ vui chơi giải trí mới, chính thức mở cửa đón khách du lịch tham quan vào đầu năm 2018. Ngay từ cái tên “nhà đảo ngược” đã khiến cho không ít người, đặc biệt là các bạn trẻ, hiếu kỳ về cách bố trí đồ vật ở đây. Một điều đáng chú ý và cũng vô cùng ly kỳ khi bước vào trong ngôi nhà này là bạn sẽ chẳng thể nào phân biệt được đâu là trần đâu là sàn, vì thế hãy cẩn thận để không bị các đồ vật trong nhà rớt vào đầu bạn nhé.'),('52','586e9e83-c10d-4d9d-9774-75952f7a35cc','Hội An.','Dù không thuộc địa phận thành phố Đà Nẵng, tuy nhiên Hội An vẫn là một trong những địa điểm du lịch Đà Nẵng – Hội An  mỗi khi du khách đặt chân tới thành phố của những cây cầu. Khác với một Đà Nẵng sôi động, sầm uất thì Hội An là một phố cổ yên bình và xinh đẹp. Đến Hội An, bạn sẽ được sống chậm lại với những quán cafe nhỏ nhắn, những ngôi nhà cổ tường vàng hoa giấy, tiếng mái chèo khua sóng nhè nhẹ trên dòng sông Hoài…Hội An ở mỗi thời điểm trong ngày đều sở hữu nét quyến rũ riêng đã làm tốn không ít giấy mực ca ngợi của báo chí trong và ngoài nước.'),('53','58feac1f-1963-478c-b3dc-f51312bcac6e','Chùa Bà Đanh - núi Ngọc.',' Chùa Bà Đanh hay còn gọi là Bảo Sơn tự thờ Bà Chúa Đanh (thần Pháp Vũ). Ngôi chùa nổi tiếng linh thiêng này nằm cạnh hòn núi Ngọc nên thơ, cách thành phố Phủ Lý 10km, hướng chính nam nhìn thẳng ra dòng sông Đáy, được thiên nhiên ưu ái bao quanh bởi khung cảnh trời mây sông nước hữu tình cùng vẻ tịch mịch vô cùng thanh tịnh. '),('54','58feac1f-1963-478c-b3dc-f51312bcac6e','Nhà Bá Kiến - Nguyên mẫu làng Vũ Đại.','Làng Vũ Đại là địa danh nổi tiếng gắn liền với truyện ngắn \"Chí Phèo\" với những nhân vật đi cùng năm tháng như Bá Kiến, Chí Phèo, Thị Nở. Trên thực tế, nguyên mẫu làng Vũ Đại là làng Đại Hoàng, thôn Nhân Hậu, xã Hòa Hậu, huyện Lý Nhân, tỉnh Hà Nam - quê hương của nhà văn hiện thực Nam Cao.'),('55','58feac1f-1963-478c-b3dc-f51312bcac6e','Đền Trúc - Ngũ Động Sơn.','Quần thể đền Trúc - Ngũ Động Sơn thờ người anh hùng dân tộc Lý Thường Kiệt, tọa lạc giữa không gian xanh mát sơn thủy hữu tình, có núi có sông ,có hang động kỳ thú, nằm giữa rừng Trúc nên thơ. Tương truyền, vào năm 1089, đoàn chiến thuyền của Lý Thường Kiệt đi chinh phạt qua thôn Quyển Sơn.'),('56','5c5624cc-8a36-49ee-ba14-6938c82bb122','Du lịch Hạ Long Quảng Ninh.','Với danh tiếng là 1 trong 7 kỳ quan Thiên nhiên Thế giới, du khách tới tham quan Vịnh Hạ Long không chỉ chiêm ngưỡng cảnh đẹp tự nhiên của hơn 1.900 hòn đảo đá vôi lớn nhỏ, mà còn được trải nghiệm các hoạt động thú vị như ngủ đêm trên du thuyền, đi thủy phi cơ,…'),('57','5c5624cc-8a36-49ee-ba14-6938c82bb122','Đảo Quan Lạn.','Quan Lạn là một trong những hòn đảo đẹp còn giữ được nét hoang sơ cho tới nay. Nơi đây mang đặc trưng của vùng vịnh Bái Tử Long – biển sóng êm, nước trong màu xanh lá, các bãi tắm với dải cát trắng mịn và nước nông thoai thoải.'),('58','5c5624cc-8a36-49ee-ba14-6938c82bb122','Du lịch Trà Cổ Quảng Ninh','Nằm ở nơi cực Đông Bắc Tổ quốc, Trà Cổ nổi tiếng với đường bờ biển dài nhất Việt Nam – hơn 17km. Biển ở đây được du khách đánh giá là một trong những bãi biển Quảng Ninh đẹp nhất miền Bắc: bên bờ là những cồn cát cao từ 3 – 5m, bao bọc bởi dải rừng phi lao xanh bát ngát, phía xa sừng sững những dãy núi và khu rừng sinh thái ngập mặn,… tất cả tạo nên một nét nên thơ và trữ tình cho vùng biển này.'),('59','61eaae9c-2e2d-4135-bc7d-94735c3ba28a','Đỉnh núi Hàm Rồng','Núi Hàm Rồng chính là nơi sở hữu ngọn núi lửa Chư Đăng Ya nổi tiếng hùng vĩ. Để leo được lên đến đỉnh núi, bạn sẽ phải vượt qua hơn 1000m đường núi. Tuy nhiên, không phụ công sức bạn bỏ ra, bạn sẽ thực sự choáng ngợp khi nhìn từ đỉnh núi ra không gian xung quanh bao la bạt ngàn mây trời cao nguyên hùng vĩ. Một lưu ý nhỏ là bạn cũng nên lưu ý đến đây vào mùa hoa dã quỳ để được ngắm cả một vùng núi Hàm Rồng rực rỡ sắc vàng.'),('6','0a9e87a0-a270-431a-b131-a686cf2a381a','Bãi biển Mỹ Khê','Là một ngọn núi từ lâu đã rất nổi tiếng với khung cảnh hùng vĩ và mang một giá trị lịch sử vô cùng lớn lao'),('60','61eaae9c-2e2d-4135-bc7d-94735c3ba28a','Thác Chín Tầng','Địa điểm du lịch Pleiku Thác Chín Tầng cách thành phố Pleiku khoảng 20km, tên gọi Chín Tầng bắt nguồn từ một đặc điểm đặc biệt của dòng thác này, chính là thác phân thành 9 tầng riêng biệt chảy xuống các hộc đá bên dưới bọt phun trắng xóa. Du khách đến đây ai cũng tò mò muốn đến chiêm ngưỡng dòng thác này bởi nét độc đáo ấy.'),('61','61eaae9c-2e2d-4135-bc7d-94735c3ba28a','Thủy điện Yaly','Là nhà máy thủy điện lớn thứ hai nước ta (sau thủy điện Hòa Bình) thì thủy điện Yaly là đầu mối cung cấp điện cho một khu vực rộng lớn. Thủy điện Yaly nằm trên đập thủy điện  sông Sesan, đến đây bạn sẽ vừa được tìm hiểu về cuộc sống và công việc của những người công nhân ngày đêm làm việc để duy trì ánh sáng cho nhân dân nơi đây cũng như ngắm dòng sông Sesan xinh đẹp và hùng vĩ.'),('62','638030d2-84a3-486b-a432-79ee086d4318','Thị trấn Sapa.','Chắc chắn đến Lào Cai thì không thể bỏ qua Sapa rồi. Thị trấn nhỏ bé, bình yên nơi phố núi ấy chính là nơi đã làm cho bao du khách phải đắm, phải say, phải thương và phải nhớ.\n Nằm ở độ cao 1600m, người ta hay gọi Sapa bằng những cái tên như phố núi trong mây, thành phố trong sương, xứ sở của hoa...  Bởi quanh năm Sapa mát mẻ, lúc nào cũng dễ dàng có thể đưa tay để chạm vào những làn sương mỏng manh, dịu nhẹ.'),('63','638030d2-84a3-486b-a432-79ee086d4318','Chợ phiên Bắc Hà','Chợ phiên Bắc Hà thuộc huyện Bát Xát, tỉnh Lào Cai, cách trung tâm thành phố Lào Cai khoảng 60 km. Chợ Bắc Hà là một chợ phiên thuộc loại lớn nhất, đông đúc nhất của các tỉnh miền cao vùng biên giới và vẫn còn giữ được nhiều nét nguyên sơ, độc đáo của phiên chợ xưa.'),('64','638030d2-84a3-486b-a432-79ee086d4318','Đèo Ô Quy Hồ','Năm 2013, đèo Ô Quy Hồ được Tổ chức kỷ lục Việt Nam công nhận là đèo dài nhất Việt Nam. Với chiều dài gần 50km, Ô Quy Hồ là ngọn đèo nối liền hai tỉnh Lào Cai với Lai Châu và ngọn đèo này cũng được mệnh danh một trong tứ đại đỉnh đèo hiểm trở nhất miền núi phía Bắc.'),('65','67436e3a-5d36-40e9-a6b0-b1eb9c65b6cf','Động Thiên Long','Khu du lịch Thiên Long là một trong những điểm du lịch Hoà Bình hấp dẫn không thể bỏ qua. Động nằm trong một quần thể tập hợp các di tích của huyện Yên Thuỷ gồm có một động chính (chính cung) và hai ngách động nhỏ (tả cung và hữu cung).'),('66','6871c77d-61de-44ab-ba04-5335f8c17588','Tây Yên Tử','Tây Yên Tử là vùng đất địa linh, nằm về phía Tây của núi Yên Tử, là con đường hoằng dương Phật pháp của vua Trần Nhân Tông, người có công tạo dựng nên Thiền phái Trúc Lâm Yên Tử, dòng Thiền mang bản sắc dân tộc Việt. Tây Yên Tử là nơi tổng hòa các yếu tố tâm linh lịch sử, thiên nhiên sinh thái, đang phát triển thành khu du lịch tâm linh và khu vực phát triển văn hóa - du lịch trọng tâm của tỉnh Bắc Giang. '),('67','6c80f9ba-608b-49bb-997b-a144e9ef5b86','NÚI VOI','Núi Voi – Xuân Sơn là một quần thể núi đá, núi đất khá cao, xen kẽ lẫn nhau, nhấp nhô, uốn khúc qua địa phận của 3 xã Trường Thành, An Tiến và An Thắng của huyện An Lão, thành phố Hải Phòng.'),('68','707ade2f-41d7-417f-816f-d5e544444d63','Biển Bình Tiên','Được ví như “viên ngọc ẩn” còn hoang sơ mang vẻ đẹp quyến rũ với làn nước trong xanh màu ngọc bích, biển Bình Tiên là một địa điểm du lịch Ninh Thuận ngày càng thu hút khách du lịch từ khắp mọi nơi, đặc biệt là giới trẻ.'),('69','718ab594-76ac-4a0d-a5ee-f405a0a611e9','Nhà công tử Bạc Liêu','Nhà công tử Bạc Liêu tọa lạc tại số 13 Điện Biên Phủ, phường 3, thành phố Bạc Liêu, được xây dựng vào khoảng năm 1919. Ngôi nhà do kỹ sư người Pháp thiết kế và tất cả vật liệu để xây dựng đều được đưa từ Pháp qua, được xem là ngôi nhà bề thế nhất ở Nam Kỳ lục tỉnh lúc bấy giờ.'),('7','0a9e87a0-a270-431a-b131-a686cf2a381a','Biển Dung Quất.','Bãi biển Mỹ Khê cũng không còn là cái tên lạ lẫm gì khi mà nơi đây từng liên tục xuất hiện “nhẵn mặt” trên các báo đài trong và ngoài nước với danh hiệu một trong số những bãi biển quyến rũ nhất hành tinh. Từ thị xã Quảng Ngãi, du khách đi theo quốc lộ 24B tầm 15km là sẽ đến địa phận thôn Cổ Lũy, từ đây bạn có thể dễ dàng đến bãi biển Mỹ Khê bằng cách hỏi người dân địa phương.'),('70','799859a6-3a94-4ea6-954b-09e4a2962c86','Cù lao An Bình','Du lịch một tỉnh miền Nam đặc trưng như Vĩnh Long nhất định không thể không ghé thăm những cù lao xum xuê hoa trái. Cù lao An Bình như một “kho” hoa quả không bao giờ hết của tỉnh Vĩnh Long, nổi danh với trái ngọt thơm ngon.\n\n'),('71','7b4ec3fb-c705-4660-84ba-f1a002f036fd','Khu du lịch Vườn Xoài','Khu Du Lịch Sinh Thái Vườn Xoài là địa điểm du lịch Đồng Nai hấp dẫn giúp bạn gần gũi với thiên nhiên, đất trời, cỏ cây hoa lá. Du khách đến đây như là lạc vào vùng thiên nhiên hoang dã rộng lớn. Hàng cây cọ dầu xanh mát bao phủ những con đường nhỏ quanh co uốn lượn cùng với tiếng chim hót, suối reo tạo nên một Vườn Xoài thơ mộng đầy bình yên.'),('72','7f28da58-9969-4378-af33-5053d8936abc','Vườn quốc gia Tà Đùng','Vườn quốc gia Tà Đùng thuộc xã Đắk Plao và xã Đắk Som, huyện Đắk Glong, cách thành phố Gia Nghĩa khoảng 45 km. Với đa số diện tích là rừng xanh đại ngàn và những hồ có diện tích lớn cùng hơn 36 đảo lớn nhỏ, vườn quốc gia có hệ động thực vật đa dạng, phong phú về số lượng và chủng loại với hơn 1000 loài động thực vật, nhiều loài có trong sách đỏ Việt Nam và thế giới.'),('73','862249d7-9020-4208-9ab8-59d19bb606b0','Điện Hòn Chén','Nằm trên sườn núi Ngọc Trẩn, thấp thoáng ẩn mình trong những tán cây xanh và hướng mình in bóng xuống làn nước sông Hương, Điện Hòn Chén Ẩn là một cụm di tích lịch sử và tôn giáo bao gồm 10 công trình với những nét kiến trúc trang trí cổ độc đáo. Cụm di tích này còn là một điểm du lịch văn hoá tín ngưỡng đặc sắc thu hút nhiều du khách đến vào dịp lễ hội diễn ra vào tháng 3 và tháng 7 Âm lịch hàng năm'),('74','8cb041e0-bd07-48c2-925e-25c2983de7e8','Nhà thờ Khoái Đồng – Khói Đồng','Nhà thờ Khói Đồng bắt nguồn từ tên thôn Khoái Đồng, một trong 5 thôn cổ của làng Vị Hoàng. Nhà thờ Khoái Đồng cùng với nhà thờ Chánh toà của Đà Lạt là 2 nhà thờ duy nhất ở Viêt Nam thờ Thánh Nicolas – một vị thánh mà theo truyền thuyết Thiên Chúa giáo chính là ông già Noel.'),('75','8deba772-f7b2-4192-b524-136831ae536d','Khu du lịch sinh thái Tràng An','Nhắc đến Ninh Bình khu du lịch sinh thái Tràng An sẽ là địa điểm Ninh Bình thu hút nhiều khách du lịch trong nước nhất với cảnh quan vô cùng tuyệt đẹp với những dãy núi đá vôi trùng điệp xen kẽ là những hang động và công trình đền thờ có quy mô lớn đặc biệt đây là phim trường chính của bộ phim đình đám Kong. Du khách sẽ đường ngồi thuyền khám phá cảnh sắc nơi đây với 3 tuyến hành trình khác nhau  tùy quý khách khi mua vé lựa chọn tuyến đi phù hợp với điểm đầu và điểm kết thúc là bến thuyền Tràng An'),('76','907ce61f-2bc7-45dc-9581-2fcd2948a069','Khu di tích Xẻo Quýt','Khu di tích Xẻo Quýt là một trong những điểm dừng chân độc đáo du khách không thể bỏ qua khi đến Đồng Tháp. Nơi đây đã từng là căn cứ cách mạng của tỉnh ủy Đồng Tháp lãnh đạo nhân dân kháng chiến chống Mỹ từ năm 1960 đến 1975.'),('77','90e108cc-5876-4803-b88a-da05c1c58361','Mù Cang Chải','Mù Cang Chải nằm dưới chân của dãy núi Hoàng Liên Sơn, ở độ cao 1.000 m so với mặt biển. Muốn đến được huyện Mù Cang Chải phải đi qua đèo Khau Phạ - là một trong tứ Đại Đèo của Tây Bắc. Những ruộng bậc thang ở Mù Cang Chải ôm viền chân núi - một kiệt tác nghệ thuật đã được xếp hạng di tích quốc gia năm 2007.'),('78','96a52971-6069-4c90-a0d9-f4ba32b6985b','Thác Dải Yếm','Thác Dải Yếm còn có tên gọi khác là thác Nàng hay thác Bản Vặt thuộc xã Mường Sang, tỉnh Sơn La. Theo truyền thuyết thác là dải yếm của của người con gái dùng để cứu chàng trai khỏi dòng nước lũ vì vậy người ta dùng tên “Dải Yếm” để đặt tên cho thác. Thác Dải Yếm có chiều cao lên đến 100m, chia làm hai nhánh, một nhánh có đến chín tầng, nhánh còn lại 5 tầng, hai bên cách nhau khoảng 20m.'),('79','9bdc2291-8c13-4440-9cd6-87a85eddb4d1','Hòn Chồng Hòn Vợ','Hòn Chồng gồm 2 cụm đá lớn nằm bên bờ biển dưới chân đồi La San, có thể được tạo nên do sự xâm thực của thủy triều lên ngọn đồi này. Cụm đá lớn ở ngoài biển gọi là Hòn Chồng, gồm một khối đá lớn vuông vức nằm trên một tảng đá bằng phẳng và rộng hơn, phía mặt đá quay ra biển có một vết lõm hình bàn tay rất lớn.'),('8','0a9e87a0-a270-431a-b131-a686cf2a381a','Đồng muối Sa Huỳnh.','Những nét hồn nhiên của bờ biển cùng khung cảnh thơ mộng ở bờ biển Dung Quất luôn mang một nét gì đó độc đáo khiến cho không ít người phải cảm thấy ngỡ ngàng về sự thơ mộng yên bình của bờ biển nơi này. Có lẽ điều kỳ diệu nhất cho một hành trình khám phá mới đó là thưởng ngoạn khung cảnh mộng mơ nơi đây và thả hồn về với biển, về với thiên nhiên dịu nhẹ'),('80','9bdceb72-f62a-4ab4-9b45-858071bdda84','Bảo tàng Khmer',' Đây là một công trình được xây dựng theo kiến trúc của chùa Khmer và phía bên trong thì chứa nhiều hiện vật phản ánh đời sống tinh thần cũng như đời sống thường nhật phong phú, đặc sắc của đồng bào dân tộc Khmer. Ngoài ra nơi đây còn trưng bày các các loại trang phục, nhạc cụ,…cực kì đặc sắc'),('81','a40a1416-58a7-4f1c-b179-faad00e92e4b','Hồ Dầu Tiếng','Hồ Dầu Tiếng nổi tiếng sở hữu vẻ đẹp kết hợp giữa tự nhiên và nhân tạo khi từ một vùng đất hoang sơ này trở thành điểm đến được đông đảo du khách yêu thích. '),('82','a5255a2c-1086-4a5e-8e7b-607160234c49','Cánh đồng Mường Thanh','Nằm giữa lòng chảo Điện Biên, cánh đồng Mường Thanh là một trong 4 vựa lúa trù phú và có gạo ngon nhất miền Tây Bắc. Đây là một trong những địa điểm du lịch Điện Biên mà bao du khách luôn mong muốn một lần được chiêm ngưỡng.'),('83','a88e05dd-f4c8-4e7f-a769-cc78cea556a6','Tháp Chàm Poshanư ','Tháp Chàm Poshanư nằm trên đồi Bà Nài, thuộc phường Phú Hài, cách trung tâm thành phố Phan Thiết 7 km. Người Chăm đã để lại cho nước ta những công trình mang đậm dấu ấn Chămpa cổ.'),('84','a8dc7e6a-370d-408a-a5ca-3e1c7bd8b508',' Miếu Bà Chúa Xứ','Miễu Bà chúa Xứ có thể xem là địa danh nổi tiếng nhất của An Giang. Đây là ngôi miếu linh thiêng nổi tiếng  thu hút hàng triệu người dân tứ xứ đến phúng viếng hằng năm.'),('85','a93de781-2d2e-4f6a-929a-09d09efa70b1','Làng cổ Bích La','Làng cổ Bích La với 500 tuổi thuộc xã Triệu Đông, huyện Triệu La nổi tiếng là một vùng đất địa linh nhân kiệt. Nơi đây là quê hương của rất nhiều nhân tài của nước ta từ thời xưa tới nay mà trong đó tiêu biểu nhất phải kể đến đồng chí Lê Duẩn.'),('86','abca8c3b-6fea-45a2-98f3-3f987e91aa03','Khám phá đảo cò Chi Lăng','Nằm thuộc xã Chi Lăng Nam, đảo cò là địa điểm tham quan, du lịch ở Hải Dương được giới trẻ yêu thích. Bởi tới đây bạn sẽ được hòa mình vào không gian thiên nhiên, với những nét đẹp hoang sơ, tận hưởng bầu không khí trong lành, dễ chịu, cùng những dòng nước mát lạnh và đặc biệt được ngắm nhìn những đàn cò trắng xóa đậu khắp khu đảo nhỏ xinh đẹp này.'),('87','adb3f989-db91-4f91-acbd-70773df71142','Chợ Bến Thành','Không thể không nhắc đến địa danh này đầu tiên khi mà nó vốn được coi là biểu tượng của Sài Gòn suốt hàng thập kỷ qua. Ngôi chợ này tọa lạc ngay quận 1 trung tâm của thành phố, bên cạnh quảng trường Quách Thị Trang và công viên 23/9. Vị trí đắc địa như vậy chính là lý do tại sao mà khu chợ này rất nhộn nhịp, sầm uất. Chợ Bến Thành được khởi công xây dựng, hoàn thành từ những năm đầu của thế kỷ 20 và hoạt động liên tục từ đó cho đến nay.'),('88','af6ba139-a7c5-4481-ba39-2167059b3369','Vườn quốc gia Yok Đôn','Vườn quốc gia Yok Đôn nằm cách trung tâm thành phố Buôn Mê Thuột khoảng 40 cây số. Nó sở hữu một diện tích vô cùng rộng lớn, lên tới hơn 115.000 ha và hơn 133.000 ha vùng đệm bao quanh. Với vùng diện tích ấy, nó không chỉ thuộc về 1 địa phương của Đăk Lăk mà nằm ở 2 huyện của Đăk Lăk và cả 1 huyện của tỉnh Đăk Nông.'),('89','b2ff69c3-35ff-4360-a9f0-5c36d8d3c3a8','Thung Lũng Tình Yêu','Được thiên nhiên và núi rừng ưu ái. Thung Lũng Tình Yêu khoác trên mình một một vùng khí hậu mát mẽ dễ chịu. Một không gian xanh tươi đầy hoa và cây cối. Đây là nơi thừa hưởng đầy đủ mọi yếu tố địa hình lẫn không gian. Vô cùng lý tưởng, từ sông suối, núi rừng, cây cảnh và hoa tươi. '),('9','0a9e87a0-a270-431a-b131-a686cf2a381a','Khu du lịch thác Trắng.','Đồng muối Sa Huỳnh thuộc xã Phổ Thạnh, huyện Đức Phổ, tỉnh Quảng Ngãi vốn đã được biết đến từ lâu qua những bức ảnh vô cùng nghệ thuật của nhiều nhiếp ảnh gia trong nước và quốc tế. Nơi đây là vựa muối quan trọng của khu vực miền Trung, nghề làm muối ở Sa Huỳnh đã từng đi vào nhiều câu thơ, câu ca của Việt Nam.'),('90','bdcb8ca8-4301-4b96-8371-02cd2d4b9f08','Hồ Núi Cốc','Hồ núi cốc  tọa lạc tại tỉnh Thái Nguyên là một hồ nhân tạo trải dài, rộng mênh mông. Được thiên nhiên ban tặng cho một vẻ đẹp non nước hữu tình. Và được mệnh danh là ” vịnh Hạ Long ” thu nhỏ của Thái Nguyên.'),('91','bf8fcd3e-3fd1-45cc-beb8-e69cb4313d32','Chùa Hang','Mở đầu danh sách những địa điểm du lịch Trà Vinh là một ngôi chùa với vẻ đẹp hoang sơ pha chút bí ẩn. Gọi là chùa Hang bởi vì cổng chùa có thiết kế rất giống một cái hang dẫn vào thế giới tâm linh của người dân bản địa.'),('92','c1cd238a-c471-4865-9fbc-a98d63120a63','Tượng chúa Giêsu Kito Vua','Tượng Chúa Kitô Vua – Biểu tượng của thành phố biển, là một bức tượng Chúa Giêsu được đặt trên đỉnh Núi Nhỏ của thành phố Vũng Tàu. Tượng có chiều cao 32 mét, chiều dài hai cánh tay là 18,4 mét, đặt trên bệ khối chạm hình Chúa và 12 tông đồ.'),('93','c4b95b18-4bfc-4301-93d6-031416cc31cd','Hồ Ba Bể','Cách Hà Nội khoảng 250km, Vườn Quốc gia Ba Bể có hiện tích hơn 10.000 ha, có cấu tạo địa chất đặc biệt, nhiều núi cao, hang động, sông hồ, suối ngầm tạo nên cảnh quan đặc biệt hấp dẫn. Đây cũng là nơi bảo tồn các nguồn gen động thực vật quý hiếm. Với hơn 20 điểm tham quan hấp dẫn cùng các tuyến du lịch đi bộ trong rừng nguyên sinh, các bản làng du lịch văn hóa ..Vườn Quốc gia Ba Bể là một địa điẻm du lịch sinh thái và nghỉ dưỡng hấp dẫn.'),('94','d0111fe8-738f-4708-8933-a52be90fbb56','Tam Đảo','Sở dĩ là Tam Đảo là vì nơi đây được hình thành từ 3 ngọn núi cao trên 1000m so với mực nước biển là Thiên Thị, Thạch Bàn và Phú Nghĩa. Nơi đây chính là điểm đến hấp dẫn nhất Vĩnh Phúc, là vùng đất tuyệt đẹp với khung cảnh thơ mộng, mây mù bao phủ quanh năm được ví như “Đà Lạt của miền Bắc”.'),('95','d0f7ce3d-91ab-4738-926b-6e7c3585496e','Thác Tác Tình','Thác Tác Tình còn có tên gọi khác là thác Tắc Tình hay theo cách gọi thân thương của người dân nơi đây là thác Tình. Đây là một trong những địa điểm du lịch hấp dẫn và thu hút được đông đảo du khách trong và ngoài tỉnh đến chiêm ngưỡng.'),('96','d3025aba-c1cd-4728-bd48-a78bc539815b','Chùa Bút Tháp','Chùa Bút Tháp  nằm ở bên đê hữu ngạn sông Đuống ở thôn Bút Tháp, xã Đình Tổ, huyện Thuận Thành, tỉnh Bắc Ninh.Đây được xem là một trong số ít những ngôi chùa cổ ở Việt Nam còn giữ được khá nguyên vẹn và hoàn chỉnh lối kiến trúc sơ khai ban đầu, là địa chỉ hành hương của phật tử và du khách bốn phương.'),('97','d81bf966-3fd6-4535-9e21-1163e72beef7','Trảng cỏ Bù Lạch','Đây là trảng cỏ lớn rộng với diện tích khoảng 500ha bao gồm gần 20 trảng cỏ lớn nhỏ khác nhau. Đến với Trảng cỏ bù lạch du khách sẽ phải trầm trồ, ngạc nhiên trước vẻ đẹp kì diệu mà tạo hóa ban tặng. Đó là những bãi cỏ kim mọc đan xen với các loại hoa, càng khiến cho khung cảnh nơi đây đẹp nên gấp vạn lần đầy sự mê hoặc xung quanh còn có cả một rừng nguyên sinh bao bọc.'),('98','e76ae872-1bdf-46dc-b0e0-3db9dcc249b6','Khu du lịch sinh thái TÂY ĐÔ','Đến đây khách du lịch sẽ cảm nhận được một khuôn viên phong cảnh hữu tình, vườn cây sum  suê, các loài cây chim thú tiểu cảnh và các khu vui chơi vui chơi giải trí. Khu du lịch này đã cực kỳ thu hút khách du lịch đến vui chơi, thư giãn, tham gian sau những ngày làm việc căng thẳng và những ngày nghỉ'),('99','eaa96177-6929-4c3b-bb64-73410c7947d1','Động Phong Nha','Được vinh danh là di sản thiên nhiên thế giới, quần thể hang động Phong Nha – Kẻ Bàng là một điểm đến không thể bỏ lỡ khi du lịch Quảng Bình. Quần thế vườn quốc gia Phong Nha – Kẻ Bàng được tạo hoá ban tặng cho tài nguyên thiên nhiên vô cùng quý giá với hệ thống hang động đá vôi nguyên sơ hùng vĩ và thảm động – thực vật phong phú – địa điểm du lịch hấp dẫn.');
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
                        `newID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `short_description` longblob NOT NULL,
                        `long_description` longblob NOT NULL,
                        `date_submitted` date DEFAULT NULL,
                        `title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        PRIMARY KEY (`newID`),
                        KEY `fk_news_account1_idx` (`accountID`),
                        CONSTRAINT `fk_news_account1` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES ('9c67ad6b-0b39-4266-8fc3-445cee0e3efe','/TrangChu/images/imgNews/Caravan Nam Trung bộ - hành trình vượt biển xuyên rừng  .png',_binary 'sdfsfasdfsdfsadf',_binary '<p>kbskdjbkjadaf</p>\r\n','2021-05-11','Caravan Nam Trung bộ - hành trình vượt biển xuyên rừng  ','4791bf66-93a7-4d28-acaf-de75565190b6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricedetails`
--

DROP TABLE IF EXISTS `pricedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricedetails` (
                                `priceDetailsID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `ageID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                `quantity` int NOT NULL,
                                `price` decimal(10,0) NOT NULL,
                                `bookingID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                                PRIMARY KEY (`priceDetailsID`,`ageID`),
                                KEY `fk_priceDetails_booking1_idx` (`priceDetailsID`),
                                KEY `fk_priceDetails_ages1_idx` (`ageID`),
                                KEY `fk_pricedetails_booking1` (`bookingID`),
                                CONSTRAINT `fk_priceDetails_ages1` FOREIGN KEY (`ageID`) REFERENCES `ages` (`ageID`),
                                CONSTRAINT `fk_pricedetails_booking1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricedetails`
--

LOCK TABLES `pricedetails` WRITE;
/*!40000 ALTER TABLE `pricedetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
                            `provinceID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            `provinceName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                            PRIMARY KEY (`provinceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('0704269f-fb9e-4e01-b0f6-251fd1f2035e','Nghệ An'),('0a9e87a0-a270-431a-b131-a686cf2a381a','Quảng Ngãi'),('0f6da271-1752-40b0-a9fd-cf70cc1c1975','Hưng Yên'),('161c7b60-ce16-4e78-b73d-b91aaa0a619e','Kiên Giang'),('17575159-39fb-4317-8f58-166ac26ad02a','Hà Nội'),('3824a58f-a585-4129-ade3-4067ffb71d76','Tiền Giang'),('3c5495c4-ca2f-452b-bcdb-a4f394003f81','Thái Bình'),('3d3b32bc-4bf2-4fd7-9673-b49e154c2ac9','Phú Yên Cần Thơ'),('4278c021-afda-4e9a-a565-3d6e23c1ee72','Lạng Sơn'),('428d586a-2c36-41ce-9b65-bfd8cfeb0931','Bình Định'),('435fdb20-404f-44eb-86e1-d275d15ec195','Cao Bằng'),('485dfa1c-2517-4e56-b344-d4c9d9681716','Kon Tum'),('4af3b4da-d23e-4f8a-b715-e8238a5d84d8','Bến Tre'),('4b9ed685-f6ed-46a5-bb97-6950d0017ee2','Cà Mau'),('55171f9a-9b26-41d4-b28d-66f33ac8302e','Bình Dương'),('586e9e83-c10d-4d9d-9774-75952f7a35cc','Đà Nẵng'),('58feac1f-1963-478c-b3dc-f51312bcac6e','Hà Giang Hà Nam'),('5c5624cc-8a36-49ee-ba14-6938c82bb122','Quảng Ninh'),('61eaae9c-2e2d-4135-bc7d-94735c3ba28a','Gia Lai'),('638030d2-84a3-486b-a432-79ee086d4318','Lào Cai'),('67436e3a-5d36-40e9-a6b0-b1eb9c65b6cf','Hòa Bình'),('6871c77d-61de-44ab-ba04-5335f8c17588','Bắc Giang'),('6c80f9ba-608b-49bb-997b-a144e9ef5b86','Hải Phòng'),('707ade2f-41d7-417f-816f-d5e544444d63','Ninh Thuận'),('718ab594-76ac-4a0d-a5ee-f405a0a611e9','Bạc Liêu'),('799859a6-3a94-4ea6-954b-09e4a2962c86','Vĩnh Long'),('7b4ec3fb-c705-4660-84ba-f1a002f036fd','Đồng Nai'),('7f28da58-9969-4378-af33-5053d8936abc','Đắk Nông'),('862249d7-9020-4208-9ab8-59d19bb606b0','Thừa Thiên Huế'),('8cb041e0-bd07-48c2-925e-25c2983de7e8','Nam Định'),('8deba772-f7b2-4192-b524-136831ae536d','Ninh Bình'),('907ce61f-2bc7-45dc-9581-2fcd2948a069','Đồng Tháp'),('90e108cc-5876-4803-b88a-da05c1c58361','Yên Bái'),('96a52971-6069-4c90-a0d9-f4ba32b6985b','Sơn La'),('9bdc2291-8c13-4440-9cd6-87a85eddb4d1','Khánh Hòa'),('9bdceb72-f62a-4ab4-9b45-858071bdda84','Sóc Trăng'),('a40a1416-58a7-4f1c-b179-faad00e92e4b','Tây Ninh'),('a5255a2c-1086-4a5e-8e7b-607160234c49','Điện Biên'),('a88e05dd-f4c8-4e7f-a769-cc78cea556a6','Bình Thuận'),('a8dc7e6a-370d-408a-a5ca-3e1c7bd8b508','An Giang'),('a93de781-2d2e-4f6a-929a-09d09efa70b1','Quảng Trị'),('abca8c3b-6fea-45a2-98f3-3f987e91aa03','Hải Dương'),('adb3f989-db91-4f91-acbd-70773df71142','TP HCM'),('af6ba139-a7c5-4481-ba39-2167059b3369','Đắk Lắk'),('b2ff69c3-35ff-4360-a9f0-5c36d8d3c3a8','Lâm Đồng'),('bdcb8ca8-4301-4b96-8371-02cd2d4b9f08','Thái Nguyên'),('bf8fcd3e-3fd1-45cc-beb8-e69cb4313d32','Trà Vinh'),('c1cd238a-c471-4865-9fbc-a98d63120a63','Bà Rịa - Vũng Tàu'),('c4b95b18-4bfc-4301-93d6-031416cc31cd','Bắc Kạn'),('d0111fe8-738f-4708-8933-a52be90fbb56','Vĩnh Phúc'),('d0f7ce3d-91ab-4738-926b-6e7c3585496e','Lai Châu'),('d3025aba-c1cd-4728-bd48-a78bc539815b','Bắc Ninh'),('d81bf966-3fd6-4535-9e21-1163e72beef7','Bình Phước'),('e76ae872-1bdf-46dc-b0e0-3db9dcc249b6','Hậu Giang'),('eaa96177-6929-4c3b-bb64-73410c7947d1','Quảng Bình Quảng Nam'),('eaf8aeaa-0a8b-49ef-8601-3bf495af58b3','Hà Tĩnh'),('eb2e9a0b-e5e9-4a46-a107-ecf9530b3d30','Long An'),('eb2f26c5-7417-4b4c-a805-98e5ed5bd4ea','Thanh Hóa'),('f15a72ff-fc92-43bb-af96-1f7267b822e6','Phú Thọ'),('ff2fb0b9-d78d-47c9-8a05-37b2283f7895','Tuyên Quang');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
                        `roleID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `description` varbinary(300) DEFAULT NULL,
                        PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('ROLE_ADMIN','Admin',NULL),('ROLE_ANONYMOUS','Anonymous',NULL),('ROLE_CUSTOMER','Customer',NULL),('ROLE_EMPLOYEE','Employee',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysconfig`
--

DROP TABLE IF EXISTS `sysconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysconfig` (
                             `key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                             `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                             PRIMARY KEY (`key`),
                             UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysconfig`
--

LOCK TABLES `sysconfig` WRITE;
/*!40000 ALTER TABLE `sysconfig` DISABLE KEYS */;
INSERT INTO `sysconfig` VALUES ('AAR','18');
/*!40000 ALTER TABLE `sysconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
                          `ticketID` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
                          `bookingID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `customerID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          `ageID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                          PRIMARY KEY (`ticketID`),
                          KEY `fk_ticket_ages1_idx` (`ageID`),
                          KEY `fk_ticket_booking1_idx` (`bookingID`),
                          KEY `fk_ticket_customer_idx` (`customerID`),
                          CONSTRAINT `fk_ticket_ages1` FOREIGN KEY (`ageID`) REFERENCES `ages` (`ageID`),
                          CONSTRAINT `fk_ticket_booking1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`),
                          CONSTRAINT `fk_ticket_customer` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
                        `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `tourName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `vehicle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        `price` decimal(10,0) NOT NULL DEFAULT '0',
                        `startDay` datetime NOT NULL,
                        `maxseats` int NOT NULL DEFAULT '1' COMMENT 'số người đi tối đa trong 1 tour',
                        `content` longblob NOT NULL,
                        `endDay` datetime NOT NULL,
                        `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                        PRIMARY KEY (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES ('8197372d-1d2f-481b-91e6-5c13096a7206','Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Rạch Giá - Cần Thơ','Xe Hơi',6000000,'2021-05-11 00:00:00',5,_binary 'Du lịch » Du lịch trong nước » Tour Miền Bắc » Du lịch Lào Cai » Bay cùng Vietravel Airlines: Hà Nội - Sapa - Fansipan - Lào Cai - Chùa Bái Đính - Tràng An - Tuyệt Tịnh Cốc (Tặng vé xe lửa Mường Hoa)\r\n\r\n','2021-05-14 00:00:00','Miền Tây - Châu Đốc - Rừng Tràm Trà Sư - Hà Tiên - Rạch Giá - Cần Thơ.png');
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourprices`
--

DROP TABLE IF EXISTS `tourprices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourprices` (
                              `ageID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                              `price` decimal(10,0) NOT NULL DEFAULT '0',
                              PRIMARY KEY (`ageID`,`tourID`),
                              KEY `fk_tourprices_tour1_idx` (`tourID`),
                              CONSTRAINT `fk_tourprices_ages1` FOREIGN KEY (`ageID`) REFERENCES `ages` (`ageID`),
                              CONSTRAINT `fk_tourprices_tour1` FOREIGN KEY (`tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='bảng giá của một tour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourprices`
--

LOCK TABLES `tourprices` WRITE;
/*!40000 ALTER TABLE `tourprices` DISABLE KEYS */;
INSERT INTO `tourprices` VALUES ('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','8197372d-1d2f-481b-91e6-5c13096a7206',3000000),('bdee5279-4601-484c-8fce-e8f5781deda3','8197372d-1d2f-481b-91e6-5c13096a7206',4000000),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','8197372d-1d2f-481b-91e6-5c13096a7206',5000000),('f53d20c2-7f20-4fad-bab6-76847d102ef9','8197372d-1d2f-481b-91e6-5c13096a7206',6000000);
/*!40000 ALTER TABLE `tourprices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'traveldb'
--

--
-- Dumping routines for database 'traveldb'
--
/*!50003 DROP PROCEDURE IF EXISTS `deleteTourInDiaDiemDi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTourInDiaDiemDi`(IN tourId nvarchar(100))
begin
delete from diadiemdi where tour_tourID = tourId;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTourByProvinceId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTourByProvinceId`(IN Id nvarchar(100))
begin
select t.* from tour t,province pr , landmarks l,diadiemdi dd
where t.tourID = dd.tour_tourID
  and l.landMarkID = dd.landMarkID
  and l.provinceID = pr.provinceID
  and pr.provinceID = Id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getTourByProvinceName` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTourByProvinceName`(IN name nvarchar(100))
begin
select t.* from tour t,province pr , landmarks l,diadiemdi dd
where t.tourID = dd.tour_tourID
  and l.landMarkID = dd.landMarkID
  and l.provinceID = pr.provinceID
  and pr.provinceName like concat('%',name,'%');
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `searchTour` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `searchTour`( IN province nvarchar(100), IN diaDiemDi nvarchar(100), IN fromPrice decimal(10,0), IN toPrice decimal(10,0), IN ngayDi DateTime, IN ngayVe DateTime)
BEGIN
select t.*
from tour t inner join diadiemdi d on t.tourID = d.tour_tourID
            inner join landmarks l on d.landMarkID = l.landMarkID
            inner join province p on l.provinceID = p.provinceID
where t.price between fromPrice and toPrice or t.startday between ngayDi and ngayVe or p.provinceName = province or l.landMarkName = diaDiemDi;
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

-- Dump completed on 2021-05-11 20:57:44
