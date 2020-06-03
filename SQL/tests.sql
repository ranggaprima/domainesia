/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.11-MariaDB : Database - tests
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tests` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tests`;

/*Table structure for table `people` */

DROP TABLE IF EXISTS `people`;

CREATE TABLE `people` (
  `id` int(11) NOT NULL,
  `people_name` varchar(250) NOT NULL,
  `people_address` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `people` */

insert  into `people`(`id`,`people_name`,`people_address`) values 
(1,'Willie Whited','2524 White River Way'),
(2,'Lisa Squires','Fehringer Strasse 27'),
(3,'Sean Patterson','Rue des Ecoles 426'),
(4,'Anna Scott','Rua C 66, 1384'),
(5,'Desmond Peterson','1414 Grey Rd'),
(6,'Samuel Hogan','13, Avenue De Marlioz'),
(7,'John Miller','Pappelallee 21'),
(8,'Rose Joyce','Via Galileo Ferraris, 38'),
(9,'Phillip Tilton','Huibertplaat 120'),
(10,'Anita McGurk','128 St Pauls Court Cloverlea'),
(11,'John Morgan','286 Stanza Bopape St'),
(12,'Margaret Teets','Grossmatt 62'),
(13,'Dara Adams','21 Fraserburgh Rd'),
(14,'Bennie J. Martin','34 Masthead Drive'),
(15,'Gladys Ashford','Holzstrasse 14'),
(16,'William Lavallie','Heirstraat 31'),
(17,'Antonio Wayman','2331 Carlson Road'),
(18,'Carol Selders','Ysitie 44'),
(19,'David Sato','30, Rue de la Pompe'),
(20,'Amy Vanmatre','Friedrichstrasse 4'),
(21,'Kenny Todd','Corso Porta Nuova, 10'),
(22,'Marla Alvarez','Tielstraat 17'),
(23,'George Stanley','95 Belle Verde Drive Rothesay Bay'),
(24,'David Bennett','Torvbakkgata 219'),
(25,'Donald Garrett','86 St Denys Road'),
(26,'Horace Morgan','3435 Jarvis Street');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
