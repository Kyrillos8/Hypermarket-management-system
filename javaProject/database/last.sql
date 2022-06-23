-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: newhybermarket
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_user` varchar(45) NOT NULL,
  `admin_pass` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_user`),
  UNIQUE KEY `admin_pass_UNIQUE` (`admin_pass`),
  UNIQUE KEY `admin_user_UNIQUE` (`admin_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block` (
  `block_id` varchar(2) NOT NULL,
  `block_name` varchar(50) NOT NULL,
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES ('A1','Grocery'),('A2','Daily Needs'),('B1','Men Fashion'),('B2','Women Fashion'),('B3','Kids Wear'),('B4','Footwear'),('B5','Watches'),('C1','Electronics'),('C2','Dining & Serving'),('C3','Stationary');
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buys`
--

DROP TABLE IF EXISTS `buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buys` (
  `product_id` varchar(50) NOT NULL,
  `invoice_id` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  PRIMARY KEY (`product_id`,`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys`
--

LOCK TABLES `buys` WRITE;
/*!40000 ALTER TABLE `buys` DISABLE KEYS */;
INSERT INTO `buys` VALUES ('PI10041','AAC002','5','100'),('PI10121','AAE002','2','1400'),('PI10121','AAF002','1','1400'),('PI10122','AAE002','2','1300'),('PI10122','AAF002','1','1300'),('PI10301','AAE001','1','5000'),('PI10301','AAF001','1','5000'),('PI10304','AAC002','2','4000'),('PI10304','AAE002','2','4000'),('PI10304','AAF002','1','4000'),('PI10421','AAF001','1','43000'),('PI10442','AAE001','1','1450'),('PI10442','AAF001','1','1450'),('PI10442','AAG001','1','1450'),('PI10511','AAA001','1','800'),('PI10511','AAB002','4','800'),('PI10531','AAA001','1','1550'),('PI10533','AAB002','3','500'),('PI10534','AAD002','2','1100'),('PI10602','AAA001','1','100');
/*!40000 ALTER TABLE `buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` varchar(6) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `store_id` varchar(2) NOT NULL,
  `inventory_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `store_id` (`store_id`),
  KEY `inventory_no` (`inventory_no`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `block` (`block_id`),
  CONSTRAINT `category_ibfk_2` FOREIGN KEY (`inventory_no`) REFERENCES `inventory` (`inventory_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('CLK001','Men Watches','B5','WARA003'),('CLK002','Women Watches','B5','WARA002'),('CLK003','Kids Watches','B5','WARA001'),('DN001','Soaps & Detergents','A2','WARC001'),('DN002','Coffee, Tea & Beverages','A2','WARB002'),('DN003','Fragrances','A2','WARC001'),('DNG001','TableWare','C2','WARA001'),('DNG002','Storage','C2','WARC003'),('DNG003','Kitchen Tools','C2','WARC001'),('DNG004','Cooking Essentials','C2','WARA003'),('ELC001','Smartphones','C1','WARC001'),('ELC002','Tablets','C1','WARB002'),('ELC003','Laptop','C1','WARC002'),('ELC004','LED Television','C1','WARA001'),('ELC005','Speaker , Woofer & MP3 player','C1','WARA001'),('FW001','Men Footwear','B4','WARC001'),('FW002','Women Footwear','B4','WARB001'),('FW003','Kids Footwear','B4','WARA002'),('GRO001','Fruits & Vegetables','A1','WARA001'),('GRO002','Spices','A1','WARB001'),('GRO003','Dry Fruits','A1','WARC003'),('GRO004','Rice & Pulses','A1','WARC002'),('GRO005','Oils','A1','WARB001'),('KW001','Tops & Tees','B3','WARC003'),('KW002','Baby Jeans','B3','WARB002'),('KW003','Kids Ethnic Wear','B3','WARC002'),('MF001','Men Shirts','B1','WARA003'),('MF002','Men Trousers','B1','WARC002'),('MF003','Men Innerwear','B1','WARB001'),('STN001','Office Supplies','C3','WARA002'),('STN002','Notebooks, Writing Pads & Diaries','C3','WARA003'),('STN003','Art & Craft Supplies','C3','WARB001'),('STN004','Pens, Pencils & Writing Supplies','C3','WARC001'),('WF001','Women Tops','B2','WARC002'),('WF002','Women Jeans','B2','WARB002'),('WF003','Women Kurti','B2','WARC001'),('WF004','Lingerie','B2','WARA002');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_phone` varchar(30) NOT NULL,
  `employee_dob` varchar(50) NOT NULL,
  `employee_email` varchar(50) NOT NULL,
  `employee_address` varchar(50) NOT NULL,
  `employee_department` varchar(50) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `employee_salary` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('EMP1001','Mahesh Jha','72015478','1978-05-01','mahesh.jha@gmail.com','R.K.Puram','giza','male','1000'),('EMP1002','Sunil Kumar','78621365','1979-01-02','sunilkumar@gmail.com','Rohini','giza','male','20000'),('EMP1003','Niranjan Choudary','83473419','1995-02-13','nkc696@gmail.com','Kailash Nagar','giza','male','3000'),('EMP1004','Pragya Richa','84561732','1991-05-05','richa.pragya@hotmail.com','R.K.Puram','giza','female','3000'),('EMP1005','Akash Agarwal','78954635','1987-05-07','coolhunk@gmail.com','Kailash Nagar','giza','male','1000'),('EMP1006','Rimmi Sinha','78958978','1985-11-09','rimi.babes@gmail.com','Rohini','ciro','female','4000'),('EMP1007','Kajal Kumari','89547231','1987-05-07','kajalk@gmail.com','Alaknanda','ciro','female','4000'),('EMP1008','Saurav Singh','95462154','1987-05-06','sauravsingh56@gmail.com','Karol Bagh','ciro','male','3000'),('EMP1009','Rajat Kapoor','84569254','1984-08-04','rajatkapoor@gmail.com','Janakpuri','ciro','male','2000'),('EMP1010','Abhishek Sharma','94785123','1975-11-25','coolabhi@gmail.com','Defence Colony','ciro','male','3000'),('EMP2001','Shashi Kapoor','98751235','1986-05-07','shashi.kap@gmail.com','Pritampura','giza','male','3000'),('EMP2002','Anjana Singh','87465354','1975-05-06','anjana0605@gmail.com','Rohini','giza','female','2000'),('EMP2003','Degangna Suryavanshi','85219932','1990-02-14','surya.deganga@hotmail.com','Hauz Khas','giza','female','5000'),('EMP2004','Mahima Arora','94620856','1993-01-15','mahima.arora93@gmail.com','Pragati Maidan','giza','female','2000'),('EMP2005','Siddharth Shrivastav','85473215','1990-06-09','sid.shri@gmail.com','Pragati Maidan','giza','male','2000'),('EMP2006','Yash Kumar','84652179','1988-08-15','yash.singh@gmail.com','Dwarka','giza','male','3000');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_no` varchar(20) NOT NULL,
  `inventory_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inventory_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('WARA001','AWARE'),('WARA002','BWAR'),('WARA003','CWAR'),('WARB001','DWAR'),('WARB002','EWAR'),('WARC001','FWAR'),('WARC002','GWAR'),('WARC003','HWAR');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetails` (
  `inv_id` varchar(20) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `inv_date` varchar(50) NOT NULL,
  `cashier_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`inv_id`),
  KEY `cashier_id` (`cashier_id`),
  CONSTRAINT `invoicedetails_ibfk_1` FOREIGN KEY (`cashier_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` VALUES ('AAA001','5000.223','2017-04-01','EMP2001'),('AAA002','455000.11','2017-04-01','EMP2003'),('AAA003','9865.22','2017-04-01','EMP2004'),('AAB001','8000.25','2015-03-05','EMP2002'),('AAB002','56666.22','2014-03-05','EMP2005'),('AAC001','9999.88','2017-02-15','EMP2005'),('AAC002','7852.88','2017-02-15','EMP2005'),('AAD001','400.88','2017-01-15','EMP2002'),('AAD002','52224.88','2017-01-15','EMP2001'),('AAD003','6655.88','2017-01-15','EMP2004'),('AAE001','488.88','2016-12-30','EMP2003'),('AAE002','300.88','2016-12-30','EMP2002'),('AAF001','400.88','2015-01-15','EMP2002'),('AAF002','52224.88','2015-01-15','EMP2001'),('AAG001','488.88','2016-03-30','EMP2003'),('AAG002','3000.88','2016-04-30','EMP2002'),('AAG003','6655.88','2016-01-15','EMP2004'),('AAH001','7889.42','2014-02-15','EMP2006'),('AAI001','6000.223','2017-05-01','EMP2001'),('AAI002','495000.11','2017-04-29','EMP2003'),('AAJ001','800.25','2015-02-05','EMP2002'),('AAJ002','5666.22','2014-07-07','EMP2005'),('AAJ003','19865.22','2017-04-12','EMP2004'),('AAK001','78289.42','2014-02-12','EMP2006'),('AAK002','999.88','2016-06-15','EMP2005'),('AAK003','4000.88','2017-01-15','EMP2006'),('AAL002','23224.88','2016-02-15','EMP2001'),('AAL003','6655.88','2017-01-12','EMP2004'),('AAM001','4880.88','2016-11-30','EMP2001'),('AAM002','300.88','2016-11-30','EMP2002'),('AAN001','40030.88','2015-07-15','EMP2002'),('AAN002','5222.88','2014-01-15','EMP2001'),('AAN003','66555.88','2016-01-15','EMP2004'),('AAP001','4880.88','2015-04-30','EMP2003'),('AAP002','300.88','2016-04-28','EMP2002');
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `cost_price` varchar(40) NOT NULL,
  `weight` varchar(50) NOT NULL,
  `selling_price` varchar(40) NOT NULL,
  `category_id` varchar(6) NOT NULL,
  `store_block` varchar(40) NOT NULL,
  `inventory_block` varchar(50) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('PI10001','Apple','CASCADIAN FARM','270','1kg','300','GRO001','500','300'),('PI10002','Banana','HARVEST FARM','36','1kg','40','GRO001','200','100'),('PI10003','Orange','365 ORGANIC','180','1kg','200','GRO001','300','200'),('PI10004','Brinjal','MARKET SIDE','36','1kg','40','GRO001','100','50'),('PI10005','Potato','MARKET SIDE','18','1kg','20','GRO001','100','50'),('PI10011','turmeric','EVEREST','45','0.05kg','50','GRO002','100','200'),('PI10012','chilli powder','EVEREST','36','0.05kg','40','GRO002','100','200'),('PI10013','Salt','TATA','18','1 kg','20','GRO002','200','100'),('PI10014','Chicken Masala','EVEREST','36','0.1kg','40','GRO002','100','150'),('PI10021','walnut','sunsweet','450','0.25kg','500','GRO003','100','200'),('PI10022','cashew','Tulsi','360','0.25kg','400','GRO003','100','200'),('PI10023','apricot','delicious','180','0.5kg','200','GRO003','200','100'),('PI10024','coconut','balaji','36','0.25kg','40','GRO003','100','150'),('PI10031','rice','India Gate','90','1kg','100','GRO004','200','300'),('PI10032','brown rice','fabindia','72','1kg','80','GRO004','300','200'),('PI10033','wheat','aashirwad','27','1kg','30','GRO004','400','200'),('PI10034','Urad daal','balaji','108','1kg','120','GRO004','300','250'),('PI10041','soyabean oil','fortune','90','1kg','100','GRO005','100','100'),('PI10042','canola oil','saffola','135','1kg','150','GRO005','50','100'),('PI10043','mustard oil','nature fresh','117','1kg','130','GRO005','200','100'),('PI10044','sunflower oil','nutrela','108','1kg','120','GRO005','100','110'),('PI10081','body soap','cinthol','36','0.05kg','40','DN001','200','100'),('PI10082','cloth soap','rin','18','0.05kg','20','DN001','300','100'),('PI10083','detergent','surf excel','117','0.5kg','130','DN001','100','100'),('PI10084','floor cleaner','lizol','54','1kg','60','DN001','70','50'),('PI10092','coffee','nescafe','126','0.05kg','140','DN002','350','100'),('PI10093','Cappuccino','Bru','117','0.5kg','130','DN002','100','100'),('PI10094','leaf-tea','lipton','54','0.05kg','60','DN002','200','160'),('PI10101','perfume','adidas','360','0.15kg','400','DN003','200','100'),('PI10102','deodrant','axe','126','0.15kg','140','DN003','350','100'),('PI10103','room freshner','odonil','117','0.15kg','130','DN003','100','100'),('PI10111','shirt','mufti','1260','1','1400','MF001','200','100'),('PI10112','half sleeve','lee','1170','1','1300','MF001','350','100'),('PI10113','t-shirt','jack and jones','1080','1','1200','MF001','100','100'),('PI10121','jeans','mufti','1260','1','1400','MF002','200','100'),('PI10122','trousers','lee','1170','1','1300','MF002','350','100'),('PI10123','formal','blackberry','1080','1','1200','MF002','100','100'),('PI10131','banyan','rupa frontline','126','1','140','MF003','60','100'),('PI10132','underwear','jockey','225','1','250','MF003','50','100'),('PI10133','handkerchief','blackberry','90','1','100','MF003','50','100'),('PI10134','socks','jockey','90','1','100','MF003','50','100'),('PI10141','full sleeve top','lee','1260','1','1400','WF001','60','100'),('PI10142','half sleeve top','lee cooper','540','1','600','WF001','50','100'),('PI10143','sleeveless','jockey','990','1','1100','WF001','50','100'),('PI10144','formal','diva','990','1','1100','WF001','50','100'),('PI10151','jeans','mufti','1260','1','1400','WF002','200','100'),('PI10152','trousers','lee','1170','1','1300','WF002','350','100'),('PI10153','formal','karisma','1080','1','1200','WF002','100','100'),('PI10161','banyan','amul','126','1','140','WF004','60','100'),('PI10162','underwear','jockey','225','1','250','WF004','50','100'),('PI10163','handkerchief','blackberry','90','1','100','WF004','50','100'),('PI10164','socks','jockey','90','1','100','WF004','50','100'),('PI10165','BRA','haynes','180','1','200','WF004','50','100'),('PI10171','top','lilliput','360','1','400','KW001','80','100'),('PI10172','lower','champion','270','1','300','KW001','80','100'),('PI10173','combo','lilliput','810','1','900','KW001','80','100'),('PI10181','half jeans','lilliput','450','1','500','KW002','60','100'),('PI10182','full jeans','kidzee','720','1','800','KW002','70','100'),('PI10183','trouser','lilliput','810','1','900','KW002','90','100'),('PI10191','Kurata-Payzama','Bad-boys','900','1','1000','KW003','70','100'),('PI10192','Top-Skirt','Biba','540','1','600','KW003','40','100'),('PI10193','Sherwani','Gkidz','720','1','800','KW003','60','100'),('PI10194','Lehenga-choli','Biba','1350','1','1500','KW003','90','100'),('PI10201','Sneakers','Levis','1350','1','1500','FW001','70','100'),('PI10202','Loafers','Nike','1125','1','1500','FW001','60','100'),('PI10203','Casual Shoes','Reebok','1800','1','2000','FW001','50','100'),('PI10204','Formal Shoes','Columbus','2700','1','3000','FW001','90','100'),('PI10205','Flip-flops','Puma','225','1','300','FW001','30','100'),('PI10206','Floaters','Adidas','900','1','1200','FW001','40','100'),('PI10211','Wedges','Lavie','3150','1','3500','FW002','70','100'),('PI10212','Heels','Catwalk','2250','1','2500','FW002','90','100'),('PI10213','Casual Shoes','Reebok','1620','1','1800','FW002','50','100'),('PI10214','Ballerians','Bata','1350','1','1500','FW002','80','100'),('PI10215','Flip-flops','Action','150','1','200','FW002','30','100'),('PI10216','Floaters','Sparx','900','1','1200','FW002','40','100'),('PI10221','Sandals','Puma','720','1','800','FW003','70','100'),('PI10222','Shoes','Action-campus','900','1','1000','FW003','90','100'),('PI10223','Flip-flops','Bata','180','1','200','FW003','50','100'),('PI10301','Digital','Fastrack','4250','1','5000','CLK001','80','100'),('PI10302','Analogue','Sonata','2550','1','3000','CLK001','70','100'),('PI10303','Analogue','HMT','1350','1','1500','CLK001','80','100'),('PI10304','Analogue','Titan','3400','1','4000','CLK001','60','100'),('PI10305','Digital','Timex','1500','1','2000','CLK001','50','100'),('PI10311','Digital','Reebok','2250','1','2500','CLK002','90','100'),('PI10312','Analogue','Maxima','1800','1','2000','CLK002','50','100'),('PI10313','Analogue','Titan','3750','1','5000','CLK002','80','100'),('PI10314','Analogue','Sonata','1530','1','1800','CLK002','30','100'),('PI10321','Digital','Zoop','1080','1','1200','CLK003','90','100'),('PI10322','Analogue','Sonata','950','1','1000','CLK003','50','100'),('PI10323','Digital','Fastrack','1350','1','1500','CLK003','80','100'),('PI10401','Android phone','samsung','14450','1','15000','ELC001','20','20'),('PI10402','windows','microsoft','7720','1','8000','ELC001','20','10'),('PI10403','IPHONE','apple','38810','1','40000','ELC001','10','05'),('PI10404','Android phone','samsung','4450','1','5000','ELC001','20','20'),('PI10411','Android tablet','MI','12550','1','13000','ELC002','20','20'),('PI10412','Android tablet','micromax','6450','1','7000','ELC002','20','20'),('PI10413','ipad','apple','48810','1','50000','ELC002','10','05'),('PI10414','windows','microsoft','9720','1','10000','ELC002','20','10'),('PI10421','windows based','Acer','42550','1','43000','ELC003','20','20'),('PI10422','windows based','Dell','36450','1','37000','ELC003','20','20'),('PI10423','macbook','apple','47810','1','50000','ELC003','10','05'),('PI10424','windows based','lenovo','29720','1','30000','ELC003','20','10'),('PI10431','40 inch','sony','32550','1','33100','ELC004','20','20'),('PI10432','32 inch','panasonic','26450','1','27200','ELC004','20','20'),('PI10433','32 inch','samsung','38810','1','42300','ELC004','10','05'),('PI10434','premium tv','vu','39720','1','45000','ELC004','20','10'),('PI10441','home theatre','sony','22550','1','23100','ELC005','20','20'),('PI10442','bluetooth speaker','philips','1450','1','1300','ELC005','20','20'),('PI10443','ipods','apple','18810','1','19300','ELC005','10','05'),('PI10444','soundbars','philips','19720','1','21000','ELC005','20','10'),('PI10501','cutlery','uberlyfe','550','1','600','DNG001','200','200'),('PI10502','glasses','godskitchen','450','1','500','DNG001','200','120'),('PI10503','dishware','planet','720','1','800','DNG001','200','100'),('PI10504','trays','woogor','310','1','400','DNG001','100','305'),('PI10511','Jars & Containers ','cello','750','1','800','DNG002','120','52'),('PI10512','lunch boxes','blossoms','250','1','300','DNG002','120','20'),('PI10513','kitchen racks','generic','1020','1','1100','DNG002','220','110'),('PI10514','produce storage bags','bagathon india','610','1','700','DNG002','100','105'),('PI10521','juicer','bajaj','1750','1','1850','DNG003','30','12'),('PI10522','grinder','maharaj','2250','1','2350','DNG003','20','10'),('PI10523','vegetable cutter','prestige','1120','1','1200','DNG003','40','10'),('PI10524','fruit chooper','ganesh','610','1','700','DNG003','40','15'),('PI10531','cooking induction','prystine','1450','1','1550','DNG004','30','12'),('PI10532','presssure cooker','prestige','1250','1','1350','DNG004','20','10'),('PI10533','cooking pots','king','420','1','500','DNG004','40','10'),('PI10534','casserole set','pristine','1010','1','1100','DNG004','40','15'),('PI10601','Highlighter','Faber-castle','45','1','50','STN001','90','100'),('PI10602','Stapler','Kangaroo','95','1','100','STN001','50','100'),('PI10603','Pen-stand','GAC','190','1','200','STN001','80','100'),('PI10604','A4-paper','JK-Copier','570','1','600','STN001','30','100'),('PI10611','Long-Book','Camlin','90','1','100','STN002','20','100'),('PI10612','Notebook','Classmate','45','1','50','STN002','50','100'),('PI10613','Writing-board','FfUuNn','108','1','120','STN002','70','100'),('PI10614','Scrapbook','Navneet','57','1','60','STN002','80','100'),('PI10621','Wax crayons','Camlin','18','1','20','STN003','20','100'),('PI10622','Fevicol','Pidilite','180','1','200','STN003','50','100'),('PI10623','Poster-colors','Camel','135','1','150','STN003','70','100'),('PI10624','Paper-cutter','Faber-castle','57','1','60','STN003','80','100'),('PI10631','Gel-pen','Cello','90','10','100','STN004','20','100'),('PI10632','Ballpoint-pen','Flair','45','1','50','STN004','50','100'),('PI10633','Pencils','FfUuNn','45','1','50','STN004','70','100'),('PI10634','Eraser','Navneet','45','1','50','STN004','80','100');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-03 11:18:11
