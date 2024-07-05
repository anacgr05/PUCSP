CREATE DATABASE  IF NOT EXISTS `videowall`;
USE `videowall`;

CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(50) DEFAULT NULL,
  `Endereco` varchar(70) DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `idContrato` (`idContrato`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) 


CREATE TABLE `conteudo` (
  `idConteudo` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) DEFAULT NULL,
  `Link` varchar(30) DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idConteudo`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `conteudo_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) 


CREATE TABLE `contrato` (
  `idContrato` int NOT NULL AUTO_INCREMENT,
  `Inicio` date DEFAULT NULL,
  `Fim` date DEFAULT NULL,
  `ValorTotal` float DEFAULT NULL,
  `MetodoPagamento` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idContrato`)
) 


CREATE TABLE `curadores` (
  `idCurador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Cpf` int DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCurador`)
) 


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
) 

CREATE TABLE `empresapatrocinadora` (
  `idEmpresaPatrocinadora` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Ramo` varchar(20) DEFAULT NULL,
  `Cnpj` int DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  PRIMARY KEY (`idEmpresaPatrocinadora`),
  KEY `idContrato` (`idContrato`),
  CONSTRAINT `empresapatrocinadora_ibfk_1` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
)


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
) 

CREATE TABLE `videowall` (
  `idVideoWall` int NOT NULL AUTO_INCREMENT,
  `Localizacao` varchar(20) DEFAULT NULL,
  `Tela` varchar(10) DEFAULT NULL,
  `Capacidade` int DEFAULT NULL,
  `idCliente` int DEFAULT NULL,
  PRIMARY KEY (`idVideoWall`),
  KEY `idCliente` (`idCliente`),
  CONSTRAINT `videowall_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) 


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
) 

