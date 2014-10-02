-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sparkcrm
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('1096b9e1-dfea-3f3f-daea-541c55d8a3b1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Accounts','module',90,0),('10ce8469-ac00-b3db-52ea-541c5551a861','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','FP_Event_Locations','module',90,0),('1185c111-ad54-5e10-2ef8-541c55b6f29c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Accounts','module',90,0),('11b8a920-a39f-9fbc-beb5-542d338bbd6c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOP_Case_Updates','module',89,0),('1256433c-7659-a0ae-5d47-541c55c425cb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Accounts','module',90,0),('134350ac-6c07-a8f1-22da-541c55afbf44','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Accounts','module',90,0),('13a6168d-833b-5db4-5f09-542d330a7ebe','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOP_Case_Updates','module',90,0),('1422cd1d-e0d5-7a2b-020b-541c55f4a8d4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Accounts','module',90,0),('15520487-d04e-5278-0d34-542d335d5c73','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOP_Case_Updates','module',90,0),('15998de7-5bb3-b22c-30f2-541c55106646','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','jjwg_Markers','module',89,0),('1672de5f-3073-c27d-7198-541c55bb4346','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','jjwg_Markers','module',90,0),('171630eb-46f2-167e-74c4-542d331abeb2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOP_Case_Updates','module',90,0),('17300dbf-5f3f-2f1a-f6f7-541c55a21324','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','FP_events','module',90,0),('1744e1d8-2a45-5697-e693-541c554513f5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','jjwg_Markers','module',90,0),('18167e29-53ce-40f3-20d2-541c55149cd4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','jjwg_Markers','module',90,0),('18b9d225-712d-8ed5-78f7-541c550fedb9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOP_Case_Events','module',89,0),('18e1eaad-137b-deb5-3c68-541c55b98218','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','jjwg_Markers','module',90,0),('193ac288-b57d-b135-b109-542d337078de','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOP_Case_Updates','module',90,0),('199a41fc-dcb1-8c57-79d4-541c55ee4294','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOP_Case_Events','module',90,0),('19a6bff3-63ab-7568-fdbf-542d3397e47d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Documents','module',89,0),('19b84105-4d28-7600-eb82-541c55ea7618','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','jjwg_Markers','module',90,0),('19d80767-5df1-8bf9-b99b-541c551195cf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Contacts','module',90,0),('1a71875f-7520-3028-45d3-541c5516a6f1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOP_Case_Events','module',90,0),('1ace4d5f-173e-a28b-e5e3-541c55a1d159','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','jjwg_Markers','module',90,0),('1ae62885-2ae2-0717-6d73-542d33901861','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Users','module',89,0),('1b33607a-1281-966c-1130-542d3333d9b2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Meetings','module',89,0),('1b3b0cb3-f2ef-8fd2-dc8b-541c55bc4de6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','FP_events','module',90,0),('1b4723fb-a20f-481a-3854-542d3313c598','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOP_Case_Updates','module',90,0),('1b502a6e-8265-17a5-976e-541c55831c8b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOP_Case_Events','module',90,0),('1b739663-a74f-91f9-396d-542d33cced96','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Documents','module',90,0),('1b9f8833-ef18-962a-4f18-541c5564d644','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','jjwg_Markers','module',90,0),('1be79f4f-d154-871e-a70b-542d332f560b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','jjwg_Markers','module',89,0),('1c337631-cb33-02cb-5e64-542d33d22826','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_Quotes','module',89,0),('1c3cc16d-70c6-832e-b014-541c55c719fb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOP_Case_Events','module',90,0),('1c975af1-bd1b-5b8b-36ef-542d338199ac','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Meetings','module',90,0),('1d13c4ba-6a52-9601-5de8-541c550022c5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOP_Case_Events','module',90,0),('1d58c615-2849-fb76-57a5-542d3341c34f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Documents','module',90,0),('1dc2aa01-0c68-c917-6733-542d33428bce','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_Quotes','module',90,0),('1deda825-93bd-7a83-44d8-541c55361444','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOP_Case_Events','module',90,0),('1e2735fe-dbeb-544e-ce9c-542d33b7d345','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Meetings','module',90,0),('1e2b9b89-b24e-dec9-2f6b-542d33e59d28','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Users','module',90,0),('1e4950db-491c-1029-067a-542d33cebdc0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','jjwg_Markers','module',90,0),('1eba4a83-9c5e-7c40-2d8e-541c559fa99c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOP_Case_Events','module',90,0),('1ef9783d-9fd8-ac0a-52e2-541c557477d3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Opportunities','module',89,0),('1f315097-5811-6c22-871a-542d338498eb','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Documents','module',90,0),('1f4f03a2-2d2e-85e0-6191-542d33f0f2f9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOP_Case_Events','module',90,0),('1f97f8b2-7dbe-2ab7-ea3a-542d33e2fca6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_Quotes','module',90,0),('1fc794b9-533c-fa69-2b3b-542d33ea127f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','jjwg_Markers','module',90,0),('1fe545a4-8ef7-01f9-f593-541c55b3cec6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Opportunities','module',90,0),('20240f83-2482-bb1f-9116-542d33e65da1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Emails','module',90,0),('20615847-6145-76e7-0d48-542d33c4e26b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Meetings','module',90,0),('20b20f12-812a-b69a-990f-541c5507dad6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Opportunities','module',90,0),('20e2cdb4-a2f0-6f56-aa87-542d33fcb791','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_Quotes','module',90,0),('20f50229-a2d6-050d-6e61-542d33ebae1b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Documents','module',90,0),('2124cae8-7abd-0eb6-bf4f-542d33f471a7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','jjwg_Markers','module',90,0),('2185a976-13d6-582f-2cfa-541c555c976f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Opportunities','module',90,0),('21bda71e-98a4-3386-edc8-542d33f16460','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Users','module',90,0),('2229031b-a7a5-5939-f5e2-542d33e2ca46','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','jjwg_Maps','module',89,0),('2244ea14-fdc7-e2f0-126a-542d331f1514','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_Quotes','module',90,0),('2249bf1e-5362-af7b-961e-542d3309a931','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Documents','module',90,0),('225a9290-ec73-44b7-b6b3-542d333ccd41','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Meetings','module',90,0),('227ce9ab-f47f-2509-4b5b-541c55b0eda0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Opportunities','module',90,0),('22e5c669-f1b7-9c13-9031-542d3324965b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','jjwg_Markers','module',90,0),('232b6a32-f86c-004a-3670-541c55cf2066','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','jjwg_Areas','module',89,0),('235cd230-ca38-c45e-7402-541c55b80992','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Opportunities','module',90,0),('23b38838-2bcc-4804-78d6-542d33f84957','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Meetings','module',90,0),('23f2e384-0df1-975d-ad8a-542d33792c75','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Users','module',90,0),('240bd350-5498-94c3-dbec-542d331fd545','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Documents','module',90,0),('2411c426-6254-1fac-a19a-541c55dcd44d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','jjwg_Areas','module',90,0),('242a9656-8a81-d722-c725-541c5540c26d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Opportunities','module',90,0),('246aaa8b-07ec-ec61-628c-542d331a5962','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_Quotes','module',90,0),('248e6ca5-d813-93b7-ae61-542d337687de','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','jjwg_Markers','module',90,0),('24dee6ec-292f-798f-112b-541c555f56f2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','jjwg_Areas','module',90,0),('24f20f75-82c3-8dde-2e2e-541c55ca594c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Opportunities','module',90,0),('251842fe-d678-f772-cb0a-542d3368c3c4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Meetings','module',90,0),('25a044f5-14e6-2a31-cb29-542d336189df','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Users','module',90,0),('25b5731f-4ef3-b86c-85bc-541c55e93bee','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','jjwg_Areas','module',90,0),('25cd083f-736b-8f78-8dd1-541c55739ae3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Contacts','module',90,0),('25e230c7-4a3a-2ff7-69fc-542d33965cf0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Documents','module',90,0),('25eadf2a-3909-33d9-a4b5-542d339ae667','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','jjwg_Markers','module',90,0),('263437f2-dc82-fe32-38ac-542d339ce493','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_Quotes','module',90,0),('266cdb4e-fe50-6dc1-ceaf-542d33c24eca','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Meetings','module',90,0),('2694631f-b143-2544-20c4-541c559dc9df','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOP_Case_Updates','module',89,0),('269b09ae-ceb4-1108-7cb2-541c55b79774','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','jjwg_Areas','module',90,0),('275dd624-a639-a9af-4b37-542d33fa0201','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','jjwg_Markers','module',90,0),('2777c7bd-3617-f92b-5acc-541c55b5d9d2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOP_Case_Updates','module',90,0),('2778498a-e937-fd5e-05bd-541c5581cb67','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','jjwg_Areas','module',90,0),('27bb8ac8-2ee1-44a0-eccf-542d33d7c707','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_Quotes','module',90,0),('27d50d64-94c4-bc07-017e-542d33bd2c12','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Users','module',90,0),('284d55ff-425c-ce5c-62d1-541c55140e4b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','jjwg_Areas','module',90,0),('28563c20-2122-4254-9ad4-541c554e0906','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOP_Case_Updates','module',90,0),('292c4070-ab66-8299-ab0f-541c5564aa5c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','jjwg_Areas','module',90,0),('293134a9-1af3-e7b9-032b-541c5553f6b1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOP_Case_Updates','module',90,0),('29588c82-0fa4-f944-d6b4-542d3362acba','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Users','module',90,0),('29dd0bb9-4063-53aa-c5cb-541c55cdecbe','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','FP_events','module',90,0),('2a02744e-6fa0-62af-ff04-541c55b02733','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOP_Case_Updates','module',90,0),('2aa81ca4-5e8a-dcfd-7fdf-542d33b4a1ca','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Users','module',90,0),('2ad4d098-9966-4484-a4d2-541c55b55dd2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOP_Case_Updates','module',90,0),('2badd915-2a0c-61d0-fa15-541c5551b03c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOP_Case_Updates','module',90,0),('2c818091-eadb-944a-9f7a-541c55f69261','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOP_Case_Updates','module',90,0),('2d2d1b7b-5986-0f47-1ed3-542d33629599','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Contacts','module',89,0),('2dce82e6-b40e-6908-2764-542d3322d91e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOP_Case_Updates','module',90,0),('2dd8ac39-3ba1-4b73-0e95-541c55ef79f3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','EmailTemplates','module',89,0),('2dec0746-b42f-9fee-c746-542d33ef1178','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','EmailMarketing','module',90,0),('2ed03259-51ef-d2bf-4af4-542d33978145','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Contacts','module',90,0),('2ed0976c-90d0-eefe-1362-541c55596840','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','EmailTemplates','module',90,0),('2f564038-0d66-0831-3a40-542d33e6dccf','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOP_Case_Updates','module',90,0),('2fae90c7-299f-7a53-23f5-541c5542e4ea','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','EmailTemplates','module',90,0),('301d88b2-fb77-901d-e131-542d3357b0fd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Contacts','module',90,0),('307550f2-c09f-d7fb-3155-541c5583d0c0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','jjwg_Address_Cache','module',89,0),('30925e5e-b900-f03e-e05f-541c557ae104','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','EmailTemplates','module',90,0),('31612ee5-0e0f-1edb-052f-541c557546d1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','jjwg_Address_Cache','module',90,0),('316dbcdb-c837-f3fd-842d-541c55379156','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','EmailTemplates','module',90,0),('31a90d7e-370c-5109-edd9-542d33aa6fa3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Contacts','module',90,0),('324d8cc5-6451-e5c8-01f1-541c552584e6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','jjwg_Address_Cache','module',90,0),('32596688-480f-36e3-8dda-541c551207cf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','EmailTemplates','module',90,0),('33326bf2-1852-d790-b95e-542d33f2d2b5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Contacts','module',90,0),('33377075-1c4a-90af-2428-541c55c44e6f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','EmailTemplates','module',90,0),('33394bd3-bced-03c7-5ab0-541c5529ef32','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','jjwg_Address_Cache','module',90,0),('340afbb1-b3ef-f369-0bfc-541c553b495d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','EmailTemplates','module',90,0),('343041b3-593e-4e52-0752-541c55da329b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','jjwg_Address_Cache','module',90,0),('3461623f-650b-0f4d-8a12-542d33a11b43','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','jjwg_Areas','module',89,0),('34b93c2d-53db-2236-622e-542d33493430','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Contacts','module',90,0),('35256855-1cb8-79ee-e825-541c55f73200','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','jjwg_Address_Cache','module',90,0),('35b7890a-6182-8952-5f6c-542d33ba8631','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','jjwg_Areas','module',90,0),('35d897f9-16b6-dd47-a1e5-542d33e0a900','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOR_Reports','module',89,0),('35dd6388-4eec-6efa-12dd-542d338a51d7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Tasks','module',89,0),('36004138-1e58-b2ed-4400-541c559a427e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','jjwg_Address_Cache','module',90,0),('3621e2fb-d986-313f-c581-542d333333da','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Contacts','module',90,0),('363b077b-ad17-8ab6-37c2-542d33d47640','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOP_Case_Events','module',90,0),('36d20b56-c4d2-6343-fff8-541c5523d47f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','FP_events','module',90,0),('36e4db27-836b-fdb9-deb9-541c55d31a1b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','jjwg_Address_Cache','module',90,0),('37400ad9-8c45-5811-5ec4-542d338a7cb7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Tasks','module',90,0),('3754f492-e487-ce35-6db8-542d336a6a2d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','jjwg_Areas','module',90,0),('37a661ad-3b4b-84bb-b2c7-542d33e731ad','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOR_Reports','module',90,0),('389fb99d-44cf-1c61-2606-542d338aee31','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Contacts','module',90,0),('38d49d86-738a-413b-77b2-542d33ce83ab','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','jjwg_Areas','module',90,0),('393bdfae-3aac-883f-d1dd-542d333a3609','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOR_Reports','module',90,0),('39475a7c-5fa4-990b-cbbf-542d330ffdfe','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Tasks','module',90,0),('39d79f2c-ecf2-429e-75e5-541c5519e681','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Notes','module',89,0),('3aa50953-d244-de07-e565-542d33d596b9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','jjwg_Areas','module',90,0),('3abd1a24-ec99-7227-246d-541c55057883','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Notes','module',90,0),('3ac0b0b5-b4f3-84d5-2f95-542d33f0e884','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOR_Reports','module',90,0),('3acc4445-a0a5-6193-133a-542d33581910','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Tasks','module',90,0),('3b8ad761-4586-57d5-af7e-541c5570665a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Notes','module',90,0),('3c143971-f9fb-9059-e689-542d333172f3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOR_Reports','module',90,0),('3c5a9c97-2a59-f06b-e6e3-541c5537cc8a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Notes','module',90,0),('3c706eec-4472-e113-c489-542d331c138d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Tasks','module',90,0),('3c93e2a8-f731-da2e-8a00-542d333d4dc1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','jjwg_Areas','module',90,0),('3d32c033-911b-69de-1df3-541c555638f0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Notes','module',90,0),('3dc09dca-993e-82fd-d5ee-542d33d4df0b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOR_Reports','module',90,0),('3e06822e-e779-5138-6beb-541c55ffccc1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Notes','module',90,0),('3e0839a4-1f26-13fd-2503-542d331fae1b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','jjwg_Areas','module',90,0),('3e59013a-3723-5985-d491-542d33de5760','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Emails','module',90,0),('3e6d1ef7-a585-707d-f8bf-542d33a78a6f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Tasks','module',90,0),('3eea903a-4dd4-bac0-94e0-541c55cc8a0c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Notes','module',90,0),('3f17f965-9d51-d0b7-340b-542d3363b379','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOR_Reports','module',90,0),('3fa3ee26-cf93-19ec-692f-542d3391eccb','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','jjwg_Areas','module',90,0),('3fb7db5e-6256-5b5a-34ac-541c559e6f80','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Notes','module',90,0),('3fdf3caa-ed3a-9ae2-6d13-542d33a9ea89','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Project','module',89,0),('3fe10d91-724c-bd3c-e78c-542d330c3d15','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','jjwg_Maps','module',90,0),('402dc6dd-ab5a-aa57-f573-541c55724125','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_Contracts','module',89,0),('405c9a77-2041-9c9c-1e25-542d33c404cb','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Tasks','module',90,0),('407b1597-457f-ed13-31cb-542d33f32872','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOR_Reports','module',90,0),('411061a0-84f3-de07-b9a6-541c55a663b9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_Contracts','module',90,0),('4169c479-e2bb-2203-2b23-542d33e4a4ae','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Project','module',90,0),('41e5809c-04d1-74c8-818e-541c5511426c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_Contracts','module',90,0),('422f167a-5402-8b58-5d3d-542d3300b95a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Tasks','module',90,0),('42b580a3-2544-555c-2507-541c555acea4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_Contracts','module',90,0),('42e2b7a1-9faa-445a-c735-542d33a5dfd9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Project','module',90,0),('43812b62-62c3-5e43-75a1-541c55234836','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_Contracts','module',90,0),('44530372-7791-4edd-93d0-542d33eddf01','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','EmailMarketing','module',90,0),('4453d396-cb05-6dab-e65b-541c55125ebf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_Contracts','module',90,0),('451dd0ba-5461-0542-c85e-541c5537e722','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_Contracts','module',90,0),('4530f20a-5381-f334-3dff-542d33da5fb5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Project','module',90,0),('45ec6e19-f77a-fbc2-8a55-541c55b7b4dd','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_Contracts','module',90,0),('465ff9ca-1feb-4a9a-ac92-541c555686a8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Calls','module',89,0),('46d36a9d-546f-ae48-8587-542d330c17c8','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Project','module',90,0),('47414c60-9b22-bdfd-ae63-541c556c294b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Calls','module',90,0),('480a72ea-4b22-8225-8b8e-541c5586dfb6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Calls','module',90,0),('48c05718-c6fc-8260-228e-542d33ad3454','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Project','module',90,0),('48eb5081-3fd4-ed90-f45b-541c55a6e085','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Calls','module',90,0),('49b19c12-440d-2e7c-025a-541c5547926d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Calls','module',90,0),('4a7ccc41-79dd-0f51-1196-541c55889108','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Calls','module',90,0),('4a892a85-133f-778c-99cb-542d33311fd6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Project','module',90,0),('4b4a8bf9-232b-7a1a-eac3-541c552487ad','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Calls','module',90,0),('4b8f363e-5b5b-5be3-64a4-542d330696db','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','jjwg_Address_Cache','module',89,0),('4c1cbc87-14ad-e389-45e8-541c55948276','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Calls','module',90,0),('4c5897ae-7354-e932-fff7-542d33f167fa','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Project','module',90,0),('4d306387-9957-7677-7049-542d33f5ff51','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','jjwg_Address_Cache','module',90,0),('4e22dae2-ff3c-048a-7872-541c556f3776','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Leads','module',89,0),('4eafbc42-942d-52d7-7f04-542d33b00ca5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','jjwg_Address_Cache','module',90,0),('4f992f69-1bec-e1b8-b1e1-541c55ac0359','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_Invoices','module',89,0),('50675598-ef0b-dbf2-c9a7-542d3330f554','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','jjwg_Address_Cache','module',90,0),('50797591-54da-18ea-cec9-541c55d2b609','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_Invoices','module',90,0),('514dd775-6159-afd6-dbc3-541c5565af7c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_Invoices','module',90,0),('51a94559-8bf1-45be-d356-542d33e90e3f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','jjwg_Address_Cache','module',90,0),('51f9e337-73ee-3f3f-af56-541c55c83d27','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Leads','module',90,0),('52232aab-8574-af97-7434-541c55b9735f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_Invoices','module',90,0),('52cf004e-f364-c962-9c5c-541c55768e93','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Leads','module',90,0),('530eac03-2914-e7bc-f367-541c55146183','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_Invoices','module',90,0),('531c817d-aa9e-b403-77f3-542d3386bca8','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','jjwg_Address_Cache','module',90,0),('53434c9c-8ace-a2d6-34c6-541c55c7ab12','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Emails','module',89,0),('539002c1-c1cf-5e30-6361-542d33ced42a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Emails','module',90,0),('5399c1b1-d830-7582-a165-541c55e561b6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Leads','module',90,0),('53e5ae42-4f72-f815-22d1-541c552bca0e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_Invoices','module',90,0),('5433a701-a3c5-4b1b-87c2-541c55c6651a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Emails','module',90,0),('545dd9a3-3bf0-88f6-e1b8-541c550d1ded','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Leads','module',90,0),('54ae4083-eeaf-cb9c-3a1a-542d3351b7e7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','jjwg_Address_Cache','module',90,0),('54b0ab3b-7f90-6e15-f6f5-541c55ee7834','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_Invoices','module',90,0),('550ca832-24a4-0d88-5f73-541c55c34e6e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Emails','module',90,0),('55311c95-7c44-9edc-fbdf-541c555259bf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Leads','module',90,0),('558da3a0-4f59-fe0d-0427-541c551efc17','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_Invoices','module',90,0),('55e1d150-e545-ce05-46d3-541c5530b612','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Emails','module',90,0),('55f8ddf6-5485-68b5-7e95-541c55f3643f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Leads','module',90,0),('560016a0-6dfe-b01b-65bf-542d33ce4d3d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','jjwg_Address_Cache','module',90,0),('56abeb96-5f29-0063-573a-541c5581500b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Emails','module',90,0),('56c368d7-927c-b406-11a3-541c5597b125','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Leads','module',90,0),('57732ba3-0607-fd28-99a5-542d331876f5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Accounts','module',89,0),('578da5b8-ebae-f287-2092-541c55f575b1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Emails','module',90,0),('58710af2-2ca8-1362-c6cf-541c5551f8e2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Emails','module',90,0),('588a0a5d-59cb-5eec-46d5-542d337cb247','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','jjwg_Maps','module',90,0),('58c346ce-a30e-58f6-341d-542d33454db6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Accounts','module',90,0),('594e731e-00af-d756-1056-541c55dd0bb0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Emails','module',90,0),('5a2ac4d1-ad53-879e-eca1-542d33ae1914','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Accounts','module',90,0),('5bbcf86e-6b06-6565-cf35-542d33eef0b9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Accounts','module',90,0),('5d56ce99-ae38-08a6-2bc8-542d3397ef1f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Accounts','module',90,0),('5da4bf8f-5af4-a1dd-d188-541c553f52b1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_PDF_Templates','module',89,0),('5e924f6b-d550-cc57-c0f6-541c55b71914','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_PDF_Templates','module',90,0),('5eb6ac72-b78e-7fec-f005-542d33b7901e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','ProjectTask','module',89,0),('5f1f3226-ce6f-9ee6-5832-542d333272b4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Accounts','module',90,0),('5f6d66cc-9dad-5de6-6539-541c55eae824','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_PDF_Templates','module',90,0),('603d8fa9-0cde-1988-8633-541c557c46f1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_PDF_Templates','module',90,0),('605d08d0-5036-026d-3733-542d3339a4fb','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','ProjectTask','module',90,0),('60819766-f425-9b6e-0304-542d333f019a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Accounts','module',90,0),('610bf4ea-64bd-b501-242a-541c55c77fc0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_PDF_Templates','module',90,0),('610d3a74-8a8d-92eb-e7a2-541c558d5141','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Cases','module',89,0),('61a3c107-dd64-6a0c-c3ed-541c554e458a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Meetings','module',89,0),('61cbe28b-d930-d409-c14e-542d3351911d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Accounts','module',90,0),('61dffbe9-8c8f-c630-72a9-541c551c4fb9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_PDF_Templates','module',90,0),('61ebadc1-3c31-241c-fd49-541c557b43b7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Cases','module',90,0),('6285cc6b-c340-b487-f8a1-541c5539d2f7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Meetings','module',90,0),('62949e6c-9267-816c-9773-542d333ed235','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','ProjectTask','module',90,0),('62b6b3df-0801-ce6e-bbca-541c5542b353','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_PDF_Templates','module',90,0),('62b90b77-a8f8-37e0-c82b-541c55d7d8fd','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Cases','module',90,0),('63562496-72f0-6e5d-4822-541c55de2430','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Meetings','module',90,0),('638e2339-8911-aa91-c8e6-541c556f97ca','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Cases','module',90,0),('63981fa4-92c8-c3b0-c2c3-541c554953ce','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_PDF_Templates','module',90,0),('63d64fde-eb52-8f3c-b9d3-542d332740e7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_Contracts','module',89,0),('641fdd4d-06a4-0a19-54f7-541c5552188c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Meetings','module',90,0),('646b16db-af7b-1d69-3072-541c5508bba3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Cases','module',90,0),('64788008-1019-3d80-6be7-542d330e89fd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','ProjectTask','module',90,0),('64dbff6b-516e-2e2e-dbb6-542d3379ff70','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_Contracts','module',90,0),('64e8e3a6-5b06-cb29-8d9b-541c5507b091','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Meetings','module',90,0),('65317767-e9f5-22b9-7ee7-541c556a18e3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Cases','module',90,0),('65cc5892-0ec4-3f9f-ea64-541c556bb835','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Meetings','module',90,0),('65f76b24-3629-fac4-fc05-541c5560883d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Cases','module',90,0),('6625ebf6-2f0d-831b-54d6-542d33fb6184','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_Contracts','module',90,0),('665ad66c-5e81-cb9f-2fc3-542d332dff6a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','EAPM','module',89,0),('6674f148-103a-8ea8-0dd6-542d33884cfe','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','ProjectTask','module',90,0),('669b905c-0631-396d-4925-541c55bc168c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Meetings','module',90,0),('66c68e60-b6df-63b2-3bcc-541c559e6566','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Cases','module',90,0),('67731f75-2942-ca02-e25a-541c55fc916d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Meetings','module',90,0),('67b16e26-7011-5f34-2120-542d33b9ca2e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','SecurityGroups','module',89,0),('67dc1b80-24f6-4ce4-ed6e-542d33a547b6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','EAPM','module',90,0),('680ac05b-1692-7d0a-9773-542d339656ce','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_Contracts','module',90,0),('6865d2ee-6f3f-e3bf-c86f-542d33070869','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','ProjectTask','module',90,0),('6934ab7b-81da-2674-381c-542d33eabdcc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','SecurityGroups','module',90,0),('69840c22-0912-cd28-8f6b-542d33b706e2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','EAPM','module',90,0),('6994ddf7-0f7c-25d4-a949-542d3387561c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_Contracts','module',90,0),('69ad0596-e4e5-f826-6319-542d334d4892','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Emails','module',90,0),('69e8c400-fbce-20b7-c35b-542d334b8d44','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','ProjectTask','module',90,0),('6aa7f6d3-9847-2bd5-3ed4-542d3357ec6a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','SecurityGroups','module',90,0),('6acffa9c-adff-7ac8-3108-542d333cdf27','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','EAPM','module',90,0),('6b253e23-64c3-d00f-60d2-542d33b3847e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_Contracts','module',90,0),('6b6952a2-c8c5-f554-c333-542d33eb7e0a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','ProjectTask','module',90,0),('6b7796ab-ae81-5b60-bde0-541c55736e34','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_Product_Categories','module',89,0),('6c20c510-428b-ed0e-4405-542d3390bee2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','EAPM','module',90,0),('6c211f1c-32fd-6a94-7a57-542d331b60c0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','SecurityGroups','module',90,0),('6c62540f-d3b5-e203-4a87-541c55749890','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_Product_Categories','module',90,0),('6cada0df-154a-63ac-ff69-542d337fd0af','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_Contracts','module',90,0),('6d366854-9473-6c6a-7b6c-541c55286346','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_Product_Categories','module',90,0),('6d9c73e3-29c7-1762-6c74-542d33445041','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','EAPM','module',90,0),('6df32d43-d328-3876-cdba-541c5529a6bd','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Tasks','module',89,0),('6dfbe0e2-8015-d68b-d553-542d33b4d293','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','SecurityGroups','module',90,0),('6e0db51a-b62d-fd8c-b5ee-541c553e137d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_Product_Categories','module',90,0),('6e21da58-142a-caf5-c6b7-542d3339083b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_Contracts','module',90,0),('6ecf0da3-8872-aac5-aa12-541c55f1bdef','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Tasks','module',90,0),('6ed9536d-d3c3-179f-07a5-541c5547f1c8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_Product_Categories','module',90,0),('6f0e03d7-1a90-433d-9eb4-542d334de6c3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','EAPM','module',90,0),('6f808909-e939-1aff-5ceb-542d331b40fd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','SecurityGroups','module',90,0),('6f9ae356-6df7-4465-ac47-541c553e0ec1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Tasks','module',90,0),('6fabd0db-dcb9-6f66-10ac-541c55f69cf4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_Product_Categories','module',90,0),('6fd7899f-055e-4d1a-137a-541c55b0544a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Bugs','module',89,0),('7064b655-a140-68ba-7462-541c55d9fbdf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Tasks','module',90,0),('707f01d8-8ad6-c51d-f94b-541c554dfe5d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_Product_Categories','module',90,0),('70b5c323-0810-99a6-e38f-541c551e9b12','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Bugs','module',90,0),('710b6e5d-53b4-6599-ad61-542d33b736ea','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','SecurityGroups','module',90,0),('712e240e-862b-3faf-6e9d-542d334d2360','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','EAPM','module',90,0),('71378721-6f59-89a8-d143-541c55038cc4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Tasks','module',90,0),('7154e36e-f9f5-8f72-c7dc-541c559914aa','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_Product_Categories','module',90,0),('71861933-8576-886e-fa05-541c55828239','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Bugs','module',90,0),('71fe88f4-21e3-b397-b072-541c553a5917','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Tasks','module',90,0),('725647bc-ed3e-0ab2-87c3-541c55e126c9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Bugs','module',90,0),('72c0038b-6607-3282-b44e-542d33410f85','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','SecurityGroups','module',90,0),('72f6176a-2a2e-f0f9-c7bf-541c55bdbdd6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Tasks','module',90,0),('73217d36-fdaf-b112-ef92-541c55f27c2c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Bugs','module',90,0),('73d747e0-9b38-e083-57f7-541c556ba0c8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Tasks','module',90,0),('73ef5741-307a-be33-1b18-541c55de6fa9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Bugs','module',90,0),('74250149-3040-feb9-9fa9-542d33f0e8f7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','jjwg_Maps','module',90,0),('74b86bcb-6a7e-e406-e4b3-541c5513d57b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Bugs','module',90,0),('75839902-0e17-35a6-59e1-541c55685af1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Bugs','module',90,0),('798e2b99-c50c-2934-7b42-541c551dda44','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_Products','module',89,0),('7a6ba871-c5f4-44c0-8e16-541c55c7a083','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_Products','module',90,0),('7b3d0dc7-9db4-e1f6-fa7c-541c555f448f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_Products','module',90,0),('7c08f8dc-e4b7-b225-f73b-541c554ba537','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_Products','module',90,0),('7cda6996-3495-06b3-bb33-541c55e1848d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_Products','module',90,0),('7d080f3f-d351-dea5-9720-541c55b1768d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','jjwg_Maps','module',89,0),('7d5922d4-5400-a2f4-abda-542d33d4eb0e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_Invoices','module',89,0),('7dac59bd-058f-6e70-1001-541c55c189d1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_Products','module',90,0),('7e1008cb-423e-b3ff-1a12-542d335611dc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Emails','module',90,0),('7e75a05b-dc68-267f-8280-541c55845425','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_Products','module',90,0),('7f29c0ed-4e7b-6228-acfd-542d332f603f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_Invoices','module',90,0),('7f39b4b5-d19e-7647-5a1f-541c55ef6aac','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Users','module',89,0),('7f4649b3-f230-f108-f880-541c55e96b49','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_Products','module',90,0),('80162f8c-dd4e-3929-cbe0-541c5539a568','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Users','module',90,0),('80bdfa2f-35d1-73ff-e30d-542d33f4931e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOD_IndexEvent','module',89,0),('80c96e5a-a3bd-d9f9-8482-542d33301ddc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_Invoices','module',90,0),('80cb25d5-8195-53e1-3061-542d33afae32','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Campaigns','module',89,0),('80fc6a01-e376-b90a-13bd-541c55308b47','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Users','module',90,0),('8199e42a-7be7-f425-ed1b-542d3344e0ca','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Opportunities','module',89,0),('81c7be5f-f8b6-d740-d77b-541c5575198a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Users','module',90,0),('821a8b6f-8a77-5d87-f058-542d33ceecfc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_Invoices','module',90,0),('829b749f-799c-8765-279f-541c55e53268','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Users','module',90,0),('82d7c420-ed08-2f33-55fe-542d33b2793f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOD_IndexEvent','module',90,0),('82e046a5-b4fd-5ec1-629b-542d3383d6ca','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Campaigns','module',90,0),('831b47e7-ff8a-ce05-8578-542d3375f302','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Opportunities','module',90,0),('83655e7b-44d9-f4bf-c27d-541c55872777','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Users','module',90,0),('83b235ea-ba94-97e0-189d-542d33537b78','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_Invoices','module',90,0),('842fdb72-66ed-f8b7-cb1b-541c556c2ae1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Users','module',90,0),('847ef503-0a22-1bf3-0d6a-542d336939a9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOD_IndexEvent','module',90,0),('84c3b832-524d-f07e-fb0e-542d339c35f6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Campaigns','module',90,0),('84f651fe-b516-e789-8f27-541c55e10e40','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Users','module',90,0),('859affcb-7048-53cc-e8ac-542d339fed0f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_Invoices','module',90,0),('85e40ff6-2d60-8c0c-548a-542d332a1190','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Emails','module',90,0),('8624314d-41d6-a583-4d47-542d33dafea4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOD_IndexEvent','module',90,0),('8636fee4-1c83-e265-9c5c-542d33dd0b88','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Campaigns','module',90,0),('878659dc-a77a-f736-0a11-542d3394a819','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_Invoices','module',90,0),('87b34b61-4eb3-6eb4-cd86-542d338f6daf','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Campaigns','module',90,0),('87fd55cd-4a97-4fc8-c9a0-542d33887d26','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOD_IndexEvent','module',90,0),('89383c8d-69c0-ca92-b0a6-542d33632727','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Campaigns','module',90,0),('899abb6b-328b-301b-0883-542d336361d2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_Invoices','module',90,0),('89fe6b6f-1c47-319f-528e-542d330b19ba','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Opportunities','module',90,0),('8ac63af6-a878-31e3-509d-542d33b90e99','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Campaigns','module',90,0),('8b627731-41cf-6867-3ae6-542d3370b2cb','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOD_IndexEvent','module',90,0),('8c260a43-83aa-9b2c-71a5-541c55977e02','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','jjwg_Maps','module',90,0),('8c6f103a-72cc-3f68-4092-542d33f7c9d1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Campaigns','module',90,0),('8cd037a2-ba4b-7de3-bc52-542d3344d2be','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOD_IndexEvent','module',90,0),('8d879378-9aeb-1095-dcae-542d338ae9f9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Opportunities','module',90,0),('8e761404-8785-47d2-27b6-542d33544ef9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOD_IndexEvent','module',90,0),('8eb30476-251a-4f40-b62c-542d33011869','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','jjwg_Maps','module',90,0),('8ebf72b2-e486-6404-4c7f-541c5561e859','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Project','module',89,0),('8f6a75b2-9b22-72c6-c56e-542d3309d1a0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Opportunities','module',90,0),('8fa8ca04-131d-fdab-ee33-541c55412705','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Project','module',90,0),('90755453-767c-80f8-0868-541c55cab14b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Project','module',90,0),('91493530-4f8f-2d82-ebfd-541c55fdd523','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Project','module',90,0),('915aa526-44d1-082d-7838-542d33fd0f05','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Opportunities','module',90,0),('91ffe329-f877-2df0-934d-541c552d4c6d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Documents','module',89,0),('921fcc4b-c4a6-44cd-761b-541c5545a836','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Project','module',90,0),('92ccdead-e755-39f8-8a06-542d33562dbf','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Opportunities','module',90,0),('92ee57cc-4787-6556-ab23-541c55067972','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Documents','module',90,0),('92f46940-f3e4-2fb6-4e1b-541c5547c43d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Project','module',90,0),('93c2bc5a-db84-52ff-c948-541c55c440ac','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Project','module',90,0),('93c4b2ba-fab4-4e3f-4854-541c55e110b1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Documents','module',90,0),('94477412-6bc2-e23d-796d-542d33d85a11','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Opportunities','module',90,0),('9492d19c-f65f-7857-0fde-541c552da2a7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Project','module',90,0),('94a06f03-e367-a13f-5509-541c550eda58','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Documents','module',90,0),('956c3192-8e20-d7d7-f7fa-541c55d5fea5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Documents','module',90,0),('963c3e8b-d307-c9e6-6812-541c55902900','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Documents','module',90,0),('9711f60a-b598-a4f4-8331-541c5525c09f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Documents','module',90,0),('97b29746-29c7-7ff7-d964-541c554fca63','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOS_Quotes','module',89,0),('97efa239-3b8d-5cb1-260b-541c552ffeeb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Documents','module',90,0),('98000dae-e535-a922-9d42-542d334fda02','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOP_Case_Events','module',90,0),('9892d835-599f-a3e9-1be9-541c55190b77','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOS_Quotes','module',90,0),('990cc68c-233d-9cfb-fee3-542d335c6339','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_PDF_Templates','module',89,0),('9961f0a2-ddb1-68e2-3f62-541c55a92748','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOS_Quotes','module',90,0),('99d4df89-0eb1-e68f-eedd-542d33f05a05','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOW_WorkFlow','module',89,0),('9a29238d-17bb-fdea-6bec-541c55013bf2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOS_Quotes','module',90,0),('9a560a51-67cd-5586-462b-541c55832847','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','jjwg_Maps','module',90,0),('9a5e3a54-51b8-69c1-6b0d-542d3321e41e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_PDF_Templates','module',90,0),('9af3c16e-8de2-7bff-9dc8-541c550c36a9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOS_Quotes','module',90,0),('9bae308e-4bcd-b3e5-557e-542d333280e4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_PDF_Templates','module',90,0),('9bbe9ab8-1a8a-fd7a-2a40-541c5577ac77','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOS_Quotes','module',90,0),('9bee2f72-c7d0-c086-f203-541c55e15dd5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','ProjectTask','module',89,0),('9c8ddf26-d725-e47e-4481-541c55231709','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOS_Quotes','module',90,0),('9cde00e8-5e88-e02d-b488-541c556281a5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','ProjectTask','module',90,0),('9ce8a3fd-856a-8205-24ab-542d33de6ce6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOW_WorkFlow','module',90,0),('9d405576-d09b-7ac1-62f6-542d3372f6c8','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Leads','module',89,0),('9d54c721-b2f9-4a0b-6e64-541c55088108','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOS_Quotes','module',90,0),('9d5df113-297c-1b6b-074f-542d33e4a427','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_PDF_Templates','module',90,0),('9dc32fdc-3225-842a-25ac-541c55e31ec7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','ProjectTask','module',90,0),('9e59ad55-d558-2ce6-ddd1-542d33b8a8fa','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOW_WorkFlow','module',90,0),('9eaa4a6a-a20b-2aef-a847-541c55661cb2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','ProjectTask','module',90,0),('9eb7f221-6128-ba74-f67a-542d33556e57','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_PDF_Templates','module',90,0),('9f781344-b1c7-81d2-c306-541c55485f32','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','ProjectTask','module',90,0),('9fdd0328-5ea4-cac1-e9f1-542d3300ea09','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Emails','module',90,0),('a0000bcc-c470-3f24-95d3-541c55750f3c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Contacts','module',90,0),('a045cb86-b889-e954-7ee6-542d33d817c2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_PDF_Templates','module',90,0),('a0480980-9f17-ece0-7ab8-541c55c2299e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','ProjectTask','module',90,0),('a07ffc75-2ce7-1a2a-6409-542d33f8bb35','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOD_Index','module',89,0),('a0f16767-519f-897c-9c24-542d33c68b3d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Leads','module',90,0),('a11ccff4-f458-8be1-24e1-541c5586aa80','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','ProjectTask','module',90,0),('a135034e-5106-ec28-cdde-542d335a9f1c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOW_WorkFlow','module',90,0),('a18d15b4-bdc6-64db-376c-542d33567206','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_PDF_Templates','module',90,0),('a1e76d08-d3c7-5f2a-9f84-541c55eb9df1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','ProjectTask','module',90,0),('a2122b88-e859-b0e6-5502-542d33d5ad8e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOD_Index','module',90,0),('a2e1aa12-1d48-630c-e9bc-542d33bd6836','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Leads','module',90,0),('a3984ce5-35d5-7b2d-b2bc-542d33440f84','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOD_Index','module',90,0),('a4392045-0010-f146-d095-542d33af47d3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Leads','module',90,0),('a45f39c0-4e52-989b-0da5-542d3376c3b0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_PDF_Templates','module',90,0),('a54af426-857b-9c44-1a85-542d3362b9bc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOD_Index','module',90,0),('a57a0727-357b-7b2e-cb0b-541c5555920f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOR_Reports','module',89,0),('a66505b6-b2e4-0a6f-85c4-542d33d1e4a5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','jjwg_Maps','module',90,0),('a675cb02-e8e7-7db1-badd-541c55d0e396','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOR_Reports','module',90,0),('a6a054fb-1c0a-91bb-aabe-542d331ce724','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Leads','module',90,0),('a6b3e734-b5dd-d84b-d775-542d3360115a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOW_WorkFlow','module',90,0),('a6c4cb1d-f66e-82cf-aad2-542d3341a4dc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOD_Index','module',90,0),('a76eca1b-d788-9ef3-c68b-541c55b2293f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOR_Reports','module',90,0),('a8210f92-3388-6114-446f-541c5576c03c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','jjwg_Maps','module',90,0),('a844f43c-9770-ec7e-012e-541c55cfafb9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOR_Reports','module',90,0),('a8489cf2-acdc-8ce8-0e7d-542d33ba91ad','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Leads','module',90,0),('a8d99de2-304a-93bc-c6db-542d332603ba','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOW_WorkFlow','module',90,0),('a8f3fd71-ec0c-f202-e414-542d33edda5c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOD_Index','module',90,0),('a91cd909-3ccb-3a36-3c7d-541c559862eb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOR_Reports','module',90,0),('a9a296a0-6115-65ca-198f-542d3345ce14','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Leads','module',90,0),('a9f6a2db-098a-bb28-360b-541c5596ded9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOR_Reports','module',90,0),('aa35f6d5-c88f-c0a5-b2dd-542d3311abfa','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOW_WorkFlow','module',90,0),('aa89b8bd-df13-7388-e268-542d332510e1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOD_Index','module',90,0),('aac45bbc-0360-737c-c776-541c5579f144','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOR_Reports','module',90,0),('ab443559-525a-319d-fec1-542d33886a81','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','ProspectLists','module',89,0),('ab545f0a-6f22-0e00-9a99-541c5584df2f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Campaigns','module',89,0),('ab6b4be6-de61-3f85-4c1a-542d3336cbd0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Leads','module',90,0),('ab970f95-ccac-56b1-2641-541c55bfc44f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOR_Reports','module',90,0),('abd03798-1ade-9709-7013-542d33865ee0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOW_WorkFlow','module',90,0),('ac2a5c2c-77bf-701d-a875-541c55295b0c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Campaigns','module',90,0),('ac42b55b-0044-7913-4040-542d33e62ec5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOD_Index','module',90,0),('acb7e278-dd3e-5b46-73e2-542d339de835','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','ProspectLists','module',90,0),('acf86ad7-3b9f-8b9a-421d-541c5572b16b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Campaigns','module',90,0),('adbd0982-ca8b-c300-b446-541c55ba054e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Campaigns','module',90,0),('adfc350a-b41a-8faf-afc1-542d3354fc56','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','ProspectLists','module',90,0),('ae8c29c9-5432-7725-1fab-541c559a2c26','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Campaigns','module',90,0),('af535297-703f-df0d-2575-541c550d15df','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Campaigns','module',90,0),('b0273420-2747-edbd-d354-541c5512bc0e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Campaigns','module',90,0),('b0e10089-90c0-e219-76e1-541c55bdc38e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','FP_Event_Locations','module',89,0),('b0f4aa9f-9eca-b574-54a1-541c550405f1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Campaigns','module',90,0),('b253f597-ae21-23d9-3725-542d337a72e4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','ProspectLists','module',90,0),('b36517b4-3207-6d74-b06f-542d33d2a39e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','EmailTemplates','module',89,0),('b4fb61e4-033f-5175-36e8-542d33a2d101','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','EmailTemplates','module',90,0),('b5e0654b-9e7c-cbd4-9514-542d336f1297','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','ProspectLists','module',90,0),('b63905f1-330b-9157-15da-542d3344363f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','EmailTemplates','module',90,0),('b6da0f30-2bae-8d6d-1b84-541c55eae1ac','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','jjwg_Maps','module',90,0),('b779ba14-50c1-3892-c7cf-542d33eb7599','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','ProspectLists','module',90,0),('b7c71921-b677-6d0c-4f78-542d33940fb2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','EmailTemplates','module',90,0),('b87eda5f-e58b-8462-3ed5-542d33d401a4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','FP_events','module',89,0),('b9057e13-3690-a113-38dc-542d334c4bbd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','ProspectLists','module',90,0),('b90a090d-2d70-b099-5f83-542d330adae7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','EmailTemplates','module',90,0),('b92de4cb-792c-51d6-4103-541c55c9dfd5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','EAPM','module',89,0),('b9dcd600-c085-5f0f-b705-542d3353ba39','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','FP_events','module',90,0),('ba0b1264-1e93-cad9-43e5-541c55c38fbe','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','EAPM','module',90,0),('ba163ebf-e028-b49d-0b17-541c5578a971','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','ProspectLists','module',89,0),('ba82f62c-07e8-41a8-15fe-542d332f5948','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','EmailTemplates','module',90,0),('ba9c8e1c-b2d4-e43b-627a-542d33ca6ac9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','ProspectLists','module',90,0),('bae38e37-65b1-b54f-1a0f-541c5527f921','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','EAPM','module',90,0),('baf3031c-4e94-a24f-1d76-541c55bc59d6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','ProspectLists','module',90,0),('bb2ba67d-e41c-cc4a-7258-542d33756282','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','FP_events','module',90,0),('bbacf0d8-49de-ea7c-473b-541c55f1ce82','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','EAPM','module',90,0),('bbc5c5d7-8f49-b8fd-bd4c-541c553bbbd4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','ProspectLists','module',90,0),('bbd50d60-8af3-6cee-926f-542d33d795c9','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','jjwg_Maps','module',90,0),('bc710ee1-69f6-69cb-e00b-541c5535bd87','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','EAPM','module',90,0),('bc926cfe-b4b0-cc35-77c5-541c55786a98','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','ProspectLists','module',90,0),('bccf629c-e22a-42a7-2583-542d33e2fba0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','EmailTemplates','module',90,0),('bce30698-fbe0-4e4d-9668-542d33611bf2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','FP_events','module',90,0),('bce6fc58-596a-b400-6ed1-542d33913513','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_Product_Categories','module',89,0),('bd463e37-c0f1-74c6-29b3-541c554bca49','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','EAPM','module',90,0),('bd5df169-0619-0ded-cb7f-541c55d83a25','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','ProspectLists','module',90,0),('be13eeef-77f3-f0f0-1c27-541c551b0329','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','EAPM','module',90,0),('be32c9c3-4d74-ef29-da18-541c55db7e7e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','ProspectLists','module',90,0),('be4ef19c-e598-82b8-d5eb-542d335e2de5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','FP_events','module',90,0),('be603d74-1e59-fee3-8f10-542d33930998','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','EmailTemplates','module',90,0),('bec60f29-bee6-624d-e809-541c55135704','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','FP_Event_Locations','module',90,0),('bef28a4a-bce3-e0ba-cb4a-541c559dd9af','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','EAPM','module',90,0),('bf052047-206d-f91a-57fb-541c55dc1842','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','ProspectLists','module',90,0),('bfea9d8b-7a37-5149-6865-542d33fc45a8','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','FP_events','module',90,0),('bfeeb892-9032-26d1-9a26-541c55fbeb68','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','ProspectLists','module',90,0),('c12cf5fb-4ac5-65fe-513a-542d33e1471b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOW_Processed','module',89,0),('c16eb66b-067b-b802-7f40-542d332cfa0d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','FP_events','module',90,0),('c1f6e034-5ec1-211a-c5a3-542d33c1e63c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_Product_Categories','module',90,0),('c2afb35e-956e-f2d1-e6bd-542d3335d975','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOW_Processed','module',90,0),('c2deffc5-8e7f-0266-c00d-542d33b5bb68','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','FP_events','module',90,0),('c368c291-d122-70a7-0bbc-542d331238d7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_Product_Categories','module',90,0),('c3fc435d-392b-d180-47e8-542d33f23370','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Cases','module',89,0),('c46fdecd-e201-5f2c-b9d6-542d3339ca80','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOW_Processed','module',90,0),('c4bf1e1b-bbe9-56ca-ab85-542d333d1867','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_Product_Categories','module',90,0),('c54c0606-13fd-0253-fc04-541c55418d61','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','jjwg_Maps','module',90,0),('c5874802-443d-ae2e-fd8f-542d33584e87','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Cases','module',90,0),('c5f4e651-df0b-97f5-e5db-542d33c9a3d0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOW_Processed','module',90,0),('c64ec89a-1eab-6d17-1fd4-542d33e2078d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_Product_Categories','module',90,0),('c672ec2f-6964-6f7e-7989-542d336c975e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Notes','module',89,0),('c6cec9e4-31db-8726-fb03-541c559f2379','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Prospects','module',89,0),('c722d590-bc2c-edb8-e30d-542d33b160cf','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Cases','module',90,0),('c7855bfa-125d-556f-1e95-542d332b300d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOW_Processed','module',90,0),('c7a31096-4d76-799c-a605-542d337c9e23','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_Product_Categories','module',90,0),('c7bee7e1-84e1-d08c-110c-541c556818c0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Prospects','module',90,0),('c7ec170b-a380-6374-bb9c-542d33eed382','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Notes','module',90,0),('c88e4f8e-f4c5-e3fe-87cd-541c55b0d33b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','SecurityGroups','module',89,0),('c894c7bb-9b11-6851-ce07-541c5562e939','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Prospects','module',90,0),('c8c5d313-49e6-2025-9045-542d33573f97','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Cases','module',90,0),('c90c974b-70e1-5a7e-91db-542d33bf731d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_Product_Categories','module',90,0),('c92fc053-701e-019f-9beb-542d33771a1c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOW_Processed','module',90,0),('c93a2a3e-90d2-3922-7971-542d330fee23','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Notes','module',90,0),('c97037fe-0a9b-35b7-79b5-541c55c67242','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Prospects','module',90,0),('c97e47ed-f67d-c4d5-0d7d-541c55f61e55','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','SecurityGroups','module',90,0),('ca490a69-895a-632e-36a8-541c55d49f59','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Prospects','module',90,0),('ca5caa6d-8e2b-3bd0-5ef2-541c552df301','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','SecurityGroups','module',90,0),('ca5ddd88-e0b9-dc97-ff94-542d33656ee0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_Product_Categories','module',90,0),('ca8e372f-9a67-bb2b-e8ae-542d337b4aa5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Cases','module',90,0),('ca99ddc2-58e9-2281-1cc9-542d332c09b3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOW_Processed','module',90,0),('cb2c94dd-f55c-17c7-45d2-541c55c36504','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Prospects','module',90,0),('cb393f7c-550a-0978-3144-541c5517bbc7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','SecurityGroups','module',90,0),('cb6f5cf1-458e-f7b6-28c3-542d3395f325','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Notes','module',90,0),('cb8408fd-3307-9bbc-6980-541c55aa5ea0','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','FP_Event_Locations','module',90,0),('cc062be8-5b00-e855-a891-541c55eaf7a7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Prospects','module',90,0),('cc1722ce-f8ec-f847-3a10-541c5576d607','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','SecurityGroups','module',90,0),('cc2ab1bf-e015-de0d-e4be-542d33cba281','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Cases','module',90,0),('cc423a51-5e11-fd64-2668-542d3323017e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOW_Processed','module',90,0),('ccd02d48-306b-a6f9-a6b3-542d33a16947','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Notes','module',90,0),('ccd0eb84-ce25-a5e3-0024-541c55f8ae4a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Prospects','module',90,0),('ccf02dca-4c4f-36c9-24ad-541c5569a368','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','SecurityGroups','module',90,0),('cd2105c2-1fe2-5e01-f4a3-542d331eb1b1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Prospects','module',89,0),('cd9c7b7b-b3ee-8773-97f7-542d33e4e685','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Cases','module',90,0),('cdcc7708-4627-d193-83f0-541c55947a9e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','SecurityGroups','module',90,0),('ce5d2560-2816-3b46-e29b-542d33fec375','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Notes','module',90,0),('cea6fddf-23c4-6255-af02-541c55ca0cee','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','SecurityGroups','module',90,0),('cf1d3335-2078-5c02-a5be-542d335a6178','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Cases','module',90,0),('cfd5e614-58b3-d892-d39f-542d33629dd1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Notes','module',90,0),('d001d9fe-9f93-3a5d-109d-541c55ded570','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOW_WorkFlow','module',89,0),('d0374b0e-f9f8-f195-ca26-542d3364161a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','FP_Event_Locations','module',89,0),('d09c8fdf-452a-ff63-5fb2-542d33084902','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Prospects','module',90,0),('d0e90c49-ab73-07eb-a1e3-542d338f2b1b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','jjwg_Maps','module',90,0),('d0ec26c9-9bc9-8d02-67e1-541c558f0937','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOW_WorkFlow','module',90,0),('d11c8cbb-5744-9c44-ed46-542d3337ea6d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Notes','module',90,0),('d1b843b6-0363-2258-947e-541c55a27794','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOW_WorkFlow','module',90,0),('d1c30de6-b16b-8c95-3550-542d33264593','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','FP_Event_Locations','module',90,0),('d2500b12-5190-98ae-039a-541c5575aab3','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','jjwg_Maps','module',90,0),('d2928e21-68d4-a66f-4866-541c55dc9faf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOW_WorkFlow','module',90,0),('d326fddf-4a31-213d-3007-542d3307667b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','FP_Event_Locations','module',90,0),('d330085b-6b12-d636-2421-541c553fd8a7','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Contacts','module',90,0),('d33d5b45-ed95-b6f9-7b88-542d33232414','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Prospects','module',90,0),('d3638a8a-eb98-b594-21c5-541c55ef8918','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOW_WorkFlow','module',90,0),('d3b298e8-fd03-cc98-2879-541c5547af27','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','EmailMarketing','module',89,0),('d42d1560-c6ac-8457-e9c1-541c55a1abc5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOW_WorkFlow','module',90,0),('d4877a87-2702-a323-77ec-541c551897cf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','EmailMarketing','module',90,0),('d4b21bd0-617b-4471-e1c8-542d330750ca','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Prospects','module',90,0),('d507f998-0064-82b6-5f63-541c55ee6c9c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOW_WorkFlow','module',90,0),('d53a46bc-1c4f-e0b0-eeed-542d335d7c05','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','FP_Event_Locations','module',90,0),('d54aa8dc-5ac4-1b3d-01c1-541c55e1b038','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','EmailMarketing','module',90,0),('d5d44763-c2b2-2aa1-07df-541c5592c093','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOW_WorkFlow','module',90,0),('d611f9a4-94ea-2865-b482-542d333512b4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Prospects','module',90,0),('d6210e60-c9b6-1a6d-71ef-541c55b246e8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','EmailMarketing','module',90,0),('d63fbf32-c1ba-6f59-cfad-541c55042945','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOD_IndexEvent','module',89,0),('d6e730cd-b094-3f13-999f-541c55c9aab6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','EmailMarketing','module',90,0),('d705c888-dc99-fd71-6c5d-542d330faf5e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','FP_Event_Locations','module',90,0),('d717f08b-c6fc-199b-57fb-541c5518f89a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOD_IndexEvent','module',90,0),('d7a00093-518b-8b74-5904-542d33e0f159','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Prospects','module',90,0),('d7c7e1f4-3908-3d89-556e-541c55a567f8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','EmailMarketing','module',90,0),('d7e904c0-9f84-57b9-fea4-541c55b7e5a2','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOD_IndexEvent','module',90,0),('d87407aa-63cf-ae32-9bb7-541c55e5024e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','FP_Event_Locations','module',90,0),('d8a57f86-42b9-bf66-552f-542d335e8fe5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','FP_Event_Locations','module',90,0),('d8b12fc3-4c18-8b25-ac6d-541c5527fa4c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','EmailMarketing','module',90,0),('d8be1c8a-5a33-002d-9631-541c556bb129','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOD_IndexEvent','module',90,0),('d925deb4-c5ac-ca35-1ea0-542d33121a07','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOS_Products','module',89,0),('d9343d8c-4048-eccb-4425-542d3359791f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Prospects','module',90,0),('d985cc82-2969-6add-37a9-541c5516e8f6','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOD_IndexEvent','module',90,0),('d9945c5d-ee9f-7e73-2846-541c5546eb54','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','EmailMarketing','module',90,0),('da54deb4-1f40-60cb-cdd4-541c55bf6223','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOD_IndexEvent','module',90,0),('da835fcd-c53d-5354-fcad-542d33342192','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','FP_Event_Locations','module',90,0),('da8c598a-53fd-0bb0-f91d-542d33aff53d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Prospects','module',90,0),('daa6aaa7-5eb3-1f1f-0294-542d33c419f0','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOS_Products','module',90,0),('db29c4fd-276d-ebfa-6eae-541c5585285d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOD_IndexEvent','module',90,0),('dbdbe207-4e7b-efcc-f65b-542d3363a579','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','FP_Event_Locations','module',90,0),('dbefa2b5-74f9-c732-d6e1-541c551942a5','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOD_IndexEvent','module',90,0),('dc1a141f-bec5-5ebd-d300-542d338286d6','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOS_Products','module',90,0),('dc8aa236-ddb0-314c-34dc-542d33ea40fd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Calls','module',89,0),('dd86e3bc-404c-69d3-be1a-542d339dab73','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Calls_Reschedule','module',89,0),('dde8e420-f7ef-c322-080d-542d33f412ab','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOS_Products','module',90,0),('de0a10af-68ac-079f-677a-541c55b56e70','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOW_Processed','module',89,0),('de2d63bb-b818-1665-3b28-542d33e9b691','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Calls','module',90,0),('dee62300-c5e0-8c0c-c3ae-541c5552843c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOW_Processed','module',90,0),('df0468d4-c318-a689-f6cc-542d334bc86a','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Calls_Reschedule','module',90,0),('df6b0e54-af1d-430e-4fd0-541c55b21a2f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','jjwg_Maps','module',90,0),('df6cd2a1-de02-1379-b436-542d33b47c7d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Calls','module',90,0),('df97a0ff-22ea-b78a-3732-542d33f12dbd','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOS_Products','module',90,0),('dfb8d28a-628b-0e7e-02e6-541c55ef5735','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOW_Processed','module',90,0),('e0740ca9-82ad-1563-efde-541c558b7f00','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Accounts','module',89,0),('e089a710-4f37-dea9-bccc-542d335dfded','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Calls_Reschedule','module',90,0),('e08b3723-ebf7-4c25-3c9b-541c55608b81','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOW_Processed','module',90,0),('e0b92041-3fa3-5fc6-0700-542d33ec818f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Calls','module',90,0),('e1521450-0eec-0d66-61ce-541c5563c705','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOW_Processed','module',90,0),('e155a764-7105-a4dd-76fa-542d33ca317e','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','AOS_Products','module',90,0),('e1f081e0-20fa-37f5-c35f-542d335f6d5b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Calls_Reschedule','module',90,0),('e220fbd5-5b42-d319-7dd1-541c5560f44d','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOW_Processed','module',90,0),('e27590ce-1709-09e7-f41b-542d339166c4','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Calls','module',90,0),('e2ac2a0e-8b4b-13b6-c1d0-542d333e830b','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','AOS_Products','module',90,0),('e3050cde-e944-a794-2eb1-541c554ec322','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOW_Processed','module',90,0),('e3d0ceae-bcf6-0870-0fe1-542d3357c01c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Calls_Reschedule','module',90,0),('e3ed1d70-b3f1-e1ae-ebe9-541c550e321b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOW_Processed','module',90,0),('e3fc014f-8fb3-bc82-0ac7-542d33c81a90','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Calls','module',90,0),('e422cf90-cf67-279b-0319-541c55c0a36b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','AOD_Index','module',89,0),('e429ae04-7676-8d39-e318-542d3373c0f2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','AOS_Products','module',90,0),('e507d8a9-c7f4-bc4b-bc6a-541c5569f75b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','AOD_Index','module',90,0),('e52afdc8-0d6e-31a2-5fdd-542d333448c7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Calls_Reschedule','module',90,0),('e54fca9c-03d8-e198-4c52-542d33800b62','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Calls','module',90,0),('e560061d-65c1-d098-c7ec-542d33142665','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','EmailMarketing','module',90,0),('e5ba0715-44de-7065-ea11-541c559540e1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','FP_Event_Locations','module',90,0),('e5e16770-6ccf-d6aa-2518-541c5505b524','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','AOD_Index','module',90,0),('e6a6c430-b58a-a787-e6b2-542d3379c7b1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Calls','module',90,0),('e6ad9638-4ca2-c3e9-594f-541c55758f8c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','AOD_Index','module',90,0),('e778bfae-e48c-93de-4690-542d332c60cc','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Calls_Reschedule','module',90,0),('e77c1451-e8f1-52cf-3671-541c558bd1f8','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','AOD_Index','module',90,0),('e84da446-0efd-dcc5-846b-541c55029757','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','AOD_Index','module',90,0),('e8d77426-6e16-96db-b182-542d33c7aa30','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Bugs','module',89,0),('e8e0bb1a-e9dc-d037-cd45-542d339a09ae','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Calls_Reschedule','module',90,0),('e91b44a4-b717-2134-05f3-541c557d2787','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','AOD_Index','module',90,0),('e9e846d1-4186-da50-45cc-541c553c54ef','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','AOD_Index','module',90,0),('ea300a4f-9940-c2cd-9b2f-541c55bbcedf','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','FP_events','module',90,0),('ea70b388-6cdd-d9cd-a9b6-542d33cd5eee','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','Bugs','module',90,0),('eb62163f-1c9c-ee92-3d1e-542d33e6947c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','AOP_Case_Events','module',89,0),('ebe296cb-d0c1-dc44-1d4d-542d3325cad1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','Bugs','module',90,0),('ece32f9b-6fc1-f8ad-0d4a-542d33974360','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','EmailMarketing','module',89,0),('ed0fc7ef-b4fd-fdc5-b10d-542d336fec7d','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','AOP_Case_Events','module',90,0),('ed2c4565-e541-d902-cfa9-542d335b8f66','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','Bugs','module',90,0),('ed850d61-1a46-e9cc-d396-541c55a27a63','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Calls_Reschedule','module',89,0),('ee1d0c5d-be86-89da-ad94-541c55fc958a','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Accounts','module',90,0),('ee2eb7be-7e5c-e30b-a696-542d33b75582','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','view','EmailMarketing','module',90,0),('ee64e017-a7af-004d-df64-541c55f7473c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Calls_Reschedule','module',90,0),('ee83ecf0-3ebb-7e77-2cca-542d33f5a3ae','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','Bugs','module',90,0),('ef0e902f-c325-4816-8b34-542d33935a5f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','AOP_Case_Events','module',90,0),('ef58c83d-177c-6b38-bb6d-541c552c5e38','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Calls_Reschedule','module',90,0),('ef671ae1-47cd-c949-af26-542d33eb5f64','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','list','EmailMarketing','module',90,0),('f034c6ee-ad7c-7c39-b7b5-541c55ca3727','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Calls_Reschedule','module',90,0),('f0b18f21-14ae-fba6-ca50-542d33dd8caa','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','AOP_Case_Events','module',90,0),('f0c95aa2-9d73-da3d-ce27-541c55e010cb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','Contacts','module',89,0),('f0d710d5-578b-108c-fdb3-542d33b4ddf2','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','import','Bugs','module',90,0),('f116ea92-ce7d-53ba-7b0c-541c55db49b4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','delete','Calls_Reschedule','module',90,0),('f1ae857c-8393-9adc-af68-541c5523f1cb','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','Contacts','module',90,0),('f1b5f30c-fc46-f270-d261-541c551fa4c1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','access','FP_events','module',89,0),('f1ec509c-d58b-84de-ff2b-542d3378b4c7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','edit','EmailMarketing','module',90,0),('f1f25a84-9667-0f94-1606-541c55ac28e9','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','Calls_Reschedule','module',90,0),('f2602632-9e7e-b950-42eb-542d33c30453','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','export','Bugs','module',90,0),('f282444c-c200-5b08-1f8d-541c55840c38','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Contacts','module',90,0),('f297319f-4793-479e-e7d8-541c559127ee','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','view','FP_events','module',90,0),('f2cd198e-9572-25f1-8e27-541c5591f97e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','Calls_Reschedule','module',90,0),('f2e70e6c-4aef-09c4-db67-541c55a4eda1','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','import','FP_Event_Locations','module',90,0),('f3097fb9-c224-e937-4f62-542d3365f001','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','access','Emails','module',89,0),('f3346bb7-50c2-1ffa-4fc1-542d33aaa9c7','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','AOP_Case_Events','module',90,0),('f3617b5b-32cb-98be-137d-541c55b8a0de','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','edit','Contacts','module',90,0),('f3638e7b-7009-d783-d4a5-541c55a9b042','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','FP_events','module',90,0),('f363bb07-12e3-9674-cdb0-542d33745147','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','delete','EmailMarketing','module',90,0),('f3a28741-4725-3e27-ee61-541c552a8f6b','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','massupdate','Calls_Reschedule','module',90,0),('f3eb4534-baeb-8100-08ac-542d33b4321f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','','massupdate','Bugs','module',90,0),('fbb107f1-87de-ee2f-d4bf-541c55347389','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','list','Accounts','module',90,0),('ffda0573-a626-b449-d8d2-541c550b4431','2014-09-19 16:12:03','2014-09-19 16:12:03','1','','export','FP_Event_Locations','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2014-10-02 11:13:49','2014-10-02 11:13:49','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('16acd424-42fb-6b38-fdf5-54229e505a8e','Gmail / G-Calendar Integration','2014-09-24 10:33:57','2014-09-24 10:45:40','1','1',NULL,0,'',NULL,1,'dc599ce3-31ac-dc8a-5a40-54229e47055d','ProjectTask'),('1e03cedc-8f34-1b3d-bada-5422a365d924','Dev New Opportunity create quote','2014-09-24 10:58:10','2014-09-24 12:52:56','1','1',NULL,0,'',NULL,1,'df3213a3-f06e-75fc-d05c-5422a3e800cb','ProjectTask'),('2164ef95-48fc-1f63-675e-542ad04b236f','Set up rolling release environment','2014-09-30 15:45:26','2014-10-01 14:16:51','1','1',NULL,0,'',NULL,1,'c535e5c0-1f7c-880a-b08d-542ad0e88962','ProjectTask'),('258b0796-7bca-448c-60d0-5424432dc610','Actions & CRM Update','2014-09-25 16:30:53','2014-09-29 13:02:37','1','1',NULL,0,'',NULL,1,'d8ab24c5-be04-d214-d964-5424432272ca','Meetings'),('2635af21-8dfe-c624-9be4-5422ad1ade39','Clean Data SQL Import','2014-09-24 11:40:44','2014-09-25 14:11:31','1','1',NULL,0,'',NULL,1,'e3c64ece-4198-0c52-90e3-5422ad1ec68a','ProjectTask'),('349e3444-56f0-16ea-b55d-54229ddb22a9','SparkCRM Phase 1','2014-09-24 10:29:57','2014-09-30 16:02:35','1','1',NULL,0,'',NULL,1,'26143743-1b4b-8b55-b53f-54229db264b6','Project'),('39cbc32c-b528-b7be-990f-5422aea92ec1','SparkCRM Power Sales Overview','2014-09-24 11:43:09','2014-09-24 11:43:09','1','1',NULL,0,NULL,NULL,1,'60240c6b-f448-b6fe-21f4-5422ae7f2509','ProjectTask'),('3f789a9f-7772-d4ee-6e6c-542ad380ad24','SugarCRM 2 SparkCRM Data migration','2014-09-30 15:58:17','2014-09-30 15:58:17','1','1',NULL,0,NULL,NULL,1,'f130a4a0-699a-607a-495b-542ad3c049af','ProjectTask'),('4884446a-3bfc-1b46-5713-5422dee2e055','Maintenance CRM','2014-09-24 15:07:09','2014-09-24 15:07:09','1','1',NULL,0,NULL,NULL,1,'14a6f2bd-9236-5dce-58c2-5422dea2428c','Tasks'),('4d10b14e-eed6-9a36-ce59-542d0eb698f0','Support Contract Notice in Zendesk','2014-10-02 08:35:53','2014-10-02 08:36:32','1','1',NULL,0,'',NULL,1,'112ec298-1510-a9be-d282-542d0ee2a4f4','ProjectTask'),('6138c218-99ea-4730-7ff3-54229ecae7b9','SparkCRM Email Integration','2014-09-24 10:36:32','2014-09-24 10:36:32','1','1',NULL,0,NULL,NULL,1,'31182203-be4e-594d-17e1-54229eca1a12','ProjectTask'),('678569ae-5253-5ed1-7f10-5422ec1484d9','Target and Target list Export','2014-09-24 16:08:46','2014-09-30 15:59:09','1','1',NULL,0,'',NULL,1,'4c700a56-9723-1489-46fb-5422eccf1af9','ProjectTask'),('6c329d16-3f28-3907-4b20-5424394385eb','Check Collabspot','2014-09-25 15:48:37','2014-09-25 15:48:37','1','1',NULL,0,NULL,NULL,1,'2b621171-9725-75ad-7bf0-5424396190fb','Notes'),('819a9579-9736-8284-9471-54297258c9b3','SparkCRM Presentation G-Drive','2014-09-29 14:54:14','2014-09-29 14:54:14','1','1',NULL,0,NULL,NULL,1,'3973ec73-c019-cb74-cc2f-5429727b1b44','Notes'),('8379afe1-badf-62c9-ada7-5422c801a6dc','SugarCRM2SparkCRM-Migration','2014-09-24 13:33:08','2014-09-25 14:11:15','1','1',NULL,0,'',NULL,1,'4dd38679-d068-df6f-01b9-5422c8e309ba','Notes'),('84201035-5f83-7c69-ddb4-542ac8d4b12d','SparkCRM Roll out Phase I','2014-09-30 15:14:01','2014-09-30 15:14:01','1','1',NULL,0,NULL,NULL,1,'668ab70a-a70c-0be8-58e1-542ac8105f84','Project'),('8a1d1791-0162-7a23-fca1-542bde02ae11','Production Server Build','2014-10-01 10:59:53','2014-10-01 10:59:53','1','1',NULL,0,NULL,NULL,1,'572b6731-c167-2302-7085-542bded7b45b','ProjectTask'),('8a1f09b1-2098-2078-ddc7-542ad37dba1b','SparkCRM Phase 2','2014-09-30 16:01:39','2014-09-30 16:01:39','1','1',NULL,0,NULL,NULL,1,'64becb37-b6eb-b61b-362d-542ad37aa7f7','Project'),('8e415163-806d-2f20-3164-5422a08afbf6','SparkCRM Usage demo - Internal','2014-09-24 10:42:48','2014-09-30 15:49:07','1','1',NULL,0,'',NULL,1,'5ec27a30-f1cc-f646-333e-5422a09c14a4','ProjectTask'),('8f4c51a5-f242-1dd2-6018-5422ac062158','Account Type list','2014-09-24 11:36:22','2014-09-24 11:36:22','1','1',NULL,0,NULL,NULL,1,'5d9cd176-2862-3ae2-27f3-5422ac766259','ProjectTask'),('90ec12af-d4fb-0ab6-1e2e-5424217f21e3','Preliminary Tests out OK','2014-09-25 14:07:32','2014-09-25 14:07:32','1','1',NULL,0,NULL,NULL,1,'5372450e-6a31-08fa-dd62-542421a43c4c','Notes'),('95e43d52-4fba-c753-81b4-542ad08d4301','SparkCRM Usage Testing','2014-09-30 15:46:55','2014-09-30 15:46:55','1','1',NULL,0,NULL,NULL,1,'49612d85-fc66-6d66-e8f6-542ad02c4061','ProjectTask'),('97f363df-71e1-9e98-255e-5422a023680c','SparkCRM Presentation','2014-09-24 10:44:33','2014-09-29 14:55:42','1','1',NULL,0,'',NULL,1,'685a7dba-60e7-ba01-1ff2-5422a043dca6','ProjectTask'),('9aa924de-8c3c-05e7-0d7f-54229f2aa329','Customer Account Creation','2014-09-24 10:39:18','2014-09-26 13:32:16','1','1',NULL,0,'',NULL,1,'6b15b4e5-ac86-f342-f581-54229fdbc843','ProjectTask'),('a0c000c6-7562-a06a-d05c-542ad2b7a074','SugarCRM Closedown','2014-09-30 15:54:09','2014-09-30 16:17:15','1','1',NULL,0,'',NULL,1,'acdb5e49-2a2c-e071-bd77-542ad226468d','ProjectTask'),('a2f7bca7-e6a7-b199-0794-542acf44d4a0','SparkCRM Usage Testing','2014-09-30 15:43:49','2014-09-30 15:43:49','1','1',NULL,0,NULL,NULL,1,'54c060ee-7d1f-833a-457f-542acff05473','ProjectTask'),('a9f29401-4aa3-2c46-01b5-542aca5f579b','Set up rolling release environment','2014-09-30 15:23:26','2014-09-30 15:23:26','1','1',NULL,0,NULL,NULL,1,'61ad8d7e-fd33-bb02-2aa6-542aca2c205c','ProjectTask'),('af9f0166-52bb-d36c-2dd1-5422a3cb0fa0','Dev iteration of Quotes and Opps','2014-09-24 10:56:35','2014-09-30 16:17:15','1','1',NULL,0,'',NULL,1,'816d39be-68a5-5bce-5a24-5422a35f649e','ProjectTask'),('b5e01a53-b6a1-6110-3e06-5422dfc43394','Jira Time and Projects Est.','2014-09-24 15:12:37','2014-09-25 16:32:09','1','1',NULL,0,'',NULL,1,'8966d9dc-b5c3-12eb-9afd-5422df54e2d2','Tasks'),('b5e52cb8-178c-7ef8-cb8f-5422ca16c355','Dev data import testing','2014-09-24 13:41:57','2014-09-25 14:09:17','1','1',NULL,0,'',NULL,1,'9c93251f-eba8-d8f8-5338-5422caebd456','ProjectTask'),('b9210d4c-a10d-8bbd-d5c6-5422a1bb3e30','SugarCRM Data Deduplication','2014-09-24 10:48:13','2014-09-25 09:48:05','1','1',NULL,0,'',NULL,1,'cff85cf3-45f6-0028-b255-5422a1443e67','ProjectTask'),('bafba752-7e78-e91e-dbe3-542ad25edeb6','SparkCRM GO LIVE','2014-09-30 15:55:55','2014-09-30 15:55:55','1','1',NULL,0,NULL,NULL,1,'6a78b4be-00ed-eda3-8e3e-542ad2f49337','ProjectTask'),('bde855f3-3497-17ee-9832-5422a5876c5a','Quote to Opportunity update','2014-09-24 11:04:26','2014-09-30 16:17:15','1','1',NULL,0,'',NULL,1,'89ed47bd-36be-f31a-ff5f-5422a51627ca','ProjectTask'),('e77c2fb6-79e0-55b3-94d6-542586eb9000','Set up SparkCRM Development Environment','2014-09-26 15:31:50','2014-09-26 15:31:50','1','1',NULL,0,NULL,NULL,1,'99ac1fc2-953d-5911-a42a-542586077869','ProjectTask'),('e80dfd3b-0dde-59d9-e04f-5422e0857db1','Gmail Terms review','2014-09-24 15:15:17','2014-09-30 16:17:15','1','1',NULL,0,'',NULL,1,'ab6cc9f6-c20b-6e36-d1a8-5422e07498a8','ProjectTask'),('f36966fa-9339-6fa9-2e93-542d0d08af13','SparkCRM Future Backlog','2014-10-02 08:31:48','2014-10-02 08:31:48','1','1',NULL,0,NULL,NULL,1,'cd4bf529-dcef-ded5-cb9d-542d0d8aa44c','Project');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.18'),('MySettings','tab','YTozMTp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjk6IkNhbXBhaWducyI7aToxMDtzOjU6IkNhbGxzIjtpOjExO3M6ODoiTWVldGluZ3MiO2k6MTI7czo1OiJUYXNrcyI7aToxMztzOjU6Ik5vdGVzIjtpOjE0O3M6MTI6IkFPU19JbnZvaWNlcyI7aToxNTtzOjEzOiJBT1NfQ29udHJhY3RzIjtpOjE2O3M6NToiQ2FzZXMiO2k6MTc7czo5OiJQcm9zcGVjdHMiO2k6MTg7czoxMzoiUHJvc3BlY3RMaXN0cyI7aToxOTtzOjk6IkZQX2V2ZW50cyI7aToyMDtzOjE4OiJGUF9FdmVudF9Mb2NhdGlvbnMiO2k6MjE7czoxMjoiQU9TX1Byb2R1Y3RzIjtpOjIyO3M6MjI6IkFPU19Qcm9kdWN0X0NhdGVnb3JpZXMiO2k6MjM7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO2k6MjQ7czo3OiJQcm9qZWN0IjtpOjI1O3M6OToiamp3Z19NYXBzIjtpOjI2O3M6MTI6Impqd2dfTWFya2VycyI7aToyNztzOjEwOiJqandnX0FyZWFzIjtpOjI4O3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7aToyOTtzOjExOiJBT1JfUmVwb3J0cyI7aTozMDtzOjEyOiJBT1dfV29ya0Zsb3ciO30='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Leads','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('MySettings','disable_useredit','no'),('MySettings','hide_subpanels','YTowOnt9');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT '0',
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('32fb1994-0c63-af43-52d4-5422999a007e','39606ceb-d730-894e-f525-541c5709c35a','1bfe725f-a503-ba38-c553-542299c5a790','Users',1,0,'2014-09-24 10:13:20','2014-09-24 10:13:20',0),('39412432-19e4-b4d8-4914-541c57a061f4','39606ceb-d730-894e-f525-541c5709c35a','1','Users',1,0,'2014-09-19 16:20:50','2014-09-19 16:20:50',0),('ee37ff06-1ad1-112d-6625-542d33b4bea1','ef4f5373-3307-ee1e-ec34-542d33f06c05','1','Users',1,0,'2014-10-02 11:15:53','2014-10-02 11:15:53',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('39606ceb-d730-894e-f525-541c5709c35a','rtimmis@wifispark.com','RTIMMIS@WIFISPARK.COM',0,0,'2014-09-19 16:20:50','2014-09-19 16:20:50',0),('5c6b4ff4-3dd8-dec0-fa47-542ad7b6ae3d','rtimmis@wifipsark.com','RTIMMIS@WIFIPSARK.COM',0,0,'2014-09-30 16:15:28','2014-09-30 16:15:28',0),('5e6ef63f-039b-b2a0-4e6c-542ad74de5d0','bkelly@wifispark.com','BKELLY@WIFISPARK.COM',0,0,'2014-09-30 16:15:28','2014-09-30 16:15:28',0),('ef4f5373-3307-ee1e-ec34-542d33f06c05','rtimmis@wifispark.com','RTIMMIS@WIFISPARK.COM',0,0,'2014-10-02 11:15:53','2014-10-02 11:15:53',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('15a90b2d-645b-c6de-fd9c-542d33db2cb3','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('195fd9ea-bf12-8eba-9a29-542d336fe3a5','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('1a8f0d45-9edb-0ea2-d9ce-541c55ce2459','2013-05-24 14:31:45','2014-09-19 16:12:03','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('1cd00ea6-999d-3ff3-75f5-541c55137d70','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>',0,NULL,NULL,NULL),('2918251f-b32d-d63f-99f2-542d338986b1','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,NULL),('2c31d28e-e5db-1909-719c-542d338f1a63','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL),('2f8adc06-8ec8-7204-b4fe-542d334d7795','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,NULL),('33b4a861-ca50-0fdc-51fb-542d332a175c','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('3751cfa4-61d7-c332-b72d-542d3341888f','2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('3d56009b-e388-e749-be80-541c55bc8143','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,NULL),('4a4e5a41-aad5-358e-b22a-542d33309e1d','2013-05-24 14:31:45','2014-10-02 11:12:53','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'email'),('6b7306ae-cf01-0d8b-459d-541c5582c2c4','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					   <p> </p>\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\n					   ',0,NULL,NULL,NULL),('e31a3f40-d04e-5eb4-cf87-541c550e3d4c','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,NULL),('e5a932e2-6ce6-b711-f9f1-541c5526296e','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,NULL),('eeb87442-b43d-d0e6-5fa3-541c55d314da','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>',0,NULL,NULL,NULL),('f12b1d9c-79bd-1423-a102-541c553aa23f','2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('36400eb9-9a09-5b3b-6316-542ad7cbbd26','2014-09-30 16:15:28','2014-09-30 16:15:28','1','1','1',0,'2014-09-30 16:26:00',NULL,'Production CRM Server','archived','archived',NULL,NULL,'pick',NULL,'ProjectTask','c535e5c0-1f7c-880a-b08d-542ad0e88962');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
INSERT INTO `emails_beans` VALUES ('45bcf53d-861a-aa2b-42ff-542ad7d6f30f','36400eb9-9a09-5b3b-6316-542ad7cbbd26','c535e5c0-1f7c-880a-b08d-542ad0e88962','ProjectTask','','2014-09-30 16:15:28',0),('79794d8f-0b96-e38c-0542-542ad72a0618','36400eb9-9a09-5b3b-6316-542ad7cbbd26','1','Users',NULL,'2014-09-30 16:15:28',0);
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('5e300838-61d3-8887-5528-542ad7083c7a','36400eb9-9a09-5b3b-6316-542ad7cbbd26','from','5c6b4ff4-3dd8-dec0-fa47-542ad7b6ae3d',0),('5eb3b60f-298b-07be-47d4-542ad72b3173','36400eb9-9a09-5b3b-6316-542ad7cbbd26','to','5e6ef63f-039b-b2a0-4e6c-542ad74de5d0',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('36400eb9-9a09-5b3b-6316-542ad7cbbd26','','','','','','								\n							','<p><span>Hi Ben</span></p>\n<div> </div>\n<div>As you know I have a Xen server setup for developing and testing SparkCRM (aka SuiteCRM ) at 10.0.10.70</div>\n<div> </div>\n<div>We want to put the SparkCRM system into live production from Monday October 20th. The system will need to be accessible in the Office, and externally, whilst upholding current security policies.</div>\n<div> </div>\n<div>Do you want me to use this Xen instance for production, or another server / Xen VM instance ?</div>\n<div> </div>\n<div>Another caveat that we might want to head off at the pass, remote access.</div>\n<div> </div>\n<div>I understand that the external Sales team can access SugarCRM, but I do not know whether this is just from home, or whilst out on the road too.</div>\n<div> </div>\n<div>Ideally I would like to be confident that the Sales team have both Home, and Road Warrior access. I understand that their laptops have SSD\'s and are fast booting, which provided SugarCRM access is quick and reliable this should meet the requirements.</div>\n<div> </div>\n<div>Are you able to confirm the above assumptions ?</div>\n<div> </div>\n<div> </div>\n<div>\n<div> </div>\n-- <br />\n<div dir=\"ltr\">\n<div>Best Wishes,</div>\n<div>Rick</div>\n<br clear=\"all\" />\n<table border=\"0\">\n<tbody>\n<tr valign=\"top\">\n<td><img src=\"https://ci4.googleusercontent.com/proxy/-jIe3_84VPNB_1krwTsHJVdXN-rek1lkCGlQdvX4XAw35e-9vIxsOYA3lnOSJqgzofYox1XNpb7OZ6hUJP4Oi0AJFDVbPLk1SB90nuo=s0-d-e1-ft#https://www.wifispark.com/email/signature/wifispark.png\" alt=\"WiFi SPARK\" /><br /><a href=\"http://facebook.com/wifispark\"><img src=\"https://ci3.googleusercontent.com/proxy/3MQog0cbpPb4-36y7-FqV8fxuZliWbqm6H-ZsPrVPkRhFkFUG2Cm6pg1RIiu6aO8Tymf_f7uAwRNbkuuvia1aKwjeaZUaNtquTeXN3snJSOxnZTXUDKraA=s0-d-e1-ft#https://www.wifispark.com/email/signature/social/facebook-icon.png\" alt=\"Facebook\" width=\"32\" height=\"32\" border=\"0\" /></a> <a href=\"http://twitter.com/wifispark\"><img src=\"https://ci6.googleusercontent.com/proxy/sQOB42P3X-li6zMLWMAOdtbYKeBEWQmIWwA-yZrYL_dWgC-ajCCaACgwnEHufI-QSy-5ewFRaIK4Hc0dNePVl1UkdXt_7dqifeW0a7fW103QqBf64NE9=s0-d-e1-ft#https://www.wifispark.com/email/signature/social/twitter-icon.png\" alt=\"Twitter\" width=\"32\" height=\"32\" border=\"0\" /></a></td>\n<td>\n<div><strong>Rick Timmis</strong><br /><span><br /></span></div>\n<div><span><strong>t:</strong></span><span style=\"color:#666666;font-family:Arial;\"><span> </span></span><a>0344 848 9555 <span>| <strong>ddi: </strong></span></a><a>01392 8222<span style=\"font-family:Arial;\">34</span></a><span><br /></span><span><span><strong><span>w: </span></strong><a href=\"http://www.wifispark.com/\">wifispark.com</a></span></span></div>\n<p><span>WiFi SPARK Ltd, 5 Cranmere Court, Lustleigh Close, Matford Business Park, Exeter, EX2 8PW</span></p>\n</td>\n</tr>\n</tbody>\n</table>\n<div>\n<p><span>This message and its attachments are deemed confidential. If you are not the intended recipient, you are strictly prohibited to disclose, copy, distribute or take any action in relation to the contents of this message. WiFi SPARK accepts no liability for virus transmission, for the content of this email, or for the consequences of any actions taken on the basis of the information provided, unless that information is subsequently confirmed in writing.</span></p>\n</div>\n</div>\n</div>',NULL,0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(26,8) DEFAULT NULL,
  `lng` float(26,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(26,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(26,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(26,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES ('d8ab24c5-be04-d214-d964-5424432272ca','Actions & CRM Update','2014-09-25 16:30:53','2014-09-29 13:02:37','1','1','Catch up on CRM Progress and other Points for discussion\r\n\r\nSee Agenda\r\n\r\nhttps://docs.google.com/a/wifispark.com/document/d/1jwnatZjFweQfxNE-EPqbGQVgGNbaib5Tc4o-IRxFYpI/edit',0,'1','Matt\'s Office',NULL,NULL,NULL,NULL,NULL,NULL,1,0,'2014-09-30 13:00:00','2014-09-30 14:00:00','Accounts','Planned','Sugar','',1800,-1,0,NULL,0,NULL,1,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
INSERT INTO `meetings_cstm` VALUES ('d8ab24c5-be04-d214-d964-5424432272ca',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
INSERT INTO `meetings_users` VALUES ('2c8328a4-5d20-78e4-3bff-542443f4a8da','d8ab24c5-be04-d214-d964-5424432272ca','1','1','accept','2014-09-25 16:30:53',0);
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES ('1','2b621171-9725-75ad-7bf0-5424396190fb','2014-09-25 15:48:37','2014-09-25 15:48:37','1','1','Check Collabspot',NULL,'','ProjectTask','dc599ce3-31ac-dc8a-5a40-54229e47055d','',0,0,'http://www.sugarforge.org/projects/collabspot\r\n',0),('1','3973ec73-c019-cb74-cc2f-5429727b1b44','2014-09-29 14:54:14','2014-09-29 14:54:14','1','1','SparkCRM Presentation G-Drive',NULL,'','ProjectTask','60240c6b-f448-b6fe-21f4-5422ae7f2509','',0,0,'https://docs.google.com/a/wifispark.com/presentation/d/18Gir-MWrtabJdFYFzbIlRemDN9Go6A4x_B_vURIx44c/edit#slide=id.p',0),('1','4dd38679-d068-df6f-01b9-5422c8e309ba','2014-09-24 13:33:08','2014-09-25 14:11:15','1','1','SugarCRM2SparkCRM-Migration','text/plain','SugarCRM2SparkCRM-Migration.txt','ProjectTask','e3c64ece-4198-0c52-90e3-5422ad1ec68a','',0,0,'Dump commands for getting the right data in the right format from SugarCRM ready and then importing into SparkCRM.\r\n',0),('1','5372450e-6a31-08fa-dd62-542421a43c4c','2014-09-25 14:07:32','2014-09-25 14:07:32','1','1','Preliminary Tests out OK',NULL,'','ProjectTask','9c93251f-eba8-d8f8-5338-5422caebd456','',0,0,'Tricky to be 100% certain that all the data and relationships are intact, but I believe them to be so. See data import tast and notes for details of how to achieve this.',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('373e923a-025a-08ce-d8fa-542299838de2','system','system-override','1bfe725f-a503-ba38-c553-542299c5a790','SMTP','gmail','smtp.gmail.com',587,'rtimmis@wifispark.com','1FAlJoCDdJ/qfqobdkCZqw==',1,2),('3f46c04e-7dc1-0681-1558-541c5770bf46','system','system-override','1','SMTP','gmail','smtp.gmail.com',587,'admin','',1,2),('8efef4f3-40e5-abf0-b0d3-542d33bad403','system','system','1','SMTP','gmail','smtp.gmail.com',587,'','',1,2),('99495e24-4e36-8994-a87d-541c55e165f5','system','system','1','SMTP','gmail','smtp.gmail.com',587,'','',1,2);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('26143743-1b4b-8b55-b53f-54229db264b6','2014-09-24 10:29:57','2014-09-30 16:02:35','1','1','1','SparkCRM Phase 1','To improve the operational useage of CRM, by training and configuring the CRM Home dashboard to provide useful information for users.\r\nTo incorporate some initial key processes including :-\r\nEmail Marketing\r\nSales Administration\r\nQuotations\r\nProject Management',0,'2014-10-06','2014-10-20','Published','medium'),('64becb37-b6eb-b61b-362d-542ad37aa7f7','2014-09-30 16:01:39','2014-09-30 16:01:39','1','1','1','SparkCRM Phase 2','Development and deployment of Sales reporting feature, Inventory Sync, Customer Sync and Quotation processing.',0,'2014-10-20','2014-11-30','Draft','medium'),('668ab70a-a70c-0be8-58e1-542ac8105f84','2014-09-30 15:14:01','2014-09-30 15:47:21','1','1','1','SparkCRM Roll out Phase I','Deploy the initial migration from SugarCRM to SparkCRM, and have current Sales users in production from Monday 20th October',1,'2014-10-01','2014-10-20','Published','high'),('cd4bf529-dcef-ded5-cb9d-542d0d8aa44c','2014-10-02 08:31:48','2014-10-02 08:31:48','1','1','1','SparkCRM Future Backlog','Backlog Workflow process items to be Phased in at some future point.',0,'2014-11-01','2014-11-07','Draft','low');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
INSERT INTO `project_cstm` VALUES ('26143743-1b4b-8b55-b53f-54229db264b6',0.00000000,0.00000000,'',''),('64becb37-b6eb-b61b-362d-542ad37aa7f7',0.00000000,0.00000000,NULL,NULL),('668ab70a-a70c-0be8-58e1-542ac8105f84',0.00000000,0.00000000,NULL,NULL),('cd4bf529-dcef-ded5-cb9d-542d0d8aa44c',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
INSERT INTO `project_task` VALUES ('112ec298-1510-a9be-d282-542d0ee2a4f4','2014-10-02 08:35:53','2014-10-02 08:36:32','cd4bf529-dcef-ded5-cb9d-542d0d8aa44c',0,'Support Contract Notice in Zendesk','Not Started','Problem: The Support Team do not have access to the current status of a customers Support Contract, and details of when this expires.\r\n\r\nReaction: The current process relies upon a spreadsheet maintained by Sophie / Sadie. The result is that unpaid support is given, when the support team ought really to be redirecting the request to Sales for Maintenance renewal.\r\n\r\nSolution: Consider Contracts within SparkCRM, and Customer Maintenance fields including contract expiry date. \r\nThis will need to be Synchronised with special custom fields in Zendesk * \r\n\r\nDiscuss full details with Ian Lynch once this ProjTask becomes phased.',NULL,NULL,NULL,NULL,NULL,0,'Days',NULL,0,NULL,NULL,NULL,'1','1','High','1',0,1,0,0,NULL,0,100),('31182203-be4e-594d-17e1-54229eca1a12','2014-09-24 10:36:32','2014-09-24 10:36:32','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM Email Integration','Not Started','Configure each SparkCRM User account to have IMAP access to their Gmail account. \r\nIncorporate setting up their email Signature.\r\nPay attention to sub folders they might have etc...',NULL,'2014-09-29',NULL,NULL,'2014-09-29',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,4,NULL,0,100),('49612d85-fc66-6d66-e8f6-542ad02c4061','2014-09-30 15:46:55','2014-09-30 15:46:55','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM Usage Testing','Not Started','Work with Julie P to get her set up with SparkCRM and have it configured correctly for her use cases.\r\n\r\nJulie will double key data into both SugarCRM and SparkCRM, for user testing purposes.',NULL,'2014-10-06',NULL,NULL,'2014-10-10',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,6,NULL,0,100),('4c700a56-9723-1489-46fb-5422eccf1af9','2014-09-24 16:08:46','2014-09-30 15:59:09','26143743-1b4b-8b55-b53f-54229db264b6',0,'Target and Target list Export','Not Started','Manually sort and export Targets from SugarCRM, create sensible and useful prospect list ( have a word with marketing ). Import into SparkCRM and associate with Target lists.',NULL,'2014-10-17',NULL,NULL,'2014-10-17',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,4,NULL,0,100),('54c060ee-7d1f-833a-457f-542acff05473','2014-09-30 15:43:49','2014-09-30 15:47:01','668ab70a-a70c-0be8-58e1-542ac8105f84',0,'SparkCRM Usage Testing','Not Started','Work with Julie P to get her set up with SparkCRM and have it configured correctly for her use cases.\r\n\r\nJulie will double key data into both SugarCRM and SparkCRM, for user testing purposes. ',NULL,'2014-10-06',NULL,NULL,'2014-10-10',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','High','1',0,1,0,0,NULL,1,100),('572b6731-c167-2302-7085-542bded7b45b','2014-10-01 10:59:53','2014-10-01 10:59:53','26143743-1b4b-8b55-b53f-54229db264b6',0,'Production Server Build','Not Started','Host Server request with Ben in NetOps:\r\n\r\nMy thinking on the specifications for this machine\r\n\r\n2 Cores or a Single Core Hyper threading, \r\n40Gb HDD ( Can you make sure this is seamlessly extensible, LVM, ZFS or other )\r\n2Gb RAM\r\n\r\nHDD Partition Scheme\r\nswap - 2Gb\r\n/root - 6Gb\r\n/var - 30Gb\r\n/var/log - 2Gb\r\n\r\nHeadless Centos install with a LAMP Stack please.\r\n\r\nThe SuiteCRM system keeps all it files, cached document, and binary blobs in /var/www/html/SuiteCRM/cache\r\nMysql keeps its data in /var/run/mysqld\r\n\r\nHence why /var is configured with 30Gb, I have specified matching Swap with RAM rather than 50% of RAM, as the Email Marketing campaign mailer can be a bit of a memory hog.\r\nPutting /var/log on a separate partition just makes sure that any run aways don\'t trash the database, by robbing all the disk space.\r\n',NULL,'2014-10-15',NULL,NULL,'2014-10-16',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,0,NULL,0,100),('5d9cd176-2862-3ae2-27f3-5422ac766259','2014-09-24 11:36:22','2014-09-24 11:36:22','26143743-1b4b-8b55-b53f-54229db264b6',0,'Account Type list','Not Started','Setup the key account types on the SparkCRM system:\r\n\r\nProspect\r\nPartner\r\nPartner-Site\r\nCustomer-Site\r\nCustomer\r\nSupplier\r\nCompetitor',NULL,'2014-10-01',NULL,NULL,'2014-10-01',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','High','1',0,1,0,1,NULL,0,100),('5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-24 10:42:48','2014-09-30 15:49:07','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM Usage demo - Internal','In Progress','This is a coupling of an eye opener about what SparkCRM can do, and a beta test of the presentation for the Sales Team.\r\n\r\nMeeting booked 4pm Thurs 2nd Oct',NULL,'2014-10-02',NULL,NULL,'2014-10-02',0,'Days',NULL,80,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,1,NULL,0,100),('60240c6b-f448-b6fe-21f4-5422ae7f2509','2014-09-24 11:43:09','2014-09-24 11:43:09','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM Power Sales Overview','Not Started','Deliver the CRM Overview presentation to Sales Meeting.',NULL,'2014-10-16',NULL,NULL,'2014-10-16',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,1,NULL,0,100),('61ad8d7e-fd33-bb02-2aa6-542aca2c205c','2014-09-30 15:23:26','2014-09-30 15:45:36','668ab70a-a70c-0be8-58e1-542ac8105f84',0,'Set up rolling release environment','Not Started','Confirm with NetOps which server will be taking the role of SparkCRM production server.\r\n\r\nInstall and configure LAMP environment, along with PHP Acceleration and MySQL tweaks.\r\n\r\nInstall GIT, and set up a Master, Staging, and Release branches. Clone this to your development environment.',NULL,'2014-10-01',NULL,NULL,'2014-10-02',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','High','1',0,1,0,10,NULL,1,100),('685a7dba-60e7-ba01-1ff2-5422a043dca6','2014-09-24 10:44:33','2014-09-29 14:55:42','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM Presentation','Completed','Using the Abazander presentation template as a Base, recreate this presentation using the SparkCRM system. \r\nOpen with a Targets, Leads, Contacts, Accounts definition.\r\n\r\nDone:\r\n\r\nhttps://docs.google.com/a/wifispark.com/presentation/d/18Gir-MWrtabJdFYFzbIlRemDN9Go6A4x_B_vURIx44c/edit#slide=id.p',NULL,'2014-10-06',NULL,NULL,'2014-10-07',0,'Days',NULL,100,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,8,NULL,0,100),('6a78b4be-00ed-eda3-8e3e-542ad2f49337','2014-09-30 15:55:55','2014-09-30 15:55:55','26143743-1b4b-8b55-b53f-54229db264b6',0,'SparkCRM GO LIVE','Not Started','Set up and enable access to the new SparkCRM instance. Implement a redirect on the old SugarCRM instance to ensure that bookmarks etc... get changed over.',NULL,'2014-10-20',NULL,NULL,'2014-10-20',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',1,1,0,2,NULL,0,100),('6b15b4e5-ac86-f342-f581-54229fdbc843','2014-09-24 10:39:18','2014-09-26 13:32:16','26143743-1b4b-8b55-b53f-54229db264b6',0,'Customer Account Creation','Not Started','Taking the Sage Export list (attached) Import these to create Customer accounts in SparkCRM.\r\nPay attention to the Sage Reference, this will need to be recorded in the Account records for later Sage to SparkCRM data sync',NULL,'2014-10-01',NULL,NULL,'2014-10-01',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,0,NULL,0,100),('816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-24 10:56:35','2014-09-30 16:17:15','26143743-1b4b-8b55-b53f-54229db264b6',0,'Dev iteration of Quotes and Opps','In Progress','Take existing SugarCRM data imported into DevCRM. \r\nCustomise Opportunites to provide three custom price fields.\r\n\r\n1. Capex Fee\r\n2. Oppex Fee\r\n3. Calculate Total Opportunity value =   Capex + (Oppex   x 12Months )\r\n\r\nBoth these fields should be custom, and the ability to edit the main oppportunity value field should be removed. The total opportunity value should be created as a calculated field hand using a Save Hook.\r\n\r\nFirst draft of the quotes module in use\r\n\r\nSee Reports for examples based upon 60 Month Maintenance\r\n\r\n',NULL,'2014-09-25',NULL,NULL,'2014-10-03',0,'Days',NULL,20,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,24,NULL,0,100),('89ed47bd-36be-f31a-ff5f-5422a51627ca','2014-09-24 11:04:26','2014-09-30 16:17:15','64becb37-b6eb-b61b-362d-542ad37aa7f7',0,'Quote to Opportunity update','Not Started','Using either Workflow or Code if required. This function recognises when a Quote reaches approval. At such time the Quote should look for the related opportunity, and update the Maintenance and Install fee\'s appropriately. This workflow may also need to to recalculate the Opportunity total, but this might also be taken care of in Save hook of the Opportunity  ',NULL,'2014-10-27',NULL,NULL,'2014-10-28',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,8,NULL,0,100),('99ac1fc2-953d-5911-a42a-542586077869','2014-09-26 15:31:50','2014-09-26 15:31:50','26143743-1b4b-8b55-b53f-54229db264b6',0,'Set up SparkCRM Development Environment','Completed','Set up GIT repository with suitecrm code ( To be called SparkCRM ).\r\nInstall and configure local LAMP setup for instance testing\r\ncreate a quick build script \"flash-an-instance.sh\"\r\nCommit Master branch to Git Repo\r\nCreate development Branch \"ModuleActivityRpt\" ready for implementing that Dashlet Chart.\r\nSet up configured project in Kdevelop\r\nTest flash build.',NULL,'2014-09-26',NULL,NULL,'2014-09-29',0,'Days',NULL,100,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,4,NULL,0,100),('9c93251f-eba8-d8f8-5338-5422caebd456','2014-09-24 13:41:57','2014-09-25 14:09:17','26143743-1b4b-8b55-b53f-54229db264b6',0,'Dev data import testing','Completed','Export data from SparkCRM DB as is, and Import into DevCRM. \r\nThe Export SugarCRM data, see Clean Data Import SQL task for commands.\r\n\r\nhttp://10.0.10.70/SparkCRM/index.php?module=ProjectTask&action=DetailView&record=e3c64ece-4198-0c52-90e3-5422ad1ec68a\r\n\r\nThen import SugarCRM data into DevCRM db and see how broken it is\r\n',NULL,'2014-09-25',NULL,NULL,'2014-09-25',0,'Days',NULL,100,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,1,NULL,0,100),('ab6cc9f6-c20b-6e36-d1a8-5422e07498a8','2014-09-24 15:15:17','2014-09-30 16:17:15','26143743-1b4b-8b55-b53f-54229db264b6',0,'Gmail Terms review','Completed','Check out the Gmail for Business Terms of Service and be fully aware the rules, and provide a recommendation of how we should proceed with Email Campaigns and integration in SparkCRM',NULL,'2014-09-26',NULL,NULL,'2014-09-26',0,'Days',NULL,100,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,0,NULL,0,100),('acdb5e49-2a2c-e071-bd77-542ad226468d','2014-09-30 15:54:09','2014-09-30 16:17:15','26143743-1b4b-8b55-b53f-54229db264b6',0,'SugarCRM Closedown','Not Started','All user access to SugarCRM will be revoked from 11.00am Thursday 16th.\r\nData will be migrated across to SparkCRM, ready for SparkCRM Go Live',NULL,'2014-10-16',NULL,NULL,'2014-10-17',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,8,NULL,0,100),('c535e5c0-1f7c-880a-b08d-542ad0e88962','2014-09-30 15:45:26','2014-10-01 14:16:51','26143743-1b4b-8b55-b53f-54229db264b6',0,'Set up rolling release environment','In Progress','Confirm with NetOps which server will be taking the role of SparkCRM production server.\r\n\r\nInstall and configure LAMP environment, along with PHP Acceleration and MySQL tweaks.\r\n\r\nInstall GIT, and set up a Master, Staging, and Release branches. Clone this to your development environment.\r\nCreate an initial branch for Sales Opportunity modifications.',NULL,'2014-10-01',NULL,NULL,'2014-10-03',0,'Days',NULL,50,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,10,NULL,0,100),('cff85cf3-45f6-0028-b255-5422a1443e67','2014-09-24 10:48:13','2014-09-25 09:48:05','26143743-1b4b-8b55-b53f-54229db264b6',0,'SugarCRM Data Deduplication','In Progress','Assigned to Julie S/A The purpose is to search through the database, merging duplicates',NULL,'2014-09-24',NULL,NULL,'2014-10-03',0,'Days',NULL,25,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,16,NULL,0,100),('dc599ce3-31ac-dc8a-5a40-54229e47055d','2014-09-24 10:33:57','2014-09-24 10:45:40','26143743-1b4b-8b55-b53f-54229db264b6',0,'Gmail / G-Calendar Integration','Not Started','Integrate Google Calendar and Gmail integration tools available via Google App Engine. Will require assistance of Matt for access to the admin cettings for Gmail',NULL,'2014-10-08',NULL,NULL,'2014-10-08',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','High','1',0,1,0,4,NULL,0,100),('df3213a3-f06e-75fc-d05c-5422a3e800cb','2014-09-24 10:58:10','2014-09-24 12:52:56','26143743-1b4b-8b55-b53f-54229db264b6',0,'Dev New Opportunity create quote','Not Started','Setup a workflow that detects a New Opportunity and creates a base Quote with relationship, ready for completion',NULL,'2014-09-29',NULL,NULL,'2014-09-29',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,2,NULL,0,100),('e3c64ece-4198-0c52-90e3-5422ad1ec68a','2014-09-24 11:40:44','2014-09-25 14:11:31','26143743-1b4b-8b55-b53f-54229db264b6',0,'Clean Data SQL Import','Completed','Mysqldump current data, post depupe and clean up from SugarCRM. Ensure export is --no-create-info, so the statements down\'t drop tables. Grok SQL export and manually edit to remove custom module data, and other aspects that will fail (See Remove Table notes attached).\r\nImport into SparkCRM. ',NULL,'2014-10-03',NULL,NULL,'2014-10-03',0,'Days',NULL,100,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,2,NULL,0,100),('f130a4a0-699a-607a-495b-542ad3c049af','2014-09-30 15:58:17','2014-09-30 15:58:17','26143743-1b4b-8b55-b53f-54229db264b6',0,'SugarCRM 2 SparkCRM Data migration','Not Started','Mysqldump LIVE data, post depupe and clean up from SugarCRM. Ensure export is --no-create-info, so the statements down\'t drop tables. Grok SQL export and manually edit to remove custom module data, and other aspects that will fail (See Remove Table notes attached).\r\nImport into SparkCRM. ',NULL,'2014-10-16',NULL,NULL,'2014-10-17',0,'Days',NULL,0,NULL,NULL,NULL,'1','1','Medium','1',0,1,0,4,NULL,0,100);
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
INSERT INTO `project_task_audit` VALUES ('44136932-7d90-2710-2d18-542a854b7131','816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-30 10:26:58','1','date_finish','date','2014-09-26','2014-10-03',NULL,NULL),('448db4e0-dca5-e6ec-5b0f-542a85fdf9fa','816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-30 10:26:58','1','percent_complete','int','80','20',NULL,NULL),('590000a5-c98b-c382-55cf-542ad3cf7b96','4c700a56-9723-1489-46fb-5422eccf1af9','2014-09-30 15:59:09','1','date_start','date','2014-10-20','2014-10-17',NULL,NULL),('5d490b3d-787f-7894-c806-542ad3e17ea0','4c700a56-9723-1489-46fb-5422eccf1af9','2014-09-30 15:59:09','1','date_finish','date','2014-10-22','2014-10-17',NULL,NULL),('6d931dff-cc70-b3ae-6b19-542ad026237a','5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-30 15:49:07','1','percent_complete','int','25','80',NULL,NULL),('76c52455-0c78-c2d5-4f46-5423e488521b','cff85cf3-45f6-0028-b255-5422a1443e67','2014-09-25 09:48:05','1','status','enum','Not Started','In Progress',NULL,NULL),('770a56da-558a-7a46-364f-5423e44f8374','cff85cf3-45f6-0028-b255-5422a1443e67','2014-09-25 09:48:05','1','percent_complete','int','0','25',NULL,NULL),('7fad2c21-7e07-5867-fad5-542421882332','9c93251f-eba8-d8f8-5338-5422caebd456','2014-09-25 14:05:30','1','status','enum','In Progress','Completed',NULL,NULL),('7ff9ee3e-3cb2-fdb4-8f4e-54242191ae06','9c93251f-eba8-d8f8-5338-5422caebd456','2014-09-25 14:05:30','1','percent_complete','int','75','100',NULL,NULL),('848745c0-010d-f72e-6007-542c0c433a7b','c535e5c0-1f7c-880a-b08d-542ad0e88962','2014-10-01 14:16:51','1','status','enum','Not Started','In Progress',NULL,NULL),('84d91995-4008-c9bc-6a72-542c0c3bea87','c535e5c0-1f7c-880a-b08d-542ad0e88962','2014-10-01 14:16:51','1','percent_complete','int','0','50',NULL,NULL),('87460977-7f91-474f-a6b8-5423e485b356','9c93251f-eba8-d8f8-5338-5422caebd456','2014-09-25 09:47:36','1','status','enum','Not Started','In Progress',NULL,NULL),('8c200289-018a-3edb-ca4b-5423e49c9b07','9c93251f-eba8-d8f8-5338-5422caebd456','2014-09-25 09:47:36','1','percent_complete','int','0','75',NULL,NULL),('902c7098-9c67-6a2a-fa0f-54259018b5ac','ab6cc9f6-c20b-6e36-d1a8-5422e07498a8','2014-09-26 16:10:59','1','status','enum','Not Started','Completed',NULL,NULL),('9120072c-a6f4-95b5-0bd6-5424222882b9','e3c64ece-4198-0c52-90e3-5422ad1ec68a','2014-09-25 14:11:31','1','status','enum','In Progress','Completed',NULL,NULL),('981a4812-a811-d406-d266-542590f5ce0a','ab6cc9f6-c20b-6e36-d1a8-5422e07498a8','2014-09-26 16:10:59','1','percent_complete','int','0','100',NULL,NULL),('a521cf18-9d5e-14ef-1554-542542c3ebfd','816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-26 10:40:03','1','percent_complete','int','50','80',NULL,NULL),('c6b88e8c-a12c-b1eb-644e-542911134d6b','685a7dba-60e7-ba01-1ff2-5422a043dca6','2014-09-29 08:01:01','1','status','enum','Not Started','In Progress',NULL,NULL),('c70a2011-35fa-02e5-81d8-542911800795','685a7dba-60e7-ba01-1ff2-5422a043dca6','2014-09-29 08:01:01','1','percent_complete','int','0','10',NULL,NULL),('cadd0b33-39bd-8229-a0df-542a60969cfd','5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-30 07:50:10','1','status','enum','Not Started','In Progress',NULL,NULL),('d09f54e7-b0f7-6021-b9ba-54297285d9cb','685a7dba-60e7-ba01-1ff2-5422a043dca6','2014-09-29 14:55:42','1','status','enum','In Progress','Completed',NULL,NULL),('d0a10574-a86c-912a-19f9-542a60c53d33','5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-30 07:50:10','1','date_start','date','2014-10-14','2014-10-02',NULL,NULL),('d0eaa411-a0a1-27a7-4f29-5429728263fa','685a7dba-60e7-ba01-1ff2-5422a043dca6','2014-09-29 14:55:42','1','percent_complete','int','10','100',NULL,NULL),('d317d561-091c-0c66-b140-5422bec9bedc','df3213a3-f06e-75fc-d05c-5422a3e800cb','2014-09-24 12:52:56','1','date_start','date','2014-09-26','2014-09-29',NULL,NULL),('d33765ec-f28f-9d57-d1dd-5422bec2befd','df3213a3-f06e-75fc-d05c-5422a3e800cb','2014-09-24 12:52:56','1','date_finish','date','2014-09-26','2014-09-29',NULL,NULL),('d3e00a51-1bc9-30bf-4cd6-542422e2f4fa','e3c64ece-4198-0c52-90e3-5422ad1ec68a','2014-09-25 14:11:31','1','percent_complete','int','50','100',NULL,NULL),('d45b0c85-c051-6aa4-cead-542a60583cca','5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-30 07:50:10','1','date_finish','date','2014-10-14','2014-10-02',NULL,NULL),('d7f10836-0a3a-b8d9-81e1-542a60b325cc','5ec27a30-f1cc-f646-333e-5422a09c14a4','2014-09-30 07:50:10','1','percent_complete','int','0','25',NULL,NULL),('dabbd6ae-a45d-c2fe-7b67-5422a0ad0c45','dc599ce3-31ac-dc8a-5a40-54229e47055d','2014-09-24 10:45:40','1','date_start','date',NULL,'2014-10-08',NULL,NULL),('db104ab3-4f57-65de-6b68-5422a04ebc0a','dc599ce3-31ac-dc8a-5a40-54229e47055d','2014-09-24 10:45:40','1','date_finish','date',NULL,'2014-10-08',NULL,NULL),('e0710c27-ee68-cdf1-0087-5422c82eba80','e3c64ece-4198-0c52-90e3-5422ad1ec68a','2014-09-24 13:33:34','1','status','enum','Not Started','In Progress',NULL,NULL),('e0c0992b-5017-aa8a-7337-5422c8be5e7b','e3c64ece-4198-0c52-90e3-5422ad1ec68a','2014-09-24 13:33:34','1','percent_complete','int','0','50',NULL,NULL),('f0a5d558-5685-2044-fceb-542433505dad','816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-25 15:24:23','1','status','enum','Not Started','In Progress',NULL,NULL),('f0c927c7-dfe3-6e74-6d0c-54243323547a','816d39be-68a5-5bce-5a24-5422a35f649e','2014-09-25 15:24:23','1','percent_complete','int','0','50',NULL,NULL);
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('108e9a11-43c8-2b06-a770-54203c86c9f0','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('109e36b9-e40a-3307-5033-542d33ad43b6','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('10d3bdf6-efb0-0e05-d98a-54203c5c1008','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11131f48-b3a0-a74b-5832-54203c57cc31','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1150dfc3-08d9-7e7d-2828-54203c45f503','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('118e2eef-9fc2-fa0e-35ac-54203ca57d12','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('11d07106-6bad-8948-ad34-54203c0d3f56','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('11d62334-04b5-8711-d4c1-542d33489abb','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('121b08ff-0aed-4009-b446-54203cf72b8b','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('121c0ae2-675b-cc52-8296-542d33831989','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('125c32b7-a6bf-c62f-9c48-54203c384282','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('12751446-c6d0-8cd9-3749-542d3347765a','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13533564-9cbe-79b9-5cf4-54203cd79129','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('139571ef-6dd3-e4ff-4f6a-54203c43c4c8','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13d66a67-aa4d-b51a-6bea-54203c2e3f3c','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1415435f-0df9-914c-5012-542d33f09e7c','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('14157d91-28e0-69c2-42ea-54203c83c07f','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('14556147-c52f-c89e-b616-54203cd46a3d','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1494d510-85c4-f072-22a8-54203c288ea8','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('14d46ca5-461f-b749-4e1f-54203c340fec','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('151339f8-1de2-84a8-4449-54203c927995','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('153306ad-e5b9-9840-6b90-542d334c140c','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('155168ab-7a68-33a1-edd2-54203c5536e7','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('158e3452-a384-61ce-6780-54203ce59749','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('166e94f7-6730-f3ed-e837-54203c2bbc84','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('168c8800-58d7-8229-d70d-542d33dae543','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16af7569-1163-047d-dc60-54203c29ef66','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('16e00124-330e-163d-c844-542d33160991','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('16fa3006-ca1a-f0ef-fcf4-54203c8ce1f1','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('174d0113-89d1-5e05-ed59-542d3352cdf0','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('17902546-4128-63dd-18cc-54203cb7b0be','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17959b08-a4b8-e4d1-4699-542d33cb3f93','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('17dae11b-1aad-3573-2162-54203ccac57c','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18224b82-ec4a-0207-a7a3-54203cf1c0f8','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1866e3b1-fcda-19fc-5913-54203c3ce912','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18ad2371-c98e-4c7e-1f03-54203c318da5','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('18c3eb65-925c-dc1d-5e3c-542d330e62b4','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('1927ddc7-6996-4e06-7373-542d33971f15','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('196f5a5b-707d-7bec-7eec-54203c1a1db7','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('19bf7b37-f1df-eb18-06b7-54203c0a8886','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1a0dada3-86d3-dc02-1029-54203c5fe825','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1a1300d1-7868-5c54-f829-542d33711d3b','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('1a22ba68-d03b-8cac-29dc-542d333ae87b','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('1a400383-4e9c-469a-4d55-542d331d8ec2','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a537d9f-dac7-dd6c-d6cc-54203cb77faf','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1aa16b6d-1a41-27de-e9be-54203c424a24','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1ae7914d-f762-fe3b-302d-54203cfbde72','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b2818dc-4498-c67c-529f-54203cab3970','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b3e8df2-8649-e526-5ddd-542d33534660','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('1b6604b1-e84a-e6d3-7cfb-54203c01ffa4','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ba42131-afbd-1662-94f8-54203c24ddfb','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c301406-ebd3-8c87-6bc6-542d335b13ab','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c639d6d-2804-c1ef-f375-54203cdb1b9b','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1ca47ebd-6e41-667a-d27d-54203c52057f','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1ccbcec5-0745-1d36-b126-542d33872705','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('1ce38159-326f-89d4-5857-54203c5c70eb','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1d24c99f-fd6c-5824-9dac-54203c917255','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1d449024-45aa-7672-b320-542d33baa4ad','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d6506cc-f51a-a12b-8766-54203cc53fe8','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('1da6719f-e0a8-6d53-7dae-54203c6c4fa7','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1db0a5dd-3f65-208e-3ead-542d33a32d3f','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('1de737aa-c064-386d-481d-54203c3d1420','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e273685-6dd6-f78f-ca33-54203c573bfd','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1e7a4bda-0ef4-7766-fc4d-542d33c2d2b2','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ecb7c36-c511-9062-bf6d-542d336daae5','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('1f0ebf97-913d-219a-4434-54203c33dd5b','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f4f94d6-c628-30cd-38c0-54203cd0397b','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f7a6f50-fa27-5802-cb96-542d331e8b05','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('1f8ec474-c99f-0598-a93e-54203cee96d6','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1fce4cce-f2fa-242b-452f-54203cc57901','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ff0fdb7-bcc4-58d4-5c6d-542d331cd7db','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('200f8f3c-f092-cfc0-dc43-54203cd4fa63','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2025044e-6537-92df-ba46-542d33fb36eb','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20514f38-31e9-9198-d070-54203c8713e8','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('208dd734-1ea0-62e9-a3c7-542d338af5de','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('20928745-bb25-c4e3-7414-54203c98f53e','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('20d4cac7-2bac-d872-8b32-54203c41df76','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2118ce77-19e3-37bb-5030-54203cc14cac','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('215a3531-c3e7-dd4b-9b88-54203c38efb1','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('218fffa5-9e9e-ac16-8d08-542d3348c07b','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('219be310-c1b2-8065-b6d2-54203ce83bc4','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21dedf74-a7af-34b6-4a7b-54203cbcd977','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2224c9fb-3759-4d0c-4fd7-54203c33f81d','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2247b41a-d528-31f2-41f3-542d33df4171','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22dd6b34-10ba-6629-686f-54203c764924','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22fce573-e8b9-75a6-5799-542d33ac90a4','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('234f6462-87e3-e921-5ee3-542d33d57bf1','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24136650-b574-d1df-2125-54203cdbf0aa','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('241ec5de-e3ec-5a0b-4c30-542d33b1144b','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('2449d9d9-d088-9539-91ff-542d33f271dd','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('245ad82c-d270-4746-16b6-54203c62f85e','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('249d97c0-4bd4-7034-e6a7-54203c049e2a','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24e6551f-1681-0403-9494-54203cf7fee0','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('252b994f-e122-0e1a-61a8-54203c2c6337','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('253cefe9-b500-83c1-bb09-542d33bb08d1','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('25750bc9-5e25-77b5-8be1-54203cb4d81b','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('2595a92d-5564-bf91-2de4-542d33b0fb2e','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('25bcd494-3729-e072-e9c5-54203c4a60d4','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('25fc5ca0-42c4-2b84-82ed-542d33c71f03','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('26049e83-cb8c-9d6d-3c04-54203c73fa96','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('264b2c33-cf6e-fd92-595b-54203c88bf61','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('268e263e-6281-2e89-cfa0-54203c26422d','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('26ab41d6-0e26-1405-12f8-542d3370689d','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('26d055b3-a10b-1eb5-378d-54203c226be0','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('27119245-d6dc-d9bd-8b5c-542d33799385','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('275032d3-69b9-d6d4-9bcf-54203c8ce553','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27c3cbdb-b65f-2d5a-ee50-54203c5d64cd','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('27cd95ac-2527-16bb-390b-542d33ac1c15','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('27dc02e3-0b73-0d2d-c1c2-542d330da42d','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('27fc0aaf-15eb-4a8e-7975-542d330f004c','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2875c564-9acf-81a2-d851-542d337c5812','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('28be90d5-2541-b5bd-03dc-54203c3cd029','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('28c99a2f-9fe0-3f23-13cf-542d3347575c','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('28ff91f3-1768-0364-45ad-54203c79a7ad','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('293fecc1-9d42-9f8a-15e9-54203cfedc2f','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('29d8f2b1-38a8-5aee-9d54-542d33c99835','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('29e8cace-4249-92e2-ce1e-54203cb062bc','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2aeceec0-bef9-2e53-23a5-542d332c716b','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b3a369a-2f0e-5061-1169-542d33801378','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('2b490b6e-6ae8-23be-69cf-54203c454417','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b8dba4f-f3d8-807f-0578-54203c1207b7','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bd2824e-3186-9635-cd25-54203c95f412','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c1964b9-c68e-0f38-ce35-54203c6b5194','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('2c6175ce-258b-7d20-1223-54203c3d612b','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('2c757e60-068e-3179-f6bd-542d331922dd','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('2c8a161d-bd7d-850e-3bc1-542d3323a1e5','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('2ca5b3fa-8054-c99c-084e-54203cd596e4','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ce62162-8c2b-4fb2-e619-54203c3a7a3c','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d26766e-33e3-cfe7-1032-54203c1ebe55','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d66a2dd-a360-5249-2458-54203ca33144','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2da85896-f253-4b46-4c90-54203cb68ef6','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('2db4f36b-6640-fa8d-45c5-542d335630e6','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2deceb9b-d8ae-a5a3-3b7a-54203c6327f9','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('2e2f6b9f-81f4-ac1b-7ff0-54203c8c3505','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('2e3b2b9a-3ce3-422b-ae04-542d33425283','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('2e6feba1-97f9-d6a7-61c3-54203c944be7','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2eb008b5-be93-5e9d-e18f-54203c525a8d','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f08bf2b-12a2-15a2-71b5-54203c20a656','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f0984e3-d055-2c29-4bde-542d337d44f7','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f550697-59bb-0bd4-adbc-54203c9ff593','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('300eef42-ae0d-a4e3-c2b1-542d339c11e5','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('3051ace4-099c-d1b9-53f6-542d336427e3','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30bc3486-cba0-4f2d-4eb2-54203cc8d529','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('310685db-b447-ff96-3782-54203c6bd5e8','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('310e96a7-a00a-b2e9-ebb6-542d33d4c2a7','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('314c7563-c538-7cc6-d160-54203c5a244c','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('318d6518-49cd-eb40-c2e2-542d33568dd8','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3191f54f-4c8c-70ac-9bc8-54203c1d43c3','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('31d9de41-fffb-1b43-47ee-54203ca54cc4','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('321919ea-6ef6-99f0-6379-54203caaf2dd','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('325709c7-4a0b-cdbc-b6c5-54203cca0f6e','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('327e2240-30df-936e-eeb4-542d33cb9f2e','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('32965ac8-29b3-34ab-a5c5-54203c3dc308','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('32a4371e-a1e5-0b63-0f60-542d3335f7e7','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('32d4f49b-a2be-cf32-48fc-54203c1ae296','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('3312ffdf-a8fb-21eb-b13e-54203c7b7970','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('3350fa40-ea69-4b80-7266-54203c4e0d25','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('336edd68-7627-75db-cca6-542d33e27b93','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('338ee68a-a486-f040-a22f-542d333e60cf','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3391bf13-7fbf-35ed-4c9e-54203c5670c1','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('33cf0d12-26e4-2bfc-2785-54203ca6719d','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('340bee1c-5763-4ad1-91a7-54203c3a2c46','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('344aef59-a2fc-e1a7-931b-54203c6f3be5','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('347f7d4b-bcfa-9a50-8ba1-542d33853f1d','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('348a5ada-9130-1e77-7336-54203cc66539','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34c948b3-3fe7-186b-363b-54203c8b8ed1','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34ccccee-5e73-6475-1997-542d33377864','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('3582566e-350b-30c9-7b84-542d3316219a','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('35cc459b-efe2-7413-5f02-54203cf390e8','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35ceace8-7ec5-4bad-4715-542d336d2603','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('360c6f9e-b667-979e-91fc-54203ca49f9a','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('364a9c8b-ae69-6fa4-ab49-54203cecb3fb','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('368799a4-ecd9-f9ac-2f11-54203c9a771d','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('368e912d-f12d-ff00-244f-542d339389fe','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('36c5349c-0068-4fa4-698b-54203cf768cb','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('36dd9f22-85a1-91bb-9783-542d3313f7de','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37031b56-1d35-cd5b-8e10-54203c24257e','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('374128f9-6760-0077-e9b2-54203cbebf36','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('377730cf-58b4-28ba-b5f5-542d33102833','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('377f0d3d-bc83-dff7-3e95-54203cb05b13','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('37bcaea2-56fc-d169-5fde-54203cf470b5','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37c7142c-6b42-053d-fe0a-542d335037cb','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37f94d3c-5101-fa20-6ee7-54203cd9c286','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3836c07b-cd6f-6dcd-2817-54203cb9e284','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38746ca2-04ef-c2da-2cb3-54203c1f0a26','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3879af1c-3128-a6de-c3c8-542d33d446ce','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('38b161cb-dda4-16c1-1629-54203c9a8353','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38bb0fd7-bdb0-1bfe-8028-542d331d76d6','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3948d7db-b40b-8211-b284-54203c49af9c','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('394fd143-d9c8-3f7c-38c3-542d335e3f98','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39afcda8-3a20-baac-d2a2-542d33967788','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('3a1314d1-fcbf-bd3f-2a21-54203c09c26a','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a515edf-6a12-772d-d4e7-54203c27d7a1','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a8f3b5d-01f7-788b-9aa7-54203c8cd3d5','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a9abd4e-44a7-89c5-c89c-542d3381a331','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('3afadc44-4f8b-0818-a805-542d336acab3','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b6afdbb-da07-fe46-ba23-542d3325f780','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('3b8b77e7-963c-c349-cd83-54203c2c8398','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3bcc715d-b8b2-ae14-638c-54203c36ffa0','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c0ad4b8-87d2-4452-d203-54203cd87755','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c49b20e-dae8-8f8b-59e7-54203c6a2db3','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('3c608c1b-67c6-0d61-a440-542d336c3b89','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c63f488-ac49-73d5-121c-542d3365e1d1','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('3c8b2310-22ad-8993-f892-54203cac66e5','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d6b084d-7592-1978-950b-54203ca1d4c2','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3db34fe9-990c-b196-398a-54203cb18e48','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dcb1e64-d2a4-383e-3b90-542d330cc650','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('3dcd73cc-8231-1cc0-c896-542d33a59a58','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dda013e-5a74-6439-98cc-542d33a19e47','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3df8ce58-4bc4-11ca-a733-54203c41bf32','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e3a3daa-de30-5e78-5bb7-54203c622588','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e7c2afa-6f14-c785-2a50-54203c522c8e','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('3ebee9f6-cb9d-36f5-f75b-54203cb2b1e5','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('3ed9059b-5897-c9de-e2e1-542d33184b44','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f04013a-8c1f-cd7c-fdb4-54203cec7a62','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('3f479c68-9a63-1d7c-26be-54203c049805','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f6a3054-88b9-04df-9e0f-542d3362579a','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('400ab5ad-1343-0536-752f-542d33126ffe','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('405c661e-a604-898b-29b8-54203c55272d','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40992e5c-58e3-658e-3b51-542d33f62f67','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('40a2e853-20e9-3755-c34d-54203c6a28ac','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40e6c6bb-c095-bc64-e46b-54203cb7da2c','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41174a66-d79e-14cb-9cd1-542d33471619','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('412898f8-2419-a705-d4c4-54203c22d997','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('41d97cd1-e060-30f6-6a07-542d339d44a7','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('42085cd0-f4bf-a549-9189-54203c317754','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4251263a-8316-5dbc-933f-54203c6ee05c','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4298929b-b662-f373-745e-54203cb0588d','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42a641a3-5ab1-5688-0b9c-542d339a8795','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('42cf9566-7d6b-6c7e-da3d-542d33400b7d','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('42dcf268-9526-4e33-e43a-54203c8cb822','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4392f066-7ae5-eef1-f227-542d332f3872','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('43adaca3-821e-884b-47a2-542d33182c8d','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('448b8c20-75bd-d689-df1f-542d33336df6','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('450b594c-e520-fc80-783d-542d33b855be','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45cbe967-0ba4-639b-d4b1-542d33f4ba2e','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('4650bfb3-b79a-b362-7fe9-542d3346981c','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46d213fc-5e63-a603-0bdc-54203c810535','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('470c4187-e793-a248-b8f1-542d33a4404a','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('4718e5b9-7a34-80c0-dc3e-54203cf22b9b','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4759fad7-6561-8bff-0261-54203ce1901e','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('479a131c-4d52-3ebe-88f0-54203c93c506','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('480067c0-f745-10c1-0581-542d338b6be0','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('48116ea2-d508-c541-1d94-54203cd6f62b','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('485c7d50-61c6-70df-b6a8-542d338a2fb7','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48f3104c-0cf1-ff0a-9703-542d336b0cae','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('491a4b08-9d14-25aa-74a1-54203cf756f8','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('495bba95-99b2-d351-2697-542d33be6c98','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4962445d-e996-810e-fef2-54203c2cf0b4','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('49f0b94b-ad78-d750-694c-54203c407516','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49f19121-ba66-2e7a-4206-542d33c30580','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('4a8dfab0-860c-e6fd-064a-542d333a22a6','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('4acd5983-10e2-f6e9-0a53-542d337ca336','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('4b6f37c8-2412-37b4-03d7-54203cbef682','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bb257bb-4ffc-c4d3-e05b-542d331b1974','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('4bb40493-9bb1-85da-a165-54203c3b02de','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bfbbb9d-077b-2bff-42e9-54203ccf1fc2','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c13f00c-ac2b-e11c-f0f8-542d33244e0c','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('4c5a0698-c24b-794e-563c-542d339e0932','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('4cbe0af7-ba80-f8bc-25bc-542d333f3145','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cc30aa9-5e1a-ecd4-5905-54203c380e87','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d07877a-9a70-7d56-354c-54203ce0fb10','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d4765e9-010b-df98-37c8-542d3388ca29','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d4c7ab5-d5ca-3dba-ad86-54203c1ed5c9','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d855daf-65c4-e37e-461f-542d33eb9104','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('4dfc4aa7-73ae-e8c8-2092-54203c8f28e0','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e17ae1e-22ae-13cb-1c58-542d33c3b8a4','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('4e3fc58a-1263-f88f-e767-54203c2dd352','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e856986-3795-7498-3753-54203c48e0f0','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4e9df48d-d54d-b693-d63a-542d330f6cb6','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4efe1dbb-e22a-4479-b7c6-54203c020eb2','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f3ed687-187a-4aaa-73b8-542d335f6ade','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('4f409ed4-13b0-529f-286c-54203cc394d5','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f7dfd94-561e-0255-1033-542d33505f46','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fee4159-e9bf-fa1a-9cae-54203cdf6198','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5030bc4d-b464-1339-e911-54203c493b76','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('503b8671-c779-43ad-e13f-542d33950512','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('5044b79c-31e9-0b61-06e9-542d33faa168','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51133181-076e-8fe1-1283-54203ce2f2ac','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('513f8a38-0f9e-15cc-3e5e-542d33286113','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('51580f14-089b-b5a5-ce08-54203c2a4b39','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51993396-a4c3-ca94-4109-54203c77a618','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51a294c2-c90e-2901-bf90-542d333ddcf5','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('51d953b4-20d6-012c-0218-54203c95fcef','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51e0020e-6d3e-d8e1-cdde-542d33eb0f69','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5218724d-1cab-2e3b-0a3c-54203cf93200','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52581e40-447b-897e-2c20-54203c4550a0','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('528b2d52-42b7-0bbe-829c-542d33e20c9c','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('52916af7-0710-c4ee-3d49-542d3381d7f1','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('530e17a3-2d8a-772e-b84e-54203c489624','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('534f1d33-d4b2-bc36-333d-54203c6311fc','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53a82d81-0374-e455-775f-542d332fd063','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53dcf463-9019-db7b-d63a-542d330c2101','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('53faaeda-3ead-2b53-310e-54203c7b4144','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('543cf6f1-1463-fd42-cd95-54203cd5cefc','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5464a0fc-91ad-e352-4974-542d334dbd06','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54c41056-2054-530d-638b-542d33d42d95','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('54ef4a2d-45a7-84eb-94f0-542d33804993','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('551d070f-13fc-196c-6ceb-54203ced6fd8','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5561f3b0-fbb7-356e-45bd-54203ca6404b','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('557d385f-cc08-618a-0c63-542d334fe7e5','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('55a6be6e-a68d-1e54-d62d-54203cba06f8','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55e7d9e0-833a-3e49-5561-54203c44b2fc','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_field','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5626531e-ae17-7bba-c2b2-54203c5906e6','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56ca9249-36d7-b45b-81cb-542d33a83656','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('56ea8ae5-c8f6-ab3b-d9c9-54203cb4b8a8','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('572c83b9-5764-15cd-5027-54203ce796d9','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('579334bc-1267-28e3-7fd6-542d33f35127','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57ca11a3-5008-22d7-81d2-54203c86d475','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('581258e4-af68-c837-c996-54203c246d97','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58c2cbb5-9328-ea45-1c5a-54203c967007','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5905667b-0862-a313-e2de-54203cf98bad','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5906f78c-8a08-41a6-180c-542d3349afb3','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('590c5e60-3e74-dbcc-abff-542d336f92f6','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('59b3f986-48c4-5bf7-0d2c-54203c113d98','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59f673cf-2f27-4f51-55c0-54203cec45e1','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59fa20db-c161-65cf-4be8-542d331cbbbf','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a3ae4d9-5d25-2aab-fc97-54203cfba244','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a7d02ab-d8fd-0e6f-71d6-54203cdee6d9','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ada1c9a-e3b8-7a23-e87d-542d336b46ed','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('5aed41a1-926e-c679-bf05-542d33b29862','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b3fb38a-31f4-9034-435a-54203c899bd4','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b84181d-6c25-5492-e64e-54203c6df67e','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bc389b7-6b8c-89ae-520a-54203cac65b9','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bf8840d-d49e-a081-fcf6-542d33f10c01','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c0210e0-b925-0633-e3c7-54203c9e0f2e','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c5a978e-966e-c478-d07f-54203c46e08e','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('5d16fcf8-3f78-c0da-09fa-54203c64e155','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d2324f6-9a52-8c5e-0f25-542d33cdad49','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5d5a046a-5d48-6cf6-ba79-54203c006472','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d98b0c9-2bfa-3871-a711-54203c51a62c','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e4d08fe-995c-4958-dd9e-54203c444f6f','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e521719-182b-03d5-66c1-542d3351cae7','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('5e5915dc-2491-b977-1198-542d33b0bf65','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('5e8d04eb-befc-ded8-cd88-54203c527949','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ecc0678-7992-748a-de34-54203c3df78e','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f87c7f8-e2b6-b779-1488-542d33de9ff8','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fc5e222-ab93-57bd-8846-542d33a10a1d','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('60299abb-917b-f5cc-b1c9-54203c9cae42','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60695a82-e53b-4d4d-99e6-54203ce2fc99','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60a797ef-1e34-b89e-eb7f-54203c45d4cd','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60e54d3b-fbbd-828a-9589-54203cc757fe','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('610a32d7-6acb-096e-94e6-542d333d65b9','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('6209b5a3-83a4-0b85-5808-54203c56ae64','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('622bcd2e-f057-0421-dad8-542d33b45fa5','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('624cad71-00a7-3972-87c3-54203ca0e27c','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62745b69-bfdc-19cb-013e-542d33415018','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('629023df-c193-574f-2cbf-54203c7bbdab','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62d3a5bf-e16d-de66-a93c-54203c87d7f8','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('635e4250-7b6d-2e83-718e-542d33f5c375','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('63a26cd3-323e-f373-429e-54203c7d40ba','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63e5816f-d44d-266c-91fe-54203c75bc8c','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6427d636-23fc-e5bd-eff5-54203c9b17bc','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('646e4ac3-ac1e-5f3c-65ab-542d33261f4d','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('64bd0253-3b86-e3c5-80fd-542d334ed472','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('64e1de65-a7dd-f9e1-8c8e-54203ca0c3e4','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('652243fb-ef99-aa41-6db7-54203c6e42f3','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6561f31e-3a0a-6890-5838-54203ce78cb5','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65a1cfa0-f3e9-e3a2-f27a-54203ce01eec','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65b38766-2e96-7b83-fb27-542d3354967b','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('663216f2-40c1-b341-bfa6-542d339dca4f','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66870f88-ce9b-8fa2-32c4-54203c23088b','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66cc2d3f-921c-e7a5-9f8a-54203c8696a2','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('66d35f25-1f92-f83f-05ba-542d333dfe76','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('670f5b42-032c-61f8-0b67-54203cf72081','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6750c817-cbae-b0f9-2e68-54203c9e0b01','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67c7bb0f-2594-0f5a-d0e9-542d337ac122','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('6810dc1b-d92d-df28-d16c-542d3357e8ba','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6850233f-b444-a5bc-11f6-54203c379ad6','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6892e9da-4a61-2aa8-3ad7-54203c2c198a','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68d45512-80fd-b7ec-810f-54203c6cd379','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('690d74e8-502e-03ab-3669-542d333e6dfb','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('6915a89f-68f2-5993-fd98-54203c29350f','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69edf8e0-ae00-29c6-d59a-54203c9ca53b','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a2e5c39-8103-b9b1-a737-54203c50786d','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a65ecc4-c7b3-8279-253d-542d3319eaaa','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a6fb4cd-dc1d-22ab-7918-54203cb39519','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6acd09da-fc3a-70bd-24e2-542d33e8b9e3','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('6ae077cc-5d8e-5f3c-e312-542d3321011a','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('6bc31a1a-a8d6-225f-410f-54203c9beae3','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c11424a-3631-d5d8-3e5d-54203c06f168','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c5b5738-a52a-184c-7432-54203c4e13f1','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c5bfbe9-a117-459e-3544-542d33fa600c','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('6c9f19ad-4ac8-9869-b539-54203c3747d7','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6cfd8b04-e7b9-b23a-a4c3-542d333d1d95','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d93810d-d7d1-e9b1-bfa9-542d330678d8','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('6dd5171e-833d-4e3c-406e-54203c8d040f','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e186c4b-4cdf-eb36-fb7e-54203c127835','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e600778-7007-8390-75cc-54203cf032d2','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6ea46a4a-2202-9dd0-410d-542d33c5a9e3','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('6ee2ae95-0e92-6495-8aa3-542d339223ae','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f8b3fe5-bca2-976e-365b-54203cad0fa5','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6fcdc3a7-39dd-60e5-9bf4-54203c788011','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('700fd0b9-7c46-7006-5ff6-54203cbaa6ed','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('701d9449-03ce-0b68-1cdf-542d33a014c7','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('7130ac42-83a1-01ca-f88f-542d33017394','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('71415670-eaab-19fb-cc71-54203cfc8e9b','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71613a92-5976-dbb3-c05d-542d3333a289','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7188c932-e6b8-ce98-43a8-54203c1b1aed','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71d18802-a3e6-4f6e-6ea5-54203ceb5079','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72534e31-5756-35f3-fa50-542d336b122c','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('730850ee-24f6-9223-6223-54203c476358','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('734b9e4d-62b3-d74e-e9fb-54203c4a519e','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('738da796-4987-ebe4-3484-54203c9bb5e2','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74578bec-167d-4ba1-22ba-542d33effa28','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74873895-24f5-f0b3-d7fb-54203ce811d3','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74ccfe71-1445-0b65-385b-54203ca76ed6','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75147539-c11f-ef75-a9be-54203cbe740d','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75e1d2df-429d-f488-54b7-54203c23684b','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76250fe9-9d0c-7e08-d637-54203c174da5','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76270145-0ade-88c3-e7cf-542d33dd4c1b','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76658e5f-c288-6733-82c0-54203c14ed18','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76a5d8b2-d1ab-e1a3-c5b5-54203cd013a8','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('76e5a1aa-3aee-364f-83ab-54203cf516aa','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('774e6090-74a9-70df-f286-542d33225784','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77a1b3ec-7008-635b-c285-54203cf0278e','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77e9207f-5c95-cbd7-ac6b-54203cd4cf2e','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('782bb7ab-4840-eb76-6b2a-54203c983bdc','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78868331-ee9b-d084-763e-542d339090d3','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78e2c79c-5d8e-914a-dc28-54203c71818c','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7924d2de-ea04-048b-2a9e-54203c1993c7','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('79646fdc-4f67-cadf-5953-54203c4bec38','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7997edfe-abce-5139-6722-542d33ee3739','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7afb1377-b98f-45c1-6e96-542d33f65225','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c0a6593-b8e2-2a35-f668-542d33f2a187','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cfbeb03-a697-4757-7b8d-542d33915f69','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e656f27-6833-9f9d-a66d-542d33744890','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f27be39-f4bd-c096-3d6b-542d3312feaa','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8081121c-82d5-3c1b-ef13-542d33d00b88','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('810ca95f-0aea-0d11-5612-542d33f724bb','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8263fe8b-8ddc-c5f3-8762-542d33508e85','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82a805e7-a628-d4e2-fcbd-542d33aefbba','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8380b703-16f1-0bef-bf33-542d3396b784','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83ad65b1-edee-e38e-44f0-542d33609fc5','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('8569f603-5959-9c4a-1ad1-542d33a1f43f','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85aca58a-7fea-19dd-d87f-542d33df31c1','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('86b4dfdd-5111-174e-f442-542d3319eaa3','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87ae89cb-2168-367d-1d8c-542d33bbcb26','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87b0b1ff-497a-4b80-ab14-542d33c96f2c','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8949c169-1df0-5243-3e93-542d33a31a47','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89d5eb85-3aa5-b679-fed7-542d33acbcac','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8a3ed056-6353-b57c-8075-542d336e6426','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ba7f31e-3ac5-8ef8-42a8-542d33b4ab20','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c0c2cf4-fdde-96a2-004b-542d33c43a8f','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8ce1e79c-d6da-e7a4-bbb4-542d33740707','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8db62c52-cee7-bc54-8d21-542d337818d5','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e90e3e5-0a19-24ae-57cc-542d33f9fe44','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('8ffb70f0-f7cd-cc8e-b725-542d33bcd0dd','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9108d373-0060-57fc-12ac-542d33f01674','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9179833f-50d5-8775-611a-542d335fba04','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('9234e87c-cc04-a993-5f1b-542d334f5f77','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('929be228-09a8-315d-1f2c-542d33933caa','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('92c30ce2-47fc-9c18-4902-542d336dc84b','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('93359793-9904-6331-a608-542d33780aca','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('944f4e6a-ac56-e0e7-9ba7-542d33bdead5','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94bb2c32-e5a7-644f-0559-542d3386509a','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97b9116f-3270-9489-c464-542d339a1ffb','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9966dfba-6bfd-63af-6b54-542d33e54851','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9c269e9c-436c-063b-8305-542d3311c32f','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e3f6448-87eb-1a75-5f16-542d33d22b67','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e8fadec-48d8-70a0-bcc9-542d33068efa','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a08c9281-a3eb-1ae5-e5c1-542d33177194','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1244dc9-14b4-66b1-8c89-542d333cbe28','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a27b73e7-bc76-3fff-f7bc-542d33eb5f9b','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a2ef6d34-ac34-bbd1-3e57-542d33e99ac7','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3edf4b5-5816-3ce6-8c67-542d331aea92','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a53489ff-5b51-6b21-a40f-542d3395b3e0','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a54a3b1c-cf2e-a0bd-70fd-542d33e71bfa','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a68a28b8-91a2-8731-c560-542d331bc000','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6aca33a-ecab-3d16-a58a-542d33f67da0','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a7995f88-8cc5-7249-f76e-542d33d46283','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7cc75b5-db21-1e6d-53e9-542d33065d27','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a8eab8f7-3e91-50e6-967c-542d33d7dd94','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9030524-1099-de85-2be0-542d33a0908c','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a924c838-354c-e684-a828-542d33a71241','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('a9d8318d-fd58-2f67-064f-542d3370b5e9','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa983737-c37b-90d4-257d-542d33970f5b','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab52f18e-8d5c-1ea0-7705-542d3319f47c','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('abd685f7-d7b0-785e-10e6-542d3368b5ea','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac9798eb-0085-a255-39dd-542d337a2697','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acf82814-8566-113d-a12b-542d33bc9a96','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ade1c1b1-5cff-3406-a4fb-542d33075413','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae6cca24-f913-2c82-6385-542d337415d9','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af6c6e87-d0d6-a5d8-c4f9-542d33dc2dfe','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('af9f2882-3b3a-de39-75dc-542d33fe8884','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b08ded81-c01b-68d3-808e-542d33163cd4','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('b0d78cbc-a02b-1653-77d3-542d33c9a2c8','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1b7e870-3734-e9c9-f1a9-542d33ca4163','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('b1d2b394-1b70-62ea-ebf3-542d33a483a0','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b29264fe-a271-f109-61ee-542d33fc3a20','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2c18fb6-5ea1-6abf-87dc-542d334a927f','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('b399ad22-37a0-4e41-f183-542d33a9caea','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b443435f-bf9f-623b-5d72-542d33350b27','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('b4dc9bc5-55e4-ba7e-b979-542d33c9a3e9','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b530be18-e605-e260-d53f-542d33abd534','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b564e995-2550-2ae4-8681-542d332ddaf6','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b699b64c-65eb-b3e5-fd76-542d33e0b284','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b71bfcc1-42af-9177-1c45-542d331081a8','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7b11d3b-2de0-e4a2-a7d3-542d3388444d','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b81d6848-d9f5-0e7b-4ebb-542d33cbd74c','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b919cc88-149d-e8c7-5dc1-542d33b70df0','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('b948bdb3-ada2-1077-a621-542d332f3e9b','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba636332-96b8-94f0-a6d6-542d33a356c9','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba645afb-fc6c-0aff-f656-542d3377ad4e','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('bbaff178-b79b-3739-4394-542d331f901f','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc78f6bb-0614-8dc5-89d3-542d33cdbdff','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd4c9e6e-369c-944f-d562-542d331d85c8','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be57f393-3cca-addd-54dc-542d33640cf3','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bea79249-28c5-e4c1-ad1f-542d33ab0aba','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf7cb5bc-ea91-b40e-f8c8-542d337dc5d4','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c09c1630-3627-92e2-2254-542d33cc6904','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0c04b48-7e07-b887-5ed2-542d33db6048','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1a3d35d-c2f4-67ae-d394-542d33930fdf','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2a40188-be2e-f3dd-551b-542d336329f6','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2ddbfd1-8002-c0fb-1ee3-542d33da50d7','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c412f329-78b0-f6c1-f810-542d33214bfb','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4aac6c5-387a-3505-8797-542d337e20b7','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4c7241b-da53-f3d2-98f1-54203cca304d','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('c5198560-fc4a-cf5f-a6b9-54203c6b93d0','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('c54c9dfd-4a2a-ef69-0444-542d33f8f1ac','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c578176e-d5b7-e209-2013-54203c4a9b55','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('c5c1dfb1-ec1a-bbb5-2a66-54203c5293b2','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('c6189c7c-df42-6a8f-ddf4-54203c0625cd','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('c670074f-66ee-6bdf-696a-54203c25becf','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('c6bb7cff-0785-3a35-e837-54203c20c67e','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('c6ef101c-e7ae-6d46-99f7-542d338f2811','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c70d40e8-0512-2c3e-3951-54203c2f1222','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('c7582cf3-ffcc-bd66-5066-54203c098e9d','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('c78d0d63-e0a5-b452-dc06-54203c08f8d8','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7aa9c8f-fa0b-38c4-a776-54203c3d3621','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('c7f798ef-5e0b-7137-a94a-542d33b1f0b0','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8183928-c6c6-d847-3fb1-54203cacb706','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('c860fdf1-29d0-5f8e-f0d9-54203c6a1f10','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('c8ac1ac1-0c38-1cb5-c631-542d33206043','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('c8e0acb8-eb4d-247e-0f08-54203cbca238','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('c924fa99-6283-a8d8-0d21-54203c802193','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('c94ee045-c186-2f48-9bdf-542d335229f4','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c967a90c-e0d5-053a-a642-54203c073992','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('c9add4cd-1825-5ce8-3ac6-54203c331682','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('c9fd2047-8ad1-2357-b05f-54203c838230','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('ca46f3f7-f929-a1c1-1a96-542d33140b8b','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('ca4dc75d-a52e-4668-864c-54203cf154f5','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('ca6f8597-7e86-e9e5-8044-542d33562b5d','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ca9d67d1-3bd7-c36c-3d20-54203c9b47ff','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('caef8b7b-25db-c116-77d5-54203cff57f6','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('cb477162-be2b-0eea-248d-54203c3e0203','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('cb486373-bf10-f502-8311-542d332a98d4','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('cb9876f5-4128-f80e-332d-54203c3abe99','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('cbdb3412-a30f-e9d6-8fe8-542d332eb198','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbebb6f7-b94e-d0a3-87db-54203c71bcf0','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('cc26018b-63d3-93a4-7e55-54203c8de72d','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc450927-abdc-909e-c7bb-54203c1122c5','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('cc5faf85-03b1-b99f-7fa6-542d33a8831a','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('cc92d36d-ba90-7331-a4c3-54203cc95ca4','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('ccdbd5c3-9964-8abf-9aa0-54203c913722','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('cd1b0cce-8662-8e30-8a03-542d330becad','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_field','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd2423a6-6d08-2ae9-451e-54203c26ed26','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('cd46b5d0-cd56-eb84-d42b-542d3376b317','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('cd79c147-cf33-81dc-6c59-54203cf84989','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('cdc9481b-9bfe-5862-03b4-54203c56cdb4','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('cdd70292-c344-a4a6-16ba-542d339eab9c','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce28dfb6-1819-b803-5996-54203cf1c011','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('ce2bcc70-6758-0740-5007-542d33cd8c6c','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce62b286-cda0-b765-a57d-542d33b7f904','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce7a79c7-fc39-5865-aa47-54203ce14476','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('cec7bfe8-3278-336b-988e-54203c1518d9','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('cf13a683-f3c3-16e6-2c1a-54203c73cd8b','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('cf5ed9c9-5d83-e103-ee62-54203cfd3a8f','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('cf649be8-9223-71ad-ddd4-542d33f61755','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cf9b8398-89f5-b3be-b147-542d3314c6b0','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfac3246-5dce-ea8f-c8da-54203cda16d6','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('cff866fb-e88b-ec61-936c-542d33177f8c','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cff8c859-7d01-f2d2-ebdd-54203c98c13f','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('d0495f59-a979-8e3a-6a54-54203c0ebddc','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('d07309a8-456e-da3d-2c61-54203cfbf10b','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0956cae-c39b-1c57-675e-54203c3a14c5','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('d0e144e4-1e8b-a725-3b12-54203ce2c318','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('d0ee9f0d-2d64-52b0-2de4-542d33de8b05','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d1007b92-1d78-8903-7f26-542d33541eb9','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d12f5109-9892-5ba9-9b32-54203c5fea48','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('d18266d6-70f9-672f-c2ce-54203cd78816','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d1a1ac26-9e45-fc5d-e221-542d33a0c9d3','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d1cb0663-fa99-fac2-be99-54203c63909e','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('d2139bd9-430d-cc39-e331-54203c20583c','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('d2650fb2-2b17-26a2-a6c6-54203c051edc','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('d285becb-66cc-d167-529b-542d33ab715c','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d2ad1462-b898-43b9-78f9-54203ca3c570','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('d2b43af3-9a85-047d-1969-542d3379c667','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d2f363b9-bb2b-3df3-6304-54203c3a0b2e','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('d33a0e63-272d-88b0-70be-54203cf29704','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('d37d6fc7-e62b-1af9-4493-54203cadf980','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('d396e6fd-0f44-286d-bfb5-542d335652b2','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d3c2e278-3bfd-ba8c-72eb-54203c29c300','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('d406e746-f380-951d-cc15-54203cf67f63','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('d44f425b-151f-483d-d4e3-54203c6e82f1','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('d49a18ac-daff-c2c1-c543-54203c564ca2','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('d49b0eec-1070-befe-df56-54203c592938','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('d4afd47b-41ea-dc94-afc2-542d338f9823','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4deba2b-9878-4593-a612-54203cdb7332','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('d5243df9-9436-a799-df99-54203c14f696','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('d54da5d4-8ee1-eda3-e705-542d33ea212c','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d56dbd24-4b8b-c42c-1ddf-54203cff220b','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('d5b7864e-cd29-90d4-f424-54203c301f1e','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('d60469fd-0add-c680-56a2-54203cb205e5','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('d650335c-9d32-4ff4-974a-54203cfa2d2f','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('d65ff327-0250-58c8-c2f9-542d33153059','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d67d1c9c-bd3a-1f21-0eee-542d33d8ad57','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d69566d3-d242-68b0-4890-54203c58db79','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('d6dbaaf1-c8a1-83ec-359b-54203cbff47e','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('d7278030-6933-56bc-6f49-54203c6ef0d7','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('d76f55ef-b9c4-d485-3a52-54203cef8efd','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('d7bb8eab-b3d9-6719-903d-54203c6825d7','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('d7cc47a4-edce-9179-dc3f-542d33acd5f1','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d7ce85ed-27ea-5ded-765b-542d33732076','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('d806d18b-8758-7fd8-e0bd-54203caec871','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('d8502d70-70c3-2309-68aa-54203c1e77f1','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('d89b04fc-9818-c186-0040-54203c2b4029','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('d8c7c145-2538-b9fb-8f73-542d3382db0d','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d8e3dd55-c33c-4ae1-52d5-54203c156b81','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('d9167336-2df1-ffd3-6776-542d338cffcd','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9300c27-9d94-052b-953e-54203ca17833','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('d930a40f-e9f9-5cac-a3f6-54203c2d6e43','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('d94198d1-25fb-896d-2f0d-542d3360f345','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d98b3cdd-d854-1593-57a7-54203c35c7c2','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('d9e5abbe-abca-65e9-0ec4-54203c086c0d','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('da079066-746e-df40-989c-542d33e3c1b5','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da4086e8-b95b-8c91-63b4-54203c61c5a8','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('da95158e-9d46-1344-7267-542d33a5c519','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da9b12f3-9092-2772-d6a0-54203c16b987','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('daf616e2-6a83-0f41-f38a-54203c352cf2','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('db30dbd3-60b3-b6dd-ef57-542d33aeb5e7','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db544316-e477-30b2-f93e-54203c11e417','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('dbb27a39-11e3-593e-465b-54203cc3c638','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('dc113e15-bd6e-3e0c-bcbe-542d33403729','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc93c6f4-d40f-c108-5e48-542d33840b91','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd60eac5-2f66-457a-a2f9-542d33804862','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dd924d1a-ee44-6cef-9234-542d33a6be1c','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ddf60836-fa8e-49f6-99be-54203ce634cf','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de991a0e-cc66-5c4b-6f54-542d3301b668','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('decc7cc6-63a2-9788-eec8-542d33b215b5','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('df118abd-eded-ab44-ec3b-542d33937f6c','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfa082c0-20d8-07bb-1be1-542d333e6d77','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e030e3aa-0722-6b93-e842-542d33987f45','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e0d7c61f-ffcd-ba1a-abfc-542d33512d92','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e1a6cf05-d95b-a1d8-b05d-542d33f19a25','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2043003-639c-1ed4-2fb3-542d3375b670','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e2510caa-1590-4ced-94bc-54203cd55c62','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('e2f4a999-4802-b1df-c9bb-542d33b15497','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e39addfa-d6df-cffd-2b03-542d33c83424','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4ac6f1d-b39f-2298-b648-542d33d0ea6f','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e57ad183-b013-96b2-511a-542d33ce642c','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e5987348-cb1a-22ba-4430-542d33e9e299','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e65b004d-9738-a642-d9d9-54203ce7e298','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('e69da977-5487-b38c-5025-542d33d50774','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e771041e-5cb5-1dda-ef75-542d33c0c42c','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7a8edc0-19b4-44fd-0a7c-542d3341c52f','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7aa3e66-d704-a0bc-fbc5-542d33fe402b','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8d04f60-f8d8-62ed-7ce7-542d33eccd9b','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9f55cd4-e0a7-e018-e07a-542d333c8b82','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea63b279-ebaa-e749-930d-542d33dea987','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eacb0db6-4cf5-31f6-c71a-54203c84bb3f','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('eb6c6b53-7e7d-c75d-93aa-542d3320cd69','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec146458-60e5-3593-0539-542d33fc5259','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec8a7ed0-cd67-e13a-1ad8-542d332491ae','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ed54fdf2-851f-cf76-11e8-542d33f7e950','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('edfebf52-4c65-0d99-3197-542d331facb7','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('ee3708fc-a581-c1ea-d243-542d33643ef0','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef05ec58-a83a-67cc-4c0e-542d331e457c','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('ef29080a-9b07-c878-22c8-54203c630462','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('ef6d2b92-4d90-baea-d61e-542d33b241b8','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('f05d5fae-a80a-3964-f3dc-542d33ffd491','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('f060814d-978c-5dd2-d864-542d3348f44b','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('f13f8cde-54cd-3aa9-4283-542d33b46857','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f234f1c3-32b3-6d42-43c4-542d3307e4cb','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('f23d2d24-028d-b94b-f7bf-542d33f2b4d5','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3447d90-fefe-b46c-0b5f-542d3377f15c','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f36dd42f-c88f-7574-82d5-542d33878557','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('f411017b-4fdb-0327-a2ad-54203cc80365','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('f85e0904-f57f-5cb4-edba-542d339643dd','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f8800436-ac82-12c9-4ff7-54203cb147e9','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('fac005be-e937-0d5e-0e10-542d33fc2746','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('14449060-8b60-535b-4d28-541c552ce206',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesCustomAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0),('174f1c78-314e-312f-726f-541c556e50d5',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Perform Lucene Index','function::aodIndexUnindexed','2005-01-01 11:15:00',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',1),('185fe482-cd53-60eb-af30-541c553dd73d',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Optimise AOD Index','function::aodOptimiseIndex','2005-01-01 11:15:00',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',1),('246092b3-9cc0-eaa4-6379-542d33969e30',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 10:45:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('3fe6d6b7-6552-9f53-4d4a-542d33e67b61',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','AOP Check Inbound Mailboxes','function::pollMonitoredInboxesCustomAOP','2005-01-01 11:15:00','2020-12-31 00:00:00','*/1::*::*::*::*',NULL,NULL,NULL,'Active',0),('4508d2f0-162e-46e6-6131-542d335980d1',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Perform Lucene Index','function::aodIndexUnindexed','2005-01-01 11:15:00',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',1),('47979fdd-e2c8-abf3-3abc-542d33617bd8',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Optimise AOD Index','function::aodOptimiseIndex','2005-01-01 11:15:00',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',1),('c82624ad-465f-268a-5c31-541c554f1710',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 11:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('c9699782-09f0-7ad4-e017-541c55b56cc7',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 11:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('ca5c99e8-c971-7652-8f68-541c557263c3',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 14:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('cb571f07-982c-294b-4126-541c55e44974',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 06:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('cc4e4f1c-9b7f-10f3-6197-541c558b418e',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 17:00:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('cd40630e-57cd-aea1-11a7-541c55718749',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 12:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('ce2e4d69-6c8d-3d06-31ea-541c5591332d',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 12:00:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('cf24a7f8-76fd-c353-7789-541c557ceca2',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 09:00:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('d01b63ce-497f-7fe4-f384-541c551a092d',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 10:30:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('e2576201-1c06-8da6-da78-542d339b7ad2',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 13:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('e4bc4913-2028-36da-487a-542d330e7965',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 07:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Inactive',0),('e69924ab-5a1c-6e1a-83b8-542d33c5ee35',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 07:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('e85ce60e-11ae-171d-4401-542d33c94678',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 08:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('e9ffd2ca-ebfc-611a-d14c-542d331b2167',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 11:00:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('eb17eeb2-bd00-ace2-69e6-541c55323e85',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Run AOW WorkFlow','function::processAOW_Workflow','2005-01-01 16:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('eb761cd6-11cf-c4a7-1307-542d3368a7cb',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 08:00:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('ed3fc0f6-645e-56dd-756e-542d33adbef5',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 17:15:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('ef33b1c3-0aaa-4364-5800-542d33c0bfbe',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 19:15:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('f1240502-90c6-41de-6b09-542d33ef6e94',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 07:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('14a6f2bd-9236-5dce-58c2-5422dea2428c','Maintenance CRM','2014-09-24 15:07:09','2014-09-24 15:07:09','1','1','Talk to Julie about Maintenance in the CRM',0,'1','Not Started',1,NULL,1,NULL,'Accounts','','','Low'),('8966d9dc-b5c3-12eb-9afd-5422df54e2d2','Jira Time and Projects Est.','2014-09-24 15:12:37','2014-09-25 16:32:09','1','1','Awaiting further discussion with Matt',0,'1','Pending Input',0,'2014-09-26 16:00:00',0,'2014-09-26 14:00:00','Accounts','','','High');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (5,'b29bde01-ce46-001d-5ca3-542299c8fa3f','1','Users','1bfe725f-a503-ba38-c553-542299c5a790','Rick Timmis','2014-09-24 10:13:21','detailview','uccsahla4fd1iclen16ujhb635',1,0),(6,'6e860ee5-f884-a72a-f358-542299efd458','1','Users','1','WiFiSPARK Administrator','2014-09-24 10:14:35','editview','uccsahla4fd1iclen16ujhb635',1,0),(10,'41573294-b3f0-49ae-3986-54229ea2885c','1','AOD_IndexEvent','6138c218-99ea-4730-7ff3-54229ecae7b9','SparkCRM Email Integration','2014-09-24 10:36:32','save','uccsahla4fd1iclen16ujhb635',1,0),(20,'deed4811-2227-538b-fd7d-5422a0adb1da','1','AOD_IndexEvent','16acd424-42fb-6b38-fdf5-54229e505a8e','Gmail / G-Calendar Integration','2014-09-24 10:45:40','save','uccsahla4fd1iclen16ujhb635',1,0),(38,'6d158903-4470-0e55-b6e8-5422ac4e6794','1','AOD_IndexEvent','8f4c51a5-f242-1dd2-6018-5422ac062158','Account Type list','2014-09-24 11:36:22','save','uccsahla4fd1iclen16ujhb635',1,0),(42,'15ec1a82-00ac-88ff-0f62-5422ae835428','1','AOD_IndexEvent','39cbc32c-b528-b7be-990f-5422aea92ec1','SparkCRM Power Sales Overview','2014-09-24 11:43:09','save','uccsahla4fd1iclen16ujhb635',1,0),(51,'d51b1d86-9d9d-b13b-a350-5422be2f13b4','1','AOD_IndexEvent','1e03cedc-8f34-1b3d-bada-5422a365d924','Dev New Opportunity create quote','2014-09-24 12:52:56','save','uccsahla4fd1iclen16ujhb635',1,0),(93,'c0463bc9-a912-7678-b70e-5422de38ded3','1','Tasks','14a6f2bd-9236-5dce-58c2-5422dea2428c','Maintenance CRM','2014-09-24 15:07:10','detailview','uccsahla4fd1iclen16ujhb635',1,0),(109,'7adcb2cc-f38f-3e55-72ac-5423e4c17f1b','1','AOD_IndexEvent','b9210d4c-a10d-8bbd-d5c6-5422a1bb3e30','SugarCRM Data Deduplication','2014-09-25 09:48:05','save','gquae7vrp3oekjrr3j5783cpn3',1,0),(138,'17ecb56e-2927-fd34-81dd-5424220ec2df','1','AOD_IndexEvent','b5e52cb8-178c-7ef8-cb8f-5422ca16c355','Dev data import testing','2014-09-25 14:09:17','save','6bjfecc4h8i3q2t6rg134jd2u4',1,0),(139,'c9b3fdae-44f4-a46c-f76c-5424227af9b2','1','ProjectTask','9c93251f-eba8-d8f8-5338-5422caebd456','Dev data import testing','2014-09-25 14:09:18','detailview','6bjfecc4h8i3q2t6rg134jd2u4',1,0),(147,'4d9e027d-d259-a303-63a8-542422e63b8b','1','AOD_IndexEvent','2635af21-8dfe-c624-9be4-5422ad1ade39','Clean Data SQL Import','2014-09-25 14:11:31','save','6bjfecc4h8i3q2t6rg134jd2u4',1,0),(158,'e07176a2-b827-a8ee-27f8-5424396ef99c','1','ProjectTask','dc599ce3-31ac-dc8a-5a40-54229e47055d','Gmail / G-Calendar Integration','2014-09-25 15:48:37','detailview','ltuuaech4ba6mmfgqohrmrfki3',1,0),(161,'8e7f407f-5252-0dbd-5940-542443c7ab85','1','Tasks','8966d9dc-b5c3-12eb-9afd-5422df54e2d2','Jira Time and Projects Est.','2014-09-25 16:31:51','editview','ltuuaech4ba6mmfgqohrmrfki3',1,0),(165,'89a04f91-f36b-24f2-5d24-542443f77594','1','Notes','4dd38679-d068-df6f-01b9-5422c8e309ba','SugarCRM2SparkCRM-Migration','2014-09-25 16:33:23','detailview','ltuuaech4ba6mmfgqohrmrfki3',1,0),(175,'8f607f07-9cd7-ac1e-ba4a-54256a94d1a7','1','AOD_IndexEvent','9aa924de-8c3c-05e7-0d7f-54229f2aa329','Customer Account Creation','2014-09-26 13:32:16','save','tic0gi9ukeob687utp9cltrc90',1,0),(176,'68ed59b8-41f1-cd24-3a81-54256a3c383e','1','ProjectTask','6b15b4e5-ac86-f342-f581-54229fdbc843','Customer Account Creation','2014-09-26 13:32:17','detailview','tic0gi9ukeob687utp9cltrc90',1,0),(178,'a8ddb6aa-e5ea-f95f-94a5-54256ae20b4b','1','ProjectTask','cff85cf3-45f6-0028-b255-5422a1443e67','SugarCRM Data Deduplication','2014-09-26 13:32:32','detailview','tic0gi9ukeob687utp9cltrc90',1,0),(182,'b35deded-cb67-945f-ee35-54258643c776','1','AOD_IndexEvent','e77c2fb6-79e0-55b3-94d6-542586eb9000','Set up SparkCRM Development Environment','2014-09-26 15:31:50','save','tic0gi9ukeob687utp9cltrc90',1,0),(186,'9c0df3d6-5ed5-44d3-4592-542590acb009','1','AOD_IndexEvent','e80dfd3b-0dde-59d9-e04f-5422e0857db1','Gmail Terms review','2014-09-26 16:10:59','save','tic0gi9ukeob687utp9cltrc90',1,0),(187,'8a262f60-9e71-9e61-2db4-542590ad2e8e','1','ProjectTask','ab6cc9f6-c20b-6e36-d1a8-5422e07498a8','Gmail Terms review','2014-09-26 16:11:00','detailview','tic0gi9ukeob687utp9cltrc90',1,0),(190,'a305bbde-9066-7c18-aebd-5429116c9d08','1','ProjectTask','31182203-be4e-594d-17e1-54229eca1a12','SparkCRM Email Integration','2014-09-29 08:00:18','detailview','tic0gi9ukeob687utp9cltrc90',1,0),(199,'7ad3991d-0149-4020-64a0-54295857d75c','1','Meetings','d8ab24c5-be04-d214-d964-5424432272ca','Actions & CRM Update','2014-09-29 13:02:38','detailview','9rric5srg3h28h464stg75vv97',1,0),(201,'639fa6eb-729c-1287-4190-54297272f310','1','ProjectTask','df3213a3-f06e-75fc-d05c-5422a3e800cb','Dev New Opportunity create quote','2014-09-29 14:53:35','detailview','fhk4npfudhlubulmg6v4j1gu56',1,0),(205,'26b563a2-d253-1a6e-8ce6-5429725894bc','1','Notes','3973ec73-c019-cb74-cc2f-5429727b1b44','SparkCRM Presentation G-Drive','2014-09-29 14:54:21','detailview','fhk4npfudhlubulmg6v4j1gu56',1,0),(208,'6dd6c3cf-4c02-f184-60f0-5429727719ea','1','ProjectTask','60240c6b-f448-b6fe-21f4-5422ae7f2509','SparkCRM Power Sales Overview','2014-09-29 14:54:57','detailview','fhk4npfudhlubulmg6v4j1gu56',1,0),(212,'d4ec041e-eb63-b011-b351-54297291f8fd','1','AOD_IndexEvent','97f363df-71e1-9e98-255e-5422a023680c','SparkCRM Presentation','2014-09-29 14:55:42','save','fhk4npfudhlubulmg6v4j1gu56',1,0),(213,'a06c6ba3-f222-0f12-3e8b-542972efc09a','1','ProjectTask','685a7dba-60e7-ba01-1ff2-5422a043dca6','SparkCRM Presentation','2014-09-29 14:55:43','detailview','fhk4npfudhlubulmg6v4j1gu56',1,0),(225,'48c86f0c-d940-af55-c15d-542a85cbf8eb','1','AOD_IndexEvent','af9f0166-52bb-d36c-2dd1-5422a3cb0fa0','Dev iteration of Quotes and Opps','2014-09-30 10:26:58','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(226,'510ce9b8-de11-8014-0895-542a85a09f99','1','ProjectTask','816d39be-68a5-5bce-5a24-5422a35f649e','Dev iteration of Quotes and Opps','2014-09-30 10:26:59','detailview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(229,'70f6f93e-7a34-473c-0505-542aca79fcf0','1','AOD_IndexEvent','a9f29401-4aa3-2c46-01b5-542aca5f579b','Set up rolling release environment','2014-09-30 15:23:26','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(231,'6437208d-8dec-2955-ad24-542acf558d2f','1','AOD_IndexEvent','a2f7bca7-e6a7-b199-0794-542acf44d4a0','SparkCRM Usage Testing','2014-09-30 15:43:49','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(234,'3dbd34d5-ef16-de7a-142b-542acf8efec2','1','ProjectTask','61ad8d7e-fd33-bb02-2aa6-542aca2c205c','Set up rolling release environment','2014-09-30 15:44:29','detailview','cr3lqmcg6j14r95dqnk6udhbn2',0,0),(237,'bae0e02b-b9db-e16e-e324-542ad070d35b','1','Project','668ab70a-a70c-0be8-58e1-542ac8105f84','SparkCRM Roll out Phase I','2014-09-30 15:45:45','detailview','cr3lqmcg6j14r95dqnk6udhbn2',0,0),(238,'ecba5e0f-91f9-7310-b914-542ad0c03210','1','ProjectTask','54c060ee-7d1f-833a-457f-542acff05473','SparkCRM Usage Testing','2014-09-30 15:45:49','detailview','cr3lqmcg6j14r95dqnk6udhbn2',0,0),(239,'58588807-93e6-ac61-b720-542ad0a33d93','1','AOD_IndexEvent','95e43d52-4fba-c753-81b4-542ad08d4301','SparkCRM Usage Testing','2014-09-30 15:46:55','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(243,'71a60756-61af-b5e5-104a-542ad097c7d8','1','AOD_IndexEvent','8e415163-806d-2f20-3164-5422a08afbf6','SparkCRM Usage demo - Internal','2014-09-30 15:49:07','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(249,'bc7f5de0-2d2e-5dfe-b297-542ad2b15fd1','1','AOD_IndexEvent','a0c000c6-7562-a06a-d05c-542ad2b7a074','SugarCRM Closedown','2014-09-30 15:54:09','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(251,'79b0d7bc-4116-2215-7b73-542ad29169c9','1','AOD_IndexEvent','bafba752-7e78-e91e-dbe3-542ad25edeb6','SparkCRM GO LIVE','2014-09-30 15:55:55','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(257,'27188d39-49e3-2966-a950-542ad2bc0e68','1','ProjectTask','e3c64ece-4198-0c52-90e3-5422ad1ec68a','Clean Data SQL Import','2014-09-30 15:57:19','editview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(258,'27510263-5354-5830-077d-542ad30daf10','1','AOD_IndexEvent','3f789a9f-7772-d4ee-6e6c-542ad380ad24','SugarCRM 2 SparkCRM Data migration','2014-09-30 15:58:17','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(259,'d849c43a-69a6-98b6-82fb-542ad3d42468','1','ProjectTask','f130a4a0-699a-607a-495b-542ad3c049af','SugarCRM 2 SparkCRM Data migration','2014-09-30 15:58:18','detailview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(263,'9c570b0c-bb59-51f1-3826-542ad3cc9892','1','AOD_IndexEvent','678569ae-5253-5ed1-7f10-5422ec1484d9','Target and Target list Export','2014-09-30 15:59:09','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(264,'9f454d23-fbd7-fa11-9307-542ad3540afa','1','ProjectTask','4c700a56-9723-1489-46fb-5422eccf1af9','Target and Target list Export','2014-09-30 15:59:11','detailview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(269,'c9f0ce1f-5830-b8a1-5d1a-542ad4c3d013','1','AOD_IndexEvent','bde855f3-3497-17ee-9832-5422a5876c5a','Quote to Opportunity update','2014-09-30 16:02:14','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(270,'606a8c71-4f64-0b1c-ecea-542ad42b3a2d','1','ProjectTask','89ed47bd-36be-f31a-ff5f-5422a51627ca','Quote to Opportunity update','2014-09-30 16:02:15','detailview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(273,'36038f9e-92fd-f752-b6e0-542ad4f1428f','1','Project','64becb37-b6eb-b61b-362d-542ad37aa7f7','SparkCRM Phase 2','2014-09-30 16:02:49','detailview','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(275,'64c0f012-cca0-6b9b-7ebf-542ad7b29323','1','Emails','36400eb9-9a09-5b3b-6316-542ad7cbbd26','Production CRM Server','2014-09-30 16:15:28','save','cr3lqmcg6j14r95dqnk6udhbn2',1,0),(279,'66211aca-285b-4c03-1414-542bdee33bcf','1','AOD_IndexEvent','8a1d1791-0162-7a23-fca1-542bde02ae11','Production Server Build','2014-10-01 10:59:53','save','6ins9bbcknjuqum9gdarcraub2',1,0),(280,'3b5a0ba3-089d-d75e-64ef-542bde720253','1','Project','26143743-1b4b-8b55-b53f-54229db264b6','SparkCRM Phase 1','2014-10-01 10:59:53','detailview','6ins9bbcknjuqum9gdarcraub2',1,0),(283,'88e3abdb-f0f4-2623-ead6-542c0c3f531e','1','AOD_IndexEvent','2164ef95-48fc-1f63-675e-542ad04b236f','Set up rolling release environment','2014-10-01 14:16:51','save','jn8kua9k2lji4scm1i2gnj24v5',1,0),(284,'35d9c226-9c2c-29c4-c5b7-542c0cc218db','1','ProjectTask','c535e5c0-1f7c-880a-b08d-542ad0e88962','Set up rolling release environment','2014-10-01 14:16:52','detailview','jn8kua9k2lji4scm1i2gnj24v5',1,0),(285,'57d38686-efe1-477b-90c9-542d0d9c336b','1','ProjectTask','5ec27a30-f1cc-f646-333e-5422a09c14a4','SparkCRM Usage demo - Internal','2014-10-02 08:30:15','detailview','jn8kua9k2lji4scm1i2gnj24v5',1,0),(288,'b7d9e37a-3300-30b0-a2b8-542d0e6de20e','1','Project','cd4bf529-dcef-ded5-cb9d-542d0d8aa44c','SparkCRM Future Backlog','2014-10-02 08:35:54','detailview','jn8kua9k2lji4scm1i2gnj24v5',1,0),(291,'90b1c891-ee75-c531-f741-542d0e5c692a','1','AOD_IndexEvent','4d10b14e-eed6-9a36-ce59-542d0eb698f0','Support Contract Notice in Zendesk','2014-10-02 08:36:32','save','jn8kua9k2lji4scm1i2gnj24v5',1,0),(292,'3d1dcbfb-3c66-6827-2c08-542d0e0c5318','1','ProjectTask','112ec298-1510-a9be-d282-542d0ee2a4f4','Support Contract Notice in Zendesk','2014-10-02 08:36:33','detailview','jn8kua9k2lji4scm1i2gnj24v5',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('ee1a0696-c94b-b641-a5ad-54203c69da8f','upload/upgrades/module/Gantt_0.1.zip','77e2d3d9f2c6a96de362c7c2adab78eb','module','installed','0.1 Alpha','Project Gantt Chart','Project Gantt Chart for SugarCRM','PGC_Alpha','YTozOntzOjg6Im1hbmlmZXN0IjthOjExOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjM6IjYuKiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO319czo2OiJyZWFkbWUiO3M6MDoiIjtzOjY6ImF1dGhvciI7czo4OiJXZWkgRG9uZyI7czoxMToiZGVzY3JpcHRpb24iO3M6MzI6IlByb2plY3QgR2FudHQgQ2hhcnQgZm9yIFN1Z2FyQ1JNIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjE5OiJQcm9qZWN0IEdhbnR0IENoYXJ0IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMy0wNS0yMSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjk6IjAuMSBBbHBoYSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjQ6e3M6MjoiaWQiO3M6OToiUEdDX0FscGhhIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjU6IkdhbnR0IjtzOjU6ImNsYXNzIjtzOjU6IkdhbnR0IjtzOjQ6InBhdGgiO3M6MjM6Im1vZHVsZXMvR2FudHQvR2FudHQucGhwIjtzOjM6InRhYiI7YjowO319czo0OiJjb3B5IjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czozNzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9HYW50dCI7czoyOiJ0byI7czoxMzoibW9kdWxlcy9HYW50dCI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9Qcm9qZWN0L21ldGFkYXRhL2RldGFpbHZpZXdkZWZzLnBocCI7czoyOiJ0byI7czo1MDoiY3VzdG9tL21vZHVsZXMvUHJvamVjdC9tZXRhZGF0YS9kZXRhaWx2aWV3ZGVmcy5waHAiO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6MzQ6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2014-09-22 15:14:36',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('110a386d-710b-10ab-001b-542d332fe144','Home',0,'2014-10-02 11:15:54','2014-10-02 11:50:33','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImM0MjVjNjMyLWU0YzYtODgwNS03NTMzLTU0MmQzMzlhNGU5YiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MToiY3VzdG9tL21vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJjNDhmN2I1ZS0xNzcxLTdjODEtMmIwOS01NDJkMzMyZTU0NGMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJjNGVlYTczNC03NTc4LTczMjktYTZiOS01NDJkMzM5NzYzZmYiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJjNTQyOWRiMC1mN2JiLWVkYTUtMmNiMS01NDJkMzNmYmI4MWIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImM1YmM3MmI2LWEyYjgtODU4OS0xYTk5LTU0MmQzM2Q1MWY2MCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImM2MzMyMzVlLWZmYmItODFlMi0xYmEzLTU0MmQzMzI0YjRmYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo1OntpOjE7czozNjoiYzQ4ZjdiNWUtMTc3MS03YzgxLTJiMDktNTQyZDMzMmU1NDRjIjtpOjI7czozNjoiYzRlZWE3MzQtNzU3OC03MzI5LWE2YjktNTQyZDMzOTc2M2ZmIjtpOjM7czozNjoiYzU0MjlkYjAtZjdiYi1lZGE1LTJjYjEtNTQyZDMzZmJiODFiIjtpOjQ7czozNjoiYzViYzcyYjYtYTJiOC04NTg5LTFhOTktNTQyZDMzZDUxZjYwIjtpOjU7czozNjoiYzYzMzIzNWUtZmZiYi04MWUyLTFiYTMtNTQyZDMzMjRiNGZjIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJjNDI1YzYzMi1lNGM2LTg4MDUtNzUzMy01NDJkMzM5YTRlOWIiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),('1d2adc7c-5ea6-62bb-21b5-5422973be876','Users2_USER',0,'2014-09-24 10:03:54','2014-09-24 10:03:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('22cc0fa1-9ca9-0074-f20a-542ad0090882','ProjectTask2_PROJECTTASK',0,'2014-09-30 15:45:36','2014-09-30 16:17:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMDoiZGF0ZV9zdGFydCI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjt9fQ=='),('23f219af-50a8-345e-fac1-542d33a0d371','Home2_CALL',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('263bd1af-a1f7-e284-a039-542d33d9373d','Home2_MEETING',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('2ce43879-2b95-472d-114a-542d33802b17','Home2_OPPORTUNITY',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3388f5ca-036c-b78f-4945-5422993f886e','global',0,'2014-09-24 10:13:20','2014-09-24 10:13:20','1bfe725f-a503-ba38-c553-542299c5a790','YTozMjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czozOiIzMDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0xvbmRvbiI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjE0OiJzbXRwLmdtYWlsLmNvbSI7czoxMzoibWFpbF9zbXRwdXNlciI7czoyMToicnRpbW1pc0B3aWZpc3BhcmsuY29tIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjExOiJmb3JyZXN0MjM5NCI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjk6InBlYWNoZnV6eiI7fQ=='),('35740d0c-7210-1d78-7ba5-542d33035b0f','Home2_ACCOUNT',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('3910fa7f-769c-ac46-8a6f-542d339cb679','Home2_LEAD',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('39def902-2e0e-ca83-1a43-541c57baac29','ETag',0,'2014-09-19 16:20:50','2014-09-24 10:03:29','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),('3cea20e5-eca6-cbf8-3609-542d330439bf','Home2_SUGARFEED',0,'2014-10-02 11:15:54','2014-10-02 11:15:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('49186c8d-f89d-ce5b-e709-5422dda78aa9','Tasks2_TASK',0,'2014-09-24 15:06:23','2014-09-24 15:06:23','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('755564fe-1b98-bdb0-8b16-54216f2d1d29','Contacts2_CONTACT',0,'2014-09-23 13:03:56','2014-09-23 13:03:56','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8affed3d-7e70-dd73-7ced-541c57d05108','Home',0,'2014-09-19 16:20:50','2014-09-29 08:47:59','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjEzOntzOjM2OiIyOGIxMjYwZC1hN2EwLWZlOGItNWYzMi01NDFjNTc5MTZiMjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NzE6ImN1c3RvbS9tb2R1bGVzL1N1Z2FyRmVlZC9EYXNobGV0cy9TdWdhckZlZWREYXNobGV0L1N1Z2FyRmVlZERhc2hsZXQucGhwIjt9czozNjoiMjlmNzZhZmYtMWFiZC00ODAyLWJlZDktNTQxYzU3YTBkZGM4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMmI3ZjgzZGEtZmU2YS1mMzFmLWRiODAtNTQxYzU3YzcyMTFhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMmRkMTg2MjUtYjcxMy1mNjg4LWFjNTctNTQxYzU3YWVkZTJhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMmY0NzE4YTgtNjUzOS02MGRmLWYzZDEtNTQxYzU3ZTUxODEyIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiN2QyMzMxMTUtMjA5MS04YjhmLWM1NTItNTQyMmNhZWE2ZmRmIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjIwOiJNeVByb2plY3RUYXNrRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTE6IlByb2plY3RUYXNrIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjM6e3M6MTI6ImRhdGVfZW50ZXJlZCI7YTowOnt9czoxMDoiZGF0ZV9zdGFydCI7YToxOntzOjQ6InR5cGUiO3M6ODoiVFBfdG9kYXkiO31zOjExOiJkYXRlX2ZpbmlzaCI7YTowOnt9fXM6NToidGl0bGUiO3M6MjA6IlRvZGF5cyBQcm9qZWN0IFRhc2tzIjtzOjExOiJteUl0ZW1zT25seSI7czo0OiJ0cnVlIjtzOjExOiJkaXNwbGF5Um93cyI7czoxOiI1IjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YTo1OntpOjA7czo0OiJuYW1lIjtpOjE7czo4OiJwcmlvcml0eSI7aToyO3M6MTA6ImRhdGVfc3RhcnQiO2k6MztzOjExOiJkYXRlX2ZpbmlzaCI7aTo0O3M6MTY6InBlcmNlbnRfY29tcGxldGUiO31zOjExOiJhdXRvUmVmcmVzaCI7czoyOiItMSI7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo3NDoibW9kdWxlcy9Qcm9qZWN0VGFzay9EYXNobGV0cy9NeVByb2plY3RUYXNrRGFzaGxldC9NeVByb2plY3RUYXNrRGFzaGxldC5waHAiO31zOjM2OiIzNmM0Mjc0OS0yMDBiLTdhODEtZWEyZC01NDIyZDJkY2E0ODkiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTM6IkpvdFBhZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6Nzoib3B0aW9ucyI7YToxOntzOjk6InNhdmVkVGV4dCI7czoyNjk6IkRldkNSTSBJbnN0YWxsZWQgYW5kIFNuYXBzaG90dGVkLjxiciAvPgpTdWdhckNSTSBkYXRhIGV4cG9ydCByZWFkeSBpbiAvaG9tZS9yaWNrLzxiciAvPgo8YnIgLz4KQ2hlY2sgdGhlIFN1Z2FyY3JtMlNwYXJrY3JtLU1pZ3JhdGlvbi50eHQgZG9jIEl0IGRpZG4ndCBvcGVuIGNvcnJlY3RseSAoTm8gV3JhcCkgaW4gTm90ZXBhZC4gTWlnaHQgbmVlZCBhIGZvcm1hbCBHb29nbGUgRG9jIHRvIGVuc3VyZSBpdCBzdGF5cyBmb3JtYXR0ZWQuPGJyIC8+CjxiciAvPgo8YnIgLz4KIjt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvSm90UGFkRGFzaGxldC9Kb3RQYWREYXNobGV0LnBocCI7fXM6MzY6IjM3MjliZjBkLWM3Y2EtNDU1OC04NWE2LTU0MjJkZTI5MmQ3NiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjU6e3M6ODoicHJpb3JpdHkiO2E6MTp7aTowO3M6MzoiTG93Ijt9czo2OiJzdGF0dXMiO2E6MTp7aTowO3M6MTE6Ik5vdCBTdGFydGVkIjt9czoxMjoiZGF0ZV9lbnRlcmVkIjthOjA6e31zOjEwOiJkYXRlX3N0YXJ0IjthOjA6e31zOjg6ImRhdGVfZHVlIjthOjA6e319czo1OiJ0aXRsZSI7czoxODoiTWF5YmUgT25lZGF5IFRhc2tzIjtzOjExOiJteUl0ZW1zT25seSI7czo0OiJ0cnVlIjtzOjExOiJkaXNwbGF5Um93cyI7czoxOiI1IjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YTo3OntpOjA7czoxMjoic2V0X2NvbXBsZXRlIjtpOjE7czo0OiJuYW1lIjtpOjI7czoxMToicGFyZW50X25hbWUiO2k6MztzOjg6InByaW9yaXR5IjtpOjQ7czo2OiJzdGF0dXMiO2k6NTtzOjEwOiJkYXRlX3N0YXJ0IjtpOjY7czo4OiJkYXRlX2R1ZSI7fXM6MTE6ImF1dG9SZWZyZXNoIjtzOjI6Ii0xIjt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL1Rhc2tzL0Rhc2hsZXRzL015VGFza3NEYXNobGV0L015VGFza3NEYXNobGV0LnBocCI7fXM6MzY6IjkxZWUxNzZkLTcxMzEtMzNkYi0yZjNiLTU0MjJkZTFkNjkwMSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6Njp7czo3OiJmaWx0ZXJzIjthOjU6e3M6ODoicHJpb3JpdHkiO2E6Mjp7aTowO3M6NDoiSGlnaCI7aToxO3M6NjoiTWVkaXVtIjt9czo2OiJzdGF0dXMiO2E6Mzp7aTowO3M6MTE6Ik5vdCBTdGFydGVkIjtpOjE7czoxMToiSW4gUHJvZ3Jlc3MiO2k6MjtzOjEzOiJQZW5kaW5nIElucHV0Ijt9czoxMjoiZGF0ZV9lbnRlcmVkIjthOjA6e31zOjEwOiJkYXRlX3N0YXJ0IjthOjA6e31zOjg6ImRhdGVfZHVlIjthOjA6e319czo1OiJ0aXRsZSI7czoxMzoiTXkgT3BlbiBUYXNrcyI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6Nzp7aTowO3M6MTI6InNldF9jb21wbGV0ZSI7aToxO3M6NDoibmFtZSI7aToyO3M6MTE6InBhcmVudF9uYW1lIjtpOjM7czo4OiJwcmlvcml0eSI7aTo0O3M6Njoic3RhdHVzIjtpOjU7czoxMDoiZGF0ZV9zdGFydCI7aTo2O3M6ODoiZGF0ZV9kdWUiO31zOjExOiJhdXRvUmVmcmVzaCI7czoyOiItMSI7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO31zOjM2OiJiZjYwMTA0YS02MDg0LTVhNjctYTU3YS01NDI5MWM2NmU3YjAiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6Mjk6Ik15UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6ODc6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0L015UGlwZWxpbmVCeVNhbGVzU3RhZ2VEYXNobGV0LnBocCI7fXM6MzY6IjZlMjhmM2NhLTg2NTQtY2YxZC00NzhlLTU0MjkxYzM4YWRkYiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyMToiT3V0Y29tZUJ5TW9udGhEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzE6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL091dGNvbWVCeU1vbnRoRGFzaGxldC9PdXRjb21lQnlNb250aERhc2hsZXQucGhwIjt9czozNjoiOTdjMzJiM2MtZGZlYS0zNjY1LWQ5NGItNTQyOTFjMWZmMTg5IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjMyOiJPcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjkzOiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldC9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlRGFzaGxldC5waHAiO31zOjM2OiI3MWQ4YWYxOC05ZGVhLTdlNzUtMmVkMy01NDI5MWM4ZjE0ODUiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6NDE6Ik9wcG9ydHVuaXRpZXNCeUxlYWRTb3VyY2VCeU91dGNvbWVEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6MTExOiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlQnlPdXRjb21lRGFzaGxldC9PcHBvcnR1bml0aWVzQnlMZWFkU291cmNlQnlPdXRjb21lRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToyOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjdkMjMzMTE1LTIwOTEtOGI4Zi1jNTUyLTU0MjJjYWVhNmZkZiI7aToxO3M6MzY6IjI5Zjc2YWZmLTFhYmQtNDgwMi1iZWQ5LTU0MWM1N2EwZGRjOCI7aToyO3M6MzY6IjkxZWUxNzZkLTcxMzEtMzNkYi0yZjNiLTU0MjJkZTFkNjkwMSI7aTozO3M6MzY6IjJiN2Y4M2RhLWZlNmEtZjMxZi1kYjgwLTU0MWM1N2M3MjExYSI7aTo1O3M6MzY6IjJkZDE4NjI1LWI3MTMtZjY4OC1hYzU3LTU0MWM1N2FlZGUyYSI7aTo2O3M6MzY6IjJmNDcxOGE4LTY1MzktNjBkZi1mM2QxLTU0MWM1N2U1MTgxMiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YTozOntpOjA7czozNjoiMzZjNDI3NDktMjAwYi03YTgxLWVhMmQtNTQyMmQyZGNhNDg5IjtpOjE7czozNjoiMjhiMTI2MGQtYTdhMC1mZThiLTVmMzItNTQxYzU3OTE2YjI2IjtpOjI7czozNjoiMzcyOWJmMGQtYzdjYS00NTU4LTg1YTYtNTQyMmRlMjkyZDc2Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fWk6MTthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e2k6MDtzOjM2OiI3MWQ4YWYxOC05ZGVhLTdlNzUtMmVkMy01NDI5MWM4ZjE0ODUiO2k6MTtzOjM2OiI5N2MzMmIzYy1kZmVhLTM2NjUtZDk0Yi01NDI5MWMxZmYxODkiO2k6MjtzOjM2OiI2ZTI4ZjNjYS04NjU0LWNmMWQtNDc4ZS01NDI5MWMzOGFkZGIiO2k6MztzOjM2OiJiZjYwMTA0YS02MDg0LTVhNjctYTU3YS01NDI5MWM2NmU3YjAiO31zOjU6IndpZHRoIjtzOjM6IjYwJSI7fWk6MTthOjI6e3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MDoiIjt9czo1OiJ3aWR0aCI7czozOiI0MCUiO319czo5OiJwYWdlVGl0bGUiO3M6NzoiUmVwb3J0cyI7czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjt9fX0='),('91f1d872-51ac-e004-ab60-5425904f0ba8','SecurityGroups2_SECURITYGROUP',0,'2014-09-26 16:11:32','2014-09-26 16:11:32','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9a4a3976-69bd-e28e-2a99-541c57b85b03','Home2_CALL',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9cb38938-5bd8-e7c4-66d1-541c57a1e7c4','Home2_MEETING',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9f319842-c8d9-a2bd-2621-541c574f9607','Home2_OPPORTUNITY',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a000094e-17e9-3173-dd3c-5422ca88b6a5','Home2_PROJECTTASK',0,'2014-09-24 13:42:19','2014-09-24 13:42:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a19a19d3-8c04-0647-a1af-541c57e8e136','Home2_ACCOUNT',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a40e5208-fe75-d6e0-0d9d-541c57d8fe1c','Home2_LEAD',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a69cc2f4-7259-5b1b-6504-541c5780740a','Home2_SUGARFEED',0,'2014-09-19 16:20:50','2014-09-19 16:20:50','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c6b439d8-3185-fcc8-cd04-541c55471678','global',0,'2014-09-19 16:12:03','2014-10-02 11:50:49','1','YTozMTp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImUwNGRlZjMxLWI1ZDktNDAyYS1mNGZmLTU0MmQzMzY4Njg0YSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Mb25kb24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoxNDoic210cC5nbWFpbC5jb20iO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6MTA6IkVtcGxveWVlc1EiO2E6Mzp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjt9fQ=='),('c7fc82af-a3ff-9eb6-4d6c-5422de7d122a','Home2_TASK',0,'2014-09-24 15:07:42','2014-09-24 15:07:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c822e60e-294a-aea2-c548-54229c4017a9','Project2_PROJECT',0,'2014-09-24 10:26:42','2014-09-24 10:26:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d079cc36-977d-8136-e51f-54203d7b3aba','Employees2_EMPLOYEE',0,'2014-09-22 15:15:40','2014-09-22 15:15:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d5396713-93e7-5c8e-3bb1-54259041ba82','AOS_Quotes2_AOS_QUOTES',0,'2014-09-26 16:11:40','2014-09-26 16:11:40','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('db89ac15-a51f-1264-aff3-54216f480229','Leads2_LEAD',0,'2014-09-23 13:03:47','2014-09-23 13:03:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e078bf92-bd04-01f6-b3ec-542d3391fbc0','global',0,'2014-10-02 11:12:53','2014-10-02 11:15:53','1','YTozMDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImUwNGRlZjMxLWI1ZDktNDAyYS1mNGZmLTU0MmQzMzY4Njg0YSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Mb25kb24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoxNDoic210cC5nbWFpbC5jb20iO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO30='),('e51bd300-b68e-c0ad-4a45-54203922c5e4','Accounts2_ACCOUNT',0,'2014-09-22 14:59:42','2014-09-22 14:59:42','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ec4a437f-e176-9333-77fd-5429672f1706','AOS_Products2_AOS_PRODUCTS',0,'2014-09-29 14:08:44','2014-09-29 14:08:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f229b6b8-76a8-938b-5f15-542d33926aa4','ETag',0,'2014-10-02 11:15:53','2014-10-02 11:15:53','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('f3a96859-1a53-abb6-9b80-54243d641d6a','Meetings2_MEETING',0,'2014-09-25 16:05:08','2014-09-25 16:05:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$HqowUPsp$SqyI8y27TRBncpXxAMp1J.',0,NULL,NULL,1,'Staging','System',1,0,1,NULL,'2014-10-02 11:12:53','2014-10-02 11:15:53','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
INSERT INTO `vcals` VALUES ('3a46e856-b3f3-81f5-f825-542443d4bd91',0,'2014-09-25 16:30:53','2014-09-29 13:02:37','1','vfb','sugar','BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=WiFiSPARK Administrator:VFREEBUSY\r\nDTSTART:2014-09-27 23:00:00\r\nDTEND:2014-11-28 00:00:00\r\nFREEBUSY:20140930T130000Z/20140930T140000Z\r\nDTSTAMP:2014-09-29 13:02:37\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('61ed0f36-51aa-a4d0-f7c7-542d333fde37',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','Chart Data Cache','3.5.1','3.5.1'),('75c5a327-8ed2-6430-da29-542d338fe3e0',0,'2014-10-02 11:13:06','2014-10-02 11:13:06','1','1','Rebuild Relationships','4.0.0','4.0.0'),('7f790078-be72-af77-73ae-542d3324fbad',0,'2014-10-02 11:12:53','2014-10-02 11:12:53','1','1','htaccess','3.5.1','3.5.1'),('8e72feb1-d348-b9f1-d2fd-542d335863d0',0,'2014-10-02 11:13:06','2014-10-02 11:13:06','1','1','Rebuild Extensions','4.0.0','4.0.0'),('d4141ec1-243b-aff3-5474-541c55d02633',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','Chart Data Cache','3.5.1','3.5.1'),('d4f46aac-5c8b-3fe2-79a5-541c5589fcca',0,'2014-09-19 16:12:03','2014-09-19 16:12:03','1','1','htaccess','3.5.1','3.5.1'),('dc08de70-5c40-6c98-816d-54203c56c52d',0,'2014-09-22 15:14:38','2014-09-22 15:14:38','1','1','Rebuild Relationships','4.0.0','4.0.0'),('ec4b771a-5a48-0fbb-9a3e-541c554e8693',0,'2014-09-19 16:12:09','2014-09-19 16:12:09','1','1','Rebuild Extensions','4.0.0','4.0.0');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-02 13:49:56
