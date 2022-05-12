-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 003_Human_scape
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agencies`
--

DROP TABLE IF EXISTS `agencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agencies` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `agency` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agencies`
--

LOCK TABLES `agencies` WRITE;
/*!40000 ALTER TABLE `agencies` DISABLE KEYS */;
INSERT INTO `agencies` VALUES (1,'2022-05-11 04:21:03.079434','2022-05-11 04:21:03.079434',NULL,0,'서울아산병원'),(2,'2022-05-11 04:21:03.119064','2022-05-11 04:21:03.119064',NULL,0,'가톨릭대 서울성모병원'),(3,'2022-05-11 04:21:03.211800','2022-05-11 04:21:03.211800',NULL,0,'가톨릭대 여의도성모병원'),(4,'2022-05-11 04:21:03.260893','2022-05-11 04:21:03.260893',NULL,0,'가톨릭대 인천성모병원'),(5,'2022-05-11 04:21:03.297206','2022-05-11 04:21:03.297206',NULL,0,'강남세브란스병원'),(6,'2022-05-11 04:21:03.338189','2022-05-11 04:21:03.338707',NULL,0,'경북대학교병원'),(7,'2022-05-11 04:21:03.380329','2022-05-11 04:21:03.380329',NULL,0,'경희대학교병원'),(8,'2022-05-11 04:21:03.454285','2022-05-11 04:21:03.454285',NULL,0,'고려대구로병원'),(9,'2022-05-11 04:21:03.501678','2022-05-11 04:21:03.501678',NULL,0,'고려대안산병원'),(10,'2022-05-11 04:21:03.527190','2022-05-11 04:21:03.527190',NULL,0,'고려대안암병원'),(11,'2022-05-11 04:21:03.593479','2022-05-11 04:21:03.593479',NULL,0,'고려대학교 안암병원'),(12,'2022-05-11 04:21:03.658742','2022-05-11 04:21:03.658742',NULL,0,'국립중앙의료원'),(13,'2022-05-11 04:21:03.683179','2022-05-11 04:21:03.683179',NULL,0,'단국대학교'),(14,'2022-05-11 04:21:03.707914','2022-05-11 04:21:03.707914',NULL,0,'대한고혈압학회'),(15,'2022-05-11 04:21:03.733970','2022-05-11 04:21:03.733970',NULL,0,'분당서울대학교병원'),(16,'2022-05-11 04:21:03.813101','2022-05-11 04:21:03.813101',NULL,0,'분당차병원'),(17,'2022-05-11 04:21:03.845711','2022-05-11 04:21:03.845711',NULL,0,'삼성서울병원'),(18,'2022-05-11 04:21:03.939047','2022-05-11 04:21:03.939047',NULL,0,'서울대학교병원'),(19,'2022-05-11 04:21:04.343015','2022-05-11 04:21:04.343015',NULL,0,'세브란스병원'),(20,'2022-05-11 04:21:04.543011','2022-05-11 04:21:04.543011',NULL,0,'아주대학교병원'),(21,'2022-05-11 04:21:04.578072','2022-05-11 04:21:04.578072',NULL,0,'이대목동병원'),(22,'2022-05-11 04:21:04.633619','2022-05-11 04:21:04.633619',NULL,0,'인하대학교병원'),(23,'2022-05-11 04:21:04.657839','2022-05-11 04:21:04.657839',NULL,0,'전남대학교병원'),(24,'2022-05-11 04:21:04.709291','2022-05-11 04:21:04.709291',NULL,0,'제일병원'),(25,'2022-05-11 04:21:04.749774','2022-05-11 04:21:04.749774',NULL,0,'춘천성심병원'),(26,'2022-05-11 04:21:04.772335','2022-05-11 04:21:04.772335',NULL,0,'충남대학교병원'),(27,'2022-05-11 04:21:04.795488','2022-05-11 04:21:04.795488',NULL,0,'한림대학교병원'),(28,'2022-05-11 04:21:04.819233','2022-05-11 04:21:04.819233',NULL,0,'한림대학교성심병원'),(29,'2022-05-11 04:21:04.843390','2022-05-11 04:21:04.843390',NULL,0,'한양대학교병원'),(30,'2022-05-11 04:21:04.897763','2022-05-11 04:21:04.897763',NULL,0,'한국한의학연구원'),(31,'2022-05-11 04:21:04.987822','2022-05-11 04:21:04.987822',NULL,0,'경희대학교한방병원'),(32,'2022-05-11 04:21:05.016785','2022-05-11 04:21:05.016785',NULL,0,'영남대학교병원'),(33,'2022-05-11 04:21:05.134833','2022-05-11 04:21:05.134833',NULL,0,'신촌세브란스병원'),(34,'2022-05-11 04:21:05.177861','2022-05-11 04:21:05.177861',NULL,0,'성균관대 약학대학'),(35,'2022-05-11 04:21:05.313867','2022-05-11 04:21:05.313867',NULL,0,'건국대학교병원'),(36,'2022-05-11 04:21:05.337315','2022-05-11 04:21:05.337315',NULL,0,'전북대학교병원'),(37,'2022-05-11 04:21:05.449469','2022-05-11 04:21:05.449469',NULL,0,'가톨릭대 의정부성모병원'),(38,'2022-05-11 04:21:05.492475','2022-05-11 04:21:05.492475',NULL,0,'한양대학교 류마티스병원'),(39,'2022-05-11 04:21:05.591476','2022-05-11 04:21:05.591476',NULL,0,'가톨릭관동대 국제성모병원'),(40,'2022-05-11 04:21:05.726434','2022-05-11 04:21:05.726434',NULL,0,'인제대 서울백병원'),(41,'2022-05-11 04:21:05.750301','2022-05-11 04:21:05.750301',NULL,0,'중앙대학교병원'),(42,'2022-05-11 04:21:05.783419','2022-05-11 04:21:05.783419',NULL,0,'고려대학교 안산병원'),(43,'2022-05-11 04:21:05.838615','2022-05-11 04:21:05.838615',NULL,0,'고려대학교 구로병원'),(44,'2022-05-11 04:21:05.862925','2022-05-11 04:21:05.862925',NULL,0,'제주대학교병원'),(45,'2022-05-11 04:21:06.061071','2022-05-11 04:21:06.061071',NULL,0,'아주대학교 산학협력단');
/*!40000 ALTER TABLE `agencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add research agency',7,'add_researchagency'),(26,'Can change research agency',7,'change_researchagency'),(27,'Can delete research agency',7,'delete_researchagency'),(28,'Can view research agency',7,'view_researchagency'),(29,'Can add research department',8,'add_researchdepartment'),(30,'Can change research department',8,'change_researchdepartment'),(31,'Can delete research department',8,'delete_researchdepartment'),(32,'Can view research department',8,'view_researchdepartment'),(33,'Can add research model',9,'add_researchmodel'),(34,'Can change research model',9,'change_researchmodel'),(35,'Can delete research model',9,'delete_researchmodel'),(36,'Can view research model',9,'view_researchmodel'),(37,'Can add research scope',10,'add_researchscope'),(38,'Can change research scope',10,'change_researchscope'),(39,'Can delete research scope',10,'delete_researchscope'),(40,'Can view research scope',10,'view_researchscope'),(41,'Can add research type',11,'add_researchtype'),(42,'Can change research type',11,'change_researchtype'),(43,'Can delete research type',11,'delete_researchtype'),(44,'Can view research type',11,'view_researchtype'),(45,'Can add research',12,'add_research'),(46,'Can change research',12,'change_research'),(47,'Can delete research',12,'delete_research'),(48,'Can view research',12,'view_research');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `department` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'2022-05-11 04:21:03.100063','2022-05-11 04:21:03.100063',NULL,0,'Pediatrics'),(2,'2022-05-11 04:21:03.132782','2022-05-11 04:21:03.132782',NULL,0,'Rheumatology'),(3,'2022-05-11 04:21:03.166380','2022-05-11 04:21:03.166380',NULL,0,'Hematology'),(4,'2022-05-11 04:21:03.225162','2022-05-11 04:21:03.225162',NULL,0,'Psychiatry'),(5,'2022-05-11 04:21:03.276393','2022-05-11 04:21:03.276393',NULL,0,'Gastroenterology'),(6,'2022-05-11 04:21:03.309472','2022-05-11 04:21:03.309472',NULL,0,'Rehabilitation Medicine'),(7,'2022-05-11 04:21:03.361085','2022-05-11 04:21:03.361085',NULL,0,'Nephrology'),(8,'2022-05-11 04:21:03.393718','2022-05-11 04:21:03.393718',NULL,0,'Endocrinology'),(9,'2022-05-11 04:21:03.417788','2022-05-11 04:21:03.417788',NULL,0,'Family Medicine'),(10,'2022-05-11 04:21:03.467534','2022-05-11 04:21:03.467534',NULL,0,'Infectious disease'),(11,'2022-05-11 04:21:03.572724','2022-05-11 04:21:03.572741',NULL,0,'Cardiology'),(12,'2022-05-11 04:21:03.747178','2022-05-11 04:21:03.747178',NULL,0,'Otorhinolaryngology'),(13,'2022-05-11 04:21:03.779574','2022-05-11 04:21:03.779574',NULL,0,'Neurology'),(14,'2022-05-11 04:21:03.858592','2022-05-11 04:21:03.858592',NULL,0,'Others'),(15,'2022-05-11 04:21:03.969909','2022-05-11 04:21:03.969909',NULL,0,'Gynecology'),(16,'2022-05-11 04:21:04.124532','2022-05-11 04:21:04.124532',NULL,0,'Pulmonology'),(17,'2022-05-11 04:21:04.212104','2022-05-11 04:21:04.212104',NULL,0,'Allergy'),(18,'2022-05-11 04:21:04.509349','2022-05-11 04:21:04.509349',NULL,0,'Thoracic Surgery'),(19,'2022-05-11 04:21:04.558617','2022-05-11 04:21:04.558629',NULL,0,'Dermatology'),(20,'2022-05-11 04:21:04.923607','2022-05-11 04:21:04.923607',NULL,0,'Surgery'),(21,'2022-05-11 04:21:04.950052','2022-05-11 04:21:04.950052',NULL,0,'Nuclear Medicine'),(22,'2022-05-11 04:21:05.042446','2022-05-11 04:21:05.042446',NULL,0,'Neurosurgery'),(23,'2022-05-11 04:21:05.065355','2022-05-11 04:21:05.065355',NULL,0,'Cancer Center'),(24,'2022-05-11 04:21:05.763696','2022-05-11 04:21:05.763696',NULL,0,'Orthopedic surgery');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'research','research'),(7,'research','researchagency'),(8,'research','researchdepartment'),(9,'research','researchmodel'),(10,'research','researchscope'),(11,'research','researchtype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-05-11 01:58:49.566846'),(2,'auth','0001_initial','2022-05-11 01:58:50.358492'),(3,'admin','0001_initial','2022-05-11 01:58:50.613995'),(4,'admin','0002_logentry_remove_auto_add','2022-05-11 01:58:50.629502'),(5,'admin','0003_logentry_add_action_flag_choices','2022-05-11 01:58:50.651236'),(6,'contenttypes','0002_remove_content_type_name','2022-05-11 01:58:50.797506'),(7,'auth','0002_alter_permission_name_max_length','2022-05-11 01:58:50.892280'),(8,'auth','0003_alter_user_email_max_length','2022-05-11 01:58:50.941319'),(9,'auth','0004_alter_user_username_opts','2022-05-11 01:58:50.957755'),(10,'auth','0005_alter_user_last_login_null','2022-05-11 01:58:51.040243'),(11,'auth','0006_require_contenttypes_0002','2022-05-11 01:58:51.048780'),(12,'auth','0007_alter_validators_add_error_messages','2022-05-11 01:58:51.064115'),(13,'auth','0008_alter_user_username_max_length','2022-05-11 01:58:51.144192'),(14,'auth','0009_alter_user_last_name_max_length','2022-05-11 01:58:51.227923'),(15,'auth','0010_alter_group_name_max_length','2022-05-11 01:58:51.254762'),(16,'auth','0011_update_proxy_permissions','2022-05-11 01:58:51.274862'),(17,'auth','0012_alter_user_first_name_max_length','2022-05-11 01:58:51.357326'),(18,'research','0001_initial','2022-05-11 01:58:51.940325'),(19,'sessions','0001_initial','2022-05-11 01:58:52.002740');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `models` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `model` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `models`
--

LOCK TABLES `models` WRITE;
/*!40000 ALTER TABLE `models` DISABLE KEYS */;
INSERT INTO `models` VALUES (1,'2022-05-11 04:21:03.089498','2022-05-11 04:21:03.089498',NULL,0,'코호트'),(2,'2022-05-11 04:21:03.189417','2022-05-11 04:21:03.189417',NULL,0,'Case-only'),(3,'2022-05-11 04:21:03.350429','2022-05-11 04:21:03.350429',NULL,0,'Phase 4'),(4,'2022-05-11 04:21:03.635470','2022-05-11 04:21:03.635470',NULL,0,'Case-control'),(5,'2022-05-11 04:21:03.768812','2022-05-11 04:21:03.768812',NULL,0,'Cross-sectional'),(6,'2022-05-11 04:21:03.823183','2022-05-11 04:21:03.823183',NULL,0,'Phase 3'),(7,'2022-05-11 04:21:03.897888','2022-05-11 04:21:03.897888',NULL,0,'Other'),(8,'2022-05-11 04:21:04.038784','2022-05-11 04:21:04.038784',NULL,0,'Phase 1'),(9,'2022-05-11 04:21:04.098996','2022-05-11 04:21:04.098996',NULL,0,'Phase 2'),(10,'2022-05-11 04:21:04.304511','2022-05-11 04:21:04.304511',NULL,0,'');
/*!40000 ALTER TABLE `models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researches`
--

DROP TABLE IF EXISTS `researches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `researches` (
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `task_id` varchar(100) NOT NULL,
  `task_name` varchar(300) NOT NULL,
  `period` varchar(300) DEFAULT NULL,
  `target_number` varchar(300) DEFAULT NULL,
  `agency_id` bigint NOT NULL,
  `department_id` bigint NOT NULL,
  `model_id` bigint DEFAULT NULL,
  `scope_id` bigint NOT NULL,
  `type_id` bigint NOT NULL,
  PRIMARY KEY (`task_id`),
  KEY `researches_agency_id_03c3b7cd_fk_agencies_id` (`agency_id`),
  KEY `researches_department_id_db7e6a93_fk_departments_id` (`department_id`),
  KEY `researches_model_id_16c5592a_fk_models_id` (`model_id`),
  KEY `researches_scope_id_3a419cf1_fk_scopes_id` (`scope_id`),
  KEY `researches_type_id_e6a67072_fk_types_id` (`type_id`),
  CONSTRAINT `researches_agency_id_03c3b7cd_fk_agencies_id` FOREIGN KEY (`agency_id`) REFERENCES `agencies` (`id`),
  CONSTRAINT `researches_department_id_db7e6a93_fk_departments_id` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `researches_model_id_16c5592a_fk_models_id` FOREIGN KEY (`model_id`) REFERENCES `models` (`id`),
  CONSTRAINT `researches_scope_id_3a419cf1_fk_scopes_id` FOREIGN KEY (`scope_id`) REFERENCES `scopes` (`id`),
  CONSTRAINT `researches_type_id_e6a67072_fk_types_id` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researches`
--

LOCK TABLES `researches` WRITE;
/*!40000 ALTER TABLE `researches` DISABLE KEYS */;
INSERT INTO `researches` VALUES ('2022-05-11 04:21:03.950892','2022-05-11 04:21:03.950892',NULL,0,'C100001','급성심근경색 환자에서의 심부전 발생, 특성 및 예후: 1998년도와 2008년도의 비교','6개월','',18,11,1,1,1),('2022-05-11 04:21:03.173776','2022-05-11 04:21:03.173776',NULL,0,'C100002','Lymphoma Study for Auto-PBSCT','1년','',2,3,1,2,1),('2022-05-11 04:21:04.855878','2022-05-11 04:21:04.855878',NULL,0,'C100003','CRCRA Registry','','',29,2,1,2,1),('2022-05-11 04:21:03.983880','2022-05-11 04:21:03.984390',NULL,0,'C100004','다낭성난소증후군의 등록관리 및 질병관리지표 발굴을 위한 자원수집','10개월','700',18,15,2,1,1),('2022-05-11 04:21:04.165095','2022-05-11 04:21:04.165095',NULL,0,'C100005','POET study','60개월','2062',1,11,3,1,2),('2022-05-11 04:21:04.384565','2022-05-11 04:21:04.384565',NULL,0,'C100007','크론병 임상 연구 네트워크 (전향적 연구)','','',19,5,1,1,1),('2022-05-11 04:21:04.181020','2022-05-11 04:21:04.181020',NULL,0,'C100008','국내 주선천기형의 유전학적, 보건학적 특성 규명을 위한 등록 및 자원수집','','',1,15,4,1,1),('2022-05-11 04:21:04.195488','2022-05-11 04:21:04.195488',NULL,0,'C100009','A randomized, placebo controlled, double-blind, phase 4 study to evaluate efficacy and safety of triple anti-platelet therapy compared with dual antiplatelet therapy in patients treated with DES for Coronary Artery Disease','40개월','2110',1,11,3,1,2),('2022-05-11 04:21:04.589976','2022-05-11 04:21:04.589976',NULL,0,'C100010','다낭성난소증후군에서 심혈관계질환 위험요인 발생 예측을 위한 추적관찰 연구','11개월','350',21,15,2,1,1),('2022-05-11 04:21:04.607054','2022-05-11 04:21:04.607054',NULL,0,'C110001','Charcot-Marie-Tooth 병의 원인유전자 돌연변이 검사','5년','1000',21,13,2,2,1),('2022-05-11 04:21:04.001148','2022-05-11 04:21:04.001148',NULL,0,'C110002','심부전(Heart Failure) 질환코호트(Registry) 구축 및 관리 (2차년도)','6년','',18,11,1,1,1),('2022-05-11 04:21:03.539376','2022-05-11 04:21:03.539376',NULL,0,'C110003','복수를 동반한 간경변증 환자의 예후 예측에 대한 혈청 Cystatin C의 유용성','5년','445',10,5,2,1,1),('2022-05-11 04:21:03.368541','2022-05-11 04:21:03.368541',NULL,0,'C110004','지속성외래복막투석(CAPD) 및 자동복막투석(APD) 환자의 삶의 질(QOL)을 비교하기 위한, 전향적, 다기관, 관찰연구','12개월','300',6,7,3,1,2),('2022-05-11 04:21:03.318507','2022-05-11 04:21:03.318507',NULL,0,'C110005','희귀난치성질환 호흡재활 중앙관리센터 운영','11개월','',5,6,2,2,1),('2022-05-11 04:21:04.565635','2022-05-11 04:21:04.566148',NULL,0,'C110006','한국인 베체트병의 임상적 의사결정 알고리즘 및 질병 등록 시스템 개발','','1000',20,19,2,1,1),('2022-05-11 04:21:03.199571','2022-05-11 04:21:03.199571',NULL,0,'C110007','악성림프종의 임상양상과 항암 화학요법의 치료 성적 조사 및 예후 예측 지표 분석, retrospective study','','200',2,3,2,2,1),('2022-05-11 04:21:03.514465','2022-05-11 04:21:03.514465',NULL,0,'C110008','Lamivudine 내성변이가 발생한 만성 B형간염 환자에서 telbivudine과 adefovir dipivoxil 병합요법과 lamivudine과 adefovir dipivoxil 병합요법의 효과를 비교하기 위한 전향적 무작위배정 연구 : 52주간의 pilot 연구','15개월','60',9,5,3,1,2),('2022-05-11 04:21:04.220103','2022-05-11 04:21:04.220103',NULL,0,'C110009','흡입스테로이드제 단독요법으로 6개월간 잘 조절된 천식 환자에서 지속 치료 중단에 관한 연구','36개월','233',1,17,4,1,1),('2022-05-11 04:21:04.400557','2022-05-11 04:21:04.400557',NULL,0,'C110010','고지혈증을 동반한 복막투석환자에서 목표 LDL 수치에 따른 심혈관계 합병증의 발생과 사망률 비교','66개월','1222',19,7,10,1,3),('2022-05-11 04:21:03.475668','2022-05-11 04:21:03.475668',NULL,0,'C110011','병원 기반 인플루엔자 임상 네트워크','','',8,10,2,1,1),('2022-05-11 04:21:03.554735','2022-05-11 04:21:03.554735',NULL,0,'C110012','복수를 동반한 간경변 환자에서 norfloxacin 매일 투여와 ciprofloxacin 주 1회 투여시 자발성 세균성 복막염의 예방 효과 비교','12개월','124',10,5,3,1,2),('2022-05-11 04:21:04.870922','2022-05-11 04:21:04.870922',NULL,0,'C110013','만성 C형 간염환자에서 비타민 D 투여가 리바비린 및 페그인터페론 알파-2에이 치료 반응에 미치는 영향: 무작위, 다기관, phase IV 공개임상','2년','228',29,5,3,1,2),('2022-05-11 04:21:04.235358','2022-05-11 04:21:04.235358',NULL,0,'C110014','ICS/LABA로 잘 조절됨 천식 환자에서 ICS 단독요법으로의 step-down에 관한 연구','50개월','200',1,17,4,1,1),('2022-05-11 04:21:04.250316','2022-05-11 04:21:04.250316',NULL,0,'C110015','파괴성 폐결핵 환자의 임상적 특징','','600',1,16,2,1,1),('2022-05-11 04:21:04.683152','2022-05-11 04:21:04.683152',NULL,0,'C110016','급성심근경색증 환자 예후 및 관리지표발굴을 위한 전향적 추적관찰연구','8년','13000',23,11,1,1,1),('2022-05-11 04:21:04.697575','2022-05-11 04:21:04.697575',NULL,0,'C110017','우울증 환자 등록 및 임상연구 인프라 구축','28개월','1000',23,4,1,2,1),('2022-05-11 04:21:04.783126','2022-05-11 04:21:04.783635',NULL,0,'C110018','Xience 스텐트 삽입 후 비유순 풍선을 이용한 부가적 스텐트 내 고압력 확장술의 효과(전향적 무작위 비교 연구 결과)','5년','1744',26,11,3,1,2),('2022-05-11 04:21:04.021589','2022-05-11 04:21:04.021589',NULL,0,'C120001','항-TNFα 치료를 시작하는 B형 간염 바이러스 (HBV) 표면항원 혹은 항-HBc 항체 양성 류마티스 질환 환자에서 엔테카비어의 HBV 재활성화 예방을 평가하기 위한 무작위배정, 이중눈가림, 제 3상, 다기관, 연구자 주도 임상시험','36개월','128',18,2,6,1,2),('2022-05-11 04:21:04.132021','2022-05-11 04:21:04.132021',NULL,0,'C120002','COREA(Cohort for Reality and Evolution of Adult Asthma in Korea) cohort 연구','9년','10000',1,16,1,1,1),('2022-05-11 04:21:05.101571','2022-05-11 04:21:05.101571',NULL,0,'C120003','엔테카비어 치료 후 HBV DNA가 음전 된 HBeAg 양성  만성B 형 간염환자에서 텔비부딘으로 전환하거나 엔테카비어를 유지한 경우 HBsAg 농도 감소의 차이에 관한 전향적 무작위 공개 적극치료 대조군 비교 단일기관 임상시험','','500',1,5,6,2,2),('2022-05-11 04:21:05.119290','2022-05-11 04:21:05.119314',NULL,0,'C120006','CU-PRO','','',20,17,10,1,3),('2022-05-11 04:21:04.265500','2022-05-11 04:21:04.265500',NULL,0,'C120007','성인 중환자실 원내폐렴의 치료 실태 : 전향적 관찰연구','3년','600',1,10,1,1,1),('2022-05-11 04:21:04.416038','2022-05-11 04:21:04.416038',NULL,0,'C120008','노인질환 예방관리 코호트 구축 및 운영','10년','5000',19,14,1,2,1),('2022-05-11 04:21:04.645483','2022-05-11 04:21:04.645483',NULL,0,'C120009','대뇌 소혈관질환에 의한 백질변성에 대한 실로스타졸과 아스피린의 유효성을 비교하는 다기관, 무작위배정, 이중눈가림 연구','3년','238',22,13,3,1,2),('2022-05-11 04:21:03.882365','2022-05-11 04:21:03.882365',NULL,0,'C130001','국내 극소저체중아 관리지표 생산을 위한 레지스트리 구축 및 운영','34개월','5000',17,1,1,1,1),('2022-05-11 04:21:04.431007','2022-05-11 04:21:04.431007',NULL,0,'C130002','한국인 유전성(가족성) 심근병증 유전자 발굴을 위한 임상자료 및 유전체자원 수집','7개월','250',19,11,1,1,1),('2022-05-11 04:21:04.720580','2022-05-11 04:21:04.720597',NULL,0,'C130003','임신 관련 합병증 유병률 조사 및 위험인자 발굴','21개월','4000',24,15,1,1,1),('2022-05-11 04:21:05.148881','2022-05-11 04:21:05.148881',NULL,0,'C130004','고혈압을 동반한 소형 복부대동맥류 환자에서 대동맥류 팽창에 대한 베타차단제와 안지오텐신 수용체 차단제의 억제 효과 비교연구','26개월','400',33,11,3,1,2),('2022-05-11 04:21:04.907985','2022-05-11 04:21:04.907985',NULL,0,'C130005','고혈압위험군 및 1기 고혈압폐경 후 여성에 대한 지역기반 코호트연구','','',30,14,1,2,1),('2022-05-11 04:21:03.721073','2022-05-11 04:21:03.721073',NULL,0,'C130006','고혈압의 치료에서 자가혈압, 활동혈압 측정의 유용성 평가','23개월','420',14,11,1,1,1),('2022-05-11 04:21:03.907603','2022-05-11 04:21:03.907603',NULL,0,'C130007','아밀로이드증의 조기진단과 예후인자 발굴을 위한 연구','31개월','80',17,11,7,2,1),('2022-05-11 04:21:04.932671','2022-05-11 04:21:04.932671',NULL,0,'C130008','위암 감시림프절 절제술','5년','100',15,20,9,2,2),('2022-05-11 04:21:04.280045','2022-05-11 04:21:04.280045',NULL,0,'C130009','조직구증식증 임상연구 네트워크 구축 및 운영(LCH)','3년','180',1,1,1,1,1),('2022-05-11 04:21:03.106884','2022-05-11 04:21:03.106884',NULL,0,'C130010','조직구증식증 임상연구 네트워크 구축 및 운영(HLH)','3년','120',1,1,1,1,1),('2022-05-11 04:21:03.140750','2022-05-11 04:21:03.140750',NULL,0,'C130011','대한민국 쇼그렌 증후군 코호트 구축','6년','500',2,2,1,1,1),('2022-05-11 04:21:03.580701','2022-05-11 04:21:03.580701',NULL,0,'C130012','한국인 유전성(가족성) 부정맥 질환 임상연구 네트워크 구축','8년','250',10,11,1,1,1),('2022-05-11 04:21:03.489464','2022-05-11 04:21:03.489464',NULL,0,'C140001','병원 기반 인플루엔자 임상 네트워크(소아청소년)','','',8,1,2,1,1),('2022-05-11 04:21:04.736797','2022-05-11 04:21:04.736797',NULL,0,'C140002','고혈압 임상연구네트워크 구축사업','19개월','7788',24,11,1,1,1),('2022-05-11 04:21:03.754709','2022-05-11 04:21:03.754709',NULL,0,'C140003','알레르기비염 임상연구네트워크구축','19개월','2000',15,12,1,1,1),('2022-05-11 04:21:03.284932','2022-05-11 04:21:03.284932',NULL,0,'C140004','소화성궤양 임상연구네트워크 구축사업','24개월','2000',4,5,1,1,1),('2022-05-11 04:21:03.833290','2022-05-11 04:21:03.833290',NULL,0,'C140005','뇌성마비 환아에서 동종 제대혈 시술과 적혈구생성인자 복합 치료의 유효성과 안전성 평가를 위한 이중 눈가림, 무작위 배정, 위약 대조군 임상시험','23개월','120',16,6,6,2,2),('2022-05-11 04:21:04.313584','2022-05-11 04:21:04.313584',NULL,0,'C140006','안정시 COPD 개별 환자의 기관지 확장제 또는 항염증제 효과 및 부작용에 대한 12주 오픈라벨 자기대조 임상시험 및 36주 추적 관찰연구','22개월','112',1,16,10,1,3),('2022-05-11 04:21:05.164465','2022-05-11 04:21:05.164465',NULL,0,'C140007','Bioimpedance-guided fluid management가 복막투석 환자의 잔여신기능과 심혈관계 사건 발생에 미치는 효과에 관한 무작위배정, 공개, 평행군, 다기관 임상시험','2년','138',15,7,3,1,2),('2022-05-11 04:21:04.050090','2022-05-11 04:21:04.050090',NULL,0,'C140008','동종 지방유래 중간엽줄기세포(ALLO-ASC)를 이용한 힘줄손상치료: 선행 연구','16개월','12',18,6,8,2,2),('2022-05-11 04:21:04.447676','2022-05-11 04:21:04.447676',NULL,0,'C140009','척수손상 환자에서 동종 인간 신경줄기세포 이식에 의한 세포치료법 확립','2년','16',19,13,9,2,2),('2022-05-11 04:21:03.865622','2022-05-11 04:21:03.865622',NULL,0,'C140010','갱년기 여성에서 신체, 정신 건강 상태 및 위험요인 규명을 위한 전향적 연구','32개월','5000',17,14,1,2,1),('2022-05-11 04:21:04.070013','2022-05-11 04:21:04.070013',NULL,0,'C140011','장기이식코호트 구축 및 운영(신장)','32개월','2000',18,7,1,1,1),('2022-05-11 04:21:03.232030','2022-05-11 04:21:03.232546',NULL,0,'C140012','우울증 임상연구네트워크구축','11개월','300',3,4,1,1,1),('2022-05-11 04:21:04.464053','2022-05-11 04:21:04.464064',NULL,0,'C140013','간경변증 임상연구네트워크 구축','1년','500',19,5,1,1,1),('2022-05-11 04:21:03.401681','2022-05-11 04:21:03.401681',NULL,0,'C140014','제2형 당뇨병 임상연구네트워크 구축사업','120개월','700',7,8,1,1,1),('2022-05-11 04:21:04.479039','2022-05-11 04:21:04.479039',NULL,0,'C140015','장기이식코호트 구축 및 운영(간장)','32개월','1600',19,5,1,1,1),('2022-05-11 04:21:04.328538','2022-05-11 04:21:04.328538',NULL,0,'C140016','장기이식코호트 구축 및 운영(심장)','32개월','300',1,11,1,1,1),('2022-05-11 04:21:05.190214','2022-05-11 04:21:05.190214',NULL,0,'C140017','약물유전형과 심바스타틴 약동학의 상관성 연구','6개월','80',34,14,2,2,1),('2022-05-11 04:21:04.668637','2022-05-11 04:21:04.668637',NULL,0,'C140018','국내 전신성 홍반성 루푸스 임상네트워크 구축 및 운영','29개월','600',23,2,1,1,1),('2022-05-11 04:21:04.086160','2022-05-11 04:21:04.086160',NULL,0,'C140019','골다공증 임상연구네트워크 구축사업','73개월','5000',18,8,7,1,1),('2022-05-11 04:21:03.925086','2022-05-11 04:21:03.925086',NULL,0,'C140020','국내 시신경척수염 임상네트워크 구축 및 운영','33개월','300',17,13,1,1,1),('2022-05-11 04:21:05.206227','2022-05-11 04:21:05.206227',NULL,0,'C140021','건강한 한국인 성인에서 CYP2C19 유전형에 의한 Omeprazole의 약동/약력학적 특성을 평가하기 위한 임상연구','4개월','24',18,14,2,2,1),('2022-05-11 04:21:05.221130','2022-05-11 04:21:05.221130',NULL,0,'C140022','건강한 한국인 성인에서 CYP2D6 유전형에 의한 carvedilol의 약동/약력학적 특성을 평가하기 위한 임상연구','4개월','24',15,14,2,2,1),('2022-05-11 04:21:04.957578','2022-05-11 04:21:04.957578',NULL,0,'C140023','Hepatocellular carcinoma Study','1년','847',19,21,2,1,1),('2022-05-11 04:21:05.236595','2022-05-11 04:21:05.236595',NULL,0,'C140024','분당서울대학교병원 생명자원은행 운영','50년','100000',15,14,10,2,3),('2022-05-11 04:21:04.493425','2022-05-11 04:21:04.493425',NULL,0,'C140025','한국인 조기 류마티스 관절염 환자에서 다양한 치료 방법에 다른 효과분석','11년','200',19,2,2,2,1),('2022-05-11 04:21:04.353688','2022-05-11 04:21:04.353688',NULL,0,'C140026','고령여성에서 골다공증으로 인한 골절의 예방관리를 위한 전향적 연구기반 구축 연구','8개월','500',19,8,1,2,1),('2022-05-11 04:21:04.974695','2022-05-11 04:21:04.974695',NULL,0,'C150001','근위부 위암의 치료에서 복강경보조 근위부 위절제술과 복강경보조 위전절제술의 다기관 전향적, 무작위 배정, 대조 임상 연구','3년','183',15,20,6,1,2),('2022-05-11 04:21:04.999064','2022-05-11 04:21:04.999064',NULL,0,'C150002','[ACANS]자율신경 조절의 최적 전침 혈위 탐색을 위한 야간근무자 대상 예비연구','9개월','92',31,14,10,2,3),('2022-05-11 04:21:04.109191','2022-05-11 04:21:04.109191',NULL,0,'C150003','동종 지방유래 중간엽줄기세포(ALLO-ASC(shoulder))를 이용한 힘줄 손상 치료','2년','24',18,6,9,2,2),('2022-05-11 04:21:05.253200','2022-05-11 04:21:05.253200',NULL,0,'C150004','국내 ECMO환자 레지스트리 구축','년','500',15,16,7,1,1),('2022-05-11 04:21:04.516400','2022-05-11 04:21:04.516400',NULL,0,'C150005','장기이식코호트 구축 및 운영(폐장)','8년','240',19,18,1,1,1),('2022-05-11 04:21:05.027483','2022-05-11 04:21:05.027483',NULL,0,'C150006','한국에서 소아 IgA 신병증의 임상경과-다기관 연구','20년','5000',32,7,1,1,1),('2022-05-11 04:21:04.150101','2022-05-11 04:21:04.150101',NULL,0,'C150007','장기이식코호트 구축 및 운영(췌장)','8년','240',1,5,1,1,1),('2022-05-11 04:21:04.760486','2022-05-11 04:21:04.760486',NULL,0,'C150008','스테로이드 무반응 및 부분반응의 중증 알코올 간염 환자에서 위약 대비 Granulocyte-Colony Stimulating Factor의 치료효과를 규명하기 위한 다기관 무작위배정 연구자 임상연구','6개월','268',25,5,6,1,2),('2022-05-11 04:21:03.786630','2022-05-11 04:21:03.786630',NULL,0,'C150009','알츠하이머병 치매 예측을 위한 임상 지표와 생화학적 바이오마커 연계 연구','36개월','480',15,13,5,1,1),('2022-05-11 04:21:05.268115','2022-05-11 04:21:05.268115',NULL,0,'C150010','중개연구 활성화를 위한 초기 기분장애 다기관코호트 구축 및 운영 ','5년','500',11,4,1,1,1),('2022-05-11 04:21:04.369182','2022-05-11 04:21:04.369182',NULL,0,'C150011','성폭력 피해자의 정신건강 보호, 관리를 위한 장기추적 코호트 연구','5년','175',19,4,1,2,1),('2022-05-11 04:21:04.530794','2022-05-11 04:21:04.530794',NULL,0,'C150012','심뇌혈관 및 대사질환 질병원인 연구: 전향적 코호트 연구','10년','12000',19,14,1,1,1),('2022-05-11 04:21:05.282988','2022-05-11 04:21:05.283017',NULL,0,'C150013','긴 대퇴 및 슬와 동맥 협착 병변에서 병변 전장에 대한 일차적 긴 약물방출스텐트 삽입술과 심한 최소병변에 대한 일차적 짧은 약물방출스텐트 삽입술의 치료성적 비교 및 이중항혈소판제 적정투여기간에 대한 연구(PARADE II): 의뢰자주도 다기관 무작위배정 4상 임상연구','50개월','220',19,11,3,1,2),('2022-05-11 04:21:05.297933','2022-05-11 04:21:05.297933',NULL,0,'C150014','건강한 한국인 성인 남성에서 CYP2D6 및 CYP2C19 유전형에 따른 Amitriptyline의 약동, 약력학적 특성을 평가하기 위한 이중눈가림, 단회 투여, 유전형 층화 설계 임상시험','3개월','24',1,14,8,2,2),('2022-05-11 04:21:05.072259','2022-05-11 04:21:05.072259',NULL,0,'C150015','[HANC]두경부암환자의 방사선치료에 수반되는 방사선구내염에 대한 열다한소탕의 치료적 탐색 임상시험 - 무작위배정, 이중맹검, 위약대조, 평행군 다기관 임상시험','','46',31,23,9,1,2),('2022-05-11 04:21:03.801902','2022-05-11 04:21:03.801902',NULL,0,'C150016','[KCDC]알츠하이머병 생물학적지표 기반 진단표준화 연구','5개월','200',15,13,5,1,1),('2022-05-11 04:21:05.326168','2022-05-11 04:21:05.326168',NULL,0,'C150017','뇌질환 환자의 장기적 예후 관련 요인에 대한 추적조사 연구','','',35,6,1,2,1),('2022-05-11 04:21:05.348532','2022-05-11 04:21:05.348532',NULL,0,'C150018','초기 정신병 전향적 코호트 구축 및 운영','5년','400',36,4,1,1,1),('2022-05-11 04:21:05.362367','2022-05-11 04:21:05.362367',NULL,0,'C150019','[IVUS-DCB]대퇴슬와동맥 협착병변에서 혈관내초음파 유도 또는 혈관조영술 유도 그리고 이중 또는 삼중 항혈소판제 사용에 따른 약물코팅풍선 혈관확장술의 치료성적 비교에 대한 연구: 다기관 무작위배정 개방적 비교연구','48개월','240',19,11,10,1,3),('2022-05-11 04:21:05.376756','2022-05-11 04:21:05.376756',NULL,0,'C150020','[K-INNOVA Registry]대퇴슬와동맥병변에서 나이티놀 자가팽창형  INNOVA 스텐트의 유용성에 대한 연구: 연구자주도 다기관 등록연구','36개월','150',19,11,7,1,1),('2022-05-11 04:21:05.390376','2022-05-11 04:21:05.390376',NULL,0,'C150021','[K-EPIC Registry]장골동맥병변에서 나이티놀 자가팽창형 EPIC 스텐트의 유용성에 대한 연구: 연구자주도 다기관 등록연구','38개월','150',19,11,7,1,1),('2022-05-11 04:21:05.404812','2022-05-11 04:21:05.404812',NULL,0,'C150022','[TAP-CLI study]무릎 이하 동맥협착병변에 대해 경피적 중재술을 시행받은 중증하지 허혈 환자에서 이중 항혈소판제치료와 삼중 항혈소판제치료의 효과비교: 다기관 무작위배정 비눈가림 비교연구','45개월','390',19,11,3,1,2),('2022-05-11 04:21:05.421069','2022-05-11 04:21:05.421069',NULL,0,'C150023','[인터넷 3세부] 유아 스마트폰 및 스마트 기기 노출의 경과 및 위험요인에 관한 전향적 코호트 구축 및 운영','5년','400',20,4,1,1,1),('2022-05-11 04:21:05.436036','2022-05-11 04:21:05.436036',NULL,0,'C150024','[인터넷 1세부] 아동청소년에서 인터넷·게임, 스마트폰 중독 발생기전, 위험요인 및 보호요인 규명을 위한 전향적 코호트 연구','5년','3000',2,4,1,1,1),('2022-05-11 04:21:05.462981','2022-05-11 04:21:05.462981',NULL,0,'C150025','[인터넷 2세부] 인터넷/게임 중독, 스마트폰 중독의 자연경과, 치료경과 및 예후에 영향을 주는 요인 연구','5년','600',37,4,1,1,1),('2022-05-11 04:21:05.478618','2022-05-11 04:21:05.478618',NULL,0,'C160001','[K-POP Study]단독 슬와동맥 협착병변에서 약물코팅풍선 혈관확장술의 치료성적에 대한 다기관 전향적 등록연구','36개월','100',19,11,7,1,1),('2022-05-11 04:21:05.503792','2022-05-11 04:21:05.503792',NULL,0,'C160002','Belimumab을 사용하는 한국인 전신성 홍반성 루푸스 환자를 대상으로 한 약제의 장기 안전성 및 효가 평가 연구','','',38,2,7,1,1),('2022-05-11 04:21:05.518177','2022-05-11 04:21:05.518177',NULL,0,'C160003','북한이탈주민 정신건강 실태조사 및 추적관찰','1년','300',17,4,1,2,1),('2022-05-11 04:21:05.533178','2022-05-11 04:21:05.533178',NULL,0,'C160004','심부전환자에 있어서 자가관리수첩이 예후에 미치는 영향을 검토하기 위한 전향적, 무작위 배정, 두군 비교 임상시험','24개월','1200',15,11,10,2,3),('2022-05-11 04:21:04.830524','2022-05-11 04:21:04.830524',NULL,0,'C160005','청소년 고도비만 중재 사전연구','12개월','600',28,9,10,1,3),('2022-05-11 04:21:05.548721','2022-05-11 04:21:05.548721',NULL,0,'C160006','자살관련자 코호트기반 위험요인 예측모델 개발','4년','1000',18,4,1,1,1),('2022-05-11 04:21:05.564135','2022-05-11 04:21:05.564135',NULL,0,'C160007','[K-TEAM study]B형 대동맥박리증환자에서 혈관내치료 시점에 대한 연구: 연구자주도 국내 전향적 다기관 등록연구','51개월','50',19,11,7,1,1),('2022-05-11 04:21:05.579136','2022-05-11 04:21:05.579136',NULL,0,'C160008','재난관련자 코호트 구축, 추적관찰','5년','',2,4,1,1,1),('2022-05-11 04:21:05.603291','2022-05-11 04:21:05.603291',NULL,0,'C160009','한국인 알코올사용장애 임상경과 및 생물정신사회적 요인 규명을 위한 임상 및 지역기관 융합연구','5년','840',39,4,1,1,1),('2022-05-11 04:21:05.619845','2022-05-11 04:21:05.619845',NULL,0,'C160010','[RIMN_KG]건강한 성인의 태극삼 추출물 섭취가 형핼 개선에 미치는 유효성을 평가히기 위한 인체적용시험','12개월','102',31,14,10,2,3),('2022-05-11 04:21:05.634798','2022-05-11 04:21:05.634798',NULL,0,'C160011','어린이에서 발생하는 급성 신손상의 전향적 코호트 연구','','1000',18,7,1,1,1),('2022-05-11 04:21:05.652819','2022-05-11 04:21:05.652819',NULL,0,'C160012','[CodeAF]심방세동의 증상 조절, 합병증 예방을 위한 약물 요법의 비교 효과 연구','36개월','10000',19,11,1,1,1),('2022-05-11 04:21:03.426313','2022-05-11 04:21:03.426313',NULL,0,'C160013','한국 노인노쇠 코호트 구축 및 중재 연구 사업','5년','3000',7,9,1,1,1),('2022-05-11 04:21:03.441594','2022-05-11 04:21:03.441594',NULL,0,'C160014','병원 기반 당뇨병 예방 프로그램의 효과 비교를 위한 전향적 대조군 임상 연구','3년','744',7,8,3,1,2),('2022-05-11 04:21:05.667793','2022-05-11 04:21:05.667793',NULL,0,'C160015','[CURRIE]뇌졸중 후 요실금의 전침치료 효과 및 안전성에 대한 선행연구: 다기관, 무작위 배정, 평행, 가짜침 대조군 연구','1년','40',31,14,9,1,2),('2022-05-11 04:21:05.086658','2022-05-11 04:21:05.086658',NULL,0,'C160016','한국인 말기신부전 환자 전향적 코호트 구축을 통한 혈액투석과 복막투석의 비용효과연구','30개월','3400',6,7,1,1,1),('2022-05-11 04:21:05.682815','2022-05-11 04:21:05.682815',NULL,0,'C160017','(후향)허혈성 뇌졸중에서 정맥내 혈전용해치료 및 동맥내 재개통치료의 효용성을 높이기 위한 CT 영상과 동반질환지표 선별기준 개발','10개월','1800',19,13,1,1,1),('2022-05-11 04:21:05.697804','2022-05-11 04:21:05.697804',NULL,0,'C160018','(전향)허혈성 뇌졸중에서 정맥내 혈전용해치료 및 동맥내 재개통치료의 효용성을 높이기 위한 CT 영상과 동반질환지표 선별기준 개발','24개월','542',19,13,1,1,1),('2022-05-11 04:21:05.049889','2022-05-11 04:21:05.049889',NULL,0,'C160019','한국인 척추시상면 불균형의 임상적 의의와 위험인자 발굴 및 예측모형 구축','36개월','200',19,22,1,1,1),('2022-05-11 04:21:05.714283','2022-05-11 04:21:05.714283',NULL,0,'C160020','국내 병적비만환자의 비만대사수술의 체중감소, 동반질환개선 효과 및 수술 안전성에 대한 전향적 다기관 코호트 연구','28개월','100',22,20,10,1,3),('2022-05-11 04:21:05.738230','2022-05-11 04:21:05.738230',NULL,0,'C160021','병적비만 및 비만환자에서 비만 약물치료의 안전성과 비용효과 연구','28개월','200',40,9,3,1,2),('2022-05-11 04:21:05.771144','2022-05-11 04:21:05.771144',NULL,0,'C160022','전국단위 고관절 골절 등록 코호트 구축(노인골절 환자 재골절 예방 및 재활 방법 비교효과 연구)','36개월','5400',41,24,1,1,1),('2022-05-11 04:21:05.794623','2022-05-11 04:21:05.794623',NULL,0,'C160023','불안 증상을 동반한 우울증 환자의 치료적 전략: 전향적 단계별 임상연구','30개월','144',42,4,10,1,3),('2022-05-11 04:21:04.621739','2022-05-11 04:21:04.621739',NULL,0,'C160024','국내 조산관리지표 생산을 위한 레지스트리 구축 및 운영','6개월','900',21,15,1,1,1),('2022-05-11 04:21:05.809703','2022-05-11 04:21:05.809703',NULL,0,'C160025','우리나라에서 적절한 경험적 H. pylori 1차 제균요법 변경을 위한 다기관 무작위 대조군 연구','36개월','1137',17,5,3,1,2),('2022-05-11 04:21:05.826258','2022-05-11 04:21:05.826258',NULL,0,'C160026','NIPT (noninvasive prenatal testing, 비침습적산전검사) 도입에 따른 한국인 임신부에서 산전 진단방법 비용효과연구','36개월','10000',24,15,1,1,1),('2022-05-11 04:21:05.850461','2022-05-11 04:21:05.850461',NULL,0,'C160027','알츠하이머 치매 환자에서의 아밀로이드 뇌 영상 검사의 진단적 가치 평가 및 적용 기준 개발','36개월','220',43,4,1,1,1),('2022-05-11 04:21:05.874709','2022-05-11 04:21:05.874709',NULL,0,'C160028','경도인지장애 및 치매 환자에서 아포지단백 유전자 검사 시행 기준','36개월','580',44,4,1,1,1),('2022-05-11 04:21:05.891200','2022-05-11 04:21:05.891200',NULL,0,'C160029','고령 Asthma-COPD overlap syndrome (ACOS) 환자의 적정 흡입치료 비교효과 연구','36개월','300',1,17,10,1,3),('2022-05-11 04:21:05.906713','2022-05-11 04:21:05.906713',NULL,0,'C160030','저용량 흡입스테로이드와 지속성 베타항진제 흡입제로 조절이 잘된 천식환자에서 천식 조절제 치료단계 하향조정을 위한 무작위배정 실용 임상시험','36개월','231',1,17,10,1,3),('2022-05-11 04:21:05.922237','2022-05-11 04:21:05.922260',NULL,0,'C160031','요통 환자 수술적 치료와 비수술적 치료의 비교 효과 연구','29개월','1102',18,22,3,1,2),('2022-05-11 04:21:05.937453','2022-05-11 04:21:05.937453',NULL,0,'C160032','헬리코박터 파일로리 항생제 내성률 전국조사 연구 ','29개월','400',1,5,5,1,1),('2022-05-11 04:21:03.605754','2022-05-11 04:21:03.605754',NULL,0,'C160033','간세포암종 감시 검사로서 biomarker(AFP, AFP-L3, PIVKA-Ⅱ) 검사와 복부 초음파 또는 CT 검사 병행의 유용성','4년','1418',11,5,1,1,1),('2022-05-11 04:21:05.952387','2022-05-11 04:21:05.952387',NULL,0,'C160034','한국형 호스피스완화의료 및 사전의료계획 서비스 구축을 위한 수요조사','36개월','2300',18,23,5,1,1),('2022-05-11 04:21:05.971310','2022-05-11 04:21:05.971310',NULL,0,'C160035','진행기 암환자 및 소아암환자에서 완화의료 이용여부에 따른 삶의 질과 의사 결정, 의료이용의 변화에 대한 전향적 코호트 연구','36개월','400',18,23,1,1,1),('2022-05-11 04:21:05.985715','2022-05-11 04:21:05.985715',NULL,0,'C160036','말기 진행이 예상되는 진행성 비소세포폐암환자를 대상으로 한 통합형 조기 완화의료 무작위배정 임상시험','36개월','232',18,23,3,1,2),('2022-05-11 04:21:06.001770','2022-05-11 04:21:06.001790',NULL,0,'C160037','[K-Small AAA]소형 복부대동맥류 팽창의 위험인자에 대한 한국 다기관 연구 (후향적 및 전향적 관찰연구)','30개월','800',19,11,7,1,1),('2022-05-11 04:21:04.806808','2022-05-11 04:21:04.806808',NULL,0,'C160038','인공신장실 MERS-CoV 노출 혈액투석 환자 코호트 연구','','125',27,10,1,1,1),('2022-05-11 04:21:06.017008','2022-05-11 04:21:06.017008',NULL,0,'C160039','(2세부)경도 신경인지장애 환자에서 치매 전환 예측을 위한 최적 신경심리검사 구성 개발','36개월','300',15,4,1,1,1),('2022-05-11 04:21:03.621661','2022-05-11 04:21:03.621661',NULL,0,'C160040','심혈관질환 고위험군의 미래 심혈관사건 한국형 예측 모형','10년','2000',11,8,1,2,1),('2022-05-11 04:21:03.248651','2022-05-11 04:21:03.248651',NULL,0,'C160041','우울증 임상연구센터','1년','1183',3,4,1,1,1),('2022-05-11 04:21:06.032003','2022-05-11 04:21:06.032003',NULL,0,'C160042','인지기능 장애를 동반한 우울증 환자의 치료적 전략: 전향적 단계별 임상연구','30','144',42,4,10,1,3),('2022-05-11 04:21:03.670378','2022-05-11 04:21:03.670378',NULL,0,'C160043','국내 메르스 회복기 환자의 전향적 코호트 연구','2년','148',12,10,1,1,1),('2022-05-11 04:21:06.048651','2022-05-11 04:21:06.048651',NULL,0,'C160044','소아천식 환자의 질병양상 특성분석 및 중재기술 기반 연구','','',1,16,1,1,1),('2022-05-11 04:21:06.072871','2022-05-11 04:21:06.073400',NULL,0,'C160045','만성뇌혈관질환 바이오뱅크 컨소시엄 운영사업','5년','765',45,4,10,1,3),('2022-05-11 04:21:03.645521','2022-05-11 04:21:03.645521',NULL,0,'C160046','우울증 진단/치료 의사결정 보조시스템 개발을 위한 뇌영상-오믹스 기반 빅데이터 구축 및 임상 검증 연구','51개월','300',11,4,4,1,1),('2022-05-11 04:21:04.885435','2022-05-11 04:21:04.885435',NULL,0,'C160047','노쇠예방을 위한 적정 단백질 섭취량의 규명','2년','120',29,14,10,2,3),('2022-05-11 04:21:03.694412','2022-05-11 04:21:03.694412',NULL,0,'C160048','노쇠 관련 영양요인 평가','18개월','1000',13,9,1,1,1);
/*!40000 ALTER TABLE `researches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scopes`
--

DROP TABLE IF EXISTS `scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scopes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `scope` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scopes`
--

LOCK TABLES `scopes` WRITE;
/*!40000 ALTER TABLE `scopes` DISABLE KEYS */;
INSERT INTO `scopes` VALUES (1,'2022-05-11 04:21:03.058243','2022-05-11 04:21:03.058243',NULL,0,'국내다기관'),(2,'2022-05-11 04:21:03.149769','2022-05-11 04:21:03.149769',NULL,0,'단일기관');
/*!40000 ALTER TABLE `scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'2022-05-11 04:21:03.068832','2022-05-11 04:21:03.068832',NULL,0,'관찰연구'),(2,'2022-05-11 04:21:03.328643','2022-05-11 04:21:03.328643',NULL,0,'중재연구'),(3,'2022-05-11 04:21:04.290157','2022-05-11 04:21:04.290157',NULL,0,'기타');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11  7:22:20
