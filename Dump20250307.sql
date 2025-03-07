-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: tvs_svt_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `svt_agent_tbl`
--

DROP TABLE IF EXISTS `svt_agent_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_agent_tbl` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(55) NOT NULL,
  `emp_code` varchar(55) NOT NULL,
  `city_id` int DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '0',
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) DEFAULT '0',
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` int DEFAULT NULL,
  `Language` varchar(255) DEFAULT NULL,
  `agent_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`agent_id`),
  KEY `city_id` (`city_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `svt_agent_tbl_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `svt_city_master_tbl` (`city_id`) ON DELETE SET NULL,
  CONSTRAINT `svt_agent_tbl_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `svt_company_tbl` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_agent_tbl`
--

LOCK TABLES `svt_agent_tbl` WRITE;
/*!40000 ALTER TABLE `svt_agent_tbl` DISABLE KEYS */;
INSERT INTO `svt_agent_tbl` VALUES (1,'John Doe','EMP123',1,2,'2025-03-03 14:03:27',1,'2025-03-03 14:03:27',1,'English','$2b$10$tJKyuznVrESElGUsOCm3V.bdFsRXH3MIQt67mcUAF9sQy/iDaypka'),(3,'guhen','4089',1,2,'2025-03-04 09:51:59',1,'2025-03-04 09:51:59',1,'english','$2b$10$vQ6QEblJ10PaQEm5VvHvo.DJijQU9EIlT1xak7vijQksJ6n3EyqTS'),(4,'keerthi','4089',1,2,'2025-03-04 10:02:44',1,'2025-03-04 10:02:44',1,'tamil','$2b$10$XI.wdlEtGAiSxabbofKM8ed/lVC6Zu4n/3rYPi7emkA7mIPepvlli'),(5,'kishan','4089',1,2,'2025-03-04 10:03:03',1,'2025-03-04 10:03:03',1,'tamil','$2b$10$f2baqhUYrZ4mVIhhCfo0hel89R6Hcw6G5Lz.7ljeiUUtbJ6pCjF/6'),(6,'kayal','4089',1,2,'2025-03-04 10:03:23',1,'2025-03-04 10:03:23',1,'tamil','$2b$10$NCj7jyrx.spfTsDOppviW.JDgmf6OKml/Wyy8OwObr7.nZ1dsyfg.'),(8,'deepan','emp78',1,2,'2025-03-04 12:28:01',1,'2025-03-04 12:28:01',1,'tamil','$2b$10$SDvspYbGU0wz/ZQM4QBgoOtVk7EVyzQemHJdjc9TjDrbdSbg2sMJ.');
/*!40000 ALTER TABLE `svt_agent_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_city_master_tbl`
--

DROP TABLE IF EXISTS `svt_city_master_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_city_master_tbl` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(55) NOT NULL,
  `state_id` int DEFAULT NULL,
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) DEFAULT '0',
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `svt_city_master_tbl_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `svt_state_master_tbl` (`state_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_city_master_tbl`
--

LOCK TABLES `svt_city_master_tbl` WRITE;
/*!40000 ALTER TABLE `svt_city_master_tbl` DISABLE KEYS */;
INSERT INTO `svt_city_master_tbl` VALUES (1,'chennai',1,'2025-03-03 13:50:41',1,'2025-03-03 13:51:34');
/*!40000 ALTER TABLE `svt_city_master_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_company_tbl`
--

DROP TABLE IF EXISTS `svt_company_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_company_tbl` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Company_Name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_company_tbl`
--

LOCK TABLES `svt_company_tbl` WRITE;
/*!40000 ALTER TABLE `svt_company_tbl` DISABLE KEYS */;
INSERT INTO `svt_company_tbl` VALUES (1,'Techie Corp','2025-03-02 20:40:46','2025-03-02 20:43:49',1),(2,'Tee Corp','2025-03-02 20:44:49','2025-03-02 20:55:43',1);
/*!40000 ALTER TABLE `svt_company_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_emergency_contact_tbl`
--

DROP TABLE IF EXISTS `svt_emergency_contact_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_emergency_contact_tbl` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emergency_name` varchar(255) NOT NULL,
  `emergency_mobilenumber` varchar(200) NOT NULL,
  `reg_id` int DEFAULT NULL,
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dob` varchar(200) DEFAULT NULL,
  `aadhaar_no` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emergency_mobilenumber` (`emergency_mobilenumber`),
  KEY `reg_id` (`reg_id`),
  CONSTRAINT `svt_emergency_contact_tbl_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `svt_register_tbl` (`reg_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_emergency_contact_tbl`
--

LOCK TABLES `svt_emergency_contact_tbl` WRITE;
/*!40000 ALTER TABLE `svt_emergency_contact_tbl` DISABLE KEYS */;
INSERT INTO `svt_emergency_contact_tbl` VALUES (1,'deepa','78da22683998417f70d941e97f88a24c',3,'2025-03-03 16:05:57','2025-03-03 16:05:57','1995-05-10','88ed811612ca056e79b267f8fa24b3f2'),(6,'Jane Doe','4d62f645dde7bb733318688f752e16cd',3,'2025-03-03 16:43:04','2025-03-03 16:43:04','1995-08-20','4080342eb491b7f9fe02bc861ca10458');
/*!40000 ALTER TABLE `svt_emergency_contact_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_register_tbl`
--

DROP TABLE IF EXISTS `svt_register_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_register_tbl` (
  `reg_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `reg_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) DEFAULT '0',
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `agent_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `alternate_mobilenumber` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `aadhaar_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `alternate_mobilenumber` (`alternate_mobilenumber`),
  UNIQUE KEY `alternate_mobilenumber_2` (`alternate_mobilenumber`),
  UNIQUE KEY `email_id` (`email_id`),
  UNIQUE KEY `aadhaar_no` (`aadhaar_no`),
  UNIQUE KEY `mobile_number` (`mobile_number`),
  KEY `city_id` (`city_id`),
  KEY `agent_id` (`agent_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `svt_register_tbl_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `svt_city_master_tbl` (`city_id`) ON DELETE SET NULL,
  CONSTRAINT `svt_register_tbl_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `svt_agent_tbl` (`agent_id`) ON DELETE SET NULL,
  CONSTRAINT `svt_register_tbl_ibfk_3` FOREIGN KEY (`company_id`) REFERENCES `svt_company_tbl` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_register_tbl`
--

LOCK TABLES `svt_register_tbl` WRITE;
/*!40000 ALTER TABLE `svt_register_tbl` DISABLE KEYS */;
INSERT INTO `svt_register_tbl` VALUES (3,'John Doe','2025-03-03 14:11:35',1,'2025-03-03 14:11:35',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(4,'hi','2025-03-03 14:35:44',1,'2025-03-03 14:35:44',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(5,'seetha','2025-03-03 14:36:12',1,'2025-03-03 14:36:12',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(6,'seetha','2025-03-03 14:39:33',1,'2025-03-03 14:39:33',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(7,'seetha','2025-03-03 15:02:03',1,'2025-03-03 15:02:03',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(8,'seetha','2025-03-03 15:10:07',0,'2025-03-04 10:18:57',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(9,'seetha','2025-03-03 15:41:40',1,'2025-03-03 15:41:40',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(10,'deepa','2025-03-03 15:42:11',1,'2025-03-03 15:42:11',1,1,1,'309c5966845d8fab5d278b5add6bd6a3',NULL,NULL,NULL,NULL),(11,'deepa','2025-03-03 16:36:46',1,'2025-03-03 16:36:46',1,1,1,'309c5966845d8fab5d278b5add6bd6a3','78da22683998417f70d941e97f88a24c','6db206f10ed0a1572550bccd639fd771dc324b044526e4a3812a716f10aaa79f','4d62f645dde7bb733318688f752e16cd','88ed811612ca056e79b267f8fa24b3f2'),(16,'deepa','2025-03-03 16:37:20',1,'2025-03-03 16:37:20',1,1,1,'309c5966845d8fab5d278b5add6bd6a3','e88666ac4b0dcd7a544183e076c28753','a29ec059dbb786aef6c7e6468135164d57305ec0e584f18a3581e18aa3fa1572','d423d1f222521b88554ba104d57a36c2','a51930ebe5e3289126ab4e0e4eb1886b'),(21,'deepan','2025-03-03 16:39:03',1,'2025-03-03 16:39:03',1,1,1,'309c5966845d8fab5d278b5add6bd6a3','ea6239c847568157210a451eceda33a7','08f8c247e85d534ebcb1b7069cc48b8bba9eaee1c59253110c8bd9c0039705a1','e131e51b39abb30a41f0b453aaa45c9d','07ef3ad975986749b8779a6508b5ee87'),(22,'mathi','2025-03-04 10:08:28',1,'2025-03-04 10:08:28',1,1,1,'7ff45475f8f7021994c15f149022744d','e4075684855b9bf0b9c507a2779a2cc2','7cc0f2092af6d7e5809ad45b07c6490f','40608a02f8417a1e34dc468a5afd12db','2a0e7531640764d6d154f4c10f983004'),(24,'dinesh','2025-03-04 10:09:39',1,'2025-03-04 10:11:12',1,1,1,'7111e5a7d2724a6e75243cb3ced69cfd','b677cc22ef0f68daca2830ec9c5c71f7','9c4f6459fc6f4e15e35116955760b60c84786989a9f6f6087b3db047b189f81e','db53d737d0f0c72f5bebd2235d2f26f8','b9469b710a28a1a993ec465c05b3ba8c');
/*!40000 ALTER TABLE `svt_register_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_state_master_tbl`
--

DROP TABLE IF EXISTS `svt_state_master_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_state_master_tbl` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_name` varchar(55) NOT NULL,
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) DEFAULT '0',
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_state_master_tbl`
--

LOCK TABLES `svt_state_master_tbl` WRITE;
/*!40000 ALTER TABLE `svt_state_master_tbl` DISABLE KEYS */;
INSERT INTO `svt_state_master_tbl` VALUES (1,'Tamil Nadu','2025-03-03 13:48:29',1,'2025-03-03 13:48:29');
/*!40000 ALTER TABLE `svt_state_master_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svt_ticket_tbl`
--

DROP TABLE IF EXISTS `svt_ticket_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `svt_ticket_tbl` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `reg_id` int NOT NULL,
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `alloted_by` int DEFAULT NULL,
  `customer_voice` varchar(5000) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `SVT_activation_flag` tinyint(1) DEFAULT '0',
  `key_loss` tinyint(1) DEFAULT '0',
  `insurance_doc` tinyint(1) DEFAULT '0',
  `reported_to_police` tinyint(1) DEFAULT '0',
  `followup_date` date DEFAULT NULL,
  `suggested_police_station` varchar(5000) DEFAULT NULL,
  `ticket_validation` tinyint(1) DEFAULT '0',
  `theft_date_time` datetime DEFAULT NULL,
  `theft_city_id` int DEFAULT NULL,
  `theft_area` varchar(255) DEFAULT NULL,
  `theft_area_pincode` int DEFAULT NULL,
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `police_name` varchar(255) DEFAULT NULL,
  `police_mobile_number` varchar(55) DEFAULT NULL,
  `police_whatsapp_number` varchar(55) DEFAULT NULL,
  `FIR_not_valid` tinyint(1) DEFAULT '0',
  `activate_tracking` tinyint(1) DEFAULT '0',
  `xsvtidentifer` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `reg_id` (`reg_id`),
  KEY `city_id` (`city_id`),
  KEY `created_by` (`created_by`),
  KEY `alloted_by` (`alloted_by`),
  CONSTRAINT `svt_ticket_tbl_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `svt_register_tbl` (`reg_id`) ON DELETE CASCADE,
  CONSTRAINT `svt_ticket_tbl_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `svt_city_master_tbl` (`city_id`) ON DELETE SET NULL,
  CONSTRAINT `svt_ticket_tbl_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `svt_agent_tbl` (`agent_id`) ON DELETE SET NULL,
  CONSTRAINT `svt_ticket_tbl_ibfk_4` FOREIGN KEY (`alloted_by`) REFERENCES `svt_agent_tbl` (`agent_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svt_ticket_tbl`
--

LOCK TABLES `svt_ticket_tbl` WRITE;
/*!40000 ALTER TABLE `svt_ticket_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `svt_ticket_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tm_cus_vehicle_tbl`
--

DROP TABLE IF EXISTS `tm_cus_vehicle_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tm_cus_vehicle_tbl` (
  `cus_veh_id` int NOT NULL AUTO_INCREMENT,
  `reg_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `veh_reg_no` varchar(255) DEFAULT NULL,
  `odo_reading` int DEFAULT NULL,
  `vin_number` varchar(255) DEFAULT NULL,
  `manufacture_year` int DEFAULT NULL,
  `active_flag` tinyint(1) DEFAULT '0',
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `agent_id` int DEFAULT NULL,
  `fuel_type` varchar(55) DEFAULT NULL,
  `vehicle_color` varchar(55) DEFAULT NULL,
  `SVT_start_date` date DEFAULT NULL,
  `SVT_end_date` date DEFAULT NULL,
  `SVT_status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`cus_veh_id`),
  KEY `reg_id` (`reg_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `agent_id` (`agent_id`),
  CONSTRAINT `tm_cus_vehicle_tbl_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `svt_register_tbl` (`reg_id`) ON DELETE SET NULL,
  CONSTRAINT `tm_cus_vehicle_tbl_ibfk_2` FOREIGN KEY (`vehicle_id`) REFERENCES `tm_vechicle_master_tbl` (`vehicle_id`) ON DELETE SET NULL,
  CONSTRAINT `tm_cus_vehicle_tbl_ibfk_3` FOREIGN KEY (`agent_id`) REFERENCES `svt_agent_tbl` (`agent_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tm_cus_vehicle_tbl`
--

LOCK TABLES `tm_cus_vehicle_tbl` WRITE;
/*!40000 ALTER TABLE `tm_cus_vehicle_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `tm_cus_vehicle_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tm_vechicle_master_tbl`
--

DROP TABLE IF EXISTS `tm_vechicle_master_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tm_vechicle_master_tbl` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `fuel_type` varchar(100) DEFAULT NULL,
  `vehicle_type` varchar(55) DEFAULT NULL,
  `variant` varchar(100) DEFAULT NULL,
  `version` varchar(55) DEFAULT NULL,
  `transmission` varchar(55) DEFAULT NULL,
  `created_log` datetime DEFAULT CURRENT_TIMESTAMP,
  `active_flag` tinyint(1) DEFAULT '0',
  `mod_log` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `agent_id` int DEFAULT NULL,
  `company_id` int DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `agent_id` (`agent_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `tm_vechicle_master_tbl_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `svt_agent_tbl` (`agent_id`) ON DELETE SET NULL,
  CONSTRAINT `tm_vechicle_master_tbl_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `svt_company_tbl` (`ID`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tm_vechicle_master_tbl`
--

LOCK TABLES `tm_vechicle_master_tbl` WRITE;
/*!40000 ALTER TABLE `tm_vechicle_master_tbl` DISABLE KEYS */;
INSERT INTO `tm_vechicle_master_tbl` VALUES (1,'Toyota','Camry','Petrol','Sedan','XLE','2023','Automatic','2025-03-04 10:32:17',1,'2025-03-04 10:32:17',1,1),(5,'Honda','Civic','Diesel','Sedan','Sport','2022','Manual','2025-03-04 10:33:59',1,'2025-03-04 10:33:59',3,1),(6,'Tesla','Model7','Electric','Sedan','Long Range','2024','Automatic','2025-03-04 10:39:03',0,'2025-03-04 10:39:46',3,1),(7,'Tes999la','Mokkkdel7','Electric','Sedan','Long Range','2024','Automatic','2025-03-04 10:40:04',0,'2025-03-04 10:40:04',3,1);
/*!40000 ALTER TABLE `tm_vechicle_master_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-07 10:47:44
