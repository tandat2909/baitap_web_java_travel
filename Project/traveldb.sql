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
INSERT INTO `account` VALUES ('18a0a722-c44d-48b1-861e-287027e17882','tandat2909','$2a$10$ltE7jevG7OcHUXqog6lCOePg3Oqo1Jw2wQoovuBtWlZfGk9ZE3w8W',1,'ROLE_CUSTOMER'),('24a156ae-39de-4602-b3f1-85accc0fd700','tandat1234ssss','$2a$10$iCqTXIWD1jathtpDjFhzy.qjJ9lT9O0pTeDBojZ1/TIWmx2QEkneK',1,'ROLE_CUSTOMER'),('25a13416-bd56-47ae-a475-d8c4272a2e98','sjhgsajdhfahsdf','$2a$10$i.IkGXx.2m89prQxZhbrhuEBdynTSQglYiigBHPCa3/eM48c03ZWO',0,'ROLE_CUSTOMER'),('26f64943-bec1-4861-aa19-9efdcea7237f','tandat234234','$2a$10$kHo6LSYe74o5DfpvAE5xjuIIGn58By8UgK0CqFhbuRiuxPXbllttG',0,'ROLE_CUSTOMER'),('2761744a-0149-46a5-8860-924cc6441592','tinice','$2a$10$yFgzuZRkrGp04Hv5EFLyPu92JY1Qe56ejpZm5i139QwOT5He.qggK',1,'ROLE_CUSTOMER'),('4791bf66-93a7-4d28-acaf-de75565190b6','tandat','$2a$10$igIGmWTHFKwo7xebSA98oeQFnHOL7wsiyZ5Nrgwuq/p1e2l2WtpvK',1,'ROLE_ADMIN'),('5c58e63c-5138-49cb-9764-85385eb112cb','12345678','$2a$10$NcuYXYqAcTjtIjsijye6eeHX6LsUl8ynLDW0PtALp/KC3zw14.oaK',1,'ROLE_CUSTOMER'),('70e81791-ef64-4e6d-913a-474b289bbf2f','2234234234234','$2a$10$T5BBNRGnnq4llbwjBeLlsOHsi9Fe5ywYwySaqMZ02G.0dUm24jL7u',1,'ROLE_CUSTOMER'),('7f1112ae-65b8-4bd4-817e-399b595c4c98','1234568','$2a$10$ky65TG2BGy4KFl/9tjUy9e1lFAKVxVHMXnMyl4kck2KRRh1lUc2oK',1,'ROLE_CUSTOMER'),('9be1d83f-516d-4eef-94e5-2b3f2ac9f370','123456','$2a$10$/QB5/ARsLl86X7Uuohor4u.mNIx/n6hnXEm83GnLh0FNsLwL7Thga',1,'ROLE_CUSTOMER'),('a7b25eed-2aad-49a3-8721-927bb81e22ed','tandat2234234','$2a$10$FNAz4HzDbAVpAs8F6r/DaeM67ejG6SUxyyh9QkJeg.6lisJKE.0kK',0,'ROLE_CUSTOMER'),('b470582c-9d10-41cc-a2f4-c8dd425dec02','qwe','$2a$10$7n8GOZqtUomVbU4Vdpo.H.EY1cZeioUj8S7XoiYYn8DO4Szm39VN6',0,'ROLE_CUSTOMER'),('eca670bf-68e5-47e1-929e-0a4367424dbe','admin','$2a$10$HJOFSmQjkB/Qq.yVPgSKse/Zi41mPeBK99vZW36yLtgbotAQuwrIq',1,'ROLE_CUSTOMER'),('f8007680-5756-43a9-ad6a-e2598975663c','tandat1234','$2a$10$jd1hKxkB4sjVfTqhCbyxierYqbDSC82XScVcss9krPkbj5QIIAlE2',1,'ROLE_CUSTOMER'),('fd184360-579c-4dd3-a056-5b0fa413fac6','customer','$2a$10$I4oTRWKmUq9m.8Rrwp3PZOXCx9tCXGe0sfmbB8ojJ24mt96Ssv7k6',1,'ROLE_CUSTOMER');
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
INSERT INTO `booking` VALUES ('1d177a6f-33a2-4bf4-b066-14f4105d9526','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 01:26:32',NULL,_binary '0','234',1,'lần 1','momo'),('56cdc352-d81f-40fe-9617-c01c974d9911','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 02:11:45',NULL,_binary '0','8946c154-f504-4c38-924a-44b6e1298148',1,'lần 3','blockchain'),('94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 02:09:00',NULL,_binary '0','234',5,'lần 2','momo'),('b8487483-925d-4913-be5a-848593892026','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 12:27:02',234234,_binary '0','234',1,'','tienmat'),('c901a7bb-6cb1-4aaa-b05e-14a0212e816d','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 02:22:51',NULL,_binary '0','234',1,'','tienmat'),('fb33973c-672e-4c70-9ccc-9256b4552142','9ccdb154-f779-4703-9f4e-ae47e6d7aa87',NULL,'2021-05-09 02:20:42',NULL,_binary '0','234',1,'','momo');
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
INSERT INTO `contents` VALUES ('09782567-c779-4749-8249-da7edf4b1ff3','2021-05-10 00:00:00',_binary 'sdvav','a0103f46-3204-4564-a50e-1a597a2f0c02','11'),('17706143-fbc6-4fbc-a9a2-cea8bba5da4c','2021-05-14 00:00:00',_binary 'ưefqwefwqe','e39b3719-0f0c-4ccf-8d96-67c80ca7587c','11'),('6b9b6565-2d63-423d-ba71-e13d8b0b43ec','2021-05-11 00:00:00',_binary 'ưqevqwev','a0103f46-3204-4564-a50e-1a597a2f0c02','11'),('6fafa54f-5cd7-4ab0-b54e-84279cf55df8','2021-05-11 00:00:00',_binary '2','edb68146-7161-4758-932f-35ac7996936c','123123'),('73cdb4a0-bdc3-42c1-99bc-765dd90dd567','2021-05-08 00:00:00',_binary '123<br /><br />123<br />1<br />3<br />1','8946c154-f504-4c38-924a-44b6e1298148','123123'),('7aefd9bc-c655-44d5-ad1a-9d3a8016a719','2021-05-11 00:00:00',_binary '214214234','296281ee-ae1e-4acd-9f6e-0d7b2e798361','11'),('7be39618-ad31-4d3c-86e8-10270153c434','2021-05-10 00:00:00',_binary 'ưevewerve<br /><br /><br />sv','6950fa90-ac8e-456c-bfd3-773d9ddc61e5','11'),('99441de1-ccc9-4788-a220-23b47b79cd9e','2021-05-06 00:00:00',_binary '123123<br />12<br />3<br />13<br />123','8946c154-f504-4c38-924a-44b6e1298148','123123'),('ac3c5838-b1df-4694-8e1d-fe072a2ef7da','2021-05-11 00:00:00',_binary 'ưev','afc6d0ee-0c1f-4950-9f12-16fe2da427ed','11'),('b8868faf-1c44-4c23-a1e4-7a5c54251baa','2021-05-15 00:00:00',_binary 'ưqefqwefwefwef','e39b3719-0f0c-4ccf-8d96-67c80ca7587c','11'),('d00c8367-ca22-49a4-a917-71fb1a276d2a','2021-05-10 00:00:00',_binary 'ưev','afc6d0ee-0c1f-4950-9f12-16fe2da427ed','11'),('d2931cc9-e729-431b-8a2d-45e689e62f02','2021-05-07 00:00:00',_binary '123<br />123<br />1<br />23<br />13','8946c154-f504-4c38-924a-44b6e1298148','123123'),('e2334ba8-8495-41d1-b16d-8ee8602358c8','2021-05-10 00:00:00',_binary '1234234234','296281ee-ae1e-4acd-9f6e-0d7b2e798361','11'),('f4216ed9-4e80-462a-8576-2b7425f101db','2021-05-07 00:00:00',_binary '12312312312312313<br />12<br />3<br />13<br />1<br />31','922f94cb-c8df-4962-9fac-5db175756926','123123');
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
INSERT INTO `customer` VALUES ('2810b0ae-17df-4224-a6af-dd97a049198f','Ngọc','Hà',NULL,'2021-05-25',NULL,NULL,NULL,NULL,'Nữ',NULL),('2c0ca0e3-dca5-4028-b060-62446a4bd386','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435',NULL,NULL,'Nam',NULL),('39517b8e-c3eb-4f64-a0bd-9577f4043ab3','Như','Quỳnh',NULL,'2021-05-05',NULL,NULL,NULL,NULL,'Name',NULL),('437059c7-2230-4217-baee-3efd313a3d54','asd','qwe','vutandat29092000@gmail.com','2021-04-06','23123123',NULL,NULL,NULL,'Nam',NULL),('5716b425-4b43-4346-89e5-fea2e62f4f00','Nguyễn','Trọng',NULL,'2021-05-11',NULL,NULL,NULL,NULL,'Name',NULL),('5c72405d-d822-4c71-a22f-4165d603c7b2','Văm','Ba',NULL,'2021-04-27',NULL,NULL,NULL,NULL,'Name',NULL),('776fa00c-04ad-496a-babe-19da0821b879','Tấn Đạt','Vũ','vutandat29092000@gmail.com','2003-04-10','233333332',NULL,NULL,NULL,'Nữ',NULL),('7f50e5da-6e25-49d0-b838-84377c52ea15','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435',NULL,NULL,'Nam',NULL),('9a292de5-38ac-4a2f-ab57-3daf3fb9d854','Tấn','Đạt','vutandat29092000@gmail.com','2003-04-10','234234234','0965929852',NULL,NULL,'Nữ',NULL),('9ccdb154-f779-4703-9f4e-ae47e6d7aa87','Tấn','Đạt','vutandat29092000@gmail.com','2021-03-30','23333333','0965929852','fd184360-579c-4dd3-a056-5b0fa413fac6',NULL,'Nam',NULL),('a45c31b1-98bb-4ed0-bf0f-28796edf88c8','Vũ','Tấn Đạt',NULL,'2021-05-11',NULL,NULL,NULL,NULL,'Nữ',NULL),('b4c62559-f154-42c4-ba66-e63e936c5d8c','Tấn','Đạt',NULL,'2021-05-20',NULL,NULL,NULL,NULL,'Name',NULL),('d3b19fbb-859f-4dbf-b414-b3257d4263ba','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435','f8007680-5756-43a9-ad6a-e2598975663c',NULL,'Nữ',NULL),('d5182a05-f541-43ba-9b10-69adc4f6ebc2','Tấn','Đạt','vutandat29092000@gmail.com','2003-05-07','234234234233','0965929852','eca670bf-68e5-47e1-929e-0a4367424dbe',NULL,'Nam',NULL),('d8bdb72d-e1bb-4611-af0b-e8eba0bd22b0','Tố','Như',NULL,'2021-06-03',NULL,NULL,NULL,NULL,'Name',NULL),('deeb511a-f679-41ee-b435-d6bdbe529847','Tấn','Đạt','vutandat29092000@gmail.com','2021-04-06','2342374238478','0965928952','18a0a722-c44d-48b1-861e-287027e17882',NULL,'Nam',NULL),('ecc5bbce-cfd3-43a3-9c7b-646ca6c32565','Tan','Dat','v@s.com','2000-10-02','093234433','0987652435','24a156ae-39de-4602-b3f1-85accc0fd700',NULL,'Name',NULL),('fda40698-5b57-472f-85f0-572dccdbcd87','Huỳnh','Nguyễn Bắc Giang',NULL,'2021-05-05',NULL,NULL,NULL,NULL,'Name',NULL);
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
INSERT INTO `diadiemdi` VALUES ('123123','bd1b819d-cb11-417a-b81c-db1c280df6c4'),('456456','234');
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
INSERT INTO `employees` VALUES ('1','Dương Văn','Tư','AbTran@gmail.com','3143235443554','2015-05-15','5254352555',NULL,'70e81791-ef64-4e6d-913a-474b289bbf2f',NULL,NULL),('2','bbbbbbbbbbb','cccccccccc','dddddddddddd','1234312545145','2015-05-16','5245423543','sdsdfgsdgfg','9be1d83f-516d-4eef-94e5-2b3f2ac9f370',NULL,'nam'),('3','ccccccccccc','dddddddddd','sssssssssss','2532465464554','2014-05-09','2454656456','vsagfdsgdsg','f8007680-5756-43a9-ad6a-e2598975663c',NULL,'nam');
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
INSERT INTO `landmarks` VALUES ('11','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Hồ Gươm','ghdfhfdh'),('123123','0704269f-fb9e-4e01-b0f6-251fd1f2035e','Lăng Bác','2sdfsdf'),('456456','17575159-39fb-4317-8f58-166ac26ad02a','aaaaaaa','dgadasgfdad');
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
INSERT INTO `news` VALUES ('1','/TrangChu/images/imgNews/wwwwwwwww.png',_binary '﻿aaaaaaaaaaaaa',_binary '<p>﻿bbbbbbbbbbbb</p>\r\n','2021-05-08','wwwwwwwww','26f64943-bec1-4861-aa19-9efdcea7237f'),('9c67ad6b-0b39-4266-8fc3-445cee0e3efe','/TrangChu/images/imgNews/sdfsadfsdf .png',_binary 'sdfsfasdfsdfsadf',_binary '<p>kbskdjbkjadaf</p>\r\n','2021-05-08','sdfsadfsdf ','4791bf66-93a7-4d28-acaf-de75565190b6'),('cf6aa1f5-76ec-485c-816d-f8ea3b0a4175','/TrangChu/images/imgNews/Caravan Nam Trung bộ - hành trình vượt biển xuyên rừng  .png',_binary 'Không chỉ nổi tiếng với hàng loạt bờ biển xinh đẹp nhất nước, vùng đất Nam Trung bộ còn sở hữu những cung đường biển tuyệt đẹp khiến ai cũng mê mẩn. Để khởi động một mùa hè đầy hứng khởi, hành trình caravan vượt biển xuyên rừng mang đến cho bạn nhiều trải nghiệm gần gũi về cung đường biển nên thơ cùng những giá trị làm nên nét đặc sắc của vùng đất Nam Trung bộ. Mãn nhãn với cung đường huyền thoại ',_binary '<p>VVVVVVVVVVVVVVVVVVVVVV</p>\r\n','2021-05-08','Caravan Nam Trung bộ - hành trình vượt biển xuyên rừng  ','26f64943-bec1-4861-aa19-9efdcea7237f');
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
INSERT INTO `pricedetails` VALUES ('0ec90e43-b221-4bbf-bd9e-0c6159511749','bdee5279-4601-484c-8fce-e8f5781deda3',1,234234,'94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a'),('208dd685-bf5d-4ea9-801c-bfabd30ffd04','f53d20c2-7f20-4fad-bab6-76847d102ef9',2,234234,'94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a'),('3179adbb-065e-4e9c-bea2-8f4fb1eadb70','f53d20c2-7f20-4fad-bab6-76847d102ef9',1,234234,'fb33973c-672e-4c70-9ccc-9256b4552142'),('37915752-e475-4598-b0d9-6518a72efc7c','f53d20c2-7f20-4fad-bab6-76847d102ef9',1,234234,'c901a7bb-6cb1-4aaa-b05e-14a0212e816d'),('c8674299-a065-4667-9631-eb8358f98115','c71fb358-c195-4bc4-9e45-004fd8a5ffd2',1,4234,'94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a'),('cf496a7f-ee78-48b5-9091-c27bca340bdd','31c75b0d-ec1c-4c39-9caf-5f2e90e7f492',1,234234,'94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a'),('eb0de03b-a6da-48ec-a580-d400d649733d','f53d20c2-7f20-4fad-bab6-76847d102ef9',1,123,'56cdc352-d81f-40fe-9617-c01c974d9911');
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
INSERT INTO `ticket` VALUES ('01213fe8-a9aa-4038-b62d-6864e5ff0e4e','56cdc352-d81f-40fe-9617-c01c974d9911','a45c31b1-98bb-4ed0-bf0f-28796edf88c8','f53d20c2-7f20-4fad-bab6-76847d102ef9'),('1550dc88-a88f-407c-88ca-cd3a9210363f','94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','39517b8e-c3eb-4f64-a0bd-9577f4043ab3','f53d20c2-7f20-4fad-bab6-76847d102ef9'),('3d389cd4-b93c-4d6a-b744-9c4b3ed5ff32','94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','d8bdb72d-e1bb-4611-af0b-e8eba0bd22b0','31c75b0d-ec1c-4c39-9caf-5f2e90e7f492'),('880c28a1-fe61-4fbd-a661-c708f6a4904c','94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','2810b0ae-17df-4224-a6af-dd97a049198f','c71fb358-c195-4bc4-9e45-004fd8a5ffd2'),('8ee19c73-2765-444d-9e57-67e452674302','fb33973c-672e-4c70-9ccc-9256b4552142','5c72405d-d822-4c71-a22f-4165d603c7b2','f53d20c2-7f20-4fad-bab6-76847d102ef9'),('c200f47a-49c0-4f43-a1ac-d0e029a527f4','94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','5716b425-4b43-4346-89e5-fea2e62f4f00','bdee5279-4601-484c-8fce-e8f5781deda3'),('ccdc3ab0-8233-40ba-83c0-bc79d8ced7a1','c901a7bb-6cb1-4aaa-b05e-14a0212e816d','b4c62559-f154-42c4-ba66-e63e936c5d8c','f53d20c2-7f20-4fad-bab6-76847d102ef9'),('ef27d11c-06da-4aa9-addc-3bdfa30adfee','94b1edb0-cea0-4f5b-97f5-9df3eb9ff35a','fda40698-5b57-472f-85f0-572dccdbcd87','f53d20c2-7f20-4fad-bab6-76847d102ef9');
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
INSERT INTO `tour` VALUES ('234','Đà Lạt','Xe Máy',666666666,'2021-04-15 09:56:43',2,_binary '23232342342sdcsvsdvsdvsdsdfvdvsdvsdvsvsvsvsv','2021-05-07 15:59:55',NULL),('296281ee-ae1e-4acd-9f6e-0d7b2e798361','Ngày mai em đi ','Máy Bay',1234234,'2021-05-09 00:00:00',1,_binary '3f34123','2021-05-10 00:00:00','Ngày mai em đi .png'),('6950fa90-ac8e-456c-bfd3-773d9ddc61e5','Ngày mai em đi chơi',NULL,123,'2021-05-09 00:00:00',1,_binary 'ưevewerve<br /><br /><br />sv','2021-05-09 00:00:00','Ngày mai em đi chơi.png'),('6ab9fbdb-5f89-4a8d-bfbe-51cbce28ae91','Hà nội - thành phố hồ chí minh 2 ngày 3 đêm','Xe hơi',444422423,'2021-04-23 01:07:24',5,_binary 'hà nội ngày 12 -3 -23','2021-05-07 15:59:57',NULL),('8946c154-f504-4c38-924a-44b6e1298148','123222',NULL,123,'2021-05-05 00:00:00',5,_binary '123123<br />12<br />3<br />13<br />123','2021-05-07 00:00:00',NULL),('8ebb7419-0687-4cca-8185-0289a84d813d','Hqưeqweqweqwe- thành phố hồ chí minh 2 ngày 3 đêm','Xe hơi',333333333,'2021-04-24 01:07:24',5,_binary 'hà nội ngày 12 -3 -23','2021-05-07 15:59:59',NULL),('9013ca49-6579-4292-8d8c-f07132259bb6','Hà nội - thành phố hồ chí minh 2 ngày 3 đêm','Xe hơi',1233333334,'1970-01-04 01:07:24',5,_binary 'hà nội ngày 12 -3 -23','2021-05-07 16:00:00',NULL),('922f94cb-c8df-4962-9fac-5db175756926','123d',NULL,213,'2021-05-06 00:00:00',2,_binary '12312312312312313<br />12<br />3<br />13<br />1<br />31','2021-05-06 00:00:00',NULL),('9d0bd27f-94b6-4afb-b612-d9e2b462f235','Hà nội - thành phố hồ chí minh 2 ngày 3 đêm','Xe hơi',2342424248,'1970-01-04 01:07:24',5,_binary 'hà nội ngày 12 -3 -23','2021-05-07 16:00:01',NULL),('a0103f46-3204-4564-a50e-1a597a2f0c02','Ngày mới','Máy Bay',123,'2021-05-09 00:00:00',8,_binary 'vâng oke m','2021-05-10 00:00:00','Ngày mới.png'),('afc6d0ee-0c1f-4950-9f12-16fe2da427ed','Ngày mai em đi ','Máy Bay',123,'2021-05-09 00:00:00',1,_binary 'ưev','2021-05-10 00:00:00',NULL),('e39b3719-0f0c-4ccf-8d96-67c80ca7587c','ưe',NULL,123,'2021-05-13 00:00:00',3,_binary 'ưefqwefwqe','2021-05-14 00:00:00',NULL),('edb68146-7161-4758-932f-35ac7996936c','d','Máy Bay',12345,'2021-05-10 00:00:00',1,_binary '2222','2021-05-10 00:00:00','d.png');
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
INSERT INTO `tourprices` VALUES ('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','234',234234),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','296281ee-ae1e-4acd-9f6e-0d7b2e798361',2134124),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','6950fa90-ac8e-456c-bfd3-773d9ddc61e5',132),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','8946c154-f504-4c38-924a-44b6e1298148',123123123),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','922f94cb-c8df-4962-9fac-5db175756926',123),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','a0103f46-3204-4564-a50e-1a597a2f0c02',123123),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','afc6d0ee-0c1f-4950-9f12-16fe2da427ed',123),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','e39b3719-0f0c-4ccf-8d96-67c80ca7587c',123),('31c75b0d-ec1c-4c39-9caf-5f2e90e7f492','edb68146-7161-4758-932f-35ac7996936c',121),('bdee5279-4601-484c-8fce-e8f5781deda3','234',234234),('bdee5279-4601-484c-8fce-e8f5781deda3','296281ee-ae1e-4acd-9f6e-0d7b2e798361',1234124),('bdee5279-4601-484c-8fce-e8f5781deda3','6950fa90-ac8e-456c-bfd3-773d9ddc61e5',1231),('bdee5279-4601-484c-8fce-e8f5781deda3','8946c154-f504-4c38-924a-44b6e1298148',12123123),('bdee5279-4601-484c-8fce-e8f5781deda3','922f94cb-c8df-4962-9fac-5db175756926',123),('bdee5279-4601-484c-8fce-e8f5781deda3','a0103f46-3204-4564-a50e-1a597a2f0c02',123),('bdee5279-4601-484c-8fce-e8f5781deda3','afc6d0ee-0c1f-4950-9f12-16fe2da427ed',123),('bdee5279-4601-484c-8fce-e8f5781deda3','e39b3719-0f0c-4ccf-8d96-67c80ca7587c',123),('bdee5279-4601-484c-8fce-e8f5781deda3','edb68146-7161-4758-932f-35ac7996936c',123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','234',4234),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','296281ee-ae1e-4acd-9f6e-0d7b2e798361',2341234),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','6950fa90-ac8e-456c-bfd3-773d9ddc61e5',123132),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','8946c154-f504-4c38-924a-44b6e1298148',123123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','922f94cb-c8df-4962-9fac-5db175756926',123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','a0103f46-3204-4564-a50e-1a597a2f0c02',123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','afc6d0ee-0c1f-4950-9f12-16fe2da427ed',123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','e39b3719-0f0c-4ccf-8d96-67c80ca7587c',123),('c71fb358-c195-4bc4-9e45-004fd8a5ffd2','edb68146-7161-4758-932f-35ac7996936c',1234),('f53d20c2-7f20-4fad-bab6-76847d102ef9','234',234234),('f53d20c2-7f20-4fad-bab6-76847d102ef9','296281ee-ae1e-4acd-9f6e-0d7b2e798361',1234234),('f53d20c2-7f20-4fad-bab6-76847d102ef9','6950fa90-ac8e-456c-bfd3-773d9ddc61e5',123),('f53d20c2-7f20-4fad-bab6-76847d102ef9','8946c154-f504-4c38-924a-44b6e1298148',123),('f53d20c2-7f20-4fad-bab6-76847d102ef9','922f94cb-c8df-4962-9fac-5db175756926',213),('f53d20c2-7f20-4fad-bab6-76847d102ef9','a0103f46-3204-4564-a50e-1a597a2f0c02',123),('f53d20c2-7f20-4fad-bab6-76847d102ef9','afc6d0ee-0c1f-4950-9f12-16fe2da427ed',123),('f53d20c2-7f20-4fad-bab6-76847d102ef9','e39b3719-0f0c-4ccf-8d96-67c80ca7587c',123),('f53d20c2-7f20-4fad-bab6-76847d102ef9','edb68146-7161-4758-932f-35ac7996936c',12345);
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

-- Dump completed on 2021-05-10 15:46:45
