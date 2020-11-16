-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: aims
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL,
  `author` varchar(45) DEFAULT NULL,
  `coverType` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `numOfPages` int DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` int NOT NULL,
  `cardCode` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL,
  `cvvCode` varchar(3) DEFAULT NULL,
  `dateExpired` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `id` int NOT NULL,
  `artist` varchar(45) DEFAULT NULL,
  `recordLabel` varchar(45) DEFAULT NULL,
  `musicType` varchar(45) DEFAULT NULL,
  `releaseDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd`
--

LOCK TABLES `cd` WRITE;
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryinfo`
--

DROP TABLE IF EXISTS `deliveryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryinfo` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `instructions` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryinfo`
--

LOCK TABLES `deliveryinfo` WRITE;
/*!40000 ALTER TABLE `deliveryinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveryinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvd`
--

DROP TABLE IF EXISTS `dvd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dvd` (
  `id` int NOT NULL,
  `discType` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `runtime` int DEFAULT NULL,
  `studio` varchar(45) DEFAULT NULL,
  `subtitle` varchar(45) DEFAULT NULL,
  `releaseDate` varchar(45) DEFAULT NULL,
  `filmType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvd`
--

LOCK TABLES `dvd` WRITE;
/*!40000 ALTER TABLE `dvd` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `totalAmount` int DEFAULT NULL,
  `orderId` int DEFAULT NULL,
  `rushOrderid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `imageUrl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `shippingFees` varchar(45) DEFAULT NULL,
  `deliveryInfoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryInfo_idx` (`deliveryInfoId`),
  CONSTRAINT `deliveryInfo` FOREIGN KEY (`deliveryInfoId`) REFERENCES `deliveryinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordermedia`
--

DROP TABLE IF EXISTS `ordermedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordermedia` (
  `mediaId` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `rushOrderId` int DEFAULT NULL,
  PRIMARY KEY (`mediaId`),
  KEY `order_idx` (`orderId`),
  KEY `rushorder_idx` (`rushOrderId`),
  CONSTRAINT `media` FOREIGN KEY (`mediaId`) REFERENCES `media` (`id`),
  CONSTRAINT `order` FOREIGN KEY (`orderId`) REFERENCES `order` (`id`),
  CONSTRAINT `rushorder` FOREIGN KEY (`rushOrderId`) REFERENCES `rushorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordermedia`
--

LOCK TABLES `ordermedia` WRITE;
/*!40000 ALTER TABLE `ordermedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordermedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttransaction`
--

DROP TABLE IF EXISTS `paymenttransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttransaction` (
  `id` int NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `method` varchar(45) DEFAULT NULL,
  `cardId` int DEFAULT NULL,
  `invoiceId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_idx` (`cardId`),
  KEY `invoice_idx` (`invoiceId`),
  CONSTRAINT `card` FOREIGN KEY (`cardId`) REFERENCES `card` (`id`),
  CONSTRAINT `invoice` FOREIGN KEY (`invoiceId`) REFERENCES `invoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttransaction`
--

LOCK TABLES `paymenttransaction` WRITE;
/*!40000 ALTER TABLE `paymenttransaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymenttransaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rushdeliveryinfo`
--

DROP TABLE IF EXISTS `rushdeliveryinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rushdeliveryinfo` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `instructions` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rushdeliveryinfo`
--

LOCK TABLES `rushdeliveryinfo` WRITE;
/*!40000 ALTER TABLE `rushdeliveryinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `rushdeliveryinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rushorder`
--

DROP TABLE IF EXISTS `rushorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rushorder` (
  `id` int NOT NULL,
  `shippingFees` varchar(45) DEFAULT NULL,
  `deliveryInfoId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deliveryInfo_idx` (`deliveryInfoId`),
  CONSTRAINT `rushdeliveryInfo` FOREIGN KEY (`deliveryInfoId`) REFERENCES `rushdeliveryinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rushorder`
--

LOCK TABLES `rushorder` WRITE;
/*!40000 ALTER TABLE `rushorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `rushorder` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-25 10:42:35
