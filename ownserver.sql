-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ownserver
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `UserManage_permissionlist`
--

DROP TABLE IF EXISTS `UserManage_permissionlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserManage_permissionlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserManage_permissionlist`
--

LOCK TABLES `UserManage_permissionlist` WRITE;
/*!40000 ALTER TABLE `UserManage_permissionlist` DISABLE KEYS */;
INSERT INTO `UserManage_permissionlist` VALUES (1,'添加权限','/accounts/permission_add/'),(2,'列出权限','/accounts/permission_list/'),(3,'编辑权限','/accounts/permission_edit/'),(4,'删除权限','/accounts/permission_del/'),(5,'保存权限','/accounts/permission_save/'),(6,'添加用户','/accounts/user_add/'),(7,'列出用户','/accounts/user_list/'),(8,'编辑用户','/accounts/user_edit/'),(9,'删除用户','/accounts/user_del/'),(10,'保存用户','/accounts/user_save/'),(11,'添加角色','/accounts/role_add/'),(12,'列出角色','/accounts/role_list/'),(13,'编辑角色','/accounts/role_edit/'),(14,'删除角色','/accounts/role_del/'),(15,'保存角色','/accounts/role_save/'),(16,'修改密码','/accounts/user_changepwd/'),(17,'重置密码','/accounts/user_resetpwd/'),(18,'拒绝权限','/accounts/permission_deny/'),(25,'详细设备情况','/serverinfo/device_detailed/'),(26,'添加设备','/serverinfo/device_manage_add/'),(27,'列出设备','/serverinfo/device_manage/'),(28,'编辑设备','/serverinfo/device_manage_edit/'),(29,'删除设备','/serverinfo/device_manage_del/'),(30,'保存设备','/serverinfo/device_manage_save/'),(31,'添加机房','/serverinfo/idc_add/'),(32,'列出机房','/serverinfo/idc_manage/'),(33,'编辑机房','/serverinfo/idc_edit/'),(34,'删除机房','/serverinfo/idc_del/'),(35,'保存机房','/serverinfo/idc_save/'),(36,'添加设备类型','/serverinfo/device_type_add/'),(37,'列出设备类型','/serverinfo/device_type/'),(38,'编辑设备类型','/serverinfo/device_type_edit/'),(39,'删除设备类型','/serverinfo/device_type_del/'),(40,'保存设备类型','/serverinfo/device_type_save/'),(41,'添加设备状态','/serverinfo/device_status_add/'),(42,'列出设备状态','/serverinfo/device_status/'),(43,'编辑设备状态','/serverinfo/device_status_edit/'),(44,'删除设备状态','/serverinfo/device_status_del/'),(45,'保存设备状态','/serverinfo/device_status_save/'),(46,'添加购买','/serverinfo/buy_type_add/'),(47,'列出购买','/serverinfo/buy_type/'),(48,'编辑购买','/serverinfo/buy_type_edit/'),(49,'删除购买','/serverinfo/buy_type_del/'),(50,'保存购买','/serverinfo/buy_type_save/');
/*!40000 ALTER TABLE `UserManage_permissionlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserManage_rolelist`
--

DROP TABLE IF EXISTS `UserManage_rolelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserManage_rolelist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserManage_rolelist`
--

LOCK TABLES `UserManage_rolelist` WRITE;
/*!40000 ALTER TABLE `UserManage_rolelist` DISABLE KEYS */;
INSERT INTO `UserManage_rolelist` VALUES (8,'普通用户');
/*!40000 ALTER TABLE `UserManage_rolelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserManage_rolelist_permission`
--

DROP TABLE IF EXISTS `UserManage_rolelist_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserManage_rolelist_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolelist_id` int(11) NOT NULL,
  `permissionlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rolelist_id` (`rolelist_id`,`permissionlist_id`),
  KEY `ae12914563d8b4d6fcd7418d8266d85c` (`permissionlist_id`),
  CONSTRAINT `ae12914563d8b4d6fcd7418d8266d85c` FOREIGN KEY (`permissionlist_id`) REFERENCES `UserManage_permissionlist` (`id`),
  CONSTRAINT `UserManag_rolelist_id_409f16b4591a9e13_fk_UserManage_rolelist_id` FOREIGN KEY (`rolelist_id`) REFERENCES `UserManage_rolelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserManage_rolelist_permission`
--

LOCK TABLES `UserManage_rolelist_permission` WRITE;
/*!40000 ALTER TABLE `UserManage_rolelist_permission` DISABLE KEYS */;
INSERT INTO `UserManage_rolelist_permission` VALUES (228,8,16),(225,8,25),(226,8,26),(227,8,27),(234,8,28),(230,8,30),(229,8,32),(232,8,37),(231,8,42),(233,8,47);
/*!40000 ALTER TABLE `UserManage_rolelist_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserManage_user`
--

DROP TABLE IF EXISTS `UserManage_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserManage_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `UserManage_use_role_id_67a157de98de56d_fk_UserManage_rolelist_id` (`role_id`),
  CONSTRAINT `UserManage_use_role_id_67a157de98de56d_fk_UserManage_rolelist_id` FOREIGN KEY (`role_id`) REFERENCES `UserManage_rolelist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserManage_user`
--

LOCK TABLES `UserManage_user` WRITE;
/*!40000 ALTER TABLE `UserManage_user` DISABLE KEYS */;
INSERT INTO `UserManage_user` VALUES (1,'pbkdf2_sha256$20000$VcY4UdwrEsqO$p8TcLXD8b9ZBvtW5B1FkFJ4Y9wSb51FHBclx79AnCqg=','2016-10-12 08:26:04','admin','admin@123.com',1,1,'----',NULL,NULL),(12,'pbkdf2_sha256$20000$p8LB1TFpd7YT$QK/QyM228Ft5BAnfdVyzMf14f021AUSThrYZEVXW23Y=','2016-10-11 12:45:12','ttxsgoto','ttxsgoto@56qq.com',1,0,'ttxsgoto','M',8),(13,'pbkdf2_sha256$20000$oTk4tvmGtZ5f$VPz4xybCUxaJkLwB0LzKOwk8PrqgDN8A4JqJpDM63JM=','2016-10-11 12:44:43','test','test@56qq.com',1,0,'test01','M',NULL);
/*!40000 ALTER TABLE `UserManage_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add IDC机房',7,'add_idc'),(20,'Can change IDC机房',7,'change_idc'),(21,'Can delete IDC机房',7,'delete_idc'),(22,'Can add device_type',8,'add_device_type'),(23,'Can change device_type',8,'change_device_type'),(24,'Can delete device_type',8,'delete_device_type'),(25,'Can add device_status',9,'add_device_status'),(26,'Can change device_status',9,'change_device_status'),(27,'Can delete device_status',9,'delete_device_status'),(28,'Can add buy_type',10,'add_buy_type'),(29,'Can change buy_type',10,'change_buy_type'),(30,'Can delete buy_type',10,'delete_buy_type'),(31,'Can add host group',11,'add_hostgroup'),(32,'Can change host group',11,'change_hostgroup'),(33,'Can delete host group',11,'delete_hostgroup'),(34,'Can add serverhost',12,'add_serverhost'),(35,'Can change serverhost',12,'change_serverhost'),(36,'Can delete serverhost',12,'delete_serverhost'),(37,'Can add permission list',13,'add_permissionlist'),(38,'Can change permission list',13,'change_permissionlist'),(39,'Can delete permission list',13,'delete_permissionlist'),(40,'Can add role list',14,'add_rolelist'),(41,'Can change role list',14,'change_rolelist'),(42,'Can delete role list',14,'delete_rolelist'),(43,'Can add user',15,'add_user'),(44,'Can change user',15,'change_user'),(45,'Can delete user',15,'delete_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'serverinfo','buy_type'),(9,'serverinfo','device_status'),(8,'serverinfo','device_type'),(11,'serverinfo','hostgroup'),(7,'serverinfo','idc'),(12,'serverinfo','serverhost'),(6,'sessions','session'),(13,'UserManage','permissionlist'),(14,'UserManage','rolelist'),(15,'UserManage','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-08-23 10:41:43'),(2,'auth','0001_initial','2016-08-23 10:41:43'),(3,'admin','0001_initial','2016-08-23 10:41:43'),(4,'contenttypes','0002_remove_content_type_name','2016-08-23 10:41:43'),(5,'auth','0002_alter_permission_name_max_length','2016-08-23 10:41:43'),(6,'auth','0003_alter_user_email_max_length','2016-08-23 10:41:43'),(7,'auth','0004_alter_user_username_opts','2016-08-23 10:41:43'),(8,'auth','0005_alter_user_last_login_null','2016-08-23 10:41:43'),(9,'auth','0006_require_contenttypes_0002','2016-08-23 10:41:43'),(10,'serverinfo','0001_initial','2016-08-23 10:41:43'),(11,'sessions','0001_initial','2016-08-23 10:41:43'),(12,'serverinfo','0002_auto_20160826_1103','2016-08-26 03:03:33'),(13,'serverinfo','0003_auto_20160826_1105','2016-08-26 03:05:24'),(14,'serverinfo','0004_auto_20160826_1107','2016-08-26 03:07:43'),(15,'serverinfo','0005_serverhost_date_mod','2016-09-01 08:40:28');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('00j866xyz9a299pk7somnxgq3y5cmz0o','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 05:23:44'),('00yvptq6uxb0pf6ibvkhlcrqhznmswc1','NDFiYmUzNDMwYjFkNzJiNGMwNTJiN2JiZmJkMDE4ZTU3OGIxZDNhZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 02:39:51'),('0a1teuoi5a5e12t9dnq20hhtv13f90xs','MWNmMTdhNjRlNjA2MDI5Y2U0YzFmNjNjYjU1ZDJiN2E1YzA1Y2MwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3OWJjOGZkZTNiMjQ5MTdlNDA0MGJjMWIyODJkMTFiZWI2M2RjNzVkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 09:07:00'),('0ef5x30a82eulei0tsei971k4vbzqmwb','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 05:54:24'),('156bnmwpfd419ikfs86zbssjgxgj5t4a','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:17:14'),('1qa2rjpcdvuqdrfcgxxhyf63k2df670k','NDFiYmUzNDMwYjFkNzJiNGMwNTJiN2JiZmJkMDE4ZTU3OGIxZDNhZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:57:22'),('227ug8aer5pvog388m1mfdf7zmb7frpn','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-20 04:41:11'),('28lt9fjm3lh2cohoswt4yuj5j9etqdvd','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 04:52:54'),('2mz7629gvirabwcktqfopqwn6wtcdjxj','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:22:54'),('2njgbiibnbodla32ine0sym8gr3eg7zg','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:18:19'),('2p8mvaf3pqocfqr82azppg7arwfhyybq','ZjlmNGExYjM5NGNmNjYxOTQ0NWYxYmFjMTFhNGVhNzRhNDliNjcyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk4NDYyYmExZTBiYjQzOThkYWM5ZDgzZWNkOWE5NmNiMDQ0YWEwZiIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-10 09:30:44'),('336w0zgkh98qw000avl9rc6mn48lwy38','ZGEzYmRhYmEwMjNkZjc5Njg5Yzc0OTMwNTUzYjhmMjUzMTg1MjhhOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 02:37:48'),('38pmzrpaqpcs2s8wc2gt5skirisgc2gs','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 03:41:28'),('3hoysjcvw1d39tlrfsyyqjxpyniw59qt','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:47:41'),('3kx7hwhtkfyxmuxz4oelln07lqtcoy4m','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-10 14:53:43'),('3r5xqxy5q5z4x08tswhydgn88p42649q','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:10:00'),('433y5rjvwsj3zdyegr6od6qizdog3w0d','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-12 09:26:04'),('4f2444ut2m08o6dbw3oo1wv1rc0weous','ZjlmNGExYjM5NGNmNjYxOTQ0NWYxYmFjMTFhNGVhNzRhNDliNjcyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk4NDYyYmExZTBiYjQzOThkYWM5ZDgzZWNkOWE5NmNiMDQ0YWEwZiIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-10 11:08:16'),('4j9n3yjnr82bvnisi1cr4i7zbbnvbv4z','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-12 16:37:09'),('4m2sbxyusm3uo3xodp8mvcpnwe2kcg5x','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-05 14:20:10'),('661ikbbkmfgexocagnzxwaw59qzyxqbu','MGEyNTVlMjYyNGFhYTQ3YTk5MmU1YTI1MjZlMzgzMTc0NWIxZDM0OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY2MDc3MDk1MzAzYWVlMTRiOGJhMmU5MGQ0NThhMWRkYzgzZGVhZSIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-11 06:55:40'),('66h4jk6s51smppmpns8gd0zc150tcg81','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 06:46:36'),('6cbir43ne5fm1us1dhslcxdr2nkht3i7','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 04:38:30'),('77i30w6jduv2aesa3ono1u9c2qjit9as','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-20 06:00:46'),('7bpzklu1oqgc1b0as1m6zh8av45bua42','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 13:47:44'),('7ltrgb2akbzui7t6oy8w1hh8fqte9m4i','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-11 05:34:34'),('89w8nmopd7p6ypnigf6v7zyk88q7knnw','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 09:04:22'),('8i8og9mniahmdxj1zimetmwke3m8d8fg','NDFiYmUzNDMwYjFkNzJiNGMwNTJiN2JiZmJkMDE4ZTU3OGIxZDNhZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:56:50'),('8uvt12ov4n6an2r2at9lqs05rm3bzk8i','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 05:19:06'),('96spvwp582v7f991k9mf1elnhw0c5b13','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:44:30'),('997077mylfrt3lryq2xib85of5refrmo','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:53:51'),('9cn6lefj62rboih5t5gy3l83lgoriy5h','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 04:33:17'),('9crpvdf6oha6b4habv3aaf9q8i3z1zya','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-05 15:33:01'),('9dv4sx0hor0s0xnfyf0cv5xu96mj04e9','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:46:15'),('absrnmt8enf6v6qkycqb1u02u9j8dodb','YzA2NTAyNjkwZGFmNzMwMDVmMzRjOTgzOTYxNWMxNWE2ZDM0MDVlZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzZTNmZWE1Y2ViNGRkYWMxMzJkMDc1MDA0MGZiMTJiZDJhMWViMjZhIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 04:32:26'),('aescuwm5rklvrhidebgce69gqxdxninu','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 07:59:04'),('alayw2nrk6postjcex4r4gubexjp2e9e','ZTgxY2MyYzBkODY3ZDQxMDY3YTllZGEyMDc1MTg2MTYxZmY2MGFjZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 10:34:14'),('aofvm7jya1aay6xx5s5o3fnxpyf3sbik','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-19 11:15:07'),('b976iax2nive6h7j8tpdw14l5o15kwml','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-06 14:12:34'),('bk9vvxxir7it99rwgcp2csdifhyrt52d','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:56:14'),('bn2cq62kmts4up92kozg44jmzwqalykl','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:10:25'),('bwmyz6y0hkb9nzaghfs7u3450knemfbu','MWNmMTdhNjRlNjA2MDI5Y2U0YzFmNjNjYjU1ZDJiN2E1YzA1Y2MwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3OWJjOGZkZTNiMjQ5MTdlNDA0MGJjMWIyODJkMTFiZWI2M2RjNzVkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 03:15:40'),('cm5rw20vei90zonq3uhw4hi3zoo4u4vi','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:53:39'),('d0nzfcr70v02ujys9vcelcuxafqwc94d','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-05 15:33:18'),('d42cslwknwxb7box5asflh0j1ocek8vo','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:46:31'),('d50z7e0q0p3phvugtxr9us97b234k6xz','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 13:32:21'),('d5qbwj6hfzld5rohr3dy6vy5js03ong4','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 08:47:04'),('dcaj21veilbeiwoq5r3wy1yh61aicmk5','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 02:45:57'),('dz4dcfv2tjn11gmvrojafk8v4xiimvpi','NjUxNzMxNWJjMGI3M2ZlYTdlMmE5ZTZiNTMyZmU5MTEzNTVlZDM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzZWRhNjM4ZTE0NjU1ZTUwNjczMjcwNTEzYjkxOTlhMTQxYjM0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-20 07:17:16'),('eh5nnmle3u5ricpo6yf7uzc1feyxv7q9','MWNmMTdhNjRlNjA2MDI5Y2U0YzFmNjNjYjU1ZDJiN2E1YzA1Y2MwZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3OWJjOGZkZTNiMjQ5MTdlNDA0MGJjMWIyODJkMTFiZWI2M2RjNzVkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 10:25:14'),('esmpd86jvfog5gvvw5lr3esnxshznser','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 04:21:34'),('evylz1ujnypovtwvkvuurzs19wdx0ruv','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 04:11:19'),('g398iu7a8omgpomgs3intx0ru4wyc4u5','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 06:38:29'),('g87a29jz5fxefssz6su1e7u52w4s9fvr','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 08:51:13'),('gcpqdc79dokgzu1237n40cicba230eut','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-12 08:08:26'),('gd8o63cfg6y79yadbhtyrl45fkwyxbdu','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-20 05:57:44'),('gdos063vsylbyl1t0i79ly0yy62gv8zb','NjUxNzMxNWJjMGI3M2ZlYTdlMmE5ZTZiNTMyZmU5MTEzNTVlZDM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzZWRhNjM4ZTE0NjU1ZTUwNjczMjcwNTEzYjkxOTlhMTQxYjM0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-21 08:58:26'),('h1o461qnighh25uixbvkk2kalex2sdk8','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 05:53:05'),('hfpoljc4et3x3fd859oimbqb6hlitvml','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:03:09'),('hsz0x65soqdr3zr0qg22i4wxhsuudkse','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-13 13:33:55'),('ic1wtpsmmo5dhjhnuqqaq1grjj581r7p','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:12:16'),('icvzvuwj5fr77q73zl6gmpejkcpc3lqk','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:01:23'),('iijyb5hw0wjlkyxrbu3p1m0hvq8c52nq','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:54:57'),('isug5tfp66hvvnhffllkzdi3bfb73cfi','ODNmYTk3ODI0ODRhYjQ0NDU0MmVmMDQ4NDY4M2YxNDY5YjBiYTFlYTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiI1ZmVkNGRhYjMwYmE0ZDk0MDNjNjA3NTBhOWU2MDQ1YmEwOWFjNzE2IiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6Inh4eHgifX0=','2016-09-08 14:52:26'),('iwp9ltueqqt53ix1r8xtp3mb3cljysfb','YTkwMjdmYTZkM2JkYTc0MjVhNWE0MjgyMDk0NjI5ZDAzYzU3MThjMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5Ijo1LCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 02:42:32'),('iwpzmiec6zzdxou2hknch2f1y6fgqf6d','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:56:12'),('iy2ygfnf5p2dtfac6bzl86edk02wim90','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:03:36'),('jl23nsqcmgzmga21mizyk4r5iq259ym9','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 05:59:52'),('js0d1v1cfjx8b9i69jmwtxljdaamv27j','MGEyNTVlMjYyNGFhYTQ3YTk5MmU1YTI1MjZlMzgzMTc0NWIxZDM0OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY2MDc3MDk1MzAzYWVlMTRiOGJhMmU5MGQ0NThhMWRkYzgzZGVhZSIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-11 06:52:59'),('jwwg1o3pz1vxwlcbiirz95nx5hdbamcf','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-06 12:08:22'),('k8w7ox62934v68vm73cmek0r5bgkcfac','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 02:40:38'),('kg59wta5a2zzsh42nr8moorejnuj1z4w','YTE0NGEzNmVlZDAxMjQxNzlhYzg0YTE3ZTRmMGFiZDZmM2EyZTkwNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxODAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 03:18:50'),('koh2wkb1qm5r0ypnd3tl6erxsb5k6yoh','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:33:22'),('kx6jzm6gjgk6l44q5qu7p747d4q544rr','ZjlmNGExYjM5NGNmNjYxOTQ0NWYxYmFjMTFhNGVhNzRhNDliNjcyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk4NDYyYmExZTBiYjQzOThkYWM5ZDgzZWNkOWE5NmNiMDQ0YWEwZiIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-11 04:50:21'),('la5djqtagyxcisqtnvmwravp6lskbo6e','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-07 14:08:56'),('lbsno2p0lvz67ftzhuhh5f27yek00s14','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-20 03:52:42'),('lh4a9e100h0rf1nojpgy2e1q8pd7jxu9','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:50:06'),('liicfit0wwemfpai9j8qmx364yq20jfg','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 09:40:12'),('llrj2tcvwt4uz4vsa4joyc027ob5xbzy','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-16 14:14:09'),('lp95482lgwuxe8v15y671mwenh4x3w8r','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 13:39:49'),('mqfcjea1ao88dtxkue5thz2dbfr8oypp','NjUxNzMxNWJjMGI3M2ZlYTdlMmE5ZTZiNTMyZmU5MTEzNTVlZDM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzZWRhNjM4ZTE0NjU1ZTUwNjczMjcwNTEzYjkxOTlhMTQxYjM0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-20 07:54:14'),('mvhwmyg136jd4kamh5qxm4a9hmdvzmgi','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-19 12:18:36'),('n8j0vaw02tfnc2rllmd4spjoxo865ffs','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-13 11:30:03'),('nhzxcj0lkmaxkznq7jzqa2eqpt97397g','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:00:33'),('np2jcdagpf289kbwc4e43vp2pdqr907h','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 09:32:41'),('nvvp2vg5j3l4i8dzphnnasjk7lke6hay','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 14:27:47'),('ofhvyjvdkb163rkku5hwpo1f1elo3o9o','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 07:18:56'),('otddr5tl1otnwea3tm1icuhh63dfbsgt','ZjlmNGExYjM5NGNmNjYxOTQ0NWYxYmFjMTFhNGVhNzRhNDliNjcyOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjk4NDYyYmExZTBiYjQzOThkYWM5ZDgzZWNkOWE5NmNiMDQ0YWEwZiIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-11 03:37:55'),('ow3idd95kmobdrof1yu67lcryf0dgh7m','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 13:19:33'),('p5hkmx77rksfi43c72zm8mtc0vr7wo38','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:18:32'),('pdh684rdzkkfy39qyyllopazp3f61vbt','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-11 14:30:53'),('phj4j6hymv3vv1y4e21cxarbzju0ostg','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 05:43:53'),('pnlv6099ig4zd2wfjkezux12bhycbht9','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 05:10:02'),('qpm1c53y8b21mtty4x3l6t8u1fsv94bj','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:57:33'),('quazjw9pkqs02hp7e4emcdt83au5ehl4','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-19 11:54:41'),('r1yf8i5km7z7pl0u5v0ypn5m7nvu0fxj','NjUxNzMxNWJjMGI3M2ZlYTdlMmE5ZTZiNTMyZmU5MTEzNTVlZDM0MDp7Il9hdXRoX3VzZXJfaGFzaCI6IjgzZWRhNjM4ZTE0NjU1ZTUwNjczMjcwNTEzYjkxOTlhMTQxYjM0ZTIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-09-20 07:51:11'),('rdr77qxfbwhz9mdy9imwoy7w3h5n6ajn','NmJlYzRhMTE2Zjc2MTNjM2RmYjdlNDUzOGMyNjNlY2RhNDI0MGNmODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEzIiwiX2F1dGhfdXNlcl9oYXNoIjoiYzRjNWY2YmJlMmYwNGMwZjcxYTc0ZDk5YjdhYmMxZGY3MTRiMGFkNSIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0ZXN0In19','2016-10-11 10:58:52'),('rjgrhlv6yivrqfc4q6f2yeqn31i7tzpi','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-11 04:15:32'),('rm0xpahhmg6htsnfs1d3nn5ipfhzdoha','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:56:02'),('ryon2lrr7xi7v4h1l1tyh31s8flw1p9b','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-14 11:39:33'),('sgb09x0wzcig2m3z7i8t2px2kjchpoo4','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-13 14:55:33'),('snfq37jkg2ohptuqk8akap5wtl52a5dq','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:46:55'),('sx8yy4e4xdzx654163r492ij3l34ggny','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:34:32'),('t11hoheqe69fi8nniqhec78qffvy0erf','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 02:40:51'),('t8zw2bguxewyg2aqa9nx4eiwab1qrvi0','ZTgxY2MyYzBkODY3ZDQxMDY3YTllZGEyMDc1MTg2MTYxZmY2MGFjZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 10:32:50'),('u0m2dt8wnsntgozskwdkj4msdlmr1wn1','ZTgxY2MyYzBkODY3ZDQxMDY3YTllZGEyMDc1MTg2MTYxZmY2MGFjZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 08:19:38'),('ug3ch4x8gy6aitb5py7gomvtsc7ulvkg','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-10 06:10:18'),('uthm1rqzxsgfc0k9m824oocr94zf0gx0','YTE0NGEzNmVlZDAxMjQxNzlhYzg0YTE3ZTRmMGFiZDZmM2EyZTkwNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxODAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-07 04:27:51'),('uv5gfw8dbceborimxgdrl9h0cn10gxe2','MGEyNTVlMjYyNGFhYTQ3YTk5MmU1YTI1MjZlMzgzMTc0NWIxZDM0OTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmY2MDc3MDk1MzAzYWVlMTRiOGJhMmU5MGQ0NThhMWRkYzgzZGVhZSIsIl9zZXNzaW9uX2V4cGlyeSI6MzYwMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJ0dHhzZ290byJ9fQ==','2016-10-11 06:58:14'),('uvmynjk1oazp9d5t4r00x4ezq8g09h7a','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-09-11 05:15:53'),('uzbfrvvi09fwpquxfajrt69uqv2pepau','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:56:56'),('vbwqfliwv40ef7mckkwysd7a39spt04e','NDQ2NjkyYzRhZDBjMmY2YWM4YjVmMDJiNTIyM2ExMDNmNzJiOGIxNzp7Il9hdXRoX3VzZXJfaGFzaCI6ImQzM2RhNGU2YjEyZGI1MGVkMzUxOWI1YzljNTY2MGEzYWZlZmIyOTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2016-09-20 04:46:52'),('vn8exh2vb8yb944bazask0xnsw67u5xk','ZmU2NjNjNzY4ZGYzYmU2NjljZjVmOGNkMDg3YzI4MGQ3OGQwMWJmYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiI3MTU2Y2U4ODQwZmU1NmQyODYyY2E5Y2ZhYjJhY2NiOTM3MjNmZmQyIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-06 13:10:30'),('w1vkp079n1xz2i4q6hpol72c3n7bygg8','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:10:37'),('w530sde6puldm0deu9isux01r4uokz5g','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 06:34:02'),('x68d4ttozauqop9rwh5q119e6d6hlt3v','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:49:52'),('xe9kco4xncoib2g0mexs6wlxhf5764c4','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-09 05:41:00'),('y03pmznq897t384sdsilqgo5azqrq1t2','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:43:24'),('ycvmzqdq0rqxtwg3bfj2nmc2snq8je1e','NDFiYmUzNDMwYjFkNzJiNGMwNTJiN2JiZmJkMDE4ZTU3OGIxZDNhZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjozMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 07:00:30'),('ygp2bltkblu0kh8kicypdfhnbqg3p1jf','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 05:02:22'),('yyefrxouceq0e128h6dwatp32mmn42oc','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 10:39:18'),('z0mahu04i1l26rosdqwnvnmg844ovwv8','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:55:45'),('z1zz8hc3ky0fr6lgqqrsirggo4t84xa5','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 06:45:12'),('zb1paxc7qtf3gc8flnyg3f3xtsxf6gl3','ZGEzYmRhYmEwMjNkZjc5Njg5Yzc0OTMwNTUzYjhmMjUzMTg1MjhhOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5Ijo2MCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 02:32:39'),('zc8u84o0n3ywauvz6o6revp1q3kebd5x','ZGRiOTJmMmNhOTQ2MmMxYTBmNzlhNDQwNDRkZTk1NWFjNDYzMjNjMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJiNGJmN2RiOTdkY2UxMzQxNDNlOTdhZDhhZGEyMDYwZDJjZjUxNjFkIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-08 07:06:18'),('zgfrm9bewnd2tax21u3rhyqleg85sejt','OWNlNzdhMWMwYTA5YTBlMDU1OGZhOTZmNmRjNzE5NjBjZGJkODkwYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiI4M2VkYTYzOGUxNDY1NWU1MDY3MzI3MDUxM2I5MTk5YTE0MWIzNGUyIiwiX3Nlc3Npb25fZXhwaXJ5IjoxMCwiaXNfbG9naW4iOnsidXNlcm5hbWUiOiJhZG1pbiJ9fQ==','2016-09-07 04:58:13'),('zis2hxcs3dqifmhsqax3pmzlmj4fm4lo','MmJhM2UyODdlNjM1MjlhOTdkZDRjZTExZmQ3ZWI4YjU5ZDQ0YjdlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjNzZiNGNkNWY2NDk1Y2NkNGJkMTNhZGRkYzA0YTVjMTgxY2FlMzFiIiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJpc19sb2dpbiI6eyJ1c2VybmFtZSI6ImFkbWluIn19','2016-10-12 02:22:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_buy_type`
--

DROP TABLE IF EXISTS `serverinfo_buy_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_buy_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_buy_type`
--

LOCK TABLES `serverinfo_buy_type` WRITE;
/*!40000 ALTER TABLE `serverinfo_buy_type` DISABLE KEYS */;
INSERT INTO `serverinfo_buy_type` VALUES (1,'自建'),(2,'腾讯云'),(3,'阿里云');
/*!40000 ALTER TABLE `serverinfo_buy_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_device_status`
--

DROP TABLE IF EXISTS `serverinfo_device_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_device_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_device_status`
--

LOCK TABLES `serverinfo_device_status` WRITE;
/*!40000 ALTER TABLE `serverinfo_device_status` DISABLE KEYS */;
INSERT INTO `serverinfo_device_status` VALUES (1,'正常'),(2,'下架'),(3,'备用'),(4,'异常');
/*!40000 ALTER TABLE `serverinfo_device_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_device_type`
--

DROP TABLE IF EXISTS `serverinfo_device_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_device_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_device_type`
--

LOCK TABLES `serverinfo_device_type` WRITE;
/*!40000 ALTER TABLE `serverinfo_device_type` DISABLE KEYS */;
INSERT INTO `serverinfo_device_type` VALUES (1,'服务器'),(2,'交换机'),(3,'交换机01'),(4,'交换机');
/*!40000 ALTER TABLE `serverinfo_device_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_hostgroup`
--

DROP TABLE IF EXISTS `serverinfo_hostgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_hostgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `comment` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_hostgroup`
--

LOCK TABLES `serverinfo_hostgroup` WRITE;
/*!40000 ALTER TABLE `serverinfo_hostgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `serverinfo_hostgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_idc`
--

DROP TABLE IF EXISTS `serverinfo_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_idc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(128) DEFAULT NULL,
  `linkman` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_idc`
--

LOCK TABLES `serverinfo_idc` WRITE;
/*!40000 ALTER TABLE `serverinfo_idc` DISABLE KEYS */;
INSERT INTO `serverinfo_idc` VALUES (1,'北京兆维机房','北京','张三','123456789001',NULL,'test01'),(8,'广州电信机房','广东','钟强','1234567890','2016-08-24','test03'),(11,'成都机房','成都','货车帮','13688423456','2016-08-24','hcb');
/*!40000 ALTER TABLE `serverinfo_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serverinfo_serverhost`
--

DROP TABLE IF EXISTS `serverinfo_serverhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `serverinfo_serverhost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `externalip1` varchar(32) DEFAULT NULL,
  `internalip1` varchar(32) DEFAULT NULL,
  `externalip2` varchar(32) DEFAULT NULL,
  `internalip2` varchar(32) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `brand` varchar(64) DEFAULT NULL,
  `cpu` varchar(64) DEFAULT NULL,
  `cpu_hz` varchar(64) DEFAULT NULL,
  `memory` varchar(128) DEFAULT NULL,
  `disk` varchar(1024) DEFAULT NULL,
  `disk_type` varchar(1024) DEFAULT NULL,
  `disk_num` varchar(20) DEFAULT NULL,
  `system_type` varchar(32) DEFAULT NULL,
  `system_version` varchar(16) DEFAULT NULL,
  `cabinet` varchar(32) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `number` varchar(32) DEFAULT NULL,
  `sn` varchar(128) DEFAULT NULL,
  `date_added` varchar(64) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `buy_type_id` int(11) DEFAULT NULL,
  `host_type_id` int(11) DEFAULT NULL,
  `idc_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `date_mod` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serverinfo_serverhost_externalip1_20d6954c88a95ba3_uniq` (`externalip1`),
  KEY `serverinf_buy_type_id_469f2cbb90850031_fk_serverinfo_buy_type_id` (`buy_type_id`),
  KEY `serve_host_type_id_2cbdd0529466ffac_fk_serverinfo_device_type_id` (`host_type_id`),
  KEY `serverinfo_serverho_idc_id_6230900b91d86be1_fk_serverinfo_idc_id` (`idc_id`),
  KEY `serveri_status_id_17a9a21abdbcc60_fk_serverinfo_device_status_id` (`status_id`),
  CONSTRAINT `serverinfo_serverho_idc_id_6230900b91d86be1_fk_serverinfo_idc_id` FOREIGN KEY (`idc_id`) REFERENCES `serverinfo_idc` (`id`),
  CONSTRAINT `serverinf_buy_type_id_469f2cbb90850031_fk_serverinfo_buy_type_id` FOREIGN KEY (`buy_type_id`) REFERENCES `serverinfo_buy_type` (`id`),
  CONSTRAINT `serveri_status_id_17a9a21abdbcc60_fk_serverinfo_device_status_id` FOREIGN KEY (`status_id`) REFERENCES `serverinfo_device_status` (`id`),
  CONSTRAINT `serve_host_type_id_2cbdd0529466ffac_fk_serverinfo_device_type_id` FOREIGN KEY (`host_type_id`) REFERENCES `serverinfo_device_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serverinfo_serverhost`
--

LOCK TABLES `serverinfo_serverhost` WRITE;
/*!40000 ALTER TABLE `serverinfo_serverhost` DISABLE KEYS */;
INSERT INTO `serverinfo_serverhost` VALUES (24,'1.1.1.2','1.1.1.2','2.2.2.2','2.2.2.2','test01','1234.5678.2345.5678','Dell','8','2.3','16G','2T','SSD','4','linux','6.3','2','E3','AERTW5R','2311345678854','2016-08-26','test01',3,1,11,2,'2016-10-11'),(32,'10.10.10.10','10.10.10.10','3.3.3.3','2.2.2.2','centos6.4-slave','1234.5678.2345.5678','Dell','45','2.3','16G','8T','SATA','4','linux','linux','2','E3','AERTW5R','cvzxvcxvcxzvcx','2016-08-26','test0101',1,1,8,2,'2016-10-11'),(33,'1.1.1.3','2.2.2.2','','','','','','','','','','','','','','','','','','2016-09-02','',1,1,1,1,NULL),(34,'4.4.4.4','2.2.2.2','','','','','','','','','','','','','','','','','','2016-09-02','',1,1,1,1,NULL),(35,'4.4.4.1','2.2.2.2','','','','','','','','','','','','','','','','','','2016-09-02','',1,1,1,1,NULL),(36,'2.3.3.3','1.1.1.1','','','','','','','','','','','','','','','','','','2016-08-31','',1,1,1,1,NULL),(37,'4.5.5.5','1.1.1.1','','','','','','','','','','','','','','','','','','2016-08-31','',1,1,1,1,NULL),(38,'4.5.67.7','1.1.1.1','','','','','','','','','','','','','','','','','','2016-09-02','',1,1,1,1,NULL),(39,'3.3.3.5','10.10.10.10','','','','','','','','','','','','','','','','','','2016-09-02','',1,1,1,1,NULL),(40,'182.148.114.190','192.168.6.228','','','','','','','','','','','','','','','','','','2016-10-11','',1,1,8,1,'2016-10-11');
/*!40000 ALTER TABLE `serverinfo_serverhost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-12 16:28:22
