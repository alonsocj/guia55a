DROP DATABASE IF EXISTS `test`;
CREATE DATABASE `test` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `test`;

#
# Source for table employees
#

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(4) NOT NULL DEFAULT '0',
  `first` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'nombre',
  `last` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'apellido',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9819 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

#
# Dumping data for table employees
#

INSERT INTO `employees` VALUES (100,18,'Zara','Ali');
INSERT INTO `employees` VALUES (101,25,'Mahnaz','Fatma');
INSERT INTO `employees` VALUES (102,30,'Zaid','Ali');
INSERT INTO `employees` VALUES (103,28,'Sumit','Mittal');
INSERT INTO `employees` VALUES (105,33,'Florinda','Mesa');