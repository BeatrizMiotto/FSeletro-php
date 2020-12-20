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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `categorias` varchar(45) NOT NULL,
  `descricao` varchar(150) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagens` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idprodutos`),
  UNIQUE KEY `imagens_UNIQUE` (`imagens`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'geladeira','geladeira frost free brastemp side inverse 540 litros',6389.00,5019.00,'imagens/brastemp%20side.jpg'),
(2,'geladeira','Geladeira Frost Free Brastemp Branca 375 Litros',2068.60,1910.90,'imagens/branstemp%20branca.webp'),
(3,'geladeira','Geladeira Frost Free Consul Prata 340 Litros',2199.90,2069.00,'imagens/geladeira%20consul.webp'),
(4,'fogao','Fogão 4 Bocas Consul Inox com Mesa de Vidro',1209.90,1129.00,'imagens/fogao%20consul.jpeg'),
(5,'fogao','Fogão de Piso 4 Bocas Atlas Monaco com Acendimento Automático',609.90,519.70,'imagens/atlas%20fogao.jpg'),
(6,'microondas','Micro-ondas Consul 32 Litros Inox 220V',580.90,409.88,'imagens/micro%20consul%20inox.webp'),
(7,'microondas','Micro-ondas 25L Espelhado Philco 220V',508.70,464.53,'imagens/microondas%20philco.webp'),
(8,'microondas','Forno de Micro-ondas Eletrolux 20 Litros Branco 220V',459.90,436.05,'imagens/micro%20eletrolux.jpeg'),
(9,'lavalouca','Lava-Louças Inox com 10 Serviços, 06 Programas de lavagem e Painel Blue Touch',3599.00,2799.90,'imagens/lava%20eletro.webp'),
(10,'lavalouca','Lava-Louças Compacta 8 Serviços branca 127V Brastemp',1970.50,1730.61,'imagens/lava%20louca%20brastemp.jpeg'),
(11,'lavaroupa','Lavadora de Roupas Brastemp 11kg com Turbo Performance Branca',1699.00,1214.10,'imagens/lavaroupasbrastemp.jpeg'),
(12,'lavaroupa','Lavadora de Roupas Philco Inverter 12kg',2399.90,2399.90,'imagens/lavaroupasphilco.jpeg');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-20 23:40:53
