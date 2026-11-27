-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vacation
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `vacations`
--

DROP TABLE IF EXISTS `vacations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `destination` varchar(45) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `price` int NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacations`
--

LOCK TABLES `vacations` WRITE;
/*!40000 ALTER TABLE `vacations` DISABLE KEYS */;
INSERT INTO `vacations` VALUES (48,'China ','Description: The Great Wall begins in the east at Shanhaiguan in Hebei province and ends at Jiayuguan in Gansu province to the west. Its main body consists of walls, horse tracks, watch towers, and shelters on the wall, and includes fortresses and passes along the Wall','2023-08-24','2023-08-31',423,'1690836565933.jpg'),(49,'greece',' Greece has the longest coastline in Europe and is the southernmost country in Europe. The mainland has rugged mountains, forests, and lakes, but the country is well known for the thousands of islands dotting the blue Aegean Sea to the east, the Mediterranean Sea to the south, and the Ionian Sea to the west','2023-07-31','2023-08-31',321,'1690836591358.jpg'),(50,'budapest','newDescription: budapest, city, capital of Hungary, and seat of Pest megye .','2023-08-31','2023-09-08',323,'1690836681738.jpg'),(51,'italy','italy is a boot-shaped peninsula that juts out of southern Europe into the Adriatic Sea, Tyrrhenian Sea, Mediterranean Sea, and other waters. Its location has played an important role in its history. The sea surrounds Italy, and mountains crisscross the interior, dividing it into regions','2023-08-23','2023-09-05',2312,'1690836767090.jpg'),(52,'france','Description: France is one of the oldest nations on Earth and the most ethnically diverse country in Europe. These deep and broad influences have made France a world leader throughout history in nearly all aspects of culture, including cuisine, wine-making, politics, philosophy, music, art, film, fashion, literature, and sports','2023-08-29','2023-08-31',5555,'1690836802721.jpg'),(53,'tokyo','Tokyo is the administrative, cultural, financial, commercial, and educational centre of Japan and the focus of an extensive urban complex that includes Kawasaki and Yokohama. Attractions include the Imperial Palace, encircled by stone-walled moats and broad gardens, and numerous temples and shrines','2023-08-03','2023-08-30',2321,'1690836829231.jpg'),(54,'egypt','Egypt is considered to be a regional power in North Africa, the Middle East and the Muslim world, and a middle power worldwide. It is a developing country having a diversified economy, which is the third-largest in Africa, the 41st-largest economy by nominal GDP, and the 20th-largest globally by PPP','2023-08-17','2023-08-30',3231,'1690836850851.jpg'),(55,'dubai','A huge range of great activities and entertainment is provided for all ages. Dubai has its sights set on becoming one of the most important tourist destinations in the world and therefore is constantly expanding and developing its oasis of civilization in the middle of the desert.','2023-08-30','2023-10-24',3213,'1690836927115.jpg'),(56,'new york','Description: New York is composed of five boroughs – Brooklyn, the Bronx, Manhattan, Queens and Staten Island - is home to 8.4 million people who speak more than 200 languages, hail from every corner of the globe, and, together, are the heart and soul of the most dynamic city in the world','2023-08-30','2023-09-22',1245,'1690883507149.jpg'),(57,'rome','The Colosseum in Rome, Italy, is a large amphitheater that hosted events like gladiatorial games. Design Pics Inc. The Colosseum, also named the Flavian Amphitheater, is a large amphitheater in Rome. It was built during the reign of the Flavian emperors as a gift to the Roman people.','2023-08-16','2023-08-24',214,'1690883680583.jpg'),(58,'denmark','Description: Denmark is a Scandinavian country in Northern Europe bordering the Baltic and the North Sea. The country consists of a large peninsula and many islands referred to as the Danish Archipelago. Neighboring countries include Germany, Norway, and Sweden','2023-08-01','2023-08-17',1278,'1690883778588.jpg'),(59,'London',' Big Ben is a tower clock known for its accuracy and for its massive hour bell. Strictly speaking, the name refers only to the bell, which weighs 15.1 tons (13.7 metric tons), but it is commonly associated with the whole clock tower at the northern end of the Houses of Parliament, in the London borough of Westminster.','2023-11-16','2023-11-18',990,'1690883950006.jpg');
/*!40000 ALTER TABLE `vacations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-01 13:02:39
