-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: sparkcrm
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Change the structure of Opportunitie to add the extra fields
--

/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
ALTER TABLE `opportunities_cstm` ADD  `reason_lost_c` varchar(100) DEFAULT NULL;
ALTER TABLE `opportunities_cstm` ADD  `wfs_expected_revenue_c` decimal(18,2) DEFAULT '0.00';
ALTER TABLE `opportunities_cstm` ADD  `wfs_opp_sage_sales_order_c` int(10) DEFAULT NULL;
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
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
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('AOS_Productsdiscount_c','discount_c','LBL_DISCOUNT','','Check box if this Product is discountable','AOS_Products','bool',255,0,'0','2014-10-27 16:19:37',0,0,0,0,1,'true','','','',''),('AOS_Quotesquote_type_c','quote_type_c','LBL_QUOTE_TYPE','Affects the discount calculations applied to the quote','Select appropriate quote type ','AOS_Quotes','enum',100,0,'Standard','2014-10-27 16:10:46',0,0,0,0,1,'true','quote_type_list','','',''),('Bugsdev_points_actual_c','dev_points_actual_c','LBL_DEV_POINTS_ACTUAL',NULL,'Non editable field, calculated from related task recording','Bugs','decimal',6,0,NULL,'2014-10-28 10:01:09',0,0,0,0,1,'true','2',NULL,NULL,NULL),('Bugsdev_points_estimate_c','dev_points_estimate_c','LBL_DEV_POINTS_ESTIMATE','','Enter the estimated number of Story Points to complete this Bug','Bugs','decimal',6,0,'0.00','2014-10-28 09:53:02',0,0,0,0,1,'true','2','','',''),('Bugswiki_test_specification_c','wiki_test_specification_c','LBL_WIKI_TEST_SPECIFICATION',NULL,'Enter the link to the Test Specification in the Wiki','Bugs','url',255,0,'wiki','2014-10-28 10:12:54',0,0,0,0,1,'true',NULL,NULL,NULL,'_blank'),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Opportunitiesreason_lost_c','reason_lost_c','LBL_REASON_LOST','','Select why this sale was not succesful','Opportunities','enum',100,0,'','2014-11-06 10:29:22',0,0,0,0,1,'true','sales_reason_lost_list','','',''),('Opportunitieswfs_expected_revenue_c','wfs_expected_revenue_c','LBL_WFS_EXPECTED_REVENUE','Enter an anticipated Monthly Revenue',NULL,'Opportunities','decimal',18,0,'0.00','2014-11-06 10:32:19',0,0,0,0,1,'true','2',NULL,NULL,NULL),('Opportunitieswfs_opp_capex_c','wfs_opp_capex_c','LBL_WFS_OPP_CAPEX','','Capital Value','Opportunities','decimal',18,0,'0.00','2014-10-09 14:14:47',0,0,0,0,1,'true','2','','',''),('Opportunitieswfs_opp_connex_c','wfs_opp_connex_c','LBL_WFS_OPP_CONNEX','','','Opportunities','decimal',18,0,'0.00','2014-10-09 14:16:20',0,0,0,0,1,'true','2','','',''),('Opportunitieswfs_opp_filtering_c','wfs_opp_filtering_c','LBL_WFS_OPP_FILTERING','','','Opportunities','decimal',18,0,'0.00','2014-10-09 14:16:59',0,0,0,0,1,'true','2','','',''),('Opportunitieswfs_opp_maintenance_c','wfs_opp_maintenance_c','LBL_WFS_OPP_MAINTENANCE',NULL,NULL,'Opportunities','decimal',18,0,'0.00','2014-10-09 14:39:34',0,0,0,0,1,'true','2',NULL,NULL,NULL),('Opportunitieswfs_opp_mng_srvc_c','wfs_opp_mng_srvc_c','LBL_WFS_OPP_MNG_SRVC','','','Opportunities','decimal',18,0,'0.00','2014-10-09 14:15:46',0,0,0,0,1,'true','2','','',''),('Opportunitieswfs_opp_opex_c','wfs_opp_opex_c','LBL_WFS_OPP_OPEX','Calculated field via Logic Hook','Operational Value','Opportunities','decimal',18,0,'0.00','2014-10-09 14:13:36',0,0,0,0,1,'true','2','','',''),('Opportunitieswfs_opp_sage_sales_order_c','wfs_opp_sage_sales_order_c','LBL_WFS_OPP_SAGE_SALES_ORDER','Enter the Sage Sales Order Number',NULL,'Opportunities','int',10,0,NULL,'2014-11-06 11:37:16',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2014-10-02 11:12:53',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2014-10-02 11:12:53',0,0,0,0,1,'true','8','','',''),('Tasksdev_story_points_c','dev_story_points_c','LBL_DEV_STORY_POINTS','0.25 Story points is the minimum i.e 1 quarter of a man day','Story points are a measure of man days','Tasks','decimal',4,0,'0.00','2014-10-28 09:48:52',0,0,0,0,1,'true','2','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-06 17:09:40
