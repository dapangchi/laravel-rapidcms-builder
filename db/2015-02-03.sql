/*
SQLyog Enterprise - MySQL GUI v8.18 
MySQL - 5.6.21 : Database - new.rapidcms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `admin_cookies` */

DROP TABLE IF EXISTS `admin_cookies`;

CREATE TABLE `admin_cookies` (
  `user_id` int(10) unsigned NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin_cookies` */

/*Table structure for table `admin_password_resets` */

DROP TABLE IF EXISTS `admin_password_resets`;

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_password_resets` */

insert  into `admin_password_resets`(`email`,`token`,`expire`) values ('admin@rapidcms.com','71dbf605b27dbc08e40f2948d3100f275c40e30a',1449545927),('admin@rapidcms.com','9e0911e7dea4cca9c46202c60e74e49d20d0e59f',1449546079),('admin@rapidcms.com','1b49bdff5edcdfe663530edd167b6571bfdef153',1449546107),('admin@rapidcms.com','76a30d516703b4c65db1de696caba14f887bc813',1449546193),('admin@rapidcms.com','6832c3792be6c5f1be1359e637b4b7baec13dcdb',1449586085);

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Email',
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Password',
  `passsalt` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Password Salt',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'User Full Name',
  `logdate` datetime NOT NULL COMMENT 'User Last Login Time',
  `lognum` int(11) NOT NULL COMMENT 'User Login Number',
  `is_active` tinyint(4) NOT NULL COMMENT 'User Is Active',
  `active_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'User Active Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`id`,`email`,`password`,`passsalt`,`name`,`logdate`,`lognum`,`is_active`,`active_code`,`created_at`,`updated_at`) values (1,'admin@rapidcms.com','190ae91c421293801f870c76c535dd78','LdjFDzic','James','2015-12-08 14:11:05',116,1,NULL,'2015-10-02 16:31:28','2015-12-08 14:11:05'),(2,'stuff@rapidcms.com','190ae91c421293801f870c76c535dd78','LdjFDzic','David','2015-10-17 04:52:10',6,1,NULL,'2015-10-02 16:31:28','2015-10-17 04:52:10');

/*Table structure for table `campaigns` */

DROP TABLE IF EXISTS `campaigns`;

CREATE TABLE `campaigns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `campaigns` */

insert  into `campaigns`(`id`,`campaign_id`,`customer_id`,`name`,`created_at`,`updated_at`) values (1,0,1,'Slimming Garcinia','2015-07-21 00:00:00',NULL),(2,0,1,'Test','2015-07-21 00:00:00',NULL),(3,0,1,'Slimming Garcinia Mobile','0000-00-00 00:00:00',NULL),(4,0,1,'Slimming Garcinia Jumbleberry ','0000-00-00 00:00:00',NULL),(5,0,1,'Slimming Cleanse Jumbleberry','0000-00-00 00:00:00',NULL),(6,0,1,'tryslimminggarcinia.com/v2','0000-00-00 00:00:00',NULL),(7,0,1,'Slimming Garcinia Mobile V2','0000-00-00 00:00:00',NULL),(8,0,1,'Slimming Cleanse V2','0000-00-00 00:00:00',NULL),(9,0,1,'Slimming Cleanse Mobile V2','0000-00-00 00:00:00',NULL),(10,0,1,'Slimming Cleanse - JB/Skore','0000-00-00 00:00:00',NULL);

/*Table structure for table `currencies` */

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` enum('S','I') CHARACTER SET latin1 NOT NULL COMMENT 'S:Symbol, I:Image',
  `symbol` varchar(20) NOT NULL,
  `image` varchar(512) NOT NULL,
  `status` enum('0','1') CHARACTER SET latin1 NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `currencies` */

insert  into `currencies`(`id`,`name`,`code`,`type`,`symbol`,`image`,`status`,`created_at`,`updated_at`) values (4,'USD','USD','S','$','','1','2014-05-27 14:31:22',NULL),(5,'EUR','EUR','S','€','','1','2014-05-27 14:32:07',NULL);

/*Table structure for table `customer_cookies` */

DROP TABLE IF EXISTS `customer_cookies`;

CREATE TABLE `customer_cookies` (
  `customer_id` int(10) unsigned NOT NULL,
  `token` varchar(128) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_cookies` */

/*Table structure for table `customer_password_resets` */

DROP TABLE IF EXISTS `customer_password_resets`;

CREATE TABLE `customer_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer_password_resets` */

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer ID',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Customer Email',
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Customer Password',
  `passsalt` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Customer Password Salt',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Customer Full Name',
  `logdate` datetime DEFAULT NULL COMMENT 'Customer Last Login Time',
  `lognum` int(11) DEFAULT '0' COMMENT 'Customer Login Number',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Customer Is Active',
  `active_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Customer Active Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customers` */

insert  into `customers`(`id`,`email`,`password`,`passsalt`,`name`,`logdate`,`lognum`,`is_active`,`active_code`,`created_at`,`updated_at`) values (1,'lucius@smashtech.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Lucius kern1','2016-02-03 09:38:31',153,1,NULL,'2015-10-03 04:43:55','2016-02-03 09:38:31'),(2,'bond@outlook.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Jamed',NULL,0,1,NULL,'2015-10-03 04:43:55','2015-10-03 04:43:55'),(4,'thiyagarajan.e@roamsoft.in','190ae91c421293801f870c76c535dd78','LdjFDzic','Andrey Popov',NULL,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'suresh.l@roamsoft.in','190ae91c421293801f870c76c535dd78','LdjFDzic','Suresh L',NULL,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'tomuchdesi@gmail.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Dinesh Kumar',NULL,0,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'jphilavanh@gmail.com','190ae91c421293801f870c76c535dd78','LdjFDzic','smashtech',NULL,0,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'skay20@gmail.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Matias',NULL,0,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'andrew@smashtech.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Andrew',NULL,0,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'amitpaulbd@gmail.com','190ae91c421293801f870c76c535dd78','LdjFDzic','Amit',NULL,0,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'dai@gm.com','caaef71b9e438cdb4c38101ee8eb387d','UkZxyjA8','Lucius kern','2015-12-10 13:16:21',2,1,NULL,'2015-12-10 06:19:40','2015-12-10 13:16:21'),(22,'dai11@gm.com','da41675bc650e12649aa7d7f6f9a81cb','J9fxTFgQ','Lucius Kern','2015-12-10 16:22:26',7,1,NULL,'2015-12-10 06:21:11','2015-12-10 16:34:53'),(23,'daipangchi@gmail.com','cd17878f432c23485459339c82971b3b','jkZuDW8Z','Lucius kern','2015-12-10 07:44:50',1,1,NULL,'2015-12-10 07:44:34','2015-12-10 07:44:50');

/*Table structure for table `domains` */

DROP TABLE IF EXISTS `domains`;

CREATE TABLE `domains` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `assigned_id` int(10) unsigned NOT NULL DEFAULT '0',
  `customer_id` int(11) unsigned NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `start_date` int(11) NOT NULL,
  `expire_date` int(11) NOT NULL,
  `ssl_option` tinyint(1) NOT NULL DEFAULT '0',
  `register_lock` tinyint(1) NOT NULL DEFAULT '0',
  `auto_renew` enum('On','Off') NOT NULL DEFAULT 'Off',
  `privacy` tinyint(1) NOT NULL DEFAULT '0',
  `privacy_expire_time` varchar(25) NOT NULL,
  `privacy_product_id` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email_product_id` varchar(50) NOT NULL,
  `email_password` varchar(50) NOT NULL,
  `email_server_name` varchar(50) NOT NULL,
  `email_expire_time` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(128) NOT NULL,
  `state` varchar(5) NOT NULL,
  `postal_code` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `domains` */

insert  into `domains`(`id`,`name`,`assigned_id`,`customer_id`,`product_id`,`start_date`,`expire_date`,`ssl_option`,`register_lock`,`auto_renew`,`privacy`,`privacy_expire_time`,`privacy_product_id`,`password`,`email_product_id`,`email_password`,`email_server_name`,`email_expire_time`,`status`,`first_name`,`last_name`,`email_address`,`address`,`address2`,`city`,`state`,`postal_code`,`created_at`,`updated_at`) values (1,'luciusitsme.biz',0,1,'29646045',1433587202,1465237799,0,1,'Off',0,'','','pnoec6bs','29823129','oHSD9mbSN#82','inbound.registeredsite.com','1436054400',0,'thiyagu','e','thiyagarajan.e@roamsoft.in','My Address','','City','FL','32202','2015-06-06 13:40:02',NULL),(2,'smashsite.biz',0,1,'29680198',1433941097,1465583399,0,1,'Off',0,'','','6ud78k8c','29881022','ia1ebZ@C@H78','inbound.registeredsite.com','1438540199',0,'lucius','lucius','lucius@smashtech.com','My Address','','City','FL','32202','2015-06-10 15:58:17',NULL),(3,'anomcrm.biz',0,1,'29732123',1434465249,1466101799,0,1,'Off',0,'','','sc9qmik1','29879579','1JOqqVukE@59','inbound.registeredsite.com','1438540199',0,'Lucius','Kern','lucius@smashtech.com','My Address','','City','CA','91910','2015-06-16 17:34:09',NULL),(4,'rapidwebsite.biz',0,1,'30274165',1438938401,1470594599,0,1,'Off',0,'','','4h2arhnk','30277483','M@R2CmLUDx48','inbound.registeredsite.com','1441736999',0,'thiyagu','e','lucius@smashtech.com','My Address','','City','FL','32202','2015-08-07 12:06:41',NULL),(5,'rapidcms.biz',0,1,'30482181',1440417120,1472063399,0,1,'Off',0,'','','qbs25krm','30510741','@u5Mqjdx4G35','inbound.registeredsite.com','1443378599',0,'lucius','kern','lucius@smashtech.com','My Address','','City','FL','32202','2015-08-24 14:52:00',NULL),(6,'rapidcms.work',0,1,'30510801',1440654858,1503858599,0,1,'Off',0,'','','glh2i9jp','30510863','a$96bJyS1S78','inbound.registeredsite.com','1443378599',0,'Lucius','Saltibus','lucius@smashtech.com','My Address','','City','AZ','91910','2015-08-27 08:54:18',NULL),(7,'rapidcms.tv',0,1,'30515203',1440675665,1472322599,0,1,'Off',1,'1503792000','30515211','a1#crq1jchj','','','','',0,'lucius','kern','lucius@smashtech.com','My Address','','City','FL','32202','2015-08-27 14:41:05',NULL),(8,'rapidcrm.info',0,1,'30525000',1440751541,1472408999,0,1,'Off',1,'1545187228','30525001','dtvn4445','30525130','dC#M2V2wOd34','inbound.registeredsite.com','',0,'lucius','kern','lucius@smashtech.com','My Address','','City','FL','32202','2015-08-28 11:45:41','2015-12-19 03:04:30'),(9,'rapidcms.mobi',0,1,'30527887',1440784331,1472408999,0,1,'Off',0,'','','j2t6cofl','','','','',0,'Lucius','Kern','lucius@smashtech.com','My Address','','City','CA','92101','2015-08-28 20:52:11',NULL),(10,'rapidcms.org',0,1,'30554964',1441018400,1472668199,0,1,'Off',0,'','','lufv7j4s','','','','',0,'lucius','kern','lucius@smashtech.com','My Address','','City','FL','32202','2015-08-31 13:53:20',NULL),(11,'greenteaburn.com',0,1,'30586794',1441255883,1599071399,0,1,'Off',0,'1482191999','3243434','a1#7uo5ep4n','30800532','jt0#PH1qeS5','inbound.registeredsite.com','',0,'Lucius','kern','lucius@smashtech.com','My Address','','City','ID','91910','2015-09-03 07:51:23','2015-12-20 00:36:55');

/*Table structure for table `fonts` */

DROP TABLE IF EXISTS `fonts`;

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

/*Data for the table `fonts` */

insert  into `fonts`(`id`,`name`,`status`,`created_at`,`updated_at`) values (3,'RobotoRegular',2,'2014-01-30 00:00:00',NULL),(4,'RobotoBlack',2,'2014-01-30 00:00:00',NULL),(5,'RobotoBlackItalic',2,'2014-01-30 00:00:00',NULL),(6,'ptsans',2,'2014-01-30 00:00:00',NULL),(7,'staypuftmedium ',2,'2014-10-09 00:00:00',NULL),(8,'SourceSansPro ',2,'2014-10-09 00:00:00',NULL),(9,'telegrafico ',2,'2014-10-09 00:00:00',NULL),(10,'Tabitha ',2,'2014-10-09 00:00:00',NULL),(11,'Tangerine_Bold ',2,'2014-10-09 00:00:00',NULL),(12,'TitilliumText5 ',2,'2014-10-09 00:00:00',NULL),(13,'source_sans_proSBdIt ',2,'2014-10-09 00:00:00',NULL),(14,'TitilliumText6 ',2,'2014-10-09 00:00:00',NULL),(15,'Tangerine ',2,'2014-10-09 00:00:00',NULL),(16,'source_sans_prosemibold ',2,'2014-10-09 00:00:00',NULL),(17,'titillium_webthin ',2,'2014-10-09 00:00:00',NULL),(18,'TitilliumTextRegular ',2,'2014-10-09 00:00:00',NULL),(19,'bitstream_vera_sansbold ',2,'2014-10-09 00:00:00',NULL),(20,'TitilliumTextLight ',2,'2014-10-09 00:00:00',NULL),(21,'times_new_romanbold ',2,'2014-10-09 00:00:00',NULL),(22,'TitilliumTextSemibold ',2,'2014-10-09 00:00:00',NULL),(23,'RobotoCondensedBold ',2,'2014-10-09 00:00:00',NULL),(24,' RobotoBlack ',2,'2014-10-09 00:00:00',NULL),(25,' RobotoCondensedItalic',2,'2014-10-09 00:00:00',NULL),(26,'RobotoCondensedBoldItalic ',2,'2014-10-09 00:00:00',NULL),(27,'RobotoBold ',2,'2014-10-09 00:00:00',NULL),(28,'RobotoBoldItalic ',2,'2014-10-09 00:00:00',NULL),(29,'RobotoCondensedRegular ',2,'2014-10-09 00:00:00',NULL),(30,'RobotoItalic ',2,'2014-10-09 00:00:00',NULL),(31,'RobotoCondensedLightItalic ',2,'2014-10-09 00:00:00',NULL),(32,'RobotoCondensedLight ',2,'2014-10-09 00:00:00',NULL),(33,'RobotoLight ',2,'2014-10-09 00:00:00',NULL),(34,'RobotoMedium ',2,'2014-10-09 00:00:00',NULL),(35,'RobotoMediumItalic ',2,'2014-10-09 00:00:00',NULL),(36,' RobotoLightItalic',2,'2014-10-09 00:00:00',NULL),(37,' RobotoThin',2,'2014-10-09 00:00:00',NULL),(38,'source_sans_problack_italic ',2,'2014-10-09 00:00:00',NULL),(39,'RobotoThinItalic ',2,'2014-10-09 00:00:00',NULL),(40,'source_sans_prolight ',2,'2014-10-09 00:00:00',NULL),(41,'source_sans_proitalic ',2,'2014-10-09 00:00:00',NULL),(42,'source_sans_prolight_italic ',2,'2014-10-09 00:00:00',NULL),(43,'source_sans_proXLtIt ',2,'2014-10-09 00:00:00',NULL),(44,'source_sans_proextralight ',2,'2014-10-09 00:00:00',NULL),(45,'source_sans_probold_italic ',2,'2014-10-09 00:00:00',NULL),(46,'segouil ',2,'2014-10-09 00:00:00',NULL),(47,'source_sans_probold ',2,'2014-10-09 00:00:00',NULL),(48,'source_sans_problack ',2,'2014-10-09 00:00:00',NULL),(49,'Nunito ',2,'2014-10-09 00:00:00',NULL),(50,'nunitobold ',2,'2014-10-09 00:00:00',NULL),(51,'nunitolight ',2,'2014-10-09 00:00:00',NULL),(52,'Oswald ',2,'2014-10-09 00:00:00',NULL),(53,'opensansbold ',2,'2014-10-09 00:00:00',NULL),(54,'Patua_Regular ',2,'2014-10-09 00:00:00',NULL),(55,'pacifico ',2,'2014-10-09 00:00:00',NULL),(56,'Nerwus ',2,'2014-10-09 00:00:00',NULL),(57,'proximanovabold ',2,'2014-10-09 00:00:00',NULL),(58,'PinyonScript ',2,'2014-10-09 00:00:00',NULL),(59,'opensanslight ',2,'2014-10-09 00:00:00',NULL),(60,'QuicksandBold ',2,'2014-10-09 00:00:00',NULL),(61,'opensans ',2,'2014-10-09 00:00:00',NULL),(62,' quicksandbold ',2,'2014-10-09 00:00:00',NULL),(63,'quicksandlight ',2,'2014-10-09 00:00:00',NULL),(64,'quicksandbold_italic ',2,'2014-10-09 00:00:00',NULL),(65,'PuritanSwashBold ',2,'2014-10-09 00:00:00',NULL),(66,'quicksanditalic ',2,'2014-10-09 00:00:00',NULL),(67,'proximanova ',2,'2014-10-09 00:00:00',NULL),(68,'quicksanddash ',2,'2014-10-09 00:00:00',NULL),(69,'quicksandlight_italic ',2,'2014-10-09 00:00:00',NULL),(70,'Quicksand ',2,'2014-10-09 00:00:00',NULL),(71,' ptsans ',2,'2014-10-09 00:00:00',NULL),(74,'staypuftmedium',2,'2014-10-09 00:00:00',NULL),(75,'SourceSansPro',2,'2014-10-09 00:00:00',NULL),(76,'telegrafico',2,'2014-10-09 00:00:00',NULL),(77,'Tabitha',2,'2014-10-09 00:00:00',NULL),(78,'Tangerine_Bold',2,'2014-10-09 00:00:00',NULL),(79,'TitilliumText5',2,'2014-10-09 00:00:00',NULL),(80,'source_sans_proSBdIt',2,'2014-10-09 00:00:00',NULL),(81,'TitilliumText6',2,'2014-10-09 00:00:00',NULL),(82,'Tangerine',2,'2014-10-09 00:00:00',NULL),(83,'source_sans_prosemibold',2,'2014-10-09 00:00:00',NULL),(84,'titillium_webthin',2,'2014-10-09 00:00:00',NULL),(85,'TitilliumTextRegular',2,'2014-10-09 00:00:00',NULL),(86,'bitstream_vera_sansbold',2,'2014-10-09 00:00:00',NULL),(87,'TitilliumTextLight',2,'2014-10-09 00:00:00',NULL),(88,'times_new_romanbold',2,'2014-10-09 00:00:00',NULL),(89,'TitilliumTextSemibold',2,'2014-10-09 00:00:00',NULL),(90,'RobotoCondensedBold',2,'2014-10-09 00:00:00',NULL),(91,'RobotoBlack',2,'2014-10-09 00:00:00',NULL),(92,'RobotoBlackItalic',2,'2014-10-09 00:00:00',NULL),(93,'RobotoCondensedItalic',2,'2014-10-09 00:00:00',NULL),(94,'RobotoCondensedBoldItalic',2,'2014-10-09 00:00:00',NULL),(95,'RobotoBold',2,'2014-10-09 00:00:00',NULL),(96,'RobotoBoldItalic',2,'2014-10-09 00:00:00',NULL),(97,'RobotoCondensedRegular',2,'2014-10-09 00:00:00',NULL),(98,'RobotoItalic',2,'2014-10-09 00:00:00',NULL),(99,'RobotoCondensedLightItalic',2,'2014-10-09 00:00:00',NULL),(100,'RobotoCondensedLight',2,'2014-10-09 00:00:00',NULL),(101,'RobotoLight',2,'2014-10-09 00:00:00',NULL),(102,'RobotoMedium',2,'2014-10-09 00:00:00',NULL),(103,'RobotoMediumItalic',2,'2014-10-09 00:00:00',NULL),(104,'RobotoLightItalic',2,'2014-10-09 00:00:00',NULL),(105,'RobotoRegular',2,'2014-10-09 00:00:00',NULL),(106,'RobotoThin',2,'2014-10-09 00:00:00',NULL),(107,'source_sans_problack_italic',2,'2014-10-09 00:00:00',NULL),(108,'RobotoThinItalic',2,'2014-10-09 00:00:00',NULL),(109,'source_sans_prolight',2,'2014-10-09 00:00:00',NULL),(110,'source_sans_proitalic',2,'2014-10-09 00:00:00',NULL),(111,'source_sans_prolight_italic',2,'2014-10-09 00:00:00',NULL),(112,'source_sans_proXLtIt',2,'2014-10-09 00:00:00',NULL),(113,'source_sans_proextralight',2,'2014-10-09 00:00:00',NULL),(114,'source_sans_probold_italic',2,'2014-10-09 00:00:00',NULL),(115,'segouil',2,'2014-10-09 00:00:00',NULL),(116,'source_sans_probold',2,'2014-10-09 00:00:00',NULL),(117,'source_sans_problack',2,'2014-10-09 00:00:00',NULL),(118,'Nunito',2,'2014-10-09 00:00:00',NULL),(119,'nunitobold',2,'2014-10-09 00:00:00',NULL),(120,'nunitolight',2,'2014-10-09 00:00:00',NULL),(121,'Oswald',2,'2014-10-09 00:00:00',NULL),(122,'opensansbold',2,'2014-10-09 00:00:00',NULL),(123,'Patua_Regular',2,'2014-10-09 00:00:00',NULL),(124,'pacifico',2,'2014-10-09 00:00:00',NULL),(125,'Nerwus',2,'2014-10-09 00:00:00',NULL),(126,'proximanovabold',2,'2014-10-09 00:00:00',NULL),(127,'PinyonScript',2,'2014-10-09 00:00:00',NULL),(128,'opensanslight',2,'2014-10-09 00:00:00',NULL),(129,'QuicksandBold',2,'2014-10-09 00:00:00',NULL),(130,'opensans',2,'2014-10-09 00:00:00',NULL),(131,'quicksandbold',2,'2014-10-09 00:00:00',NULL),(132,'quicksandlight',2,'2014-10-09 00:00:00',NULL),(133,'quicksandbold_italic',2,'2014-10-09 00:00:00',NULL),(134,'PuritanSwashBold',2,'2014-10-09 00:00:00',NULL),(135,'quicksanditalic',2,'2014-10-09 00:00:00',NULL),(136,'proximanova',2,'2014-10-09 00:00:00',NULL),(137,'quicksanddash',2,'2014-10-09 00:00:00',NULL),(138,'quicksandlight_italic',2,'2014-10-09 00:00:00',NULL),(139,'Quicksand',2,'2014-10-09 00:00:00',NULL),(140,'ptsans',2,'2014-10-09 00:00:00',NULL),(141,'latobold_italic',2,'2014-10-09 00:00:00',NULL),(142,'latoblack_italic',2,'2014-10-09 00:00:00',NULL),(143,'latobold',2,'2014-10-09 00:00:00',NULL),(144,'latohairline_italic',2,'2014-10-09 00:00:00',NULL),(145,'klepto',2,'2014-10-09 00:00:00',NULL),(146,'latohairline',2,'2014-10-09 00:00:00',NULL),(147,'latoblack',2,'2014-10-09 00:00:00',NULL),(148,'latolight_italic',2,'2014-10-09 00:00:00',NULL),(149,'LaurenScript',2,'2014-10-09 00:00:00',NULL),(150,'legasnm',2,'2014-10-09 00:00:00',NULL),(151,'latoitalic',2,'2014-10-09 00:00:00',NULL),(152,'latolight',2,'2014-10-09 00:00:00',NULL),(153,'Merriweather',2,'2014-10-09 00:00:00',NULL),(154,'legacysansbold',2,'2014-10-09 00:00:00',NULL),(155,'legacy_sans_md_itc_ttmedium',2,'2014-10-09 00:00:00',NULL),(156,'Lato',2,'2014-10-09 00:00:00',NULL),(157,'heinekenregular',2,'2014-10-09 00:00:00',NULL),(158,'Glegoo',2,'2014-10-09 00:00:00',NULL),(159,'JosefinSlab',2,'2014-10-09 00:00:00',NULL),(160,'josefin_slabbold_italic',2,'2014-10-09 00:00:00',NULL),(161,'josefin_slablight',2,'2014-10-09 00:00:00',NULL),(162,'josefin_slabbold',2,'2014-10-09 00:00:00',NULL),(163,'Japan',2,'2014-10-09 00:00:00',NULL),(164,'josefin_slabregular',2,'2014-10-09 00:00:00',NULL),(165,'hemiboldItalic',2,'2014-10-09 00:00:00',NULL),(166,'helveticabold',2,'2014-10-09 00:00:00',NULL),(167,'josefin_slabsemibold',2,'2014-10-09 00:00:00',NULL),(168,'josefin_slablight_italic',2,'2014-10-09 00:00:00',NULL),(169,'josefin_slabsemibold_italic',2,'2014-10-09 00:00:00',NULL),(170,'juraregular',2,'2014-10-09 00:00:00',NULL),(171,'josefin_slabthin_italic',2,'2014-10-09 00:00:00',NULL),(172,'josefin_slabthin',2,'2014-10-09 00:00:00',NULL),(173,'ballpark',2,'2014-10-09 00:00:00',NULL),(174,'BEBAS',2,'2014-10-09 00:00:00',NULL),(175,'antykwapoltawskiegottfbold',2,'2014-10-09 00:00:00',NULL),(176,'aladdin',2,'2014-10-09 00:00:00',NULL),(177,'dualityregular',2,'2014-10-09 00:00:00',NULL),(178,'ComingSoon',2,'2014-10-09 00:00:00',NULL),(179,'dayrom',2,'2014-10-09 00:00:00',NULL),(180,'fontawesomeregular',2,'2014-10-09 00:00:00',NULL),(181,'fontin',2,'2014-10-09 00:00:00',NULL),(182,'fontawesomeregular',2,'2014-10-09 00:00:00',NULL),(183,'fontawesomeregular',2,'2014-10-09 00:00:00',NULL),(184,'fontawesomeregular',2,'2014-10-09 00:00:00',NULL),(185,'DroidSansBold',2,'2014-10-09 00:00:00',NULL),(186,'DroidSans',2,'2014-10-09 00:00:00',NULL),(187,'freestyle',2,'2014-10-09 00:00:00',NULL);

/*Table structure for table `referrals` */

DROP TABLE IF EXISTS `referrals`;

CREATE TABLE `referrals` (
  `int` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`int`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `referrals` */

insert  into `referrals`(`int`,`domain_id`,`customer_id`,`email`,`subject`,`content`,`status`,`created_at`,`updated_at`) values (1,0,1,'sdf@d.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 04:25:32','2015-12-11 04:25:32'),(2,0,1,'dsf@ggg.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 04:25:42','2015-12-11 04:25:42'),(3,0,1,'ss@test.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 04:27:48','2015-12-11 04:27:48'),(4,0,1,'sdf@g.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 04:28:17','2015-12-11 04:28:17'),(5,0,1,'dsfsdf@g.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 04:29:08','2015-12-11 04:29:08'),(6,0,1,'ss@sss.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'2015-12-11 06:54:16','2015-12-11 06:54:16'),(7,0,1,'ss@g.com','Regarding a Reference in RapidCMS','Your friend refer you to create a new website or blog in theRapidCMS',1,'0000-00-00 00:00:00',NULL);

/*Table structure for table `settings` */

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `name` varchar(50) NOT NULL,
  `module` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `settings` */

insert  into `settings`(`name`,`module`,`value`) values ('cldfr_email','account','johnny@smashtech.com'),('cldfr_key','account','4c895cc8daae335172ed7fa346a3be1ac239f'),('email.driver','email','mail'),('email.mail_path','email','/usr/sbin/sendmail -bs'),('email.sender_email','email','admin@rapidcms.com'),('email.sender_name','email','Administrator'),('email.smtp_host','email','webcloud85.au.syrahost.com'),('email.smtp_pass','email','1'),('email.smtp_port','email','567'),('email.smtp_user','email','1'),('email.type','email','html'),('paypal_account','payment','paypal@roamsoft.in'),('paypal_mode','payment','0'),('price_five_year','price','25.00'),('price_one_year','price','30.00'),('price_privacy','price','10.00'),('price_ten_year','price','18.00'),('price_two_year','price','28.00'),('site.author','site','David Jone'),('site.description','site','RapidCMS'),('site.invite_url','site','http://www.anomcrm.net'),('site.keywords','site','RapidCMS'),('site.phone','site','888'),('site.title','site','RapidCMS'),('social.fb_id','social','469991483162991'),('social.fb_key','social','1'),('stripe_publisher_key','payment','pk_test_NXbfb4FlAI7TccKQ2NEl6Vy5'),('stripe_secret_key','payment','sk_test_AHGTC85WZ1bwV951pqsCq4p9');

/*Table structure for table `site_page_dnd_elements` */

DROP TABLE IF EXISTS `site_page_dnd_elements`;

CREATE TABLE `site_page_dnd_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `site_page_id` int(10) unsigned NOT NULL,
  `type` varchar(128) NOT NULL,
  `content` text,
  `data` text,
  `sort` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_page_dnd_elements` */

/*Table structure for table `site_page_elements` */

DROP TABLE IF EXISTS `site_page_elements`;

CREATE TABLE `site_page_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `site_page_id` int(10) unsigned NOT NULL,
  `tid` varchar(128) NOT NULL,
  `name` varchar(512) NOT NULL,
  `type` varchar(128) NOT NULL,
  `content` text,
  `data` text,
  `wrapper` enum('form','basic','blank') DEFAULT 'basic',
  `modified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_page_elements` */

/*Table structure for table `site_page_files` */

DROP TABLE IF EXISTS `site_page_files`;

CREATE TABLE `site_page_files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned NOT NULL,
  `element_id` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `path` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `site_page_files` */

/*Table structure for table `site_pages` */

DROP TABLE IF EXISTS `site_pages`;

CREATE TABLE `site_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `site_id` int(10) unsigned NOT NULL,
  `key` varchar(128) NOT NULL,
  `type` enum('basic','static') NOT NULL DEFAULT 'basic',
  `title` varchar(128) NOT NULL,
  `layout` enum('tall','short') NOT NULL DEFAULT 'tall',
  `description` text,
  `seo_url` varchar(128) DEFAULT NULL,
  `meta_keywords` text,
  `form_id` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `form_type` varchar(128) DEFAULT NULL,
  `form_title` text,
  `form_submit` text,
  `form_privacy` text,
  `form_action` text,
  `is_each_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_term_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_privacy_page` tinyint(1) NOT NULL DEFAULT '0',
  `is_contact_page` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `site_pages` */

/*Table structure for table `sites` */

DROP TABLE IF EXISTS `sites`;

CREATE TABLE `sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `theme_id` int(10) unsigned NOT NULL,
  `color_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `domain_type` enum('ND','SD','PD') NOT NULL DEFAULT 'SD',
  `subdomain_url` varchar(255) NOT NULL,
  `pointdomain_url` varchar(255) DEFAULT NULL,
  `ssl_option` tinyint(1) DEFAULT '0',
  `favicon` varchar(512) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `google_analytics` text,
  `path` varchar(255) NOT NULL,
  `json` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `publish` tinyint(1) NOT NULL DEFAULT '0',
  `domain_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sites` */

/*Table structure for table `social_profiles` */

DROP TABLE IF EXISTS `social_profiles`;

CREATE TABLE `social_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `avatar` varchar(512) NOT NULL,
  `social_name` varchar(32) NOT NULL,
  `social_id` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `social_profiles` */

insert  into `social_profiles`(`id`,`email`,`first_name`,`last_name`,`avatar`,`social_name`,`social_id`,`created_at`,`updated_at`) values (2,'daipangchi@gmail.com','Sovannarith','Sok','https://graph.facebook.com/v2.5/181761218839481/picture?width=1920','facebook','181761218839481','2015-12-05 06:58:17','2015-12-05 06:58:17'),(3,'daipangchi@gmail.com','Sovannarith','Sok','https://graph.facebook.com/v2.5/183930331955903/picture?width=1920','facebook','183930331955903','2015-12-10 07:34:50','2015-12-10 07:34:50');

/*Table structure for table `states` */

DROP TABLE IF EXISTS `states`;

CREATE TABLE `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `states` */

insert  into `states`(`id`,`code`,`name`) values (1,'AA','Armed Forces Americas'),(2,'AE','Armed Forces Middle East'),(3,'AK','Alaska'),(4,'AL','Alabama'),(5,'AP','Armed Forces Pacific'),(6,'AR','Arkansas'),(7,'AS','American Samoa'),(8,'AZ','Arizona'),(9,'CA','California'),(10,'CO','Colorado'),(11,'CT','Connecticut'),(12,'DC','District of Columbia'),(13,'DE','Delaware'),(14,'FL','Florida'),(15,'FM','Federated States of Micronesia'),(16,'GA','Georgia'),(17,'GU','Guam'),(18,'HI','Hawaii'),(19,'IA','Iowa'),(20,'ID','Idaho'),(21,'IL','Illinois'),(22,'IN','Indiana'),(23,'KS','Kansas'),(24,'KY','Kentucky'),(25,'LA','Louisiana'),(26,'MA','Massachusetts'),(27,'MD','Maryland'),(28,'ME','Maine'),(29,'MH','Marshall Islands'),(30,'MI','Michigan'),(31,'MN','Minnesota'),(32,'MO','Missouri'),(33,'MP','Northern Mariana Islands'),(34,'MS','Mississippi'),(35,'MT','Montana'),(36,'NC','North Carolina'),(37,'ND','North Dakota'),(38,'NE','Nebraska'),(39,'NH','New Hampshire'),(40,'NJ','New Jersey'),(41,'NM','New Mexico'),(42,'NV','Nevada'),(43,'NY','New York'),(44,'OH','Ohio'),(45,'OK','Oklahoma'),(46,'OR','Oregon'),(47,'PA','Pennsylvania'),(48,'PR','Puerto Rico'),(49,'PW','Palau'),(50,'RI','Rhode Island'),(51,'SC','South Carolina'),(52,'SD','South Dakota'),(53,'TN','Tennessee'),(54,'TX','Texas'),(55,'UT','Utah'),(56,'VA','Virginia'),(57,'VI','Virgin Islands'),(58,'VT','Vermont'),(59,'WA','Washington'),(60,'WI','Wisconsin'),(61,'WV','West Virginia'),(62,'WY','Wyoming');

/*Table structure for table `store_categories` */

DROP TABLE IF EXISTS `store_categories`;

CREATE TABLE `store_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `store_categories` */

insert  into `store_categories`(`id`,`customer_id`,`name`,`status`,`created_at`,`updated_at`) values (5,1,'Fitness',1,'2016-01-08 13:44:55','2016-01-08 13:58:29'),(6,1,'Diet',1,'2016-01-08 13:45:38','2016-01-08 13:45:38'),(17,1,'teste',1,'2016-01-21 17:34:18','2016-01-21 17:34:18'),(8,1,'Garcinia',1,'2016-01-08 14:19:25','2016-01-08 14:29:31'),(10,1,'Cleanse',1,'2016-01-08 14:19:48','2016-01-21 16:53:08'),(11,1,'Health',1,'2016-01-08 14:19:51','2016-01-08 14:27:18'),(12,1,'Bottles1',1,'2016-01-08 14:20:00','2016-01-21 17:35:47'),(14,1,'Diet Pro Health ',1,'2016-01-08 14:20:07','2016-01-08 14:20:07'),(15,1,'Business',1,'2016-01-08 14:21:49','2016-01-21 16:53:02'),(16,1,'Dress',1,'2016-01-08 14:26:29','2016-01-08 14:28:54');

/*Table structure for table `store_orders` */

DROP TABLE IF EXISTS `store_orders`;

CREATE TABLE `store_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_desc` text NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_days` varchar(255) NOT NULL,
  `shipping_price` varchar(255) NOT NULL,
  `sub_total` float(10,2) NOT NULL,
  `tax_val` float(10,2) NOT NULL,
  `ship_val` float(10,2) NOT NULL,
  `grand_total` float(10,2) NOT NULL,
  `payment_status` text NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `status` enum('Ordered','Shipped','Refund','cancel','delivered') CHARACTER SET latin1 NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `store_orders` */

insert  into `store_orders`(`order_id`,`store_id`,`first_name`,`last_name`,`product_name`,`product_price`,`product_desc`,`shipping_name`,`shipping_days`,`shipping_price`,`sub_total`,`tax_val`,`ship_val`,`grand_total`,`payment_status`,`payment_type`,`txn_id`,`status`,`payer_email`,`address`,`phone_no`,`city`,`state`,`country`,`created_at`,`updated_at`) values (1,0,'Test','test','test','10','est\r\n','Tete','3','33',3.00,3.00,3.00,3.00,'	sdsdf','fewe','greg','Ordered','sd@g.com','dfsdf','2342342','dgds','dfg','fdg','2015-10-10 00:00:00','2015-10-10 00:00:00');

/*Table structure for table `store_product_images` */

DROP TABLE IF EXISTS `store_product_images`;

CREATE TABLE `store_product_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `image_name` text NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `store_product_images` */

/*Table structure for table `store_products` */

DROP TABLE IF EXISTS `store_products`;

CREATE TABLE `store_products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `rebill_price` float(10,2) NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `campaign_id` int(11) unsigned NOT NULL,
  `shipping_id` int(11) unsigned NOT NULL,
  `limelight_product_id` int(10) unsigned NOT NULL,
  `limelight_payment_name` varchar(255) NOT NULL,
  `is_trial` enum('0','1') NOT NULL DEFAULT '1',
  `trial_length` int(11) NOT NULL,
  `weight` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `store_products` */

insert  into `store_products`(`id`,`customer_id`,`name`,`description`,`price`,`rebill_price`,`category_id`,`campaign_id`,`shipping_id`,`limelight_product_id`,`limelight_payment_name`,`is_trial`,`trial_length`,`weight`,`publish`,`created_at`,`updated_at`) values (3,1,'532523','235432',1.00,1.00,16,3,8,0,'1423','0',1,'',1,'2016-01-21 20:51:21','2016-01-21 20:51:21');

/*Table structure for table `store_shippings` */

DROP TABLE IF EXISTS `store_shippings`;

CREATE TABLE `store_shippings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `days` int(11) NOT NULL,
  `limelight_shipping_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `store_shippings` */

insert  into `store_shippings`(`id`,`customer_id`,`name`,`price`,`days`,`limelight_shipping_id`,`status`) values (1,1,'Fast delivery',10.00,2,0,1),(2,1,'regular',2.00,2,0,1),(3,1,'UPS',2.43,2,0,1),(4,1,'First Class',4.00,4,0,1),(5,1,'No Shipping',0.00,1,1,1),(6,1,'onedayshiping',1000.00,1,0,1),(7,1,'shipping2',200.00,2,0,1),(13,1,'Performtel Discounted Shipping',0.00,0,0,1),(9,1,'Discount Shipping',0.00,0,0,0),(15,1,'Performtel Shipping',0.00,0,0,0),(8,1,'Shiipingcleanse',0.00,0,0,0),(16,1,'Exit Pop Discount Shipping',0.00,0,0,0),(19,1,'USPS',0.00,0,0,0),(17,1,'1 cent shipping',0.00,0,0,0),(11,1,'ShipCleanse',0.00,0,0,0),(18,1,'4.95 shipping',0.00,0,0,0),(10,1,'Free Shipping',0.00,0,0,0),(22,1,'RevGuard Free Shipping',0.00,0,74,1),(20,1,'First Class Mail',1.68,0,0,1),(21,1,'4.95 / 0.00',4.95,0,0,1),(23,1,'3-Day Shipping',14.95,0,69,1),(24,1,'USPS First Class',2.99,0,20,1);

/*Table structure for table `stores` */

DROP TABLE IF EXISTS `stores`;

CREATE TABLE `stores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_id` int(11) NOT NULL DEFAULT '0',
  `currency` varchar(255) NOT NULL,
  `corporate_company_name` text NOT NULL,
  `corporate_street` text NOT NULL,
  `corporate_zipcode` varchar(255) NOT NULL,
  `corporate_country` varchar(255) NOT NULL,
  `corporate_state` varchar(255) NOT NULL,
  `corporate_city` varchar(255) NOT NULL,
  `corporate_email` varchar(255) NOT NULL,
  `corporate_phone_no` varchar(255) NOT NULL,
  `corporate_descriptor` varchar(255) NOT NULL,
  `return_company_name` text NOT NULL,
  `return_street` text NOT NULL,
  `return_zipcode` varchar(255) NOT NULL,
  `return_country` varchar(255) NOT NULL,
  `return_state` varchar(255) NOT NULL,
  `return_city` varchar(255) NOT NULL,
  `return_email` varchar(255) NOT NULL,
  `return_phone_no` varchar(255) NOT NULL,
  `return_hours_operation` varchar(255) NOT NULL,
  `tax_rate` int(11) NOT NULL,
  `enable_payment_type` enum('stripe','paypal','limelight') CHARACTER SET latin1 NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `paypal_mode` enum('Live','Test') NOT NULL DEFAULT 'Test',
  `paypal_test_url` varchar(250) NOT NULL,
  `paypal_test_account` varchar(250) NOT NULL,
  `paypal_live_url` varchar(250) NOT NULL,
  `paypal_live_account` varchar(250) NOT NULL,
  `stripe_mode` enum('test','live') NOT NULL,
  `test_secret_key` varchar(255) NOT NULL,
  `test_publish_key` varchar(255) NOT NULL,
  `live_secret_key` varchar(255) NOT NULL,
  `live_publish_key` varchar(255) NOT NULL,
  `limelight_username` varchar(250) NOT NULL,
  `limelight_password` varchar(250) NOT NULL,
  `limelight_url` varchar(250) NOT NULL,
  `store_order_header` varchar(255) NOT NULL,
  `store_order_footer` varchar(255) NOT NULL,
  `shipped_header` varchar(255) NOT NULL,
  `shipped_footer` varchar(255) NOT NULL,
  `refund_header` varchar(255) NOT NULL,
  `refund_footer` varchar(255) NOT NULL,
  `canceled_header` varchar(255) NOT NULL,
  `canceled_footer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `stores` */

/*Table structure for table `theme_colors` */

DROP TABLE IF EXISTS `theme_colors`;

CREATE TABLE `theme_colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT 'default',
  `image` varchar(512) NOT NULL,
  `value` varchar(10) NOT NULL DEFAULT 'cccccc',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `style` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `theme_colors` */

insert  into `theme_colors`(`id`,`theme_id`,`name`,`image`,`value`,`main`,`sort`,`style`) values (1,1,'red','red_thumb_main.jpg','#DDCCDD',1,0,'red.css'),(2,1,'blue','blue_thumb_main.jpg','#FF44FF',1,0,'blue.css'),(3,1,'teal','teal_thumb_main.jpg','#FF3E3E',1,0,'teal.css'),(4,1,'gold','gold_thumb_main.jpg','#A2B3C4',1,0,'gold.css'),(5,1,'brown','brown_thumb_main.jpg','#F4A4A2',1,0,'brown.css');

/*Table structure for table `theme_page_elements` */

DROP TABLE IF EXISTS `theme_page_elements`;

CREATE TABLE `theme_page_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `theme_page_id` int(10) unsigned NOT NULL,
  `tid` varchar(128) NOT NULL,
  `name` text NOT NULL,
  `type` varchar(128) NOT NULL,
  `content` text,
  `data` text,
  `wrapper` enum('form','basic') DEFAULT 'basic',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `theme_page_elements` */

insert  into `theme_page_elements`(`id`,`theme_id`,`theme_page_id`,`tid`,`name`,`type`,`content`,`data`,`wrapper`) values (1,1,1,'main_heading','html_main_heading','html','WEIGHT LOSS FORMULA',NULL,'basic'),(2,1,1,'main_sublte','html_main_sublte','html','Weight Loss Landing Page Design',NULL,'basic'),(3,1,1,'main_heading_sublte','html_main_heading_sublte','html','Everyrhing You Need To Kick Start Your Diet',NULL,'basic'),(4,1,1,'banner_title','html_banner_title','html','Weight Loss Formula',NULL,'basic'),(5,1,1,'banner_subtitle','html_banner_subtitle','html','LOSE UP TO 10 POUNDS IN 7 DAYS',NULL,'basic'),(6,1,1,'feature_1','html_feature_1','html','Metabolic profile',NULL,'basic'),(7,1,1,'feature_2','html_feature_2','html','Fat Burning Capacity',NULL,'basic'),(8,1,1,'feature_3','html_feature_3','html','Curb our cravings',NULL,'basic'),(9,1,1,'feature_4','html_feature_4','html','Look sexy again',NULL,'basic'),(10,1,1,'feature_4','html_feature_4','html','Look sexy again',NULL,'basic'),(11,1,1,'description_heading','html_description_heading','html','THE BENEFITS OF GARCINIA CAMBOGIA (HCA)?',NULL,'basic'),(12,1,1,'description_paragraph','html_description_paragraph','html','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et est id tortor ullamcorper auctor sed ac quam. Aenean pellentesque mi dictum, dignissim lorem et, sollicitudin eros. Curabitur quis ex elementum, luctus ipsum a, efficitur odio. Sed lobortis, metus a auctor blandit, metus nisi feugiat enim, et porta odio mauris eget nulla. Phasellus sodales sagittis mi, eu mollis augue placerat sagittis. Curabitur sem diam, consectetur sit amet dui a, dictum venenatis lacus. Aliquam et leo scelerisque, dictum erat in, egestas neque. Sed diam nisi, auctor non lorem a, egestas pulvinar turpis. Aenean gravida posuere tellus a vehicula.',NULL,'basic'),(13,1,1,'descrpition_picture','picture_descrpition_picture','picture','','{\"width\":323,\"height\":323}','basic'),(14,1,1,'footer_link_1','html_footer_link_1','html','Terms &amp; Conditions',NULL,'basic'),(15,1,1,'footer_link_2','html_footer_link_2','html','Privacy policy',NULL,'basic'),(16,1,1,'footer_link_3','html_footer_link_3','html','Contact Us',NULL,'basic'),(17,1,1,'address_text','html_address_text','html','Simonton Nutrition, LLC | 6725 W Central Ave Suite M-105, Toledo, OH 43617 | 1-866-448-8201',NULL,'basic'),(18,1,1,'legal_text','html_legal_text','html','These statements have not been evaluated by the Food and Drug Administration. These products are not intended to diagnose, treat, cure, or prevent any disease.<br/> Read the entire label before use.',NULL,'basic'),(19,1,1,'blankspace','box_blankspace','blankbox','',NULL,'basic'),(20,1,1,'blankspace','box_blankspace','blankbox','',NULL,'basic'),(21,1,2,'main_heading','html_main_heading','html','WEIGHT<b>sdf</b> LOSS FORMULA',NULL,'basic'),(22,1,2,'main_sublte','html_main_sublte','html','Weight Loss Landing Page Design',NULL,'basic'),(23,1,2,'main_heading_sublte','html_main_heading_sublte','html','Everyrhing You Need To Kick Start Your Diet',NULL,'basic'),(24,1,2,'banner_legal_text','html_banner_legal_text','html','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In et est id tortor ullamcorper auctor sed ac quam. Aenean pellentesque mi dictum, dignissim lorem et, sollicitudin eros. Curabitur quis ex elementum, luctus ipsum a, efficitur odio. Sed lobortis, metus a auctor blandit, metus nisi feugiat enim, et porta odio mauris eget nulla. Phasellus sodales sagittis mi, eu mollis augue placerat sagittis. Curabitur sem diam, consectetur sit amet dui a, dictum venenatis lacus. Aliquam et leo scelerisque, dictum erat in, egestas neque. Sed diam nisi, auctor non lorem a, egestas pulvinar turpis. Aenean gravida posuere tellus a vehicula. ',NULL,'basic'),(25,1,2,'form_heading','html_form_heading','html','COMPLETE ORDER<br/>FOR YOUR PACKAGE',NULL,'basic'),(26,1,2,'descrpition_picture_order','picture_descrpition_picture_order','picture','','{\"width\":323,\"height\":323}','basic'),(27,1,2,'footer_link_1','html_footer_link_1','html','Terms &amp; Conditions',NULL,'basic'),(28,1,2,'footer_link_2','html_footer_link_2','html','Privacy policy',NULL,'basic'),(29,1,2,'footer_link_3','html_footer_link_3','html','Contact Us',NULL,'basic'),(30,1,2,'address_text','html_address_text','html','Simonton Nutrition, LLC | 6725 W Central Ave Suite M-105, Toledo, OH 43617 | 1-866-448-8201',NULL,'basic'),(31,1,2,'legal_text','html_legal_text','html','These statements have not been evaluated by the Food and Drug Administration. These products are not intended to diagnose, treat, cure, or prevent any disease. <br/>Read the entire label before use.',NULL,'basic'),(32,1,2,'blankspace','box_blankspace','blankbox','',NULL,'basic'),(33,1,3,'main_heading','html_main_heading','html','WEIGHT LOSS FORMULA',NULL,'basic'),(34,1,3,'main_sublte','html_main_sublte','html','Weight Loss Landing Page Design',NULL,'basic'),(35,1,3,'main_heading_sublte','html_main_heading_sublte','html','Everyrhing You Need To Kick Start Your Diet',NULL,'basic'),(36,1,3,'thanks_heading','html_thanks_heading','html','Thank you for your Purchase',NULL,'basic'),(37,1,3,'thanks_sublte','html_thanks_sublte','html','THANK YOU FOR YOUR PURCHASE',NULL,'basic'),(38,1,3,'order_heading','html_order_heading','html','Your order details below',NULL,'basic'),(39,1,3,'thanks_picture','image_descrpition_picture_order','image','img/thanks.png','{\"width\":323,\"height\":323}','basic'),(40,1,3,'footer_link_1','html_footer_link_1','html','Terms &amp; Conditions',NULL,'basic'),(41,1,3,'footer_link_2','html_footer_link_2','html','Privacy policy',NULL,'basic'),(42,1,3,'footer_link_3','html_footer_link_3','html','Contact Us',NULL,'basic'),(43,1,3,'address_text','html_address_text','html','Simonton Nutrition, LLC | 6725 W Central Ave Suite M-105, Toledo, OH 43617 | 1-866-448-8201',NULL,'basic'),(44,1,3,'legal_text','html_legal_text','html','These statements have not been evaluated by the Food and Drug Administration. These products are not intended to diagnose, treat, cure, or prevent any disease. <br/>Read the entire label before use.',NULL,'basic'),(45,1,3,'blankspace','box_blankspace','blankbox','',NULL,'basic');

/*Table structure for table `theme_pages` */

DROP TABLE IF EXISTS `theme_pages`;

CREATE TABLE `theme_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int(10) unsigned NOT NULL,
  `type` enum('basic') NOT NULL DEFAULT 'basic',
  `key` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `form_id` varchar(255) DEFAULT NULL,
  `form_name` varchar(255) DEFAULT NULL,
  `form_type` varchar(128) DEFAULT NULL,
  `form_title` text,
  `form_submit` text,
  `form_privacy` text,
  `form_action` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `theme_pages` */

insert  into `theme_pages`(`id`,`theme_id`,`type`,`key`,`name`,`form_id`,`form_name`,`form_type`,`form_title`,`form_submit`,`form_privacy`,`form_action`) values (1,1,'basic','index','Lander',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'basic','checkout','Checkout',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'basic','thanks','Thanks',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `themes` */

DROP TABLE IF EXISTS `themes`;

CREATE TABLE `themes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `background` varchar(512) DEFAULT NULL,
  `path` varchar(128) NOT NULL,
  `version` varchar(10) NOT NULL DEFAULT '1.0',
  `mobile` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `themes` */

insert  into `themes`(`id`,`tid`,`name`,`notes`,`background`,`path`,`version`,`mobile`,`status`,`created_at`,`updated_at`) values (1,'RC-TMPL-01','Rapidcms Checkout','',NULL,'rapidcms_template_v8','1.0',1,1,'2016-02-03 17:23:43','2016-02-03 17:23:43');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `terms` varchar(25) NOT NULL,
  `type` varchar(20) NOT NULL,
  `method` enum('CreditCard','Paypal') NOT NULL,
  `amount` float(10,2) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`customer_id`,`domain_id`,`description`,`terms`,`type`,`method`,`amount`,`transaction_id`,`created_at`,`updated_at`) values (1,1,1,'Purchase luciusitsme.biz of $ 30 for 1 Year','1','Debit','CreditCard',30.00,'ch_16AeiTAZHYIt83y1WgJwQD1e','2015-12-08 14:11:05','2015-12-08 14:11:05'),(2,1,13,'Purchase atest5rapidcms.mobi of $ 40 for 1 Year','1 Year','Debit','CreditCard',40.00,'ch_17JRIgGW4PyliNibHXP2nLJE','2015-12-18 16:42:36','2015-12-18 16:42:36'),(3,1,14,'Purchase atest6rapidcms.mobi of $ 40.00 for 1 Year','1 Year','Debit','Paypal',40.00,'8VS92167T32209104','2015-12-18 16:56:56','2015-12-18 16:56:56'),(4,1,15,'Purchase dfgdgfdg.com of $ 40 for 1 Year','1 Year','Debit','CreditCard',40.00,'ch_17JYEyGW4PyliNibUQ02qRE0','2015-12-19 00:07:00','2015-12-19 00:07:00'),(5,1,16,'Purchase atest6rapidcms.mobi of $ 40 for 1 Year','1 Year','Debit','CreditCard',40.00,'ch_17JYKHGW4PyliNibLWSu6BT5','2015-12-19 00:12:52','2015-12-19 00:12:52'),(6,1,17,'Purchase atest6rapidcms.mobi of $ 40.00 for 1 Year','1 Year','Debit','Paypal',40.00,'2RJ85193MN853941S','2015-12-19 00:15:59','2015-12-19 00:15:59'),(7,1,11,'Purchase Privacy of greenteaburn.com in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JZhEGW4PyliNibAbIEFJDm','2015-12-19 01:39:44','2015-12-19 01:39:44'),(8,1,11,'Purchase Privacy of greenteaburn.com in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JZi2GW4PyliNibXyOqOpj1','2015-12-19 01:40:35','2015-12-19 01:40:35'),(9,1,11,'Purchase Privacy of greenteaburn.com in $ 10.00 for a Year','1 Year','Debit','Paypal',10.00,'8CL12206Y9200152B','2015-12-19 01:46:07','2015-12-19 01:46:07'),(10,1,8,'Renew Privacy of rapidcrm.info in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JaWEGW4PyliNibFKdxpTyz','2015-12-19 02:32:27','2015-12-19 02:32:27'),(11,1,8,'Renew Privacy of rapidcrm.info in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JaY3GW4PyliNibEx4v6dGa','2015-12-19 02:34:20','2015-12-19 02:34:20'),(12,1,8,'Renew Privacy of rapidcrm.info in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JadzGW4PyliNibodU7wIni','2015-12-19 02:40:28','2015-12-19 02:40:28'),(13,1,8,'Renew Privacy of rapidcrm.info in $ 10.00 for a Year','1 Year','Debit','CreditCard',10.00,'ch_17JayIGW4PyliNibbcs2OuM3','2015-12-19 03:01:26','2015-12-19 03:01:26'),(14,1,8,'Renew Privacy of rapidcrm.info in $ 10.00 for a Year','1 Year','Debit','Paypal',10.00,'27R14149VR708332S','2015-12-19 03:04:30','2015-12-19 03:04:30'),(15,1,11,'greenteaburn.com Renewal of $ 30 for 1 Year','1 Year','Debit','CreditCard',30.00,'ch_17JfD0GW4PyliNibUilKu1VV','2015-12-19 07:32:54','2015-12-19 07:32:54'),(16,1,11,'greenteaburn.com Renewal of $ 56.00 for 2 Year','2 Year','Debit','Paypal',56.00,'96H073514E4150441','2015-12-19 07:33:51','2015-12-19 07:33:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
