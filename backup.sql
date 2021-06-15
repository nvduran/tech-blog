-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `article` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Donec posuere metus vitae ipsum.','https://buzzfeed.com/in/imperdiet/et/commodo/vulputate.png',10,'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv','2021-06-14 23:57:23','2021-06-14 23:57:23'),(2,'Morbi non quam nec dui luctus rutrum.','https://nasa.gov/donec.json',8,'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv','2021-06-14 23:57:23','2021-06-14 23:57:23'),(3,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','https://europa.eu/parturient/montes/nascetur/ridiculus/mus/etiam/vel.aspx',1,'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv','2021-06-14 23:57:23','2021-06-14 23:57:23'),(4,'Nunc purus.','http://desdev.cn/enim/blandit/mi.jpg',4,'asdfasdfasdfasdfasfgqwerqwerqwerqwer axczxcvzxcvzxcvzxcvzxcvzxcvzxcv','2021-06-14 23:57:23','2021-06-14 23:57:23');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('DX0dpyeBYsgrPGX8GtZe8InhCuU2iiNe','2021-06-16 00:32:46','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"user_id\":11,\"username\":\"asd123\",\"loggedIn\":true}','2021-06-14 23:33:53','2021-06-15 00:32:46');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'iboddam2','cstoneman2@last.fm','$2b$10$co6ipCJU0v/m2XfkgNgUUOW8eUL/4Rg6S3WSw4bOb1rEZVR4L.QsC'),(2,'jwilloughway1','rmebes1@sogou.com','$2b$10$3F5KKGzdeCln.ChAb3Xz.uTIY427H2TfMyaTpmyeOqp6vkZp.Piqi'),(3,'dstanmer3','ihellier3@goo.ne.jp','$2b$10$8j8oXo6Acij2dZUx/5nHOOn94A6mfXOZL5EaZ34BQZlTVKcMtXkvS'),(4,'alesmonde0','nwestnedge0@cbc.ca','$2b$10$f.a2jR0raqJftmB4.0JziO.5l3fz6b36EKBijYk5E1X1EzqKjqls2'),(5,'mpergens6','hnapleton6@feedburner.com','$2b$10$Y6mmJbgfW3X/g4YYy0XwAexuMyI3OlE4FGQGjSpnNoEeI70MCqjMS'),(6,'tpenniell7','kperigo7@china.com.cn','$2b$10$I.yeL1GYE8t6Md.Zqn1.XO1bhY5Kjy3N/P43Alau/YhIx7MGEhTOW'),(7,'djiri4','gmidgley4@weather.com','$2b$10$UPF6UJeH6.6168IvmtaB/unK/Er3An0YjaB7l1wv7iDWB3JpZ/rYG'),(8,'msprague5','larnout5@imdb.com','$2b$10$nea6DH4kxRGpqu4iMzjyWeKRH0doJYJzJdLuIbiS9p5UeApmabfDG'),(9,'msabbins8','lmongain8@google.ru','$2b$10$QYvJT6HqNCihfJaIjcGWZuWRJfSDSzuLJt/wBzNewWVu8NKQKcRUS'),(10,'jmacarthur9','bsteen9@epa.gov','$2b$10$OYFQjFrUc8C9io/v/AbQeeIY6ovPLspTCFO94A28xlcoUXWb7cmx.'),(11,'asd123','nvduran@gmail.com','$2b$10$FQdJlJxNxJidJL6N7lko3uKQwdzJ40rKi4yeJvGIC605MU24y6DDm');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vote_post_id_user_id_unique` (`user_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 20:01:29
