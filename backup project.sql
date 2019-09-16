-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: marketplaceproject
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
-- Table structure for table `category_penjual`
--

DROP TABLE IF EXISTS `category_penjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_penjual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_penjual`
--

LOCK TABLES `category_penjual` WRITE;
/*!40000 ALTER TABLE `category_penjual` DISABLE KEYS */;
INSERT INTO `category_penjual` VALUES (1,'pertanian'),(2,'peternakan'),(3,'perikanan'),(4,'tambak');
/*!40000 ALTER TABLE `category_penjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_products`
--

DROP TABLE IF EXISTS `category_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namacategory` varchar(45) NOT NULL,
  `parentid` int(11) DEFAULT NULL,
  `catpenjualid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_products`
--

LOCK TABLES `category_products` WRITE;
/*!40000 ALTER TABLE `category_products` DISABLE KEYS */;
INSERT INTO `category_products` VALUES (1,'Karbo/biji',NULL,1),(2,'Seafood',NULL,3),(3,'Tambak',NULL,3),(4,'Daging',NULL,2),(5,'Unggas',NULL,2),(6,'Sayur-mayur',NULL,1),(7,'Buah',NULL,1),(8,'Ikan Air Tawar',NULL,3),(9,'Umbi-umbian',NULL,1),(10,'lele',NULL,4);
/*!40000 ALTER TABLE `category_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notif`
--

DROP TABLE IF EXISTS `notif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `paymentid` int(11) DEFAULT NULL,
  `transaksiid` int(11) DEFAULT NULL,
  `opened` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notif`
--

LOCK TABLES `notif` WRITE;
/*!40000 ALTER TABLE `notif` DISABLE KEYS */;
INSERT INTO `notif` VALUES (1,'Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,1,NULL,1),(2,'Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,15,NULL,1),(3,'Pesanan dengan nomer transaksi = 15 sudah diproses di penjual',5,1,15,1),(4,'Pesanan dengan nomer transaksi = 14 sudah diproses di penjual',5,1,14,1),(5,'Pembayaran dengan nomer 13 dibatalkan karena uang yang dikirimkan kurang/foto tidak jelas mohon untuk berbelanja lagi',5,13,NULL,1),(6,'Pesanan dengan nomer transaksi = 1 sudah diproses di penjual',5,1,1,1),(7,'Pesanan dengan nomer transaksi = 11 sudah diproses di penjual',5,1,11,1),(8,'Pesanan dengan nomer transaksi = 9 tidak diproses oleh penjual dan uang akan dikembalikan ke rekening pengiriman',5,1,9,1),(9,'Pesanan dengan nomer transaksi = 15 sudah dalam pengiriman dari penjual',5,1,15,1),(10,'Pembayaran dengan nomer 2 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,2,NULL,1),(11,'Pesanan dengan nomer transaksi = 20 sudah diproses di penjual',5,2,20,1),(12,'Pesanan dengan nomer transaksi = 1 sudah dalam pengiriman dari penjual',5,1,1,1),(13,'Pembayaran dengan nomer 17 Sudah dikonfirmasi oleh admin dan akan diteruskan ke penjual',5,17,NULL,1),(14,'Pesanan dengan nomer transaksi = 27 sudah diproses di penjual',5,17,27,1),(15,'Pesanan dengan nomer transaksi = 27 sudah dalam pengiriman dari penjual',5,17,27,1);
/*!40000 ALTER TABLE `notif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penjual`
--

DROP TABLE IF EXISTS `penjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penjual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namatoko` varchar(45) NOT NULL,
  `alamattoko` varchar(45) NOT NULL,
  `kategoritoko` varchar(45) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `imageprofile` varchar(500) DEFAULT NULL,
  `imagebackground` varchar(500) DEFAULT NULL,
  `abouttoko` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penjual`
--

LOCK TABLES `penjual` WRITE;
/*!40000 ALTER TABLE `penjual` DISABLE KEYS */;
INSERT INTO `penjual` VALUES (1,'narto','jl.jeje tangerang ','1',4,NULL,NULL,NULL),(19,'asaadasdasd','asads','1',1,NULL,NULL,NULL),(20,'hati hari','jl. sjadnajndaj','2',6,'/penjual/hati hari20/images/PENPROF1568301462672.jpg','/penjual/hati hari20/images/BGPROF1568301489636.jpg','toko paling gokil'),(25,'toko awe','dadas','1',3,NULL,NULL,NULL),(26,'dsad','kiokio','1',5,'/penjual/dsad26/images/PENPROF1568300043162.jpg','/penjual/dsad26/images/BGPROF1568300872177.jpeg',NULL),(27,'toko uhuy','jl.uhuy','1',9,NULL,NULL,NULL),(28,'wakwak','jl.wakwak','1',7,NULL,NULL,NULL),(29,'sasukeninja','jl. konohagakure','1',10,NULL,NULL,NULL);
/*!40000 ALTER TABLE `penjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuanorder` varchar(45) NOT NULL,
  `informasiproduct` varchar(300) DEFAULT NULL,
  `penjualid` int(11) NOT NULL,
  `waktuupload` datetime DEFAULT NULL,
  `categoryprodid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'sada','/product/images/PROD1565615534954.jpg',123,12,'10kg','dasdasdasd',1,'2019-08-19 16:07:56',1),(2,'asdasd','/product/images/PROD1565615599897.jpg',1212,123,'5kg','dsadadasd',1,'2019-08-19 16:08:04',6),(4,'dasdaz','/product/images/PROD1565938064250.jpg',121231,213121,'10pcs','ADASDAz asdasdasdadsdx\nasfajdsfjkxlsjkbasjxa\naxdnajsnxdj;asnxjnsjxad\ndasdjnaJDNJASNDJSANDJASNSANASDKASNDA\nDAndkandkandkxnanasndjdnsajndxjan',20,'2019-08-17 22:33:58',5),(6,'dada','/product/images/PROD1565678938629.jpeg',1213,12,'231','adada',26,'2019-08-19 16:31:34',6),(13,'ddasdad','/product/images/PROD1566055319041.jpg',211,123123,'31231','asASasSasASsaad',20,'2019-08-17 22:22:05',4),(14,'dasda','/product/images/PROD1566208643825.jpg',20000,45,'10kg','dadasdasdasdasd',20,'2019-08-19 16:57:23',4);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'superadmin'),(2,'admin'),(3,'user');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `penjualid` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `hargabeli` int(11) DEFAULT NULL,
  `paymentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
INSERT INTO `transaksi` VALUES (1,5,13,20,'Finished','2019-08-27 13:39:20',9,0,211,1),(9,5,14,20,'CanceledProses','2019-08-29 15:18:28',1,0,20000,1),(10,5,2,1,'admin confirmed','2019-08-30 14:10:00',1,0,1212,1),(11,5,14,20,'Onproses','2019-08-30 15:05:15',1,0,20000,1),(12,5,6,26,'admin confirmed','2019-08-30 15:11:57',1,0,1213,1),(14,5,14,20,'Onproses','2019-08-30 15:14:45',1,0,20000,1),(15,5,4,20,'Finished','2019-08-30 15:17:28',1,0,121231,1),(16,5,13,20,'admin confirmed','2019-08-30 15:19:19',1,0,211,2),(17,5,2,1,'admin confirmed','2019-08-30 15:21:03',1,0,1212,2),(18,5,1,1,'admin confirmed','2019-08-30 15:21:53',1,0,123,2),(19,5,1,1,'admin confirmed','2019-08-30 15:26:25',1,0,123,2),(20,5,14,20,'Onproses','2019-08-30 22:49:30',1,0,20000,2),(21,5,1,1,'waitingpayment','2019-08-31 13:00:07',1,0,123,12),(22,5,1,1,'CanceledPayment','2019-08-31 13:26:52',1,0,123,13),(23,5,2,1,'CanceledPayment','2019-08-31 13:26:59',1,0,1212,13),(24,5,1,1,'admin confirmed','2019-08-31 13:33:07',1,0,123,15),(25,5,1,1,'oncart','2019-09-04 12:44:23',7,1,NULL,NULL),(26,5,14,20,'konfirmasi Admin','2019-09-03 13:18:19',2,0,20000,16),(27,5,4,20,'Finished','2019-09-04 12:49:34',1,0,121231,17),(28,5,2,1,'admin confirmed','2019-09-04 12:49:34',1,0,1212,17),(29,5,1,1,'admin confirmed','2019-09-04 12:49:34',1,0,123,17),(30,5,1,1,'oncart','2019-09-05 09:51:25',1,1,NULL,NULL),(31,5,2,1,'waitingpayment','2019-09-13 22:19:16',1,0,1212,18),(32,13,4,20,'oncart','2019-09-13 20:47:38',1,0,NULL,NULL),(33,13,1,1,'oncart','2019-09-13 21:51:47',2,0,NULL,NULL),(34,13,6,26,'oncart','2019-09-13 21:52:11',1,0,NULL,NULL),(35,13,13,20,'oncart','2019-09-14 20:57:20',2,0,NULL,NULL);
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpayment`
--

DROP TABLE IF EXISTS `userpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userpayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggaltransaksi` datetime DEFAULT NULL,
  `totalharga` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `tglexp` datetime DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpayment`
--

LOCK TABLES `userpayment` WRITE;
/*!40000 ALTER TABLE `userpayment` DISABLE KEYS */;
INSERT INTO `userpayment` VALUES (1,'2019-08-30 15:26:29',185555,5,'2019-08-31 15:26:29','/payment/images/PAYMENT1567256189478.jpg','admin confirmed'),(2,'2019-08-30 22:49:49',21669,5,'2019-08-31 22:49:49','/payment/images/PAYMENT1567396040747.jpg','admin confirmed'),(12,'2019-08-31 13:23:45',123,5,'2019-09-01 13:23:45',NULL,'waitingpayment'),(13,'2019-08-31 13:27:06',1335,5,'2019-09-01 13:27:06','/payment/images/PAYMENT1567265872176.jpeg','CanceledPayment'),(15,'2019-08-31 13:33:06',123,5,'2019-09-01 13:33:06','/payment/images/PAYMENT1567265540947.jpg','admin confirmed'),(16,'2019-09-03 13:18:19',40000,5,'2019-09-04 13:18:19','/payment/images/PAYMENT1567491640724.jpg','konfirmasi Admin'),(17,'2019-09-04 12:49:33',122566,5,'2019-09-05 12:49:33','/payment/images/PAYMENT1567576219509.jpg','admin confirmed'),(18,'2019-09-13 22:19:15',1212,5,'2019-09-14 22:19:16',NULL,'waitingpayment');
/*!40000 ALTER TABLE `userpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roleid` int(11) NOT NULL,
  `statusver` varchar(45) NOT NULL DEFAULT 'unverified',
  `lastlogin` datetime NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'dino','dino@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',1,'verified','0000-00-00 00:00:00',NULL),(2,'deni','deni@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',2,'verified','0000-00-00 00:00:00',NULL),(3,'dono','dono@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','0000-00-00 00:00:00',NULL),(4,'dini','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-19 16:06:59',NULL),(5,'uci','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-14 20:44:05',NULL),(6,'ucok','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-13 20:52:38',NULL),(7,'axe1','axe@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','0000-00-00 00:00:00',NULL),(8,'jijo','jijo@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'unverified','0000-00-00 00:00:00',NULL),(9,'zidan','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-17 16:26:12',NULL),(10,'sasuke','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-20 13:12:22',NULL),(11,'ciko1','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-20 13:12:57',NULL),(12,'tretan12','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-08-17 14:38:08',NULL),(13,'ucok1','aldinorahman36@gmail.com','9b7e3ad9970143944dbe0e51ef77fad8',3,'verified','2019-09-14 20:45:06',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-16  9:25:57
