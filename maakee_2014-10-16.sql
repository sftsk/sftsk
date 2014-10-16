# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.1.63-0+squeeze1)
# Database: maakee
# Generation Time: 2014-10-16 07:28:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table modx_access_actiondom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_actiondom`;

CREATE TABLE `modx_access_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_actions`;

CREATE TABLE `modx_access_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_category`;

CREATE TABLE `modx_access_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_context
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_context`;

CREATE TABLE `modx_access_context` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_access_context` WRITE;
/*!40000 ALTER TABLE `modx_access_context` DISABLE KEYS */;

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`)
VALUES
	(1,'web','modUserGroup',0,9999,3),
	(2,'mgr','modUserGroup',1,0,2),
	(3,'web','modUserGroup',1,0,2);

/*!40000 ALTER TABLE `modx_access_context` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_access_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_elements`;

CREATE TABLE `modx_access_elements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_media_source
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_media_source`;

CREATE TABLE `modx_access_media_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table modx_access_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_menus`;

CREATE TABLE `modx_access_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_permissions`;

CREATE TABLE `modx_access_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_access_permissions` WRITE;
/*!40000 ALTER TABLE `modx_access_permissions` DISABLE KEYS */;

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`)
VALUES
	(1,1,'about','perm.about_desc',1),
	(2,1,'access_permissions','perm.access_permissions_desc',1),
	(3,1,'actions','perm.actions_desc',1),
	(4,1,'change_password','perm.change_password_desc',1),
	(5,1,'change_profile','perm.change_profile_desc',1),
	(6,1,'charsets','perm.charsets_desc',1),
	(7,1,'class_map','perm.class_map_desc',1),
	(8,1,'components','perm.components_desc',1),
	(9,1,'content_types','perm.content_types_desc',1),
	(10,1,'countries','perm.countries_desc',1),
	(11,1,'create','perm.create_desc',1),
	(12,1,'credits','perm.credits_desc',1),
	(13,1,'customize_forms','perm.customize_forms_desc',1),
	(14,1,'database','perm.database_desc',1),
	(15,1,'database_truncate','perm.database_truncate_desc',1),
	(16,1,'delete_category','perm.delete_category_desc',1),
	(17,1,'delete_chunk','perm.delete_chunk_desc',1),
	(18,1,'delete_context','perm.delete_context_desc',1),
	(19,1,'delete_document','perm.delete_document_desc',1),
	(20,1,'delete_eventlog','perm.delete_eventlog_desc',1),
	(21,1,'delete_plugin','perm.delete_plugin_desc',1),
	(22,1,'delete_propertyset','perm.delete_propertyset_desc',1),
	(23,1,'delete_snippet','perm.delete_snippet_desc',1),
	(24,1,'delete_template','perm.delete_template_desc',1),
	(25,1,'delete_tv','perm.delete_tv_desc',1),
	(26,1,'delete_role','perm.delete_role_desc',1),
	(27,1,'delete_user','perm.delete_user_desc',1),
	(28,1,'directory_chmod','perm.directory_chmod_desc',1),
	(29,1,'directory_create','perm.directory_create_desc',1),
	(30,1,'directory_list','perm.directory_list_desc',1),
	(31,1,'directory_remove','perm.directory_remove_desc',1),
	(32,1,'directory_update','perm.directory_update_desc',1),
	(33,1,'edit_category','perm.edit_category_desc',1),
	(34,1,'edit_chunk','perm.edit_chunk_desc',1),
	(35,1,'edit_context','perm.edit_context_desc',1),
	(36,1,'edit_document','perm.edit_document_desc',1),
	(37,1,'edit_locked','perm.edit_locked_desc',1),
	(38,1,'edit_plugin','perm.edit_plugin_desc',1),
	(39,1,'edit_propertyset','perm.edit_propertyset_desc',1),
	(40,1,'edit_role','perm.edit_role_desc',1),
	(41,1,'edit_snippet','perm.edit_snippet_desc',1),
	(42,1,'edit_template','perm.edit_template_desc',1),
	(43,1,'edit_tv','perm.edit_tv_desc',1),
	(44,1,'edit_user','perm.edit_user_desc',1),
	(45,1,'element_tree','perm.element_tree_desc',1),
	(46,1,'empty_cache','perm.empty_cache_desc',1),
	(47,1,'error_log_erase','perm.error_log_erase_desc',1),
	(48,1,'error_log_view','perm.error_log_view_desc',1),
	(49,1,'export_static','perm.export_static_desc',1),
	(50,1,'file_list','perm.file_list_desc',1),
	(51,1,'file_manager','perm.file_manager_desc',1),
	(52,1,'file_remove','perm.file_remove_desc',1),
	(53,1,'file_tree','perm.file_tree_desc',1),
	(54,1,'file_update','perm.file_update_desc',1),
	(55,1,'file_upload','perm.file_upload_desc',1),
	(56,1,'file_view','perm.file_view_desc',1),
	(57,1,'flush_sessions','perm.flush_sessions_desc',1),
	(58,1,'frames','perm.frames_desc',1),
	(59,1,'help','perm.help_desc',1),
	(60,1,'home','perm.home_desc',1),
	(61,1,'import_static','perm.import_static_desc',1),
	(62,1,'languages','perm.languages_desc',1),
	(63,1,'lexicons','perm.lexicons_desc',1),
	(64,1,'list','perm.list_desc',1),
	(65,1,'load','perm.load_desc',1),
	(66,1,'logout','perm.logout_desc',1),
	(67,1,'logs','perm.logs_desc',1),
	(68,1,'menus','perm.menus_desc',1),
	(69,1,'messages','perm.messages_desc',1),
	(70,1,'namespaces','perm.namespaces_desc',1),
	(71,1,'new_category','perm.new_category_desc',1),
	(72,1,'new_chunk','perm.new_chunk_desc',1),
	(73,1,'new_context','perm.new_context_desc',1),
	(74,1,'new_document','perm.new_document_desc',1),
	(75,1,'new_document_in_root','perm.new_document_in_root_desc',1),
	(76,1,'new_plugin','perm.new_plugin_desc',1),
	(77,1,'new_propertyset','perm.new_propertyset_desc',1),
	(78,1,'new_role','perm.new_role_desc',1),
	(79,1,'new_snippet','perm.new_snippet_desc',1),
	(80,1,'new_template','perm.new_template_desc',1),
	(81,1,'new_tv','perm.new_tv_desc',1),
	(82,1,'new_user','perm.new_user_desc',1),
	(83,1,'packages','perm.packages_desc',1),
	(84,1,'property_sets','perm.property_sets_desc',1),
	(85,1,'providers','perm.providers_desc',1),
	(86,1,'publish_document','perm.publish_document_desc',1),
	(87,1,'purge_deleted','perm.purge_deleted_desc',1),
	(88,1,'remove','perm.remove_desc',1),
	(89,1,'remove_locks','perm.remove_locks_desc',1),
	(90,1,'resource_quick_create','perm.resource_quick_create_desc',1),
	(91,1,'resource_quick_update','perm.resource_quick_update_desc',1),
	(92,1,'resource_tree','perm.resource_tree_desc',1),
	(93,1,'save','perm.save_desc',1),
	(94,1,'save_category','perm.save_category_desc',1),
	(95,1,'save_chunk','perm.save_chunk_desc',1),
	(96,1,'save_context','perm.save_context_desc',1),
	(97,1,'save_document','perm.save_document_desc',1),
	(98,1,'save_plugin','perm.save_plugin_desc',1),
	(99,1,'save_propertyset','perm.save_propertyset_desc',1),
	(100,1,'save_role','perm.save_role_desc',1),
	(101,1,'save_snippet','perm.save_snippet_desc',1),
	(102,1,'save_template','perm.save_template_desc',1),
	(103,1,'save_tv','perm.save_tv_desc',1),
	(104,1,'save_user','perm.save_user_desc',1),
	(105,1,'search','perm.search_desc',1),
	(106,1,'settings','perm.settings_desc',1),
	(107,1,'steal_locks','perm.steal_locks_desc',1),
	(108,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),
	(109,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),
	(110,1,'undelete_document','perm.undelete_document_desc',1),
	(111,1,'unpublish_document','perm.unpublish_document_desc',1),
	(112,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),
	(113,1,'view','perm.view_desc',1),
	(114,1,'view_category','perm.view_category_desc',1),
	(115,1,'view_chunk','perm.view_chunk_desc',1),
	(116,1,'view_context','perm.view_context_desc',1),
	(117,1,'view_document','perm.view_document_desc',1),
	(118,1,'view_element','perm.view_element_desc',1),
	(119,1,'view_eventlog','perm.view_eventlog_desc',1),
	(120,1,'view_offline','perm.view_offline_desc',1),
	(121,1,'view_plugin','perm.view_plugin_desc',1),
	(122,1,'view_propertyset','perm.view_propertyset_desc',1),
	(123,1,'view_role','perm.view_role_desc',1),
	(124,1,'view_snippet','perm.view_snippet_desc',1),
	(125,1,'view_sysinfo','perm.view_sysinfo_desc',1),
	(126,1,'view_template','perm.view_template_desc',1),
	(127,1,'view_tv','perm.view_tv_desc',1),
	(128,1,'view_user','perm.view_user_desc',1),
	(129,1,'view_unpublished','perm.view_unpublished_desc',1),
	(130,1,'workspaces','perm.workspaces_desc',1),
	(131,2,'add_children','perm.add_children_desc',1),
	(132,2,'copy','perm.copy_desc',1),
	(133,2,'create','perm.create_desc',1),
	(134,2,'delete','perm.delete_desc',1),
	(135,2,'list','perm.list_desc',1),
	(136,2,'load','perm.load_desc',1),
	(137,2,'move','perm.move_desc',1),
	(138,2,'publish','perm.publish_desc',1),
	(139,2,'remove','perm.remove_desc',1),
	(140,2,'save','perm.save_desc',1),
	(141,2,'steal_lock','perm.steal_lock_desc',1),
	(142,2,'undelete','perm.undelete_desc',1),
	(143,2,'unpublish','perm.unpublish_desc',1),
	(144,2,'view','perm.view_desc',1),
	(145,3,'load','perm.load_desc',1),
	(146,3,'list','perm.list_desc',1),
	(147,3,'view','perm.view_desc',1),
	(148,3,'save','perm.save_desc',1),
	(149,3,'remove','perm.remove_desc',1),
	(150,4,'add_children','perm.add_children_desc',1),
	(151,4,'create','perm.create_desc',1),
	(152,4,'copy','perm.copy_desc',1),
	(153,4,'delete','perm.delete_desc',1),
	(154,4,'list','perm.list_desc',1),
	(155,4,'load','perm.load_desc',1),
	(156,4,'remove','perm.remove_desc',1),
	(157,4,'save','perm.save_desc',1),
	(158,4,'view','perm.view_desc',1),
	(159,1,'dashboards','perm.dashboards_desc',1),
	(160,1,'file_create','perm.file_create_desc',1),
	(161,1,'menu_reports','perm.menu_reports_desc',1),
	(162,1,'menu_security','perm.menu_security_desc',1),
	(163,1,'menu_site','perm.menu_site_desc',1),
	(164,1,'menu_support','perm.menu_support_desc',1),
	(165,1,'menu_system','perm.menu_system_desc',1),
	(166,1,'menu_tools','perm.menu_tools_desc',1),
	(167,1,'menu_user','perm.menu_user_desc',1),
	(168,1,'new_static_resource','perm.new_static_resource_desc',1),
	(169,1,'new_symlink','perm.new_symlink_desc',1),
	(170,1,'new_weblink','perm.new_weblink_desc',1),
	(171,1,'policy_delete','perm.policy_delete_desc',1),
	(172,1,'policy_edit','perm.policy_edit_desc',1),
	(173,1,'policy_new','perm.policy_new_desc',1),
	(174,1,'policy_save','perm.policy_save_desc',1),
	(175,1,'policy_view','perm.policy_view_desc',1),
	(176,1,'policy_template_delete','perm.policy_template_delete_desc',1),
	(177,1,'policy_template_edit','perm.policy_template_edit_desc',1),
	(178,1,'policy_template_new','perm.policy_template_new_desc',1),
	(179,1,'policy_template_save','perm.policy_template_save_desc',1),
	(180,1,'policy_template_view','perm.policy_template_view_desc',1),
	(181,1,'resource_duplicate','perm.resource_duplicate_desc',1),
	(182,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),
	(183,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),
	(184,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),
	(185,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),
	(186,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),
	(187,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),
	(188,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),
	(189,1,'source_save','perm.source_save_desc',1),
	(190,1,'source_delete','perm.source_delete_desc',1),
	(191,1,'source_edit','perm.source_edit_desc',1),
	(192,1,'source_view','perm.source_view_desc',1),
	(193,1,'sources','perm.sources_desc',1),
	(194,1,'usergroup_delete','perm.usergroup_delete_desc',1),
	(195,1,'usergroup_edit','perm.usergroup_edit_desc',1),
	(196,1,'usergroup_new','perm.usergroup_new_desc',1),
	(197,1,'usergroup_save','perm.usergroup_save_desc',1),
	(198,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),
	(199,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),
	(200,1,'usergroup_view','perm.usergroup_view_desc',1),
	(201,5,'create','perm.create_desc',1),
	(202,5,'copy','perm.copy_desc',1),
	(203,5,'list','perm.list_desc',1),
	(204,5,'load','perm.load_desc',1),
	(205,5,'remove','perm.remove_desc',1),
	(206,5,'save','perm.save_desc',1),
	(207,5,'view','perm.view_desc',1),
	(208,6,'load','perm.load_desc',1),
	(209,6,'list','perm.list_desc',1),
	(210,6,'view','perm.view_desc',1),
	(211,6,'save','perm.save_desc',1),
	(212,6,'remove','perm.remove_desc',1),
	(213,6,'view_unpublished','perm.view_unpublished_desc',1),
	(214,6,'copy','perm.copy_desc',1);

/*!40000 ALTER TABLE `modx_access_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_access_policies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_policies`;

CREATE TABLE `modx_access_policies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `template` int(10) unsigned NOT NULL DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_access_policies` WRITE;
/*!40000 ALTER TABLE `modx_access_policies` DISABLE KEYS */;

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`)
VALUES
	(1,'Resource','MODX Resource Policy with all attributes.',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),
	(2,'Administrator','Context administration policy with all permissions.',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),
	(3,'Load Only','A minimal policy with permission to load an object.',0,3,'','{\"load\":true}','permissions'),
	(4,'Load, List and View','Provides load, list and view permissions only.',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
	(5,'Object','An Object policy with all permissions.',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),
	(6,'Element','MODX Element policy with all attributes.',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),
	(7,'Content Editor','Context administration policy with limited, content-editing related Permissions, but no publishing.',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}','permissions'),
	(8,'Media Source Admin','Media Source administration policy.',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),
	(9,'Media Source User','Media Source user policy, with basic viewing and using - but no editing - of Media Sources.',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),
	(10,'Developer','Context administration policy with most Permissions except Administrator and Security functions.',0,0,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}','permissions'),
	(11,'Context','A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.',0,6,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}','permissions');

/*!40000 ALTER TABLE `modx_access_policies` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_access_policy_template_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_access_policy_template_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_template_groups` DISABLE KEYS */;

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`)
VALUES
	(1,'Admin','All admin policy templates.'),
	(2,'Object','All Object-based policy templates.'),
	(3,'Resource','All Resource-based policy templates.'),
	(4,'Element','All Element-based policy templates.'),
	(5,'MediaSource','All Media Source-based policy templates.');

/*!40000 ALTER TABLE `modx_access_policy_template_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_access_policy_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_policy_templates`;

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_access_policy_templates` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_templates` DISABLE KEYS */;

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`)
VALUES
	(1,1,'AdministratorTemplate','Context administration policy template with all permissions.','permissions'),
	(2,3,'ResourceTemplate','Resource Policy Template with all attributes.','permissions'),
	(3,2,'ObjectTemplate','Object Policy Template with all attributes.','permissions'),
	(4,4,'ElementTemplate','Element Policy Template with all attributes.','permissions'),
	(5,5,'MediaSourceTemplate','Media Source Policy Template with all attributes.','permissions'),
	(6,2,'ContextTemplate','Context Policy Template with all attributes.','permissions');

/*!40000 ALTER TABLE `modx_access_policy_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_access_resource_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_resource_groups`;

CREATE TABLE `modx_access_resource_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_resources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_resources`;

CREATE TABLE `modx_access_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_access_templatevars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_access_templatevars`;

CREATE TABLE `modx_access_templatevars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) unsigned NOT NULL DEFAULT '0',
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  `policy` int(10) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_actiondom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_actiondom`;

CREATE TABLE `modx_actiondom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_actions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_actions`;

CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_actions` WRITE;
/*!40000 ALTER TABLE `modx_actions` DISABLE KEYS */;

INSERT INTO `modx_actions` (`id`, `namespace`, `controller`, `haslayout`, `lang_topics`, `assets`, `help_url`)
VALUES
	(1,'core','welcome',1,'welcome,configcheck','',''),
	(2,'core','system',0,'','',''),
	(3,'core','browser',0,'file','',''),
	(4,'core','context/create',1,'context,setting,access,policy,user','','Contexts'),
	(5,'core','context/update',1,'context,setting,access,policy,user','','Contexts'),
	(6,'core','context/view',1,'context','','Contexts'),
	(7,'core','element',1,'element','',''),
	(8,'core','element/chunk',1,'chunk,category,propertyset,element','','Chunks'),
	(9,'core','element/chunk/create',1,'chunk,category,propertyset,element','','Chunks'),
	(10,'core','element/chunk/update',1,'chunk,category,propertyset,element','','Chunks'),
	(11,'core','element/plugin',1,'plugin,category,system_events,propertyset,element','','Plugins'),
	(12,'core','element/plugin/create',1,'plugin,category,system_events,propertyset,element','','Plugins'),
	(13,'core','element/plugin/update',1,'plugin,category,system_events,propertyset,element','','Plugins'),
	(14,'core','element/snippet',1,'snippet,propertyset,element','','Snippets'),
	(15,'core','element/snippet/create',1,'snippet,propertyset,element','','Snippets'),
	(16,'core','element/snippet/update',1,'snippet,propertyset,element','','Snippets'),
	(17,'core','element/template',1,'template,propertyset,element','','Templates'),
	(18,'core','element/template/create',1,'template,propertyset,element','','Templates'),
	(19,'core','element/template/update',1,'template,propertyset,element','','Templates'),
	(20,'core','element/template/tvsort',1,'template,tv,propertyset,element','',''),
	(21,'core','element/tv',1,'tv,propertyset,element','','Template+Variables'),
	(22,'core','element/tv/create',1,'tv,tv_widget,propertyset,element','','Template+Variables'),
	(23,'core','element/tv/update',1,'tv,tv_widget,propertyset,element','','Template+Variables'),
	(24,'core','element/view',1,'element','',''),
	(25,'core','resource',1,'','',''),
	(26,'core','security/usergroup/create',1,'user,access,policy,context','','User+Groups'),
	(27,'core','security/usergroup/update',1,'user,access,policy,context','','User+Groups'),
	(28,'core','resource/data',1,'resource','','Resource'),
	(29,'core','resource/empty_recycle_bin',1,'resource','',''),
	(30,'core','resource/update',1,'resource','','Resource'),
	(31,'core','security',1,'user','',''),
	(32,'core','security/role',1,'user','','Roles'),
	(33,'core','security/user/create',1,'user,setting,access','','Users'),
	(34,'core','security/user/update',1,'user,setting,access','','Users'),
	(35,'core','security/login',1,'login','',''),
	(36,'core','system/refresh_site',1,'','',''),
	(37,'core','system/phpinfo',1,'','',''),
	(38,'core','resource/tvs',0,'','',''),
	(39,'core','system/file',1,'file','',''),
	(40,'core','system/file/edit',1,'file','',''),
	(41,'core','security/access/policy/update',1,'user,policy','','Policies'),
	(42,'core','workspaces/package/view',1,'workspace,namespace','','Package+Management'),
	(43,'core','security/access/policy/template/update',1,'user,policy','','PolicyTemplates'),
	(44,'core','security/forms/profile/update',1,'formcustomization,user,access,policy','','Form+Customization+Profiles'),
	(45,'core','security/forms/set/update',1,'formcustomization,user,access,policy','','Form+Customization+Sets'),
	(46,'core','search',1,'','',''),
	(47,'core','resource/create',1,'resource','','Resource'),
	(48,'core','security/user',1,'user','','Users'),
	(49,'core','security/permission',1,'user,access,policy','','Security'),
	(50,'core','security/resourcegroup/index',1,'resource,user,access','','Resource+Groups'),
	(51,'core','security/forms',1,'formcustomization,user,access,policy','','Customizing+The+Manager'),
	(52,'core','system/import',1,'import','',''),
	(53,'core','system/import/html',1,'import','',''),
	(54,'core','element/propertyset/index',1,'element,category,propertyset','','Properties+and+Property+Sets'),
	(55,'core','resource/site_schedule',1,'resource','',''),
	(56,'core','system/logs/index',1,'manager_log','',''),
	(57,'core','system/event',1,'system_events','',''),
	(58,'core','system/info',1,'system_info','',''),
	(59,'core','help',1,'about','',''),
	(60,'core','workspaces',1,'workspace','','Package+Management'),
	(61,'core','system/settings',1,'setting','','Settings'),
	(62,'core','workspaces/lexicon',1,'package_builder,lexicon,namespace','','Internationalization'),
	(63,'core','system/contenttype',1,'content_type','','Content+Types'),
	(64,'core','context',1,'context','','Contexts'),
	(65,'core','system/action',1,'action,menu,namespace','','Actions+and+Menus'),
	(66,'core','workspaces/namespace',1,'workspace,package_builder,lexicon,namespace','','Namespaces'),
	(67,'core','security/profile',1,'user','',''),
	(68,'core','security/message',1,'messages','',''),
	(69,'janitor','index',1,'janitor:default,file','',''),
	(70,'core','system/dashboards/update',1,'dashboards,user','','Dashboards'),
	(71,'core','system/dashboards/create',1,'dashboards,user','','Dashboards'),
	(72,'core','system/dashboards/widget/update',1,'dashboards,user','','Dashboard+Widgets'),
	(73,'core','system/dashboards/widget/create',1,'dashboards,user','','Dashboard+Widgets'),
	(74,'core','source/create',1,'sources,namespace','','Media+Sources'),
	(75,'core','source/update',1,'sources,namespace','','Media+Sources'),
	(76,'core','system/file/create',1,'file','',''),
	(77,'core','system/dashboards',1,'about','','Dashboards'),
	(78,'core','source/index',1,'sources,namespace','','Media+Sources');

/*!40000 ALTER TABLE `modx_actions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_actions_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_actions_fields`;

CREATE TABLE `modx_actions_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(255) NOT NULL DEFAULT '',
  `form` varchar(255) NOT NULL DEFAULT '',
  `other` varchar(255) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_actions_fields` WRITE;
/*!40000 ALTER TABLE `modx_actions_fields` DISABLE KEYS */;

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`)
VALUES
	(310,47,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),
	(309,47,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),
	(308,47,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),
	(307,47,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),
	(306,47,'modx-page-settings-left','tab','','modx-panel-resource','',4),
	(305,47,'modx-page-settings','tab','','modx-panel-resource','',3),
	(304,47,'published','field','modx-resource-main-right','modx-panel-resource','',5),
	(302,47,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),
	(303,47,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),
	(301,47,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),
	(300,47,'alias','field','modx-resource-main-right','modx-panel-resource','',1),
	(299,47,'template','field','modx-resource-main-right','modx-panel-resource','',0),
	(298,47,'modx-resource-main-right','tab','','modx-panel-resource','',2),
	(297,47,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),
	(296,47,'description','field','modx-resource-main-left','modx-panel-resource','',3),
	(294,47,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
	(295,47,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),
	(293,47,'id','field','modx-resource-main-left','modx-panel-resource','',0),
	(291,47,'modx-resource-settings','tab','','modx-panel-resource','',0),
	(292,47,'modx-resource-main-left','tab','','modx-panel-resource','',1),
	(289,30,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),
	(290,30,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),
	(287,30,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),
	(288,30,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),
	(286,30,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),
	(285,30,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),
	(283,30,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),
	(284,30,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),
	(282,30,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),
	(281,30,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),
	(280,30,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),
	(279,30,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),
	(278,30,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),
	(277,30,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),
	(276,30,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),
	(274,30,'modx-page-settings-right','tab','','modx-panel-resource','',5),
	(275,30,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),
	(273,30,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),
	(272,30,'content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),
	(271,30,'content_type','field','modx-page-settings-left','modx-panel-resource','',2),
	(268,30,'modx-page-settings-left','tab','','modx-panel-resource','',4),
	(270,30,'class_key','field','modx-page-settings-left','modx-panel-resource','',1),
	(269,30,'parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),
	(266,30,'published','field','modx-resource-main-right','modx-panel-resource','',5),
	(267,30,'modx-page-settings','tab','','modx-panel-resource','',3),
	(265,30,'hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),
	(264,30,'link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),
	(262,30,'alias','field','modx-resource-main-right','modx-panel-resource','',1),
	(263,30,'menutitle','field','modx-resource-main-right','modx-panel-resource','',2),
	(260,30,'modx-resource-main-right','tab','','modx-panel-resource','',2),
	(261,30,'template','field','modx-resource-main-right','modx-panel-resource','',0),
	(259,30,'introtext','field','modx-resource-main-left','modx-panel-resource','',4),
	(258,30,'description','field','modx-resource-main-left','modx-panel-resource','',3),
	(257,30,'longtitle','field','modx-resource-main-left','modx-panel-resource','',2),
	(256,30,'pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),
	(255,30,'id','field','modx-resource-main-left','modx-panel-resource','',0),
	(254,30,'modx-resource-main-left','tab','','modx-panel-resource','',1),
	(253,30,'modx-resource-settings','tab','','modx-panel-resource','',0),
	(311,47,'menuindex','field','modx-page-settings-left','modx-panel-resource','',4),
	(312,47,'modx-page-settings-right','tab','','modx-panel-resource','',5),
	(313,47,'publishedon','field','modx-page-settings-right','modx-panel-resource','',0),
	(314,47,'pub_date','field','modx-page-settings-right','modx-panel-resource','',1),
	(315,47,'unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),
	(316,47,'modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),
	(317,47,'isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),
	(318,47,'searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),
	(319,47,'richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',2),
	(320,47,'uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',3),
	(321,47,'uri','field','modx-page-settings-right-box-left','modx-panel-resource','',4),
	(322,47,'modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),
	(323,47,'cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),
	(324,47,'syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),
	(325,47,'deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),
	(326,47,'modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),
	(327,47,'modx-resource-access-permissions','tab','','modx-panel-resource','',9),
	(328,47,'modx-resource-content','field','modx-resource-content','modx-panel-resource','',0);

/*!40000 ALTER TABLE `modx_actions_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_active_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_active_users`;

CREATE TABLE `modx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_categories`;

CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;

INSERT INTO `modx_categories` (`id`, `parent`, `category`)
VALUES
	(1,0,'FormIt'),
	(3,0,'Janitor'),
	(4,0,'GoogleSiteMap');

/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_categories_closure
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_categories_closure`;

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_categories_closure` WRITE;
/*!40000 ALTER TABLE `modx_categories_closure` DISABLE KEYS */;

INSERT INTO `modx_categories_closure` (`ancestor`, `descendant`, `depth`)
VALUES
	(1,1,0),
	(0,1,0),
	(0,3,0),
	(3,3,0),
	(4,4,0),
	(0,4,0);

/*!40000 ALTER TABLE `modx_categories_closure` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_class_map
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_class_map`;

CREATE TABLE `modx_class_map` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(255) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_class_map` WRITE;
/*!40000 ALTER TABLE `modx_class_map` DISABLE KEYS */;

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`)
VALUES
	(1,'modDocument','modResource','pagetitle','','core:resource'),
	(2,'modWebLink','modResource','pagetitle','','core:resource'),
	(3,'modSymLink','modResource','pagetitle','','core:resource'),
	(4,'modStaticResource','modResource','pagetitle','','core:resource'),
	(5,'modTemplate','modElement','templatename','','core:resource'),
	(6,'modTemplateVar','modElement','name','','core:resource'),
	(7,'modChunk','modElement','name','','core:resource'),
	(8,'modSnippet','modElement','name','','core:resource'),
	(9,'modPlugin','modElement','name','','core:resource');

/*!40000 ALTER TABLE `modx_class_map` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_content_type`;

CREATE TABLE `modx_content_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_content_type` WRITE;
/*!40000 ALTER TABLE `modx_content_type` DISABLE KEYS */;

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`)
VALUES
	(1,'HTML','HTML content','text/html','.html',NULL,0),
	(2,'XML','XML content','text/xml','.xml',NULL,0),
	(3,'text','plain text content','text/plain','.txt',NULL,0),
	(4,'CSS','CSS content','text/css','.css',NULL,0),
	(5,'javascript','javascript content','text/javascript','.js',NULL,0),
	(6,'RSS','For RSS feeds','application/rss+xml','.rss',NULL,0),
	(7,'JSON','JSON','application/json','.js',NULL,0);

/*!40000 ALTER TABLE `modx_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_context
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_context`;

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_context` WRITE;
/*!40000 ALTER TABLE `modx_context` DISABLE KEYS */;

INSERT INTO `modx_context` (`key`, `description`, `rank`)
VALUES
	('web','The default front-end context for your web site.',0),
	('mgr','The default manager or administration context for content management activity.',0);

/*!40000 ALTER TABLE `modx_context` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_context_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_context_resource`;

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_context_setting
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_context_setting`;

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(255) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_context_setting` WRITE;
/*!40000 ALTER TABLE `modx_context_setting` DISABLE KEYS */;

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`)
VALUES
	('mgr','allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('mgr','modRequest.class','modManagerRequest','textfield','core','system','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `modx_context_setting` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_dashboard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_dashboard`;

CREATE TABLE `modx_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `modx_dashboard` WRITE;
/*!40000 ALTER TABLE `modx_dashboard` DISABLE KEYS */;

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`)
VALUES
	(1,'Default','',0);

/*!40000 ALTER TABLE `modx_dashboard` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_dashboard_widget
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_dashboard_widget`;

CREATE TABLE `modx_dashboard_widget` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(255) NOT NULL DEFAULT '',
  `lexicon` varchar(255) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(255) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `modx_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget` DISABLE KEYS */;

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`)
VALUES
	(1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php','core','core:dashboards','half'),
	(2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php','core','core:dashboards','half'),
	(3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php','core','core:dashboards','half'),
	(4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php','core','core:dashboards','half'),
	(5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php','core','core:dashboards','full');

/*!40000 ALTER TABLE `modx_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_dashboard_widget_placement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `widget` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `modx_dashboard_widget_placement` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` DISABLE KEYS */;

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`)
VALUES
	(1,5,0),
	(1,1,1),
	(1,2,2),
	(1,3,3),
	(1,4,4);

/*!40000 ALTER TABLE `modx_dashboard_widget_placement` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_document_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_document_groups`;

CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_documentgroup_names
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_documentgroup_names`;

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_element_property_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_element_property_sets`;

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_fc_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_fc_profiles`;

CREATE TABLE `modx_fc_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_fc_profiles_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_fc_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_fc_sets`;

CREATE TABLE `modx_fc_sets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(255) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_lexicon_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_lexicon_entries`;

CREATE TABLE `modx_lexicon_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(255) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_manager_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_manager_log`;

CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`)
VALUES
	(1,1,'2011-07-06 14:03:06','template_create','modTemplate','2'),
	(2,1,'2011-07-06 14:04:05','template_update','modTemplate','2'),
	(3,1,'2011-07-06 14:05:19','save_resource','modDocument','2'),
	(4,1,'2011-07-06 14:05:53','save_resource','modResource','2'),
	(5,1,'2011-07-06 14:07:09','save_resource','modResource','1'),
	(6,1,'2011-07-06 14:08:17','save_resource','modResource','1'),
	(7,1,'2011-07-06 14:13:28','chunk_create','modChunk','1'),
	(8,1,'2011-07-06 14:13:47','chunk_update','modChunk','1'),
	(9,1,'2011-07-06 14:14:22','chunk_update','modChunk','1'),
	(10,1,'2011-07-06 14:16:34','chunk_update','modChunk','1'),
	(11,1,'2011-07-06 14:18:50','chunk_update','modChunk','1'),
	(12,1,'2011-07-06 14:21:40','chunk_update','modChunk','1'),
	(13,1,'2011-07-06 14:23:22','save_resource','modResource','2'),
	(14,1,'2011-07-06 14:24:42','save_resource','modResource','2'),
	(15,1,'2011-07-06 14:25:10','chunk_update','modChunk','1'),
	(16,1,'2011-07-06 14:25:34','duplicate_resource','modResource','3'),
	(17,1,'2011-07-06 14:26:18','save_resource','modResource','3'),
	(18,1,'2011-07-06 14:28:05','chunk_create','modChunk','2'),
	(19,1,'2011-07-06 14:30:27','template_duplicate','modTemplate','3'),
	(20,1,'2011-07-06 14:32:11','template_update','modTemplate','3'),
	(21,1,'2011-07-06 14:32:39','tv_create','modTemplateVar','1'),
	(22,1,'2011-07-06 14:32:54','save_resource','modResource','1'),
	(23,1,'2011-07-06 14:33:54','save_resource','modResource','1'),
	(24,1,'2011-07-06 14:35:06','tv_create','modTemplateVar','2'),
	(25,1,'2011-07-06 14:35:35','template_duplicate','modTemplate','4'),
	(26,1,'2011-07-06 14:35:55','save_resource','modResource','1'),
	(27,1,'2011-07-06 14:36:14','save_resource','modDocument','4'),
	(28,1,'2011-07-06 14:37:52','save_resource','modResource','4'),
	(29,1,'2011-07-06 14:38:02','save_resource','modResource','4'),
	(30,1,'2011-07-06 14:38:35','tv_update','modTemplateVar','2'),
	(31,1,'2011-07-06 14:39:25','tv_update','modTemplateVar','1'),
	(32,1,'2011-07-06 14:40:03','tv_update','modTemplateVar','2'),
	(33,1,'2011-07-06 14:40:39','save_resource','modResource','4'),
	(34,1,'2011-07-06 14:41:10','chunk_create','modChunk','3'),
	(35,1,'2011-07-06 14:47:16','chunk_create','modChunk','4'),
	(36,1,'2011-07-06 14:48:59','chunk_update','modChunk','3'),
	(37,1,'2011-07-06 14:49:36','template_update','modTemplate','3'),
	(38,1,'2011-07-06 14:51:54','template_update','modTemplate','4'),
	(39,1,'2011-07-06 14:53:18','template_update','modTemplate','4'),
	(40,1,'2011-07-06 14:55:52','chunk_update','modChunk','3'),
	(41,1,'2011-07-06 14:56:07','chunk_duplicate','modChunk','5'),
	(42,1,'2011-07-06 14:56:26','chunk_update','modChunk','5'),
	(43,1,'2011-07-06 14:56:50','save_resource','modResource','4'),
	(44,1,'2011-07-06 14:58:16','chunk_update','modChunk','5'),
	(45,1,'2011-07-06 14:58:27','chunk_update','modChunk','4'),
	(46,1,'2011-07-06 15:00:04','tv_create','modTemplateVar','3'),
	(47,1,'2011-07-06 15:00:31','save_resource','modResource','4'),
	(48,1,'2011-07-06 15:02:50','template_update','modTemplate','4'),
	(49,1,'2011-07-06 15:04:58','save_resource','modResource','4'),
	(50,1,'2011-07-06 15:05:23','save_resource','modResource','4'),
	(51,1,'2011-07-06 15:06:25','save_resource','modResource','4'),
	(52,1,'2011-07-07 02:12:30','template_update','modTemplate','2'),
	(53,1,'2011-07-07 02:30:06','save_resource','modResource','3'),
	(54,1,'2011-07-07 02:30:38','save_resource','modResource','3'),
	(55,1,'2011-07-07 02:35:52','save_resource','modResource','3'),
	(56,1,'2011-07-07 02:42:54','save_resource','modResource','3'),
	(57,1,'2011-07-07 02:46:48','save_resource','modResource','3'),
	(58,1,'2011-07-07 02:47:24','save_resource','modResource','3'),
	(59,1,'2011-07-07 02:47:55','save_resource','modResource','3'),
	(60,1,'2011-07-07 02:50:47','save_resource','modResource','3'),
	(61,1,'2011-07-07 02:53:22','save_resource','modResource','3'),
	(62,1,'2011-07-07 02:56:50','save_resource','modResource','3'),
	(63,1,'2011-07-07 02:59:51','save_resource','modResource','3'),
	(64,1,'2011-07-07 03:00:18','save_resource','modResource','3'),
	(65,1,'2011-07-07 03:00:42','save_resource','modResource','3'),
	(66,1,'2011-07-07 03:11:25','save_resource','modResource','3'),
	(67,1,'2011-07-07 03:12:30','save_resource','modResource','3'),
	(68,1,'2011-07-07 03:12:50','package_uninstall','transport.modTransportPackage','0'),
	(69,1,'2011-07-07 03:15:33','chunk_update','modChunk','1'),
	(70,1,'2011-07-07 03:16:33','chunk_update','modChunk','2'),
	(71,1,'2011-07-07 03:19:07','save_resource','modResource','3'),
	(72,1,'2011-07-07 03:19:26','chunk_update','modChunk','1'),
	(73,1,'2011-07-07 03:23:39','save_resource','modResource','3'),
	(74,1,'2011-07-07 03:37:45','save_resource','modResource','2'),
	(75,1,'2011-07-07 04:36:12','chunk_update','modChunk','1'),
	(76,1,'2011-07-07 04:36:17','save_resource','modResource','3'),
	(77,1,'2011-07-07 04:36:51','save_resource','modResource','2'),
	(78,1,'2011-07-07 04:37:54','save_resource','modResource','1'),
	(79,1,'2011-07-07 04:38:47','save_resource','modResource','1'),
	(80,1,'2011-07-07 04:42:49','chunk_update','modChunk','1'),
	(81,1,'2011-07-07 04:43:34','chunk_update','modChunk','1'),
	(82,1,'2011-07-07 04:44:13','chunk_update','modChunk','1'),
	(83,1,'2011-07-07 04:44:38','chunk_update','modChunk','1'),
	(84,1,'2011-07-07 04:48:12','chunk_update','modChunk','3'),
	(85,1,'2011-07-07 05:03:07','save_resource','modResource','4'),
	(86,1,'2011-07-07 05:04:49','template_update','modTemplate','4'),
	(87,1,'2011-07-07 05:06:17','template_update','modTemplate','4'),
	(88,1,'2011-07-07 05:09:09','duplicate_resource','modResource','5'),
	(89,1,'2011-07-07 05:10:44','tv_update','modTemplateVar','2'),
	(90,1,'2011-07-07 05:12:04','save_resource','modResource','5'),
	(91,1,'2011-07-07 05:12:24','save_resource','modResource','5'),
	(92,1,'2011-07-07 05:13:06','chunk_update','modChunk','4'),
	(93,1,'2011-07-07 05:13:17','chunk_update','modChunk','5'),
	(94,1,'2011-07-07 05:21:13','duplicate_resource','modResource','6'),
	(95,1,'2011-07-07 05:22:29','save_resource','modResource','6'),
	(96,1,'2011-07-07 05:23:44','duplicate_resource','modResource','7'),
	(97,1,'2011-07-07 05:25:33','save_resource','modResource','7'),
	(98,1,'2011-07-07 05:36:48','duplicate_resource','modResource','8'),
	(99,1,'2011-07-07 05:38:05','save_resource','modResource','8'),
	(100,1,'2011-07-07 05:43:41','duplicate_resource','modResource','9'),
	(101,1,'2011-07-07 05:44:49','save_resource','modResource','9'),
	(102,1,'2011-07-07 05:45:19','save_resource','modResource','9'),
	(103,1,'2011-07-07 05:48:23','duplicate_resource','modResource','10'),
	(104,1,'2011-07-07 05:54:44','save_resource','modResource','10'),
	(105,1,'2011-07-07 05:56:52','duplicate_resource','modResource','11'),
	(106,1,'2011-07-07 06:00:46','save_resource','modResource','11'),
	(107,1,'2011-07-07 06:04:56','chunk_update','modChunk','3'),
	(108,1,'2011-07-07 06:05:30','chunk_update','modChunk','3'),
	(109,1,'2011-07-07 06:05:58','chunk_update','modChunk','3'),
	(110,1,'2011-07-07 06:06:20','chunk_update','modChunk','3'),
	(111,1,'2011-07-07 06:10:12','chunk_update','modChunk','3'),
	(112,1,'2011-07-07 06:10:39','chunk_update','modChunk','3'),
	(113,1,'2011-07-07 06:11:34','chunk_update','modChunk','3'),
	(114,1,'2011-07-07 06:12:10','chunk_update','modChunk','3'),
	(115,1,'2011-07-07 06:12:20','chunk_update','modChunk','3'),
	(116,1,'2011-07-07 06:14:32','save_resource','modResource','11'),
	(117,1,'2011-07-07 06:19:35','duplicate_resource','modResource','12'),
	(118,1,'2011-07-07 06:29:16','save_resource','modResource','12'),
	(119,1,'2011-07-07 06:49:57','duplicate_resource','modResource','13'),
	(120,1,'2011-07-07 06:51:15','save_resource','modResource','13'),
	(121,1,'2011-07-07 06:51:31','save_resource','modResource','13'),
	(122,1,'2011-07-07 06:57:08','duplicate_resource','modResource','14'),
	(123,1,'2011-07-07 07:03:37','save_resource','modResource','14'),
	(124,1,'2011-07-07 07:09:14','save_resource','modResource','14'),
	(125,1,'2011-07-07 07:09:56','save_resource','modResource','14'),
	(126,1,'2011-07-07 07:10:47','save_resource','modResource','14'),
	(127,1,'2011-07-07 07:52:22','duplicate_resource','modResource','15'),
	(128,1,'2011-07-07 07:58:00','save_resource','modResource','15'),
	(129,1,'2011-07-07 07:59:23','save_resource','modResource','15'),
	(130,1,'2011-07-07 10:06:33','save_resource','modResource','14'),
	(131,1,'2011-07-07 10:07:33','save_resource','modResource','15'),
	(132,1,'2011-07-07 12:12:49','save_resource','modResource','5'),
	(133,1,'2011-07-07 12:13:15','save_resource','modResource','6'),
	(134,1,'2011-07-07 12:13:29','save_resource','modResource','6'),
	(135,1,'2011-07-07 12:14:00','save_resource','modResource','7'),
	(136,1,'2011-07-07 12:26:28','chunk_update','modChunk','1'),
	(137,1,'2011-07-07 14:39:18','save_resource','modResource','2'),
	(138,1,'2011-07-07 14:40:34','save_resource','modResource','2'),
	(139,1,'2011-07-07 14:40:55','save_resource','modResource','2'),
	(140,1,'2011-07-07 14:42:09','save_resource','modResource','2'),
	(141,1,'2011-07-08 01:22:22','save_resource','modResource','2'),
	(142,1,'2011-07-08 01:24:01','duplicate_resource','modResource','16'),
	(143,1,'2011-07-08 01:24:13','save_resource','modResource','16'),
	(144,1,'2011-07-08 01:35:23','save_resource','modResource','16'),
	(145,1,'2011-07-08 01:38:32','save_resource','modResource','16'),
	(146,1,'2011-07-08 01:40:09','save_resource','modResource','16'),
	(147,1,'2011-07-08 01:42:08','save_resource','modResource','16'),
	(148,1,'2011-07-08 01:44:52','save_resource','modResource','16'),
	(149,1,'2011-07-08 01:50:42','save_resource','modResource','16'),
	(150,1,'2011-07-08 01:51:18','save_resource','modResource','16'),
	(151,1,'2011-07-08 01:55:52','save_resource','modResource','16'),
	(152,1,'2011-07-08 01:59:50','save_resource','modResource','16'),
	(153,1,'2011-07-08 02:00:30','save_resource','modResource','16'),
	(154,1,'2011-07-08 02:00:59','save_resource','modResource','16'),
	(155,1,'2011-07-08 02:03:03','save_resource','modResource','16'),
	(156,1,'2011-07-08 02:07:19','save_resource','modResource','16'),
	(157,1,'2011-07-08 02:09:21','save_resource','modResource','16'),
	(158,1,'2011-07-08 02:11:22','save_resource','modResource','16'),
	(159,1,'2011-07-08 02:13:32','save_resource','modResource','16'),
	(160,1,'2011-07-08 02:14:16','save_resource','modResource','16'),
	(161,1,'2011-07-08 02:18:57','save_resource','modResource','16'),
	(162,1,'2011-07-08 02:19:24','save_resource','modResource','16'),
	(163,1,'2011-07-08 02:19:48','save_resource','modResource','16'),
	(164,1,'2011-07-08 02:20:37','save_resource','modResource','16'),
	(165,1,'2011-07-08 02:25:02','save_resource','modResource','16'),
	(166,1,'2011-07-08 02:29:34','chunk_create','modChunk','6'),
	(167,1,'2011-07-08 02:29:56','save_resource','modResource','16'),
	(168,1,'2011-07-08 02:31:49','save_resource','modResource','16'),
	(169,1,'2011-07-08 02:36:32','chunk_update','modChunk','6'),
	(170,1,'2011-07-08 02:38:32','chunk_update','modChunk','6'),
	(171,1,'2011-07-08 02:38:56','chunk_update','modChunk','6'),
	(172,1,'2011-07-08 02:42:19','chunk_update','modChunk','6'),
	(173,1,'2011-07-08 02:45:46','chunk_update','modChunk','6'),
	(174,1,'2011-07-08 03:14:47','save_resource','modResource','16'),
	(175,1,'2011-07-08 03:15:02','save_resource','modResource','16'),
	(176,1,'2011-07-08 03:16:12','save_resource','modResource','16'),
	(177,1,'2011-07-08 03:17:11','save_resource','modResource','16'),
	(178,1,'2011-07-08 03:18:21','save_resource','modResource','16'),
	(179,1,'2011-07-08 03:18:47','save_resource','modResource','16'),
	(180,1,'2011-07-08 03:24:27','chunk_create','modChunk','7'),
	(181,1,'2011-07-08 03:24:42','chunk_update','modChunk','6'),
	(182,1,'2011-07-08 03:30:48','chunk_update','modChunk','6'),
	(183,1,'2011-07-08 03:47:03','chunk_update','modChunk','6'),
	(184,1,'2011-07-08 03:49:11','chunk_update','modChunk','6'),
	(185,1,'2011-07-08 03:52:49','chunk_update','modChunk','6'),
	(186,1,'2011-07-08 03:53:29','chunk_update','modChunk','6'),
	(187,1,'2011-07-08 03:54:06','chunk_update','modChunk','6'),
	(188,1,'2011-07-08 03:55:18','chunk_update','modChunk','6'),
	(189,1,'2011-07-08 03:57:21','chunk_update','modChunk','6'),
	(190,1,'2011-07-08 03:57:51','chunk_update','modChunk','6'),
	(191,1,'2011-07-08 03:58:07','chunk_update','modChunk','6'),
	(192,1,'2011-07-08 03:58:12','chunk_update','modChunk','6'),
	(193,1,'2011-07-08 03:59:20','chunk_update','modChunk','6'),
	(194,1,'2011-07-08 04:03:25','chunk_update','modChunk','6'),
	(195,1,'2011-07-08 04:03:50','chunk_update','modChunk','6'),
	(196,1,'2011-07-08 04:25:32','chunk_update','modChunk','6'),
	(197,1,'2011-07-08 04:25:57','chunk_update','modChunk','6'),
	(198,1,'2011-07-08 04:26:45','chunk_update','modChunk','6'),
	(199,1,'2011-07-08 04:41:40','chunk_update','modChunk','6'),
	(200,1,'2011-07-08 04:42:15','save_resource','modResource','16'),
	(201,1,'2011-07-08 04:42:38','save_resource','modResource','2'),
	(202,1,'2011-07-08 04:42:51','save_resource','modResource','16'),
	(203,1,'2011-07-08 04:43:07','save_resource','modResource','16'),
	(204,1,'2011-07-08 04:59:30','chunk_update','modChunk','1'),
	(205,1,'2011-07-08 11:49:40','save_resource','modResource','16'),
	(206,1,'2011-07-08 11:49:48','save_resource','modResource','16'),
	(207,1,'2011-07-08 11:51:22','save_resource','modResource','16'),
	(208,1,'2011-07-08 12:10:41','duplicate_resource','modResource','17'),
	(209,1,'2011-07-08 12:10:58','save_resource','modResource','17'),
	(210,1,'2011-07-08 12:24:35','snippet_create','modSnippet','14'),
	(211,1,'2011-07-08 12:24:48','save_resource','modResource','17'),
	(212,1,'2011-07-08 12:25:09','snippet_update','modSnippet','14'),
	(213,1,'2011-07-08 12:44:06','delete_resource','modDocument','2'),
	(214,1,'2011-07-08 12:46:42','snippet_update','modSnippet','14'),
	(215,1,'2011-07-08 12:47:29','save_resource','modResource','17'),
	(216,1,'2011-07-08 12:47:47','snippet_update','modSnippet','14'),
	(217,1,'2011-07-08 12:48:01','save_resource','modResource','17'),
	(218,1,'2011-07-08 12:48:32','snippet_update','modSnippet','14'),
	(219,1,'2011-07-08 12:52:14','save_resource','modResource','17'),
	(220,1,'2011-07-08 12:55:37','save_resource','modResource','17'),
	(221,1,'2011-07-08 12:56:08','save_resource','modResource','17'),
	(222,1,'2011-07-08 12:56:12','save_resource','modResource','17'),
	(223,1,'2011-07-08 12:57:41','save_resource','modResource','17'),
	(224,1,'2011-07-08 12:58:37','save_resource','modResource','17'),
	(225,1,'2011-07-08 13:05:56','snippet_delete','modSnippet','14'),
	(226,1,'2011-07-08 13:06:17','package_uninstall','transport.modTransportPackage','0'),
	(227,1,'2011-07-08 13:06:30','package_uninstall','transport.modTransportPackage','0'),
	(228,1,'2011-07-08 13:10:12','save_resource','modResource','17'),
	(229,1,'2011-07-08 13:10:43','chunk_update','modChunk','2'),
	(230,1,'2011-07-08 13:12:55','chunk_update','modChunk','2'),
	(231,1,'2011-07-08 13:13:28','chunk_update','modChunk','2'),
	(232,1,'2011-07-09 01:51:21','save_resource','modResource','16'),
	(233,1,'2011-07-09 01:58:34','save_resource','modResource','16'),
	(234,1,'2011-07-09 07:42:11','chunk_update','modChunk','1'),
	(235,1,'2011-07-09 07:46:54','chunk_update','modChunk','2'),
	(236,1,'2011-07-18 10:10:02','save_resource','modResource','3'),
	(237,1,'2011-07-24 12:07:22','save_resource','modResource','3'),
	(238,1,'2011-07-24 12:08:05','save_resource','modResource','3'),
	(239,1,'2011-07-26 14:08:48','chunk_update','modChunk','1'),
	(240,1,'2011-08-23 04:52:08','delete_resource','modDocument','17'),
	(241,1,'2011-08-23 07:15:34','save_resource','modDocument','18'),
	(242,1,'2011-08-23 07:15:41','save_resource','modResource','18'),
	(243,1,'2011-08-23 07:21:58','save_resource','modResource','18'),
	(244,1,'2011-08-23 07:26:24','chunk_update','modChunk','1'),
	(245,1,'2011-08-25 04:09:23','chunk_update','modChunk','6'),
	(246,1,'2011-08-31 12:02:49','save_resource','modResource','1'),
	(247,1,'2011-08-31 12:04:04','save_resource','modResource','1'),
	(248,1,'2011-08-31 12:04:17','save_resource','modResource','1'),
	(249,1,'2011-09-02 11:39:58','save_resource','modResource','1'),
	(250,1,'2011-09-05 06:16:16','save_resource','modResource','3'),
	(251,1,'2011-09-05 06:16:54','save_resource','modResource','3'),
	(252,1,'2011-09-05 06:17:14','save_resource','modResource','3'),
	(253,1,'2011-09-05 06:17:41','save_resource','modResource','3'),
	(254,1,'2011-11-14 08:11:57','save_resource','modResource','3'),
	(255,1,'2011-11-14 08:15:01','save_resource','modResource','16'),
	(256,1,'2011-11-14 08:18:09','save_resource','modResource','3'),
	(257,1,'2011-11-14 08:18:37','save_resource','modResource','3'),
	(258,1,'2011-11-14 08:19:13','save_resource','modResource','3'),
	(259,1,'2011-11-14 08:19:28','save_resource','modResource','3'),
	(260,1,'2011-11-14 08:21:35','save_resource','modResource','3'),
	(261,1,'2011-11-14 08:21:42','save_resource','modResource','3'),
	(262,1,'2011-11-14 08:21:51','save_resource','modResource','3'),
	(263,1,'2011-11-14 08:22:05','save_resource','modResource','3'),
	(264,1,'2011-11-14 08:23:20','save_resource','modResource','3'),
	(265,1,'2011-11-14 08:24:05','save_resource','modResource','3'),
	(266,1,'2011-11-14 08:24:29','save_resource','modResource','3'),
	(267,1,'2011-11-14 08:24:44','save_resource','modResource','3'),
	(268,1,'2011-11-14 08:26:51','save_resource','modResource','3'),
	(269,1,'2011-12-13 02:45:09','directory_create','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc'),
	(270,1,'2011-12-13 02:45:48','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(271,1,'2011-12-13 02:45:50','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(272,1,'2011-12-13 02:45:52','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(273,1,'2011-12-13 02:46:45','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(274,1,'2011-12-13 02:46:47','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(275,1,'2011-12-13 02:46:58','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(276,1,'2011-12-13 02:47:25','duplicate_resource','modResource','19'),
	(277,1,'2011-12-13 02:49:00','save_resource','modResource','19'),
	(278,1,'2011-12-13 02:53:37','save_resource','modResource','19'),
	(279,1,'2011-12-13 02:55:13','save_resource','modResource','19'),
	(280,1,'2011-12-13 03:02:15','file_upload','','/nfs/c09/h01/mnt/128501/domains/maakee.me/html/assets/_img/ofc/'),
	(281,1,'2011-12-13 03:02:23','save_resource','modResource','19'),
	(282,1,'2012-01-21 03:14:20','save_resource','modResource','3'),
	(283,1,'2012-01-21 03:16:01','save_resource','modResource','16'),
	(284,1,'2012-10-03 03:30:50','save_resource','modResource','16'),
	(285,1,'2012-11-01 13:11:57','save_resource','modResource','7'),
	(286,1,'2012-11-01 13:12:25','save_resource','modResource','16'),
	(287,1,'2012-11-01 13:18:08','package_uninstall','transport.modTransportPackage','unknown'),
	(288,1,'2012-11-01 13:28:45','chunk_update','modChunk','6'),
	(289,1,'2012-11-01 13:35:21','chunk_update','modChunk','6'),
	(290,1,'2012-11-01 13:43:53','chunk_update','modChunk','6'),
	(291,1,'2012-11-01 13:48:25','chunk_update','modChunk','6'),
	(292,1,'2012-11-01 13:48:59','chunk_update','modChunk','6'),
	(293,1,'2012-11-01 13:51:06','resource_update','modResource','16');

/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_media_sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_media_sources`;

CREATE TABLE `modx_media_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `modx_media_sources` WRITE;
/*!40000 ALTER TABLE `modx_media_sources` DISABLE KEYS */;

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`)
VALUES
	(1,'Filesystem','','sources.modFileMediaSource','a:0:{}',1);

/*!40000 ALTER TABLE `modx_media_sources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_media_sources_contexts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_media_sources_contexts`;

CREATE TABLE `modx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table modx_media_sources_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_media_sources_elements`;

CREATE TABLE `modx_media_sources_elements` (
  `source` int(11) unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table modx_member_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_member_groups`;

CREATE TABLE `modx_member_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int(10) unsigned NOT NULL DEFAULT '0',
  `member` int(10) unsigned NOT NULL DEFAULT '0',
  `role` int(10) unsigned NOT NULL DEFAULT '1',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`)
VALUES
	(1,1,1,2,0);

/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_membergroup_names
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_membergroup_names`;

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `dashboard` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`)
VALUES
	(1,'Administrator',NULL,0,0,1);

/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_menus`;

CREATE TABLE `modx_menus` (
  `text` varchar(255) NOT NULL DEFAULT '',
  `parent` varchar(255) NOT NULL DEFAULT '',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `menuindex` int(11) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_menus` WRITE;
/*!40000 ALTER TABLE `modx_menus` DISABLE KEYS */;

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`)
VALUES
	('site','',0,'','images/misc/logo_tbar.gif',1,'','','menu_site'),
	('preview','site',0,'preview_desc','images/icons/show.gif',0,'','MODx.preview(); return false;',''),
	('refresh_site','site',0,'refresh_site_desc','images/icons/refresh.png',1,'','MODx.clearCache(); return false;','empty_cache'),
	('remove_locks','site',0,'remove_locks_desc','images/ext/default/grid/hmenu-unlock.png',2,'','\nMODx.msg.confirm({\n    title: _(\'remove_locks\')\n    ,text: _(\'confirm_remove_locks\')\n    ,url: MODx.config.connectors_url+\'system/remove_locks.php\'\n    ,params: {\n        action: \'remove\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { Ext.getCmp(\"modx-resource-tree\").refresh(); },scope:this}\n    }\n});','remove_locks'),
	('search','site',46,'search_desc','images/icons/context_view.gif',3,'','','search'),
	('new_document','site',47,'new_document_desc','images/icons/folder_page_add.png',4,'','','new_document'),
	('new_weblink','site',47,'new_weblink_desc','images/icons/link_add.png',5,'&class_key=modWebLink','','new_weblink'),
	('new_symlink','site',47,'new_symlink_desc','images/icons/link_add.png',6,'&class_key=modSymLink','','new_symlink'),
	('new_static_resource','site',47,'new_static_resource_desc','images/icons/link_add.png',7,'&class_key=modStaticResource','','new_static_resource'),
	('logout','site',0,'logout_desc','images/misc/logo_tbar.gif',8,'','MODx.logout(); return false;','logout'),
	('components','',0,'','images/icons/plugin.gif',2,'','','components'),
	('security','',0,'','images/icons/lock.gif',3,'','','menu_security'),
	('user_management','security',48,'user_management_desc','images/icons/user.gif',0,'','','view_user'),
	('user_group_management','security',49,'user_group_management_desc','images/icons/mnu_users.gif',1,'','','access_permissions'),
	('resource_groups','security',50,'resource_groups_desc','',2,'','','access_permissions'),
	('form_customization','security',51,'form_customization_desc','images/misc/logo_tbar.gif',3,'','','customize_forms'),
	('flush_access','security',0,'flush_access_desc','images/icons/unzip.gif',4,'','MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connectors_url+\'security/access/index.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','access_permissions'),
	('flush_sessions','security',0,'flush_sessions_desc','images/icons/unzip.gif',5,'','MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connectors_url+\'security/flush.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','flush_sessions'),
	('tools','',0,'','images/icons/menu_settings.gif',4,'','','menu_tools'),
	('import_resources','tools',52,'import_resources_desc','images/icons/application_side_contract.png',0,'','','import_static'),
	('import_site','tools',53,'import_site_desc','images/icons/application_side_contract.png',1,'','','import_static'),
	('propertysets','tools',54,'propertysets_desc','images/misc/logo_tbar.gif',2,'','','property_sets'),
	('reports','',0,'','images/icons/menu_settings16.gif',5,'','','menu_reports'),
	('site_schedule','reports',55,'site_schedule_desc','images/icons/cal.gif',0,'','','view_document'),
	('view_logging','reports',56,'view_logging_desc','',1,'','','logs'),
	('eventlog_viewer','reports',57,'eventlog_viewer_desc','images/icons/comment.gif',2,'','','view_eventlog'),
	('view_sysinfo','reports',58,'view_sysinfo_desc','images/icons/logging.gif',3,'','','view_sysinfo'),
	('about','reports',59,'about_desc','images/icons/information.png',4,'','','about'),
	('system','',0,'','images/misc/logo_tbar.gif',6,'','','menu_system'),
	('manage_workspaces','system',60,'manage_workspaces_desc','images/icons/sysinfo.gif',0,'','','packages'),
	('system_settings','system',61,'system_settings_desc','images/icons/sysinfo.gif',1,'','','settings'),
	('lexicon_management','system',62,'lexicon_management_desc','images/icons/logging.gif',2,'','','lexicons'),
	('content_types','system',63,'content_types_desc','images/icons/logging.gif',3,'','','content_types'),
	('contexts','system',64,'contexts_desc','images/icons/sysinfo.gif',4,'','','view_context'),
	('edit_menu','system',65,'edit_menu_desc','images/icons/sysinfo.gif',5,'','','menus,actions'),
	('namespaces','system',66,'namespaces_desc','',6,'','','namespaces'),
	('user','',0,'','images/icons/user_go.png',7,'','','menu_user'),
	('profile','user',67,'profile_desc','',0,'','','change_profile'),
	('messages','user',68,'messages_desc','images/icons/messages.gif',1,'','','messages'),
	('support','',0,'support_desc','images/icons/sysinfo.gif',8,'','','menu_support'),
	('forums','support',0,'forums_desc','images/icons/sysinfo.gif',0,'','window.open(\"http://modx.com/forums\");',''),
	('wiki','support',0,'wiki_desc','images/icons/sysinfo.gif',1,'','window.open(\"http://rtfm.modx.com/\");',''),
	('jira','support',0,'jira_desc','images/icons/sysinfo.gif',2,'','window.open(\"http://bugs.modx.com/projects/revo/issues\");',''),
	('api_docs','support',0,'api_docs_desc','images/icons/sysinfo.gif',3,'','window.open(\"http://api.modx.com/revolution/2.2/\");',''),
	('janitor','components',69,'janitor.desc','images/icons/plugin.gif',0,'','',''),
	('dashboard','',0,'','images/misc/logo_tbar.gif',0,'','MODx.loadPage(\"\"); return false;','home'),
	('dashboards','dashboard',77,'dashboards_desc','images/icons/information.png',0,'','','dashboards'),
	('sources','tools',78,'sources_desc','images/misc/logo_tbar.gif',2,'','','sources');

/*!40000 ALTER TABLE `modx_menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_namespaces
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_namespaces`;

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_namespaces` WRITE;
/*!40000 ALTER TABLE `modx_namespaces` DISABLE KEYS */;

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`)
VALUES
	('core','{core_path}','{assets_path}'),
	('wayfinder','{core_path}components/wayfinder/',''),
	('googlesitemap','{core_path}components/googlesitemap/',''),
	('formit','{core_path}components/formit/',NULL),
	('janitor','{core_path}components/janitor/',NULL);

/*!40000 ALTER TABLE `modx_namespaces` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_property_set
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_property_set`;

CREATE TABLE `modx_property_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_register_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_register_messages`;

CREATE TABLE `modx_register_messages` (
  `topic` int(10) unsigned NOT NULL,
  `id` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_register_messages` WRITE;
/*!40000 ALTER TABLE `modx_register_messages` DISABLE KEYS */;

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`)
VALUES
	(2,'9e7d143fb17736f048f9bec5830bd99c','2011-07-08 04:15:21','2011-07-08 04:15:21','2011-07-08 13:15:21',0,1310210121,'if (time() > 1310210121) return null;\nreturn \'54e789f80ce4dddeb1986d59c1af4cdc\';\n',0),
	(1,'1679091c5a880faf6fb5e6087eb1b2dc','2013-04-16 17:30:33','2013-04-16 17:30:33',NULL,0,1366122993,'if (time() > 1366122993) return null;\nreturn 1;\n',0);

/*!40000 ALTER TABLE `modx_register_messages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_register_queues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_register_queues`;

CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_register_queues` WRITE;
/*!40000 ALTER TABLE `modx_register_queues` DISABLE KEYS */;

INSERT INTO `modx_register_queues` (`id`, `name`, `options`)
VALUES
	(1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}'),
	(2,'user','a:0:{}');

/*!40000 ALTER TABLE `modx_register_queues` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_register_topics
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_register_topics`;

CREATE TABLE `modx_register_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_register_topics` WRITE;
/*!40000 ALTER TABLE `modx_register_topics` DISABLE KEYS */;

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`)
VALUES
	(1,1,'/resource/','2011-07-06 14:05:19',NULL,NULL),
	(2,2,'/pwd/reset/','2011-07-08 04:14:00',NULL,NULL);

/*!40000 ALTER TABLE `modx_register_topics` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_session`;

CREATE TABLE `modx_session` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `access` int(20) unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_session` WRITE;
/*!40000 ALTER TABLE `modx_session` DISABLE KEYS */;

INSERT INTO `modx_session` (`id`, `access`, `data`)
VALUES
	('u1jst9skgvi6m7jtf0ec943orm5lfsje',1412517666,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('s7q27poao72tupok333bdaavo2v52jmp',1412515260,'MkwZzPotomJf7kMZg31TBt0NCYbJ67MQh0v43Gfz7pvn7VPQXLaCw4jsSTf2Tlcg'),
	('ih5ev1u0ggajddcfgo04d5bk5grnhuqo',1412515257,'DWDVq6_Hrw0htE8BBtW2QMNcZPoYM-kqni_BycpPgcd_fdpnmC0im8cquj3UuSZP'),
	('q7o4p9vuehovmkrp8hts3ba8504ja0ju',1412512378,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('9u0cat22jkj6b3c9kc22qej0i49jp80k',1412509219,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('c42dhk0dpkngqc9i75ak1b93qqm8pgp4',1412508294,'PNQ0im61gZCVd2ygLcBgAR7CIB07V22nWT_S1PpH9nlFl9M1s6uo_hgjOoYMwaXW'),
	('og3957cr0pld9coqfjolc15h45cjimag',1412508284,'WAM0XXCU5foZqt58dF_B9urC-fW_MVajoWGOoawb9HV3K4e5K4vj-6weI3kVVLj_'),
	('tu17tprm2esh23pufujtug99reuq360r',1412506959,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('kso5k74a16801sulji17i81r28tq8aps',1412506894,'IbKqmunOw6RNToX7U5fI81UxgnokcpjebDl0ax9Iw8lx20_RWK_WSJ6yF6cgXwlw'),
	('9cvmm7dpcc45q12mfp96a9hbekgem5ok',1412505044,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('6enm71ju0ot72n3s2d5pbtu6v4peciig',1412494601,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('0j413hmrtdoc3ff5hun5nsop1014gvjr',1412493901,'Ti0oJZMW4YvSi_kohMYVQDoT2Jt8jNRLjHuSBvXd21BXUAl2X88SqVxbCFKQ_B4r'),
	('mseffp5mjqqft5kpc4utj8kjvb4f35oi',1412493803,'nMaTf2P0h-XEwV43wLWoiTT7CEGGSPCR9-UbsRQtnMA86JMCf8sVOOPOUeKjjPgW'),
	('me209nfk9t2p4bcef3juhvhlpm18o7cj',1412489830,'ukpGH_AF7Vy8UbkcL8yPA6iUYFDpfilSBg9Jb-JTEZMs5sUM-rVW7FL90sti02KQ'),
	('c29daud8u1eajoscouhi23quhql2pfe8',1412489644,'0S34TXP88iw0MEB7Dlnf1XTC6EEbSBJ_P9HxctJ9EYtpvsS0UGDbYUkWv6-3L3YI'),
	('msugo3c0mii834it4rr1iqtvihmeod3d',1412486157,'EtbrDSzXbHABYhg9BYNkMm7IuUtqPWfcYdHeFNWTdjZiVWCGO-TwX6FjLeob5m5x'),
	('ciu07jp1gpadkpb7ec554bhjh0gpgbt2',1412486140,'Np0l0y5DsB7Kn9u_Eg8_awZH99eGlfMWBVR48x_EYeBZ_XgwpR2Em2vE99d-bKfF'),
	('l00hp6u0v030h377h4aprjqrbld275eh',1412485776,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('n6a8hf4rei86gs55ra9328r148v5mf82',1412485769,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('cjai8pjakh48o5clj8i4snc4a71u1034',1412485761,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('3j3pnrhmqh117gv136j1u63u2q89c8a7',1412485756,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('al7nklcakj0l373r9r6ngshnv9fg24os',1412485750,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('6tmjd8nkkpsu9oov5a3qehcsb8426beo',1412485746,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('nge9hqj28c8tceuufom6urcogc21ii05',1412485741,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('64esmme74oalh0sjeol43lt7a3jc0ak2',1412485733,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('rnvrv1477rddnbnngcbgbm5kqsr2ot0s',1412485724,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('iv8je0c4qdua5ifqej16u3ahm2bf1dap',1412485720,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('q6jieef1k0ln77acr3dgjr5fi712ber6',1412485714,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('tfnuu4ffn86id2g7u8cq64sob8c25gl7',1412485708,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('fls71kvjojkbe4h7lgr4i7tfjotnmv63',1412485703,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('jbge31cml0g98hlsvcvabm8llvl7f4qk',1412485697,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('v5aiie49n4t866r887lgdfnn3383d9o0',1412485693,'reCZfC23Nasy58Pit0Le5BqFCe1S1L5u8iv-4-9zwN_Z0aPdVA5RoRCaS19Nk7AR'),
	('dfdojbevs4sh5c78o499lau1k30tuvj6',1412483273,'GWtuwXtKfl3s9GZUbQL2b1yF5KeNN6umtsTn-WHdigb_L7kCXJWCj2f-ZmTF7-dI'),
	('nd72lratil0qg0k8fd51d0302pidfh8t',1412475423,'hvLZ9iH_MGuG81bEju6yB2qFQ5eW49LfQkXVc12AJTsGR-VYooyElL2mi5oi72Hn'),
	('hnt8tr79rja8mnhef8jp103cutf921n8',1412475370,'FeVeFTsEtnVOqYVE6VeW1G5VJSHPnx7PXvQv_2brFiFpTVOTvzX_bj9KT8dLsVZP'),
	('34al51cqk0guv8073b9k35tcnumm14f0',1412464140,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('8q901fttussod9a6cojqm60k78suvq9i',1412464057,'LxrwD5gilR-_I6mXlJtEi6kCeyJpZt8QOccsUzsJ7VWeU4t0C73lQlZqwNTfZ7G1'),
	('r38g822hb02d0knkiokp4bfj3er966sf',1412460652,'cxgLYDb7id824Ocq-kiI3LciBY6XmvkQQ882KUE1Pgqzaxsdd1rPfYhvuLubuglP'),
	('rihahetoa4gmkrgdfoafdu7eaaapm473',1412456608,'RT7MXewvab1XfKnkHrPw1cC-AWOaDc5wxkyzHNC7aF3io7u-nepxzQ9YqCdWXUWw'),
	('8mno45dc27jslbovtudv1q3805v36bed',1412456539,'CrKSeX-WdqYi9zCfS3gaOYhE4m-on8LxGtYflzr3z1dWivI3i7j_b1ond-DkuHsS'),
	('vld090s3m287a8d09cfmqmgc7qp4v00p',1412445188,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('5rar75d3sbe0hqkvmukeig9hfp2iofus',1412440798,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('jr6vmjc792tg6apt1knapgct5hd38v48',1412435861,'xNhoGB5wiqwhqm_MVZyJzmTgb7o8LYRL0KjIalpEECsW32QUg1Ay9u4oNa-XXhxL'),
	('1baodot6vpcue1lrk0qi2h0tbulmbdc1',1412435781,'SSuHxcYZF90QuGSP8V5J8RaaFPOW6YzcYGVpe0I-Gdz8b-kO6EpKUU04gg5s1qO2'),
	('6mo67po16riappq5cd4c7jope88hc6g7',1412434839,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('fc7jm6crtpih8fm5q461rmba1g9glvd4',1412434775,'ZsFxTHpQ5lCermqfpcUBanMVABix_LcVUOCV158aXT_AjWaMDdhGWkvKt2hgFWRo'),
	('veqmd4umtosvvdvlvr6mc3lqpqvtvtks',1412425106,'Ti0oJZMW4YvSi_kohMYVQDoT2Jt8jNRLjHuSBvXd21BXUAl2X88SqVxbCFKQ_B4r'),
	('n8br0mjqp9tp1umpgj8cdhhf3kqdk4o9',1412425034,'9EXXHXu0Os6jCFt2JAsMko6N-qdEXlPwP6nNHlR_B3TOhZvGB0pDljFhyeZzwzpO'),
	('b4ea7npjfarajukg5uph896i1p6m2to6',1412413422,'yAdhZg0QEdT2rQnc8CJbpEkSTCcE6ZL72oJo7y9lOz0-zL7ZsCewVkW0x__EbR35'),
	('hkqfmlqscjv2u19skh7q8b3c0hakidjn',1412413357,'DSqm2QoqzTGbxgIoauTctXwet3AWqBSACY2HUg6Wdtz3Lx5jnMPAqIc9WNNu01r9'),
	('8kq1b8nkbfn0010e8253vejabt90cr66',1412407228,'DWDVq6_Hrw0htE8BBtW2QMNcZPoYM-kqni_BycpPgcd_fdpnmC0im8cquj3UuSZP'),
	('onuv2lmo4hjd6tv2ocd7kindvib6kjms',1412407136,'dAwO_MXgXb4MlRgneWldFucwjnbFTYFxR-_HEfBugYJgHMM7uz0okVD6t799yD-6'),
	('e1gcde8g82602aosg9ipa2lhtgms4pup',1412404511,'VNC4M0SbRbAGand8TKIJdynG296Jx1YOxMn-zrNdz43hmS-xRWRdwahc-iFheyvb'),
	('umicpkosiruhmh3unokegrf31ekptunl',1412400453,'uEbz2Grwl4As0m3g3hiMLLDhO-qTHFfYjU_4jVLFlQv36RaMezrC2qZxQbjV-CXV'),
	('oqti7undcfqhk9393cs7pkrhjoo3lvme',1412399057,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('76gp85usd82vm4t40pbjj67r3228q63l',1412391705,'RT7MXewvab1XfKnkHrPw1cC-AWOaDc5wxkyzHNC7aF3io7u-nepxzQ9YqCdWXUWw'),
	('u3561c0fe79pmfriejbi06ccsdj8j5im',1412391641,'Wolf5TLRH0visI-Zrr4sTZCOZ5Y980jGf8pVq4JwRWySMubtKhijhcocRkDcchjD'),
	('nlcq1p64fflnae1bmd312oduunumppu6',1412382257,'VmBvay1-wM9hP4JZMPdCJAWSdFMK2M-YqeS2HARRKyTW6gNvOYXW2vbuxtL0ruHu'),
	('p5ph6i9ukf8ac1orl5gq3inf7pld0o0p',1412370288,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('1bf8pl1bscd86eldf6sau09e3p53c3s9',1412370219,'YGzaxcv3U6gO-Me6sTQskYvfa5SBQrjBuSmIWg-cidFc3DvCvJ9HBecXQPmLnjVZ'),
	('soqu5ol0p0fkfrcrha85gqhbsqvcjbqc',1412367748,'nMaTf2P0h-XEwV43wLWoiTT7CEGGSPCR9-UbsRQtnMA86JMCf8sVOOPOUeKjjPgW'),
	('j8uvnmlclj92h70u6lc4rklapuam5ka2',1412367512,'zl8iy42mIEZvXKLGLKw-ppLmtICBV9dFvwUflywcvlSEOmC1oQYJAgHPUUindbbb'),
	('4cjmiiduajv5qguibm1p0s1211v73u17',1412364975,'dRE_xpT5ExORPyg8kcYrMjBKemUB0vB21ajUBTYHc4ClPtzhvrJWnefSd-B0F6T3'),
	('i6u2pmis5cqn5t1amgg71jabrlareudd',1412362154,'SLIZG-RXHr1ew3kClC52tqOohuBIyDljb1nakzIdZ1Xf1pfTsjT5ooMSysK3VdDW'),
	('7t86npsgqhldrskrl2nbam0jkj67aiap',1412362151,'SLIZG-RXHr1ew3kClC52tqOohuBIyDljb1nakzIdZ1Xf1pfTsjT5ooMSysK3VdDW'),
	('af1pq9geiqpaen1keoakbtlr8cdtdjob',1412360259,'RDS6kNolBG32kjx0thhQ4mGGg2hjFE9abvq_9y2XG1_MDucat5NTTxdnfMmKt-nw'),
	('1nb5sjbsj3jhbkfs5iqn3ud4saf5uuiu',1412358074,'nMaTf2P0h-XEwV43wLWoiTT7CEGGSPCR9-UbsRQtnMA86JMCf8sVOOPOUeKjjPgW'),
	('6ln5lskg2rqa4mu6dpm1e2l3kjl67kid',1412357929,'WAM0XXCU5foZqt58dF_B9urC-fW_MVajoWGOoawb9HV3K4e5K4vj-6weI3kVVLj_'),
	('kctdf27npfo7a86gvbgsmp7d81kei63u',1412350656,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('dtcmmk9n3j4t4n5o6r6a90k4o7efd6r8',1412348412,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('l1aqhnrdn2shk55mcfcjjtan5vrv9n4f',1412348351,'HuoyQMdThE5xjRFzDe8OtCb3BT3j17b6_GMFqk72Fi0Gjsy3RkC45n_Nmjponi8n'),
	('pheb4smf1p0phl63gbb3lnlpcrbe72r2',1412345539,'-irHINq3hGEAxpFVTjLjtAbId3tF11hYP5k7DC_pLc8ohAbp0g1ZbxDpUcXM1WHF'),
	('0cvmfoo5rnuu2a5qq2mm3s6b10ps0uj5',1412345537,'DWDVq6_Hrw0htE8BBtW2QMNcZPoYM-kqni_BycpPgcd_fdpnmC0im8cquj3UuSZP'),
	('n2j51s6nrbu0ofjatmuirbp24amj58gu',1412327069,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('goa0m28pibbh8j5nmdv2e41a4f907a7l',1412326997,'Cru54_PRClnoEki9c-3_ySvtcPi458YOlX3ZQXhyc4XqfKx7_au62tENxtkOKXhI'),
	('0mic106v8cvkaenb3g3ihtv15sa5281p',1412321006,'FIeNcOnDhszuC14E2qv9GgHwfg2xSelbt4af0xqlqinBg5ILCojnoHY1IfRi-STM'),
	('dcut514hn6lrsag50o6nl0c5vnoa7r0h',1412320975,'WAM0XXCU5foZqt58dF_B9urC-fW_MVajoWGOoawb9HV3K4e5K4vj-6weI3kVVLj_'),
	('nug8v06hnjrlb0bv8l2hmt4b8tddfbcg',1412316977,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('bu4rkhjqthgojcek2a4c1brjcs84b68t',1412316264,'dFREiO5UV1o1TRmg4HAaLsbJ0_NurDua1q0DKCvnT-ckRHwwbFdSUFp_wVmrftNA'),
	('en66qrr0pf8mu5tj0e8idgbmm1rkd4up',1412313189,'1dMoJYjMhvU8ubqjiyGSQ9Z4RSpzdlF51UzVFlJEvytAl-8Cu3HDve2f9MX_YiTe'),
	('jm6h7r5dqtjqq6kuaqkehl382p547v9q',1412313144,'jTjkwSZlDVPQ-VNCGPmoXk6Wgjq61phzX-EMVIV8g7H1N4dNkJAja8dg4zqxX2vG'),
	('mgtlgt5uqhjt0bdp4lig8dett8knef39',1412309532,'sBqllgRKJy72aDqO4y4h1uPINLRfmJk9U73ZZNIlL-NYOw46Npa-LlpM4-yPvG8g'),
	('a16q1dmho8nk9tlbl1hgg76op41kth8q',1412309514,'y1cODFxuKz0Rk-he63z66JxgLcPxhbN0igNmsCpzwT9uP_p43y2FK5n-J_TBVmov'),
	('8gcosdjivu9bkil43d83b05oucbg42ui',1412305381,'0S34TXP88iw0MEB7Dlnf1XTC6EEbSBJ_P9HxctJ9EYtpvsS0UGDbYUkWv6-3L3YI'),
	('u1i46nk87jm2i56voctelgqgms6a076b',1412305315,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('h53i45njgmjl5opjmrbpef50gf9ul2bs',1412305251,'ijxBPze1Qa0zuvcqPJ-uOMktuiO1880f2kT9JlQKu-Kns7N3zIF_ek4OpRe9Srta'),
	('cr80pmadu789l1l9bojh250i54k1k305',1412296747,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('0vkmebn1lnapo23hmcn2ffd9umn2ki02',1412293260,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('d1lhrgb7aen5vmmfbttii944hr5amqs0',1412292710,'nMPGR4Ci0XXzSvHOi1g1FQKcCiVvK-PM6FaWpcjlYxaaoX5gE2dc4JtgbQhFKnOT'),
	('qgqkfv9op5nc42l7b0bkiijbgvuie810',1412292579,'hvLZ9iH_MGuG81bEju6yB2qFQ5eW49LfQkXVc12AJTsGR-VYooyElL2mi5oi72Hn'),
	('gddvnr384bebsgiebrdf8kqd99a9e8us',1412283118,'Qn4pAxluXO-8WMHtdkm9ISCf0x8Y_EsHiZDANuJbOLBqqQpS9Frw2q3OhTYylb_5'),
	('dsk3scmr1o921da1rpod231gvsq8ge2r',1412274484,'-zHDN5AEAkYo7nIhP9LNXrQQI7pAotvjk7UOgJPBrUEF6TeaZZdjKdIJ83aPLd9I'),
	('nbjq16v2s562rhlm0mdt0m4pg0suftal',1412272804,'djMlDA2EXGW8_g0PJG3_r6RCMm4_1slka7GQSdEO9UjkMttlBFtT_1h8JYkPiJZ6'),
	('prql34uc1613b4m8vd99cr63c56dpqk1',1412262523,'eHSxQp5qhvVJFCQu5t0egwP8IzyZXMttFc6TiMWf3MvjD2W0v3rl7mAPf3J_kdcq'),
	('3diopeljpmovbad9gfkcvd1galv8tue1',1412262478,'1TyZdhzArSfUHyfZi_-13g6O8qmcc0mWaEGtqDNw-5PKIjg8SWEpvhHo9qMDq56a'),
	('o23mfqe83t7rmov2j987thlq8cckm7ig',1412262085,'RT7MXewvab1XfKnkHrPw1cC-AWOaDc5wxkyzHNC7aF3io7u-nepxzQ9YqCdWXUWw'),
	('urd8etq02cqfmj084eo66scpk54uk5c3',1412262023,'8sAuwXQrRqEHI9ZOvALEw9xyCZDAvwzOOzLqLWhWaNX4NnrtbQCCk_VTnUqh-mzZ'),
	('78jjrst14f3rpep5qio8m15phs0ho2c4',1412258067,'5GUina555V7UU5lT2xdHHHj-lJ2VkP7N93pzu2oQx4Cl4WDi5Lr2KlVwU-Vq4G19'),
	('bf5k300p2atd3n1n7rp7rjolik7ro7nd',1412245005,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('1g7936vosknshqplg3vfjcvmgqlutl05',1412241669,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('eqq09nesh6ava94m0iud24mktsvb75pf',1412240680,'yAdhZg0QEdT2rQnc8CJbpEkSTCcE6ZL72oJo7y9lOz0-zL7ZsCewVkW0x__EbR35'),
	('llolclvmqcmr8nti5a3dfeedostrgosm',1412240610,'6Jxo7Bfg-n3wNnwAHgFVueumUyNGaACzEuw8ddKY-ftBzF3XuEdhzaKY1h7qZwXs'),
	('mvmognnhuf2no4epspqfbjctrj6jlfbo',1412199282,'kjvkNa9vziXWEYGIulOwh3BhNNcvo23HuJ5qZzYmuVfvXnHHR6Lreqnr2YOdsf0x'),
	('4d5hbe8fefih3bdv6bagvkifl8vjopu5',1412202636,'-irHINq3hGEAxpFVTjLjtAbId3tF11hYP5k7DC_pLc8ohAbp0g1ZbxDpUcXM1WHF'),
	('qpi1otk2ajoibi255rbic123a8acch8m',1412202642,'-bmUiHfc-czoAOE-f9C9t2NK1crtjpnhVZrQFS13yby2gEFEMJHmgpxlNxRE0w7V'),
	('knul05cbi7t29ohr8og4dumvdvpif0pl',1412203674,'lXKifnLzkYtEDKKbZ66Ljwt6cvCYKJC-0kiZJnWPYwf18WHwaAM3XFjZ-w-gvZrK'),
	('csr079imuas32jrm3oo38jlceruiuquv',1412208396,'u_xwLFfE-idGI9-5kk2u_llhCq668xx4O7dE4Yx5y_wUCU2EQG2DmtIDT7uyvjSL'),
	('6dot2rrla7m0re1h1vfg8iees9hpgvnp',1412217043,'Md7u2Upq8sgM7WDn4aCHBzwYODynlRTI54cAcpLjta7uwYE4liKG8jbKh_JuFGRg'),
	('jpcinbsgt3hm9go1uoptq8jerd3sgbku',1412218824,'9BqA9LfPQvXoDFIkeAYV_uCTm8czgJx7HxwErs-daTaTHynE9rv2N3sckV7E73kU'),
	('a296545ql0s328c0281s3ut3r3sesuei',1412218878,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('8k7ks1ulpitquas5769m2455o34hgvi8',1412226613,'RPW_FLyBD-tOpqh0yewMfCQZwEEPjUEEHMh8icVfJSSwHr-pwtcncJ3NeoLXOWoi'),
	('v6l44ouu00re1qq5p9nhtdqpcrutjm46',1412229440,'SXCpWbH66xzav7sSR03C8ZTlY_V8jBbd85qUhD3OxmRx8jBAsemPnsTCtByavwav'),
	('60022kbtoi2s8ckp9f5ho2hul69r4at3',1412195265,'39BSRGXw1vJcYvijf2SPiC-Y8kejvpvtUJxIf_IwMM45vAikQ1udGNLRnzUiXywM'),
	('dntolvfi1ogudo3lau5775kr3b7fs918',1412195058,'HQTX7fehrE6lxJqepBtJ6YOCDVUUy_c6siICYYv9C6Hpovmz4ZI4jSBDo-T3SVln'),
	('3bilmqj7b4g0pf7hqvjnefuls42cf5k3',1412188720,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('v7eihco83dbcn9anongd0chcdvoqtrcp',1412175751,'Gix1-y9D234Mk_3oX0A--12KuOm-DEYkcgeotBR_SZzf9rDV10-OdIk-q1mo-0e7'),
	('g6lbfkj598rt61lpah8bq8fo4lemu1ks',1412175706,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('ntsg5b136hk8kf8441e3o9p0jigvfj5j',1412175643,'GwiYTjMYr0RmrUGef9eYjmkTJW6cZkcAOT69r1HbMl1mJDNtIgZWQ92olfkmt59A'),
	('40ug1mj3osnp73lo4moovetlihpieg3m',1412170208,'3tnG6rwFTiZSEdTznRZwT-FFNfPuOHFf7t1fvi25XeocyTbMwvEyDv3hUFrgtuFy'),
	('kume6dgsske9dntbek1bacejjomthtvh',1412168489,'89A7O6Sfh-vX1CzGyDZ_-VO9uwAyFFFp100DhzuENNJCCcN9oW6mC5tKTnG9dtCB'),
	('v65a9s7ddi9efi14reunqfkugrj2bukq',1412162250,'s3aa6ApfxyY2Za4LwpU_RJppFqvRdrwNyPdMK34UjrQaz53YcbTTosy1ZJs7B7z1'),
	('g2ao25d41uoq7rjsci8cvohborguri2s',1412158605,'PB5Q09OR34-CyHgbD9UzTzVpKqRK6srmJdCSZ5X91kzusdN2kdEvbJ7yj8tVBxQE'),
	('jditc09ad895avtnlf8goed21mu1n6oj',1412158584,'AaNJr-qb9llBWELKcGE3Qed-aqjRGkS4iAKFGQO5iahEmtxl4-vT4DFZKlnGopLh'),
	('p7m4f9i36htv8p91quufpurc8u4nq3st',1412151281,'XrUf6FQVy3nABvciBFaMdagAsDtqzSgbwTk9VyH3XdW7Od-5kN95fhQMI1rovOyv'),
	('f5s4papvdv3qnu7affl6ql6fp9habsmk',1412132577,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('3dimlp2gts1e4uifgos3dpt682j9irl5',1412132512,'Z1aAm5L2tnjDQpUYxROXgrpz-Yk4FqDVuTeprSYHj6e_Kp8mUQ6C_1nVJyedkJyo'),
	('uvqj5ft6bal8db8sqq56cak4lgkl77hk',1412129972,'deG6z6dSgl3h1XvxXEtd7tJoKrigfKfN98Hadyjl5QBqu-dI3aLwirR4D5yshLHa'),
	('ja9huarn521klirvfjuprmgr6vaeia50',1412129972,'_VJ2N9mEqf10ja3SVB864Zs8GVgZsqJNwNxBPRqwY6ep52NRZht7F5DteToVgHnD'),
	('p5v7e1cesjhibc8upe5co25dnhgatv4d',1412124007,'SyDxEgal0Z9WemT1XBRMVagXDKEJl3awq0WR8B_1LkBSxhsAq2ofafcK8MoO6nCu'),
	('k2t3so8s0pv9e21s7bct3talk762qmml',1412122428,'HZPv4nbg1wcY9ODBC-tpDoY2d53SvA979bMMQziyw32AHTYFqOdG4vPg11jIFnNW'),
	('0ctagrk1onltr5cqb8d4sjcgljgl5n8s',1412122428,'8IHfSnyiBiXMuqIPFdkUCfJDahcyCWJtj5LZReteoGGBU_uiyQF3Dzmauj_e-ZXv'),
	('72kh3tct2qja6m1cjgrhkkmfe82mc5bm',1412118790,'F6xHuDhULXNlLfZ1to3VzeQQsxLFR2fS1_v3lemIv-6Zsmr68DVaxLbFLtXLYMO5'),
	('pmtufth2cp15peipb5plajldpbr4euks',1412115796,'P3bKqZd19STpPeebLG3umjR5D26jtD6BGzpfWPuOaD6o5PwTAEnc4H4oH6pyvMZN'),
	('kd4hp7l5ubcp4f7g1bvme2a8sd74fva5',1412110572,'uwpmW4j1npbxBtvcqEcoBKEsbbIe5duN1Fh6CEu2UYM8c8F6cQ3IARE-aAz2WToX'),
	('akigu2us69as1f87a16eukm50tcji5gk',1412101810,'zv_PqaiPp9HVkssVQMKA4_0Xju0lgfWdCSE2ujEZqWbJ8hNDG7YBbyuVj3UhJPvx'),
	('edr5fk3ml8gvke0mn77kuqsaaphcfaa8',1412101458,'STPjcCmiGSOYxDlrTEX_XPQ3CaYAhym3bP1oA1DGmYMML5_0C6_zL6IMX-9UXnZp'),
	('fgthagtqk8dqgdsgm2du3lu8gdg6d82h',1412101455,'EtbrDSzXbHABYhg9BYNkMm7IuUtqPWfcYdHeFNWTdjZiVWCGO-TwX6FjLeob5m5x'),
	('4ieolgovcceh3spb97dspcdhhrg6vqav',1412101400,'T1czo0k-5iDfgq7VRDZukUs8ABZ7uDkjFEkGhfy9giP-4s1LG5fO9znrkT28Vh2l'),
	('kc2aigt3vj71daf6hqeocd49gl1vk876',1412093553,'PNQ0im61gZCVd2ygLcBgAR7CIB07V22nWT_S1PpH9nlFl9M1s6uo_hgjOoYMwaXW'),
	('bktdv4csl1vhe449hvou240f4uuvuvvk',1412093526,'27kCg6QvCrrUY2d4dHeXCHdSOMeuKebOZBDF422kqUFQ8GMmPmrmCcgyjqa5GsWp'),
	('e3f9dletj728sukg4sb8a0dfi52li75q',1412087498,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('6gmkl1as90osdhfm2ijr05derg9sukta',1412066963,'0MFuuGk2N2LfJSToXBsK6GAArbXJ8_WJP-wtdi1XIjYGL6sJjdU6eKELPxl6TrUB'),
	('73kp8tdpdaq7au7c8icmlq31vh88bhnf',1412064997,'8IHfSnyiBiXMuqIPFdkUCfJDahcyCWJtj5LZReteoGGBU_uiyQF3Dzmauj_e-ZXv'),
	('d0mk0qn0jikrtapeb60bmadmn8von0nq',1412064953,'6Dr80pUXsTA0HGmYIHVu7LOZiRLecbhW3Fbq4X8mpcXKZjnVAAaf3SEjIKQta2Ao'),
	('84qlcs8omb1ujmmckomksec3a4657aq6',1412064305,'vtyoj6xo69TWBX_BahnKDCXuEnRX6yyaYxaiYpzYAku64Rsa20bj_xURtlSbWKZN'),
	('nqer962gso1pqm4p3ne00eg7a7jsern5',1412049886,'ygTMedICmNxMy8C0WXZvlIRJUkSqL585yePTJ9P5agCczwZ7N-bgLtSnkehyJsWz'),
	('6edh2k3aci0ue5mu83da4nmp5hmeagsk',1412049884,'xlYOgFAunrcgBXQPFQABiiIFghAOy4KiT997axtHARp0fTaEV044KqyOWjaIlOzV'),
	('9gaaogsln6pehl5mvv2at1413ltc3s0p',1412041888,'TKJ2TvSYT9KlbREYE7bdhfiYYXdLcjQI-JYnvZSNWR5NVDT1iWRzhApdHp962NMt'),
	('hu3a0g2in2pi93bvob33j09absh1g6dl',1412039621,'lBTHI9DUPmZ3a-t_oO10nYn6ZXsWwooleZ09gpap4mrWV762yBH78Y7DX9u-vo2f'),
	('758l9pki5njf6motmpmvvih31gaoev8f',1412039448,'MkwZzPotomJf7kMZg31TBt0NCYbJ67MQh0v43Gfz7pvn7VPQXLaCw4jsSTf2Tlcg'),
	('7f8kqa3iej608nb8i93j7hmmfv2k61s5',1412038936,'xNhoGB5wiqwhqm_MVZyJzmTgb7o8LYRL0KjIalpEECsW32QUg1Ay9u4oNa-XXhxL'),
	('199ku2fe97oaja1rlvgd6srgb3d4iv3i',1412035770,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('r9mfqijevgaedpocvi9u6qe1cs8hcna3',1412033682,'Mlqgc-LKI4aopna8am9WxVP6tQ7ef_zIi-QNchA21JWBcsxWE6nunhosaulNNJZw'),
	('v7vm11og1lk40s7trkpmc2cifqitqn54',1412031952,'yAdhZg0QEdT2rQnc8CJbpEkSTCcE6ZL72oJo7y9lOz0-zL7ZsCewVkW0x__EbR35'),
	('pfgtu8e2g00uoc9ohnrbpueot6kauh8h',1412031880,'n8tT-6YBCVnunxmrXNZOBIo0AgF_Cha9RihpIxWEDM5n0HH-2FGDTD399KrY8EW8'),
	('bqfl1mt0fjpg4bv8ehqsbo0nrvhmp63j',1412031287,'uwpmW4j1npbxBtvcqEcoBKEsbbIe5duN1Fh6CEu2UYM8c8F6cQ3IARE-aAz2WToX'),
	('59e5uus27kum5adoh1ikqsrcmhvco1os',1412029706,'xGBpS5AT83CbCoGoYb8O0eKcmY9UFL0TDeMTP6XzDdNT1wQs87QuuO-4Ag6jCLxA'),
	('a41ophq4p2locsv3dt7duo4vu84eisgj',1412026662,'tNJ3bA0DbmbbRYu3BFLYOLNTd9JU_0V2H1ueIZsHL_mScQyAXZJBU3qPV3OWY3Tl'),
	('qts3hj5iovvolsu2nd51btu5hcmiv9l2',1412022120,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('n4ehumc7vje8srmqh5jhen8g8bd3dcli',1412022059,'uwpmW4j1npbxBtvcqEcoBKEsbbIe5duN1Fh6CEu2UYM8c8F6cQ3IARE-aAz2WToX'),
	('tk5cnhl8qp6netq47s0a5du56dutf5lt',1412022055,'xlYOgFAunrcgBXQPFQABiiIFghAOy4KiT997axtHARp0fTaEV044KqyOWjaIlOzV'),
	('a43l3avtqg81b9e0thi86j76vaa9j0vd',1412014618,'CXcpg0uhXdYgr37NuW7CTCcETv772VruDSg-VulAda7fkqrrQVEOzS9YGYpZufAC'),
	('hbegu1iirok2imjc2qt5g6pu7f5fv87b',1412014592,'juZ7fa10F1jtnU-tMg7PVPUDnvvsyQtOtIhcDGQ-pahYOGUML_azbeSxWc04hJYg'),
	('b486jqku6gppcnd54dtk9sbr6dvlo5eh',1412012531,'Rr77WfG23a6t78NBv9YA4NSmBe1EISY0k86pLn4XSnvXmHyKspxvuhGtXJSnNtg9'),
	('v53vdtcpgr4dakk6u78imod8bu1d2itg',1412009510,'yam_A7ZKqj5FIJsy5xAuM_a2wiNQJR9ZdS783FN9T-y8-aGKEcGf3EJG74tXIxw_'),
	('qvqk4gmtm4cl3dumhjo3fofuqt8l82bg',1412002280,'65za9mv194YUuVm8qbyGjXm4kRTyF36Mv8AU5ICgFlIdb3rjjnaVyT_rL5TQCPQ1'),
	('u8q7lqfu1lrqtc8jor6t2vponkgnn129',1412002276,'FbImwpZsVQkE1l0AJk-_6z6CpPDsMLKLUqX0AfIQL5-dSnuYnwXyM2DuyGIFQ8Ex'),
	('9i86j8ekadfmf7gmqlem2jc7eulhb3p1',1412001394,'Ut5IN2HgQqB5py86gRymBGpHIYEmorO2CrP978pSis-ZNn8Id4jf--jiNMrZhEpS'),
	('aelff41sgc40080r5fplukh4k5usar40',1411999834,'DySZTtVh4pwft58DeaH8G-3ld21K2ht-ywIyw24GPWm1jFLNU18SoqdbcU4fvhbB'),
	('79q8t9ea21figtf7pjur1ue2qltpo1so',1411999788,'q842dRGZoK3hg4cKAM5xpBBQB1HppfspJW4KPif_rqDtXP3Vl3BqiSIMQlR84SCz'),
	('hpc35lahgebqmo25nqck17eupre4n8a0',1411989135,'xI33KambhRHUNTiI03SRbVRw_FhiJ1ACk6JbmRjNTLsxFNmcsSiyt2cdOy96nrF5'),
	('aio0tb4mrsu37rpgdbimmfb1d8urc5il',1411984218,'uwpmW4j1npbxBtvcqEcoBKEsbbIe5duN1Fh6CEu2UYM8c8F6cQ3IARE-aAz2WToX'),
	('4r1hilu14enh4oe7a0cm8ghbtegjefgp',1411973763,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('v2b88q3g5oics0b3301vt1g85k240cj2',1411966318,'afIUZLV4Kk3_UTmp8CZiuqfW51AOAcdFM3t1abJpx2YEum3gWJSeOjP9zYxUvc68'),
	('3f7no6p95n39fegm3at3i49s7m304mc0',1411966315,'afIUZLV4Kk3_UTmp8CZiuqfW51AOAcdFM3t1abJpx2YEum3gWJSeOjP9zYxUvc68'),
	('vtlq0uj4eaqok4vp13g8ihbht0spoepn',1411945531,'VBAHYT2t1tgzpLT4qOeiWowq19-tSDTCL1P1sgYHGAue2cBV7k54F8AfviNaN62P'),
	('g99mvif8t8hungor20nthlge8h6jss4i',1411945459,'i0I-LoMhqg7wbuGUJStcoEOFBB8coCF28qSW_LfwbRUnlP3mu25VCrphAa-IQ1Ak'),
	('9ied8o00ho68nt8orjc1te8mrfdfgkbg',1411943351,'YQDkAwsWtHFAJcEA_BTAriWuwFmXTBhe-6IfmFfVSmDJUzymf8wNAmoqyxomcmPO'),
	('vdkkp1h5q5jngf6n0nnjbh1f7l7stnjo',1411942777,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('s86ee77isu5chtn33r56eumesva1kloq',1411939792,'yP-D6girhutknI2pgIEWDf5GsA8NvCKD4D_U5e_tMOUc6FFoKmEVhNSLz45_so6T'),
	('n3o2tho7m7ug8ifviqrm5plho7om7om0',1411936834,'F6mMR8v_U2Qc548NTKJKs7JJlc_CPGKHwVWz87zzQNeKYkmUzfwwTtBdOY5c50GD'),
	('habiqk48mn5b51m1hprsd5aurvfitjn3',1411920115,'ulajwntW3IXpnFkjumeYEFnrvd-C3GOYt5mbn9VvNxjUQYFReGsOpw6Hq8ilyBuT'),
	('aj7ivfh5uu2n3559mlciu7ucucko0csa',1411920078,'zyGOcYsCnhhFW-EAw0k5Q_Km3RTUr5pbjbkAGh5-n3-v_vxgVDQvTP9rRIqEu5x9'),
	('72jo209m6ot35k1512186uotp6ldct4b',1411917110,'7nup3hBVDqje_yQYBgVwcKsOx8PnH_V_ttcO-ON3s9th6b5vytxR2BfPhsc8uAtH'),
	('jpr51lccha4k72irqum47o6d9m24dkor',1413443645,'32vFn1Fea2ea__1V_Sis1SJKfOgLf-SyrOVPi4-3LWoTJWSoxyg68aPtUP9zMHAd'),
	('308j2qtgadch0ul8hct5t9vrek5turs1',1413443256,'RT7MXewvab1XfKnkHrPw1cC-AWOaDc5wxkyzHNC7aF3io7u-nepxzQ9YqCdWXUWw'),
	('efdcvg7a41gnqeb8l2k16ssv2qt9arrc',1413443181,'5Lqxm0hPBuJnCoZPcK1SQq4SgbVLt6EZB0azMCPJoEFDQQGgM_uCwQ17z_4G9cUI'),
	('157n3tg11gfut8cchbmlfi1sbkll65pj',1413437291,'7nup3hBVDqje_yQYBgVwcKsOx8PnH_V_ttcO-ON3s9th6b5vytxR2BfPhsc8uAtH'),
	('g77al7cu1e7qb7iaiev4sonqckjsq2ea',1413434412,'PZdu_B508uHnJ3KBCfnFMaxBR_U8w8oZ0l4Eqyk4eHbVPU2AsYPQn0qkkLGhoGho'),
	('i88teoit6irn2jesej50ver01gu0lsps',1413426009,'lBTHI9DUPmZ3a-t_oO10nYn6ZXsWwooleZ09gpap4mrWV762yBH78Y7DX9u-vo2f'),
	('52c3am5k4uhec3mjlm76utov025jpvjn',1413426009,'1dMoJYjMhvU8ubqjiyGSQ9Z4RSpzdlF51UzVFlJEvytAl-8Cu3HDve2f9MX_YiTe'),
	('m2rm691bvhg56ncr8f4pl4sf7eo5sq75',1413420197,'VmBvay1-wM9hP4JZMPdCJAWSdFMK2M-YqeS2HARRKyTW6gNvOYXW2vbuxtL0ruHu'),
	('46ofluqc0297em8mmaij3rfkfh2lvh2r',1413414409,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('uh7pfvuv0j7pbtq2nruhlj5t7rtd1qgm',1413414332,'kJnhJHZmJTuUKJU5gDZZQZ9isPHZUQ2C9n1PZZOX02Q04IYdYZ6ygP6mCuB5Rvud'),
	('hnrbj26vov57os7gribeej3405d6sp07',1413408782,'1dMoJYjMhvU8ubqjiyGSQ9Z4RSpzdlF51UzVFlJEvytAl-8Cu3HDve2f9MX_YiTe'),
	('kgl90010ceo95p9mho49hn4ico240lu3',1413408692,'STPjcCmiGSOYxDlrTEX_XPQ3CaYAhym3bP1oA1DGmYMML5_0C6_zL6IMX-9UXnZp'),
	('bekbcijavtch85qg3b9k6f0kfof9utif',1413406396,'PZdu_B508uHnJ3KBCfnFMaxBR_U8w8oZ0l4Eqyk4eHbVPU2AsYPQn0qkkLGhoGho'),
	('0n4ku076e6qe0r24u0u57gitv13rdm4i',1413401476,'1dMoJYjMhvU8ubqjiyGSQ9Z4RSpzdlF51UzVFlJEvytAl-8Cu3HDve2f9MX_YiTe'),
	('1vdgl23mqvgd0b96bd6r0oi36j478o6g',1413401462,'eHSxQp5qhvVJFCQu5t0egwP8IzyZXMttFc6TiMWf3MvjD2W0v3rl7mAPf3J_kdcq'),
	('2sfftr59f5smq83b2a5ve5ecc8jemnbm',1413398290,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('alfaggcb6dqvmo6p3af75grcqdn3ijpd',1413398145,'ikC61y2wo3NN-K_Ok3fOY05bhatkyuMb_3VnFi77H_gPp4iGCq1N17OlEOo_K_rX'),
	('900gg9ph17d4323o3mjsrnef3ivkb1ht',1413393092,'djMlDA2EXGW8_g0PJG3_r6RCMm4_1slka7GQSdEO9UjkMttlBFtT_1h8JYkPiJZ6'),
	('9tm0uvkts97ejt3c8fj156dhvaj710j1',1413383269,'FhZJNoyZCBGTN5VBgKRojm8wfz-8NP9jv5l-FWLagTWDfyoFCbKeax0UEDcOtkWT'),
	('emhtg31ogn1vpsebrp0ojdoopb2cfmf9',1413379230,'ItvNCajsK4wKGwvCmppKnxtRf2VBWY-uzWTNn7qxaDFcm29lJTJZL2v-pFUaQdQ1'),
	('7u0p34b3r8cjcm3k4trheubcunet28or',1413378948,'DYrbc7TRDmRvNufveJX4KseCpObrfHJJMmKu74npSF0FB3oKbMWfiV0mvbOHFomq'),
	('87r1nqit719dhpsr3hv1kk6ub2634n8u',1413378708,'Umfx4TXoUe1VmA02MdHomqBSNd2_RVOhXqV52bYQ3mGnaKmElOpknkgqDUJ9ZKIG'),
	('l0edrrbpot4i4co5hg82qedoomjhv4v1',1413375313,'Np0l0y5DsB7Kn9u_Eg8_awZH99eGlfMWBVR48x_EYeBZ_XgwpR2Em2vE99d-bKfF'),
	('3tfm6rqcgvas35b8kegm2r9076ulravb',1413375100,'sBqllgRKJy72aDqO4y4h1uPINLRfmJk9U73ZZNIlL-NYOw46Npa-LlpM4-yPvG8g'),
	('fbtsepka7k3pkd3dpfccktpu5mnf66pv',1413369250,'AUmbtgkyyIjko-ZqpPfPQac90CVK7Au_0JDsC1e62zoFVz7jfwfJzGozDahUqcNS'),
	('ca34svnm69120a3lk1qnuaubl2uvgtr4',1413363566,'u_xwLFfE-idGI9-5kk2u_llhCq668xx4O7dE4Yx5y_wUCU2EQG2DmtIDT7uyvjSL'),
	('qql3npi40hal7mpgte94jiqpl6d5jllk',1413357331,'GFeRln6j1VnbzGzcVhJOyjwGZlX9L-OOZTg_BfOEurNDcZYHLCn7uvv4xxGXV5n4'),
	('lld7a4dk2fgbr0ii0oq2iqgahlcgktir',1413356883,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('3tutrggttoc3kd8t3be4i33lrckuno37',1413356804,'5GQJI3SmfANmiMRvfpBLXMPIujIYGJ1o2KLBPMtgA68XxNRJaNBj_MbkjolYW2Uv'),
	('22qts0or92um6842n2rlt02phllmcmau',1413354486,'ep01cWVTSxgkLqyP3rh0x_5wonxWhLSfwMUK8floJpbLowuZi9hk5R5QrBXPoKnE'),
	('cv44ktlaj3k2gjh49tdvaogct1es9jus',1413350988,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('cvaps850raqanjod734fuk2kercqskj5',1413350984,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('1j95o90k2ud67vic54rjmg319nugrbp4',1413350983,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('ep49efdjin6v90n30ri39a0aft8f1mk1',1413350979,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('oomgg2if9c9kehnaski9eocu5av3b7v5',1413350972,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('ju4p73p1jqkfnmdfbskrk3ghv0qovpfj',1413350969,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('r15k417b2s8uv9rv4psouku4a718efq3',1413350964,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('2g5chou9jfq8hbgptrffqfuvffupm8rk',1413350960,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('b49ljpqbn3i7rdfasoo0l35cmlhuokt8',1413350955,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('adph57jbvgkehlqt4s8u93h9uk2l0pnj',1413350945,'Klyz426msDHeFR2WgBlmo8lCGdRmYQBV2fWNStWX3k90FfXjScKjnP1nxKnt6ZCb'),
	('g39digkadi37qcpke2tc4brlhrnkh5q2',1413346846,'LskT9BOyzMXbrV_4gYTvwdriq3ja2LEKm2J4uD_N4qEAhtjfNsGMzQ-cyTLp1Mqt'),
	('72loimdsrqr4kg8regmaurjvb2k2veta',1413346431,'Y10p0qW1UFzQldg9v8Gl7U7iyMhQz76xJxqkRAAUdvshryBOcf-CFWxb2aWq8fXs'),
	('edkk4tff4460f2mpd0addmo2ibh4s6pi',1413339249,'ZDV1RoxYBgbTPtxkrETVwaglElf4MWg0h9BbCGs_EJEtI1FafDj32pSRyt0AnTOO'),
	('vs3um8h6kveunkqgu6q8lf7flj8n4jjs',1413339175,'WSTuHX9FWb1uC9gCdsEOQRkO_uDTNp_K6klAwEh2atV3p_Jf5d_MIMjRFpKi31BV'),
	('h5sb6d0mij355fmupoo367gpjb419dc1',1413337819,'ikC61y2wo3NN-K_Ok3fOY05bhatkyuMb_3VnFi77H_gPp4iGCq1N17OlEOo_K_rX'),
	('rhduqjoqmcd8clksqlfeeh15jifjt4oi',1413336401,'5cq_KFRpCORWI4BjytZNgIG9qy3LM4xhIq7MyYUQdhwUQ-N2L_QiXcggF1TZJMMD'),
	('5bmranh1pd6kp65pqno17h3tho8k24au',1413328016,'VBAHYT2t1tgzpLT4qOeiWowq19-tSDTCL1P1sgYHGAue2cBV7k54F8AfviNaN62P'),
	('s8hcni8bitmibcud85jb67k50m8q01q9',1413327942,'zLFF701Y5C7ayZZx0npWkZUEe_Glt3B-hptgMd98ekanynZMGeED2nDQl_hGkup6'),
	('cukk2luc7gnn7oee6f29pjkel65243m3',1413322223,'YjOHzTgfPXdUDj1hdAT-waqHbSlLPA96vWzdrXAnqjSygTy2CZFSW6VBe_9UkpWm'),
	('m59vuk1sh11kpoqh8v12693n36ca8bk4',1413320806,'B9vOKhv_xigK5S8NfSUSBufkUm_xURpgRnuN0a36bNrEDPNHEoTYDbKamAVNHCS7'),
	('hpj0clpoek0i47u22ss2v47s06ohtf2t',1413318212,'mg3vJG1tWkmEkGSviwJziizlRHLEAdlFxjOw-TQCUp9kD1quKXLKbL7G52UbgQKj'),
	('3gu1rtsvlpvtns6ojl3fjdmbo8adcpsm',1413318036,'SSuHxcYZF90QuGSP8V5J8RaaFPOW6YzcYGVpe0I-Gdz8b-kO6EpKUU04gg5s1qO2'),
	('uo2j9gnjp7u3ngvgr3tk82v3l70orsep',1413315020,'4VZGyGzgk6UC7LxMRPZOWV64jQcSLYPn3rNfE4PD6Ffi_KBb1GgVK0kKam3AyLy6'),
	('s0bcd9rntflv79s6iuh8to1qc87fil7g',1413444188,'32vFn1Fea2ea__1V_Sis1SJKfOgLf-SyrOVPi4-3LWoTJWSoxyg68aPtUP9zMHAd'),
	('9hk0uqj3ebcj4m6b0vscfvlatte5053k',1413303323,'ha9i_Jg_AqgLYqAUCJ0J6PxQTtV-Y-rYOKaJhTWTlFFE1talMYRmFoM5st-k1j11'),
	('or2354ik13a77hdqlj1bckjok7gf35i1',1413303266,'DYrbc7TRDmRvNufveJX4KseCpObrfHJJMmKu74npSF0FB3oKbMWfiV0mvbOHFomq'),
	('mgmkgbhm7e9paqr56cua8sbr68vck0jk',1413299455,'Rcf7h0vaauraLbyazYGs4-UVY2nq5QIAu854Tfet5k83OFyvRqEjcIp-YVTIRZH_'),
	('r4tha4ci2kmh8fuqaqlkj13vgt0tn62c',1413299448,'EtbrDSzXbHABYhg9BYNkMm7IuUtqPWfcYdHeFNWTdjZiVWCGO-TwX6FjLeob5m5x'),
	('gt4kk3fk22csa3vhdigik6j08ggu7aj1',1413299004,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('4p8gl71cl405t0f6hvrn74cdj9j89kcn',1413298938,'LPlmzYqM5Z-LUAsz2TItJ3tu5yX2y4WVKCp1klHT5Fui4rfybbPGtxxvgRBqjCo0'),
	('bm8hdfg1hsec3bnqo48uide8n19harsr',1413292418,'ZDV1RoxYBgbTPtxkrETVwaglElf4MWg0h9BbCGs_EJEtI1FafDj32pSRyt0AnTOO'),
	('b8cv0s9krhesbidheo2u54suoh5e25j9',1413292412,'DWDVq6_Hrw0htE8BBtW2QMNcZPoYM-kqni_BycpPgcd_fdpnmC0im8cquj3UuSZP'),
	('1b2dbkjrk30agkgqa08v66qmdfp75f27',1413283264,'7nup3hBVDqje_yQYBgVwcKsOx8PnH_V_ttcO-ON3s9th6b5vytxR2BfPhsc8uAtH'),
	('l0f5of8qiif1hf4ok425v4ik6pa486ao',1413280102,'ikC61y2wo3NN-K_Ok3fOY05bhatkyuMb_3VnFi77H_gPp4iGCq1N17OlEOo_K_rX'),
	('uovtkgv8sslkc4g2dmiq9e0a142npgdm',1413277963,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('kknjotns0g8sj9e94utbid6lmmus4cv3',1413277913,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('8ujh0usevgjuti2fno16elv525d4v8j5',1413277887,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('rcin8unqsbt1qk8pac8n3epv416qbd1s',1413277087,'ikC61y2wo3NN-K_Ok3fOY05bhatkyuMb_3VnFi77H_gPp4iGCq1N17OlEOo_K_rX'),
	('711c91up0goccenc94apiqc0lrgq4o5l',1413273984,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('v12a2qo0sq2ilmho0n95ddta5f6nqa78',1413270398,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('urfk0kbjhenell6c9ef619pkrfq3vo7h',1413270324,'jV20PxnMHqlxv0AARAl3Wq5A5tvnb7Qbizp1PdeO2T_eXGy-m8J6lECNsWTk7kd_'),
	('cbqrhabkevao1kqmgu5bqsp2kpp4cd98',1413262766,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('g184c1h4korhvfket47tqg8ckt10nru4',1413261570,'BHsFRiZtyCmOGDh654IR6dUi2ApJ32Sv_w8F_vgwkQEJulg3g7nKqpnaSQQbfyCw'),
	('g41lgj285h1t916pap1kdjj2g9vpkb6l',1413260302,'ItvNCajsK4wKGwvCmppKnxtRf2VBWY-uzWTNn7qxaDFcm29lJTJZL2v-pFUaQdQ1'),
	('2bb8ufonpp5v9beftg5jp0ss7cbd7dgt',1413260155,'DYrbc7TRDmRvNufveJX4KseCpObrfHJJMmKu74npSF0FB3oKbMWfiV0mvbOHFomq'),
	('ca0t2bi4o05t3o5pjljpfpqv04k9fdjq',1413256681,'ha9i_Jg_AqgLYqAUCJ0J6PxQTtV-Y-rYOKaJhTWTlFFE1talMYRmFoM5st-k1j11'),
	('l6igvjgqtfd8agvdi968omol7aprldoc',1413256454,'nMaTf2P0h-XEwV43wLWoiTT7CEGGSPCR9-UbsRQtnMA86JMCf8sVOOPOUeKjjPgW'),
	('lgttahhlhf6viup9543du2ubjnvdp13h',1413248127,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('nlifvdd2v1hjh6cdtvv8j0bl949nrsv4',1413235973,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('mjqubnurvbd59oodifr6us0nocp81ic8',1413227881,'ha9i_Jg_AqgLYqAUCJ0J6PxQTtV-Y-rYOKaJhTWTlFFE1talMYRmFoM5st-k1j11'),
	('nd6hoiusru4qtfvr39hlvupm29r3io88',1413227160,'L68-TPKfnJUhgmfbbkgxwjk8DqNafJgjQ1q-O3zCMQ4Z82KkYI2n4wppOklwayLa'),
	('fmj2j1ov8sc0ajg65jut8tc5vovtij6n',1413225925,'HBcUFhmWCi2oYuRGU5fpdCIsaZVuAuWoXRPHyWRK4Dpfh8-BLamXOKyu-ka7C825'),
	('7u1bull5a9snb6ghqgj8icj44agasanl',1413224532,'MkwZzPotomJf7kMZg31TBt0NCYbJ67MQh0v43Gfz7pvn7VPQXLaCw4jsSTf2Tlcg'),
	('ia21clou29322k2egss6tbakhaots8h2',1413224519,'DySZTtVh4pwft58DeaH8G-3ld21K2ht-ywIyw24GPWm1jFLNU18SoqdbcU4fvhbB'),
	('usjk3s6s2hu6jmibprbijvadqpft8ave',1413222502,'bCPdxYGpCaDoc309bfvd4fXfNqNE5ameLJ4LISdHb7sCld8M8me0G4e75p1INLJj'),
	('53b66va41snpcm417d1soejuq0q481ne',1413221081,'79E8x2qrJ4OEgCXJcbqdiC-4U8toQiFAYibmIwf5Uz57dMtxL-TFBqh_84OEQwYg'),
	('qbkn31nqae6h73gkccm7lplbdvqaoc2c',1413221042,'meTxUvmOFVU_FsMohEL1pKoH5Gv-Ppwn2ZjEprRsQ0oMtDkJ8Qr9L4hTTdPfjWLV'),
	('m1toarepo41goja3svbkt5d6varhje7u',1413212564,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('e1f0bhulug5iu75vffjpfjctdjrab7la',1413212499,'Yc4Ap6yHS7Dg-WIIxSRSYwtX4BwEFXdfc3uRqqVVVg29xCTWcUMOHogdRoNo-CZP'),
	('npv0ab5ier2jpd6nki42niihdu32dqe5',1413211893,'7QhTjY2peMeCYfc8VSxuXsn9Al13txFH1aPqEMt29FmNdYALrU2GX19O2_XeZaEj'),
	('0b7h42iqditj61n762me94a382fn095g',1413211750,'JdDy6jw97gVrOx5cjGtFo0HLMTS55zGSiWEZ_8o5Rcy_fweEWoZuRl5QuU50UkCO'),
	('j1f35g2gnkbck4346qe0nearclnbg4rs',1413209301,'W3v03g7ca3ArZJ2wvUvURgoOwuhDpP9aVF7TlaPzdkzR3agsK5iblsMkgvXc-5M9'),
	('btq55e024ilu68b1u4cukn813ikm5sc8',1413208356,'Nz4CR_DEdjU2tXO0t059uOXJ_YzfFlGPvoZo10Nu6H2dEsN33ix3O1gVBeg9lDtL'),
	('isfjqlag8j0dms5lk5nhngq5n4v18nvc',1413206123,'z4Q-pzZxoHy1WwTkv-1MT-E7j2crbK-mSz0ZcJpE-1cBObmDcVAwKzh5RYVCxFWv'),
	('hfbae6g01srroskia34hbru3fmidbi77',1413206043,'lBkAjL1lalkkbPHuDOr_ueSJ3XhD7vudl5iLYovwio9wg_kqu4MV6qnXoEVJkin6'),
	('rcildqq39vjqkcbh88nsghmnn92dgbu1',1413204051,'YILhDbB1MaFfqyRWo2TW8HounXYeDpvJTJjpgaodg3LoraZBhCYYMHPnqR4Mk_DL'),
	('65ltv8gbt9kpnisrd03dnohinhgv4osb',1413203652,'Hcm6yAF6ZiWhfzkDOEYGMuZVbsEmG6aeg_DS7XFzEQJwCVcbaP1pAQA0z9A5yady'),
	('aq8faupsg1b70ivj390prjcffse6cp0c',1413196783,'2UNBf1AlWEOcmqdzJQx8uH6axjn-iT_xFVh2L-oqcWF5vHxWziZMJLMDD6iDUv07'),
	('vi2kiftknr81937hc8l3ud16bb0ol2us',1413192386,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('438j7uv28asi86olu5qjg8vkesh7qoom',1413188478,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('quv3qgr69konfu4ia89pljhhv3rlqoqn',1413184134,'yAdhZg0QEdT2rQnc8CJbpEkSTCcE6ZL72oJo7y9lOz0-zL7ZsCewVkW0x__EbR35'),
	('s876p0gsdqfs4k0pabqc1g3hpp1uqfr0',1413184054,'0EKk3fjcyNOgu8pK9et-GZH2IUJ2odE58LWKzVBDPz7jn69RCN_4q5x3jhtbjlLJ'),
	('evqhdt8nu0i0fiu7969rlfllsr18b8lh',1413173016,'bCPdxYGpCaDoc309bfvd4fXfNqNE5ameLJ4LISdHb7sCld8M8me0G4e75p1INLJj'),
	('h9d5hpd795hsof7onaci2vaj95bosk5a',1413166340,'5uOxKgGuvhwMtVdhhCkKKkUemiq63wDrT_8duc6KjbMh_r18Qs_iTE6tbTX_36QI'),
	('sgmrs989l6ge7sf7g5crmctou167omtu',1413163839,'WTbnfP7n71EH4JQwuziaoKKDPszda_KRVjN83cTbDRtJz9p6CimWeLBKhed2GzF8'),
	('2i5a00vq9achp1quo0tck5ude9lroa0i',1413159671,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('uls4j35svrppq5k2vl4gn4eejpfnmqu2',1413159666,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('7jr53rsv3id61tspq9suc2uerlir98ob',1413159459,'bK8cVyU01uYY7SD3l9yJ5jzTVzbvy3u-_RV6HbsBTd7EhhiR4xpHxQ707AhoqmqH'),
	('8kg3djjnjudk66q4geqjsrolffevpe4s',1413133543,'8UOIl9UE8BSj6WxnbaAqakEnPO1lXq12SQgvR4zsOUo89Ca1kW4YIEOnLYYMSqha'),
	('hdc6tlhl9tc8s675smjdeer4r9g3qspf',1413126194,'yAdhZg0QEdT2rQnc8CJbpEkSTCcE6ZL72oJo7y9lOz0-zL7ZsCewVkW0x__EbR35'),
	('s4pg2t4vmdvb9mmg33ngpis34150jrg6',1413126131,'Oci4--_3Owa6UOgPysa8nEq8BVnfFP5k9dhqEC-zGBDdtW6wnA9fnBFz3qBoaY34'),
	('to2md04j7qg62c8bie7sgh7ppsrooj07',1413123755,'hrzJBShibIo9uxX9ke8ZRa73bXKUX6zKi1mtGzDN2U54enYlZL9kJOZEWpUzCmds'),
	('6i6116s2stj36r6uj8vf04crq9l5v8u2',1413115399,'vZszR0-tQFLEaqXE8g9OBXqn4hNNENRWKu4kuAu7pJHnRxkiGTPoL07Kx46QcHj6'),
	('t5ggftb05iurtvoott8e2ea7i6a9ks6t',1413114437,'DdKvb4_Lz1DUSvixR3djuZr9bckeCGgaPWVnxatUX_wLFwJICCOn2OXI1grKFm_s'),
	('90p35k40tpqp9tupmbejgbddg7ir0v9l',1413110404,'DYrbc7TRDmRvNufveJX4KseCpObrfHJJMmKu74npSF0FB3oKbMWfiV0mvbOHFomq'),
	('pgci8id9lh0u4fc0ml0ofd1hpsmekcka',1413102156,'ZDV1RoxYBgbTPtxkrETVwaglElf4MWg0h9BbCGs_EJEtI1FafDj32pSRyt0AnTOO'),
	('c51g2h3adebrgrb7h43i1cbhgp0p2b1s',1413101144,'hrzJBShibIo9uxX9ke8ZRa73bXKUX6zKi1mtGzDN2U54enYlZL9kJOZEWpUzCmds'),
	('1hbdp1ihpelgl0p356njmrg2g96b8qn7',1413099372,'FIeNcOnDhszuC14E2qv9GgHwfg2xSelbt4af0xqlqinBg5ILCojnoHY1IfRi-STM'),
	('crse7oiqls1um4subn6r88slet9tf2pl',1413097705,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('lhsej9uojhjui37si2uthd0p4t33tbde',1413097627,'orZ9duGj-TznTSv1FegGPBxkIKK8OqKHlM9TE0CPUhGIziWEiX9fneJvR_eq1t9S'),
	('v2ik9gb584cksegrlke8lm7636no2b6u',1413068783,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('p7ddt3v290a4auvpkeg0p3ejff2odlnk',1413068708,'XTQrztNNIC9UTBpjSDwQUJmARjO0_qJj9h63sAVHt0T7aCHmi4dFllUm4YHJz40F'),
	('1p5r4i8j8oe4vd1ctbq4s249m9k0por4',1413065968,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('fllp8qja21kc61dj1eaucfo24sh9h9ju',1413065005,'fLodtxEvJOP_nMWhyQ4g9C2kgvtTnREeNs38Jg6ONzBnpyIyPDXFqs_geECHQ-gU'),
	('15ou673eqoie2hvglbepes88jnl37oag',1413062412,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('hhguib19r2a9lloj5f7dashgbockpvpe',1413057435,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('p75r9sqd4offjq91hb0c1kck5glt1epe',1413055741,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('7pbksephfclgsdnhe4k1qb8cu69u5q28',1413052708,'sBqllgRKJy72aDqO4y4h1uPINLRfmJk9U73ZZNIlL-NYOw46Npa-LlpM4-yPvG8g'),
	('pk09jmf2cudup4m2d3u32hpgt4t4cnfa',1413052683,'27kCg6QvCrrUY2d4dHeXCHdSOMeuKebOZBDF422kqUFQ8GMmPmrmCcgyjqa5GsWp'),
	('k8gfcqg0iem9mis6iqg3fv4f8d78oelh',1413050246,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('369dc074glh9sbscbtvu1raf1ofvn46m',1413048637,'Rl2HgBXUAQXPNj77v4g4wg4q_3USIWA-QVD67PpbQ5VhiAXyJeOCO2oQ7-F23TVB'),
	('m9qmjod8aeqdr3e8uoimhqh4lqu4u0i9',1413043499,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('ehrptt4g3cblf8chpjam45m1e7qte4sg',1413039748,'VBAHYT2t1tgzpLT4qOeiWowq19-tSDTCL1P1sgYHGAue2cBV7k54F8AfviNaN62P'),
	('8aio5itph18ngd5edfng81j74env6e98',1413039686,'R5xjEp9n3mUGTPe-SmNl21ubtaXmdOXioFqZq542EYi73lMKmLfypD0k9Fja505a'),
	('pthah4aqv4gpufa8673k6lh4i5a99u2f',1413038377,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('2bqmbad4l68t34bvn1upballkcibqipj',1413034767,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('6tvibjihl22rt8kmf5uj7cfo8ij488uc',1413034761,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('f6e3o7ahv008vn1ch5ob6sh4do3d1q93',1413034754,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('4pdjluu9d4norogumd8e3nkrbnghm4n1',1413034748,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('32rh8eh4mj3e2ds7b1j3k95f14qf4hsc',1413034739,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('47l8ndeijg3ho31u401e6c83jlpdg21j',1413034732,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('fu31mctjue7kjqubgep45aap9gos9vub',1413034725,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('11oc1klg0p4hhiepr5300n0u7bda4a0c',1413034719,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('qrc6os7dcae81ku5ronn77cufr9kersj',1413034712,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('o459n0btf8g54950svdvgksvuba6md70',1413034706,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('rqb2l8a7dsflndm09bo419j0ggrgk2vh',1413034699,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('742ui83ui02dugfsn4nt76jvat7kte01',1413034693,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('q3jc3qark2io6ir9jr8b67jt2gnipslr',1413034686,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('uv4dmaqkar0c9nlniriluru2mvkc4r0n',1413034677,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('202jo105ce8997r8ensbffje9pb9ihmh',1413034669,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('kihs24ohakr9m2tocomepaeumdrdb8vr',1413034661,'f1pxBKGNShRndE5YGv3whdy3XgRIbjz4TvipzKK__sp5BeQoVoAaTji5G8uhadBu'),
	('m22gakqrn1rl2090ao6s7lcbbkmlfhlh',1413031187,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('uk6rtlq6mn5cg3fqr7akqm82skkpv7dh',1413020938,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('jhja7kffiurns521b03us2sbfhtskgeh',1413017328,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('4c47peq18selvdnuclqb0p2skcvqtfp8',1413013909,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('17jg12g3rnpt8v90rbce67p3taea2fe2',1413011251,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('uihekn6c3q28ilj6fcps4aq1rgo5kavp',1413011175,'wDEwq-6a6XVmAZI_wo7KKiaSOR2hyLgpHpTPTQYeNhT0ExcLJbIPR-9J9SPuNZu8'),
	('asoqts3r2jacs57lf8edleq6qf4q1es3',1413010213,'5cq_KFRpCORWI4BjytZNgIG9qy3LM4xhIq7MyYUQdhwUQ-N2L_QiXcggF1TZJMMD'),
	('h53hve45htqtifnblmojjj78ab71i46d',1413010084,'jsMTlDlUzoU625PHt2-fIcZRr9Bqeci657I2Dwftd2P5VwvdQ47yWoKhrmlV45Hj'),
	('oak5k8lbhr00r0cdcgma8arvcpclavln',1413007885,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('isc954lvl43d0rfmir6qcim3ha51msf5',1413007843,'ha9i_Jg_AqgLYqAUCJ0J6PxQTtV-Y-rYOKaJhTWTlFFE1talMYRmFoM5st-k1j11'),
	('fpo9v6v08jim7qefprututafth9ck1d3',1413007776,'CnLvTHji_S5dLbjCWWgn04LCH6cfFZacRgqoKbLziEIYfZGC2OrA_nLiaFWQIJCn'),
	('satdeq3fbk5rllohuhhtsah0cnjhcgjj',1413006425,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('dim5i30aalqd5hgle3m13t4331sojhsi',1413005065,'DWDVq6_Hrw0htE8BBtW2QMNcZPoYM-kqni_BycpPgcd_fdpnmC0im8cquj3UuSZP'),
	('u13nbkumcprbvcjr70ujqc4uld6j7ags',1413005023,'6rQVWgPB2mb5cU-WoKM-pcNyHRz7vSBR77Bdi6YQLCd0ZEtUiY6NcITepabHaula'),
	('u4obabk8tp13aftkcoga6uj88of1n0ku',1413004538,'3TdJOLpeyLQ2CNgjSPMYlVharat55ujxUn5XXp7jnq9waeJXS537vip6j42RFHiV'),
	('1codituuuo0pjri1ir4vk8l6g2jkn09q',1413001092,'HZPv4nbg1wcY9ODBC-tpDoY2d53SvA979bMMQziyw32AHTYFqOdG4vPg11jIFnNW'),
	('g2l3o5m4tkh5g1fd6b8hdrqd7f977vmr',1413001051,'y1cODFxuKz0Rk-he63z66JxgLcPxhbN0igNmsCpzwT9uP_p43y2FK5n-J_TBVmov'),
	('is7sp3619dkcfc82up24t8obb85vl1nq',1413000671,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('bdflreob59lh8v47eo6g8k4fiei26tl6',1413000461,'-jzQh3TuQUR_KyNh6jtaVG07oxxGzJ-_h0MqPrcwZ2qcSruCcXVkWpbyiRuag-s4'),
	('4rr9u4dasg9qmo9425gq8usj60g9kpi0',1412998814,'Xe6oYbjgCs7DHujz5FDDSWUWjgec2Y7kWLZ3opV9sRNFxjnaTZhHwXBZFKf87SP-'),
	('m3jgojukfgnd3uj2q1bjk6jrkb9nqp1o',1412998791,'27kCg6QvCrrUY2d4dHeXCHdSOMeuKebOZBDF422kqUFQ8GMmPmrmCcgyjqa5GsWp'),
	('6q8pih9tt0jtn6hbujpsb5n62ublsn74',1412997029,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('28h7h4b6lvbhhnmulipmlmo7988417f6',1412993541,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('8nnl439tcds4i9i9i9mrnmv659kilimo',1412990138,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('2g10ibn2sufofgphnnic2p7uocb6ocpq',1412988658,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('qrqsjv1slflk192lh33di13i44onp5u5',1412986921,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('ca4i5vuiadnj2blsgmur5fhpikm80514',1412983169,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('vs0cf35l6l97f1t6svtr42uf0k5n49d7',1412982324,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('78v3s05jif55bcbvdsfl0bttmr9nfiqc',1412982251,'g1coWAUXly18lp2-oGVmaSUsjbsAavzfAw4BO0lwEs913IQ4Pl--_IFpGnFSD2fY'),
	('eu9skc2cu1cpj5oriskkdj3017v54qdc',1412976025,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('js44m6dvq461ppd70qg9i7cr11bln6ge',1412971553,'Gix1-y9D234Mk_3oX0A--12KuOm-DEYkcgeotBR_SZzf9rDV10-OdIk-q1mo-0e7'),
	('udm14jenh93t5o719akbu3m8p0cnn0id',1412971552,'Gix1-y9D234Mk_3oX0A--12KuOm-DEYkcgeotBR_SZzf9rDV10-OdIk-q1mo-0e7'),
	('1c73h8kflpb9ev7hljvkp56ooi6dprmf',1412971551,'Gix1-y9D234Mk_3oX0A--12KuOm-DEYkcgeotBR_SZzf9rDV10-OdIk-q1mo-0e7'),
	('0g72t7gag48n7ri3oklvjcggm1f8k5e1',1412969043,'qovxLGFzp7ndbFOec7gD--pbtfM2jj92I1ICe6rqLD4BmDkHyKLfLZnlMxP93ARr'),
	('p6996h98ttvmrnf3ggjlvfopsl4r5t5c',1412965056,'5cq_KFRpCORWI4BjytZNgIG9qy3LM4xhIq7MyYUQdhwUQ-N2L_QiXcggF1TZJMMD'),
	('5cb6ri2djd8sjikc1rlnisvhi89ti2k1',1412964824,'pPOx5IwTy9VdpFcUQmJWS25rTDuoOQIdg26C_gp4hm__NPMsxJBVDwV-MrVCo_ch'),
	('18aljo4pbaceojc6onqh0gnftj3d50fp',1412960969,'95thZI1IjMphBS14v3uDjmbYZFOUne-WDuS9xeSGtwuf0B5xXF_X4z9Gm_iTEGhn'),
	('gsj52o2b14b8i23r65f7ksosfjacpmi8',1412953327,'VBAHYT2t1tgzpLT4qOeiWowq19-tSDTCL1P1sgYHGAue2cBV7k54F8AfviNaN62P'),
	('81oan96vol652shnh222lpf3c0ncrb0i',1412953265,'TZ522icaWps4qBiT7cWNP5Iwpd8BGwqiqnaqEZOR1kGOClrMy8Uurti5UuuhgW_t'),
	('fe79vaev7632ga9escb9tbidr3f6o0lg',1412948171,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('sqf8d79vrkn8q3dben30om2jonb8n62k',1412941107,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('tnleg8csook7lc3jfu1snt038t2141do',1412933875,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('kngkdjc6jq45fg6med8kqu7e7sei3eqr',1412927245,'Sj1Rby21Z7dhAfqj9mmPX4F2Mn-QxVMdYykxUpfi8QTdNwPdzKCTzyZp_UWtPIaQ'),
	('2jvu1d0kp2ubsc1laihv5jg8i068cepn',1412924939,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('b9vf5d0ev08nmq3kku8llg1at0up3qru',1412924875,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('a7ust2kfftj3qouu6nsfel0sua6h9laq',1412924797,'tYYv_K8qM0wLXu1rNhuZvtwydchF7JX1nWCoZpYUkGmFyWAgrKwKwAJlFtovTafk'),
	('4ie54t7j4phv8eekt9s0bnsvfioqbp3h',1412924746,'xhMbDeANUE2zO9FS4GZrx1BWJZ1ZVMiYwgaUlEbsGN5cDzI7GwsM5B9gNEiAIdS3'),
	('k194tq96d0ij96cek3qjpkvf2gvrsh0t',1412921890,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('af0sjqqlr0un5167gek5n1f5blhdq6vo',1412914998,'0EH3Mqvo-CidZg8BQEwor8SZKCYBXwg1dYdgkINAbkX-R6-sah39zHQ1OkoZQkvq'),
	('f327idruvp91t0ffkjfqh9lcucvm5ane',1412914741,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('ojd3bp9mjjdbf15trf3k2gfq1lvu3bka',1412911846,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('1dt5k94rqr41aabcqvjfu028e0kkd0er',1412911806,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('cei43vlou2ghl8q9b2hmc8gc4eed6ni1',1412911767,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('67ldd5vtuianht9bke368kkvjkdvidvj',1412911729,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('u6efjfa91o3ime4qd8ge4h2ua7pulneq',1412911691,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('gshdu4useoourkhnasq0mt879ctpsiv3',1412911651,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('6he86mf8ndva0ks7rormh8s0ucu2du4n',1412911622,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('qc1hiop6p50idk04m83h9u7m9mi2ghss',1412911619,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('qnipmt77gu6hjl4vava615p1pmfq2nci',1412910867,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('o3mot1rnteslkukrujpmubfj9jk29nup',1412903939,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('7vdethdbs08t9fbtm6j30sdhsbpk4d87',1412903185,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('grbv8p4gcppnibdhbkje3dcie7b3sr32',1412903128,'eZ91O6gwRynRUm-c9Z3iEQhLQwXULjQluJ0wJSMOZVmnpyo4wx5stFaN2i_0uaIi'),
	('2cu2k1j569159np80vr89g48it6p865l',1412900179,'v0cvf20598G0YRGrGBwcKGig7JG1BDvmt2N3K3_IMN_DNmgHslWTliQc4wEsCRFc'),
	('camucv557jqeng1eda06rt28n3aad4r1',1412897372,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('1l5lg8vetdg2upp91s86va4d5hg5btsi',1412897365,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('prbudvdesh4mq9crnepn39vimthbeauh',1412897359,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('rn0imulidcukp33b76g1sstcja75f5tq',1412897355,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('9r56jqdhg0cr9iav80k23461s6nulqur',1412897348,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('jg1f2tsrtkonhkpk7ibrflojjm02pcjd',1412897341,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('u0hhq6n5s6ns1uktbo6goirqqithu4p8',1412897337,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('gt3216fgqc12o1hl9vdn63lidmro5bdm',1412897330,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('7jmfpmpah4gv5v2gbp6t499dik00ujds',1412897324,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('hem15vifkq4obb2gd8edp5q4j170qkb1',1412897320,'TLRlZAjb20An8qVQhWyEsVhUxlG5_rYEWvyinODB1lk6wUcawCjJ-mhllPBoPSKX'),
	('t6j3oiq5b685vnas5feliju9tq49gn9a',1412895501,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('iid8ftnlicfi4c2pm1se17gib5d978cp',1412893487,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('t5o4104s2snpi4lev9mm0amkuk24ao20',1412892142,'tbs5aGN6Yrc3a4l2OOQEN8sZX20CQirU1SK8bNJgWijCk7cdcXTcr6alO4xrx__h'),
	('d1t1mu4vvicqmh04lum90tle6d454h6k',1412892141,'tbs5aGN6Yrc3a4l2OOQEN8sZX20CQirU1SK8bNJgWijCk7cdcXTcr6alO4xrx__h'),
	('rsd6vk83jtrodjclto420ra482sbc87n',1412892139,'tbs5aGN6Yrc3a4l2OOQEN8sZX20CQirU1SK8bNJgWijCk7cdcXTcr6alO4xrx__h'),
	('i4pv8sekbifr03uorijmf698jj6hjbru',1412892011,'tbs5aGN6Yrc3a4l2OOQEN8sZX20CQirU1SK8bNJgWijCk7cdcXTcr6alO4xrx__h'),
	('k1c6rc1qa6h48msu6s4epg524bqocr3c',1412891854,'8IHfSnyiBiXMuqIPFdkUCfJDahcyCWJtj5LZReteoGGBU_uiyQF3Dzmauj_e-ZXv'),
	('mmcordgi7cbvuegs7hm8jkts6jrg2b4r',1412891036,'Wp7Rlu3pezVqJmq9se4Eoz5lbHwyu_prTBH30OomrIvu8didUoVuMurVSoZSkLt3'),
	('34lvdp9nequ04uvhe143oqv72at4jgl7',1412885465,'SgAk9hvEDFc08mV3dvMYG9elFN-1c9xGZd97ct6rwf-4Oa8qbAPeFQObODo43qK6'),
	('aoqiommcmcs0c6gprbb3f1aioc2ql9p9',1412883284,'4Y_XGa7rpkmND_6yF0dsyl9sQI9FUoEhfJ67GZGBA3OH-uruHnNE_MFhhSGQxVzw'),
	('utiis49marq6jg7os0k7hduc1dpq6g82',1412881181,'Xe6oYbjgCs7DHujz5FDDSWUWjgec2Y7kWLZ3opV9sRNFxjnaTZhHwXBZFKf87SP-'),
	('q8mu01pn9v2t0h37a5hkfencudilpss0',1412881081,'ja-Ut2PLFdc6jc3W1CJsNnHRE-CMvg8MuBUf-Wm87vcaQ6bct25eqcwPUTT2P5Z-'),
	('98h85psmlsmgm3s7i94i4ogbeiesoqqn',1412871738,'z4Q-pzZxoHy1WwTkv-1MT-E7j2crbK-mSz0ZcJpE-1cBObmDcVAwKzh5RYVCxFWv'),
	('pnukm7ps4b11bdtbg2d4mvnbpsd3hect',1412871626,'pPOx5IwTy9VdpFcUQmJWS25rTDuoOQIdg26C_gp4hm__NPMsxJBVDwV-MrVCo_ch'),
	('g1o4il3qgehj9os37943jnacc3of1bdm',1412867957,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('ubottt4a8na7886ev9k45a5qia8200ic',1412864646,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('n56ttqfsv514ae0irknkqtbr1n5r2v6o',1412864604,'mcjErinQJ80TBrVYcCwNIpCX4oOUx-te0hogWV005-UjGoxTYuZR3Zy-of9J3fQV'),
	('1d9pbpdf8cfbeuj9f25jpejucgd9o0ur',1412864478,'shVJTpXad5KlZx9GPnskkwy7OtosxrxGj_pVcbcSUiH-MipHlW8yDVl4aop1RLMD'),
	('3kb757jt7k89n860ru35u3td4hhhsr4q',1412860460,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('lbrt2aqsme1tjfnivl46ov06l78kngnp',1412853562,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('rhovpn8gl13gkvpau8qdg5qpb8oepp7l',1412847160,'bbWmQ-1Cw6YKd8S0Gi39Foocxux1cs1Okdwtwe7AqRwJZtVcvO2YVBDerxk8du8c'),
	('4jlob8deu2ofv3veim64dltklnj28rfg',1412845261,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('hqksdp8vdrgqr6d4t2qsqcc5his7b5dr',1412844321,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('t8sfcooh1co48upqe6727e6bakat0pla',1412835840,'9HhkMZkhH3iyu3NI4R-9VNRJB4cTBUw57UphJ9_ajFYtngXfmq7Yg0jAtd-o6TG-'),
	('2nvg32tpvc0hqn2habqe1je3dhdtoase',1412831218,'OrY_Asjejgckm40LaU3y74iFt4m8OgXUIyQ9KPhWvS3D1lSciMvztDch65b-oDH3'),
	('ke9c448h21p10867r5m5vp8vinru2nkq',1412825779,'i9wc5Jjyz-g_p9DSe1zVFWzE57daNzYSYbt5WMY7kFFJYUVZQcsXkTG_nUksr1rl'),
	('fvm48nof4kloivpjvuccdcb3ihc8e0rr',1412825555,'Oja27yvEaZ5sWMsB6BhoA6HSc1SlODD9mN5h-Efz9UkI9m3g-_hElwHYNZL9Jlqz'),
	('hlqldv2qjfkal6b8pll4phec7u8vuqcb',1412823753,'mWncYeGM9gOwLGX0YVsVYetvGISJP0VCAFCO0KWkG4qyVUTdgVGMV0v2uOC54XJq'),
	('gv3lmelr6i0opdsgpntieqe6k83mnjme',1412823687,'5PBSsa7zXudSdvZKCM4xxiN8caWh5n7db3168SlbWC-ShcAklTQIrQcsMpO1-kC9'),
	('8rsqbg7sqo1q7j84e14al57sghndd91j',1412820135,'0PIPhYfU0wI8GIL1iafqC15FTuHKNIZyh5xclfZoISfNNTqawdxXyLTJ5WmoYuku'),
	('nbio1ab7r75g5d56d4g1749nnmei9c8s',1412819278,'36XLK-2Oq4T2k_nYTxFPvRxusM8c--GSz_h1XOTRAtCbCXt4iNWVFVBCwzdKrcGv'),
	('d0eedm7115lo4ejqbdn72ol9lfmvpagj',1412814159,'0PIPhYfU0wI8GIL1iafqC15FTuHKNIZyh5xclfZoISfNNTqawdxXyLTJ5WmoYuku'),
	('f84svqu4gobtkqis8931ac13udt56s3g',1412807448,'Rl2HgBXUAQXPNj77v4g4wg4q_3USIWA-QVD67PpbQ5VhiAXyJeOCO2oQ7-F23TVB'),
	('7s9np9mnv1ib7nh09sbkdp29fl6ukfn4',1412803292,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('q16verhk4o4ktbkgtd6aa9tmq41n33s6',1412792514,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('tui2c2q80g0o1b675j8paqtl74lk31kd',1412792250,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('h5iectu20vluedsprdb6md8frmac2fr2',1412792001,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('76gkufma3evu5f0oup9mlt5gvl7ct464',1412791751,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('ggb6a4mtple3k3vtcbt1roc92q9vl8gl',1412791499,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('4vushbh1oj4p6camasrbmqgi2jj7ko0u',1412791227,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('d7l0cd16hp6rg66uj48fiustvkg0elnu',1412790983,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('cn11f0on6h7q0c4on81r60pqsdfhbmgh',1412790723,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('6004tb511fd1ovknurk5tro6bg5vmq5e',1412790466,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('v9jn6ujhkvb34od2hngbg19kkqenlfma',1412790199,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('o76lafkdot1262ljls9r5b64p8nuitto',1412789927,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('qdk73eunea95vs9vep5pkrgj5aarg8i1',1412789675,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('9ad5bv6mce45g3kt33aec7ra006g5k8h',1412789421,'xeKPCh4ugJDSFTWQCFyXcj5jQ9bQuSS0438PUh0oKoFQ6_bGwpI4v9WXRk0-0IUJ'),
	('goa5b5nve26526uc1oo2ktqfadhfvhdj',1412783223,'UrPr5-Lc-n7AJRS7w2kctIx33eCK9AJP0yFezKCkKoZ1jDB5LFqpMVch5fl22Tq7'),
	('4up034h78cp5kms1kkiuhvqq4n9d2846',1412781241,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('h9lovg3mhfa24mev58293et46a2ealkq',1412781172,'6zxlcAsPgz_dDWxbzD3R62G_maEax9xRUQHrhlsFn0QKAzmXJAPuEIvxSPJrhVIo'),
	('94sui0qdgko75nekqkpt0ev64rthu0g7',1412770139,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('rjv1cnr6lrl2kbtuqi1kfmrqle40igmh',1412765145,'s3aa6ApfxyY2Za4LwpU_RJppFqvRdrwNyPdMK34UjrQaz53YcbTTosy1ZJs7B7z1'),
	('hktn8h208mu07sjsh9hmfmebpnhoo3c2',1412762512,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('icdkarnb4gtf79o0bqvh10hogjhnl8g2',1412758867,'STPjcCmiGSOYxDlrTEX_XPQ3CaYAhym3bP1oA1DGmYMML5_0C6_zL6IMX-9UXnZp'),
	('33s7970b34vi7fcbpkeliqj866c9j431',1412755600,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('b9jdhjhpdog8oj9tlo1l4lel0drtdfkh',1412753452,'v0X0yXEsYd2Sv8WLuGeof27IqfkE5O5xh06G7NZE_JBMukD77M0mYq446Xps6Nqb'),
	('qfco50kvas1i1u3umospfegq441dlnba',1412748247,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('ar00ps9p4tma81msge2nvkadqjvo92pf',1412744844,'OX62TAAVPgE1iXtSV_ygYa7_-xQydOn8UoxS4Jv-Zd2AgGsJ0NoanhUBHdbboBIN'),
	('6c9chh8t12pdfb9jngsqrho535a4hu4s',1412744767,'fsmytEDa72Av2LarVBOb3mHosgz96GyVr7mtaLQ5rGd_hBCTBkz-eGNBMUbd4yiY'),
	('klivhll2fe3enpholqsdu6kecu59slr4',1412743685,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('is07jqrq0rc06ees24a3ddpm83snf8ce',1412742157,'wh9RlOlg-PT2cz7WtpMToVQ49k29B84xEsvPLKAbcpTRFpOK3BSiilINo0GylhHC'),
	('av13i0c0n3dhbupgv01blu1d9llacugq',1412741015,'XJZfhVwrzm_2gCVuyHXbJOLgG2RhI-2rjuhySCHE1x_csI5eugRVZqHByWkXcJm3'),
	('i4k9q0v87tq28f9rqpd79oib7stf96ff',1412734225,'0PIPhYfU0wI8GIL1iafqC15FTuHKNIZyh5xclfZoISfNNTqawdxXyLTJ5WmoYuku'),
	('f3gqop68om7om2fufpo75fmbhoptn2ug',1412729564,'FiPaZgRLZ-eMwzozrZ_eQIuWaFKvx-kiSjSEAe14MGp65aoYpU4J1HkcqYj5RilO'),
	('941r2l4oc5ha4sgntc7ilo7cp8pb6a1d',1412724250,'0PIPhYfU0wI8GIL1iafqC15FTuHKNIZyh5xclfZoISfNNTqawdxXyLTJ5WmoYuku'),
	('aqt7skfkmkrf34gkvc4fajp3mgmm2u22',1412722722,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('ilt4dsnvqhd7vr5f8robd88d70sm2m36',1412709193,'OUPazOGCiqaa-TI8JdgC4IDo7nbgYvG_JWkdR1VWGig7eSzWxen_n4MFbUsyAIij'),
	('f32v5ltq011d2ou6e8nacsurj6faim0j',1412706118,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('g7loldopfs45k4tle2tbe8p4bfefnsnh',1412705061,'Ew2OnycFZABHILdKbRZ2SlqsYcic7PJ44vMZGtLxQr9frQSU1Z4dnuV3cWCEl3Ux'),
	('hpfcnkcnvif1j9o9rki7v440m1531d83',1412701567,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('f9f7udg91637ro3foq2ffuq3nrl9dtg0',1412692142,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('v7dfale0dlugq6a7l9e2iurth6vv8t84',1412688864,'oHJAGv-iyThdD4OONZ3NeiZMXT-okigyG61hyro9PWxCPJRzcj5Azbkesfo8b1PQ'),
	('59ciftfog51cu82ok1th08nf5ju3aluo',1412688484,'1moacavSYfZFbz6gHVE8bSB4V1KpTLCpUVwnfzfLX95bSbWHpetG9jBOHuCsmLV2'),
	('6ahstm30sk9jfesnd2g84t131ja3ajia',1412687641,'xCRNtaaY_-x8omkwHhrv_U3OwArbYrPCZxGfS9WfNYf-p8__KmlDViYpu3wKs_kc'),
	('2mctiperd2o266815ontsu72kobgavh9',1412678713,'32vFn1Fea2ea__1V_Sis1SJKfOgLf-SyrOVPi4-3LWoTJWSoxyg68aPtUP9zMHAd'),
	('v86dkbn8f31eftbs09p28ot8j2a9sbrv',1412678036,'xhMbDeANUE2zO9FS4GZrx1BWJZ1ZVMiYwgaUlEbsGN5cDzI7GwsM5B9gNEiAIdS3'),
	('sp3m8l5m2ic64u0bpfvdb07mt0h5vlh6',1412677560,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5'),
	('h9drb2bnjmbnbs8ugagajm0fpand1rnt',1412673272,'xhMbDeANUE2zO9FS4GZrx1BWJZ1ZVMiYwgaUlEbsGN5cDzI7GwsM5B9gNEiAIdS3'),
	('qokng7tjr2uoapp7bcg1ue0bod3em47r',1412669123,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('te1sanddhgcfl9i6aged97ed0i2j31em',1412662974,'kjvkNa9vziXWEYGIulOwh3BhNNcvo23HuJ5qZzYmuVfvXnHHR6Lreqnr2YOdsf0x'),
	('tfviskpgam8a8la59h8l0ph80u8klsn5',1412662803,'EzzdcnOZrdPtsk_SWcX2bVfn8xBXHAqeWZk0L7U8blgh7mapLHD-1PjRJmkmprDp'),
	('n0taa9e7cm3vvlpk21rqmmtb60hd540t',1412658615,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('55jhvqr5p5e9v4rab72pols8nn2aorb3',1412658376,'BHNIhke-LsjS95cYLiMn90tGwVuBMf66oGw6881W3nQqi2rZbsybgRhV4hlBetPd'),
	('mmt6u70075ahf86soq1l0gti760q67jv',1412655504,'igCYct_gdw2Cao3OBFQTo_g-HlaRdpGCzjQp23HYaZwyec93AjZSGBGld-UngBEa'),
	('m2tb4rbksmmuufmm1h1i4n9avho0n47q',1412655273,'9EXXHXu0Os6jCFt2JAsMko6N-qdEXlPwP6nNHlR_B3TOhZvGB0pDljFhyeZzwzpO'),
	('ulj89ik3jf02pr5nbv5f5ksjqb70dtmh',1412655247,'AqDlg6X1tUkVX9azxMq1QwPAcvzukFAUm56H3FujdP6avpAsj4pkRipvaLWowp12'),
	('eheh1f6p3idt59dor2s7crrb90ugbksk',1412647733,'DiSVLZf8CcdT5mhzAIzbYbuOlz5s8IZ2btjUK__pZPkEn0vlRjeTVupWudh6Iyy6'),
	('ljm99gb7m8nec0ei9dav18uds6h48h7q',1412641365,'nMPGR4Ci0XXzSvHOi1g1FQKcCiVvK-PM6FaWpcjlYxaaoX5gE2dc4JtgbQhFKnOT'),
	('ppimo471ceof1o9vpk128p2iv337pb3h',1412641196,'ZVdBb0lIGxXY48uQ0XT-46EFXHSJP5024YUICciY9HIUAM9czqwcfCsFRjL-ChkT'),
	('28bnhd9vpkvsqr759354bjc7h85toq7s',1412640506,'nL-6JBJ2Z9kQz_rLVoTFcweRE_2h8BvWq26we1uTMKDJO3YysY7-dK2ZxKIbFGzD'),
	('pc1osi8u2id6rik9tkt9a4409fo0nj9d',1412637703,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('k2agene4bmn1co4s1j206msnofrikpok',1412635008,'yP-D6girhutknI2pgIEWDf5GsA8NvCKD4D_U5e_tMOUc6FFoKmEVhNSLz45_so6T'),
	('6tue51q3r8sh28mouh3v8gkgqiqb99s2',1412634250,'cShQWrDnRS-vSwmgxFD0-QPOXUnVHfBBkIghSRhB3DbLS9VHKL7AiS1J5T26PVzb'),
	('ui3iusmljnrnmj5f3296uos1nbcd7v3m',1412630905,'XgKm0Cx7dhle-ce4eSpcWvE1bcoHR932RIyeh8oNi9Zllc038yh52V3mdCEKqn2C'),
	('kaq6a99g7qn939mce82nnn53cbjvj603',1412630697,'ha9i_Jg_AqgLYqAUCJ0J6PxQTtV-Y-rYOKaJhTWTlFFE1talMYRmFoM5st-k1j11'),
	('doth24odi5bubhkdg4opggnpc7ate288',1412627281,'LzVMrd4bShUgv8E58cxO4tCMVCgZm9vp-JwKXWKWbbP3rCXyzcH8-fac7ZSZvwFV'),
	('sb4ukfn1ero3mgk9mdrejnkqamrb267s',1412625477,'ukpGH_AF7Vy8UbkcL8yPA6iUYFDpfilSBg9Jb-JTEZMs5sUM-rVW7FL90sti02KQ'),
	('h6v68dk3113dk5qgdk8r82cvuqm1hegh',1412619241,'YsT5C6v5ffVTwKZOZUasSSNsZjfPVWgZ1vc5BNqHoZneeywaYPoNjYYgSmBglp2h'),
	('41i626hmocum7fojrrc84gfaj6nffu5o',1412618668,'JCC56sjrBOabRt0oHk7ic6LXXxu4CQsGhCZ8IU3VZ2zh-Rq9PvoB3vlNNbvZsV_D'),
	('i19rigf9pn64b4gjnjftqupmpblodnck',1412614100,'eHSxQp5qhvVJFCQu5t0egwP8IzyZXMttFc6TiMWf3MvjD2W0v3rl7mAPf3J_kdcq'),
	('3qq47u48fgf1bho0euego4mbuhg19b74',1412611443,'BHV_kvoGk6SNogx2M4NnhJaMzL8aURItETGyeMOv2eJ75bykgVrvaPaoUIOOxYgl'),
	('bcp217ispvu7qn0qaocam6p53nbfg61i',1412597982,'6rQVWgPB2mb5cU-WoKM-pcNyHRz7vSBR77Bdi6YQLCd0ZEtUiY6NcITepabHaula'),
	('23ec6ufairoe7aldt114lvho81rc03u5',1412597893,'kjvkNa9vziXWEYGIulOwh3BhNNcvo23HuJ5qZzYmuVfvXnHHR6Lreqnr2YOdsf0x'),
	('9l4ormvi1pm8jdkgu21k8q1v2v0n8rmo',1412596216,'89A7O6Sfh-vX1CzGyDZ_-VO9uwAyFFFp100DhzuENNJCCcN9oW6mC5tKTnG9dtCB'),
	('7dc7sn90lf3u1ib6r8dm8o95f5rjvo44',1412594720,'dAwO_MXgXb4MlRgneWldFucwjnbFTYFxR-_HEfBugYJgHMM7uz0okVD6t799yD-6'),
	('a864m7r3j8f81cojja63fdj0jgvu2ktl',1412594637,'RPW_FLyBD-tOpqh0yewMfCQZwEEPjUEEHMh8icVfJSSwHr-pwtcncJ3NeoLXOWoi'),
	('orc6lhl4c98405d61vpdr10lre0uf606',1412590071,'TJIY_vvWtg8x14P3UhIlRoW_aSP2OIfeo2goZqyem3bbwV82SO5s3MWtmWOm9PcZ'),
	('u9mqthfpkgdfa7k4f63vc57gmgir0cg4',1412589777,'aeJimjnVjYwbBp3R1V4_wHn4XCZ5gdME68nIU323AuMl1i5GUc01ZumtYO1LNDMB'),
	('i3uogn9dlamo7sisq1mbj79gmluflsun',1412589452,'aeJimjnVjYwbBp3R1V4_wHn4XCZ5gdME68nIU323AuMl1i5GUc01ZumtYO1LNDMB'),
	('mqfdfuuj61idhtv29tpfjsqb60v2v934',1412587291,'STPjcCmiGSOYxDlrTEX_XPQ3CaYAhym3bP1oA1DGmYMML5_0C6_zL6IMX-9UXnZp'),
	('ka3g4ock0kpdg04se20vqg1n9djana7d',1412587286,'1TyZdhzArSfUHyfZi_-13g6O8qmcc0mWaEGtqDNw-5PKIjg8SWEpvhHo9qMDq56a'),
	('9t9p0ica9uclferv0u39eijti6jeh9er',1412586199,'ltqkR1YCcvhGNw7oxdYZ902g4FMZ6maGTdmfaV306yFTisbCcZkmQQli9ZequXk5'),
	('p4sdlj1hre7vdt53j363n4c05ipfgam4',1412586130,'dPCyRdO3D1mr1XGcA-nb68x_o2DWpS0Qnf7CKjUMyi9rnozBUNakM1nAzUadfVRO'),
	('o1bdnaag835qtf8jrl1f47oplb6o3jgs',1412583987,'CbVriRwXgiHz4SNCOJWT7By11pFNQA2Zgb7ebWFCPMgkz1NTfNtoy9uCGwggI31Y'),
	('t7lcvr0sovus1tkfbeg22kupodqmmuom',1412583975,'CXcpg0uhXdYgr37NuW7CTCcETv772VruDSg-VulAda7fkqrrQVEOzS9YGYpZufAC'),
	('o2n05be8rgv841u7l1gdmigml2h97mjq',1412573597,'TJIY_vvWtg8x14P3UhIlRoW_aSP2OIfeo2goZqyem3bbwV82SO5s3MWtmWOm9PcZ'),
	('j6ftqjba0p67rn3nj8f1e53cpbja6e9j',1412572663,'oHJAGv-iyThdD4OONZ3NeiZMXT-okigyG61hyro9PWxCPJRzcj5Azbkesfo8b1PQ'),
	('84s3effmridabii9rkp6gplt6l8cn53k',1412572564,'-9318d2AP8p2YhjWroxJ1I1qzXvNrWVwDJxZUt2ZAh7J3LaWct1nyqn4FVdQGdgi'),
	('ce79rrldctmm0ghjp284g0mlqb9ih6j9',1412569209,'dFREiO5UV1o1TRmg4HAaLsbJ0_NurDua1q0DKCvnT-ckRHwwbFdSUFp_wVmrftNA'),
	('87bd8516er08ebkb2nrrvvedtbufle6q',1412569158,'Ti0oJZMW4YvSi_kohMYVQDoT2Jt8jNRLjHuSBvXd21BXUAl2X88SqVxbCFKQ_B4r'),
	('899l1m9j9k984ctek2jb5c2km2nhj5oj',1412567692,'ukpGH_AF7Vy8UbkcL8yPA6iUYFDpfilSBg9Jb-JTEZMs5sUM-rVW7FL90sti02KQ'),
	('au80f3m3ei2lv51o6s1niiso6ir4vhau',1412551922,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('f7jjlqegsfe5anvq53arucctt3k08k9a',1412549180,'ghLWcNxcPRJfBbmNUQ7opHqMZyWQlebi-fZADpjqU1eFKy-O66C2Jq_VqKhDZ6tJ'),
	('58huuoog2dgft37qvdqfnplrbdg9f53q',1412544366,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('fel00jaipimtkbgf2clflpcpp8naek1h',1412543014,'TJIY_vvWtg8x14P3UhIlRoW_aSP2OIfeo2goZqyem3bbwV82SO5s3MWtmWOm9PcZ'),
	('3pnje1chlsupfah58m49gh0cehl4c7o9',1412542869,'DYrbc7TRDmRvNufveJX4KseCpObrfHJJMmKu74npSF0FB3oKbMWfiV0mvbOHFomq'),
	('1hhrcuum0fbr0re8lut63arehhidq8ov',1412541349,'Ti0oJZMW4YvSi_kohMYVQDoT2Jt8jNRLjHuSBvXd21BXUAl2X88SqVxbCFKQ_B4r'),
	('nlakn1beo0j0lf5uqjcvji45sq751h11',1412539391,'ukpGH_AF7Vy8UbkcL8yPA6iUYFDpfilSBg9Jb-JTEZMs5sUM-rVW7FL90sti02KQ'),
	('fql8dpd8oii0qfbgcg7av3glkklsr245',1412537886,'1dMoJYjMhvU8ubqjiyGSQ9Z4RSpzdlF51UzVFlJEvytAl-8Cu3HDve2f9MX_YiTe'),
	('10jg6u93in48h3ia4ren9r50m3mg2nkn',1412537214,'lBTHI9DUPmZ3a-t_oO10nYn6ZXsWwooleZ09gpap4mrWV762yBH78Y7DX9u-vo2f'),
	('nrckdje5uokjh29gt3gg4ic28jdk0nnq',1412536756,'WyiS4j5IWPenyfE3T-cVi2W6CIUPNWUZnJTCO0TH0zKWKRZSBZBhZzwuJP-eHu01'),
	('75trktq81j9nf5kt0voogn5bu6q5kcmo',1412535926,'RT7MXewvab1XfKnkHrPw1cC-AWOaDc5wxkyzHNC7aF3io7u-nepxzQ9YqCdWXUWw'),
	('9b3flbfll6a755kopgv69cfkesctaev1',1412535853,'ZUZ4l0Zz7WHqEgtzIpTGBy1tHGEGx9pp3KVlpHHEWwFVpYsPP0XWH2UMcdHKIJRm'),
	('gflumtgb9d3g7cacfvr11vm6tsevorva',1412534578,'TJIY_vvWtg8x14P3UhIlRoW_aSP2OIfeo2goZqyem3bbwV82SO5s3MWtmWOm9PcZ'),
	('ehj16r6b1asfpt1m7md2pr77l35l5ack',1412533739,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('gbpf06jol6du7s9e402flhbllu0e4giu',1412528865,'SgAk9hvEDFc08mV3dvMYG9elFN-1c9xGZd97ct6rwf-4Oa8qbAPeFQObODo43qK6'),
	('uesf9ah50qttommc08popmbavdevc4mh',1412526840,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('j28bhepg3svogd2r5pdao1e1gp0q0f2t',1412526103,'RBW5cib6RW6C77p9tetjUvDHcNcDLSY8bf8ChDrKhDxWW2w21RpkOyI1pGvHPQa9'),
	('2acmarf6g7t8rd06iebojv9no29sdja3',1412519491,'aeJimjnVjYwbBp3R1V4_wHn4XCZ5gdME68nIU323AuMl1i5GUc01ZumtYO1LNDMB'),
	('ta3tfo79ft7e50lbjk7bt976kvm592s7',1412519436,'dH7xpTwIVNcQR08yXRV7EjdPMHrbjjt6PuMusKmS5PENq9d2UAZgTJTmlYWPwOP5');

/*!40000 ALTER TABLE `modx_session` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_content`;

CREATE TABLE `modx_site_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(255) NOT NULL DEFAULT '',
  `donthit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(1000)),
  KEY `uri_override` (`uri_override`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`)
VALUES
	(1,'document','text/html','Work','','','work','',1,0,0,0,1,'The personal portfolio of Lukas Jakob Hafner. This is a small selection of projects I did in the past.','',1,3,0,1,1,1,1309986102,1,1314988798,0,0,0,0,0,'',0,0,0,0,0,'modDocument','web',1,'work/',0,0,1,NULL),
	(19,'document','text/html','ofc','','','ofc','',1,0,0,1,0,'','This interface draft for a quiz-game is the result of a 48h Hackathon organized by Bonnier Publications: <a href=\"http://www.bonnierdevcamp.fi/\">http://www.bonnierdevcamp.fi/</a><br>\r\nThe graphical style matches the style of the woman\'s magazine Olivia published by Bonnier.<br>\r\nIn the short amount of time we were able to implement it on an Android and a Windows Phone Series 7 (demo-)application.',1,4,3,1,1,1,1323773245,1,1323774143,0,0,0,1323773340,1,'',0,0,0,0,1,'modDocument','web',1,'ofc.html',0,0,1,NULL),
	(3,'document','text/html','About','','','about','',1,0,0,0,0,'Short introduction of myself together with my curriculum vitae.','\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">Introduction</th>\r\n	</tr>\r\n	<tr>\r\n		<td>\r\n		Hi, I\'m Lukas and this is my portfolio. I am 24 years old and I studied design at the Free University of Bolzano, Italy.\r\nRight now I live in Helsinki, Finland where I started my own company together with two friends. I have experience in branding and interface design. At the moment I am also a project manager in a PDP project at the Aalto University.<br /><br />\r\nWhat I really enjoy is everything related to human-computer interaction, I love to find simple but functional solutions for whatever problem there is.\r\n		I don\'t like to just take things the way they are, I\'m always looking for improvements. That is why I constantly challenge myself to push my boundaries further. On my free-time I like to experiment a lot with technology, especially with everything web related.<br />\r\n		<br />\r\n		I really like to get challenged, the harder a problem is, the more enthusiastic I get about it. The solutions I am looking for, are simple solutions every child can understand and bring a smile to the ones who use them.\r\n		\r\n		</td>\r\n	</tr>\r\n</table>\r\n<table class=\"vita_table header_candy\">\r\n	<tr>\r\n		<th class=\"header_candy_header vita_title\">Education</th><th class=\"header_candy_header vita_title\">Employment</th><th class=\"header_candy_header vita_title\">Experience</th>\r\n	</tr>\r\n	<tr>\r\n		<th>2011 – Present</th><th>2009 – 2011</th><th>2011</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Aalto University<br><span>Project Development Project</span></td><td>Lunatone<br><span>Interface Designer</span></td><td><a href=\"http://booncon.com\">booncon.com</a><br><span>Startup</span></td>\r\n	</tr>\r\n	<tr>\r\n		<th>2007 – 2011</th><th>2006 – 2010</th><th>2008</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Free University of Bolzano<br><span>Faculty of Design and Arts</span></td><td>AudioVision<br><span>Camera Assistant</span></td><td><a href=\"http://nomonkey.at\">nomonkey.at</a><br><span>Inspirational Blog</span></td>\r\n	</tr>\r\n	<tr>\r\n		<th>2003 – 2006</th><th>2005</th><th>2007</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Gewerbeoberschule Bozen<br><span>Industrial Informatics</span></td><td>Frigotherm<br><span>Internship</span></td><td><a href=\"http://www.audiovision-lechthaler.it\">www.audiovision-lechthaler.it</a><br><span>Corporate Website</span></td>\r\n	</tr>\r\n</table>\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">Software</th>\r\n	</tr>\r\n	<tr>\r\n		<td>MS Office, Photoshop, Illustrator, InDesign, Flash, Rhino3D, Processing, After Effects, Final Cut Pro, Color, XCode, Interface Builder, Espresso.</td>\r\n	</tr>\r\n</table>\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">Programming</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Hand coded CSS, HTML, JS (+ JS Frameworks i.e. jQuery). Basic Objective C, SQL, Java, PHP, ActionScript.</td>\r\n	</tr>\r\n</table>\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">Skills</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Web design, interface design, wire-framing, conceptualising, video editing, animations, programming, data manipulation.</td>\r\n	</tr>\r\n</table>\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">General</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Good team worker. Proficient in written and spoken German, English, Italian. Very thorough and efficient.</td> \r\n	</tr>\r\n</table>\r\n<table class=\"vita_table\">\r\n	<tr>\r\n		<th class=\"vita_title\">Interests</th>\r\n	</tr>\r\n	<tr>\r\n		<td>Web, Reading, Travel, Cinema, Music, Cooking, DIY, Basketball, Running, Human–computer interaction.</td>\r\n	</tr>\r\n</table>\r\n',1,2,1,1,1,1,1309987533,1,1327144460,0,0,0,1309987560,1,'',0,0,0,0,0,'modDocument','web',1,'about.html',0,0,1,NULL),
	(4,'document','text/html','Skype - Plain Modern','','','skype-plain-modern','',1,0,0,1,0,'','This is a chat style for Skype I submitted to the Skype for Mac competition. I kept the style as simple and clean as possible, giving it a neat yet modern touch.\r\n<br><br>\r\nCheck it out: <a href=\"http://macthemes.skype.com/themes/93\">Competition entry</a>',1,4,2,1,1,1,1309988174,1,1310040187,0,0,0,1309988220,1,'',0,0,0,0,1,'modDocument','web',1,'skype-plain-modern.html',0,0,1,NULL),
	(5,'document','text/html','Dali Server UI','','','dali-server-ui','',1,0,0,1,0,'','Conceptualisation and elaboration of an interface to control a lighting system.\r\nThe interface was designed for a proprietary touch-panel and then ported to work on the iPad.',1,4,1,1,1,1,1310040549,1,1310065969,0,0,0,1310040720,1,'',0,0,0,0,1,'modDocument','web',1,'dali-server-ui.html',0,0,1,NULL),
	(6,'document','text/html','iGoogle - sleek_dark','','','igoogle-sleek-dark','',1,0,0,1,0,'','This free theme for the customisable iGoogle website is something I made as a small project on my free time.\r\nI got completely surprised by the huge amount of people using it. At its peak the theme had more then a million users, today it still is very popular.\r\n<br><br>\r\nCheck it out: <a href=\"http://www.google.com/ig/directory?hl=en&gl=us&type=themes&url=saftsaak.altervista.org/sleek_dark_saftsaak.xml\">sleek_dark</a>',1,4,0,1,1,1,1310041273,1,1310066009,0,0,0,1310041320,1,'',0,0,0,0,1,'modDocument','web',1,'igoogle-sleek-dark.html',0,0,1,NULL),
	(7,'document','text/html','Lyricalizer','','','lyricalizer','',1,0,0,1,0,'','A software that displays a song\'s lyrics in an interactive way. The user can move the mouse while a song is playing to change the look of the lyrics.\r\n<br><br>\r\nCheck it out: <a href =\"javascript:window.open(\'/projects/lyricalizer/\',\'mywindow\',\'width=960,height=560\')\">Lyricalizer (Java Applet)</a>',1,4,4,1,1,1,1310041424,1,1351768317,0,0,0,1310041500,1,'',0,0,0,0,1,'modDocument','web',1,'lyricalizer.html',0,0,1,NULL),
	(8,'document','text/html','z610i Themes','','','z610i-themes','',1,0,0,1,0,'','Four themes for the Sony Ericsson z610i. One of them is inspired by Mac OSX, one by the iPhone GUI.',1,4,10,1,1,1,1310042208,1,1310042285,0,0,0,1310042285,1,'',0,0,0,0,1,'modDocument','web',1,'z610i-themes.html',0,0,1,NULL),
	(9,'document','text/html','iMakeMusic','','','imakemusic','',1,0,0,1,0,'','Semester-long project in University. The heaphones generate music out of the sounds they “hear“. They don’t isolate, but they connect the listener to its environment in a new way.',1,4,12,1,1,1,1310042621,1,1310042719,0,0,0,1310042640,1,'',0,0,0,0,1,'modDocument','web',1,'imakemusic.html',0,0,1,NULL),
	(10,'document','text/html','FillMyScreen','','','fillmyscreen','',1,0,0,1,0,'','Flash website for a university project. Contains an interactive section allowing to pin different pictures onto the pin board by clicking somewhere.\r\n<br><br>\r\nCheck it out: <a href=\"/projects/fms\">Fill My Screen</a>',1,4,6,1,1,1,1310042903,1,1310043283,0,0,0,1310043283,1,'',0,0,0,0,1,'modDocument','web',1,'fillmyscreen.html',0,0,1,NULL),
	(11,'document','text/html','it.Tastes','','','it-tastes','',1,0,0,1,0,'','it.Tastes is a kitchen appliance to measure the amount of salt in food.\r\nIt is a spoon shaped like a tongue. The idea of it is to help the cook use the right amount of salt in a simple and entertaining way. Dipped into any kind of food the spoon shows the amount of salt in it.',1,4,9,1,1,1,1310043411,1,1310044472,0,0,0,1310043600,1,'',0,0,0,0,1,'modDocument','web',1,'it-tastes.html',0,0,1,NULL),
	(12,'document','text/html','Hypercube','','','hypercube','',1,0,0,1,0,'','An animation which shows the evolution of a pattern. The animation was projected onto a cube, so that it can play with three dimensions.',1,4,5,1,1,1,1310044775,1,1310045356,0,0,0,1310045356,1,'',0,0,0,0,1,'modDocument','web',1,'hypercube.html',0,0,1,NULL),
	(13,'document','text/html','Lokale Kinospots','','','lokale-kinospots','',1,0,0,1,0,'','As a team we created, filmed and edited a series of three spots for a local web portal.',1,4,8,1,1,1,1310046597,1,1310046691,0,0,0,1310046691,1,'',0,0,0,0,1,'modDocument','web',1,'lokale-kinospots.html',0,0,1,NULL),
	(14,'document','text/html','maakeeFTR Light','','','maakeeftr-light','',1,0,0,1,0,'','A font I developed for a typography course at the university. The font is not complete, I just made the capitals also the kerning is not perfect. Feel free to do with it whatever you want.\r\n\r\n<br><br>\r\nCheck it out: <a href=\"[[++site_url]]assets/_img/maakeeFTR/maakeeFTR-Light.otf\">Download</a>',1,4,7,1,1,1,1310047028,1,1310058393,0,0,0,1310047740,1,'',0,0,0,0,1,'modDocument','web',1,'maakeeftr-light.html',0,0,1,NULL),
	(15,'document','text/html','Facebook - freedom','','','facebook-freedom','',1,0,0,1,0,'','I developed this little extension for Safari for all the people who are addicted to Facebook. Whenever browsing to Facebook, freedom blocks the content and shows a blue screen instead. It tells how long it has been since the last Facebook visit. If you really need to gain access to Facebook you have to click a button.\r\n<br>\r\nThe plugin is still under development and I\'m not responsible for bugs associated with the downloadable preview.\r\n<br><br>\r\nCheck it out: <a href=\"[[++site_url]]assets/_img/freedom/freedom.safariextz\">Download</a> ',1,4,11,1,1,1,1310050341,1,1310058453,0,0,0,1310050680,1,'',0,0,0,0,1,'modDocument','web',1,'facebook-freedom.html',0,0,1,NULL),
	(16,'document','text/html','Contact','','','contact','',1,0,0,0,0,'Everything you need to know to get in contact with me.','<div class=\"col3\">\r\n	<h3>Address</h3>Lukas Jakob Hafner<br />\r\n	Pursimiehenkau 15A10<br />\r\n	00150 Helsinki, Finland<br />\r\n	<br />\r\n	<h3>Contact</h3><a href=\"mailto:saftsaak@me.com\">saftsaak@me.com</a><br />\r\n	+358 458980609<br />\r\n<a href=\"skype:saftsaak?add\"><img src=\"[[++site_url]]assets/_gfx/skype_button.png\" alt=\"Add me to Skype\" /></a>\r\n<br />\r\n<br /><h3>Socialize</h3>\r\n<!-- Thanks for the icons to komodomedia.com -->\r\n<ul class=\"social_links\">\r\n<li><a href=\"http://www.twitter.com/saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/twitter.png\" alt=\"Twitter\" title=\"Twitter\" /></a></li>\r\n<li><a href=\"http://www.facebook.com/saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/facebook.png\" alt=\"Facebook\" title=\"Facebook\" /></a></li>\r\n<li><a href=\"http://plus.google.com/106197809204452647589/posts?hl=en&amp;tab=wX\"><img src=\"[[++site_url]]assets/_gfx/socialicons/google.png\" alt=\"Google+\" title=\"Google+\" /></a></li>\r\n<li><a href=\"http://at.linkedin.com/in/saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/linkedin.png\" alt=\"LinkedIn\" title =\"LinkedIn\" /></a></li>\r\n<li><a href=\"spotify:user:saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/spotify.png\" alt=\"Spotify\" title =\"Spotify\" /></a></li>\r\n<li><a href=\"http://saftsaak.deviantart.com/\"><img src=\"[[++site_url]]assets/_gfx/socialicons/deviantart.png\" alt=\"deviantArt\" title=\"deviantArt\" /></a></li>\r\n<li><a href=\"http://www.youtube.com/user/saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/youtube.png\" alt=\"youTube\" title=\"youTube\" /></a></li>\r\n<li><a href=\"http://dribbble.com/saftsaak\"><img src=\"[[++site_url]]assets/_gfx/socialicons/dribbble.png\" alt=\"Dribbble\" title =\"Dribbble\" /></a></li>\r\n\r\n</ul>\r\n<div class=\"clear\">&nbsp;</div>\r\n<br /><h3>Projects</h3>\r\n<ul class=\"project_links\">\r\n<li><a href=\"http://booncon.com\">http://booncon.com</a></li>\r\n<li><a href=\"http://nomonkey.at\">http://nomonkey.at</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col6\">\r\n	<h3>Send me a lovely message:</h3>\r\n<div class=\"message_text\">\r\nIf you would like to find out more about one of my projects, have an interesting job offer or would just like to say hello, please use the contact form below to drop me a line. I am looking forward hearing from you.\r\n</div>\r\n<div class=\"message_wrapper\">\r\n[[$contact_form]]\r\n</div>	\r\n</div>\r\n<div class=\"col3 last\">\r\n<h3>sftsk</h3><img src=\"[[++site_url]]assets/_img/me_wall.jpg\" alt=\"pic_me_wall\" />\r\n</div>',1,2,3,1,1,1,1310113441,1,1351770666,0,0,0,1310125380,1,'',0,0,0,0,0,'modDocument','web',1,'contact.html',0,0,1,NULL),
	(18,'document','text/xml','sitemap','','','sitemap','',1,0,0,0,0,'','[[!GoogleSiteMap]]',1,0,2,1,1,1,1314108934,1,1314109318,0,0,0,1314108900,1,'',0,0,0,0,1,'modDocument','web',2,'sitemap.xml',0,0,1,NULL);

/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_htmlsnippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;

INSERT INTO `modx_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`, `source`, `property_preprocess`)
VALUES
	(1,'maakee_header','',0,0,0,'<!doctype html>\n<!--[if !IEMobile]> <html class=\"no-js iemobile\" lang=\"[[++cultureKey]]\"> <![endif]-->\n<!--[if lt IE 7 ]> <html class=\"no-js ie6\" lang=\"[[++cultureKey]]\"> <![endif]-->\n<!--[if IE 7 ]>    <html class=\"no-js ie7\" lang=\"[[++cultureKey]]\"> <![endif]-->\n<!--[if IE 8 ]>    <html class=\"no-js ie8\" lang=\"[[++cultureKey]]\"> <![endif]-->\n<!--[if (gte IE 9)|!(IE)]><!--> <html class=\"no-js\" lang=\"[[++cultureKey]]\"> <!--<![endif]--> \n<head>\n	<base href=\"[[++site_url]]\" />\n	<meta charset=\"[[++modx_charset:lcase]]\" />\n<meta name=\"google-site-verification\" content=\"JrtXFdtPAh_NfWFs4urh2_kApTZDlhWepNyKDTVbTt8\" />\n	<title>[[++site_name]]</title>\n	<meta name=\"description\" content=\"[[*introtext]]\">\n	<meta name=\"author\" content=\"Lukas Jakob Hafner\" />\n	<link rel=\"shortcut icon\" href=\"[[++site_url]]assets/_gfx/favicon.ico\">\n	<link rel=\"apple-touch-icon-precomposed\" href=\"[[++site_url]]assets/_gfx/apple-touch-icon-precomposed.png\">\n	<script src=\"[[++site_url]]assets/_js/libs/webfontloadenhancer.min.js\"></script>\n	<script type=\"text/javascript\" src=\"http://use.typekit.com/fjl2gdn.js\"></script>\n	<script type=\"text/javascript\">try{Typekit.load();}catch(e){}</script>\n	<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n	<link rel=\"stylesheet\" href=\"[[++site_url]]assets/_css/style.css?v=1.3\">\n	<script src=\"[[++site_url]]assets/_js/libs/modernizr.min.js\"></script>\n</head>\n<body>\n<header class=\"row\">\n	<div id=\"title\" class=\"col4\">\n			<a href=\"[[++site_url]]\"><img src=\"[[++site_url]]assets/_gfx/maakee_logo.png\" alt=\"Logo maakee\"/><h1>[[++site_name]]</h1></a>\n		</div>\n		<div id=\"menu\" class=\"col8 last\">\n			[[!Wayfinder? &startId=`0` ]]\n		</div>			\n		<div id=\"sub_title\"><h2>[[*pagetitle]]</h2></div>		\n		<div id=\"load_spinner\"></div>\n		<div class=\"clear\">&nbsp;</div>\n</header>\n<div class=\"row\">\n		<hr class=\"col12 last\">\n</div>\n<div class=\"row\" id=\"content\">',0,'a:0:{}',0,'',0,0),
	(2,'maakee_footer','',0,0,0,'</div>\n<div class=\"container row\">\n<hr class=\"col12 last\">\n			<div id=\"footer\" class=\"col7\">\n				Copyright © 2011, Lukas Jakob Hafner.<br>\n				\"Never stop dreaming.\"\n			</div> \n<div id=\"tweet_box\" class=\"col5 last\"><div class=\"tweet\"></div></div>\n</div>\n<script>\nyepnope([{\n	load: \'//code.jquery.com/jquery-1.6.1.min.js\',\n	complete: function () {\n		if (!window.jQuery) {\n			yepnope(\'/assets/_js/libs/jquery-1.6.1.min.js\');\n		}\n	}\n},\n\n {\n	load: [\'/assets/_js/plugins.js?v=1.0\', \'/assets/_js/scripts.js?v=1.0\'  ]\n}]);\n</script>\n</body>\n</html>',0,'a:0:{}',0,'',0,0),
	(3,'project_overview','',0,0,0,'<div class=\"projects_wrapper\">\n[[!getResources? &parents=`1` &tpl=`single_project_Tpl` &tpl_4=`single_project_Tpl_last` &tpl_8=`single_project_Tpl_last` &tpl_12=`single_project_Tpl_last` &tpl_16=`single_project_Tpl_last`  &sortdir=`ASC` &showHidden=`1` &includeTVs=`1` &processTVs=`1` &sortby=`menuindex` &limit=`12`]]  \n</div>',0,'a:0:{}',0,'',0,0),
	(4,'single_project_Tpl','',0,0,0,'<div class=\"col3\">\n	<a href=\"[[~[[+id]]]]\" class=\"project\">\n		<div class=\"thumbnail\" style=\"background: url([[+tv.tvProjectThumb]])\">\n		<img src=\"[[++site_url]]assets/_gfx/corner_arrow.png\" alt=\"Corner Arrow\" />\n		</div>\n		<div class=\"details\">[[+pagetitle]]<div class=\"link_btn\"></div><div class=\"load_btn\"></div></div>\n	</a>\n</div>\n',0,'a:0:{}',0,'',0,0),
	(5,'single_project_Tpl_last','',0,0,0,'<div class=\"col3 last\">\n	<a href=\"[[~[[+id]]]]\" class=\"project\">\n		<div class=\"thumbnail\" style=\"background: url([[+tv.tvProjectThumb]])\">\n		<img src=\"[[++site_url]]assets/_gfx/corner_arrow.png\" alt=\"Corner Arrow\" />\n		</div>\n		<div class=\"details\">[[+pagetitle]]<div class=\"link_btn\"></div><div class=\"load_btn\"></div></div>\n	</a>\n</div>\n',0,'a:0:{}',0,'',0,0),
	(6,'contact_form','',0,0,0,'[[!FormIt?\n   &hooks=`spam,email`\n   &emailTpl=`contactMailTpl`\n   &emailTo=`saftsaak@me.com`\n&successMessage=`Thank You for your lovely message!`\n&clearFieldsOnSuccess=`1\n&emailUseFieldForSubject=`1`\n   &validate=`name:required,\n      email:email:required,\n      subject:required,\n      text:required:stripTags\n]]\n\n<div class=\"message_status\">\n[[!+fi.error_message:notempty=`[[!+fi.error_message]]`]]\n[[!+fi.successMessage]]\n</div>\n<form action=\"[[~[[*id]]]]\" method=\"post\" class=\"form\">\n    <input type=\"hidden\" name=\"nospam:blank\" value=\"\" />\n <div>\n    <label for=\"name\">\n        Name:\n        <span class=\"error\">[[!+fi.error.name]]</span>\n    </label><br>\n    <input type=\"text\" name=\"name\" id=\"name\" value=\"[[!+fi.name]]\" />\n </div>\n<div>\n    <label for=\"email\">\n        E-mail:\n        <span class=\"error\">[[!+fi.error.email]]</span>\n    </label><br>\n    <input type=\"text\" name=\"email\" id=\"email\" value=\"[[!+fi.email]]\" />\n </div>\n<div>\n    <label for=\"subject\">\n        Subject:\n        <span class=\"error\">[[!+fi.error.subject]]</span>\n    </label><br>\n    <input type=\"text\" name=\"subject\" id=\"subject\" value=\"[[!+fi.subject]]\" />\n </div>\n<div>\n    <label for=\"text\">\n        Message:\n        <span class=\"error\">[[!+fi.error.text]]</span>\n    </label><br>\n    <textarea name=\"text\" id=\"text\" value=\"[[!+fi.text]]\">[[!+fi.text]]</textarea>\n</div> \n    [[!+fi.error.recaptcha]]\n \n    <br class=\"clear\" />\n \n    <div class=\"form-buttons\">\n        <input class=\"send_button\" type=\"submit\" value=\"Send Message\" />\n    </div>\n</form>',0,'a:0:{}',0,'',0,0),
	(7,'contactMailTpl','',0,0,0,'[[+name]] ([[+email]]) sent you a message: <br /><br />\n \n[[+text]]',0,'a:0:{}',0,'',0,0);

/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_plugin_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_plugin_events`;

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_site_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_plugins`;

CREATE TABLE `modx_site_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_site_snippets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_snippets`;

CREATE TABLE `modx_site_snippets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;

INSERT INTO `modx_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`, `source`, `property_preprocess`)
VALUES
	(1,'getResources','<strong>1.5.1-pl</strong> A general purpose Resource listing and summarization snippet for MODx Revolution',0,0,0,'/**\n * getResources\n *\n * A general purpose Resource listing and summarization snippet for MODX 2.x.\n *\n * @author Jason Coward\n * @copyright Copyright 2010-2012, Jason Coward\n *\n * TEMPLATES\n *\n * tpl - Name of a chunk serving as a resource template\n * [NOTE: if not provided, properties are dumped to output for each resource]\n *\n * tplOdd - (Opt) Name of a chunk serving as resource template for resources with an odd idx value\n * (see idx property)\n * tplFirst - (Opt) Name of a chunk serving as resource template for the first resource (see first\n * property)\n * tplLast - (Opt) Name of a chunk serving as resource template for the last resource (see last\n * property)\n * tpl_{n} - (Opt) Name of a chunk serving as resource template for the nth resource\n *\n * SELECTION\n *\n * parents - Comma-delimited list of ids serving as parents\n *\n * context - (Opt) Comma-delimited list of context keys to limit results by; if empty, contexts for all specified\n * parents will be used (all contexts if 0 is specified) [default=]\n * \n * depth - (Opt) Integer value indicating depth to search for resources from each parent [default=10]\n *\n * tvFilters - (Opt) Delimited-list of TemplateVar values to filter resources by. Supports two\n * delimiters and two value search formats. The first delimiter || represents a logical OR and the\n * primary grouping mechanism.  Within each group you can provide a comma-delimited list of values.\n * These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the\n * value, indicating you are searching for the value in any TemplateVar tied to the Resource. An\n * example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`\n * [NOTE: filtering by values uses a LIKE query and % is considered a wildcard.]\n * [NOTE: this only looks at the raw value set for specific Resource, i. e. there must be a value\n * specifically set for the Resource and it is not evaluated.]\n *\n * tvFiltersAndDelimiter - (Opt) Custom delimiter for logical AND, default \',\', in case you want to\n * match a literal comma in the tvFilters. E.g. &tvFiltersAndDelimiter=`&&`\n * &tvFilters=`filter1==foo,bar&&filter2==baz` [default=,]\n *\n * tvFiltersOrDelimiter - (Opt) Custom delimiter for logical OR, default \'||\', in case you want to\n * match a literal \'||\' in the tvFilters. E.g. &tvFiltersOrDelimiter=`|OR|`\n * &tvFilters=`filter1==foo||bar|OR|filter2==baz` [default=||]\n *\n * where - (Opt) A JSON expression of criteria to build any additional where clauses from. An example would be\n * &where=`{{\"alias:LIKE\":\"foo%\", \"OR:alias:LIKE\":\"%bar\"},{\"OR:pagetitle:=\":\"foobar\", \"AND:description:=\":\"raboof\"}}`\n *\n * sortby - (Opt) Field to sort by or a JSON array, e.g. {\"publishedon\":\"ASC\",\"createdon\":\"DESC\"} [default=publishedon]\n * sortbyTV - (opt) A Template Variable name to sort by (if supplied, this precedes the sortby value) [default=]\n * sortbyTVType - (Opt) A data type to CAST a TV Value to in order to sort on it properly [default=string]\n * sortbyAlias - (Opt) Query alias for sortby field [default=]\n * sortbyEscaped - (Opt) Escapes the field name(s) specified in sortby [default=0]\n * sortdir - (Opt) Order which to sort by [default=DESC]\n * sortdirTV - (Opt) Order which to sort by a TV [default=DESC]\n * limit - (Opt) Limits the number of resources returned [default=5]\n * offset - (Opt) An offset of resources returned by the criteria to skip [default=0]\n * dbCacheFlag - (Opt) Controls caching of db queries; 0|false = do not cache result set; 1 = cache result set\n * according to cache settings, any other integer value = number of seconds to cache result set [default=0]\n *\n * OPTIONS\n *\n * includeContent - (Opt) Indicates if the content of each resource should be returned in the\n * results [default=0]\n * includeTVs - (Opt) Indicates if TemplateVar values should be included in the properties available\n * to each resource template [default=0]\n * includeTVList - (Opt) Limits the TemplateVars that are included if includeTVs is true to those specified\n * by name in a comma-delimited list [default=]\n * prepareTVs - (Opt) Prepares media-source dependent TemplateVar values [default=1]\n * prepareTVList - (Opt) Limits the TVs that are prepared to those specified by name in a comma-delimited\n * list [default=]\n * processTVs - (Opt) Indicates if TemplateVar values should be rendered as they would on the\n * resource being summarized [default=0]\n * processTVList - (opt) Limits the TemplateVars that are processed if included to those specified\n * by name in a comma-delimited list [default=]\n * tvPrefix - (Opt) The prefix for TemplateVar properties [default=tv.]\n * idx - (Opt) You can define the starting idx of the resources, which is an property that is\n * incremented as each resource is rendered [default=1]\n * first - (Opt) Define the idx which represents the first resource (see tplFirst) [default=1]\n * last - (Opt) Define the idx which represents the last resource (see tplLast) [default=# of\n * resources being summarized + first - 1]\n * outputSeparator - (Opt) An optional string to separate each tpl instance [default=\"\\n\"]\n *\n */\n$output = array();\n$outputSeparator = isset($outputSeparator) ? $outputSeparator : \"\\n\";\n\n/* set default properties */\n$tpl = !empty($tpl) ? $tpl : \'\';\n$includeContent = !empty($includeContent) ? true : false;\n$includeTVs = !empty($includeTVs) ? true : false;\n$includeTVList = !empty($includeTVList) ? explode(\',\', $includeTVList) : array();\n$processTVs = !empty($processTVs) ? true : false;\n$processTVList = !empty($processTVList) ? explode(\',\', $processTVList) : array();\n$prepareTVs = !empty($prepareTVs) ? true : false;\n$prepareTVList = !empty($prepareTVList) ? explode(\',\', $prepareTVList) : array();\n$tvPrefix = isset($tvPrefix) ? $tvPrefix : \'tv.\';\n$parents = (!empty($parents) || $parents === \'0\') ? explode(\',\', $parents) : array($modx->resource->get(\'id\'));\narray_walk($parents, \'trim\');\n$parents = array_unique($parents);\n$depth = isset($depth) ? (integer) $depth : 10;\n\n$tvFiltersOrDelimiter = isset($tvFiltersOrDelimiter) ? $tvFiltersOrDelimiter : \'||\';\n$tvFiltersAndDelimiter = isset($tvFiltersAndDelimiter) ? $tvFiltersAndDelimiter : \',\';\n$tvFilters = !empty($tvFilters) ? explode($tvFiltersOrDelimiter, $tvFilters) : array();\n\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$showUnpublished = !empty($showUnpublished) ? true : false;\n$showDeleted = !empty($showDeleted) ? true : false;\n\n$sortby = isset($sortby) ? $sortby : \'publishedon\';\n$sortbyTV = isset($sortbyTV) ? $sortbyTV : \'\';\n$sortbyAlias = isset($sortbyAlias) ? $sortbyAlias : \'modResource\';\n$sortbyEscaped = !empty($sortbyEscaped) ? true : false;\n$sortdir = isset($sortdir) ? $sortdir : \'DESC\';\n$sortdirTV = isset($sortdirTV) ? $sortdirTV : \'DESC\';\n$limit = isset($limit) ? (integer) $limit : 5;\n$offset = isset($offset) ? (integer) $offset : 0;\n$totalVar = !empty($totalVar) ? $totalVar : \'total\';\n\n$dbCacheFlag = !isset($dbCacheFlag) ? false : $dbCacheFlag;\nif (is_string($dbCacheFlag) || is_numeric($dbCacheFlag)) {\n    if ($dbCacheFlag == \'0\') {\n        $dbCacheFlag = false;\n    } elseif ($dbCacheFlag == \'1\') {\n        $dbCacheFlag = true;\n    } else {\n        $dbCacheFlag = (integer) $dbCacheFlag;\n    }\n}\n\n/* multiple context support */\n$contextArray = array();\n$contextSpecified = false;\nif (!empty($context)) {\n    $contextArray = explode(\',\',$context);\n    array_walk($contextArray, \'trim\');\n    $contexts = array();\n    foreach ($contextArray as $ctx) {\n        $contexts[] = $modx->quote($ctx);\n    }\n    $context = implode(\',\',$contexts);\n    $contextSpecified = true;\n    unset($contexts,$ctx);\n} else {\n    $context = $modx->quote($modx->context->get(\'key\'));\n}\n\n$pcMap = array();\n$pcQuery = $modx->newQuery(\'modResource\', array(\'id:IN\' => $parents), $dbCacheFlag);\n$pcQuery->select(array(\'id\', \'context_key\'));\nif ($pcQuery->prepare() && $pcQuery->stmt->execute()) {\n    foreach ($pcQuery->stmt->fetchAll(PDO::FETCH_ASSOC) as $pcRow) {\n        $pcMap[(integer) $pcRow[\'id\']] = $pcRow[\'context_key\'];\n    }\n}\n\n$children = array();\n$parentArray = array();\nforeach ($parents as $parent) {\n    $parent = (integer) $parent;\n    if ($parent === 0) {\n        $pchildren = array();\n        if ($contextSpecified) {\n            foreach ($contextArray as $pCtx) {\n                if (!in_array($pCtx, $contextArray)) {\n                    continue;\n                }\n                $options = $pCtx !== $modx->context->get(\'key\') ? array(\'context\' => $pCtx) : array();\n                $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n            }\n        } else {\n            $cQuery = $modx->newQuery(\'modContext\', array(\'key:!=\' => \'mgr\'));\n            $cQuery->select(array(\'key\'));\n            if ($cQuery->prepare() && $cQuery->stmt->execute()) {\n                foreach ($cQuery->stmt->fetchAll(PDO::FETCH_COLUMN) as $pCtx) {\n                    $options = $pCtx !== $modx->context->get(\'key\') ? array(\'context\' => $pCtx) : array();\n                    $pcchildren = $modx->getChildIds($parent, $depth, $options);\n                    if (!empty($pcchildren)) $pchildren = array_merge($pchildren, $pcchildren);\n                }\n            }\n        }\n        $parentArray[] = $parent;\n    } else {\n        $pContext = array_key_exists($parent, $pcMap) ? $pcMap[$parent] : false;\n        if ($debug) $modx->log(modX::LOG_LEVEL_ERROR, \"context for {$parent} is {$pContext}\");\n        if ($pContext && $contextSpecified && !in_array($pContext, $contextArray, true)) {\n            $parent = next($parents);\n            continue;\n        }\n        $parentArray[] = $parent;\n        $options = !empty($pContext) && $pContext !== $modx->context->get(\'key\') ? array(\'context\' => $pContext) : array();\n        $pchildren = $modx->getChildIds($parent, $depth, $options);\n    }\n    if (!empty($pchildren)) $children = array_merge($children, $pchildren);\n    $parent = next($parents);\n}\n$parents = array_merge($parentArray, $children);\n\n/* build query */\n$criteria = array(\"modResource.parent IN (\" . implode(\',\', $parents) . \")\");\nif ($contextSpecified) {\n    $contextResourceTbl = $modx->getTableName(\'modContextResource\');\n    $criteria[] = \"(modResource.context_key IN ({$context}) OR EXISTS(SELECT 1 FROM {$contextResourceTbl} ctx WHERE ctx.resource = modResource.id AND ctx.context_key IN ({$context})))\";\n}\nif (empty($showDeleted)) {\n    $criteria[\'deleted\'] = \'0\';\n}\nif (empty($showUnpublished)) {\n    $criteria[\'published\'] = \'1\';\n}\nif (empty($showHidden)) {\n    $criteria[\'hidemenu\'] = \'0\';\n}\nif (!empty($hideContainers)) {\n    $criteria[\'isfolder\'] = \'0\';\n}\n$criteria = $modx->newQuery(\'modResource\', $criteria);\nif (!empty($tvFilters)) {\n    $tmplVarTbl = $modx->getTableName(\'modTemplateVar\');\n    $tmplVarResourceTbl = $modx->getTableName(\'modTemplateVarResource\');\n    $conditions = array();\n    $operators = array(\n        \'<=>\' => \'<=>\',\n        \'===\' => \'=\',\n        \'!==\' => \'!=\',\n        \'<>\' => \'<>\',\n        \'==\' => \'LIKE\',\n        \'!=\' => \'NOT LIKE\',\n        \'<<\' => \'<\',\n        \'<=\' => \'<=\',\n        \'=<\' => \'=<\',\n        \'>>\' => \'>\',\n        \'>=\' => \'>=\',\n        \'=>\' => \'=>\'\n    );\n    foreach ($tvFilters as $fGroup => $tvFilter) {\n        $filterGroup = array();\n        $filters = explode($tvFiltersAndDelimiter, $tvFilter);\n        $multiple = count($filters) > 0;\n        foreach ($filters as $filter) {\n            $operator = \'==\';\n            $sqlOperator = \'LIKE\';\n            foreach ($operators as $op => $opSymbol) {\n                if (strpos($filter, $op, 1) !== false) {\n                    $operator = $op;\n                    $sqlOperator = $opSymbol;\n                    break;\n                }\n            }\n            $tvValueField = \'tvr.value\';\n            $tvDefaultField = \'tv.default_text\';\n            $f = explode($operator, $filter);\n            if (count($f) == 2) {\n                $tvName = $modx->quote($f[0]);\n                if (is_numeric($f[1]) && !in_array($sqlOperator, array(\'LIKE\', \'NOT LIKE\'))) {\n                    $tvValue = $f[1];\n                    if ($f[1] == (integer)$f[1]) {\n                        $tvValueField = \"CAST({$tvValueField} AS SIGNED INTEGER)\";\n                        $tvDefaultField = \"CAST({$tvDefaultField} AS SIGNED INTEGER)\";\n                    } else {\n                        $tvValueField = \"CAST({$tvValueField} AS DECIMAL)\";\n                        $tvDefaultField = \"CAST({$tvDefaultField} AS DECIMAL)\";\n                    }\n                } else {\n                    $tvValue = $modx->quote($f[1]);\n                }\n                if ($multiple) {\n                    $filterGroup[] =\n                        \"(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) \" .\n                        \"OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) \" .\n                        \")\";\n                } else {\n                    $filterGroup =\n                        \"(EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.name = {$tvName} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id) \" .\n                        \"OR EXISTS (SELECT 1 FROM {$tmplVarTbl} tv WHERE tv.name = {$tvName} AND {$tvDefaultField} {$sqlOperator} {$tvValue} AND tv.id NOT IN (SELECT tmplvarid FROM {$tmplVarResourceTbl} WHERE contentid = modResource.id)) \" .\n                        \")\";\n                }\n            } elseif (count($f) == 1) {\n                $tvValue = $modx->quote($f[0]);\n                if ($multiple) {\n                    $filterGroup[] = \"EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)\";\n                } else {\n                    $filterGroup = \"EXISTS (SELECT 1 FROM {$tmplVarResourceTbl} tvr JOIN {$tmplVarTbl} tv ON {$tvValueField} {$sqlOperator} {$tvValue} AND tv.id = tvr.tmplvarid WHERE tvr.contentid = modResource.id)\";\n                }\n            }\n        }\n        $conditions[] = $filterGroup;\n    }\n    if (!empty($conditions)) {\n        $firstGroup = true;\n        foreach ($conditions as $cGroup => $c) {\n            if (is_array($c)) {\n                $first = true;\n                foreach ($c as $cond) {\n                    if ($first && !$firstGroup) {\n                        $criteria->condition($criteria->query[\'where\'][0][1], $cond, xPDOQuery::SQL_OR, null, $cGroup);\n                    } else {\n                        $criteria->condition($criteria->query[\'where\'][0][1], $cond, xPDOQuery::SQL_AND, null, $cGroup);\n                    }\n                    $first = false;\n                }\n            } else {\n                $criteria->condition($criteria->query[\'where\'][0][1], $c, $firstGroup ? xPDOQuery::SQL_AND : xPDOQuery::SQL_OR, null, $cGroup);\n            }\n            $firstGroup = false;\n        }\n    }\n}\n/* include/exclude resources, via &resources=`123,-456` prop */\nif (!empty($resources)) {\n    $resourceConditions = array();\n    $resources = explode(\',\',$resources);\n    $include = array();\n    $exclude = array();\n    foreach ($resources as $resource) {\n        $resource = (int)$resource;\n        if ($resource == 0) continue;\n        if ($resource < 0) {\n            $exclude[] = abs($resource);\n        } else {\n            $include[] = $resource;\n        }\n    }\n    if (!empty($include)) {\n        $criteria->where(array(\'OR:modResource.id:IN\' => $include), xPDOQuery::SQL_OR);\n    }\n    if (!empty($exclude)) {\n        $criteria->where(array(\'modResource.id:NOT IN\' => $exclude), xPDOQuery::SQL_AND, null, 1);\n    }\n}\nif (!empty($where)) {\n    $criteria->where($where);\n}\n\n$total = $modx->getCount(\'modResource\', $criteria);\n$modx->setPlaceholder($totalVar, $total);\n\n$fields = array_keys($modx->getFields(\'modResource\'));\nif (empty($includeContent)) {\n    $fields = array_diff($fields, array(\'content\'));\n}\n$columns = $includeContent ? $modx->getSelectColumns(\'modResource\', \'modResource\') : $modx->getSelectColumns(\'modResource\', \'modResource\', \'\', array(\'content\'), true);\n$criteria->select($columns);\nif (!empty($sortbyTV)) {\n    $criteria->leftJoin(\'modTemplateVar\', \'tvDefault\', array(\n        \"tvDefault.name\" => $sortbyTV\n    ));\n    $criteria->leftJoin(\'modTemplateVarResource\', \'tvSort\', array(\n        \"tvSort.contentid = modResource.id\",\n        \"tvSort.tmplvarid = tvDefault.id\"\n    ));\n    if (empty($sortbyTVType)) $sortbyTVType = \'string\';\n    if ($modx->getOption(\'dbtype\') === \'mysql\') {\n        switch ($sortbyTVType) {\n            case \'integer\':\n                $criteria->select(\"CAST(IFNULL(tvSort.value, tvDefault.default_text) AS SIGNED INTEGER) AS sortTV\");\n                break;\n            case \'decimal\':\n                $criteria->select(\"CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV\");\n                break;\n            case \'datetime\':\n                $criteria->select(\"CAST(IFNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV\");\n                break;\n            case \'string\':\n            default:\n                $criteria->select(\"IFNULL(tvSort.value, tvDefault.default_text) AS sortTV\");\n                break;\n        }\n    } elseif ($modx->getOption(\'dbtype\') === \'sqlsrv\') {\n        switch ($sortbyTVType) {\n            case \'integer\':\n                $criteria->select(\"CAST(ISNULL(tvSort.value, tvDefault.default_text) AS BIGINT) AS sortTV\");\n                break;\n            case \'decimal\':\n                $criteria->select(\"CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DECIMAL) AS sortTV\");\n                break;\n            case \'datetime\':\n                $criteria->select(\"CAST(ISNULL(tvSort.value, tvDefault.default_text) AS DATETIME) AS sortTV\");\n                break;\n            case \'string\':\n            default:\n                $criteria->select(\"ISNULL(tvSort.value, tvDefault.default_text) AS sortTV\");\n                break;\n        }\n    }\n    $criteria->sortby(\"sortTV\", $sortdirTV);\n}\nif (!empty($sortby)) {\n    if (strpos($sortby, \'{\') === 0) {\n        $sorts = $modx->fromJSON($sortby);\n    } else {\n        $sorts = array($sortby => $sortdir);\n    }\n    if (is_array($sorts)) {\n        while (list($sort, $dir) = each($sorts)) {\n            if ($sortbyEscaped) $sort = $modx->escape($sort);\n            if (!empty($sortbyAlias)) $sort = $modx->escape($sortbyAlias) . \".{$sort}\";\n            $criteria->sortby($sort, $dir);\n        }\n    }\n}\nif (!empty($limit)) $criteria->limit($limit, $offset);\n\nif (!empty($debug)) {\n    $criteria->prepare();\n    $modx->log(modX::LOG_LEVEL_ERROR, $criteria->toSQL());\n}\n$collection = $modx->getCollection(\'modResource\', $criteria, $dbCacheFlag);\n\n$idx = !empty($idx) && $idx !== \'0\' ? (integer) $idx : 1;\n$first = empty($first) && $first !== \'0\' ? 1 : (integer) $first;\n$last = empty($last) ? (count($collection) + $idx - 1) : (integer) $last;\n\n/* include parseTpl */\ninclude_once $modx->getOption(\'getresources.core_path\',null,$modx->getOption(\'core_path\').\'components/getresources/\').\'include.parsetpl.php\';\n\n$templateVars = array();\nif (!empty($includeTVs) && !empty($includeTVList)) {\n    $templateVars = $modx->getCollection(\'modTemplateVar\', array(\'name:IN\' => $includeTVList));\n}\n/** @var modResource $resource */\nforeach ($collection as $resourceId => $resource) {\n    $tvs = array();\n    if (!empty($includeTVs)) {\n        if (empty($includeTVList)) {\n            $templateVars = $resource->getMany(\'TemplateVars\');\n        }\n        /** @var modTemplateVar $templateVar */\n        foreach ($templateVars as $tvId => $templateVar) {\n            if (!empty($includeTVList) && !in_array($templateVar->get(\'name\'), $includeTVList)) continue;\n            if ($processTVs && (empty($processTVList) || in_array($templateVar->get(\'name\'), $processTVList))) {\n                $tvs[$tvPrefix . $templateVar->get(\'name\')] = $templateVar->renderOutput($resource->get(\'id\'));\n            } else {\n                $value = $templateVar->getValue($resource->get(\'id\'));\n                if ($prepareTVs && method_exists($templateVar, \'prepareOutput\') && (empty($prepareTVList) || in_array($templateVar->get(\'name\'), $prepareTVList))) {\n                    $value = $templateVar->prepareOutput($value);\n                }\n                $tvs[$tvPrefix . $templateVar->get(\'name\')] = $value;\n            }\n        }\n    }\n    $odd = ($idx & 1);\n    $properties = array_merge(\n        $scriptProperties\n        ,array(\n            \'idx\' => $idx\n            ,\'first\' => $first\n            ,\'last\' => $last\n            ,\'odd\' => $odd\n        )\n        ,$includeContent ? $resource->toArray() : $resource->get($fields)\n        ,$tvs\n    );\n    $resourceTpl = \'\';\n    if ($idx == $first && !empty($tplFirst)) {\n        $resourceTpl = parseTpl($tplFirst, $properties);\n    }\n    if ($idx == $last && empty($resourceTpl) && !empty($tplLast)) {\n        $resourceTpl = parseTpl($tplLast, $properties);\n    }\n    $tplidx = \'tpl_\' . $idx;\n    if (empty($resourceTpl) && !empty($$tplidx)) {\n        $resourceTpl = parseTpl($$tplidx, $properties);\n    }\n    if ($idx > 1 && empty($resourceTpl)) {\n        $divisors = getDivisors($idx);\n        if (!empty($divisors)) {\n            foreach ($divisors as $divisor) {\n                $tplnth = \'tpl_n\' . $divisor;\n                if (!empty($$tplnth)) {\n                    $resourceTpl = parseTpl($$tplnth, $properties);\n                    if (!empty($resourceTpl)) {\n                        break;\n                    }\n                }\n            }\n        }\n    }\n    if ($odd && empty($resourceTpl) && !empty($tplOdd)) {\n        $resourceTpl = parseTpl($tplOdd, $properties);\n    }\n    if (!empty($tplCondition) && !empty($conditionalTpls) && empty($resourceTpl)) {\n        $conTpls = $modx->fromJSON($conditionalTpls);\n        $subject = $properties[$tplCondition];\n        $tplOperator = !empty($tplOperator) ? $tplOperator : \'=\';\n        $tplOperator = strtolower($tplOperator);\n        $tplCon = \'\';\n        foreach ($conTpls as $operand => $conditionalTpl) {\n            switch ($tplOperator) {\n                case \'!=\':\n                case \'neq\':\n                case \'not\':\n                case \'isnot\':\n                case \'isnt\':\n                case \'unequal\':\n                case \'notequal\':\n                    $tplCon = (($subject != $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'<\':\n                case \'lt\':\n                case \'less\':\n                case \'lessthan\':\n                    $tplCon = (($subject < $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'>\':\n                case \'gt\':\n                case \'greater\':\n                case \'greaterthan\':\n                    $tplCon = (($subject > $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'<=\':\n                case \'lte\':\n                case \'lessthanequals\':\n                case \'lessthanorequalto\':\n                    $tplCon = (($subject <= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'>=\':\n                case \'gte\':\n                case \'greaterthanequals\':\n                case \'greaterthanequalto\':\n                    $tplCon = (($subject >= $operand) ? $conditionalTpl : $tplCon);\n                    break;\n                case \'isempty\':\n                case \'empty\':\n                    $tplCon = empty($subject) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'!empty\':\n                case \'notempty\':\n                case \'isnotempty\':\n                    $tplCon = !empty($subject) && $subject != \'\' ? $conditionalTpl : $tplCon;\n                    break;\n                case \'isnull\':\n                case \'null\':\n                    $tplCon = $subject == null || strtolower($subject) == \'null\' ? $conditionalTpl : $tplCon;\n                    break;\n                case \'inarray\':\n                case \'in_array\':\n                case \'ia\':\n                    $operand = explode(\',\', $operand);\n                    $tplCon = in_array($subject, $operand) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'between\':\n                case \'range\':\n                case \'>=<\':\n                case \'><\':\n                    $operand = explode(\',\', $operand);\n                    $tplCon = ($subject >= min($operand) && $subject <= max($operand)) ? $conditionalTpl : $tplCon;\n                    break;\n                case \'==\':\n                case \'=\':\n                case \'eq\':\n                case \'is\':\n                case \'equal\':\n                case \'equals\':\n                case \'equalto\':\n                default:\n                    $tplCon = (($subject == $operand) ? $conditionalTpl : $tplCon);\n                    break;\n            }\n        }\n        if (!empty($tplCon)) {\n            $resourceTpl = parseTpl($tplCon, $properties);\n        }\n    }    \n    if (!empty($tpl) && empty($resourceTpl)) {\n        $resourceTpl = parseTpl($tpl, $properties);\n    }\n    if (empty($resourceTpl)) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $output[]= $chunk->process(array(), \'<pre>\' . print_r($properties, true) .\'</pre>\');\n    } else {\n        $output[]= $resourceTpl;\n    }\n    $idx++;\n}\n\n/* output */\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\',$scriptProperties,false);\nif (!empty($toSeparatePlaceholders)) {\n    $modx->setPlaceholders($output,$toSeparatePlaceholders);\n    return \'\';\n}\n\n$output = implode($outputSeparator, $output);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\',$scriptProperties,false);\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder,$output);\n    return \'\';\n}\nreturn $output;',0,'a:42:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:121:\"Name of a chunk serving as a resource template. NOTE: if not provided, properties are dumped to output for each resource.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:100:\"Name of a chunk serving as resource template for resources with an odd idx value (see idx property).\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:89:\"Name of a chunk serving as resource template for the first resource (see first property).\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:87:\"Name of a chunk serving as resource template for the last resource (see last property).\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:153:\"A field name to sort by or JSON object of field names and sortdir for each field, e.g. {\"publishedon\":\"ASC\",\"createdon\":\"DESC\"}. Defaults to publishedon.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:65:\"Name of a Template Variable to sort by. Defaults to empty string.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:72:\"An optional type to indicate how to sort on the Template Variable value.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:6:\"string\";s:5:\"value\";s:6:\"string\";}i:1;a:2:{s:4:\"text\";s:7:\"integer\";s:5:\"value\";s:7:\"integer\";}i:2;a:2:{s:4:\"text\";s:7:\"decimal\";s:5:\"value\";s:7:\"decimal\";}i:3;a:2:{s:4:\"text\";s:8:\"datetime\";s:5:\"value\";s:8:\"datetime\";}}s:5:\"value\";s:6:\"string\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"sortbyAlias\";a:7:{s:4:\"name\";s:11:\"sortbyAlias\";s:4:\"desc\";s:58:\"Query alias for sortby field. Defaults to an empty string.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"sortbyEscaped\";a:7:{s:4:\"name\";s:13:\"sortbyEscaped\";s:4:\"desc\";s:82:\"Determines if the field name specified in sortby should be escaped. Defaults to 0.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:41:\"Order which to sort by. Defaults to DESC.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:61:\"Order which to sort a Template Variable by. Defaults to DESC.\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:55:\"Limits the number of resources returned. Defaults to 5.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"5\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:56:\"An offset of resources returned by the criteria to skip.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:778:\"Delimited-list of TemplateVar values to filter resources by. Supports two delimiters and two value search formats. THe first delimiter || represents a logical OR and the primary grouping mechanism.  Within each group you can provide a comma-delimited list of values. These values can be either tied to a specific TemplateVar by name, e.g. myTV==value, or just the value, indicating you are searching for the value in any TemplateVar tied to the Resource. An example would be &tvFilters=`filter2==one,filter1==bar%||filter1==foo`. <br />NOTE: filtering by values uses a LIKE query and % is considered a wildcard. <br />ANOTHER NOTE: This only looks at the raw value set for specific Resource, i. e. there must be a value specifically set for the Resource and it is not evaluated.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:83:\"The delimiter to use to separate logical AND expressions in tvFilters. Default is ,\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\",\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:83:\"The delimiter to use to separate logical OR expressions in tvFilters. Default is ||\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:88:\"Integer value indicating depth to search for resources from each parent. Defaults to 10.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:57:\"Optional. Comma-delimited list of ids serving as parents.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:95:\"Indicates if the content of each resource should be returned in the results. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:124:\"Indicates if TemplateVar values should be included in the properties available to each resource template. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"includeTVList\";a:7:{s:4:\"name\";s:13:\"includeTVList\";s:4:\"desc\";s:96:\"Limits included TVs to those specified as a comma-delimited list of TV names. Defaults to empty.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:85:\"Indicates if Resources that are hidden from menus should be shown. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:79:\"Indicates if Resources that are unpublished should be shown. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:75:\"Indicates if Resources that are deleted should be shown. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:177:\"A comma-separated list of resource IDs to exclude or include. IDs with a - in front mean to exclude. Ex: 123,-456 means to include Resource 123, but always exclude Resource 456.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:117:\"Indicates if TemplateVar values should be rendered as they would on the resource being summarized. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"processTVList\";a:7:{s:4:\"name\";s:13:\"processTVList\";s:4:\"desc\";s:166:\"Limits processed TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for processing if specified. Defaults to empty.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:120:\"Indicates if TemplateVar values that are not processed fully should be prepared before being returned. Defaults to true.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"prepareTVList\";a:7:{s:4:\"name\";s:13:\"prepareTVList\";s:4:\"desc\";s:164:\"Limits prepared TVs to those specified as a comma-delimited list of TV names; note only includedTVs will be available for preparing if specified. Defaults to empty.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:55:\"The prefix for TemplateVar properties. Defaults to: tv.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:120:\"You can define the starting idx of the resources, which is an property that is incremented as each resource is rendered.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:81:\"Define the idx which represents the first resource (see tplFirst). Defaults to 1.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:129:\"Define the idx which represents the last resource (see tplLast). Defaults to the number of resources being summarized + first - 1\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:85:\"If set, will assign the result to this placeholder instead of outputting it directly.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:130:\"If set, will assign EACH result to a separate placeholder named by this param suffixed with a sequential number (starting from 0).\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"debug\";a:7:{s:4:\"name\";s:5:\"debug\";s:4:\"desc\";s:68:\"If true, will send the SQL query to the MODX log. Defaults to false.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:193:\"A JSON expression of criteria to build any additional where clauses from, e.g. &where=`{{\"alias:LIKE\":\"foo%\", \"OR:alias:LIKE\":\"%bar\"},{\"OR:pagetitle:=\":\"foobar\", \"AND:description:=\":\"raboof\"}}`\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"dbCacheFlag\";a:7:{s:4:\"name\";s:11:\"dbCacheFlag\";s:4:\"desc\";s:218:\"Determines how result sets are cached if cache_db is enabled in MODX. 0|false = do not cache result set; 1 = cache result set according to cache settings, any other integer value = number of seconds to cache result set\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:116:\"A comma-delimited list of context keys for limiting results. Default is empty, i.e. do not limit results by context.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:129:\"A condition to compare against the conditionalTpls property to map Resources to different tpls based on custom conditional logic.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:125:\"An optional operator to use for the tplCondition when comparing against the conditionalTpls operands. Default is == (equals).\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:121:\"A JSON map of conditional operands and tpls to compare against the tplCondition property using the specified tplOperator.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}','',0,'',0,0),
	(2,'Wayfinder','Wayfinder for MODx Revolution 2.0.0-beta-5 and later.',0,0,0,'/**\n * Wayfinder Snippet to build site navigation menus\n *\n * Totally refactored from original DropMenu nav builder to make it easier to\n * create custom navigation by using chunks as output templates. By using\n * templates, many of the paramaters are no longer needed for flexible output\n * including tables, unordered- or ordered-lists (ULs or OLs), definition lists\n * (DLs) or in any other format you desire.\n *\n * @version 2.1.1-beta5\n * @author Garry Nutting (collabpad.com)\n * @author Kyle Jaebker (muddydogpaws.com)\n * @author Ryan Thrash (modx.com)\n * @author Shaun McCormick (modx.com)\n * @author Jason Coward (modx.com)\n *\n * @example [[Wayfinder? &startId=`0`]]\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package wayfinder\n */\n$wayfinder_base = $modx->getOption(\'wayfinder.core_path\',$scriptProperties,$modx->getOption(\'core_path\').\'components/wayfinder/\');\n\n/* include a custom config file if specified */\nif (isset($scriptProperties[\'config\'])) {\n    $scriptProperties[\'config\'] = str_replace(\'../\',\'\',$scriptProperties[\'config\']);\n    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/\'.$scriptProperties[\'config\'].\'.config.php\';\n} else {\n    $scriptProperties[\'config\'] = $wayfinder_base.\'configs/default.config.php\';\n}\nif (file_exists($scriptProperties[\'config\'])) {\n    include $scriptProperties[\'config\'];\n}\n\n/* include wayfinder class */\ninclude_once $wayfinder_base.\'wayfinder.class.php\';\nif (!$modx->loadClass(\'Wayfinder\',$wayfinder_base,true,true)) {\n    return \'error: Wayfinder class not found\';\n}\n$wf = new Wayfinder($modx,$scriptProperties);\n\n/* get user class definitions\n * TODO: eventually move these into config parameters */\n$wf->_css = array(\n    \'first\' => isset($firstClass) ? $firstClass : \'\',\n    \'last\' => isset($lastClass) ? $lastClass : \'last\',\n    \'here\' => isset($hereClass) ? $hereClass : \'active\',\n    \'parent\' => isset($parentClass) ? $parentClass : \'\',\n    \'row\' => isset($rowClass) ? $rowClass : \'\',\n    \'outer\' => isset($outerClass) ? $outerClass : \'\',\n    \'inner\' => isset($innerClass) ? $innerClass : \'\',\n    \'level\' => isset($levelClass) ? $levelClass: \'\',\n    \'self\' => isset($selfClass) ? $selfClass : \'\',\n    \'weblink\' => isset($webLinkClass) ? $webLinkClass : \'\'\n);\n\n/* get user templates\n * TODO: eventually move these into config parameters */\n$wf->_templates = array(\n    \'outerTpl\' => isset($outerTpl) ? $outerTpl : \'\',\n    \'rowTpl\' => isset($rowTpl) ? $rowTpl : \'\',\n    \'parentRowTpl\' => isset($parentRowTpl) ? $parentRowTpl : \'\',\n    \'parentRowHereTpl\' => isset($parentRowHereTpl) ? $parentRowHereTpl : \'\',\n    \'hereTpl\' => isset($hereTpl) ? $hereTpl : \'\',\n    \'innerTpl\' => isset($innerTpl) ? $innerTpl : \'\',\n    \'innerRowTpl\' => isset($innerRowTpl) ? $innerRowTpl : \'\',\n    \'innerHereTpl\' => isset($innerHereTpl) ? $innerHereTpl : \'\',\n    \'activeParentRowTpl\' => isset($activeParentRowTpl) ? $activeParentRowTpl : \'\',\n    \'categoryFoldersTpl\' => isset($categoryFoldersTpl) ? $categoryFoldersTpl : \'\',\n    \'startItemTpl\' => isset($startItemTpl) ? $startItemTpl : \'\'\n);\n\n/* process Wayfinder */\n$output = $wf->run();\nif ($wf->_config[\'debug\']) {\n    $output .= $wf->renderDebugOutput();\n}\n\n/* output results */\nif ($wf->_config[\'ph\']) {\n    $modx->setPlaceholder($wf->_config[\'ph\'],$output);\n} else {\n    return $output;\n}',0,'a:48:{s:5:\"level\";a:6:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:25:\"prop_wayfinder.level_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"includeDocs\";a:6:{s:4:\"name\";s:11:\"includeDocs\";s:4:\"desc\";s:31:\"prop_wayfinder.includeDocs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"excludeDocs\";a:6:{s:4:\"name\";s:11:\"excludeDocs\";s:4:\"desc\";s:31:\"prop_wayfinder.excludeDocs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"contexts\";a:6:{s:4:\"name\";s:8:\"contexts\";s:4:\"desc\";s:28:\"prop_wayfinder.contexts_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"cacheResults\";a:6:{s:4:\"name\";s:12:\"cacheResults\";s:4:\"desc\";s:32:\"prop_wayfinder.cacheResults_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"cacheTime\";a:6:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:29:\"prop_wayfinder.cacheTime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:3600;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:2:\"ph\";a:6:{s:4:\"name\";s:2:\"ph\";s:4:\"desc\";s:22:\"prop_wayfinder.ph_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"debug\";a:6:{s:4:\"name\";s:5:\"debug\";s:4:\"desc\";s:25:\"prop_wayfinder.debug_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"ignoreHidden\";a:6:{s:4:\"name\";s:12:\"ignoreHidden\";s:4:\"desc\";s:32:\"prop_wayfinder.ignoreHidden_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"hideSubMenus\";a:6:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:32:\"prop_wayfinder.hideSubMenus_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:13:\"useWeblinkUrl\";a:6:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:33:\"prop_wayfinder.useWeblinkUrl_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"fullLink\";a:6:{s:4:\"name\";s:8:\"fullLink\";s:4:\"desc\";s:28:\"prop_wayfinder.fullLink_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"scheme\";a:6:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:26:\"prop_wayfinder.scheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:23:\"prop_wayfinder.relative\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:23:\"prop_wayfinder.absolute\";s:5:\"value\";s:3:\"abs\";}i:2;a:2:{s:4:\"text\";s:19:\"prop_wayfinder.full\";s:5:\"value\";s:4:\"full\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"sortOrder\";a:6:{s:4:\"name\";s:9:\"sortOrder\";s:4:\"desc\";s:29:\"prop_wayfinder.sortOrder_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:24:\"prop_wayfinder.ascending\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:25:\"prop_wayfinder.descending\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"sortBy\";a:6:{s:4:\"name\";s:6:\"sortBy\";s:4:\"desc\";s:26:\"prop_wayfinder.sortBy_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"limit\";a:6:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"prop_wayfinder.limit_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"cssTpl\";a:6:{s:4:\"name\";s:6:\"cssTpl\";s:4:\"desc\";s:26:\"prop_wayfinder.cssTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"jsTpl\";a:6:{s:4:\"name\";s:5:\"jsTpl\";s:4:\"desc\";s:25:\"prop_wayfinder.jsTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"rowIdPrefix\";a:6:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:31:\"prop_wayfinder.rowIdPrefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"textOfLinks\";a:6:{s:4:\"name\";s:11:\"textOfLinks\";s:4:\"desc\";s:31:\"prop_wayfinder.textOfLinks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menutitle\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"titleOfLinks\";a:6:{s:4:\"name\";s:12:\"titleOfLinks\";s:4:\"desc\";s:32:\"prop_wayfinder.titleOfLinks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"displayStart\";a:6:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:32:\"prop_wayfinder.displayStart_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"firstClass\";a:6:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:30:\"prop_wayfinder.firstClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"lastClass\";a:6:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:29:\"prop_wayfinder.lastClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"hereClass\";a:6:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:29:\"prop_wayfinder.hereClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"parentClass\";a:6:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:31:\"prop_wayfinder.parentClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"rowClass\";a:6:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:28:\"prop_wayfinder.rowClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"outerClass\";a:6:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:30:\"prop_wayfinder.outerClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"innerClass\";a:6:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:30:\"prop_wayfinder.innerClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:10:\"levelClass\";a:6:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:30:\"prop_wayfinder.levelClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"selfClass\";a:6:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:29:\"prop_wayfinder.selfClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"webLinkClass\";a:6:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:32:\"prop_wayfinder.webLinkClass_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"outerTpl\";a:6:{s:4:\"name\";s:8:\"outerTpl\";s:4:\"desc\";s:28:\"prop_wayfinder.outerTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"rowTpl\";a:6:{s:4:\"name\";s:6:\"rowTpl\";s:4:\"desc\";s:26:\"prop_wayfinder.rowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"parentRowTpl\";a:6:{s:4:\"name\";s:12:\"parentRowTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.parentRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:16:\"parentRowHereTpl\";a:6:{s:4:\"name\";s:16:\"parentRowHereTpl\";s:4:\"desc\";s:36:\"prop_wayfinder.parentRowHereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:7:\"hereTpl\";a:6:{s:4:\"name\";s:7:\"hereTpl\";s:4:\"desc\";s:27:\"prop_wayfinder.hereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:8:\"innerTpl\";a:6:{s:4:\"name\";s:8:\"innerTpl\";s:4:\"desc\";s:28:\"prop_wayfinder.innerTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"innerRowTpl\";a:6:{s:4:\"name\";s:11:\"innerRowTpl\";s:4:\"desc\";s:31:\"prop_wayfinder.innerRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"innerHereTpl\";a:6:{s:4:\"name\";s:12:\"innerHereTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.innerHereTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"activeParentRowTpl\";a:6:{s:4:\"name\";s:18:\"activeParentRowTpl\";s:4:\"desc\";s:38:\"prop_wayfinder.activeParentRowTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"categoryFoldersTpl\";a:6:{s:4:\"name\";s:18:\"categoryFoldersTpl\";s:4:\"desc\";s:38:\"prop_wayfinder.categoryFoldersTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:12:\"startItemTpl\";a:6:{s:4:\"name\";s:12:\"startItemTpl\";s:4:\"desc\";s:32:\"prop_wayfinder.startItemTpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:11:\"permissions\";a:6:{s:4:\"name\";s:11:\"permissions\";s:4:\"desc\";s:31:\"prop_wayfinder.permissions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"list\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:6:\"hereId\";a:6:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:26:\"prop_wayfinder.hereId_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:5:\"where\";a:6:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:25:\"prop_wayfinder.where_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:9:\"templates\";a:6:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:29:\"prop_wayfinder.templates_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}s:18:\"previewUnpublished\";a:6:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:38:\"prop_wayfinder.previewunpublished_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"wayfinder:properties\";}}','',0,'',0,0),
	(3,'FormIt','A dynamic form processing snippet.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\',null,MODX_CORE_PATH).\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n$fi->initialize($modx->context->get(\'key\'));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\nreturn $fi->request->handle($fields);',0,'a:55:{s:5:\"hooks\";a:7:{s:4:\"name\";s:5:\"hooks\";s:4:\"desc\";s:22:\"prop_formit.hooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:25:\"prop_formit.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:26:\"prop_formit.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"validate\";a:7:{s:4:\"name\";s:8:\"validate\";s:4:\"desc\";s:25:\"prop_formit.validate_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:23:\"prop_formit.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:37:\"<span class=\"error\">[[+error]]</span>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorMessage\";a:7:{s:4:\"name\";s:22:\"validationErrorMessage\";s:4:\"desc\";s:39:\"prop_formit.validationerrormessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:96:\"<p class=\"error\">A form validation error occurred. Please check the values you have entered.</p>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:22:\"validationErrorBulkTpl\";a:7:{s:4:\"name\";s:22:\"validationErrorBulkTpl\";s:4:\"desc\";s:39:\"prop_formit.validationerrorbulktpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:19:\"<li>[[+error]]</li>\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"customValidators\";a:7:{s:4:\"name\";s:16:\"customValidators\";s:4:\"desc\";s:33:\"prop_formit.customvalidators_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"clearFieldsOnSuccess\";a:7:{s:4:\"name\";s:20:\"clearFieldsOnSuccess\";s:4:\"desc\";s:37:\"prop_formit.clearfieldsonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"successMessage\";a:7:{s:4:\"name\";s:14:\"successMessage\";s:4:\"desc\";s:31:\"prop_formit.successmessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:25:\"successMessagePlaceholder\";a:7:{s:4:\"name\";s:25:\"successMessagePlaceholder\";s:4:\"desc\";s:42:\"prop_formit.successmessageplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:17:\"fi.successMessage\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:5:\"store\";a:7:{s:4:\"name\";s:5:\"store\";s:4:\"desc\";s:22:\"prop_formit.store_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:34:\"prop_formit.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"storeTime\";a:7:{s:4:\"name\";s:9:\"storeTime\";s:4:\"desc\";s:26:\"prop_formit.storetime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:300;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"allowFiles\";a:7:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:27:\"prop_formit.allowfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"spamEmailFields\";a:7:{s:4:\"name\";s:15:\"spamEmailFields\";s:4:\"desc\";s:32:\"prop_formit.spamemailfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"spamCheckIp\";a:7:{s:4:\"name\";s:11:\"spamCheckIp\";s:4:\"desc\";s:28:\"prop_formit.spamcheckip_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"recaptchaJs\";a:7:{s:4:\"name\";s:11:\"recaptchaJs\";s:4:\"desc\";s:28:\"prop_formit.recaptchajs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"{}\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:31:\"prop_formit.recaptchatheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:14:\"formit.opt_red\";s:5:\"value\";s:3:\"red\";}i:1;a:2:{s:4:\"text\";s:16:\"formit.opt_white\";s:5:\"value\";s:5:\"white\";}i:2;a:2:{s:4:\"text\";s:16:\"formit.opt_clean\";s:5:\"value\";s:5:\"clean\";}i:3;a:2:{s:4:\"text\";s:21:\"formit.opt_blackglass\";s:5:\"value\";s:10:\"blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:27:\"prop_formit.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:31:\"prop_formit.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailTo\";a:7:{s:4:\"name\";s:7:\"emailTo\";s:4:\"desc\";s:24:\"prop_formit.emailto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailToName\";a:7:{s:4:\"name\";s:11:\"emailToName\";s:4:\"desc\";s:28:\"prop_formit.emailtoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailFrom\";a:7:{s:4:\"name\";s:9:\"emailFrom\";s:4:\"desc\";s:26:\"prop_formit.emailfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"emailFromName\";a:7:{s:4:\"name\";s:13:\"emailFromName\";s:4:\"desc\";s:30:\"prop_formit.emailfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailReplyTo\";a:7:{s:4:\"name\";s:12:\"emailReplyTo\";s:4:\"desc\";s:29:\"prop_formit.emailreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:16:\"emailReplyToName\";a:7:{s:4:\"name\";s:16:\"emailReplyToName\";s:4:\"desc\";s:33:\"prop_formit.emailreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"emailCC\";a:7:{s:4:\"name\";s:7:\"emailCC\";s:4:\"desc\";s:24:\"prop_formit.emailcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailCCName\";a:7:{s:4:\"name\";s:11:\"emailCCName\";s:4:\"desc\";s:28:\"prop_formit.emailccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"emailBCC\";a:7:{s:4:\"name\";s:8:\"emailBCC\";s:4:\"desc\";s:25:\"prop_formit.emailbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailBCCName\";a:7:{s:4:\"name\";s:12:\"emailBCCName\";s:4:\"desc\";s:29:\"prop_formit.emailbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailSubject\";a:7:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:29:\"prop_formit.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:23:\"emailUseFieldForSubject\";a:7:{s:4:\"name\";s:23:\"emailUseFieldForSubject\";s:4:\"desc\";s:40:\"prop_formit.emailusefieldforsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"emailHtml\";a:7:{s:4:\"name\";s:9:\"emailHtml\";s:4:\"desc\";s:26:\"prop_formit.emailhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"emailConvertNewlines\";a:7:{s:4:\"name\";s:20:\"emailConvertNewlines\";s:4:\"desc\";s:37:\"prop_formit.emailconvertnewlines_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"emailMultiWrapper\";a:7:{s:4:\"name\";s:17:\"emailMultiWrapper\";s:4:\"desc\";s:34:\"prop_formit.emailmultiwrapper_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"[[+value]]\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:19:\"emailMultiSeparator\";a:7:{s:4:\"name\";s:19:\"emailMultiSeparator\";s:4:\"desc\";s:36:\"prop_formit.emailmultiseparator_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarTpl\";a:7:{s:4:\"name\";s:7:\"fiarTpl\";s:4:\"desc\";s:22:\"prop_fiar.fiartpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarToField\";a:7:{s:4:\"name\";s:11:\"fiarToField\";s:4:\"desc\";s:26:\"prop_fiar.fiartofield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarSubject\";a:7:{s:4:\"name\";s:11:\"fiarSubject\";s:4:\"desc\";s:26:\"prop_fiar.fiarsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:30:\"[[++site_name]] Auto-Responder\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarFrom\";a:7:{s:4:\"name\";s:8:\"fiarFrom\";s:4:\"desc\";s:23:\"prop_fiar.fiarfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"fiarFromName\";a:7:{s:4:\"name\";s:12:\"fiarFromName\";s:4:\"desc\";s:27:\"prop_fiar.fiarfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarReplyTo\";a:7:{s:4:\"name\";s:11:\"fiarReplyTo\";s:4:\"desc\";s:26:\"prop_fiar.fiarreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:15:\"fiarReplyToName\";a:7:{s:4:\"name\";s:15:\"fiarReplyToName\";s:4:\"desc\";s:30:\"prop_fiar.fiarreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:6:\"fiarCC\";a:7:{s:4:\"name\";s:6:\"fiarCC\";s:4:\"desc\";s:21:\"prop_fiar.fiarcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"fiarCCName\";a:7:{s:4:\"name\";s:10:\"fiarCCName\";s:4:\"desc\";s:25:\"prop_fiar.fiarccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"fiarBCC\";a:7:{s:4:\"name\";s:7:\"fiarBCC\";s:4:\"desc\";s:22:\"prop_fiar.fiarbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"fiarBCCName\";a:7:{s:4:\"name\";s:11:\"fiarBCCName\";s:4:\"desc\";s:26:\"prop_fiar.fiarbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fiarHtml\";a:7:{s:4:\"name\";s:8:\"fiarHtml\";s:4:\"desc\";s:23:\"prop_fiar.fiarhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMinRange\";a:7:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:27:\"prop_math.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:10;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMaxRange\";a:7:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:27:\"prop_math.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:100;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:9:\"mathField\";a:7:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:24:\"prop_math.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp1Field\";a:7:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:27:\"prop_math.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp2Field\";a:7:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:27:\"prop_math.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"mathOperatorField\";a:7:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:32:\"prop_math.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}','',0,'',0,0),
	(4,'FormItAutoResponder','Custom hook for FormIt to handle Auto-Response emails.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * A custom FormIt hook for auto-responders.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * @var fiHooks $hook\n * \n * @package formit\n */\n/* setup default properties */\n$tpl = $modx->getOption(\'fiarTpl\',$scriptProperties,\'fiarTpl\');\n$mailFrom = $modx->getOption(\'fiarFrom\',$scriptProperties,$modx->getOption(\'emailsender\'));\n$mailFromName = $modx->getOption(\'fiarFromName\',$scriptProperties,$modx->getOption(\'site_name\'));\n$mailSender = $modx->getOption(\'fiarSender\',$scriptProperties,$modx->getOption(\'emailsender\'));\n$mailSubject = $modx->getOption(\'fiarSubject\',$scriptProperties,\'[[++site_name]] Auto-Responder\');\n$mailSubject = str_replace(array(\'[[++site_name]]\',\'[[++emailsender]]\'),array($modx->getOption(\'site_name\'),$modx->getOption(\'emailsender\')),$mailSubject);\n$isHtml = $modx->getOption(\'fiarHtml\',$scriptProperties,true);\n$toField = $modx->getOption(\'fiarToField\',$scriptProperties,\'email\');\n$multiSeparator = $modx->getOption(\'fiarMultiSeparator\',$formit->config,\"\\n\");\n$multiWrapper = $modx->getOption(\'fiarMultiWrapper\',$formit->config,\"[[+value]]\");\nif (empty($fields[$toField])) {\n    $modx->log(modX::LOG_LEVEL_ERROR,\'[FormIt] Auto-responder could not find field `\'.$toField.\'` in form submission.\');\n    return false;\n}\n\n/* handle checkbox and array fields */\nforeach ($fields as $k => &$v) {\n    if (is_array($v)) {\n        $vOpts = array();\n        foreach ($v as $vKey => $vValue) {\n            if (is_string($vKey) && !empty($vKey)) {\n                $vKey = $k.\'.\'.$vKey;\n                $fields[$vKey] = $vValue;\n            } else {\n                $vOpts[] = str_replace(\'[[+value]]\',$vValue,$multiWrapper);\n            }\n        }\n        $newValue = implode($multiSeparator,$vOpts);\n        if (!empty($vOpts)) {\n            $fields[$k] = $newValue;\n        }\n    }\n}\n\n/* setup placeholders */\n$placeholders = $fields;\n$mailTo= $fields[$toField];\n\n$message = $formit->getChunk($tpl,$placeholders);\n$modx->parser->processElementTags(\'\',$message,true,false);\n\n$modx->getService(\'mail\', \'mail.modPHPMailer\');\n$modx->mail->reset();\n$modx->mail->set(modMail::MAIL_BODY,$message);\n$modx->mail->set(modMail::MAIL_FROM,$hook->_process($mailFrom,$placeholders));\n$modx->mail->set(modMail::MAIL_FROM_NAME,$hook->_process($mailFromName,$placeholders));\n$modx->mail->set(modMail::MAIL_SENDER,$hook->_process($mailSender,$placeholders));\n$modx->mail->set(modMail::MAIL_SUBJECT,$hook->_process($mailSubject,$placeholders));\n$modx->mail->address(\'to\',$mailTo);\n$modx->mail->setHTML($isHtml);\n\n/* reply to */\n$emailReplyTo = $modx->getOption(\'fiarReplyTo\',$scriptProperties,$mailFrom);\n$emailReplyTo = $hook->_process($emailReplyTo,$fields);\n$emailReplyToName = $modx->getOption(\'fiarReplyToName\',$scriptProperties,$mailFromName);\n$emailReplyToName = $hook->_process($emailReplyToName,$fields);\nif (!empty($emailReplyTo)) {\n    $modx->mail->address(\'reply-to\',$emailReplyTo,$emailReplyToName);\n}\n\n/* cc */\n$emailCC = $modx->getOption(\'fiarCC\',$scriptProperties,\'\');\nif (!empty($emailCC)) {\n    $emailCCName = $modx->getOption(\'fiarCCName\',$scriptProperties,\'\');\n    $emailCC = explode(\',\',$emailCC);\n    $emailCCName = explode(\',\',$emailCCName);\n    $numAddresses = count($emailCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailCCName[$i]) ? $emailCCName[$i] : \'\';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailCC[$i] = $hook->_process($emailCC[$i],$fields);\n        if (!empty($emailCC[$i])) {\n            $modx->mail->address(\'cc\',$emailCC[$i],$etn);\n        }\n    }\n}\n\n/* bcc */\n$emailBCC = $modx->getOption(\'fiarBCC\',$scriptProperties,\'\');\nif (!empty($emailBCC)) {\n    $emailBCCName = $modx->getOption(\'fiarBCCName\',$scriptProperties,\'\');\n    $emailBCC = explode(\',\',$emailBCC);\n    $emailBCCName = explode(\',\',$emailBCCName);\n    $numAddresses = count($emailBCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailBCCName[$i]) ? $emailBCCName[$i] : \'\';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailBCC[$i] = $hook->_process($emailBCC[$i],$fields);\n        if (!empty($emailBCC[$i])) {\n            $modx->mail->address(\'bcc\',$emailBCC[$i],$etn);\n        }\n    }\n}\n\nif (!$formit->inTestMode) {\n    if (!$modx->mail->send()) {\n        $modx->log(modX::LOG_LEVEL_ERROR,\'[FormIt] An error occurred while trying to send the auto-responder email: \'.$modx->mail->mailer->ErrorInfo);\n        return false;\n    }\n}\n$modx->mail->reset();\nreturn true;',0,NULL,'',0,'',0,0),
	(5,'FormItRetriever','Fetches a form submission for a user for displaying on a thank you page.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/* setup properties */\n$placeholderPrefix = $modx->getOption(\'placeholderPrefix\',$scriptProperties,\'fi.\');\n$eraseOnLoad = $modx->getOption(\'eraseOnLoad\',$scriptProperties,false);\n$redirectToOnNotFound = $modx->getOption(\'redirectToOnNotFound\',$scriptProperties,false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    $modx->toPlaceholders($data,$placeholderPrefix,\'\');\n    \n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data\'s not found, and we want to redirect somewhere if so, do here */\n} else if (!empty($redirectToOnNotFound)) {\n    $url = $modx->makeUrl($redirectToOnNotFound);\n    $modx->sendRedirect($url);\n}\nreturn \'\';',0,'a:3:{s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:31:\"prop_fir.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"redirectToOnNotFound\";a:7:{s:4:\"name\";s:20:\"redirectToOnNotFound\";s:4:\"desc\";s:34:\"prop_fir.redirecttoonnotfound_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"eraseOnLoad\";a:7:{s:4:\"name\";s:11:\"eraseOnLoad\";s:4:\"desc\";s:25:\"prop_fir.eraseonload_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}','',0,'',0,0),
	(6,'FormItIsChecked','A custom output filter used with checkboxes/radios for checking checked status.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' checked=\"checked\"\';\n}\nif (strpos($input,\',\') !== false) {\n    $input = explode(\',\',$input);\n    if (in_array($options,$input)) {\n        $output = \' checked=\"checked\"\';\n    }\n}\nreturn $output;',0,NULL,'',0,'',0,0),
	(7,'FormItIsSelected','A custom output filter used with dropdowns for checking selected status.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' selected=\"selected\"\';\n}\nif (strpos($input,\',\') !== false) {\n    $input = explode(\',\',$input);\n    if (in_array($options,$input)) {\n        $output = \' selected=\"selected\"\';\n    }\n}\nreturn $output;',0,NULL,'',0,'',0,0),
	(8,'FormItCountryOptions','A utility snippet for generating a dropdown list of countries.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiCountryOptions\',\'countryOptions\',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\nreturn $co->output();',0,'a:9:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fico.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fico.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"option\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:10:\"useIsoCode\";a:7:{s:4:\"name\";s:10:\"useIsoCode\";s:4:\"desc\";s:25:\"prop_fico.useisocode_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"prioritized\";a:7:{s:4:\"name\";s:11:\"prioritized\";s:4:\"desc\";s:26:\"prop_fico.prioritized_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:11:\"optGroupTpl\";a:7:{s:4:\"name\";s:11:\"optGroupTpl\";s:4:\"desc\";s:26:\"prop_fico.optgrouptpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"optgroup\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:20:\"prioritizedGroupText\";a:7:{s:4:\"name\";s:20:\"prioritizedGroupText\";s:4:\"desc\";s:35:\"prop_fico.prioritizedgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:12:\"allGroupText\";a:7:{s:4:\"name\";s:12:\"allGroupText\";s:4:\"desc\";s:27:\"prop_fico.allgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fico.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fico.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}','',0,'',0,0),
	(9,'FormItStateOptions','A utility snippet for generating a dropdown list of U.S. states.',0,1,0,'/**\n * FormIt\n *\n * Copyright 2009-2012 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a U.S. state list for usage in forms\n * \n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiStateOptions\',\'stateOptions\',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->iterate();\nreturn $co->output();',0,'a:6:{s:8:\"selected\";a:7:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fiso.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fiso.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"option\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"useAbbr\";a:7:{s:4:\"name\";s:7:\"useAbbr\";s:4:\"desc\";s:22:\"prop_fiso.useabbr_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:17:\"selectedAttribute\";a:7:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fiso.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:7:\"country\";a:7:{s:4:\"name\";s:7:\"country\";s:4:\"desc\";s:22:\"prop_fiso.country_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"us\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fiso.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";s:4:\"area\";s:0:\"\";}}','',0,'',0,0),
	(15,'GoogleSiteMap','Builds the Google SiteMap XML.',0,4,0,'/**\n * GoogleSiteMap\n *\n * Copyright 2009-2010 by Shaun McCormick <shaun@modx.com>\n *\n * - Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet\n *\n * GoogleSiteMap is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package googlesitemap\n */\n/**\n * GoogleSiteMap for MODx Revolution\n *\n * @package googlesitemap\n */\nrequire_once $modx->getOption(\'googlesitemap.core_path\',null,$modx->getOption(\'core_path\').\'components/googlesitemap/\').\'model/googlesitemap/googlesitemap.class.php\';\n$GoogleSiteMap = new GoogleSiteMap($modx,$scriptProperties);\n\n/* setup default properties */\n$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');\n$containerTpl = $modx->getOption(\'containerTpl\',$scriptProperties,\'gContainer\');\n$startId = (int)$modx->getOption(\'startId\',$scriptProperties,0);\n\n/* get container tpl and content */\nreturn $GoogleSiteMap->getChunk($containerTpl,array(\n    \'schema\' => $googleSchema,\n    \'items\' => $GoogleSiteMap->run($startId),\n));',0,'a:19:{s:16:\"allowedtemplates\";a:7:{s:4:\"name\";s:16:\"allowedtemplates\";s:4:\"desc\";s:30:\"prop_gsm.allowedtemplates_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"prop_gsm.context_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:8:\"maxDepth\";a:7:{s:4:\"name\";s:8:\"maxDepth\";s:4:\"desc\";s:22:\"prop_gsm.maxdepth_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"hideDeleted\";a:7:{s:4:\"name\";s:11:\"hideDeleted\";s:4:\"desc\";s:25:\"prop_gsm.hidedeleted_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"prop_gsm.showhidden_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"googleSchema\";a:7:{s:4:\"name\";s:12:\"googleSchema\";s:4:\"desc\";s:26:\"prop_gsm.googleschema_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:9:\"published\";a:7:{s:4:\"name\";s:9:\"published\";s:4:\"desc\";s:23:\"prop_gsm.published_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"searchable\";a:7:{s:4:\"name\";s:10:\"searchable\";s:4:\"desc\";s:24:\"prop_gsm.searchable_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:16:\"excludeResources\";a:7:{s:4:\"name\";s:16:\"excludeResources\";s:4:\"desc\";s:30:\"prop_gsm.excluderesources_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:17:\"excludeChildrenOf\";a:7:{s:4:\"name\";s:17:\"excludeChildrenOf\";s:4:\"desc\";s:31:\"prop_gsm.excludechildrenof_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:6:\"sortBy\";a:7:{s:4:\"name\";s:6:\"sortBy\";s:4:\"desc\";s:20:\"prop_gsm.sortby_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:11:\"sortByAlias\";a:7:{s:4:\"name\";s:11:\"sortByAlias\";s:4:\"desc\";s:25:\"prop_gsm.sortbyalias_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:11:\"modResource\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"sortDir\";a:7:{s:4:\"name\";s:7:\"sortDir\";s:4:\"desc\";s:21:\"prop_gsm.sortdir_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:14:\"templateFilter\";a:7:{s:4:\"name\";s:14:\"templateFilter\";s:4:\"desc\";s:28:\"prop_gsm.templatefilter_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"id\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"itemTpl\";a:7:{s:4:\"name\";s:7:\"itemTpl\";s:4:\"desc\";s:21:\"prop_gsm.itemtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"gItem\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:12:\"containerTpl\";a:7:{s:4:\"name\";s:12:\"containerTpl\";s:4:\"desc\";s:26:\"prop_gsm.containertpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"gContainer\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:7:\"startId\";a:7:{s:4:\"name\";s:7:\"startId\";s:4:\"desc\";s:21:\"prop_gsm.startid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"prop_gsm.where_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}s:10:\"priorityTV\";a:7:{s:4:\"name\";s:10:\"priorityTV\";s:4:\"desc\";s:24:\"prop_gsm.prioritytv_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;s:4:\"area\";s:0:\"\";}}','',0,'',0,0);

/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_templates`;

CREATE TABLE `modx_site_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;

INSERT INTO `modx_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`, `source`, `property_preprocess`)
VALUES
	(1,'BaseTemplate','Template',0,0,'',0,'<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href=\"[[++site_url]]\" />\n</head>\n<body>\n[[*content]]\n</body>\n</html>',0,NULL,0,'',0,0),
	(2,'maakee_basic','',0,0,'',0,'[[$maakee_header]]\n<div id=\"content_wrapper\">\n[[*content]]\n</div>\n[[$maakee_footer]]',0,'a:0:{}',0,'',0,0),
	(3,'maakee_work','',0,0,'',0,'[[$maakee_header]]\n<h3 class=\'mk_claim col12 last\'>[[*tvMaakeeClaim]]</h3><hr class=\'col12 last\'>\n[[$project_overview]]\n[[*content]]\n[[$maakee_footer]]',0,'a:0:{}',0,'',0,0),
	(4,'maakee_project','',0,0,'',0,'[[$maakee_header]]\n<div id=\"single_project\">\n<div class=\"projectFiles\">[[*tvProjectFiles]]</div>\n<div id=\"single_project_title\">[[*pagetitle]]</div>\n<div class=\"textblock col7\">\n[[*content]]\n</div>\n<hr class=\'col12 last\'>\n[[$project_overview]]\n</div>\n[[$maakee_footer]]',0,'a:0:{}',0,'',0,0);

/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_tmplvar_access
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_site_tmplvar_contentvalues
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;

INSERT INTO `modx_site_tmplvar_contentvalues` (`id`, `tmplvarid`, `contentid`, `value`)
VALUES
	(26,1,1,'To hear is to forget. To see is to remember.<br/>To do is to understand.'),
	(2,2,4,'assets/_img/plainmodern/plainmodern_thumb.jpg'),
	(3,3,4,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/plainmodern/plainmodern_1.png\" width=\"978\" height=\"560\" alt=\"Screenshot Skype - Plain Modern\"></li>\r\n</ul>\r\n</div>'),
	(4,2,5,'assets/_img/daliserver/dali_thumb.jpg'),
	(5,3,5,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_1.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_2.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_3.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_4.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_5.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/daliserver/dali_6.png\" width=\"978\" height=\"560\" alt=\"Screenshot Dali Server UI\"></li>\r\n</ul>\r\n</div>'),
	(6,2,6,'assets/_img/sleekdark/sleek_thumb.jpg'),
	(7,3,6,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/sleekdark/sleekdark_1.png\" width=\"978\" height=\"560\" alt=\"Screenshot iGoogle - sleek_dark\"></li>\r\n</ul>\r\n</div>'),
	(8,2,7,'assets/_img/lyricalizer/lyricalizer_thumb.jpg'),
	(9,3,7,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_1.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_2.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_3.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_4.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_5.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_6.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/lyricalizer/lyricalizer_7.jpg\" width=\"978\" height=\"560\" alt=\"Screenshot Lyricalizer\"></li>\r\n</ul>\r\n</div>'),
	(10,2,8,'assets/_img/z610i/z610i_thumb.jpg'),
	(11,3,8,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/z610i/z610i_1.jpg\" width=\"978\" height=\"560\" alt=\"z610i Theme composition\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/z610i/z610i_2.jpg\" width=\"978\" height=\"560\" alt=\"z610i Theme composition\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/z610i/z610i_3.jpg\" width=\"978\" height=\"560\" alt=\"z610i Theme composition\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/z610i/z610i_4.jpg\" width=\"978\" height=\"560\" alt=\"z610i Theme composition\"></li>\r\n</ul>\r\n</div>'),
	(12,2,9,'assets/_img/imakemusic/imakemusic_thumb.jpg'),
	(13,3,9,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/imakemusic/imakemusic_1.jpg\" width=\"978\" height=\"560\" alt=\"Headphones Render\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/imakemusic/imakemusic_2.jpg\" width=\"978\" height=\"560\" alt=\"Headphones Render\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/imakemusic/imakemusic_3.jpg\" width=\"978\" height=\"560\" alt=\"Headphones Render\"></li>\r\n</ul>\r\n</div>'),
	(14,2,10,'assets/_img/fms/fms_thumb.jpg'),
	(16,2,11,'assets/_img/tastes/tastes_thumb.jpg'),
	(15,3,10,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/fms/fms_1.jpg\" width=\"978\" height=\"560\" alt=\"FillMyScreen Screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/fms/fms_2.jpg\" width=\"978\" height=\"560\" alt=\"FillMyScreen Screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/fms/fms_3.jpg\" width=\"978\" height=\"560\" alt=\"FillMyScreen Screenshot\"></li>\r\n</ul>\r\n</div>'),
	(17,3,11,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/tastes/tastes_1.jpg\" width=\"978\" height=\"560\" alt=\"it.Tastes Render\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/tastes/tastes_2.jpg\" width=\"978\" height=\"560\" alt=\"it.Tastes Render\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/tastes/tastes_3.jpg\" width=\"978\" height=\"560\" alt=\"it.Tastes Render\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/tastes/tastes_4.jpg\" width=\"978\" height=\"560\" alt=\"it.Tastes Render\"></li>\r\n</ul>\r\n</div>'),
	(18,2,12,'assets/_img/hypercube/hypercube_thumb.jpg'),
	(19,3,12,'<div class=\"videoWrapper\">\r\n<video src=\"[[++site_url]]assets/_img/hypercube/ljh_hypercube_final.mp4\" width=\"978\" height=\"560\"></video>\r\n</div>'),
	(20,2,13,'assets/_img/kinospots/kinospots_thumb.jpg'),
	(21,3,13,'<div class=\"videoWrapper\">\r\n<video src=\"[[++site_url]]assets/_img/kinospots/spot_verkehr_dvd.mp4\" width=\"978\" height=\"560\"></video>\r\n<video src=\"[[++site_url]]assets/_img/kinospots/spot_handy_dvd.mp4\" width=\"978\" height=\"560\"></video>\r\n<video src=\"[[++site_url]]assets/_img/kinospots/spot_wetter_dvd.mp4\" width=\"978\" height=\"560\"></video>\r\n</div>'),
	(22,2,14,'assets/_img/maakeeFTR/maakeeftr_thumb.png'),
	(23,3,14,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/maakeeFTR/maakeeftr_1.jpg\" width=\"978\" height=\"560\" alt=\"maakeeFTR Light Letters\"></li>\r\n</ul>\r\n</div>'),
	(24,2,15,'assets/_img/freedom/freedom_thumb.jpg'),
	(25,3,15,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/freedom/freedom_1.jpg\" width=\"978\" height=\"560\" alt=\"freedom screenshot\"></li>\r\n</ul>\r\n</div>'),
	(27,2,19,'assets/_img/ofc/ofc_thumb.jpg'),
	(28,3,19,'<div class=\"proSlider\">\r\n<ul>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens0.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens1.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens2.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens3.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens4.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n<li><img src=\"[[++site_url]]assets/_img/ofc/bonnier_screens5.jpg\" width=\"978\" height=\"560\" alt=\"ofc screenshot\"></li>\r\n</ul>\r\n</div>');

/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_tmplvar_templates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;

INSERT INTO `modx_site_tmplvar_templates` (`tmplvarid`, `templateid`, `rank`)
VALUES
	(1,3,0),
	(3,4,0),
	(2,4,0);

/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_site_tmplvars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_site_tmplvars`;

CREATE TABLE `modx_site_tmplvars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(255) NOT NULL DEFAULT '',
  `source` int(10) unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;

INSERT INTO `modx_site_tmplvars` (`id`, `type`, `name`, `caption`, `description`, `editor_type`, `category`, `locked`, `elements`, `rank`, `display`, `default_text`, `properties`, `input_properties`, `output_properties`, `static`, `static_file`, `source`, `property_preprocess`)
VALUES
	(1,'text','tvMaakeeClaim','tvMaakeeClaim','',0,0,0,'',0,'default','','a:0:{}','a:3:{s:10:\"allowBlank\";s:4:\"true\";s:9:\"maxLength\";s:0:\"\";s:9:\"minLength\";s:0:\"\";}','a:0:{}',0,'',0,0),
	(2,'image','tvProjectThumb','tvProjectThumb','',0,0,0,'',0,'default','','a:0:{}','a:6:{s:8:\"basePath\";s:0:\"\";s:16:\"basePathRelative\";s:4:\"true\";s:7:\"baseUrl\";s:0:\"\";s:15:\"baseUrlRelative\";s:4:\"true\";s:24:\"baseUrlPrependCheckSlash\";s:4:\"true\";s:16:\"allowedFileTypes\";s:7:\"jpg,png\";}','a:0:{}',0,'',0,0),
	(3,'textarea','tvProjectFiles','tvProjectFiles','',0,0,0,'',0,'default','','a:0:{}','a:1:{s:10:\"allowBlank\";s:4:\"true\";}','a:0:{}',0,'',0,0);

/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_system_eventnames
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_system_eventnames`;

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`)
VALUES
	('OnPluginEventBeforeSave',1,'Plugin Events'),
	('OnPluginEventSave',1,'Plugin Events'),
	('OnPluginEventBeforeRemove',1,'Plugin Events'),
	('OnPluginEventRemove',1,'Plugin Events'),
	('OnResourceGroupSave',1,'Security'),
	('OnResourceGroupBeforeSave',1,'Security'),
	('OnResourceGroupRemove',1,'Security'),
	('OnResourceGroupBeforeRemove',1,'Security'),
	('OnSnippetBeforeSave',1,'Snippets'),
	('OnSnippetSave',1,'Snippets'),
	('OnSnippetBeforeRemove',1,'Snippets'),
	('OnSnippetRemove',1,'Snippets'),
	('OnSnipFormPrerender',1,'Snippets'),
	('OnSnipFormRender',1,'Snippets'),
	('OnBeforeSnipFormSave',1,'Snippets'),
	('OnSnipFormSave',1,'Snippets'),
	('OnBeforeSnipFormDelete',1,'Snippets'),
	('OnSnipFormDelete',1,'Snippets'),
	('OnTemplateBeforeSave',1,'Templates'),
	('OnTemplateSave',1,'Templates'),
	('OnTemplateBeforeRemove',1,'Templates'),
	('OnTemplateRemove',1,'Templates'),
	('OnTempFormPrerender',1,'Templates'),
	('OnTempFormRender',1,'Templates'),
	('OnBeforeTempFormSave',1,'Templates'),
	('OnTempFormSave',1,'Templates'),
	('OnBeforeTempFormDelete',1,'Templates'),
	('OnTempFormDelete',1,'Templates'),
	('OnTemplateVarBeforeSave',1,'Template Variables'),
	('OnTemplateVarSave',1,'Template Variables'),
	('OnTemplateVarBeforeRemove',1,'Template Variables'),
	('OnTemplateVarRemove',1,'Template Variables'),
	('OnTVFormPrerender',1,'Template Variables'),
	('OnTVFormRender',1,'Template Variables'),
	('OnBeforeTVFormSave',1,'Template Variables'),
	('OnTVFormSave',1,'Template Variables'),
	('OnBeforeTVFormDelete',1,'Template Variables'),
	('OnTVFormDelete',1,'Template Variables'),
	('OnTVInputRenderList',1,'Template Variables'),
	('OnTVInputPropertiesList',1,'Template Variables'),
	('OnTVOutputRenderList',1,'Template Variables'),
	('OnTVOutputRenderPropertiesList',1,'Template Variables'),
	('OnUserGroupBeforeSave',1,'User Groups'),
	('OnUserGroupSave',1,'User Groups'),
	('OnUserGroupBeforeRemove',1,'User Groups'),
	('OnUserGroupRemove',1,'User Groups'),
	('OnBeforeUserGroupFormSave',1,'User Groups'),
	('OnUserGroupFormSave',1,'User Groups'),
	('OnBeforeUserGroupFormRemove',1,'User Groups'),
	('OnDocFormPrerender',1,'Resources'),
	('OnDocFormRender',1,'Resources'),
	('OnBeforeDocFormSave',1,'Resources'),
	('OnDocFormSave',1,'Resources'),
	('OnBeforeDocFormDelete',1,'Resources'),
	('OnDocFormDelete',1,'Resources'),
	('OnDocPublished',5,'Resources'),
	('OnDocUnPublished',5,'Resources'),
	('OnBeforeEmptyTrash',1,'Resources'),
	('OnEmptyTrash',1,'Resources'),
	('OnResourceTVFormPrerender',1,'Resources'),
	('OnResourceTVFormRender',1,'Resources'),
	('OnResourceDelete',1,'Resources'),
	('OnResourceUndelete',1,'Resources'),
	('OnResourceBeforeSort',1,'Resources'),
	('OnResourceSort',1,'Resources'),
	('OnResourceDuplicate',1,'Resources'),
	('OnResourceToolbarLoad',1,'Resources'),
	('OnRichTextEditorRegister',1,'RichText Editor'),
	('OnRichTextEditorInit',1,'RichText Editor'),
	('OnRichTextBrowserInit',1,'RichText Editor'),
	('OnWebLogin',3,'Security'),
	('OnBeforeWebLogout',3,'Security'),
	('OnWebLogout',3,'Security'),
	('OnManagerLogin',2,'Security'),
	('OnBeforeManagerLogout',2,'Security'),
	('OnManagerLogout',2,'Security'),
	('OnBeforeWebLogin',3,'Security'),
	('OnWebAuthentication',3,'Security'),
	('OnBeforeManagerLogin',2,'Security'),
	('OnManagerAuthentication',2,'Security'),
	('OnManagerLoginFormRender',2,'Security'),
	('OnManagerLoginFormPrerender',2,'Security'),
	('OnPageUnauthorized',1,'Security'),
	('OnUserFormPrerender',1,'Users'),
	('OnUserFormRender',1,'Users'),
	('OnBeforeUserFormSave',1,'Users'),
	('OnUserFormSave',1,'Users'),
	('OnBeforeUserFormDelete',1,'Users'),
	('OnUserFormDelete',1,'Users'),
	('OnUserNotFound',1,'Users'),
	('OnBeforeUserActivate',1,'Users'),
	('OnUserActivate',1,'Users'),
	('OnUserChangePassword',1,'Users'),
	('OnUserBeforeRemove',1,'Users'),
	('OnUserBeforeSave',1,'Users'),
	('OnUserSave',1,'Users'),
	('OnUserRemove',1,'Users'),
	('OnUserBeforeAddToGroup',1,'User Groups'),
	('OnUserAddToGroup',1,'User Groups'),
	('OnUserBeforeRemoveFromGroup',1,'User Groups'),
	('OnUserRemoveFromGroup',1,'User Groups'),
	('OnWebPagePrerender',5,'System'),
	('OnBeforeCacheUpdate',4,'System'),
	('OnCacheUpdate',4,'System'),
	('OnLoadWebPageCache',4,'System'),
	('OnBeforeSaveWebPageCache',4,'System'),
	('OnSiteRefresh',1,'System'),
	('OnFileManagerUpload',1,'System'),
	('OnFileEditFormPrerender',1,'System'),
	('OnManagerPageInit',2,'System'),
	('OnWebPageInit',5,'System'),
	('OnLoadWebDocument',5,'System'),
	('OnParseDocument',5,'System'),
	('OnWebPageComplete',5,'System'),
	('OnBeforeManagerPageInit',2,'System'),
	('OnPageNotFound',1,'System'),
	('OnHandleRequest',5,'System'),
	('OnSiteSettingsRender',1,'Settings'),
	('OnInitCulture',3,'Internationalization'),
	('OnCategorySave',1,'Categories'),
	('OnCategoryBeforeSave',1,'Categories'),
	('OnCategoryRemove',1,'Categories'),
	('OnCategoryBeforeRemove',1,'Categories'),
	('OnChunkSave',1,'Chunks'),
	('OnChunkBeforeSave',1,'Chunks'),
	('OnChunkRemove',1,'Chunks'),
	('OnChunkBeforeRemove',1,'Chunks'),
	('OnChunkFormPrerender',1,'Chunks'),
	('OnChunkFormRender',1,'Chunks'),
	('OnBeforeChunkFormSave',1,'Chunks'),
	('OnChunkFormSave',1,'Chunks'),
	('OnBeforeChunkFormDelete',1,'Chunks'),
	('OnChunkFormDelete',1,'Chunks'),
	('OnContextSave',1,'Contexts'),
	('OnContextBeforeSave',1,'Contexts'),
	('OnContextRemove',1,'Contexts'),
	('OnContextBeforeRemove',1,'Contexts'),
	('OnContextFormPrerender',2,'Contexts'),
	('OnContextFormRender',2,'Contexts'),
	('OnPluginSave',1,'Plugins'),
	('OnPluginBeforeSave',1,'Plugins'),
	('OnPluginRemove',1,'Plugins'),
	('OnPluginBeforeRemove',1,'Plugins'),
	('OnPluginFormPrerender',1,'Plugins'),
	('OnPluginFormRender',1,'Plugins'),
	('OnBeforePluginFormSave',1,'Plugins'),
	('OnPluginFormSave',1,'Plugins'),
	('OnBeforePluginFormDelete',1,'Plugins'),
	('OnPluginFormDelete',1,'Plugins'),
	('OnPropertySetSave',1,'Property Sets'),
	('OnPropertySetBeforeSave',1,'Property Sets'),
	('OnPropertySetRemove',1,'Property Sets'),
	('OnPropertySetBeforeRemove',1,'Property Sets'),
	('OnResourceRemoveFromResourceGroup',1,'Resources'),
	('OnResourceAddToResourceGroup',1,'Resources'),
	('OnBeforeUserDeactivate',1,'Users'),
	('OnUserDeactivate',1,'Users'),
	('OnBeforeUserDuplicate',1,'Users'),
	('OnUserDuplicate',1,'Users'),
	('OnFileCreateFormPrerender',1,'System'),
	('OnManagerPageBeforeRender',2,'System'),
	('OnManagerPageAfterRender',2,'System'),
	('OnMediaSourceBeforeFormDelete',1,'Media Sources'),
	('OnMediaSourceBeforeFormSave',1,'Media Sources'),
	('OnMediaSourceGetProperties',1,'Media Sources'),
	('OnMediaSourceFormDelete',1,'Media Sources'),
	('OnMediaSourceFormSave',1,'Media Sources'),
	('OnMediaSourceDuplicate',1,'Media Sources');

/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_system_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_system_settings`;

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`)
VALUES
	('access_category_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('access_context_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('access_resource_group_enabled','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('allow_forward_across_contexts','','combo-boolean','core','system','0000-00-00 00:00:00'),
	('allow_tags_in_post','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('allow_multiple_emails','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('archive_with','','combo-boolean','core','system','0000-00-00 00:00:00'),
	('auto_menuindex','1','combo-boolean','core','site','0000-00-00 00:00:00'),
	('auto_check_pkg_updates','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('auto_check_pkg_updates_cache_expire','15','textfield','core','system','0000-00-00 00:00:00'),
	('automatic_alias','0','combo-boolean','core','furls','0000-00-00 00:00:00'),
	('base_help_url','http://rtfm.modx.com/display/revolution20/','textfield','core','manager','0000-00-00 00:00:00'),
	('blocked_minutes','60','textfield','core','authentication','0000-00-00 00:00:00'),
	('cache_action_map','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_context_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_db','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_db_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_db_session','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_db_session_lifetime','','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_default','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_disabled','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_format','0','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_handler','xPDOFileCache','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_lang_js','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_noncore_lexicon_topics','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_resource','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_resource_expires','0','textfield','core','caching','0000-00-00 00:00:00'),
	('cache_scripts','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('cache_system_settings','1','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('clear_cache_refresh_trees','0','combo-boolean','core','caching','0000-00-00 00:00:00'),
	('compress_css','1','combo-boolean','core','manager','2011-07-06 23:01:42'),
	('compress_js','1','combo-boolean','core','manager','2011-07-06 23:01:42'),
	('concat_js','1','combo-boolean','core','manager','2011-07-06 23:01:42'),
	('container_suffix','/','textfield','core','furls','0000-00-00 00:00:00'),
	('cultureKey','en','modx-combo-language','core','language','0000-00-00 00:00:00'),
	('custom_resource_classes','','textfield','core','system','0000-00-00 00:00:00'),
	('default_per_page','20','textfield','core','manager','0000-00-00 00:00:00'),
	('default_template','1','modx-combo-template','core','site','0000-00-00 00:00:00'),
	('editor_css_path','','textfield','core','editor','0000-00-00 00:00:00'),
	('editor_css_selectors','','textfield','core','editor','0000-00-00 00:00:00'),
	('emailsender','saftsaak@me.com','textfield','core','authentication','2011-07-06 23:01:42'),
	('emailsubject','Your login details','textfield','core','authentication','0000-00-00 00:00:00'),
	('enable_dragdrop','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('error_page','1','textfield','core','site','0000-00-00 00:00:00'),
	('failed_login_attempts','5','textfield','core','authentication','0000-00-00 00:00:00'),
	('fe_editor_lang','en','modx-combo-language','core','language','0000-00-00 00:00:00'),
	('feed_modx_news','http://feeds.feedburner.com/modx-announce','textfield','core','system','0000-00-00 00:00:00'),
	('feed_modx_news_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('feed_modx_security','http://feeds.feedburner.com/modxsecurity','textfield','core','system','0000-00-00 00:00:00'),
	('feed_modx_security_enabled','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('filemanager_path','','textfield','core','file','0000-00-00 00:00:00'),
	('filemanager_path_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),
	('filemanager_url','','textfield','core','file','0000-00-00 00:00:00'),
	('filemanager_url_relative','1','combo-boolean','core','file','0000-00-00 00:00:00'),
	('forgot_login_email','<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
	('forward_merge_excludes','type,published,class_key,context_key','textfield','core','system','0000-00-00 00:00:00'),
	('friendly_alias_lowercase_only','1','combo-boolean','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_max_length','0','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_restrict_chars','pattern','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_strip_element_tags','1','combo-boolean','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_translit','none','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_trim_chars','/.-_','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_word_delimiter','-','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_alias_word_delimiters','-_','textfield','core','furls','0000-00-00 00:00:00'),
	('friendly_urls','1','combo-boolean','core','furls','2011-07-06 23:22:39'),
	('global_duplicate_uri_check','','combo-boolean','core','furls','2011-07-06 23:22:39'),
	('hidemenu_default','0','combo-boolean','core','site','0000-00-00 00:00:00'),
	('link_tag_scheme','-1','textfield','core','site','0000-00-00 00:00:00'),
	('mail_charset','UTF-8','modx-combo-charset','core','mail','0000-00-00 00:00:00'),
	('mail_encoding','8bit','textfield','core','mail','0000-00-00 00:00:00'),
	('mail_use_smtp','','combo-boolean','core','mail','2011-07-08 13:10:18'),
	('mail_smtp_auth','','combo-boolean','core','mail','2011-07-08 13:20:42'),
	('mail_smtp_helo','','textfield','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_hosts','s128501.gridserver.com','textfield','core','mail','2011-07-08 13:16:30'),
	('mail_smtp_keepalive','','combo-boolean','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_pass','sch1Z0.P','text-password','core','mail','2011-07-08 13:18:54'),
	('mail_smtp_port','587','textfield','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_prefix','','textfield','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_single_to','','combo-boolean','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_timeout','10','textfield','core','mail','0000-00-00 00:00:00'),
	('mail_smtp_user','postmaster@maakee.me','textfield','core','mail','2011-07-08 13:18:50'),
	('manager_date_format','Y-m-d','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_favicon_url','','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_time_format','g:i a','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_direction','ltr','textfield','core','language','0000-00-00 00:00:00'),
	('manager_lang_attribute','en','textfield','core','language','0000-00-00 00:00:00'),
	('manager_language','en','modx-combo-language','core','language','0000-00-00 00:00:00'),
	('manager_theme','default','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_use_tabs','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('modx_charset','UTF-8','modx-combo-charset','core','language','0000-00-00 00:00:00'),
	('principal_targets','modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource','textfield','core','authentication','2012-11-01 12:13:08'),
	('proxy_auth_type','BASIC','textfield','core','proxy','0000-00-00 00:00:00'),
	('proxy_host','','textfield','core','proxy','0000-00-00 00:00:00'),
	('proxy_password','','text-password','core','proxy','0000-00-00 00:00:00'),
	('proxy_port','','textfield','core','proxy','0000-00-00 00:00:00'),
	('proxy_username','','textfield','core','proxy','0000-00-00 00:00:00'),
	('password_generated_length','8','textfield','core','authentication','0000-00-00 00:00:00'),
	('password_min_length','8','textfield','core','authentication','0000-00-00 00:00:00'),
	('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_cache_maxage','30','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_cache_maxsize','100','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_cache_maxfiles','10000','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_document_root','','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_error_fontsize','1','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_far','C','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_imagemagick_path','','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('phpthumb_zoomcrop','0','textfield','core','phpthumb','0000-00-00 00:00:00'),
	('publish_default','','combo-boolean','core','site','0000-00-00 00:00:00'),
	('rb_base_dir','','textfield','core','file','0000-00-00 00:00:00'),
	('rb_base_url','','textfield','core','file','0000-00-00 00:00:00'),
	('request_controller','index.php','textfield','core','gateway','0000-00-00 00:00:00'),
	('request_param_alias','q','textfield','core','gateway','0000-00-00 00:00:00'),
	('request_param_id','id','textfield','core','gateway','0000-00-00 00:00:00'),
	('resolve_hostnames','0','combo-boolean','core','system','0000-00-00 00:00:00'),
	('resource_tree_node_name','pagetitle','textfield','core','manager','0000-00-00 00:00:00'),
	('resource_tree_node_tooltip','','textfield','core','manager','0000-00-00 00:00:00'),
	('richtext_default','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('search_default','1','combo-boolean','core','site','0000-00-00 00:00:00'),
	('server_offset_time','0','textfield','core','system','0000-00-00 00:00:00'),
	('server_protocol','http','textfield','core','system','0000-00-00 00:00:00'),
	('session_cookie_domain','','textfield','core','session','0000-00-00 00:00:00'),
	('session_cookie_lifetime','604800','textfield','core','session','0000-00-00 00:00:00'),
	('session_cookie_path','/','textfield','core','session','0000-00-00 00:00:00'),
	('session_cookie_secure','','combo-boolean','core','session','0000-00-00 00:00:00'),
	('session_gc_maxlifetime','604800','textfield','core','session','2011-10-27 11:29:53'),
	('session_handler_class','modSessionHandler','textfield','core','session','0000-00-00 00:00:00'),
	('session_name','','textfield','core','session','0000-00-00 00:00:00'),
	('set_header','1','combo-boolean','core','system','0000-00-00 00:00:00'),
	('signupemail_message','<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
	('site_name','maakee','textfield','core','site','2011-07-06 23:22:50'),
	('site_start','1','textfield','core','site','0000-00-00 00:00:00'),
	('site_status','1','combo-boolean','core','site','0000-00-00 00:00:00'),
	('site_unavailable_message','The site is currently unavailable','textfield','core','site','0000-00-00 00:00:00'),
	('site_unavailable_page','0','textfield','core','site','0000-00-00 00:00:00'),
	('strip_image_paths','1','combo-boolean','core','file','0000-00-00 00:00:00'),
	('symlink_merge_fields','1','combo-boolean','core','site','0000-00-00 00:00:00'),
	('topmenu_show_descriptions','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('tree_default_sort','menuindex','textfield','core','manager','0000-00-00 00:00:00'),
	('tree_root_id','0','numberfield','core','manager','0000-00-00 00:00:00'),
	('udperms_allowroot','','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('unauthorized_page','1','textfield','core','site','0000-00-00 00:00:00'),
	('upload_files','txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt,ppt,pptx,docx,xlsx,jpg,jpeg,png,gif,psd,ico,bmp','textfield','core','file','0000-00-00 00:00:00'),
	('upload_flash','swf,fla','textfield','core','file','0000-00-00 00:00:00'),
	('upload_images','jpg,jpeg,png,gif,psd,ico,bmp','textfield','core','file','0000-00-00 00:00:00'),
	('upload_maxsize','1048576','textfield','core','file','0000-00-00 00:00:00'),
	('upload_media','mp3,wav,au,wmv,avi,mpg,mpeg','textfield','core','file','0000-00-00 00:00:00'),
	('use_alias_path','0','combo-boolean','core','furls','0000-00-00 00:00:00'),
	('use_browser','1','combo-boolean','core','file','0000-00-00 00:00:00'),
	('use_editor','1','combo-boolean','core','editor','0000-00-00 00:00:00'),
	('use_multibyte','1','combo-boolean','core','language','2011-07-06 23:01:42'),
	('webpwdreminder_message','<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
	('websignupemail_message','<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication','0000-00-00 00:00:00'),
	('welcome_screen','','combo-boolean','core','manager','2011-07-06 23:02:28'),
	('welcome_screen_url','http://misc.modx.com/revolution/welcome.22.html','textfield','core','manager','2012-11-01 12:13:08'),
	('which_editor','TinyMCE','modx-combo-rte','core','editor','2011-07-07 12:09:31'),
	('which_element_editor','','modx-combo-rte','core','editor','0000-00-00 00:00:00'),
	('xhtml_urls','1','combo-boolean','core','site','0000-00-00 00:00:00'),
	('settings_version','2.2.5-pl','textfield','core','system','2012-11-01 12:13:12'),
	('settings_distro','traditional','textfield','core','system','0000-00-00 00:00:00'),
	('access_policies_version','1.0','textfield','core','system','0000-00-00 00:00:00'),
	('context_tree_sortdir','ASC','textfield','core','manager','0000-00-00 00:00:00'),
	('context_tree_sortby','key','textfield','core','manager','0000-00-00 00:00:00'),
	('maillog-status','0','textfield','janitor','Janitor','0000-00-00 00:00:00'),
	('maillog-account','','textfield','janitor','Janitor','0000-00-00 00:00:00'),
	('context_tree_sort','','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('formit.recaptcha_public_key','','textfield','formit','reCaptcha','0000-00-00 00:00:00'),
	('formit.recaptcha_private_key','','textfield','formit','reCaptcha','0000-00-00 00:00:00'),
	('formit.recaptcha_use_ssl','','combo-boolean','formit','reCaptcha','0000-00-00 00:00:00'),
	('allow_manager_login_forgot_password','1','combo-boolean','core','authentication','0000-00-00 00:00:00'),
	('compress_js_max_files','10','textfield','core','manager','0000-00-00 00:00:00'),
	('compress_js_groups','','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('date_timezone','','textfield','core','system','0000-00-00 00:00:00'),
	('debug','','textfield','core','system','0000-00-00 00:00:00'),
	('default_duplicate_publish_option','preserve','textfield','core','manager','0000-00-00 00:00:00'),
	('default_media_source','1','modx-combo-source','core','manager','0000-00-00 00:00:00'),
	('default_context','web','modx-combo-context','core','site','0000-00-00 00:00:00'),
	('default_content_type','1','modx-combo-content-type','core','site','0000-00-00 00:00:00'),
	('form_customization_use_all_groups','','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('friendly_urls_strict','0','combo-boolean','core','furls','0000-00-00 00:00:00'),
	('inline_help','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('locale','','textfield','core','language','0000-00-00 00:00:00'),
	('log_level','1','textfield','core','system','0000-00-00 00:00:00'),
	('log_target','FILE','textfield','core','system','0000-00-00 00:00:00'),
	('lock_ttl','360','textfield','core','system','0000-00-00 00:00:00'),
	('manager_html5_cache','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('manager_js_cache_file_locking','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('manager_js_cache_max_age','3600','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_js_document_root','','textfield','core','manager','0000-00-00 00:00:00'),
	('manager_js_zlib_output_compression','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('manager_login_url_alternate','','textfield','core','authentication','0000-00-00 00:00:00'),
	('manager_week_start','0','textfield','core','manager','0000-00-00 00:00:00'),
	('modx_browser_default_sort','name','textfield','core','manager','0000-00-00 00:00:00'),
	('request_method_strict','0','combo-boolean','core','gateway','0000-00-00 00:00:00'),
	('show_tv_categories_header','1','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('tvs_below_content','0','combo-boolean','core','manager','0000-00-00 00:00:00'),
	('use_weblink_target','','combo-boolean','core','site','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_transport_packages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_transport_packages`;

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workspace` int(10) unsigned NOT NULL DEFAULT '0',
  `provider` int(10) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(255) NOT NULL,
  `metadata` text,
  `version_major` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_minor` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `version_patch` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_transport_packages` WRITE;
/*!40000 ALTER TABLE `modx_transport_packages` DISABLE KEYS */;

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`)
VALUES
	('getresources-1.3.0-pl','2011-07-06 02:19:56','2011-07-06 23:20:26','2011-07-06 14:20:26',0,1,1,0,'getresources-1.3.0-pl.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:329:\"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.3.0-pl\nReleased: March 28, 2011\nSince: December 28, 2009\nAuthor: Jason Coward <jason@modx.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n\";s:9:\"changelog\";s:1747:\"Changelog for getResources.\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(\'ECHO\')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:21:\"getresources-1.3.0-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:49:\"/workspace/package/install/getresources-1.3.0-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e14cd61ec14e7.62063804\";}','getresources','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.3.0-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.3.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:621:\"This release of getResources fixes a significant performance issue when the includeContent property is not set to true and solves several issues encountered when working with property sets. I\'ve also introduced a new user contributed feature to set the output of each Resource to a separate placeholder, allow a JSON array as the sortby value for multiple column sorting capabilities, and provided native support for sorting TV values as an integer, decimal, or datetime value by using the SQL CAST() function.<p></p><p>getResources 1.3.0 also supports the sqlsrv driver that is now supported by MODX Revolution 2.1+.</p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:37:\"<p>Install via Package Management</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:529:\"<p></p><p style=\"margin-bottom: 15px; \">getResources 1.3.0-pl (March 28, 2011)</p><p style=\"margin-bottom: 15px; \"></p><ul style=\"margin-bottom: 15px; \"><li>&#91;#33&#93; sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()</li><li>&#91;#24&#93; Fix typos in list property options</li><li>&#91;#4&#93; Support multiple sortby fields via JSON object</li><li>Use get() instead to toArray() if includeContent is false</li><li>&#91;#22&#93; Add &amp;toSeparatePlaceholders property for splitting output</li></ul><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-29 03:28:55 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-29 03:28:55 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"23564\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"getResources\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d9151f9f245547b00000021\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d9151f7f245547b0000001f\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:35:\"getresources-1.3.0-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"8350\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"80.216.218.97\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4d9151f9f245547b00000021\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.3.0-pl\";s:8:\"children\";a:0:{}}}',1,3,0,'pl',0),
	('wayfinder-2.3.1-pl','2011-07-06 02:20:10','2011-07-06 23:20:42','2011-07-06 14:20:42',0,1,1,0,'wayfinder-2.3.1-pl.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:804:\"::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.3.0 (Revolution compatible)\n Authors: \n    Kyle Jaebker (muddydogpaws.com)\n    Ryan Thrash (vertexworks.com)\n    Shaun McCormick (splittingred.com)\n ::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::\";s:9:\"changelog\";s:2005:\"Changelog for Wayfinder (for Revolution).\n\nWayfinder 2.3.1\n====================================\n- [#31] Add &scheme property for specifying link schemes\n- [#27] Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching\n\nWayfinder 2.3.0\n====================================\n- [#14] Fix issue with hideSubMenus when using it with a non-zero startId\n- Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc\n- Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set\n- Ensure that caching also caches by user ID to persist access permissions through cached result sets\n\nWayfinder 2.2.0\n====================================\n- [#23] Fix issue that generated error message in error.log due to &contexts always being processed regardless of empty state\n- [#21] Fix issue with unnecessary groupby that was breaking sorting in older mysql versions\n- [#22] Add &cacheResults parameter, which caches queries for faster loading\n- [#8] Add &contexts parameter, and &startIdContext parameter if navigating across multiple contexts and using a non-0 &startId\n\nWayfinder 2.1.3\n====================================\n- [#14] Fix hideSubMenus property\n- Add templates parameter that accepts a comma-delimited list of template IDs to filter by\n- Add where parameter that accepts a JSON object for where conditions\n- Add hereId parameter for specifying the active location\n\nWayfinder 2.1.2\n====================================\n- Fixed bug with includeDocs parameter\n\nWayfinder 2.1.1\n====================================\n- Wayfinder now properly uses MODx parsing system\n- Fixed issue with includeDocs statement\n- Fixed issues with PDO statements\n- Added the missing permissions check\n- Added wayfinder parameter \"permissions\" - default to \"list\", empty to bypass permissions check\n- [#WAYFINDER-20] TemplateVariables not rendering in Wayfinder templates.\n- Added changelog.\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:18:\"wayfinder-2.3.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:46:\"/workspace/package/install/wayfinder-2.3.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e14cd61ec14e7.62063804\";}','wayfinder','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.3.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:230:\"<p>Wayfinder is a highly flexible navigation builder for MODx Revolution.</p><p>See the official docs here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/Wayfinder\">http://rtfm.modx.com/display/ADDON/Wayfinder</a></p><ul>\n</ul>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1711:\"<div style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; width: 100%; height: 100%; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; \"><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.1</b></p><ul><li>&#91;#31&#93; Add &amp;scheme property for specifying link schemes</li><li>&#91;#27&#93; Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.0</b></p><ul><li>&#91;#14&#93; Fix issue with hideSubMenus when using it with a non-zero startId</li><li>Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc</li><li>Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set</li><li>Ensure that caching also caches by user ID to persist access permissions through cached result sets</li></ul><p><b>New in 2.2.0</b></p><ul><li>&#91;#23&#93; Fix issue that generated error message in error.log due to &amp;contexts always being processed regardless of empty state</li><li>&#91;#21&#93; Fix issue with unnecessary groupby that was breaking sorting in older mysql versions</li><li>&#91;#22&#93; Add &amp;cacheResults parameter, which caches queries for faster loading</li><li>&#91;#8&#93; Add &amp;contexts parameter, and &amp;startIdContext parameter if navigating across multiple contexts and using a non-0 &amp;startId</li></ul><p></p><p></p><p></p><p></p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-05-18 17:32:50 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-05-18 17:32:50 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"67940\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:9:\"Wayfinder\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4dd402c4f2455473fd000008\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4dd402c2f2455473fd000006\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:32:\"wayfinder-2.3.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"6703\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"80.216.218.97\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4dd402c4f2455473fd000008\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.1-pl\";s:8:\"children\";a:0:{}}}',2,3,1,'pl',0),
	('formit-1.7.0-rc1','2011-07-07 03:08:49','2011-07-07 12:09:48','2011-07-07 03:09:48',0,1,1,0,'formit-1.7.0-rc1.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:213:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt\";s:9:\"changelog\";s:7414:\"Changelog for FormIt.\n\nFormIt 1.7.0\n====================================\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:16:\"formit-1.7.0-rc1\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/formit-1.7.0-rc1/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e15785bdcd2a0.42302545\";}','formit','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"formit-1.7.0-rc1\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.7.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"7\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"rc1\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"rc\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"rc\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:406:\"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. All is possible in FormIt, the new form processing Snippet for MODx Revolution 2.0.</p>\n<p>See the Official Documentation here:</p>\n<p><a href=\"http://rtfm.modx.com/display/ADDON/FormIt\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2767:\"<p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-01 20:21:03 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-01 20:21:03 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"22866\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"FormIt\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e0e2c30f245540fb4000087\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e0e2c2ff245540fb4000085\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:30:\"formit-1.7.0-rc1.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"454\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"212.42.162.12\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e0e2c30f245540fb4000087\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"formit-1.7.0-rc1\";s:8:\"children\";a:0:{}}}',1,7,0,'rc',1),
	('getresources-1.3.1-pl','2011-08-23 04:52:16','2011-08-23 13:53:04','2011-08-23 04:53:04',0,1,1,0,'getresources-1.3.1-pl.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:328:\"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.3.1-pl\nReleased: July 14, 2011\nSince: December 28, 2009\nAuthor: Jason Coward <jason@modx.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n\";s:9:\"changelog\";s:1937:\"Changelog for getResources.\n\ngetResources 1.3.1-pl (July 14, 2011)\n====================================\n- [#43] Allow 0 as idx property\n- [#9] Fix tvFilters grouping\n- [#46] Fix criteria issue with &resources property\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(\'ECHO\')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:21:\"getresources-1.3.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:49:\"/workspace/package/install/getresources-1.3.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e53942801c396.73501640\";}','getresources','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.3.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.3.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:150:\"This release fixes a few small bugs in the way the criteria is built for resources and tvFilters properties, as well as allows a 0-based idx property.\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:37:\"<p>Install via Package Management</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:333:\"<p></p><p style=\"margin-bottom: 15px; \">getResources 1.3.1-pl (July 14, 2011)</p><p style=\"margin-bottom: 15px; \"></p><ul style=\"margin-bottom: 15px; \"><li><li>&#91;#43&#93; Allow 0 as idx property</li><li>&#91;#9&#93; Fix tvFilters grouping</li><li>&#91;#46&#93; Fix criteria issue with &amp;resources property</li></li></ul><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-14 21:11:48 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-14 21:11:48 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"28388\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"getResources\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e1f5b96f2455409d900006c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e1f5b94f2455409d900006a\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:35:\"getresources-1.3.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"4151\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"46.235.47.43\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e1f5b96f2455409d900006c\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.3.1-pl\";s:8:\"children\";a:0:{}}}',1,3,1,'pl',0),
	('formit-1.7.0-pl','2011-07-08 10:10:14','2011-07-08 19:10:31','2011-07-08 10:10:31',0,1,1,0,'formit-1.7.0-pl.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:213:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt\";s:9:\"changelog\";s:7686:\"Changelog for FormIt.\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:15:\"formit-1.7.0-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-1.7.0-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e17399883a304.09238860\";}','formit','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-1.7.0-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.7.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"7\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:406:\"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. All is possible in FormIt, the new form processing Snippet for MODx Revolution 2.0.</p>\n<p>See the Official Documentation here:</p>\n<p><a href=\"http://rtfm.modx.com/display/ADDON/FormIt\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3057:\"<p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-07 13:46:38 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-07-07 13:46:38 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"23057\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"FormIt\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e15b8bff245541eff000146\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e15b8bef245541eff000144\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:29:\"formit-1.7.0-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"149\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"77.222.125.49\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e15b8bff245541eff000146\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-1.7.0-pl\";s:8:\"children\";a:0:{}}}',1,7,0,'pl',0),
	('formit-2.0.1-pl','2011-08-23 04:53:14','2011-08-23 13:53:29','2011-08-23 04:53:29',0,1,1,0,'formit-2.0.1-pl.transport.zip',NULL,'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:213:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt\";s:9:\"changelog\";s:8471:\"Changelog for FormIt.\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:15:\"formit-2.0.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-2.0.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e53942801c396.73501640\";}','formit','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.0.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.0.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:400:\"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. Spam protection. Auto-response options. Dynamic country/state dropdown lists.</p>\n<p>See the Official Documentation here:</p>\n<p><a href=\"http://rtfm.modx.com/display/ADDON/FormIt\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4033:\"<p></p><p><b>New in 2.0.1</b></p><ul><li>&#91;#5525&#93; Add &amp;allowFiles property, that when set to 0, prevents file submissions on form</li><li>&#91;#5484&#93; Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>&#91;#3514&#93; Add ability to customize validator error messages per FormIt form and per field</li><li>&#91;#4705&#93; Add regexp validator</li><li>&#91;#5454&#93; Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>&#91;#5388&#93;, &#91;#5240&#93; Fix issue with FormItCountryOptions and &amp;useIsoCode</li><li>Fix issue with FormItStateOptions and &amp;useAbbr</li><li>&#91;#5267&#93; Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 18:30:15 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 18:30:15 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"27132\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"FormIt\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52a039f24554564d000038\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52a037f24554564d000036\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:29:\"formit-2.0.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"92\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"89.111.176.226\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e52a039f24554564d000038\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.0.1-pl\";s:8:\"children\";a:0:{}}}',2,0,1,'pl',0),
	('googlesitemap-1.2.1-pl','2011-08-23 07:07:57','2011-08-23 16:13:44','2011-08-23 07:13:44',0,1,1,0,'googlesitemap-1.2.1-pl.transport.zip',NULL,'a:7:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:295:\"--------------------\nSnippet: GoogleSiteMap\n--------------------\nVersion: 1.2\nCreated: June 23, 2009\nAuthor: Shaun McCormick <shaun@modx.com>\n\n- Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet\n\nThis component builds the GoogleSiteMap XML for you.\n    \nExample:\n[[!GoogleSiteMap]]\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:50:\"/workspace/package/install/googlesitemap-1.2.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e14cd2e2fab28.78673812_14e53942801c396.73501640\";}','googlesitemap','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.2.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:208:\"<p>Generates a Google SiteMap XML.</p>\n<p>Please see the official documentation here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/GoogleSiteMap/\">http://rtfm.modx.com/display/ADDON/GoogleSiteMap/</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:793:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \">New in 1.2.1</p><ul><li>[#1] Add ability to make sitemap from a specific Resource via startId property</li><li>[#4] Fix issue where children of non-published resources were not showing</li><li>[#5] Fix issue where children of non-searchable resources were not showing</li></ul><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \">New in 1.2.0</p><ul><li>Updated google schema to 0.9, fixed reference</li><li>Added maxDepth, excludeResources properties</li><li>Refactored to work with overridable chunks for templates</li><li>Fixed URL generation bug where home URL was incorrectly generating</li><li>Updated copyright information</li><li>i18n of properties</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-03 16:10:01 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-03 16:10:01 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"9818\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"GoogleSiteMap\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d6fbd5af2455443bf000012\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d6fbd59f2455443bf000011\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:36:\"googlesitemap-1.2.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"3535\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"205.186.172.13\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4d6fbd5af2455443bf000012\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"children\";a:0:{}}}',1,2,1,'pl',0),
	('wayfinder-2.3.3-pl','2012-11-01 01:18:27','2012-11-01 12:18:36','2012-11-01 13:18:36',0,1,1,0,'wayfinder-2.3.3-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:804:\"::::::::::::::::::::::::::::::::::::::::\n Snippet name: Wayfinder\n Short Desc: builds site navigation\n Version: 2.3.0 (Revolution compatible)\n Authors: \n    Kyle Jaebker (muddydogpaws.com)\n    Ryan Thrash (vertexworks.com)\n    Shaun McCormick (splittingred.com)\n ::::::::::::::::::::::::::::::::::::::::\nDescription:\n    Totally refactored from original DropMenu nav builder to make it easier to\n    create custom navigation by using chunks as output templates. By using templates,\n    many of the paramaters are no longer needed for flexible output including tables,\n    unordered- or ordered-lists (ULs or OLs), definition lists (DLs) or in any other\n    format you desire.\n::::::::::::::::::::::::::::::::::::::::\nExample Usage:\n    [[Wayfinder? &startId=`0`]]\n::::::::::::::::::::::::::::::::::::::::\";s:9:\"changelog\";s:2655:\"Changelog for Wayfinder (for Revolution).\n\nWayfinder 2.3.3\n====================================\n- [#40] Add wf.level placeholder to items for showing current depth\n- [#42] Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus\n- [#41] Fix issue with Wayfinder and truncated result sets due to getIterator call\n\nWayfinder 2.3.2\n====================================\n- [#36] Fix issue with multiple Wayfinder calls using &config\n- [#35] Fix issues with TV bindings rendering\n- Add \"protected\" placeholder that is 1 if Resource is protected by a Resource Group\n- Updated documentation, snippet properties descriptions\n\nWayfinder 2.3.1\n====================================\n- [#31] Add &scheme property for specifying link schemes\n- [#27] Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching\n\nWayfinder 2.3.0\n====================================\n- [#14] Fix issue with hideSubMenus when using it with a non-zero startId\n- Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc\n- Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set\n- Ensure that caching also caches by user ID to persist access permissions through cached result sets\n\nWayfinder 2.2.0\n====================================\n- [#23] Fix issue that generated error message in error.log due to &contexts always being processed regardless of empty state\n- [#21] Fix issue with unnecessary groupby that was breaking sorting in older mysql versions\n- [#22] Add &cacheResults parameter, which caches queries for faster loading\n- [#8] Add &contexts parameter, and &startIdContext parameter if navigating across multiple contexts and using a non-0 &startId\n\nWayfinder 2.1.3\n====================================\n- [#14] Fix hideSubMenus property\n- Add templates parameter that accepts a comma-delimited list of template IDs to filter by\n- Add where parameter that accepts a JSON object for where conditions\n- Add hereId parameter for specifying the active location\n\nWayfinder 2.1.2\n====================================\n- Fixed bug with includeDocs parameter\n\nWayfinder 2.1.1\n====================================\n- Wayfinder now properly uses MODx parsing system\n- Fixed issue with includeDocs statement\n- Fixed issues with PDO statements\n- Added the missing permissions check\n- Added wayfinder parameter \"permissions\" - default to \"list\", empty to bypass permissions check\n- [#WAYFINDER-20] TemplateVariables not rendering in Wayfinder templates.\n- Added changelog.\";s:9:\"signature\";s:18:\"wayfinder-2.3.3-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:8:\"Continue\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:587:\"function (va) {var g=Ext.getCmp(\'modx-package-grid\');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=\'/workspace/package/install/\'+r.signature+\'/\';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:\'install\',signature:r.signature,register:\'mgr\',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+\'workspace/packages.php\',params:va,listeners:{\'success\':{fn:function(){this.activate();Ext.getCmp(\'modx-package-grid\').refresh();},scope:this},\'failure\':{fn:function(){this.activate();},scope:this}}});}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:46:\"/workspace/package/install/wayfinder-2.3.3-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx5092594491a1c8.39358105_150925a1117b1c9.66908505\";s:14:\"package_action\";i:1;}','Wayfinder','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556be8b2b083396d0008bd\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.3-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.3.3\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:230:\"<p>Wayfinder is a highly flexible navigation builder for MODx Revolution.</p><p>See the official docs here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/Wayfinder\">http://rtfm.modx.com/display/ADDON/Wayfinder</a></p><ul>\n</ul>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2306:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.3</b></p><ul><li>&#91;#40&#93; Add wf.level placeholder to items for showing current depth</li><li>&#91;#42&#93; Allow authenticated mgr users with view_unpublished to use new previewUnpublished property to preview unpublished Resources in menus</li><li>&#91;#41&#93; Fix issue with Wayfinder and truncated result sets due to getIterator call</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.2</b></p><ul><li>&#91;#36&#93; Fix issue with multiple Wayfinder calls using &amp;config</li><li>&#91;#35&#93; Fix issues with TV bindings rendering</li><li>Add \"protected\" placeholder that is 1 if Resource is protected by a Resource Group</li><li>Updated documentation, snippet properties descriptions</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.1</b></p><ul><li>&#91;#31&#93; Add &amp;scheme property for specifying link schemes</li><li>&#91;#27&#93; Improve caching in Wayfinder to store cache files in resource cache so cache is synced with modx core caching</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 2.3.0</b></p><ul><li>&#91;#14&#93; Fix issue with hideSubMenus when using it with a non-zero startId</li><li>Add all fields of a Resource to the rowTpl placeholder set, such as menutitle, published, etc</li><li>Properly optimize TV value grabbing to properly parse and cache TVs to improve load times when using TVs in a result set</li><li>Ensure that caching also caches by user ID to persist access permissions through cached result sets</li></ul><p><b>New in 2.2.0</b></p><ul><li>&#91;#23&#93; Fix issue that generated error message in error.log due to &amp;contexts always being processed regardless of empty state</li><li>&#91;#21&#93; Fix issue with unnecessary groupby that was breaking sorting in older mysql versions</li><li>&#91;#22&#93; Add &amp;cacheResults parameter, which caches queries for faster loading</li><li>&#91;#8&#93; Add &amp;contexts parameter, and &amp;startIdContext parameter if navigating across multiple contexts and using a non-0 &amp;startId</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-10-31 16:21:50 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-10-31 16:21:50 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"127358\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:9:\"Wayfinder\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4eaecb20f24554127d0000b8\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4eaecb1ef24554127d0000b6\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:32:\"wayfinder-2.3.3-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"45559\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"89.106.251.5\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4eaecb20f24554127d0000b8\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:18:\"wayfinder-2.3.3-pl\";s:8:\"children\";a:0:{}}}',2,3,3,'pl',0),
	('formit-2.1.2-pl','2012-11-01 01:17:02','2012-11-01 12:17:13','2012-11-01 13:17:13',0,1,1,0,'formit-2.1.2-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:213:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt\";s:9:\"changelog\";s:9760:\"Changelog for FormIt.\n\nFormIt 2.1.2\n====================================\n- Various language updates\n- [#7250] Fix issue with 0 not passing :required filter\n\nFormIt 2.1.1\n====================================\n- [#8204] Fix issue with FormItAutoResponder and processing of MODX tags\n\nFormIt 2.1.0\n====================================\n- [#7620] Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl\n- [#7502] Add ability to find type of hook by using $hook->type\n- [#8151] More sanity checking for FormItAutoResponder and replyTo addresses\n- Fix useIsoCode issue in FormItCountryOptions\n- Update German translation\n- Enhance validation templating for validationErrorBulkTpl\n- Add &country option to FormItStateOptions to allow loading of non-US states (currently us/de)\n\nFormIt 2.0.3\n====================================\n- Update Czech translation\n- Fix issue with French accents in translation\n- [#6021] Refactor Russian reCaptcha translations\n- [#6618] Standardize XHTML in reCaptcha usage\n\nFormIt 2.0.2\n====================================\n- [#4864] Fix issue with isNumber not allowing blank fields\n- [#5404] Fix issues with checkboxes and array fields in FormItAutoResponder\n- [#5269] Fix issues with checkboxes in various forms in emails\n- [#5792] Update reCaptcha URLs\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\";s:9:\"signature\";s:15:\"formit-2.1.2-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:8:\"Continue\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:587:\"function (va) {var g=Ext.getCmp(\'modx-package-grid\');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=\'/workspace/package/install/\'+r.signature+\'/\';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:\'install\',signature:r.signature,register:\'mgr\',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+\'workspace/packages.php\',params:va,listeners:{\'success\':{fn:function(){this.activate();Ext.getCmp(\'modx-package-grid\').refresh();},scope:this},\'failure\':{fn:function(){this.activate();},scope:this}}});}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-2.1.2-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx5092594491a1c8.39358105_150925a1117b1c9.66908505\";s:14:\"package_action\";i:1;}','FormIt','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.1.2-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.1.2\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:400:\"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. Spam protection. Auto-response options. Dynamic country/state dropdown lists.</p>\n<p>See the Official Documentation here:</p>\n<p><a href=\"http://rtfm.modx.com/display/ADDON/FormIt\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5515:\"<p></p><p><b>New in 2.1.2</b></p><p></p><ul><li>Various language updates</li><li>&#91;#7250&#93; Fix issue with 0 not passing :required filter</li></ul><p></p><p><b>New in 2.1.1</b></p><p></p><ul><li>&#91;#8204&#93; Fix issue with FormItAutoResponder and processing of MODX tags</li></ul><p></p><p><b>New in 2.1.0</b></p><p></p><ul><li>&#91;#7620&#93; Allow for MODX tags in email templates, as well as pass-through of snippet properties to tpl</li><li>&#91;#7502&#93; Add ability to find type of hook by using $hook-&gt;type</li><li>&#91;#8151&#93; More sanity checking for FormItAutoResponder and replyTo addresses</li><li>Fix useIsoCode issue in FormItCountryOptions</li><li>Update German translation</li><li>Enhance validation templating for validationErrorBulkTpl</li><li>Add &amp;country option to FormItStateOptions to allow loading of non-US states (currently us/de)</li></ul><p></p><p><b>New in 2.0.3</b></p><p></p><ul><li>Update Czech translation</li><li>Fix issue with French accents in translation</li><li>&#91;#6021&#93; Refactor Russian reCaptcha translations</li><li>&#91;#6618&#93; Standardize XHTML in reCaptcha usage</li></ul><p></p><p><b>New in 2.0.2</b></p><p></p><ul><li>&#91;#4864&#93; Fix issue with isNumber not allowing blank fields</li><li>&#91;#5404&#93; Fix issues with checkboxes and array fields in FormItAutoResponder</li><li>&#91;#5269&#93; Fix issues with checkboxes in various forms in emails</li><li>&#91;#5792&#93; Update reCaptcha URLs</li></ul><p></p><p><b>New in 2.0.1</b></p><ul><li>&#91;#5525&#93; Add &amp;allowFiles property, that when set to 0, prevents file submissions on form</li><li>&#91;#5484&#93; Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>&#91;#3514&#93; Add ability to customize validator error messages per FormIt form and per field</li><li>&#91;#4705&#93; Add regexp validator</li><li>&#91;#5454&#93; Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>&#91;#5388&#93;, &#91;#5240&#93; Fix issue with FormItCountryOptions and &amp;useIsoCode</li><li>Fix issue with FormItStateOptions and &amp;useAbbr</li><li>&#91;#5267&#93; Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-10-08 16:54:48 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-10-08 16:54:48 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"63455\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"FormIt\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"5073055df24554661600002d\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"50730558f24554661600002b\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:29:\"formit-2.1.2-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"1884\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"193.107.236.95\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=5073055df24554661600002d\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.1.2-pl\";s:8:\"children\";a:0:{}}}',2,1,2,'pl',0);

INSERT INTO `modx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`)
VALUES
	('getresources-1.5.1-pl','2012-11-01 01:17:20','2012-11-01 12:17:28','2012-11-01 13:17:28',0,1,1,0,'getresources-1.5.1-pl.transport.zip',NULL,'a:34:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:330:\"--------------------\nSnippet: getResources\n--------------------\nVersion: 1.5.1-pl\nReleased: August 23, 2012\nSince: December 28, 2009\nAuthor: Jason Coward <jason@modx.com>\n\nA general purpose Resource listing and summarization snippet for MODX Revolution.\n\nOfficial Documentation:\nhttp://docs.modxcms.com/display/ADDON/getResources\n\";s:9:\"changelog\";s:3101:\"Changelog for getResources.\n\ngetResources 1.5.1-pl (August 23, 2012)\n====================================\n- Add tplOperator property to default properties\n- [#73] Add between tplOperator to conditionalTpls\n\ngetResources 1.5.0-pl (June 15, 2012)\n====================================\n- [#58] Add tplCondition/conditionalTpls support\n- [#67] Add odd property\n- [#60] Allow custom delimiters for tvFilters\n- [#63] Give tplFirst/tplLast precedence over tpl_X/tpl_nX\n- Automatically prepare TV values for media-source dependent TVs\n\ngetResources 1.4.2-pl (December 9, 2011)\n====================================\n- [#25] Add new operators to tvFilters\n- [#37] Consider default values with tvFilters\n- [#57] Fix tpl overrides and improve order\n\ngetResources 1.4.1-pl (December 8, 2011)\n====================================\n- [#57] Add support for factor-based tpls\n- [#54], [#55] Fix processTVList feature\n\ngetResources 1.4.0-pl (September 21, 2011)\n====================================\n- [#50] Use children of parents from other contexts\n- [#45] Add dbCacheFlag to control db caching of getCollection, default to false\n- [#49] Allow comma-delimited list of TV names as includeTVList or processTVList\n\ngetResources 1.3.1-pl (July 14, 2011)\n====================================\n- [#43] Allow 0 as idx property\n- [#9] Fix tvFilters grouping\n- [#46] Fix criteria issue with &resources property\n\ngetResources 1.3.0-pl (March 28, 2011)\n====================================\n- [#33] sortbyTVType: Allow numeric and datetime TV sorting via SQL CAST()\n- [#24] Fix typos in list property options\n- [#4] Support multiple sortby fields via JSON object\n- Use get() instead to toArray() if includeContent is false\n- [#22] Add &toSeparatePlaceholders property for splitting output\n\ngetResources 1.2.2-pl (October 18, 2010)\n====================================\n- [#19] Fix sortbyTV returning duplicate rows\n\ngetResources 1.2.1-pl (October 11, 2010)\n====================================\n- Remove inadvertent call to modX::setLogTarget(\'ECHO\')\n\ngetResources 1.2.0-pl (September 25, 2010)\n====================================\n- Fix error when &parents is not set\n- Allow empty &sortby\n- Add ability to sort by a single Template Variable value (or default value)\n\ngetResources 1.1.0-pl (July 30, 2010)\n====================================\n- Added &toPlaceholder property for assigning results to a placeholder\n- Added &resources property for including/excluding specific resources\n- Added &showDeleted property\n- Allow multiple contexts to be passed into &context\n- Added &showUnpublish property\n- Added getresources.core_path reference for easier development\n- [#ADDON-135] Make output separator configurable via outputSeparator property\n- Add where property to allow ad hoc criteria in JSON format\n\ngetResources 1.0.0-ga (December 29, 2009)\n====================================\n- [#ADDON-81] Allow empty tvPrefix property.\n- [#ADDON-89] Allow parents property to have a value of 0.\n- Changed default value of sortbyAlias to empty string and added sortbyEscaped property with default of 0.\n- Added changelog, license, and readme.\";s:9:\"signature\";s:21:\"getresources-1.5.1-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:8:\"Continue\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:587:\"function (va) {var g=Ext.getCmp(\'modx-package-grid\');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=\'/workspace/package/install/\'+r.signature+\'/\';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:\'install\',signature:r.signature,register:\'mgr\',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+\'workspace/packages.php\',params:va,listeners:{\'success\':{fn:function(){this.activate();Ext.getCmp(\'modx-package-grid\').refresh();},scope:this},\'failure\':{fn:function(){this.activate();},scope:this}}});}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:49:\"/workspace/package/install/getresources-1.5.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx5092594491a1c8.39358105_150925a1117b1c9.66908505\";s:14:\"package_action\";i:1;}','getResources','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c3db2b083396d000abe\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.5.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.5.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"5\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:282:\"<p>This release fixes some issues with Template Variables that use Media Sources, tpl precedence, and introduces some user contributed features:</p><ul><li>Customize the AND and OR delimiters for use in tvFilters</li><li>Custom conditional tpls</li></ul><p></p><p></p><p></p><p></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:37:\"<p>Install via Package Management</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1349:\"<p></p><p>getResources 1.5.1-pl (August 23, 2012)</p><p><ul><li>Add tplOperator property to default properties</li><li>&#91;#73&#93; Add between tplOperator to conditionalTpls</li></ul></p><p>getResources 1.5.0-pl (June 15, 2012)</p><p></p><ul><li>&#91;#58&#93; Add tplCondition/conditionalTpls support</li><li>&#91;#67&#93; Add odd property</li><li>&#91;#60&#93; Allow custom delimiters for tvFilters</li><li>&#91;#63&#93; Give tplFirst/tplLast precedence over tpl_X/tpl_nX</li><li>Automatically prepare TV values for media-source dependent TVs</li></ul><p></p><p></p><p>getResources 1.4.2-pl (December 9, 2011)</p><p></p><ul><li>&#91;#25&#93; Add new operators to tvFilters</li><li>&#91;#37&#93; Consider default values with tvFilters</li><li>&#91;#57&#93; Fix tpl overrides and improve order</li></ul><p></p><p></p><p>getResources 1.4.1-pl (December 8, 2011)</p><p></p><ul><li>&#91;#57&#93; Add support for factor-based tpls</li><li>&#91;#54&#93;, &#91;#55&#93; Fix processTVList feature</li></ul><p></p><p></p><p>getResources 1.4.0-pl (September 21, 2011)</p><p></p><ul><li>&#91;#50&#93; Use children of parents from other contexts</li><li>&#91;#45&#93; Add dbCacheFlag to control db caching of getCollection, default to false</li><li>&#91;#49&#93; Allow comma-delimited list of TV names as includeTVList or processTVList</li></ul><p></p><p></p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-08-23 17:31:27 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:8:\"opengeek\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-08-23 17:31:27 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"76834\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"getResources\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"503668f2f245543f89000068\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"503668eff245543f89000066\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:35:\"getresources-1.5.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"10016\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"193.107.236.95\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=503668f2f245543f89000068\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:21:\"getresources-1.5.1-pl\";s:8:\"children\";a:0:{}}}',1,5,1,'pl',0),
	('googlesitemap-1.3.1-pl','2012-11-01 01:17:35','2012-11-01 12:17:42','2012-11-01 13:17:42',0,1,1,0,'googlesitemap-1.3.1-pl.transport.zip',NULL,'a:33:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:295:\"--------------------\nSnippet: GoogleSiteMap\n--------------------\nVersion: 1.2\nCreated: June 23, 2009\nAuthor: Shaun McCormick <shaun@modx.com>\n\n- Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet\n\nThis component builds the GoogleSiteMap XML for you.\n    \nExample:\n[[!GoogleSiteMap]]\";s:9:\"signature\";s:22:\"googlesitemap-1.3.1-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:8:\"Continue\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:587:\"function (va) {var g=Ext.getCmp(\'modx-package-grid\');if(!g)return false;var r=g.menu.record.data?g.menu.record.data:g.menu.record;var topic=\'/workspace/package/install/\'+r.signature+\'/\';this.loadConsole(Ext.getBody(),topic);va=va||{};Ext.apply(va,{action:\'install\',signature:r.signature,register:\'mgr\',topic:topic});var c=this.console;MODx.Ajax.request({url:MODx.config.connectors_url+\'workspace/packages.php\',params:va,listeners:{\'success\':{fn:function(){this.activate();Ext.getCmp(\'modx-package-grid\').refresh();},scope:this},\'failure\':{fn:function(){this.activate();},scope:this}}});}\";s:5:\"scope\";s:15:\"[object Object]\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:8:\"lastSize\";s:15:\"[object Object]\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:7:\"install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:50:\"/workspace/package/install/googlesitemap-1.3.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx5092594491a1c8.39358105_150925a1117b1c9.66908505\";s:14:\"package_action\";i:1;}','GoogleSiteMap','a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.3.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.3.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"3\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:208:\"<p>Generates a Google SiteMap XML.</p>\n<p>Please see the official documentation here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/GoogleSiteMap/\">http://rtfm.modx.com/display/ADDON/GoogleSiteMap/</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1505:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 1.3.1</b></p><ul><li>&#91;#14&#93; Add &amp;priorityTV to allow for specifying priority of page in a TV</li><li>&#91;#15&#93; Better Articles support</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 1.3.0</b></p><ul><li>&#91;#7&#93; Add &amp;showHidden for showing items hidden from menu; hide those by default</li><li>Add &amp;where for JSON-based where filtering</li><li>&#91;#13&#93; Add &amp;excludeChildrenOf, which can take a comma-separated list of parents to exclude all children of</li></ul><p></p><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 1.2.1</b></p><ul><li>&#91;#1&#93; Add ability to make sitemap from a specific Resource via startId property</li><li>&#91;#4&#93; Fix issue where children of non-published resources were not showing</li><li>&#91;#5&#93; Fix issue where children of non-searchable resources were not showing</li></ul><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \"><b>New in 1.2.0</b></p><ul><li>Updated google schema to 0.9, fixed reference</li><li>Added maxDepth, excludeResources properties</li><li>Refactored to work with overridable chunks for templates</li><li>Fixed URL generation bug where home URL was incorrectly generating</li><li>Updated copyright information</li><li>i18n of properties</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-01-24 14:54:32 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2012-01-24 14:54:32 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"20651\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"GoogleSiteMap\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4f1ec62af245540e010000fe\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4f1ec628f245540e010000fc\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:36:\"googlesitemap-1.3.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"6979\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"65.254.224.23\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4f1ec62af245540e010000fe\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.3.1-pl\";s:8:\"children\";a:0:{}}}',1,3,1,'pl',0);

/*!40000 ALTER TABLE `modx_transport_packages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_transport_providers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_transport_providers`;

CREATE TABLE `modx_transport_providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_transport_providers` WRITE;
/*!40000 ALTER TABLE `modx_transport_providers` DISABLE KEYS */;

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`)
VALUES
	(1,'modx.com','The official MODX transport facility for 3rd party components.','http://rest.modx.com/extras/','','','2012-10-02 11:16:20','2012-11-01 12:13:08');

/*!40000 ALTER TABLE `modx_transport_providers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_user_attributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_user_attributes`;

CREATE TABLE `modx_user_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`)
VALUES
	(1,1,'Default Admin User','saftsaak@me.com','','',0,0,0,49,1361361455,1366122617,0,'l2g0t8g084t8iqd9klokpav504c1lrjs',0,0,'','','','','','','','','',NULL);

/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_user_group_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_user_group_roles`;

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_user_group_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_group_roles` DISABLE KEYS */;

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`)
VALUES
	(1,'Member',NULL,9999),
	(2,'Super User',NULL,0);

/*!40000 ALTER TABLE `modx_user_group_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_user_messages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_user_messages`;

CREATE TABLE `modx_user_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_user_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_user_settings`;

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(255) NOT NULL DEFAULT '',
  `editedon` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



# Dump of table modx_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_users`;

CREATE TABLE `modx_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(255) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_users` WRITE;
/*!40000 ALTER TABLE `modx_users` DISABLE KEYS */;

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`)
VALUES
	(1,'maakee_admin','CWF7v52hoCdJF4DZ5jQpgobDGLR8cw1GV9MlqL8PIPE=','Snt/YMMiE3wgUFxw+Vpa3RU2aRfKf7qAFXDckd796lA=','modUser',1,NULL,NULL,'hashing.modPBKDF2','a732b42d43482cefe42cba4f767be309',1,NULL,1);

/*!40000 ALTER TABLE `modx_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table modx_workspaces
# ------------------------------------------------------------

DROP TABLE IF EXISTS `modx_workspaces`;

CREATE TABLE `modx_workspaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `sctive` (`active`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `modx_workspaces` WRITE;
/*!40000 ALTER TABLE `modx_workspaces` DISABLE KEYS */;

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`)
VALUES
	(1,'Default MODX workspace','/var/www/maakee/core/','2011-07-06 14:01:35',1,NULL);

/*!40000 ALTER TABLE `modx_workspaces` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
