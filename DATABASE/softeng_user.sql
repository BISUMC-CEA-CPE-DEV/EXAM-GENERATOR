/*
SQLyog Ultimate v9.62 
MySQL - 5.5.54 : Database - softeng_user
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`softeng_user` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `softeng_user`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `username` tinytext NOT NULL,
  `passcode` tinytext NOT NULL,
  `fullname` tinytext NOT NULL,
  `gender` tinytext NOT NULL,
  `course` tinytext NOT NULL,
  `id` tinytext NOT NULL,
  `member` tinytext NOT NULL,
  `schoolyear` tinytext,
  `semester` tinytext,
  UNIQUE KEY `fullname` (`fullname`(50)),
  UNIQUE KEY `username` (`username`(15)),
  UNIQUE KEY `passcode` (`passcode`(15)),
  UNIQUE KEY `id` (`id`(8))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`username`,`passcode`,`fullname`,`gender`,`course`,`id`,`member`,`schoolyear`,`semester`) values ('caz','zac','ZACCRIO M. GARCIA','MALE','BS CpE 4-B','186187','STUDENT','2019-2020','2nd'),('max','123','MAX ANGELO D. PERIN','MALE','BS CpE','1234','INSTRUCTOR','2019-2020','2nd');

/*Table structure for table `addsubject` */

DROP TABLE IF EXISTS `addsubject`;

CREATE TABLE `addsubject` (
  `subCode` tinytext NOT NULL,
  `subDescription` tinytext NOT NULL,
  `lec` int(4) NOT NULL,
  `lab` int(4) NOT NULL,
  `unit` int(4) NOT NULL,
  `instructor` tinytext NOT NULL,
  `schoolyear` date NOT NULL,
  `semester` tinytext NOT NULL,
  `studentName` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `addsubject` */

/*Table structure for table `createsubject` */

DROP TABLE IF EXISTS `createsubject`;

CREATE TABLE `createsubject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subCode` tinytext NOT NULL,
  `subDescription` tinytext NOT NULL,
  `lec` text NOT NULL,
  `lab` text NOT NULL,
  `units` text NOT NULL,
  `instructor` tinytext NOT NULL,
  `schoolyear` text NOT NULL,
  `semester` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `createsubject` */

insert  into `createsubject`(`id`,`subCode`,`subDescription`,`lec`,`lab`,`units`,`instructor`,`schoolyear`,`semester`) values (1,'cpe415','Software Engineering','3','3','6','JUAN P. DELA CRUZ','2019-2020','2nd'),(2,'444','Testing ','4','4','8','MAX ANGELO D. PERIN','2019-2020','2nd'),(3,'222','Testing Number 2','2','2','4','MAX ANGELO D. PERIN','2019-2020','2nd'),(4,'333','Subject Test 3','4','4','8','MAX ANGELO D. PERIN','2019-2020','2nd');

/* Procedure structure for procedure `getuser` */

/*!50003 DROP PROCEDURE IF EXISTS  `getuser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getuser`(in p_username text, in p_passcode text)
    READS SQL DATA
BEGIN
    
    
    select *
    from account
    where username = p_username
    and passcode = p_passcode;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
