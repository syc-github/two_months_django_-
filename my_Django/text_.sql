-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: text
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apps_article`
--

DROP TABLE IF EXISTS `apps_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `apps_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext NOT NULL,
  `brief_content` longtext NOT NULL,
  `content` longtext NOT NULL,
  `publish_data` datetime(6) NOT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps_article`
--

LOCK TABLES `apps_article` WRITE;
/*!40000 ALTER TABLE `apps_article` DISABLE KEYS */;
INSERT INTO `apps_article` VALUES (1,'aaa','bbbbbbb','llskdjfslfkjksj','2020-03-04 16:18:02.230237'),(2,'dfasfa','hyyhyyyy','fdhghshyjdfgdfgthf','2020-02-25 15:52:44.601000'),(3,'标题','你是我的菜','对话框绝对是考虑是否健康的党课是哥考虑欧陆东东罗杰斯哦啊啊','2020-03-04 16:19:13.799877'),(4,'士大夫撒','发生发顺丰','法撒旦干啥三国杀斯蒂芬斯UK回复奇偶的撒娇回复v','2020-03-10 15:14:00.818023');
/*!40000 ALTER TABLE `apps_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'嗒嗒嗒');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (2,1,1),(3,1,2),(1,1,8);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add article',7,'add_article'),(26,'Can change article',7,'change_article'),(27,'Can delete article',7,'delete_article'),(28,'Can view article',7,'view_article'),(29,'Can add article',8,'add_article'),(30,'Can change article',8,'change_article'),(31,'Can delete article',8,'delete_article'),(32,'Can view article',8,'view_article'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add user2',10,'add_user2'),(38,'Can change user2',10,'change_user2'),(39,'Can delete user2',10,'delete_user2'),(40,'Can view user2',10,'view_user2'),(41,'Can add users',11,'add_users'),(42,'Can change users',11,'change_users'),(43,'Can delete users',11,'delete_users'),(44,'Can view users',11,'view_users');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$kg9fQLJWPBaB$uSZO148Wn1BCZKTAe8EJZOREWB8dNo7ysQpPGCVr/2Y=','2020-02-12 02:36:49.915000',1,'杰克斯','','','2249598769@qq.com',1,1,'2020-02-10 03:17:40.737000'),(2,'pbkdf2_sha256$180000$5m6DZJD4C5N6$Wk/EDc7C6pE7zFLlAcGP2t3punHuDw0cWXNpliz1AI4=',NULL,1,'小段段','','','1111111111111@qq.com',1,1,'2020-02-12 02:39:04.489000'),(3,'pbkdf2_sha256$180000$Yfh0TelzZreW$eW46Cp1AkxA4RbInlCwJcKaLgg963f3/pY7M8pXYdWI=','2020-03-10 15:08:33.186468',1,'孙永春','','','2249598769@qq.com',1,1,'2020-03-04 14:21:37.860726');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'JAVA新手到高手必修课程','小明','其中java基础是最基本的要求，最起码要对java的对象、语法、操作符、控制语句、继承复用、多态、异常、数据结构和容器、OOP编程思想、泛型、数组、I/O和NIO数据流处理、枚举、注解、并发、SWING等知识点有所基本的认知和理解，对实际的应用也是有道理的，最简单的方式是看java视频教程，另外一个就是啃编程思想，只是听说有的人会撸好几遍。'),(2,'JAVA新手到高手必修课程','小明','其中java基础是最基本的要求，最起码要对java的对象、语法、操作符、控制语句、继承复用、多态、异常、数据结构和容器、OOP编程思想、泛型、数组、I/O和NIO数据流处理、枚举、注解、并发、SWING等知识点有所基本的认知和理解，对实际的应用也是有道理的，最简单的方式是看java视频教程，另外一个就是啃编程思想，只是听说有的人会撸好几遍。'),(196,'法卡勒','艾洋','福克斯复活甲客户端看看是否.'),(197,'如何好好学习','李大大',' 如果你犹豫有些话该不该说，不要犹豫，千万不要说。你潜意识里觉得不该说的话，都是说了会产生不好的影响，会被人抓住话柄的。'),(198,'一直等待','大明','我应该学哪些方向？要学习哪些知识？怎么学习，看视频还是做项目？要学好编程，给你一些学习网站也好、实用工具也好，但前提是你知道如何去学习它。对于学习，特别是自学，善于搜索网上的一些资源来辅助，还是非常有必要的，下面我就把这几年私藏的各种资源，网站贡献出来给你们。');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogssss`
--

DROP TABLE IF EXISTS `blogssss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blogssss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogssss`
--

LOCK TABLES `blogssss` WRITE;
/*!40000 ALTER TABLE `blogssss` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogssss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-04 15:50:32.887581','1','嗒嗒嗒',1,'[{\"added\": {}}]',3,3),(2,'2020-03-10 15:14:00.829991','4','士大夫撒',1,'[{\"added\": {}}]',7,3),(3,'2020-03-10 15:19:48.321890','2','你爸爸',1,'[{\"added\": {}}]',9,3),(4,'2020-03-10 15:42:31.299062','3','吖吖',1,'[{\"added\": {}}]',9,3),(5,'2020-03-10 15:59:26.295734','4','弟弟',1,'[{\"added\": {}}]',9,3),(6,'2020-03-10 16:08:36.459078','1','abc',1,'[{\"added\": {}}]',12,3),(7,'2020-03-10 16:12:22.572471','1','abc',1,'[{\"added\": {}}]',12,3),(8,'2020-03-10 16:14:55.220689','2','嗒嗒嗒',1,'[{\"added\": {}}]',12,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'apps','article'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'juheapp','article'),(12,'juheapp','people'),(9,'juheapp','user'),(10,'juheapp','user2'),(11,'juheapp','users'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-03 10:38:36.872276'),(2,'auth','0001_initial','2020-03-03 10:38:37.190413'),(3,'admin','0001_initial','2020-03-03 10:38:38.032160'),(4,'admin','0002_logentry_remove_auto_add','2020-03-03 10:38:38.215665'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-03 10:38:38.229627'),(6,'apps','0001_initial','2020-03-03 10:38:38.288493'),(7,'contenttypes','0002_remove_content_type_name','2020-03-03 10:38:38.448059'),(8,'auth','0002_alter_permission_name_max_length','2020-03-03 10:38:38.534834'),(9,'auth','0003_alter_user_email_max_length','2020-03-03 10:38:38.573061'),(10,'auth','0004_alter_user_username_opts','2020-03-03 10:38:38.592007'),(11,'auth','0005_alter_user_last_login_null','2020-03-03 10:38:38.661821'),(12,'auth','0006_require_contenttypes_0002','2020-03-03 10:38:38.675784'),(13,'auth','0007_alter_validators_add_error_messages','2020-03-03 10:38:38.695729'),(14,'auth','0008_alter_user_username_max_length','2020-03-03 10:38:38.778513'),(15,'auth','0009_alter_user_last_name_max_length','2020-03-03 10:38:38.855303'),(16,'auth','0010_alter_group_name_max_length','2020-03-03 10:38:38.895198'),(17,'auth','0011_update_proxy_permissions','2020-03-03 10:38:38.915142'),(24,'sessions','0001_initial','2020-03-03 10:38:39.522519'),(36,'juheapp','0001_initial','2020-03-09 12:43:38.140433');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1pkmje671wqbp6e3dbzrteyfkbsvgwxn','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 15:37:48.241000'),('1rljtegtknbm93f4214n9zzpp5h6kh1b','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 09:35:12.486000'),('2aw72haktjt37mxsv9ru1ln5b2oobhu3','N2I4YmU3Y2NlZDliZmNjM2ZkZjAwNzA3M2Y2ZTJiZDQ3YmZlZjE0YTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwOGM1YjAyM2ExMDFhOTNmNjY2ZmRiNjExNzBmZjBjZTFmZGQyODYzIn0=','2020-02-24 11:45:20.969000'),('2dpqjb9wkuclouwp6rx6l5r6rzwo2apv','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 15:51:17.373000'),('2ehy26deku017fasohkdxy3c2lqzs1ot','YWNhNTVhMWM4ZGQxNTQ0YWMxYjcyNGFkMTE4NzFhZDhkODRiNmI4MDp7Im9wZW5pZCI6Im9OSGN3NVowLWRDVHRJSkUtZ3diY000SzNVWTgiLCJpc19hdXRob3JpemVkIjp0cnVlfQ==','2020-03-13 17:32:06.520000'),('2iyzqtljzlhl8c6zzxs2oactffoi1ano','YWNhNTVhMWM4ZGQxNTQ0YWMxYjcyNGFkMTE4NzFhZDhkODRiNmI4MDp7Im9wZW5pZCI6Im9OSGN3NVowLWRDVHRJSkUtZ3diY000SzNVWTgiLCJpc19hdXRob3JpemVkIjp0cnVlfQ==','2020-03-13 17:38:51.218000'),('2sia33vs7s8rlpyihalhnbh8vj3zy399','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:57:48.907000'),('2ubidntngdxjm4bvyvutawzs0ucjb24s','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 14:21:45.416000'),('3a00tyx5ahhvwinxbeabmf8jiby7vy7a','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 09:53:14.884000'),('3qcxk0dv1nrolz9rm2vqmanp2it5p1zr','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 10:28:27.152000'),('4d2f0f2bd5dqeja2dm1px4zk44w9fge8','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 10:53:44.770000'),('4htb1hv9bks4damlbuqjtxr57szgiovo','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:51:18.254000'),('4jqrjs7fhoqjf78jd7dhnfpj0sk4lmn6','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 14:20:37.605000'),('4lx0wykq3lffneu2d254u7ilxhh62sqx','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 13:01:17.132000'),('532poixm2pnzajjyr392yc7vufp3cz9f','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 13:17:41.779000'),('5bzaejcali836zoegk250rnr217hmcrc','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 14:22:17.450000'),('5cf0xep79ij768hrs9868uck5bli1b69','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:04:57.398000'),('5yc8a2fghgwhp58fg9fkhvlc9gumo3p6','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:09:32.089000'),('64d8bhtclpw3cdwjmzig4eyscw8panig','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:11:36.522000'),('69oozfkuh05lf957tm9xdm6aelu9q0pl','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 10:48:44.405000'),('6xlmkj07b1e1ouqk8c7ln9fiojw0ll6o','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:27:18.667000'),('79cqlwmpjmpu0xswze5ii7z8l6llcciy','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 15:19:38.406000'),('7h0o08bvhdx78ohadz5hwema5vielvag','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:31:07.105000'),('7pebaighgo6upeh4b43tzq9app76p3z9','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:00:49.810000'),('7sq2whl5pighf0lrxu8xs0nl6fsjn7cw','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 10:48:44.723000'),('7vj3gpjksflcp6e12wlikreueak8shxv','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 17:22:17.195000'),('8a2fdafy9gac09e94ug08ti8wqecb75w','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:10:36.754000'),('8cs7b1gxp0gllgj69fydqd0imm5qodn8','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-11 12:17:30.654000'),('8iv7lmoh42ovbzjytxo74l6iyql2cvop','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 16:52:49.800000'),('8ob5ifb3jojdkwufdrk9wy2xt149391d','Mjg5NjhlZWRlNjI4NTBmYWYxOGQ2ZWM2YzM3YmJkYmNjYWEyYmEzMjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OWQ2ODViMmQ3MTE2NjhjNmJhOTgzNzNjZDNkYjNlYzkyM2EwMDc5In0=','2020-03-18 14:21:52.785843'),('91iuxa7viuv3nrx2gbp5f6mo03p8de9e','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 10:48:37.233000'),('9c98txrn9kd3u2xbv0cqu2akhsfk7mwh','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:29:45.350000'),('9pvpw7wq3tix0u8bzazr6pxavor7iqqg','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:06:04.714000'),('a5rekcfd64fdlkv7kmgjyd3it3hnpr6p','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 14:19:33.369000'),('a64mh4sid5en1bf5z5v4oi2yse1fqvbn','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:34:44.376000'),('axk1exb6pr716lfbsfc4v0zscuohh87a','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:32:46.658000'),('axldw3i48s94vmtu4cjtztlhphpjh2xu','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 14:32:23.845000'),('axlomevdwgvbgxp3t7mo648oqgvrql94','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 15:25:39.238000'),('bf3x43nvv9k3po1abvkpyzaoy45t3wx2','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:04:59.211000'),('c03frw04wk05fl7o9rf02j58txic5frn','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:34:25.467000'),('c6gaxastkxlnf4fy1syrw0lwsnoy2hdi','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 13:12:43.952000'),('cie1bygt5c6l22zihy9bvo0etcaipgdl','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:54:49.618000'),('cl6tujg6qk8l9z0pfzi8bxl8ckkyypn4','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 15:39:34.902000'),('cw7t8kfzo1wu9tnewswqbhyeefgux9st','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 14:34:33.430000'),('d59m3a27n7oxm09t3xoa1b2l855u5go5','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 14:37:11.785000'),('dcdipfiysq525wxw4ungvbsherhnbimp','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 14:12:02.933000'),('diuc54kjr8v9gomjpra2u3abn1asralp','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-13 10:52:53.874000'),('e60u8qx04bcwhbzdilzfk6b5u0ldmy1e','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:11:31.684000'),('edw7lliovbzyuixs6hwl7x0bk0mbddul','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:33:45.891000'),('efvi1ly7hthpl59y83j7uyr6ipzecg7l','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-11 12:32:55.622000'),('fdzj0i5k5zpbs5nkxdmcqfhe3vvqfohf','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 15:05:20.578000'),('fp461u6heiy8tnsqabzkxonqugknqeho','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 10:33:29.821000'),('fq44t3uqkcnoou097qq9ztiwqrx43zqu','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-02-28 16:04:44.337000'),('g45402y1s1uhoa8v4y54td4pawk66ofh','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 17:23:56.147000'),('gusgrbv5qpbejgrfw72fjwjbr209udn9','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 17:10:17.260000'),('hb4otblgont1khplzlzplwf6gd5qoqfr','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 13:16:42.135000'),('hzjltdog7thf8o54im09yikn8ck92p0h','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 13:14:06.645000'),('i2b2aifkpmcvutq88vcptkfosw6qxkk3','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 15:26:52.703000'),('i58vpvzqithv0ax10ckfbkzmvh5zlt0s','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-12 12:28:31.259000'),('i7x5a4ccru5o1w5oy54dilc641osq6jo','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-11 12:07:14.113000'),('je9u5llqwvu5bmvr4mfapya9p30psdwk','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:53:02.327000'),('jwq3jga56yij6q3d66w6i3878j6jcy3b','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 14:11:32.121000'),('k3ofzij8uxv4gvmpn8y4wjvwj7cz1u5i','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-12 12:44:24.917000'),('l9o2tqbdeleeukjtjeq2ujx96apatfgy','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 16:39:25.413000'),('lq4x6c9nbjjfbsl2f8dhb1xmwohzppps','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-12 12:28:35.594000'),('lykc1xqqbw5ibx35fdjp185zazmnx15v','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 16:47:22.272000'),('mb3gwgjagujnjde1l1sobhha2ey3ons8','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 14:09:32.993000'),('mlegylj18ev6new9z5fsp8fqhk9so7ol','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:35:45.824000'),('mlxuzrxjluakb2x4qz9eg5n45yqp6nvl','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 14:21:07.769000'),('n1i2vp246lm0lrl7tml182ylquaek4xy','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:45:13.764000'),('nd07lsjmt1yajbagx3bcby4cdisko2jo','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:04:43.087000'),('ne9ld7jmrlivj8dzus409i9b6ext38v4','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-11 10:31:06.646000'),('o9gncmatobdp9zsgypjx4yyepy421nu7','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 14:53:30.961000'),('oseyxrzd4ydj3zmkex56xg9h3xo9o296','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 13:44:20.869000'),('piqjodf8xy6s9d0byca5csktjwaawjuz','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:08:47.766000'),('po8zzer757phsrp8anw7u2cz0vemgjcm','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:47:23.736000'),('q4xd87avjf9pxujd1f88gs7avqycgvc1','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 09:59:17.828000'),('qalph37gnqtrikt6r03j55comqcv4upp','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 14:05:07.214000'),('qc75sxxtgwkwjxhmriqiezlw04kpulzf','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 14:53:21.539000'),('qfv6lkfjpwe9uoo0gua4tv2tc9ecla6m','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:52:31.170000'),('qh20z97a5yaq41puhdr2gztyahnep8o4','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 14:02:12.804000'),('qld1xy834dzl2zq3yw16k9niq1abtde5','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:52:50.921000'),('qmpdso54d18vmjb6vkmihxm33hdi1hpd','Mjg5NjhlZWRlNjI4NTBmYWYxOGQ2ZWM2YzM3YmJkYmNjYWEyYmEzMjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OWQ2ODViMmQ3MTE2NjhjNmJhOTgzNzNjZDNkYjNlYzkyM2EwMDc5In0=','2020-03-24 15:08:33.205418'),('rbidaik1v2koc8z1jhazkeoplq2ca6n6','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:37:16.430000'),('rfxmb2nkgx9rptrtwaln4wzzn2umcsn8','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 15:40:36.793000'),('roigp1peekz5kxz6dtuvephv0xha149w','YWNhNTVhMWM4ZGQxNTQ0YWMxYjcyNGFkMTE4NzFhZDhkODRiNmI4MDp7Im9wZW5pZCI6Im9OSGN3NVowLWRDVHRJSkUtZ3diY000SzNVWTgiLCJpc19hdXRob3JpemVkIjp0cnVlfQ==','2020-03-13 17:53:15.239000'),('rzxp77rsb1ruqjjl72697j7k34tia3fg','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:37:14.140000'),('sjhu7glbb68xi5n8urv52xzugrz66nyn','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-12 09:03:59.511000'),('snb0f71ilnpmflzhxqe2dbi0ohg538ge','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-12 14:19:57.923000'),('sytzkuhjjeiek8mis7tkztzrkm359afx','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:03:56.087000'),('tclocx695p23uw02e5xnuchfdvbekhyi','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 14:07:07.952000'),('tep0hrmygswwtysugd1mdpazfrhiuh6g','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 10:34:52.653000'),('tgeeyda2yy6pdo90mp2j9raxl6cjshrg','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:14:21.112000'),('tmkyvgkep8vxn8do3vbf7a8vp9592k4y','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 16:46:59.846000'),('tu06icwcp04hq1x6qb21qv58cb16j6m6','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 10:26:51.619000'),('tzuiqnx7m8o5alk4ip0macmxuek1er2z','MTQ1MzJiMjE3ODY1NmE1ZjNjM2QwNjdlMDllNWNkNDcyYTYzNGY3NDp7Im15a2V5IjoiXHU2MjExXHU3Njg0XHU2NTcwXHU1MDNjIn0=','2020-03-10 10:48:44.573000'),('u0634399tccl6jcrxrohzn85np73e23o','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:30:48.384000'),('u9qe6k0fnlik9niwcnb1udimb2y4lpw3','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 10:45:00.738000'),('ubyqxphxakquk1trt61bpgbmmxavqa25','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 12:53:39.495000'),('uf7j4c5qxc0kjlhtmst1qcnjbkv4v36w','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 14:54:54.524000'),('uzteeqota88qif9wonfnhzsx7a557b43','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 15:29:23.062000'),('vh0chs3hgk5oj3mlpyn4qenaz2kc4iam','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 09:58:53.230000'),('vlgl35s59ouv97xoi8evqxim1shazoyu','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:12:55.348000'),('wr95l3enxcxldvxfxwajqtqft13t16gg','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 17:10:51.874000'),('x0axyb718pvipsesalo2e5c8ujeo5k89','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 14:32:29.712000'),('y3jg8edsj80llmxiopudhzyvg3u711bx','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-11 15:40:46.832000'),('yljrc4cvk5vznoietuiz2u66urd4popy','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-02-28 16:47:01.618000'),('z1clhnbh56sunse9hewkemsu9kztwyoj','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-03-13 14:04:04.904000'),('z3tvze6m34ajbscf1n4sfqxulnd5tyeh','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-13 09:58:11.595000'),('z4f2wpvai13wpguxaf86gn32jxzcsj2y','MDI5Mzk3YTgyMWYyMTEzYzM3NWNjMzFlMzg5OTMzOTFjYmIyMGE1ZDp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaXNfYXV0aG9yaXplZCI6dHJ1ZX0=','2020-03-12 16:13:43.558000'),('z4jxzh3dul2wxwokv6axy5kwntovqm46','MWQ5NzNjMmFmZjFiODU5MTExODViYWE3OTZlNzA1YzI2ZWMzYzEwYzp7Im9wZW5faWQiOiJvTkhjdzVaMC1kQ1R0SUpFLWd3YmNNNEszVVk4IiwiaWRfQXV0aG9yaXplIjp0cnVlfQ==','2020-03-12 12:41:46.078000'),('z6xy0jn445zu2un4xgz1wopuwgkv26ss','OGRkMDJkODhhZWRlN2ZkNGJhM2MzZWJkZDA5OWYxZTNkODBlMzg4Mzp7fQ==','2020-02-28 14:23:21.905000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juheapp_people`
--

DROP TABLE IF EXISTS `juheapp_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juheapp_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `age` int(11) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `pub_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juheapp_people`
--

LOCK TABLES `juheapp_people` WRITE;
/*!40000 ALTER TABLE `juheapp_people` DISABLE KEYS */;
INSERT INTO `juheapp_people` VALUES (1,'abc',21,'13546791900','2020-03-10 16:12:22.569479'),(2,'嗒嗒嗒',13,'17635048194','2020-03-10 16:14:55.219693');
/*!40000 ALTER TABLE `juheapp_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juheapp_user`
--

DROP TABLE IF EXISTS `juheapp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `juheapp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(32) NOT NULL,
  `nickname` varchar(32) NOT NULL,
  `focus_cities` longtext NOT NULL,
  `focus_constellations` longtext NOT NULL,
  `focus_stocks` longtext NOT NULL,
  `key_name` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juheapp_user`
--

LOCK TABLES `juheapp_user` WRITE;
/*!40000 ALTER TABLE `juheapp_user` DISABLE KEYS */;
INSERT INTO `juheapp_user` VALUES (1,'k的','嘻嘻嘻','浙江','金牛座','嗒嗒嗒','年爸爸'),(2,'sfsfsf','你爸爸','[北京]','[是大佛杀戮空间都说了上锁了]','[方式来看风景逢狼时刻]','abc'),(3,'吗','吖吖','[]','[]','[]','123'),(4,'弟弟6','弟弟','[]','[]','[]','456');
/*!40000 ALTER TABLE `juheapp_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_blog`
--

DROP TABLE IF EXISTS `my_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `my_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(10) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_blog`
--

LOCK TABLES `my_blog` WRITE;
/*!40000 ALTER TABLE `my_blog` DISABLE KEYS */;
INSERT INTO `my_blog` VALUES (1,'所发生','哒哒的','快乐番薯看来姐夫施蒂利克是否水电费'),(3,'啦啦啦啦','哒哒','更何况车友会唱歌唱歌好吃');
/*!40000 ALTER TABLE `my_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yes`
--

DROP TABLE IF EXISTS `yes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `yes` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` char(10) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` char(15) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yes`
--

LOCK TABLES `yes` WRITE;
/*!40000 ALTER TABLE `yes` DISABLE KEYS */;
/*!40000 ALTER TABLE `yes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-11 15:53:38
