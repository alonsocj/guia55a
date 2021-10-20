# SQL-Front 5.1  (Build 4.16)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost:3308    Database: grupo05
# ------------------------------------------------------
# Server version 5.5.5-10.1.13-MariaDB

DROP DATABASE IF EXISTS `grupo05`;
CREATE DATABASE `grupo05` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `grupo05`;

#
# Source for table libros
#

DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `editorial` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table libros
#

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'9789560014122','Cuerpos enigmaticos Variaciones','Le Breton David','Canoa Editores');
INSERT INTO `libros` VALUES (2,'9789569501210','Ruina','Opazo Hernandez Jonnathan','Canoa Editores');
INSERT INTO `libros` VALUES (3,'9789569967078','Una vida salvaje y desobediente','David Thoreau Henry','Canoa Editores');
INSERT INTO `libros` VALUES (4,'9789992351031','Magica tribu','Claribel Alegría','Índole Editores');
INSERT INTO `libros` VALUES (5,'9789992351154','Tal vez salo es tarde','Sandra Regina Aguilar','Índole Editores');
INSERT INTO `libros` VALUES (6,'9789992351130','Los pasillos imaginarios','Carlos Clara','Índole Editores');
INSERT INTO `libros` VALUES (7,'9789992380604','Devocionario','David Escobar Galindo','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (8,'9789992380659','Cantata de mayo','Rolando Elias','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (9,'9789992380673','Tomas Regalado el ultimo caudillo de Cuscatlan','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (10,'9789992380680','Concierto de grillos y libelulas','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (11,'9789992380697','Aqui mi tierra','Hugo Lindo','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (12,'9789992386620','Rio de luz','Maricella Avila','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (13,'9789992380635','Los peces nacen en los arboles','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (14,'9789992386637','Asi la vida','Albalyra de Linares','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (15,'9789992386651','Antonio Machado','Antonio Machado','Canoa Editores');
INSERT INTO `libros` VALUES (16,'9789992386668','El gato garabato y los ratones bon-bones','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (17,'9789992386675','Las aventuras de Flor la hormiga','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (18,'9789992388709','La nave que falta','Alberto Lopez','Fundación Alkimia');
INSERT INTO `libros` VALUES (19,'9789992388716','Claderno solar','Nelson Alas','Fundación Alkimia');
INSERT INTO `libros` VALUES (20,'9789992390603','Suchitoto sus raices','Lucia Teresa de Jesús de Oliva','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (21,'9789992390610','El girasol roto','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (22,'9789992390634','El rostro en el espejo','Carmen Gonzales Huguet','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (23,'9789992390641','La zorrita Rita y la rana Lulu','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (24,'9789992390672','El grillo Don Antonio El renacuajo paseador','Claudia Lars','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (25,'9789992390689','El bosque color y cantos','Carmen Gonzales Huguet','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (26,'9789992396421','Por un roce de piel','Aida Flores Escalante','Editorial Rubén H. Dimas');
INSERT INTO `libros` VALUES (27,'9789996191008','La cultura del diablo','Jose Humberto Velasquez','Editorial Arcoiris');
INSERT INTO `libros` VALUES (28,'9789996191015','Mas alla del horizonte','Julio Leiva','Editorial Arcoiris');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `nivel` int(2) unsigned DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Dumping data for table usuarios
#

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Anonimo','contraseña123','Miguel',0);
INSERT INTO `usuarios` VALUES (3,'Digitador','contraseña123','Diego',1);
INSERT INTO `usuarios` VALUES (6,'Mantenimiento','contraseña123','Gustavo',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
