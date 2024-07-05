CREATE DATABASE  IF NOT EXISTS `videowall` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `videowall`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: videowall
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Endereco` varchar(70) DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idContrato` (`idContrato`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','Rua A, 123',1),(2,'Maria Santos','Av. B, 456',2),(3,'Carlos Oliveira','Rua C, 789',3),(4,'Ana Pereira','Av. D, 321',4),(5,'Pedro Souza','Rua E, 654',5),(6,'Luiza Ferreira','Av. F, 987',6),(7,'Fernando Martins','Rua G, 135',7),(8,'Mariana Costa','Av. H, 246',8),(9,'Rafaela Almeida','Rua I, 579',9),(10,'Bruno Santos','Av. J, 864',10);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteudo`
--

DROP TABLE IF EXISTS `conteudo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteudo` (
  `idConteudo` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) DEFAULT NULL,
  `Link` varchar(30) DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idConteudo`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `conteudo_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteudo`
--

LOCK TABLES `conteudo` WRITE;
/*!40000 ALTER TABLE `conteudo` DISABLE KEYS */;
INSERT INTO `conteudo` VALUES (1,'Texto','https://example.com/texto1',1),(2,'Imagem','https://example.com/imagem2',2),(3,'Vídeo','https://example.com/video3',3),(4,'Texto','https://example.com/texto4',4),(5,'Imagem','https://example.com/imagem5',5),(6,'Vídeo','https://example.com/video6',6),(7,'Texto','https://example.com/texto7',7),(8,'Imagem','https://example.com/imagem8',8),(9,'Vídeo','https://example.com/video9',9),(10,'Texto','https://example.com/texto10',10);
/*!40000 ALTER TABLE `conteudo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `idContrato` int NOT NULL AUTO_INCREMENT,
  `Inicio` date DEFAULT NULL,
  `Fim` date DEFAULT NULL,
  `ValorTotal` float DEFAULT NULL,
  `MetodoPagamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES (1,'2024-01-15','2024-07-15',1500,'Cartão de Crédito'),(2,'2024-10-25','2025-04-25',2500,'Transferência'),(3,'2024-03-10','2024-09-10',1800,'Dinheiro'),(4,'2024-04-05','2024-10-05',2200,'Boleto Bancário'),(5,'2024-05-20','2024-11-20',1700,'Cartão de Débito'),(6,'2024-06-12','2024-12-12',1900,'Transferência'),(7,'2024-07-03','2025-01-03',2100,'Boleto Bancário'),(8,'2024-08-18','2025-02-18',1600,'Dinheiro'),(9,'2024-09-09','2025-03-09',2300,'Cartão de Crédito'),(10,'2024-10-25','2025-04-25',2500,'Transferência');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curadores`
--

DROP TABLE IF EXISTS `curadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curadores` (
  `idCurador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Cpf` int DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCurador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curadores`
--

LOCK TABLES `curadores` WRITE;
/*!40000 ALTER TABLE `curadores` DISABLE KEYS */;
INSERT INTO `curadores` VALUES (1,'Ana Oliveira',123456700,'Rua A, 123'),(2,'Carlos Silva',987652100,'Av. B, 456'),(3,'Mariana Santos',456782300,'Rua C, 789'),(4,'Pedro Almeida',789145600,'Av. D, 321'),(5,'Juliana Costa',325498700,'Rua E, 654'),(6,'Lucas Pereira',498732100,'Av. F, 987'),(7,'Camila Souza',932165400,'Rua G, 135'),(8,'Bruno Martins',432198700,'Av. H, 246'),(9,'Carla Oliveira',398765400,'Rua I, 579'),(10,'Gustavo Silva',985432100,'Av. J, 864');
/*!40000 ALTER TABLE `curadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curadoria`
--

DROP TABLE IF EXISTS `curadoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curadoria` (
  `idCuradoria` int NOT NULL AUTO_INCREMENT,
  `Situacao` varchar(15) DEFAULT NULL,
  `idConteudo` int DEFAULT NULL,
  `idCurador` int DEFAULT NULL,
  PRIMARY KEY (`idCuradoria`),
  KEY `idConteudo` (`idConteudo`),
  KEY `idCurador` (`idCurador`),
  CONSTRAINT `curadoria_ibfk_1` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `curadoria_ibfk_2` FOREIGN KEY (`idCurador`) REFERENCES `curadores` (`idCurador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curadoria`
--

LOCK TABLES `curadoria` WRITE;
/*!40000 ALTER TABLE `curadoria` DISABLE KEYS */;
INSERT INTO `curadoria` VALUES (1,'Aprovado',1,1),(2,'Rejeitado',2,2),(3,'Pendente',3,3),(4,'Aprovado',4,4),(5,'Rejeitado',5,5),(6,'Pendente',6,6),(7,'Aprovado',7,7),(8,'Rejeitado',8,8),(9,'Pendente',9,9),(10,'Aprovado',10,10);
/*!40000 ALTER TABLE `curadoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresapatrocinadora`
--

DROP TABLE IF EXISTS `empresapatrocinadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresapatrocinadora` (
  `idEmpresaPatrocinadora` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Ramo` varchar(20) DEFAULT NULL,
  `Cnpj` int DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  PRIMARY KEY (`idEmpresaPatrocinadora`),
  KEY `idContrato` (`idContrato`),
  CONSTRAINT `empresapatrocinadora_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresapatrocinadora`
--

LOCK TABLES `empresapatrocinadora` WRITE;
/*!40000 ALTER TABLE `empresapatrocinadora` DISABLE KEYS */;
INSERT INTO `empresapatrocinadora` VALUES (1,'Empresa A','Tecnologia',12345674,1),(2,'Empresa B','Alimentício',98769876,2),(3,'Empresa C','Automobilístico',59345678,3),(4,'Empresa D','Financeiro',34593456,4),(5,'Empresa E','Saúde',90123012,5),(6,'Empresa F','Moda',67823489,6),(7,'Empresa G','Educacional',71234567,7),(8,'Empresa H','Construção',26782345,8),(9,'Empresa I','Telecomunicações',74567890,9),(10,'Empresa J','Varejo',1234560,10);
/*!40000 ALTER TABLE `empresapatrocinadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Funcao` varchar(20) DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  `idEmpresaPatrocinadora` int DEFAULT NULL,
  `idCurador` int DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idCliente` (`idCliente`),
  KEY `idEmpresaPatrocinadora` (`idEmpresaPatrocinadora`),
  KEY `idCurador` (`idCurador`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idEmpresaPatrocinadora`) REFERENCES `empresapatrocinadora` (`idEmpresaPatrocinadora`),
  CONSTRAINT `usuario_ibfk_3` FOREIGN KEY (`idCurador`) REFERENCES `curadores` (`idCurador`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usuario1','senha1','João Silva','Analista',1,NULL,NULL),(2,'usuario2','senha2','Maria Santos','Gerente',2,NULL,NULL),(3,'usuario3','senha3','Carlos Oliveira','Analista',3,NULL,NULL),(4,'usuario4','senha4','Ana Pereira','Gerente',NULL,NULL,1),(5,'usuario5','senha5','Pedro Souza','Gerente',NULL,NULL,4),(6,'usuario6','senha6','Luiza Ferreira','Gerente',6,NULL,NULL),(7,'usuario7','senha7','Fernando Martins','Analista',7,NULL,NULL),(8,'usuario8','senha8','Mariana Costa','Curador',NULL,NULL,8),(9,'usuario9','senha9','Rafaela Almeida','Curador',NULL,NULL,9),(10,'usuario10','senha10','Bruno Santos','Curador',NULL,NULL,10);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videowall`
--

DROP TABLE IF EXISTS `videowall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videowall` (
  `idVideoWall` int NOT NULL AUTO_INCREMENT,
  `Localizacao` varchar(20) DEFAULT NULL,
  `Tela` varchar(10) DEFAULT NULL,
  `Capacidade` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  PRIMARY KEY (`idVideoWall`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `videowall_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videowall`
--

LOCK TABLES `videowall` WRITE;
/*!40000 ALTER TABLE `videowall` DISABLE KEYS */;
INSERT INTO `videowall` VALUES (1,'Sala de Reuniões','LED',20,1),(2,'Recepção','LCD',10,2),(3,'Auditório','Plasma',30,3),(4,'Sala de Espera','LED',15,4),(5,'Sala de Conferências','LCD',25,5),(6,'Cafeteria','Plasma',12,6),(7,'Área de Convivência','LED',18,7),(8,'Sala de Treinamento','LCD',22,8),(9,'Escritório Executivo','Plasma',8,9),(10,'Sala de Vendas','LED',16,10);
/*!40000 ALTER TABLE `videowall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visualizacao`
--

DROP TABLE IF EXISTS `visualizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visualizacao` (
  `idConteudo` int DEFAULT NULL,
  `idVideoWall` int DEFAULT NULL,
  `idCuradoria` int DEFAULT NULL,
  `Inicio` date DEFAULT NULL,
  `Fim` date DEFAULT NULL,
  KEY `idConteudo` (`idConteudo`),
  KEY `idVideoWall` (`idVideoWall`),
  KEY `idCuradoria` (`idCuradoria`),
  CONSTRAINT `visualizacao_ibfk_1` FOREIGN KEY (`idConteudo`) REFERENCES `conteudo` (`idConteudo`),
  CONSTRAINT `visualizacao_ibfk_2` FOREIGN KEY (`idVideoWall`) REFERENCES `videowall` (`idVideoWall`),
  CONSTRAINT `visualizacao_ibfk_3` FOREIGN KEY (`idCuradoria`) REFERENCES `curadoria` (`idCuradoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visualizacao`
--

LOCK TABLES `visualizacao` WRITE;
/*!40000 ALTER TABLE `visualizacao` DISABLE KEYS */;
INSERT INTO `visualizacao` VALUES (1,1,1,'2024-05-01','2024-05-02'),(2,2,2,'2024-05-03','2024-05-04'),(3,3,3,'2024-05-05','2024-05-06'),(4,4,4,'2024-05-07','2024-05-08'),(5,5,5,'2024-05-09','2024-05-10'),(6,6,6,'2024-05-11','2024-05-12'),(7,7,7,'2024-05-13','2024-05-14'),(8,8,8,'2024-05-15','2024-05-16'),(9,9,9,'2024-05-17','2024-05-18'),(10,10,10,'2024-05-19','2024-05-20');
/*!40000 ALTER TABLE `visualizacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-13 23:24:50
