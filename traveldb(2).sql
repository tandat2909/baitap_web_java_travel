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
INSERT INTO `account` VALUES ('18a0a722-c44d-48b1-861e-287027e17882','tandat2909','$2a$10$ltE7jevG7OcHUXqog6lCOePg3Oqo1Jw2wQoovuBtWlZfGk9ZE3w8W',1,'ROLE_CUSTOMER'),('25a13416-bd56-47ae-a475-d8c4272a2e98','sjhgsajdhfahsdf','$2a$10$i.IkGXx.2m89prQxZhbrhuEBdynTSQglYiigBHPCa3/eM48c03ZWO',1,'ROLE_CUSTOMER'),('26f64943-bec1-4861-aa19-9efdcea7237f','tandat234234','$2a$10$kHo6LSYe74o5DfpvAE5xjuIIGn58By8UgK0CqFhbuRiuxPXbllttG',0,'ROLE_CUSTOMER'),('2761744a-0149-46a5-8860-924cc6441592','tinice','$2a$10$yFgzuZRkrGp04Hv5EFLyPu92JY1Qe56ejpZm5i139QwOT5He.qggK',1,'ROLE_CUSTOMER'),('4791bf66-93a7-4d28-acaf-de75565190b6','tandat','$2a$10$igIGmWTHFKwo7xebSA98oeQFnHOL7wsiyZ5Nrgwuq/p1e2l2WtpvK',1,'ROLE_CUSTOMER'),('a7b25eed-2aad-49a3-8721-927bb81e22ed','tandat2234234','$2a$10$FNAz4HzDbAVpAs8F6r/DaeM67ejG6SUxyyh9QkJeg.6lisJKE.0kK',0,'ROLE_CUSTOMER'),('b470582c-9d10-41cc-a2f4-c8dd425dec02','qwe','$2a$10$7n8GOZqtUomVbU4Vdpo.H.EY1cZeioUj8S7XoiYYn8DO4Szm39VN6',0,'ROLE_CUSTOMER'),('f8007680-5756-43a9-ad6a-e2598975663c','tandat1234','$2a$10$jd1hKxkB4sjVfTqhCbyxierYqbDSC82XScVcss9krPkbj5QIIAlE2',1,'ROLE_CUSTOMER');
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
  `employeesID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BookingDate` datetime NOT NULL,
  `totalMoney` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`bookingID`),
  KEY `fk_booking_customer1_idx` (`customerID`),
  KEY `fk_booking_employees_idx` (`employeesID`),
  CONSTRAINT `fk_booking_customer1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `fk_booking_employees` FOREIGN KEY (`employeesID`) REFERENCES `employees` (`employeeID`)
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
-- Table structure for table `bookingdetails`
--

DROP TABLE IF EXISTS `bookingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookingdetails` (
  `bookingID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seats` int NOT NULL,
  `DepartureDay` datetime NOT NULL COMMENT 'thời gian khỏi hành\\n',
  PRIMARY KEY (`bookingID`),
  KEY `fk_bookingDetails_booking1_idx` (`bookingID`),
  KEY `fk_bookingDetails_tour1_idx` (`tourID`),
  CONSTRAINT `fk_bookingDetails_booking1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`),
  CONSTRAINT `fk_bookingDetails_tour1` FOREIGN KEY (`tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingdetails`
--

LOCK TABLES `bookingdetails` WRITE;
/*!40000 ALTER TABLE `bookingdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookingdetails` ENABLE KEYS */;
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
  `birthDay` date NOT NULL,
  `CCID` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accountID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `account_accountID_UNIQUE` (`accountID`),
  KEY `fk_customer_account_idx` (`accountID`),
  CONSTRAINT `fk_customer_account` FOREIGN KEY (`accountID`) REFERENCES `account` (`accountID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='bảnh lưu khách hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('2b188a68-5538-41ce-bced-1dff61ccb923','Tấn Đạt','Âsdasd','1851050032dat@ou.edu.vn','2003-04-14','232423423433','0977238433','26f64943-bec1-4861-aa19-9efdcea7237f'),('2eae01d7-c2b1-4eef-b85e-24e5daf2cad2','Đặng Thị','Oanh','oanh23109@gmail.com','2003-04-09','223423433','0396296258','a7b25eed-2aad-49a3-8721-927bb81e22ed'),('437059c7-2230-4217-baee-3efd313a3d54','asd','qwe','vutandat29092000@gmail.com','2021-04-06','23123123',NULL,'b470582c-9d10-41cc-a2f4-c8dd425dec02'),('776fa00c-04ad-496a-babe-19da0821b879','Tấn Đạt','Vũ','vutandat29092000@gmail.com','2003-04-10','233333332',NULL,'2761744a-0149-46a5-8860-924cc6441592'),('9a292de5-38ac-4a2f-ab57-3daf3fb9d854','Tấn','Đạt','vutandat29092000@gmail.com','2003-04-10','234234234','0965929852','25a13416-bd56-47ae-a475-d8c4272a2e98'),('9ccdb154-f779-4703-9f4e-ae47e6d7aa87','Tấn','Đạt','vutandat29092000@gmail.com','2021-03-30','23333333','0965929852','4791bf66-93a7-4d28-acaf-de75565190b6'),('d3b19fbb-859f-4dbf-b414-b3257d4263ba','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435','f8007680-5756-43a9-ad6a-e2598975663c'),('deeb511a-f679-41ee-b435-d6bdbe529847','Tấn','Đạt','vutandat29092000@gmail.com','2021-04-06','2342374238478','0965928952','18a0a722-c44d-48b1-861e-287027e17882');
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
/*!40000 ALTER TABLE `landmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricedetails`
--

DROP TABLE IF EXISTS `pricedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pricedetails` (
  `bookingID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ageID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`bookingID`,`ageID`),
  KEY `fk_priceDetails_ages1_idx` (`ageID`),
  KEY `fk_priceDetails_booking1_idx` (`bookingID`),
  CONSTRAINT `fk_priceDetails_ages1` FOREIGN KEY (`ageID`) REFERENCES `ages` (`ageID`),
  CONSTRAINT `fk_priceDetails_booking1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`)
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
  `key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `ticketID` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  PRIMARY KEY (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='thông tin tour -- seats người đi trong 1 tour -- startday ngày giời tour bắt đầu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES ('234','Đà Lạt','Xe Máy',234234,'2021-04-15 09:56:43',5);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourdetails`
--

DROP TABLE IF EXISTS `tourdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourdetails` (
  `tourID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contents` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  UNIQUE KEY `tourID_UNIQUE` (`tourID`),
  CONSTRAINT `fk_tourdetails_tour1` FOREIGN KEY (`tourID`) REFERENCES `tour` (`tourID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourdetails`
--

LOCK TABLES `tourdetails` WRITE;
/*!40000 ALTER TABLE `tourdetails` DISABLE KEYS */;
INSERT INTO `tourdetails` VALUES ('234','á,dkjsadfskjhdfkjhsafjsahdfkhjasfghsadfgashdfgsahjdfaksdfjakshd\n<h1>Tour skjdad</h1>');
/*!40000 ALTER TABLE `tourdetails` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `tourprices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 22:44:06