-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fseletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `telefone` int NOT NULL,
  `produto` varchar(300) NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `quantidade` int NOT NULL,
  `precototal` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idpedidos`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Regina Santos','Rua das Flores, 40',5609,'Geladeira Frost Free Brastemp Side Inverse 540 Litros',5019.00,1,5019.00),(2,'João Nunes','Rua Severino Costa, 05',7278,'Micro-ondas Consul 32 Litros Inox 220V/Fogão 4 Bocas Consul Inox com Mesa de Vid',409.88,2,1538.88),(3,'Jasmine Kim','Av. Ataliba, 104',4528,'Lavadora de Roupas Philco Inverter 12kg',2179.90,1,2179.90),(4,'Ana Rita Silva','Rua São Pedro, 90',2398,'Fogão de Piso 4 Bocas Atlas Monaco/Lavadora de Roupas Brastemp 11kg com Turbo Pe',519.70,2,1733.80),(5,'Mariana Andrade','Rua Prado, 23',6509,'Forno de Micro-ondas Eletrolux 20 Litros Branco 220V',436.05,1,436.05),(6,'Juliana Melo','Av. Penha Brasil, 249',9832,'Lava-Louças Inox com 10 Serviços, 06 Programas de lavagem e Painel Blue Touch',2799.90,1,2799.90),(7,'Rafael Dias','Av. Itaberaba, 780',4309,'Lava-Louças Compacta 8 Serviços branca 127V Brastemp',1730.61,1,1730.61),(8,'Sofia Marques','Rua João Crudo, 78',4509,'Geladeira Frost Free Consul Prata 340 Litros',2069.00,1,2069.00),(9,'Roberto Silva','Rua Altino, 03',5429,'Geladeira Frost Free Brastemp Branca 375 Litros',1910.90,1,1910.90),(10,'Vitor Santos','Rua Expedito, 50',7852,'Micro-ondas 25L Espelhado Philco 220V',464.53,1,464.53);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-26 22:05:24
