# MySQL dump of database 'db128501_modx_booncon' on host 'internal-db.s128501.gridserver.com'
# backup date and time: 08/23/11 07:18:43
# built by phpMyBackupPro v.2.1
# http://www.phpMyBackupPro.net

CREATE DATABASE IF NOT EXISTS `db128501_modx_booncon`;

USE `db128501_modx_booncon`;


### structure of table `modx_access_actiondom` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_actiondom` ###



### structure of table `modx_access_actions` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_actions` ###



### structure of table `modx_access_category` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_category` ###



### structure of table `modx_access_context` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4;


### data of table `modx_access_context` ###

insert into `modx_access_context` values ('1', 'web', 'modUserGroup', '0', '9999', '3');
insert into `modx_access_context` values ('2', 'mgr', 'modUserGroup', '1', '0', '2');
insert into `modx_access_context` values ('3', 'web', 'modUserGroup', '1', '0', '2');


### structure of table `modx_access_elements` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_elements` ###



### structure of table `modx_access_menus` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_menus` ###



### structure of table `modx_access_permissions` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 AUTO_INCREMENT=159;


### data of table `modx_access_permissions` ###

insert into `modx_access_permissions` values ('1', '1', 'about', 'perm.about_desc', '1');
insert into `modx_access_permissions` values ('2', '1', 'access_permissions', 'perm.access_permissions_desc', '1');
insert into `modx_access_permissions` values ('3', '1', 'actions', 'perm.actions_desc', '1');
insert into `modx_access_permissions` values ('4', '1', 'change_password', 'perm.change_password_desc', '1');
insert into `modx_access_permissions` values ('5', '1', 'change_profile', 'perm.change_profile_desc', '1');
insert into `modx_access_permissions` values ('6', '1', 'charsets', 'perm.charsets_desc', '1');
insert into `modx_access_permissions` values ('7', '1', 'class_map', 'perm.class_map_desc', '1');
insert into `modx_access_permissions` values ('8', '1', 'components', 'perm.components_desc', '1');
insert into `modx_access_permissions` values ('9', '1', 'content_types', 'perm.content_types_desc', '1');
insert into `modx_access_permissions` values ('10', '1', 'countries', 'perm.countries_desc', '1');
insert into `modx_access_permissions` values ('11', '1', 'create', 'perm.create_desc', '1');
insert into `modx_access_permissions` values ('12', '1', 'credits', 'perm.credits_desc', '1');
insert into `modx_access_permissions` values ('13', '1', 'customize_forms', 'perm.customize_forms_desc', '1');
insert into `modx_access_permissions` values ('14', '1', 'database', 'perm.database_desc', '1');
insert into `modx_access_permissions` values ('15', '1', 'database_truncate', 'perm.database_truncate_desc', '1');
insert into `modx_access_permissions` values ('16', '1', 'delete_category', 'perm.delete_category_desc', '1');
insert into `modx_access_permissions` values ('17', '1', 'delete_chunk', 'perm.delete_chunk_desc', '1');
insert into `modx_access_permissions` values ('18', '1', 'delete_context', 'perm.delete_context_desc', '1');
insert into `modx_access_permissions` values ('19', '1', 'delete_document', 'perm.delete_document_desc', '1');
insert into `modx_access_permissions` values ('20', '1', 'delete_eventlog', 'perm.delete_eventlog_desc', '1');
insert into `modx_access_permissions` values ('21', '1', 'delete_plugin', 'perm.delete_plugin_desc', '1');
insert into `modx_access_permissions` values ('22', '1', 'delete_propertyset', 'perm.delete_propertyset_desc', '1');
insert into `modx_access_permissions` values ('23', '1', 'delete_snippet', 'perm.delete_snippet_desc', '1');
insert into `modx_access_permissions` values ('24', '1', 'delete_template', 'perm.delete_template_desc', '1');
insert into `modx_access_permissions` values ('25', '1', 'delete_tv', 'perm.delete_tv_desc', '1');
insert into `modx_access_permissions` values ('26', '1', 'delete_role', 'perm.delete_role_desc', '1');
insert into `modx_access_permissions` values ('27', '1', 'delete_user', 'perm.delete_user_desc', '1');
insert into `modx_access_permissions` values ('28', '1', 'directory_chmod', 'perm.directory_chmod_desc', '1');
insert into `modx_access_permissions` values ('29', '1', 'directory_create', 'perm.directory_create_desc', '1');
insert into `modx_access_permissions` values ('30', '1', 'directory_list', 'perm.directory_list_desc', '1');
insert into `modx_access_permissions` values ('31', '1', 'directory_remove', 'perm.directory_remove_desc', '1');
insert into `modx_access_permissions` values ('32', '1', 'directory_update', 'perm.directory_update_desc', '1');
insert into `modx_access_permissions` values ('33', '1', 'edit_category', 'perm.edit_category_desc', '1');
insert into `modx_access_permissions` values ('34', '1', 'edit_chunk', 'perm.edit_chunk_desc', '1');
insert into `modx_access_permissions` values ('35', '1', 'edit_context', 'perm.edit_context_desc', '1');
insert into `modx_access_permissions` values ('36', '1', 'edit_document', 'perm.edit_document_desc', '1');
insert into `modx_access_permissions` values ('37', '1', 'edit_locked', 'perm.edit_locked_desc', '1');
insert into `modx_access_permissions` values ('38', '1', 'edit_plugin', 'perm.edit_plugin_desc', '1');
insert into `modx_access_permissions` values ('39', '1', 'edit_propertyset', 'perm.edit_propertyset_desc', '1');
insert into `modx_access_permissions` values ('40', '1', 'edit_role', 'perm.edit_role_desc', '1');
insert into `modx_access_permissions` values ('41', '1', 'edit_snippet', 'perm.edit_snippet_desc', '1');
insert into `modx_access_permissions` values ('42', '1', 'edit_template', 'perm.edit_template_desc', '1');
insert into `modx_access_permissions` values ('43', '1', 'edit_tv', 'perm.edit_tv_desc', '1');
insert into `modx_access_permissions` values ('44', '1', 'edit_user', 'perm.edit_user_desc', '1');
insert into `modx_access_permissions` values ('45', '1', 'element_tree', 'perm.element_tree_desc', '1');
insert into `modx_access_permissions` values ('46', '1', 'empty_cache', 'perm.empty_cache_desc', '1');
insert into `modx_access_permissions` values ('47', '1', 'error_log_erase', 'perm.error_log_erase_desc', '1');
insert into `modx_access_permissions` values ('48', '1', 'error_log_view', 'perm.error_log_view_desc', '1');
insert into `modx_access_permissions` values ('49', '1', 'export_static', 'perm.export_static_desc', '1');
insert into `modx_access_permissions` values ('50', '1', 'file_list', 'perm.file_list_desc', '1');
insert into `modx_access_permissions` values ('51', '1', 'file_manager', 'perm.file_manager_desc', '1');
insert into `modx_access_permissions` values ('52', '1', 'file_remove', 'perm.file_remove_desc', '1');
insert into `modx_access_permissions` values ('53', '1', 'file_tree', 'perm.file_tree_desc', '1');
insert into `modx_access_permissions` values ('54', '1', 'file_update', 'perm.file_update_desc', '1');
insert into `modx_access_permissions` values ('55', '1', 'file_upload', 'perm.file_upload_desc', '1');
insert into `modx_access_permissions` values ('56', '1', 'file_view', 'perm.file_view_desc', '1');
insert into `modx_access_permissions` values ('57', '1', 'flush_sessions', 'perm.flush_sessions_desc', '1');
insert into `modx_access_permissions` values ('58', '1', 'frames', 'perm.frames_desc', '1');
insert into `modx_access_permissions` values ('59', '1', 'help', 'perm.help_desc', '1');
insert into `modx_access_permissions` values ('60', '1', 'home', 'perm.home_desc', '1');
insert into `modx_access_permissions` values ('61', '1', 'import_static', 'perm.import_static_desc', '1');
insert into `modx_access_permissions` values ('62', '1', 'languages', 'perm.languages_desc', '1');
insert into `modx_access_permissions` values ('63', '1', 'lexicons', 'perm.lexicons_desc', '1');
insert into `modx_access_permissions` values ('64', '1', 'list', 'perm.list_desc', '1');
insert into `modx_access_permissions` values ('65', '1', 'load', 'perm.load_desc', '1');
insert into `modx_access_permissions` values ('66', '1', 'logout', 'perm.logout_desc', '1');
insert into `modx_access_permissions` values ('67', '1', 'logs', 'perm.logs_desc', '1');
insert into `modx_access_permissions` values ('68', '1', 'menus', 'perm.menus_desc', '1');
insert into `modx_access_permissions` values ('69', '1', 'messages', 'perm.messages_desc', '1');
insert into `modx_access_permissions` values ('70', '1', 'namespaces', 'perm.namespaces_desc', '1');
insert into `modx_access_permissions` values ('71', '1', 'new_category', 'perm.new_category_desc', '1');
insert into `modx_access_permissions` values ('72', '1', 'new_chunk', 'perm.new_chunk_desc', '1');
insert into `modx_access_permissions` values ('73', '1', 'new_context', 'perm.new_context_desc', '1');
insert into `modx_access_permissions` values ('74', '1', 'new_document', 'perm.new_document_desc', '1');
insert into `modx_access_permissions` values ('75', '1', 'new_document_in_root', 'perm.new_document_in_root_desc', '1');
insert into `modx_access_permissions` values ('76', '1', 'new_plugin', 'perm.new_plugin_desc', '1');
insert into `modx_access_permissions` values ('77', '1', 'new_propertyset', 'perm.new_propertyset_desc', '1');
insert into `modx_access_permissions` values ('78', '1', 'new_role', 'perm.new_role_desc', '1');
insert into `modx_access_permissions` values ('79', '1', 'new_snippet', 'perm.new_snippet_desc', '1');
insert into `modx_access_permissions` values ('80', '1', 'new_template', 'perm.new_template_desc', '1');
insert into `modx_access_permissions` values ('81', '1', 'new_tv', 'perm.new_tv_desc', '1');
insert into `modx_access_permissions` values ('82', '1', 'new_user', 'perm.new_user_desc', '1');
insert into `modx_access_permissions` values ('83', '1', 'packages', 'perm.packages_desc', '1');
insert into `modx_access_permissions` values ('84', '1', 'property_sets', 'perm.property_sets_desc', '1');
insert into `modx_access_permissions` values ('85', '1', 'providers', 'perm.providers_desc', '1');
insert into `modx_access_permissions` values ('86', '1', 'publish_document', 'perm.publish_document_desc', '1');
insert into `modx_access_permissions` values ('87', '1', 'purge_deleted', 'perm.purge_deleted_desc', '1');
insert into `modx_access_permissions` values ('88', '1', 'remove', 'perm.remove_desc', '1');
insert into `modx_access_permissions` values ('89', '1', 'remove_locks', 'perm.remove_locks_desc', '1');
insert into `modx_access_permissions` values ('90', '1', 'resource_quick_create', 'perm.resource_quick_create_desc', '1');
insert into `modx_access_permissions` values ('91', '1', 'resource_quick_update', 'perm.resource_quick_update_desc', '1');
insert into `modx_access_permissions` values ('92', '1', 'resource_tree', 'perm.resource_tree_desc', '1');
insert into `modx_access_permissions` values ('93', '1', 'save', 'perm.save_desc', '1');
insert into `modx_access_permissions` values ('94', '1', 'save_category', 'perm.save_category_desc', '1');
insert into `modx_access_permissions` values ('95', '1', 'save_chunk', 'perm.save_chunk_desc', '1');
insert into `modx_access_permissions` values ('96', '1', 'save_context', 'perm.save_context_desc', '1');
insert into `modx_access_permissions` values ('97', '1', 'save_document', 'perm.save_document_desc', '1');
insert into `modx_access_permissions` values ('98', '1', 'save_plugin', 'perm.save_plugin_desc', '1');
insert into `modx_access_permissions` values ('99', '1', 'save_propertyset', 'perm.save_propertyset_desc', '1');
insert into `modx_access_permissions` values ('100', '1', 'save_role', 'perm.save_role_desc', '1');
insert into `modx_access_permissions` values ('101', '1', 'save_snippet', 'perm.save_snippet_desc', '1');
insert into `modx_access_permissions` values ('102', '1', 'save_template', 'perm.save_template_desc', '1');
insert into `modx_access_permissions` values ('103', '1', 'save_tv', 'perm.save_tv_desc', '1');
insert into `modx_access_permissions` values ('104', '1', 'save_user', 'perm.save_user_desc', '1');
insert into `modx_access_permissions` values ('105', '1', 'search', 'perm.search_desc', '1');
insert into `modx_access_permissions` values ('106', '1', 'settings', 'perm.settings_desc', '1');
insert into `modx_access_permissions` values ('107', '1', 'steal_locks', 'perm.steal_locks_desc', '1');
insert into `modx_access_permissions` values ('108', '1', 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', '1');
insert into `modx_access_permissions` values ('109', '1', 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', '1');
insert into `modx_access_permissions` values ('110', '1', 'undelete_document', 'perm.undelete_document_desc', '1');
insert into `modx_access_permissions` values ('111', '1', 'unpublish_document', 'perm.unpublish_document_desc', '1');
insert into `modx_access_permissions` values ('112', '1', 'unlock_element_properties', 'perm.unlock_element_properties_desc', '1');
insert into `modx_access_permissions` values ('113', '1', 'view', 'perm.view_desc', '1');
insert into `modx_access_permissions` values ('114', '1', 'view_category', 'perm.view_category_desc', '1');
insert into `modx_access_permissions` values ('115', '1', 'view_chunk', 'perm.view_chunk_desc', '1');
insert into `modx_access_permissions` values ('116', '1', 'view_context', 'perm.view_context_desc', '1');
insert into `modx_access_permissions` values ('117', '1', 'view_document', 'perm.view_document_desc', '1');
insert into `modx_access_permissions` values ('118', '1', 'view_element', 'perm.view_element_desc', '1');
insert into `modx_access_permissions` values ('119', '1', 'view_eventlog', 'perm.view_eventlog_desc', '1');
insert into `modx_access_permissions` values ('120', '1', 'view_offline', 'perm.view_offline_desc', '1');
insert into `modx_access_permissions` values ('121', '1', 'view_plugin', 'perm.view_plugin_desc', '1');
insert into `modx_access_permissions` values ('122', '1', 'view_propertyset', 'perm.view_propertyset_desc', '1');
insert into `modx_access_permissions` values ('123', '1', 'view_role', 'perm.view_role_desc', '1');
insert into `modx_access_permissions` values ('124', '1', 'view_snippet', 'perm.view_snippet_desc', '1');
insert into `modx_access_permissions` values ('125', '1', 'view_sysinfo', 'perm.view_sysinfo_desc', '1');
insert into `modx_access_permissions` values ('126', '1', 'view_template', 'perm.view_template_desc', '1');
insert into `modx_access_permissions` values ('127', '1', 'view_tv', 'perm.view_tv_desc', '1');
insert into `modx_access_permissions` values ('128', '1', 'view_user', 'perm.view_user_desc', '1');
insert into `modx_access_permissions` values ('129', '1', 'view_unpublished', 'perm.view_unpublished_desc', '1');
insert into `modx_access_permissions` values ('130', '1', 'workspaces', 'perm.workspaces_desc', '1');
insert into `modx_access_permissions` values ('131', '2', 'add_children', 'perm.add_children_desc', '1');
insert into `modx_access_permissions` values ('132', '2', 'copy', 'perm.copy_desc', '1');
insert into `modx_access_permissions` values ('133', '2', 'create', 'perm.create_desc', '1');
insert into `modx_access_permissions` values ('134', '2', 'delete', 'perm.delete_desc', '1');
insert into `modx_access_permissions` values ('135', '2', 'list', 'perm.list_desc', '1');
insert into `modx_access_permissions` values ('136', '2', 'load', 'perm.load_desc', '1');
insert into `modx_access_permissions` values ('137', '2', 'move', 'perm.move_desc', '1');
insert into `modx_access_permissions` values ('138', '2', 'publish', 'perm.publish_desc', '1');
insert into `modx_access_permissions` values ('139', '2', 'remove', 'perm.remove_desc', '1');
insert into `modx_access_permissions` values ('140', '2', 'save', 'perm.save_desc', '1');
insert into `modx_access_permissions` values ('141', '2', 'steal_lock', 'perm.steal_lock_desc', '1');
insert into `modx_access_permissions` values ('142', '2', 'undelete', 'perm.undelete_desc', '1');
insert into `modx_access_permissions` values ('143', '2', 'unpublish', 'perm.unpublish_desc', '1');
insert into `modx_access_permissions` values ('144', '2', 'view', 'perm.view_desc', '1');
insert into `modx_access_permissions` values ('145', '3', 'load', 'perm.load_desc', '1');
insert into `modx_access_permissions` values ('146', '3', 'list', 'perm.list_desc', '1');
insert into `modx_access_permissions` values ('147', '3', 'view', 'perm.view_desc', '1');
insert into `modx_access_permissions` values ('148', '3', 'save', 'perm.save_desc', '1');
insert into `modx_access_permissions` values ('149', '3', 'remove', 'perm.remove_desc', '1');
insert into `modx_access_permissions` values ('150', '4', 'add_children', 'perm.add_children_desc', '1');
insert into `modx_access_permissions` values ('151', '4', 'create', 'perm.create_desc', '1');
insert into `modx_access_permissions` values ('152', '4', 'copy', 'perm.copy_desc', '1');
insert into `modx_access_permissions` values ('153', '4', 'delete', 'perm.delete_desc', '1');
insert into `modx_access_permissions` values ('154', '4', 'list', 'perm.list_desc', '1');
insert into `modx_access_permissions` values ('155', '4', 'load', 'perm.load_desc', '1');
insert into `modx_access_permissions` values ('156', '4', 'remove', 'perm.remove_desc', '1');
insert into `modx_access_permissions` values ('157', '4', 'save', 'perm.save_desc', '1');
insert into `modx_access_permissions` values ('158', '4', 'view', 'perm.view_desc', '1');


### structure of table `modx_access_policies` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8;


### data of table `modx_access_policies` ###

insert into `modx_access_policies` values ('1', 'Resource', 'MODX Resource Policy with all attributes.', '0', '2', '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions');
insert into `modx_access_policies` values ('2', 'Administrator', 'Context administration policy with all permissions.', '0', '1', '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions');
insert into `modx_access_policies` values ('3', 'Load Only', 'A minimal policy with permission to load an object.', '0', '3', '', '{\"load\":true}', 'permissions');
insert into `modx_access_policies` values ('4', 'Load, List and View', 'Provides load, list and view permissions only.', '0', '3', '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions');
insert into `modx_access_policies` values ('5', 'Object', 'An Object policy with all permissions.', '0', '3', '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions');
insert into `modx_access_policies` values ('6', 'Element', 'MODX Element policy with all attributes.', '0', '4', '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions');
insert into `modx_access_policies` values ('7', 'Content Editor', 'Context administration policy with limited, content-editing related Permissions.', '0', '1', '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"resource_tree\":true,\"save_document\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"new_document\":true,\"delete_document\":true}', 'permissions');


### structure of table `modx_access_policy_template_groups` ###

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;


### data of table `modx_access_policy_template_groups` ###

insert into `modx_access_policy_template_groups` values ('1', 'Admin', 'All admin policy templates.');
insert into `modx_access_policy_template_groups` values ('2', 'Object', 'All Object-based policy templates.');
insert into `modx_access_policy_template_groups` values ('3', 'Resource', 'All Resource-based policy templates.');
insert into `modx_access_policy_template_groups` values ('4', 'Element', 'All Element-based policy templates.');


### structure of table `modx_access_policy_templates` ###

DROP TABLE IF EXISTS `modx_access_policy_templates`;

CREATE TABLE `modx_access_policy_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(255) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;


### data of table `modx_access_policy_templates` ###

insert into `modx_access_policy_templates` values ('1', '1', 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions');
insert into `modx_access_policy_templates` values ('2', '3', 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions');
insert into `modx_access_policy_templates` values ('3', '2', 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions');
insert into `modx_access_policy_templates` values ('4', '4', 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions');


### structure of table `modx_access_resource_groups` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_resource_groups` ###



### structure of table `modx_access_resources` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_resources` ###



### structure of table `modx_access_templatevars` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_access_templatevars` ###



### structure of table `modx_actiondom` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_actiondom` ###



### structure of table `modx_actions` ###

DROP TABLE IF EXISTS `modx_actions`;

CREATE TABLE `modx_actions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `controller` varchar(255) NOT NULL,
  `haslayout` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `parent` (`parent`),
  KEY `controller` (`controller`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 AUTO_INCREMENT=70;


### data of table `modx_actions` ###

insert into `modx_actions` values ('1', 'core', '0', 'welcome', '1', 'welcome,configcheck', '', '');
insert into `modx_actions` values ('2', 'core', '0', 'system', '0', '', '', '');
insert into `modx_actions` values ('3', 'core', '0', 'browser', '0', 'file', '', '');
insert into `modx_actions` values ('4', 'core', '6', 'context/create', '1', 'context,setting,access,policy,user', '', 'Contexts');
insert into `modx_actions` values ('5', 'core', '6', 'context/update', '1', 'context,setting,access,policy,user', '', 'Contexts');
insert into `modx_actions` values ('6', 'core', '6', 'context/view', '1', 'context', '', 'Contexts');
insert into `modx_actions` values ('7', 'core', '0', 'element', '1', 'element', '', '');
insert into `modx_actions` values ('8', 'core', '10', 'element/chunk', '1', 'chunk,category,propertyset,element', '', 'Chunks');
insert into `modx_actions` values ('9', 'core', '11', 'element/chunk/create', '1', 'chunk,category,propertyset,element', '', 'Chunks');
insert into `modx_actions` values ('10', 'core', '11', 'element/chunk/update', '1', 'chunk,category,propertyset,element', '', 'Chunks');
insert into `modx_actions` values ('11', 'core', '10', 'element/plugin', '1', 'plugin,category,system_events,propertyset,element', '', 'Plugins');
insert into `modx_actions` values ('12', 'core', '20', 'element/plugin/create', '1', 'plugin,category,system_events,propertyset,element', '', 'Plugins');
insert into `modx_actions` values ('13', 'core', '20', 'element/plugin/update', '1', 'plugin,category,system_events,propertyset,element', '', 'Plugins');
insert into `modx_actions` values ('14', 'core', '10', 'element/snippet', '1', 'snippet,propertyset,element', '', 'Snippets');
insert into `modx_actions` values ('15', 'core', '25', 'element/snippet/create', '1', 'snippet,propertyset,element', '', 'Snippets');
insert into `modx_actions` values ('16', 'core', '25', 'element/snippet/update', '1', 'snippet,propertyset,element', '', 'Snippets');
insert into `modx_actions` values ('17', 'core', '10', 'element/template', '1', 'template,propertyset,element', '', 'Templates');
insert into `modx_actions` values ('18', 'core', '28', 'element/template/create', '1', 'template,propertyset,element', '', 'Templates');
insert into `modx_actions` values ('19', 'core', '28', 'element/template/update', '1', 'template,propertyset,element', '', 'Templates');
insert into `modx_actions` values ('20', 'core', '28', 'element/template/tvsort', '1', 'template,tv,propertyset,element', '', '');
insert into `modx_actions` values ('21', 'core', '10', 'element/tv', '1', 'tv,propertyset,element', '', 'Template+Variables');
insert into `modx_actions` values ('22', 'core', '32', 'element/tv/create', '1', 'tv,tv_widget,propertyset,element', '', 'Template+Variables');
insert into `modx_actions` values ('23', 'core', '32', 'element/tv/update', '1', 'tv,tv_widget,propertyset,element', '', 'Template+Variables');
insert into `modx_actions` values ('24', 'core', '10', 'element/view', '1', 'element', '', '');
insert into `modx_actions` values ('25', 'core', '0', 'resource', '1', '', '', '');
insert into `modx_actions` values ('26', 'core', '46', 'security/usergroup/create', '1', 'user,access,policy,context', '', 'User+Groups');
insert into `modx_actions` values ('27', 'core', '46', 'security/usergroup/update', '1', 'user,access,policy,context', '', 'User+Groups');
insert into `modx_actions` values ('28', 'core', '36', 'resource/data', '1', 'resource', '', 'Resource');
insert into `modx_actions` values ('29', 'core', '36', 'resource/empty_recycle_bin', '1', 'resource', '', '');
insert into `modx_actions` values ('30', 'core', '36', 'resource/update', '1', 'resource', '', 'Resource');
insert into `modx_actions` values ('31', 'core', '0', 'security', '1', 'user', '', '');
insert into `modx_actions` values ('32', 'core', '46', 'security/role', '1', 'user', '', 'Roles');
insert into `modx_actions` values ('33', 'core', '53', 'security/user/create', '1', 'user,setting,access', '', 'Users');
insert into `modx_actions` values ('34', 'core', '53', 'security/user/update', '1', 'user,setting,access', '', 'Users');
insert into `modx_actions` values ('35', 'core', '46', 'security/login', '1', 'login', '', '');
insert into `modx_actions` values ('36', 'core', '3', 'system/refresh_site', '1', '', '', '');
insert into `modx_actions` values ('37', 'core', '3', 'system/phpinfo', '1', '', '', '');
insert into `modx_actions` values ('38', 'core', '36', 'resource/tvs', '0', '', '', '');
insert into `modx_actions` values ('39', 'core', '3', 'system/file', '1', 'file', '', '');
insert into `modx_actions` values ('40', 'core', '70', 'system/file/edit', '1', 'file', '', '');
insert into `modx_actions` values ('41', 'core', '65', 'security/access/policy/update', '1', 'user,policy', '', 'Policies');
insert into `modx_actions` values ('42', 'core', '212', 'workspaces/package/view', '1', 'workspace,namespace', '', 'Package+Management');
insert into `modx_actions` values ('43', 'core', '65', 'security/access/policy/template/update', '1', 'user,policy', '', 'PolicyTemplates');
insert into `modx_actions` values ('44', 'core', '46', 'security/forms/profile/update', '1', 'formcustomization,user,access,policy', '', 'Form+Customization+Profiles');
insert into `modx_actions` values ('45', 'core', '46', 'security/forms/set/update', '1', 'formcustomization,user,access,policy', '', 'Form+Customization+Sets');
insert into `modx_actions` values ('46', 'core', '0', 'search', '1', '', '', '');
insert into `modx_actions` values ('47', 'core', '36', 'resource/create', '1', 'resource', '', 'Resource');
insert into `modx_actions` values ('48', 'core', '46', 'security/user', '1', 'user', '', 'Users');
insert into `modx_actions` values ('49', 'core', '46', 'security/permission', '1', 'user,access,policy', '', 'Security');
insert into `modx_actions` values ('50', 'core', '46', 'security/resourcegroup/index', '1', 'resource,user,access', '', 'Resource+Groups');
insert into `modx_actions` values ('51', 'core', '46', 'security/forms', '1', 'formcustomization,user,access,policy', '', 'Customizing+The+Manager');
insert into `modx_actions` values ('52', 'core', '3', 'system/import', '1', 'import', '', '');
insert into `modx_actions` values ('53', 'core', '59', 'system/import/html', '1', 'import', '', '');
insert into `modx_actions` values ('54', 'core', '10', 'element/propertyset/index', '1', 'element,category,propertyset', '', 'Properties+and+Property+Sets');
insert into `modx_actions` values ('55', 'core', '36', 'resource/site_schedule', '1', 'resource', '', '');
insert into `modx_actions` values ('56', 'core', '0', 'system/logs/index', '1', 'manager_log', '', '');
insert into `modx_actions` values ('57', 'core', '3', 'system/event', '1', 'system_events', '', '');
insert into `modx_actions` values ('58', 'core', '3', 'system/info', '1', 'system_info', '', '');
insert into `modx_actions` values ('59', 'core', '0', 'help', '1', 'about', '', '');
insert into `modx_actions` values ('60', 'core', '3', 'workspaces', '1', 'workspace', '', 'Package+Management');
insert into `modx_actions` values ('61', 'core', '3', 'system/settings', '1', 'setting', '', 'Settings');
insert into `modx_actions` values ('62', 'core', '68', 'workspaces/lexicon', '1', 'package_builder,lexicon,namespace', '', 'Internationalization');
insert into `modx_actions` values ('63', 'core', '3', 'system/contenttype', '1', 'content_type', '', 'Content+Types');
insert into `modx_actions` values ('64', 'core', '0', 'context', '1', 'context', '', 'Contexts');
insert into `modx_actions` values ('65', 'core', '3', 'system/action', '1', 'action,menu,namespace', '', 'Actions+and+Menus');
insert into `modx_actions` values ('66', 'core', '68', 'workspaces/namespace', '1', 'workspace,package_builder,lexicon,namespace', '', 'Namespaces');
insert into `modx_actions` values ('67', 'core', '46', 'security/profile', '1', 'user', '', '');
insert into `modx_actions` values ('68', 'core', '46', 'security/message', '1', 'messages', '', '');
insert into `modx_actions` values ('69', 'janitor', '0', 'index', '1', 'janitor:default,file', '', '');


### structure of table `modx_actions_fields` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 AUTO_INCREMENT=64;


### data of table `modx_actions_fields` ###

insert into `modx_actions_fields` values ('1', '30', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('2', '30', 'id', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('3', '30', 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('4', '30', 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '2');
insert into `modx_actions_fields` values ('5', '30', 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('6', '30', 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '4');
insert into `modx_actions_fields` values ('7', '30', 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '5');
insert into `modx_actions_fields` values ('8', '30', 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '6');
insert into `modx_actions_fields` values ('9', '30', 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '7');
insert into `modx_actions_fields` values ('10', '30', 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '8');
insert into `modx_actions_fields` values ('11', '30', 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '9');
insert into `modx_actions_fields` values ('12', '30', 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '10');
insert into `modx_actions_fields` values ('13', '30', 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '11');
insert into `modx_actions_fields` values ('14', '30', 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '12');
insert into `modx_actions_fields` values ('15', '30', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('16', '30', 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('17', '30', 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('18', '30', 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', '2');
insert into `modx_actions_fields` values ('19', '30', 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('20', '30', 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', '4');
insert into `modx_actions_fields` values ('21', '30', 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', '5');
insert into `modx_actions_fields` values ('22', '30', 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', '6');
insert into `modx_actions_fields` values ('23', '30', 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', '7');
insert into `modx_actions_fields` values ('24', '30', 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', '8');
insert into `modx_actions_fields` values ('25', '30', 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', '9');
insert into `modx_actions_fields` values ('26', '30', 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', '10');
insert into `modx_actions_fields` values ('27', '30', 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', '11');
insert into `modx_actions_fields` values ('28', '30', 'uri_override', 'field', 'modx-page-settings', 'modx-panel-resource', '', '12');
insert into `modx_actions_fields` values ('29', '30', 'uri', 'field', 'modx-page-settings', 'modx-panel-resource', '', '13');
insert into `modx_actions_fields` values ('30', '30', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', '2');
insert into `modx_actions_fields` values ('31', '30', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('32', '30', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('33', '47', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('34', '47', 'template', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('35', '47', 'published', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('36', '47', 'pagetitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '2');
insert into `modx_actions_fields` values ('37', '47', 'longtitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('38', '47', 'description', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '4');
insert into `modx_actions_fields` values ('39', '47', 'alias', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '5');
insert into `modx_actions_fields` values ('40', '47', 'link_attributes', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '6');
insert into `modx_actions_fields` values ('41', '47', 'introtext', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '7');
insert into `modx_actions_fields` values ('42', '47', 'parent-cmb', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '8');
insert into `modx_actions_fields` values ('43', '47', 'menutitle', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '9');
insert into `modx_actions_fields` values ('44', '47', 'menuindex', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '10');
insert into `modx_actions_fields` values ('45', '47', 'hidemenu', 'field', 'modx-resource-settings', 'modx-panel-resource', '', '11');
insert into `modx_actions_fields` values ('46', '47', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('47', '47', 'isfolder', 'field', 'modx-page-settings', 'modx-panel-resource', '', '0');
insert into `modx_actions_fields` values ('48', '47', 'richtext', 'field', 'modx-page-settings', 'modx-panel-resource', '', '1');
insert into `modx_actions_fields` values ('49', '47', 'publishedon', 'field', 'modx-page-settings', 'modx-panel-resource', '', '2');
insert into `modx_actions_fields` values ('50', '47', 'pub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('51', '47', 'unpub_date', 'field', 'modx-page-settings', 'modx-panel-resource', '', '4');
insert into `modx_actions_fields` values ('52', '47', 'searchable', 'field', 'modx-page-settings', 'modx-panel-resource', '', '5');
insert into `modx_actions_fields` values ('53', '47', 'cacheable', 'field', 'modx-page-settings', 'modx-panel-resource', '', '6');
insert into `modx_actions_fields` values ('54', '47', 'syncsite', 'field', 'modx-page-settings', 'modx-panel-resource', '', '7');
insert into `modx_actions_fields` values ('55', '47', 'deleted', 'field', 'modx-page-settings', 'modx-panel-resource', '', '8');
insert into `modx_actions_fields` values ('56', '47', 'content_type', 'field', 'modx-page-settings', 'modx-panel-resource', '', '9');
insert into `modx_actions_fields` values ('57', '47', 'content_dispo', 'field', 'modx-page-settings', 'modx-panel-resource', '', '10');
insert into `modx_actions_fields` values ('58', '47', 'class_key', 'field', 'modx-page-settings', 'modx-panel-resource', '', '11');
insert into `modx_actions_fields` values ('59', '47', 'uri_override', 'field', 'modx-page-settings', 'modx-panel-resource', '', '12');
insert into `modx_actions_fields` values ('60', '47', 'uri', 'field', 'modx-page-settings', 'modx-panel-resource', '', '13');
insert into `modx_actions_fields` values ('61', '47', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', '2');
insert into `modx_actions_fields` values ('62', '47', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', '3');
insert into `modx_actions_fields` values ('63', '47', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', '0');


### structure of table `modx_active_users` ###

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


### data of table `modx_active_users` ###



### structure of table `modx_categories` ###

DROP TABLE IF EXISTS `modx_categories`;

CREATE TABLE `modx_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4;


### data of table `modx_categories` ###

insert into `modx_categories` values ('1', '0', 'FormIt');
insert into `modx_categories` values ('2', '0', 'GoogleSiteMap');
insert into `modx_categories` values ('3', '0', 'Janitor');


### structure of table `modx_categories_closure` ###

DROP TABLE IF EXISTS `modx_categories_closure`;

CREATE TABLE `modx_categories_closure` (
  `ancestor` int(10) unsigned NOT NULL DEFAULT '0',
  `descendant` int(10) unsigned NOT NULL DEFAULT '0',
  `depth` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_categories_closure` ###

insert into `modx_categories_closure` values ('1', '1', '0');
insert into `modx_categories_closure` values ('0', '1', '0');
insert into `modx_categories_closure` values ('2', '2', '0');
insert into `modx_categories_closure` values ('0', '2', '0');
insert into `modx_categories_closure` values ('3', '3', '0');
insert into `modx_categories_closure` values ('0', '3', '0');


### structure of table `modx_class_map` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 AUTO_INCREMENT=10;


### data of table `modx_class_map` ###

insert into `modx_class_map` values ('1', 'modDocument', 'modResource', 'pagetitle', '', 'core:resource');
insert into `modx_class_map` values ('2', 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource');
insert into `modx_class_map` values ('3', 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource');
insert into `modx_class_map` values ('4', 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource');
insert into `modx_class_map` values ('5', 'modTemplate', 'modElement', 'templatename', '', 'core:resource');
insert into `modx_class_map` values ('6', 'modTemplateVar', 'modElement', 'name', '', 'core:resource');
insert into `modx_class_map` values ('7', 'modChunk', 'modElement', 'name', '', 'core:resource');
insert into `modx_class_map` values ('8', 'modSnippet', 'modElement', 'name', '', 'core:resource');
insert into `modx_class_map` values ('9', 'modPlugin', 'modElement', 'name', '', 'core:resource');


### structure of table `modx_content_type` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 AUTO_INCREMENT=7;


### data of table `modx_content_type` ###

insert into `modx_content_type` values ('1', 'HTML', 'HTML content', 'text/html', '.html', null, '0');
insert into `modx_content_type` values ('2', 'XML', 'XML content', 'text/xml', '.xml', null, '0');
insert into `modx_content_type` values ('3', 'text', 'plain text content', 'text/plain', '.txt', null, '0');
insert into `modx_content_type` values ('4', 'CSS', 'CSS content', 'text/css', '.css', null, '0');
insert into `modx_content_type` values ('5', 'javascript', 'javascript content', 'text/javascript', '.js', null, '0');
insert into `modx_content_type` values ('6', 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', null, '0');


### structure of table `modx_context` ###

DROP TABLE IF EXISTS `modx_context`;

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `description` tinytext,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_context` ###

insert into `modx_context` values ('web', 'The default front-end context for your web site.');
insert into `modx_context` values ('mgr', 'The default manager or administration context for content management activity.');


### structure of table `modx_context_resource` ###

DROP TABLE IF EXISTS `modx_context_resource`;

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(255) NOT NULL,
  `resource` int(11) unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_context_resource` ###



### structure of table `modx_context_setting` ###

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


### data of table `modx_context_setting` ###

insert into `modx_context_setting` values ('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_context_setting` values ('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', '0000-00-00 00:00:00');


### structure of table `modx_document_groups` ###

DROP TABLE IF EXISTS `modx_document_groups`;

CREATE TABLE `modx_document_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_document_groups` ###



### structure of table `modx_documentgroup_names` ###

DROP TABLE IF EXISTS `modx_documentgroup_names`;

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_documentgroup_names` ###



### structure of table `modx_element_property_sets` ###

DROP TABLE IF EXISTS `modx_element_property_sets`;

CREATE TABLE `modx_element_property_sets` (
  `element` int(10) unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_element_property_sets` ###



### structure of table `modx_fc_profiles` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_fc_profiles` ###



### structure of table `modx_fc_profiles_usergroups` ###

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_fc_profiles_usergroups` ###



### structure of table `modx_fc_sets` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_fc_sets` ###



### structure of table `modx_lexicon_entries` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_lexicon_entries` ###



### structure of table `modx_manager_log` ###

DROP TABLE IF EXISTS `modx_manager_log`;

CREATE TABLE `modx_manager_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT '0000-00-00 00:00:00',
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 AUTO_INCREMENT=4;


### data of table `modx_manager_log` ###

insert into `modx_manager_log` values ('1', '1', '2011-08-23 07:14:07', 'save_resource', 'modDocument', '2');
insert into `modx_manager_log` values ('2', '1', '2011-08-23 07:14:38', 'save_resource', 'modResource', '2');
insert into `modx_manager_log` values ('3', '1', '2011-08-23 07:15:13', 'save_resource', 'modResource', '2');


### structure of table `modx_member_groups` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_member_groups` ###

insert into `modx_member_groups` values ('1', '1', '1', '2', '0');


### structure of table `modx_membergroup_names` ###

DROP TABLE IF EXISTS `modx_membergroup_names`;

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_membergroup_names` ###

insert into `modx_membergroup_names` values ('1', 'Administrator', null, '0', '0');


### structure of table `modx_menus` ###

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


### data of table `modx_menus` ###

insert into `modx_menus` values ('site', '', '0', '', 'images/misc/logo_tbar.gif', '0', '', '', '');
insert into `modx_menus` values ('preview', 'site', '0', 'preview_desc', 'images/icons/show.gif', '0', '', 'MODx.preview(); return false;', '');
insert into `modx_menus` values ('refresh_site', 'site', '0', 'refresh_site_desc', 'images/icons/refresh.png', '1', '', 'MODx.clearCache(); return false;', 'empty_cache');
insert into `modx_menus` values ('remove_locks', 'site', '0', 'remove_locks_desc', 'images/ext/default/grid/hmenu-unlock.png', '2', '', '\nMODx.msg.confirm({\n    title: _(\'remove_locks\')\n    ,text: _(\'confirm_remove_locks\')\n    ,url: MODx.config.connectors_url+\'system/remove_locks.php\'\n    ,params: {\n        action: \'remove\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { Ext.getCmp(\"modx-resource-tree\").refresh(); },scope:this}\n    }\n});', 'remove_locks');
insert into `modx_menus` values ('search', 'site', '46', 'search_desc', 'images/icons/context_view.gif', '3', '', '', 'search');
insert into `modx_menus` values ('new_document', 'site', '47', 'new_document_desc', 'images/icons/folder_page_add.png', '4', '', '', 'new_document');
insert into `modx_menus` values ('new_weblink', 'site', '47', 'new_weblink_desc', 'images/icons/link_add.png', '5', '&class_key=modWebLink', '', 'new_document');
insert into `modx_menus` values ('new_symlink', 'site', '47', 'new_symlink_desc', 'images/icons/link_add.png', '6', '&class_key=modSymLink', '', 'new_document');
insert into `modx_menus` values ('new_static_resource', 'site', '47', 'new_static_resource_desc', 'images/icons/link_add.png', '7', '&class_key=modStaticResource', '', 'new_document');
insert into `modx_menus` values ('logout', 'site', '0', 'logout_desc', 'images/misc/logo_tbar.gif', '8', '', 'MODx.logout(); return false;', '');
insert into `modx_menus` values ('components', '', '0', '', 'images/icons/plugin.gif', '1', '', '', 'components');
insert into `modx_menus` values ('security', '', '0', '', 'images/icons/lock.gif', '2', '', '', 'access_permissions');
insert into `modx_menus` values ('user_management', 'security', '48', 'user_management_desc', 'images/icons/user.gif', '0', '', '', 'view_user');
insert into `modx_menus` values ('user_group_management', 'security', '49', 'user_group_management_desc', 'images/icons/mnu_users.gif', '1', '', '', 'access_permissions');
insert into `modx_menus` values ('resource_groups', 'security', '50', 'resource_groups_desc', '', '2', '', '', 'access_permissions');
insert into `modx_menus` values ('form_customization', 'security', '51', 'form_customization_desc', 'images/misc/logo_tbar.gif', '3', '', '', 'customize_forms');
insert into `modx_menus` values ('flush_access', 'security', '0', 'flush_access_desc', 'images/icons/unzip.gif', '4', '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connectors_url+\'security/access/index.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'access_permissions');
insert into `modx_menus` values ('flush_sessions', 'security', '0', 'flush_sessions_desc', 'images/icons/unzip.gif', '5', '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connectors_url+\'security/flush.php\'\n    ,params: {\n        action: \'flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions');
insert into `modx_menus` values ('tools', '', '0', '', 'images/icons/menu_settings.gif', '3', '', '', '');
insert into `modx_menus` values ('import_resources', 'tools', '52', 'import_resources_desc', 'images/icons/application_side_contract.png', '0', '', '', 'import_static');
insert into `modx_menus` values ('import_site', 'tools', '53', 'import_site_desc', 'images/icons/application_side_contract.png', '1', '', '', 'import_static');
insert into `modx_menus` values ('propertysets', 'tools', '54', 'propertysets_desc', 'images/misc/logo_tbar.gif', '2', '', '', 'property_sets');
insert into `modx_menus` values ('reports', '', '0', '', 'images/icons/menu_settings16.gif', '4', '', '', '');
insert into `modx_menus` values ('site_schedule', 'reports', '55', 'site_schedule_desc', 'images/icons/cal.gif', '0', '', '', '');
insert into `modx_menus` values ('view_logging', 'reports', '56', 'view_logging_desc', '', '1', '', '', 'logs');
insert into `modx_menus` values ('eventlog_viewer', 'reports', '57', 'eventlog_viewer_desc', 'images/icons/comment.gif', '2', '', '', 'view_eventlog');
insert into `modx_menus` values ('view_sysinfo', 'reports', '58', 'view_sysinfo_desc', 'images/icons/logging.gif', '3', '', '', 'view_sysinfo');
insert into `modx_menus` values ('about', 'reports', '59', 'about_desc', 'images/icons/information.png', '4', '', '', 'about');
insert into `modx_menus` values ('system', '', '0', '', 'images/misc/logo_tbar.gif', '5', '', '', '');
insert into `modx_menus` values ('manage_workspaces', 'system', '60', 'manage_workspaces_desc', 'images/icons/sysinfo.gif', '0', '', '', 'packages');
insert into `modx_menus` values ('system_settings', 'system', '61', 'system_settings_desc', 'images/icons/sysinfo.gif', '1', '', '', 'settings');
insert into `modx_menus` values ('lexicon_management', 'system', '62', 'lexicon_management_desc', 'images/icons/logging.gif', '2', '', '', 'lexicons');
insert into `modx_menus` values ('content_types', 'system', '63', 'content_types_desc', 'images/icons/logging.gif', '3', '', '', 'content_types');
insert into `modx_menus` values ('contexts', 'system', '64', 'contexts_desc', 'images/icons/sysinfo.gif', '4', '', '', 'view_context');
insert into `modx_menus` values ('edit_menu', 'system', '65', 'edit_menu_desc', 'images/icons/sysinfo.gif', '5', '', '', 'menus,actions');
insert into `modx_menus` values ('namespaces', 'system', '66', 'namespaces_desc', '', '6', '', '', 'namespaces');
insert into `modx_menus` values ('user', '', '0', '', 'images/icons/user_go.png', '6', '', '', '');
insert into `modx_menus` values ('profile', 'user', '67', 'profile_desc', '', '0', '', '', '');
insert into `modx_menus` values ('messages', 'user', '68', 'messages_desc', 'images/icons/messages.gif', '1', '', '', 'messages');
insert into `modx_menus` values ('support', '', '0', 'support_desc', 'images/icons/sysinfo.gif', '7', '', '', '');
insert into `modx_menus` values ('forums', 'support', '0', 'forums_desc', 'images/icons/sysinfo.gif', '0', '', 'window.open(\"http://modx.com/forums\");', '');
insert into `modx_menus` values ('wiki', 'support', '0', 'wiki_desc', 'images/icons/sysinfo.gif', '1', '', 'window.open(\"http://rtfm.modx.com/\");', '');
insert into `modx_menus` values ('jira', 'support', '0', 'jira_desc', 'images/icons/sysinfo.gif', '2', '', 'window.open(\"http://bugs.modx.com/projects/revo/issues\");', '');
insert into `modx_menus` values ('api_docs', 'support', '0', 'api_docs_desc', 'images/icons/sysinfo.gif', '3', '', 'window.open(\"http://api.modx.com/\");', '');
insert into `modx_menus` values ('janitor', 'components', '69', 'janitor.desc', 'images/icons/plugin.gif', '0', '', '', '');


### structure of table `modx_namespaces` ###

DROP TABLE IF EXISTS `modx_namespaces`;

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_namespaces` ###

insert into `modx_namespaces` values ('core', '{core_path}');
insert into `modx_namespaces` values ('formit', '{core_path}components/formit/');
insert into `modx_namespaces` values ('googlesitemap', '{core_path}components/googlesitemap/');
insert into `modx_namespaces` values ('janitor', '{core_path}components/janitor/');


### structure of table `modx_property_set` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_property_set` ###



### structure of table `modx_register_messages` ###

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


### data of table `modx_register_messages` ###



### structure of table `modx_register_queues` ###

DROP TABLE IF EXISTS `modx_register_queues`;

CREATE TABLE `modx_register_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_register_queues` ###

insert into `modx_register_queues` values ('1', 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');


### structure of table `modx_register_topics` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_register_topics` ###

insert into `modx_register_topics` values ('1', '1', '/resource/', '2011-08-23 07:14:07', null, null);


### structure of table `modx_session` ###

DROP TABLE IF EXISTS `modx_session`;

CREATE TABLE `modx_session` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `access` int(20) unsigned DEFAULT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_session` ###

insert into `modx_session` values ('116743f97daaf5b1f043f1b84151c9c2', '1314108848', '0hnIB6GmNkc_8zSqeMkns4F9N98euQ5wwsIp-qe2sp6U14rE0ZeBh9065KLnPTtew7n0hoyjidjGpdysfUD7V8tERvKnM_PIoEhoj0Pnn9JghZUNlNMvNyU5AgkPS3BaSEY0H2RlRTIw4hKIWVh3cNOZRXcz7WXPMAtNrdq99_hr4wp-UvHUjrNMQypNptueSszx4SeqSMhZVUsBTZ9FMfl505QgJGTGUZ6WJMrmVpelo2zfsRf5ItaVC13GmO2A0_7ecdi1x12ojrjRu-x2vr9LG-ItqBQBG9fv_M2AZ8vcSmtOCe_3Q7sPe3FvQgN2W2nMUZcV1GAgEO0_cqGJFhCDmaJgcq6FI1qwfVc1il9KdWvQBEmPp0S4lDVA0jy87rfmdONCyU3BvpMRyis1WGOjYbO5gk4HkCtDL-wVppK4Ffy9KX0cIrHtAJRDSV7gNqTlBSSYE40q5-MjnJQrFDwosRit32pUPbifF0cQkyfnAb3k56oN7ogFMiDUIIwzLGyE6CiMKvqme51-x3fcWUd8NY3M8kar2sJitTzt1thpjNZCm0PKgfmwRS-y2wllmaYn7c833uIjv_ZQGzl9qW4TddHnvJcAwiCZTUCmj-f0VgBMBelDgcn5ykF5s2_TSq9z_FWA2lfphsTu9Kt1ymQPUBWyBHM-EgFH2fmbH_gIE_emppdry8wHZMoV4iYkosNfdY_4QRcIu-4preAXxrE6JDyEh_HxaSj8AUlXH5NqyHhkSotNWotuqRuoMBlt3g4jvC8JlamkHQfrdY2nEX5LGZ-Nz5zyblJGbf0w6-jjCLK8vndFu0_5mzGcVbasCSS5Fln4nbSLoceYUv9aNFL-y_PaHzRw3eFkvHvEm7G4Uw3qh3etKDxBV4BYfaoDKRFrV90P-58_r7PdL452rU6ZPUQODpMRSgoIJ5YMgvgOIAzZk-FRS3Zm5HmUnTJcc2bwjSn7U4UmhB4jha26b2poCFVVMPxw75qaBthQ82PNe9CQgHyvfg0OvzvXCE-AW2o1FZAIflgAB-50Drj49YcCbu35Mb4Pnw__G_Ju-pE1XEcFeVpTlAdXlTDBbHA8Ivf9DxArzFR3kf7glNkkbbCLL0OIJjFSx_Lfvy7lLFPlsKvolcF1lHyibxT7aVNzacDc9FdI8_IwPJSiIA5ossHK0sJ-ARcWh2tXOOpAEjIyIts7jL0YjgjLiwG8022fdRImfaDwSWHcABPH5nGIzORL1I9Fs6RkLXhjgjMRQIcBdP5-JOQ6aB51JLX3VePdRPBH_P9Lxnio3WLyEj05STunNszpVwKXy0Nh4074cJ6kV-PySsWD0xhIZKATYKDgfmTOnJdv7b9FOvtWwSkQagraNFWCZhthHuHAP7RQAbLQtO-fhhD3XrvsO2f2Z924B5tXpt96VLG5Z1NV6o_ri2QLMUPaKSZ1Hetg2YcO57mwb_5ekc1fmipJJb-0VBdlELV69jWcL_WRerPYl_MF1JCUd1Sz3aYopbSZvKe_nA3w0cjrqDay2E-NsePyWil1DzUoJx4HZaKtyIbwHy7ztZr4FRxg3IS1gWkMD-cZpUPZDsHkCKs8DN30sdWrd2QphihBJTTueXnclbOBFIdTk2Jnlr3AlPSmK5k9lcshaH1Ga0m_ftIHGxqwQWB0c7H86L-kZ3P8dY0fMMf2lFzbCNfRPfr_ZrUbHkWBH2M4mQOS9sJzvPhU71jvpJKtzwoBznz9YmgRddt0XKXuDYnX5iiAIWwhyB8uKQFTlP6n5GJlMjkq7kUzXopjQ-y7oHb7gZVb6uNRpIJ-l_F8OC_q2bJMUXnsj-9-efD_4FWPiZuLehYIzcJN4pKmbx-Wxh5OmGs02w1GwkL_BLEW-6KWDciijnTH4HWrANvJPJnuj6idGlVuGeEFuKCydQGjQ0q6u9IOkaKgHOWwhb139qCgXTvawaihv9ol9-xgjBs769h-1vEXLLXOHUVqZmR_DEvWbTemC072SaGGhGn6Ke10f5wa4khh2z4OlyU1PI6y8Kfj4nOOW7q0_s7nAuwrnklP6dS8NqB1VJCKukqDrVmbfeZ_rLozc_CKZPIhLSzL4Bbq0cj5HfZR3g-XPNbY1wDUezndDG73ST-wcJ6nBsrmf9zL646pnzJrSbrUwRCq0u4EkZ9DhN2N1WBMtL8-61DT3o3sSjUZ3n2hRydXuCOesKmC9hTcHUwcviiW2lHL_QjxdT8J9A8a2Iz0UFGc1MpCz4SnoPPMW2Dx2_HEhfOQJiqYk4CftuA6NXTCn11fRy1l88yb5eVTJrc2HbSbit5aruh448jemycmzMI_oJkt8jOByaOjuAfTJDGGOU0PMiHiznvKe9nW81rcfg_24YRuLfiBYhq4UKXAoe60saqWCdwuBCz9wC__TfdCPhkNkmGQIStpHL-FtCIYP2Bfuo-lZVGiWittetQmcLGNmTwwm2xX7Xhvbq2PMRM2E2AEzLSxBbvKud_cUZOW4NAbI5XPPX3PL7tNQpom3kGtmb7obaf1FFPgHzmK3yBsrBNVS09phB_RbHJ0iE-0wWQc-jGzpalIVLPzFPfsdfeyPAwmeNks0OMrErdSHinTMPzv1hkvmrtxqMPN2EEH-C11_wByKbsqzv51kbGGJ0aIhRd8tv07n2RbCncqM26PFiGEKti7P9xzvNRVpoSlXTCtPgUS4V8iM10yxffbGUKmSOzYFeIT8aDBDU7dIj39tmdj8efPR9z2oBNuv8Ip4paGtQDRWJgwzFfDUimZgCEb8Y7Obxv-quEj-9S-PK37DWXCl2O1GMSaFXPGkmGXu3iPTu3jh8x7QwazHW-OUnp0Lv2zCuuDdSdM-XFOOZsiYf0j-biXh_utejMxkqB_BJmcMTtKxMhDKa_N6X2WkBTUKHWcmgL1NlwX5Hpklgc8lzpWBBRb6WK37UVtj14fsMjqTLRDdcPF9vy9kTzeX4agsj3K7JrYrZ_m4_krXoYgN4ekfvNN9mO5mseCV6nojrBesmPUR6EcEKmxo-REVKDTEjn942RY5d2lbESsu01vz1TicEVJBSeqZRk7ovL4uHliNjYWwQlku8OqG_VgbPDAwkpxzTKi4cl0Y_IrEql9A8A5ha8IBNc-LcXNyAYulTvEK6-ozbNcFfW-DHn8m2G3o2gBCjwwt6EpyHtN1PF_XgTVQohXt415igFgUNR6zxN_8Hs-sK48G7zu77SrzkEDc56_mAKJkTHDh9gZvGqy1ViqekF5k2GlvkeMNyr09yW1JFAvtH_3GIW_MYCH7Gq1EpECjSTEyR4tEWwgAA3JfTyAGc8GNQ4HLQxzosBknHvIIkTFu6kNccIwHIKhtTBvpY85qz0eBkQW0y0hdVivJSg48iKlLg610jZCbC3hTyMqEEn2sWWau4ibR3w8ikmn9PuS_-2igXp531cyLy1YXj0pyMwgnRFHAc5GnrOQQ9Io_0nWZME2-6jmYAD-rqxjJm8dPeuAq28NklsHkmwuoeI76I8PEpkP-Sb6ydmKgOopU0WbZO5zEyLDJmNdLyR6BdET4595UKKdSxyIbSJqzRn-xxi8fluzOxiIn2EeAajhg5nFOjKpPDjDw8hxOZRykoq8Vpk2nO_e_GF9TrZsqgccRtcrQ355LeSCZjtOLowQXVmkf4YtbDOY4ur8N0mjXTpX8_OPaKhhMFgcmm4zqU5_RUjYetwVFu4SNNhQPgvzw5mgigykrmUwlRo4Uw5G9herOmW-R-2bal--zzEokeS9zXdxAk0Y8BVyjTW81-Tc80-L7erKdoMfZxXYfSKn1EnAMyS4pAOI5oXNh2_f2ia2s6YJbp6Vv3A-3R_ZOf-_SMpihtkKlhaVVRqFOagXWTHRSCsdMySrJFd-hL73QtOKf3-VwlbKLGbckUerxjHrz7-M2zA8LfHLRaxQF0pXBwPcgaCpFLqhe_bGmtxNCH-t6rDIFELjShe5r0F7t21SFMpjTEC_-JyTaDxW1nlS-bPnlS5aSpRovupmkfRFkHdw0woIErfX2tR5TK31coKUKmpzPIyXsWpV48pSWYc-lq2K6uDxUAiSMG-csDYiu-wZNSWNypnQ4lapvJMnmhdJ6ZWgRGPev4jvKz-491gzW-mmfir8tN86tTuJYD4gu3zx9FXuFaC8_SbSJW4HPqtboqtP07A2IpCWznjmH0mX-B4y0svybckgqf3xiUpAjHGwa6T3n7ers2ErIGF4A163iZ0rVEy1EeWzrCbWryvWe_M19AfaDZXgTvUwtmiOZpzTpja8Ez8v_36qX2IfVnJUVsH4B-0gXbnE4YWdwMFoxsZOq5g1A7Zl7UtLplijDU_NctMsGEEVnUaQXBRkE2daqcEbKHg5CIBbGRJ1u7YnfMXLq6yjcAJppEuwohD80W0kiP_KT41K1rrWregtnhv-xPbZEkkFB7F8-yhv58SmFugV9b3wcl5ZHqjh2VJ6hSnNV80PgbwIhmGZk9DPVqHQ6S0JiFc9VxgXQsl8OfcMp0b94Vclzi5RiSHeRKAPfBJ41XDfJh-PBFlTyTEmXc3j2g0aE2Lm3FvvmxHoRMs0UJN7b5H_AKXMsCZ2qeZ3cs1_XvHNIpzFD68oX7ELneWJnAPmiAnyw-1fVBH6JeGRX_0D2MCRTN1GFSkyxMJYrVQmbpKYWm36x7d_YWoiv7qPUHBXPK-M9cwgJvlNHkB6gjLKy9mYlDyW0NPKJ6XKqSltLqrG969DeEm_6ziln2wDnAqdlsD0yNvFUbsSAa3RktE84UzINM-EILfjYF6mt1734Nga1iLcjzTAWA6lA4XWlIF5AfUOvI_Bq546jcvdi7m41e_Aemhd_2pZBb1vLvJaBkAKgXCe0KQhYBLqOik0o6V-vGdeShlErnYCfu2p-e42NfwGsWsz0pUTUEG_syPF_Fccae__OyRY-zHZimY8YN0weDbCFytDsiORD8sgvryOj6Ta6KLMRHXQvk1C3TX8sYyu8sWy8pLpTGK23RTDg-DwaYHUs-NHisdmX_advrzvDVwVuVxz1KRON83ZJ5xM4kkxhJUsK0GXVNlCOQC6l29Zm7MPBnSbrNE05UKajEZHgpuhS47eQO4jUzVrq-bsT_WifDZC_FeHpIDphV9qjutM_SbO0oV_cwamAlFiZt0tr9YWLq-3DfWXTv-gfnQGLXwYvnrlqvOKLzWyd-lCcHNAy8z8Lq92jgoiYH9FcEziV5-qkqmDk9XlM99b1SZKJU9dM6IcF7rVL2uFemzoa4-0dPRI6DcReHxj0Ed-AvLnwGXo7C9cTJButL-FEJkxTt7RyqZ8YDfi8NNMxk1QsN4rw7y15eKJkutVR0aOCzQokNutbj7qxOKEIy7DulY7TbPS9d1qgN7_EQ8IjCInclblH8_widEh1qR5FEwdE_SgTm_0p0F0Hvz_GolnfSV6Vm9mrHpzKoT7kmFYvGCz0Ek9tW_S5c2_OigTpwnCp9VUt-7Ce8iAUf1A6jK4SoUSifadhkE89mzdWoglS9Q_vlh5wumypWPsEPfabh6QTspp6OEBlE1DjDCbTOyiu3iPvZhpMNd-uDXPuDgXCWzHxXsKdA3Fd8O87_rvUuIvcljV6h6NFmzvvbGB0FJcr4oW1Yzv7cjTpxflwEuaoQ7zhFnWk8Fg6rGARdDVT_NXpD2-hq4i97RZYQFPVC-C4YFvUyTVKV5VCGUB5YKvD0I3ZzJtJM1oHsSYUByEk637YTP8OoOCBHLwSnjXoR6gvkJ2qEqVadK0a7RWX1li3scF5-r5KF7WjpResuTOrSCVc6TKqgpiGgAOGL4OTxonQVIFJrsUzdk-EhAaLeM8C7XBnXZv47Co1XZg23Ubw60Y02Lj0X-trJDjRHA46aBxM3ahealS8ozN-c56SKZS5c8JL9PtevzVLWzQJhPU-jQHGS8WTPdB154Fu_zOF7Bt5Rdr7e-2VTJ90Sp5tsAivKRrwotXnmB2AAtnAe3mNYvJMpCQ6kZ3vgnQ0qmMO2Xm-z95Ya7A81YO8n9fefA7ReP7Re0i7qMFVwJCj4ldRu1kXIkpz5jCUB6b6arYi-4cMlo_y_cVcvCtj__BYSoleM1dZAnSLR6A7QMwCHw0ngaPqctflnOTHVMhyl1LNkk9goe6rIXYsQXjvQLe_WOS8JC4821H1lnVha3UsRhYWT6XO_HS5Q5mvaiUkxgJUPM_3bla6rFTDD6fuYqOHErV3PUCpxgfi7OIUMwOYuqpGLyfWgcxx4xtFjwC1lqW2XRfkl9f6YrY59qx5Y8h7EZ-nWfCxm2cxJN5d1kf4aZw-90lpAasd6HGK58mFisv7a0gvV8c-iLOKSo2oHfcRhbu7LkpaA6kTwJn79z7OfQw5flghBhS_0MjGXVhkevyHp-fjrKYfpTI-7CzMBUODg9JsJ7tYFlFTYJa0uNQQspwhvJYD-63SlU3nzLYe4BlRTkUvX9JOzaKtdpyyUwnWn93BZwzFSZYBwI7t-QW6OSVpZQugWJPENgfaYpQKEQESmq04Sdwz2IwLgy3SsUzlajmUYfacx2zwuoShpX8TYmfqjFTplEU3wZdeOFseb_Lq8zv-kLjgZVswGUUrEUb4-YcbCsSybVWYYbAUk0MvYcEjdL6QQmbjuyf4zoYI1c4q-j-rhRwEX_jEMUgOQLCP47FlR3duh_oj41gMGgubxst-tnu1htKPW0vSdjaTaOpwbZ1L9-9nz8cffxQ7W80Dc07UwygVN5AqfDxUrwsGQ8IHvw31fMfxcSuRmWr-uIsliiKAmfoa3MRdYesvqHbfvV9SuSLGZ77fZUH2moBdXHiDo_a77KWq3CzIS3V-oK7iet_wj426zGbKOB71AIhom6FdZXQFLZMYLFaA0Cze8lYdGzwojn5bGN1Pw29m3P0E-nxuyK1k9sG0GJoE7EgUsmHt2FUsrbE6HzK4kxYMFCKimpk-dkbCbJRtU3wmpPp9kNPbcwHVvNsBgJ7XHoUlNrft4WyeVOlsLY2xYKgQ_FjL7RKD-smF53Y8SlMaV9eYg4Mw91nZ8pb9xpn_Adzhs1qvaN760j8AA7y2rY69BekluxRokSSKXfKJ96eBMcBLTztkQJzfUU1NE7bbqi3c80BEhnlz19CymubjJxxVtDMS3szFQo8L79trSsanlRATtGU5hYI0FxuVTG_gta8DlamzGrtWX8yJEAHP45LxIrT3d5pIMktpyNxmtMCJGv8Y1QQnhoFyZUfcn7HuxHALCYobxwx-_nVEKrbqbxychnvGhVzocGdRJv-iloK1jH1q5hxiDq4dIVw_u-qduNiGG1VBigD31zr4Tsifi2tEPUAi3DYbiq7iSy5OlfQq5rTbYSeYxruYl7GOmN0LAZTSFQISG8kL7GNctKqVFZS_qxNN3Pcawdfuz9hG0zaqay6vFLs93HZ_FiJ0GtortP75B7SoEseAEd18yY-yTz06U5Kurxwi7wnTNZNp9vkWxo9iHp-T9M9gK9eWxACr3PaLzuhi5na2cTtQqD5FwTpKZqlwPeP-LCHOss8oXdRqeuEFS5vIbuIUB81Pck0b5Dt6E6LUBINnbTBNVKZTXlh7I4TyENQxOqmpBEneW7LYfzoWuDZma1kYMuMQ9J-7IhsULPPTvCnDXsRUgpm5HVQfLNACudD121MUP27zvEQt6L1npPuzLwoQ1c4deo1JjvsTrLAAu6YKT894sMBwb24ABVFU4jMXDZFqrjXDti_8QJTcGbbUoFxqD-E11ReQqOA9tJfGPLidADop0MF5vg19PcigVFDPNvK5foZEpiyaXduEAYSaPan-wuMJV8yZJHzW4IIi91UKVRJhah3Q9LpHITayRkrAeMWtuRTVw5x_IYdhMIwPu6CpsQr3VQNPdHt0ckNHkcbTj65b4avaELX19RX2Wf7TukIHyZ4m3a3GLXkO_N0EPK-baZ5WFi230KyvnEbHIVMzYkS1b7roSiMDklkqcAVlhijuPFgXDAoZ1GbwI-XKmb-CM1WXw_L45e4mgUPNVcmYhltXlfnDDNC_Pfj7CSvIe73xJGcwXWRqrxPHDOUmkzVf8EaU4IOdcN0PcZVK8ccS7Xtfa2jkJWU3dJzaWbOhFsIu1epBgO2LP56b--Hyk-Wym8TavixRrhi-ut3Oj_BUiAGwqXgykBEMFUNyEJ6jueLm8wedJ9fEOVp-ztANOeFwqLCSdEzUBxVICXXqSrQK4Kgruc2wYjSyOC3v09MFMe14aupFpelCVOmScPQ0xv7UmJ4Bt4gaNG9RcJu4vW0BPvfPfCQ6BFpQmUMfd6Cdbw_schWuyYBL89oiUq21RQ_huEWRl7CO4Pm2maPRVJwTqiAs7GuYCTibx7_lTs1jYLRCLr-nW_8Z4kMT7FQluXDQkHTx1f1EbdLlHdvCX_mSvJVe13aGgpVbEGBK5L0o4vYjzURKwxYdLygDGHCzO-aaLD_AmAoYwgGPu2IY5STii0baiC0kbl7yEUmpogM2tdefrZ8iSaHgS5XHJFw4vsUoLJ0fXdsuFjkVfMiN3HClvMMSjbAGOIfF3LPSFQ73OCKOtKMN67JdBKp2uBinXNqEbonO24X8o6SAAdwDGcaVOvm5NSp0DkjUM4TFxo45AGv2H_zZvCBBKA4ajCU_zm5TI07y1U2AXfACLDmkWHHBKqH5FIU9E0b7fLVJUsM6CXiWlCgXfpIT9vzHxnU2t9Sc8orbJbUrN_t8NaLPEUG-ibU2MTcoaoLTFDIvp8yvRDeU4Dk0FrICMFioe6R1TpqtW4yrSr-wQXcx4qEYKj09aFB_5v7qsmlo8dKMg7veIfgxdirN3lxadJ7lOoQloPyY_R5H4heYeuS-o5qcZn0m6V_uCfT_sdKx8KenAZ3Sliwi30HSsqDNjo4xoH8Jan6pLuk5IyWEaXVVj-GeYOYBOD_FCbRBRG9nmzB4t_OaVxupCN-L62LqT-Ne1idw4tT5e3AA4VdPtpwya6MLxw9T_LNd4pTXCCo8op2YlAkL9lqCNM8PaRUutV2qzMB0PMUkptk5ayEVvI-EtOd0lVtE-E3i_89-6W8JYDSzkPJqo7VoEldfIeJUVnm8MZu9lPJfP31z_BT0mOCfnOZi3VLouDcOMwRipXLXkSMXG6xbh_JIucNtGVIFKWnzh89tYeamy0g0buLowT3ABs27ZHv9a3c23gHg0ys1kc7WG506Zr2taGrGtFb6Hs23ndpoKBenhAKKgvRrTcyUTptDnmG1XBcdt1SveRZPmGYryJgbCJRBrlfda2l35rLqHhziLKubMQV5jOmNmlvu4se1VoFriACrSWSF_hAZcjLkoKNIhIEUfIbwYBTndtGfzV6LH90DMsjcS9bQR94y8j5aUYxefo3NUpiA0Yj6VIOZRpNr0zeVVMH9fYb0dsjZcGRygEVcRJUybkQqB7iumYD6_D7zPAfoOZ7gGG06zh81bMAVikIZqvymYf6ehJcoQWD_98yKXqsJVtfs33y00C8QF43h1CNxWWxZL1W6ar3Z_bHuCE-RiazE_f9aycF3BTKt2J7lpO64PKg8ZxiKp60L05zzUEi42ELAJP2u7cBEOnQdVHRcnDc8LF4BOtdBqpvoSl6hnVhqAP47si8vR1rWam-yoyAiDfI37AK9HcBgAN9BEX6IKIJjvPcQNnJKROKwPxfO2w4J1Bj9dsKbv8T6HqbJ2b94cz06jxKIgpwPR1jlRLjEdb2qgPZ-FbqbOwM0gK1YzrQec1-Z_vjOo8PDct8wNqTHvgz6Bw0GfBKJP9d_A54S-i2dXASPr-086AgCrieJ--Omx5DtiEhHSNc8YOdJvfz45ISf3ESJHkxMR-HleBalxyparRuiQuG_FyWDw7omnz2cjA1NpIdLjkXDgZYRqBzTG0g7U4EB8COC11kkRuvBjcWpQ5693cNzJOhQ3YUWuM0Z2Yo_eoEVkaz3gdc4u1v8uSsBsOsd7zzUx7cI_1lLeivxCHEGS-aDQw6djQtdytdB8lqH2n6ggUc14u4ebNwLPRXNBvT3jicB4GAyn83l4ARpH3ucVPH7hdxGQ2Dcu-Il3rQLcccbzDQNNmSAoX9Rh8dwUXvNPkqAl5kC7iBFsXk5it2uEUw-onpuY9MKGtuYh0OrnveprgmCGIUbeoqyoczAxS9wEe6eOJfcsAuPuY4YR4Si-vsQaTyywcA5ypR5OfohhsH7WdAx5o4B90DhYd3pnM5OYBb8XZywu2mJl1kKV_cf_zbRlVf10zqtdYs5_b79F5wwyFp534BaNBhCuKY-3crOuVJy4U716a6yKXghw80UYw4Qyha_B-A_xgdy_rnZGnlj_TOTqGJ1VH5DJ0XegS4OymorYvhYGGAJ7Og4ohP9agXw_6G_ISU0OYe7HSjl2BB-Rembr3Pkx9ZwcUunAIpa256wnFx3AAXJmJXhs8jbSC0UqhnIMh9ZW8HJ6gE5FMKV-JrPX3YwdlRG6V6Ff_HNZ-OUgDF4FO_XZcuemO_rM-35k_u-k9IaR36onshv-uLNS364HZ4vhO2Or5zbrWKNIGulH3IONrC1gA4apL1QTzV9x66RjO-XHFWTJxJNGSV8_VOksxD4NFUQgX6D1TPwG5Iy5yYbA3cefWFP_DnRjtQyR58MwSQolPIAawhTx4RopjkehUIjKqTCH7GR_kGwiNaQd7MyoxQbXfeO6vs_E0G8VUH8Ju7VVwd1LXxpF8y09cIKMVQpZfnp2MhHocD00mBlaA-eaV0hGBJ3BwsbApmLOA-yhjXWGI7YmZTPJZVNlWPkRQNpOgTqKQNUvuu9EucM3be70PWG702LFKk0iCKkXplSUZK1C_KFnMRU-IQwoTGyk84CAA5dWQUXrB3hovS37aQ8uNHGTxTIJ2JM7XnMfnNqPkTSp6FUKMpG9O-indEzh2hU7RSf7xAf2erBddZMsB5q1a_jJVnM9bZfZZqd7W8NQX8NaF2bVJYTAMkxSqeF9Jtp3URD4ZVnU1LuCzYAz1lUEzvefk0tltzGV-yB45EBJk5vFufhh-zVpE3PWFpZOqWByS4Vw5nQkzAv3oa72TEXDUth6rt271BnqxHkUPAx8IO9VxUOmRn84VOlimtayxvVOZLxjwaTZSI7Y1fXuwhP2NT2Tn68VPLbsoIbZr0gE-ssdP5aHDJomdFeMstP25WD5RNaBBnFFr1K4YEj0EYka-jqSflzlgdIihQfoHe1ZyWf9qu2irlWRlC5VvLE8vifyynkwlShmxJAMKcef-WPoF-BFrVsmPr7Abi5kAxhIeUeMWDMZ0RkyV7DhBargih4xdgPyrviYEh7ZOQvwe_qVNER1iuhYYi0eYOL9m67RvEKXpZaZedrqmdM2aDNLDLRIepf2FJ4hJAF1hLPmIxvY1_8R_aG5FuC2qh3J7ZmhAEDi_qXC0a5a7y6jN7NHZdTsvCWD6u1Q6XUPk4TRjiu46rCtgeaO9KMXz7veHsDdQrSzDCe7JwpQgbZJ_xmicIfjWrgBjFV398xnVhgdA9zSYUS8kQlstQTb3pwVApkertJyrNjy2w5LSHRSlNtyLMCzJqvMVDcBzgKRmvfUl9YhbZsdLpprdbbY3Fa7RMTDHmAcZu2jVT98J90U65HPIsl_l2poqX2PRITSeUhN93aslwvvSe4IWewhbZGMN_AqUGyRfEFKWAkt0aJpiXyS9zZCl5cnTKlCjak0umLGY8OEl1OeBRfBc1WWLkr5eG0zrVRDjhhjpnNCwPfs9ypLWR9wrtpBs3kh7FGrYJY18PeVzTsCWoHpKbGL-TXZQ57M3OONbzg4FegP0IDCwl9I6rqRta4RzZer7I5jQqT7oEUI06Ughy6lHPdPADeimC33HlNcom_TRN2_f6XH07cWK__ftYDjYz2la35j1bNd699C_Z2HogLTsOWWk9vlRXY060_JNuNcqIxylLFUyRmIN2mPTQElk2f-xcPxMecK24LhyfxgU6-_o8GJ6TgngviS9TnAtG3f3ucR9I8a4iZSfxWm4qlxMszoNzWJtsx7vkDjYF1CVZ16pfi1hoIqP6RE1n6HjBfFC06hscx58KQKx7PxRhpxVrHbjlL9Y-yDkQrtoBSvloxOmq73TSN5FyI1m5D4JEhapRzQaXrSOawNE0DY4yskIUOmZuZlk9Dahun4bDaDO16oqBBVUjRM7cZ3ZOW-pmfbEbjWIIKnT1jA6ZeVZWiNsEJhcQWNCDqbXOWwAgc5Zw45kSq1jLvk1BtqoqoBFDo2u56xoZB_GFxHSKz8f0nrssKj9HTxblPi0R4S9585VHNO7amx0uZKOjA1sUl8TDPFG-iZOy18dFmNm2na3e8M-qP5qS6J61hSLmDrebzWKpTytfM4oGUzr5fvJMIgz3SfrQUxamCgMIlDJnhyHKaoZZkmAXUy_on_GrTAB8epLuHYOcqwOm3L2yS9dCo_XZKV2rmgbl1944kpoYvP17iLCC6hzhFn95RgX-vf97xyoqYTobolWQDlJw6GihS8uVAB0DsALOMQ77Cs14VGa46KP6u7iIN2CnyoIKTawbsP3xLe1wri_JkD3qqYI-yHdVu_S1qtNAj813kAgeUhQj52lLzxvtvqkk8JdKTfrf7ZRC52y8VHUEZahhHeq1QGJZPe-4SFH-Ed-MG2LKm8znqsQoqK1A_K1jI01_VopweHsRL9C-lXW9eAPHOXBhSj895Xh-l6TXsB8vF-zSUFIW1RomLCRr5rxXl9STJ5L_m3BGeJ2tBnJ-GV5QqfrDDxZFQKACaqt_Gd5CdteWDXc409-CFnzSA4VEsKSZ-aGU99itXe0LXky2DW2cIM5uTD2_1EElvjdwgLcZSN7eMcth5Go0YymxrldwvUic9dTThlv1hdwT8b-v2nV6k7SPkBQ5cT5k5CbW3pZ5mvNfzqVFUgxp8A4sZmiPpRVz2zyRCPW9ZS3F7mehjUCgSPgJWFKl9L618FfKNTjkquyqHxnDp3ApkIQX7Dxzh-Jq0XEOhKih3NFjHklwvM6vj3zYLQDiJQ6o1vUJWzvrbqqnGbzFBhsw9eNRA5Y5dvrTj_h2RbUR9tUksSPhHQBH1Tw7017OchXQkk0Wo6fhyMfAkpaV7mV3tmi_qCT5hVSjkgfiuqKnhQ-I-DfSJCZmlMW2Oro76yGdrmr-qzkuwNFLIY5aiLc6GfHnJmegd_LIlaZ6X3GEeZ1-DfK1tJQUHWXxI8QbHIcQMxoF8JRiaOd4KdihDUz4k0BU5wGbQiBFCxtRm6fBScNedKn1hFyfVBJiVd-eSOV7f5p7zuu3560aw0uP4lbIFbgqTAIrqR6Ea-_sjqWKI7L4zeyBfvG5T-_7ME77zI709AdhZ_C0MYfA6-0AHl1jPwyf-hcV59XQdKD-4saZ-lEQm7qiBVoBJqJHc7-TcG4rvCtTHg2NjWG2IkBc6Afs3TNn1gcRM6IBI3Q-HtEmMCQ8Oj8byWAmnY1tYWQpLjjNVbzqrdpz9X_b4HMM60CcciFB3IU1qP0GVibqvZ2twp8WZ0YxpMKDJgKkANl55aGGPwpM4Kkj8rXnno1bXX3PKXRyCYgxGOqtoaSssBuVxnLn9GFM20P4JsUQncWYYBx3ZIzWHEVqyL9TO6vI-2Q6jS6KwwehZHysFqYV3u6g60e6hIpKaD2xp_B8pku1GcnhOVpiHTI2pZuymFIFC41yC9Q6EwcGov7XdVAnfA_3Gpz-8t8mN8wlL1OYgbxK6CrMbfEC_Os5Xr_Sqe5y-WAW4XLIuuHkf_ABNYzWUAXtSyP3dQYFqB-ge97dKO5RRwzEuiLN78Ma6s7--hkOZh9LIIUgObSK5JZG7gEIuh6Om9ejFob1b11DtiQ3B4vawK8L29BYqvP0F-O7sJLuuDJ2EXi74IQVKnZaD6Y29Id6exHMIGc7rbCwisj7U4ykmR8sI6fIQk8Mx-CqI1laqH3U5tuar9qNR88jy9V9s_bql9LBA8Fr-ndL3OmAonO05zKJ4k70SnjYPe_jk2LvkwRhcQwQmGNtQnNRvkmBZ8y8yVrhslgHTRnjCtPgWXrVrMxYZxCpL_2rKH_xgh-0ZtAfDF1ijdkcpfOs_3LzfKt670_zgxIWEtY83yFp3wl3WhXpyesLLMG3TeMgD_ZjymVI1AwQ7NwVgmnUxZ88ccrVJukMk2fSgaF2AnB7hIoAz03WCdrZkIR7yw_C309mZVnIrqWpGj6RGyrR-E1PQ0m7JCxjFHIJOTpyDWT9cMAfgeYVrraj8_UiH3XNKRtq4zdwh0pbwlyYxMW66tyaRcQNnQgD-GkDShKsJmEgdFDwREASp5-AxLkUPl75_SjXqMf20-h71rXu-WtUEw_b9btJbnce7FkR1nHRWZgU1ixgMirA8gmEnjU1lakG9r1QUzqjUVSG1vrgSPxezE5JtRuRrGc-H5vSxb6qw01iOL1-RKmNUfzvlSX3dHp7msZ-LCakTOgaupNxmeerVtOnr4LogrSe9ggstQOak0B7sxaZLWeoliKv_9iAK9ibzHeLSt-f73dXF5NvJASDxnnOuteDkkndNOSbNAXWrupyuVgNkIWhqkCjhLf-Omi3UC3SotPpNeTlOH70Mz3UChWSojO6w_k7bdx9oIhYAkUh5x3UQQCzLPM3MW6VED9uTIad9fQc6O2Zby-ATpRyo7ys_UaqeeCg9nCH-BtFB6tFoJhaKjRr1DHbl1YKe6RqJZnXJVWlWk1xgs3Vp3Hc0k86g4Vf7xv5lPAUou8x286bqg52D7-RiS0vAR-ajW2wiNROM_wkvqghMMEpyILXjUwXjTgv_M1TqdVn7cD8vPea3eDmzyNVEtYu1xx0ALuq1bDIawiSADVvPmNujOCKcEkwB6FNPY4Dj6-PRgpCw4BQWUeoIzFFRN2g7aLsODo7-mA-Wa_Sjy7coblxIPQ3OAX0Hdc_56tT2KB1rnN0o7gpJsAT6X6zNsXTqGQc2ivFXDgV1aNiRHCnCNTJIv48_MxxA1gEuKNbGUO5c3mQiq2eKSzucEI_nr6josE-ws95LMHhuiQ2m-ZW3NP52L93GRlzIFFqoddgtdH_IJp-NOKhB9kdTjx78uuE4mvdMkOOFzLd2AU0SJ9pxa7vFEHXmU0g24JVW6gdb_P50N-qyQqolJYJugVV_Wqlv4NM2-cbvqVesHBQfeMBawLRZ4rZ6d-d6GVTymaJqqjQitv4uWfPGZXYZiN1dhHqxpnCoWT-sB099tTt001mCKS-PdBAO9g74aqyssxIjwIuH2nec0tddbYcGAaXTXmQERn6ZxzEHLOVZNmSb7afAc8ucpUgGx-us2qsBUBkUHF6e6x0KGGjS7d7s7DRryy1KtbkKFA_oZlvLCh1IGwDfu_pj7_O5JmS8GAmNyUY2kSkmJTcBLDGUyZRPUAbzFvrot0MTZ4K_UYajWh4vcHrFEyzDMUsLdfTvoYMF_eNvsiqMmvavlxkZa3-E_T_5Y7V97P9yPEUSd_zvaQEtYW6wmAtBqmqaLMuODUA3BD7jmuwe-K-5o5MmRwpSQKbNf5l9TVapFEv8nJSjrAsGMGHimEBcxLFulPUe7wnIydMxBfsdxOvWWsBdr3OAbTFxB2JbL4VMoL7G8FNuo7PBzxhbvqbhAGFt-0hN-qU9K3E9YQSA8kukqb_w5TWmkgikJ1xo2pSvsnY0ESL9QfePc8uSd4trkbu3PSIJuDFrC0BP2bm1oNXR3wAah4HonnoY-YMiqVUvssfwVM2cBZb0z64u_AXu3rPKfHTlfEptIKTDolRhWqsUBhBvDmDt0aULcrcNoskwtQB025SrupHao8yDEn1Skoki5d8k_M-MyrOnN6XjtyDrGy8HQivCoUhesVvI7o6pD0EFCCd-F5VWRp2A38jhyMH-3TucUCIRkBMU9OaDySYCWhi-mkyyGpijoI0oSLq-CPZtZJrCoa1NFBPg0eFKNYswy-ghvmFQfAUULiYGA5GhcvIagoS_ym4hLGk_EJLvA2rcARfWdfpH9lgCf06wF_kRPuGsEK2RRvsoxd--AFUbsV-PlwIKk-9L__OFwMsfzRiYNuM9PTD1DxXqQBpOaCc4X-zTD8sb9dvI7Qg5ouHbjOkYVoP5jiiC5VxKXcRta2BtVRblLMZhdyZNn9HSuwOgRJjAOtjuatkPp_0LLC0XAKxPS1i9_VLiJT3iznqnuqUlW-icc86-5sV2kLhEQgsRxzoGvBIvyO8GgsNN7icHlK_h9DZzhNbk0XLLUeIDJIvDaIW3_58f4trMWDLkq1NsTpfM7Pm9Qk_iXkiZ52O24RcA9up7pKQ6pKSArQIfOSNYVWQJGFmn8zd6akhYCTIwUcVAmBnorkp-2sgLtHIs8QjS-gha8w8IDXg55V4rHy0bF0rZ0UsCtgjVAw2UrpfiAML9qx222XuSiJqi7AmO6ivOvsteF2Oo_RWFvWfR7gj8WladHN8I_pQhSj_dfvEnMJUQEL9SHTVsw2wYTb-vCbatpPsRziIwFQDFXYP9A8kd_h7mcTvIxpcsezklrIm575LGwghNWHoTxXX-3IEBkRtr-AdiWTnY4HFadRhx4n3jcycKvIPeuZRY3Yk3So07Pp7H5oWfhULg14EAPesugNB38FsVABBVmd_xn3Oum1CYxL4Px9dH_P1h0p6rYtc8ClffWxDELxHYtelxX8-xLj1Wvzv7G-K6LtBTfCy0jnDLCvJEIQNZD66A5Xspv_eIgi57x8B0BLU1c1-XE3cFRTVSMM8s8fse5g-4B--HeElIb_DGFluCshAIiXUyu78OVuodt3rrECv6YSXnIvHHvFP4m7I9SF2zOaw7UPvpasm5aDZFyqu3Pbv9anBYUd7cx5nqwzO9tS8gWcOAsENFmb5kK3iq1ClO2G_l8IVJCF0FYLbxyg98CkiTTauF1Ym5fUaKSGCueV38HUG46jh3qeXEqhqx3iBXh6xqhJlxuqvoE3KS1dsM6oO2AcIrlbZ4781CnriaEoiPbULC5pFY7lbm1etvxjgPwuPfB8P9AwxiZ-jyovSVZ-EBh-IdTJXOJsNYLKR2tv6FMwLUPAbqB4BkYvMS_ve0NBSCPFL8qv1r_SizlLl0ZcyHvGCyK-plUB9lMc_z_xUWKFbk0Pzc-2soFm3a09RrsnV34qbx1Y3-WEM5rUA0MdyVYUuZ9A3FYPTKtPpJk2dDB0rQBz3sWGL7tTC2rHokOSGFsz2u1JiN9pSrbidG5_AYjtcd0BS6p4ihW-9arNAa3Q6K0Z_b6WRJOeG7NQqJ8wVprIjaLI_T34k7pwLtYWXiab48-54FVqfYjAg2WmClhZJ6WdYZsoqoig8rBj6Td2WQjb3dnPPnYST7YRip9C_7HxD0_-MSinHe5-gc9KZniiBx89iUUaxW0v8oNGhUL42kqahnsDSYnxoxeZN74NFwpCwN5Z6khIQykHIsyIppfsosmQXOsz22vVeeFIncc6KBDvdAEBFH4q7knPGrJQFV24fOH7izemK4NsBwRObbO8K8frr1ix_p_-ZpsKqd9s4vP05eUkhbCsMMUEppo57dyp7Qtjv_02vT3vDC4uXrb_tLDPZXrB8udNUXKNxIUp3m02508NjYeFunNs4juNZmhBDCr5mK2E4GDztq2XoU3303JRAcXZS8Z-6Ahn5dbw95Q_-LsVo72XWsVRGebxURkk7d_gpOjOPKXzCxFyUDdQ2w5O5vh9jRYeuVMQQDxrQr7oVGc7QL5uyK7pPL6i5g9FSvIEEDGWuhjybj8pvYRfRaqlW7up5HRBZfzzhyXVfCv5xst-t5mdW');


### structure of table `modx_site_content` ###

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
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;


### data of table `modx_site_content` ###

insert into `modx_site_content` values ('1', 'document', 'text/html', 'Home', '', '', '', '', '1', '0', '0', '0', '0', null, '', '1', '1', '0', '1', '1', '1', '1314107818', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', 'modDocument', 'web', '1', null, '0');
insert into `modx_site_content` values ('2', 'document', 'text/xml', 'sitemap', '', '', 'sitemap', '', '1', '0', '0', '0', '0', '', '[[!GoogleSiteMap]]', '1', '0', '1', '1', '1', '1', '1314108847', '1', '1314108913', '0', '0', '0', '1314108840', '1', '', '0', '0', '0', '0', '1', 'modDocument', 'web', '2', '', '0');


### structure of table `modx_site_htmlsnippets` ###

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_site_htmlsnippets` ###



### structure of table `modx_site_plugin_events` ###

DROP TABLE IF EXISTS `modx_site_plugin_events`;

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(255) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_site_plugin_events` ###



### structure of table `modx_site_plugins` ###

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_site_plugins` ###



### structure of table `modx_site_snippets` ###

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9;


### data of table `modx_site_snippets` ###

insert into `modx_site_snippets` values ('1', 'FormIt', 'A dynamic form processing snippet.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * FormIt\n *\n * A dynamic form processing Snippet for MODx Revolution.\n *\n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\',null,MODX_CORE_PATH).\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n$fi->initialize($modx->context->get(\'key\'));\n$fi->loadRequest();\n\n$fields = $fi->request->prepare();\nreturn $fi->request->handle($fields);', '0', 'a:55:{s:5:\"hooks\";a:6:{s:4:\"name\";s:5:\"hooks\";s:4:\"desc\";s:22:\"prop_formit.hooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:8:\"preHooks\";a:6:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:25:\"prop_formit.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:9:\"submitVar\";a:6:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:26:\"prop_formit.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:8:\"validate\";a:6:{s:4:\"name\";s:8:\"validate\";s:4:\"desc\";s:25:\"prop_formit.validate_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:6:\"errTpl\";a:6:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:23:\"prop_formit.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:37:\"<span class=\"error\">[[+error]]</span>\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:22:\"validationErrorMessage\";a:6:{s:4:\"name\";s:22:\"validationErrorMessage\";s:4:\"desc\";s:39:\"prop_formit.validationerrormessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:96:\"<p class=\"error\">A form validation error occurred. Please check the values you have entered.</p>\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:22:\"validationErrorBulkTpl\";a:6:{s:4:\"name\";s:22:\"validationErrorBulkTpl\";s:4:\"desc\";s:39:\"prop_formit.validationerrorbulktpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:19:\"<li>[[+error]]</li>\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:16:\"customValidators\";a:6:{s:4:\"name\";s:16:\"customValidators\";s:4:\"desc\";s:33:\"prop_formit.customvalidators_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:20:\"clearFieldsOnSuccess\";a:6:{s:4:\"name\";s:20:\"clearFieldsOnSuccess\";s:4:\"desc\";s:37:\"prop_formit.clearfieldsonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:14:\"successMessage\";a:6:{s:4:\"name\";s:14:\"successMessage\";s:4:\"desc\";s:31:\"prop_formit.successmessage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:25:\"successMessagePlaceholder\";a:6:{s:4:\"name\";s:25:\"successMessagePlaceholder\";s:4:\"desc\";s:42:\"prop_formit.successmessageplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:17:\"fi.successMessage\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:5:\"store\";a:6:{s:4:\"name\";s:5:\"store\";s:4:\"desc\";s:22:\"prop_formit.store_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";}s:17:\"placeholderPrefix\";a:6:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:34:\"prop_formit.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:9:\"storeTime\";a:6:{s:4:\"name\";s:9:\"storeTime\";s:4:\"desc\";s:26:\"prop_formit.storetime_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:300;s:7:\"lexicon\";s:17:\"formit:properties\";}s:10:\"allowFiles\";a:6:{s:4:\"name\";s:10:\"allowFiles\";s:4:\"desc\";s:27:\"prop_formit.allowfiles_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:15:\"spamEmailFields\";a:6:{s:4:\"name\";s:15:\"spamEmailFields\";s:4:\"desc\";s:32:\"prop_formit.spamemailfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"spamCheckIp\";a:6:{s:4:\"name\";s:11:\"spamCheckIp\";s:4:\"desc\";s:28:\"prop_formit.spamcheckip_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"recaptchaJs\";a:6:{s:4:\"name\";s:11:\"recaptchaJs\";s:4:\"desc\";s:28:\"prop_formit.recaptchajs_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"{}\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:14:\"recaptchaTheme\";a:6:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:31:\"prop_formit.recaptchatheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:14:\"formit.opt_red\";s:5:\"value\";s:3:\"red\";}i:1;a:2:{s:4:\"text\";s:16:\"formit.opt_white\";s:5:\"value\";s:5:\"white\";}i:2;a:2:{s:4:\"text\";s:16:\"formit.opt_clean\";s:5:\"value\";s:5:\"clean\";}i:3;a:2:{s:4:\"text\";s:21:\"formit.opt_blackglass\";s:5:\"value\";s:10:\"blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:10:\"redirectTo\";a:6:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:27:\"prop_formit.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:14:\"redirectParams\";a:6:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:31:\"prop_formit.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:7:\"emailTo\";a:6:{s:4:\"name\";s:7:\"emailTo\";s:4:\"desc\";s:24:\"prop_formit.emailto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"emailToName\";a:6:{s:4:\"name\";s:11:\"emailToName\";s:4:\"desc\";s:28:\"prop_formit.emailtoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:9:\"emailFrom\";a:6:{s:4:\"name\";s:9:\"emailFrom\";s:4:\"desc\";s:26:\"prop_formit.emailfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:13:\"emailFromName\";a:6:{s:4:\"name\";s:13:\"emailFromName\";s:4:\"desc\";s:30:\"prop_formit.emailfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"emailReplyTo\";a:6:{s:4:\"name\";s:12:\"emailReplyTo\";s:4:\"desc\";s:29:\"prop_formit.emailreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:16:\"emailReplyToName\";a:6:{s:4:\"name\";s:16:\"emailReplyToName\";s:4:\"desc\";s:33:\"prop_formit.emailreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:7:\"emailCC\";a:6:{s:4:\"name\";s:7:\"emailCC\";s:4:\"desc\";s:24:\"prop_formit.emailcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"emailCCName\";a:6:{s:4:\"name\";s:11:\"emailCCName\";s:4:\"desc\";s:28:\"prop_formit.emailccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:8:\"emailBCC\";a:6:{s:4:\"name\";s:8:\"emailBCC\";s:4:\"desc\";s:25:\"prop_formit.emailbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"emailBCCName\";a:6:{s:4:\"name\";s:12:\"emailBCCName\";s:4:\"desc\";s:29:\"prop_formit.emailbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"emailSubject\";a:6:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:29:\"prop_formit.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:23:\"emailUseFieldForSubject\";a:6:{s:4:\"name\";s:23:\"emailUseFieldForSubject\";s:4:\"desc\";s:40:\"prop_formit.emailusefieldforsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:9:\"emailHtml\";a:6:{s:4:\"name\";s:9:\"emailHtml\";s:4:\"desc\";s:26:\"prop_formit.emailhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:20:\"emailConvertNewlines\";a:6:{s:4:\"name\";s:20:\"emailConvertNewlines\";s:4:\"desc\";s:37:\"prop_formit.emailconvertnewlines_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";}s:17:\"emailMultiWrapper\";a:6:{s:4:\"name\";s:17:\"emailMultiWrapper\";s:4:\"desc\";s:34:\"prop_formit.emailmultiwrapper_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"[[+value]]\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:19:\"emailMultiSeparator\";a:6:{s:4:\"name\";s:19:\"emailMultiSeparator\";s:4:\"desc\";s:36:\"prop_formit.emailmultiseparator_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:7:\"fiarTpl\";a:6:{s:4:\"name\";s:7:\"fiarTpl\";s:4:\"desc\";s:22:\"prop_fiar.fiartpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"fiarToField\";a:6:{s:4:\"name\";s:11:\"fiarToField\";s:4:\"desc\";s:26:\"prop_fiar.fiartofield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"fiarSubject\";a:6:{s:4:\"name\";s:11:\"fiarSubject\";s:4:\"desc\";s:26:\"prop_fiar.fiarsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:30:\"[[++site_name]] Auto-Responder\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:8:\"fiarFrom\";a:6:{s:4:\"name\";s:8:\"fiarFrom\";s:4:\"desc\";s:23:\"prop_fiar.fiarfrom_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"fiarFromName\";a:6:{s:4:\"name\";s:12:\"fiarFromName\";s:4:\"desc\";s:27:\"prop_fiar.fiarfromname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"fiarReplyTo\";a:6:{s:4:\"name\";s:11:\"fiarReplyTo\";s:4:\"desc\";s:26:\"prop_fiar.fiarreplyto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:15:\"fiarReplyToName\";a:6:{s:4:\"name\";s:15:\"fiarReplyToName\";s:4:\"desc\";s:30:\"prop_fiar.fiarreplytoname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:6:\"fiarCC\";a:6:{s:4:\"name\";s:6:\"fiarCC\";s:4:\"desc\";s:21:\"prop_fiar.fiarcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:10:\"fiarCCName\";a:6:{s:4:\"name\";s:10:\"fiarCCName\";s:4:\"desc\";s:25:\"prop_fiar.fiarccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:7:\"fiarBCC\";a:6:{s:4:\"name\";s:7:\"fiarBCC\";s:4:\"desc\";s:22:\"prop_fiar.fiarbcc_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"fiarBCCName\";a:6:{s:4:\"name\";s:11:\"fiarBCCName\";s:4:\"desc\";s:26:\"prop_fiar.fiarbccname_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:8:\"fiarHtml\";a:6:{s:4:\"name\";s:8:\"fiarHtml\";s:4:\"desc\";s:23:\"prop_fiar.fiarhtml_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"mathMinRange\";a:6:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:27:\"prop_math.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:10;s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"mathMaxRange\";a:6:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:27:\"prop_math.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:100;s:7:\"lexicon\";s:17:\"formit:properties\";}s:9:\"mathField\";a:6:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:24:\"prop_math.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"mathOp1Field\";a:6:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:27:\"prop_math.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"mathOp2Field\";a:6:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:27:\"prop_math.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:17:\"mathOperatorField\";a:6:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:32:\"prop_math.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:17:\"formit:properties\";}}', '');
insert into `modx_site_snippets` values ('2', 'FormItAutoResponder', 'Custom hook for FormIt to handle Auto-Response emails.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * A custom FormIt hook for auto-responders.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @var FormIt $formit\n * \n * @package formit\n */\n/* setup default properties */\n$tpl = $modx->getOption(\'fiarTpl\',$scriptProperties,\'fiarTpl\');\n$mailFrom = $modx->getOption(\'fiarFrom\',$scriptProperties,$modx->getOption(\'emailsender\'));\n$mailFromName = $modx->getOption(\'fiarFromName\',$scriptProperties,$modx->getOption(\'site_name\'));\n$mailSender = $modx->getOption(\'fiarSender\',$scriptProperties,$modx->getOption(\'emailsender\'));\n$mailSubject = $modx->getOption(\'fiarSubject\',$scriptProperties,\'[[++site_name]] Auto-Responder\');\n$mailSubject = str_replace(array(\'[[++site_name]]\',\'[[++emailsender]]\'),array($modx->getOption(\'site_name\'),$modx->getOption(\'emailsender\')),$mailSubject);\n$mailReplyTo = $modx->getOption(\'fiarReplyTo\',$scriptProperties,$mailFrom);\n$isHtml = $modx->getOption(\'fiarHtml\',$scriptProperties,true);\n$toField = $modx->getOption(\'fiarToField\',$scriptProperties,\'email\');\nif (empty($fields[$toField])) {\n    $modx->log(modX::LOG_LEVEL_ERROR,\'[FormIt] Auto-responder could not find field `\'.$toField.\'` in form submission.\');\n    return false;\n}\n\n/* setup placeholders */\n$placeholders = $fields;\n$mailTo= $fields[$toField];\n\n$message = $formit->getChunk($tpl,$placeholders);\n\n$modx->getService(\'mail\', \'mail.modPHPMailer\');\n$modx->mail->reset();\n$modx->mail->set(modMail::MAIL_BODY,$message);\n$modx->mail->set(modMail::MAIL_FROM,$hook->_process($mailFrom,$placeholders));\n$modx->mail->set(modMail::MAIL_FROM_NAME,$hook->_process($mailFromName,$placeholders));\n$modx->mail->set(modMail::MAIL_SENDER,$hook->_process($mailSender,$placeholders));\n$modx->mail->set(modMail::MAIL_SUBJECT,$hook->_process($mailSubject,$placeholders));\n$modx->mail->address(\'to\',$mailTo);\n$modx->mail->setHTML($isHtml);\n\n/* reply to */\n$emailReplyTo = $modx->getOption(\'fiarReplyTo\',$scriptProperties,$mailFrom);\n$emailReplyTo = $hook->_process($emailReplyTo,$fields);\n$emailReplyToName = $modx->getOption(\'fiarReplyToName\',$scriptProperties,$mailFromName);\n$emailReplyToName = $hook->_process($emailReplyToName,$fields);\n$modx->mail->address(\'reply-to\',$emailReplyTo,$emailReplyToName);\n\n/* cc */\n$emailCC = $modx->getOption(\'fiarCC\',$scriptProperties,\'\');\nif (!empty($emailCC)) {\n    $emailCCName = $modx->getOption(\'fiarCCName\',$scriptProperties,\'\');\n    $emailCC = explode(\',\',$emailCC);\n    $emailCCName = explode(\',\',$emailCCName);\n    $numAddresses = count($emailCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailCCName[$i]) ? $emailCCName[$i] : \'\';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailCC[$i] = $hook->_process($emailCC[$i],$fields);\n        $modx->mail->address(\'cc\',$emailCC[$i],$etn);\n    }\n}\n\n/* bcc */\n$emailBCC = $modx->getOption(\'fiarBCC\',$scriptProperties,\'\');\nif (!empty($emailBCC)) {\n    $emailBCCName = $modx->getOption(\'fiarBCCName\',$scriptProperties,\'\');\n    $emailBCC = explode(\',\',$emailBCC);\n    $emailBCCName = explode(\',\',$emailBCCName);\n    $numAddresses = count($emailBCC);\n    for ($i=0;$i<$numAddresses;$i++) {\n        $etn = !empty($emailBCCName[$i]) ? $emailBCCName[$i] : \'\';\n        if (!empty($etn)) $etn = $hook->_process($etn,$fields);\n        $emailBCC[$i] = $hook->_process($emailBCC[$i],$fields);\n        $modx->mail->address(\'bcc\',$emailBCC[$i],$etn);\n    }\n}\n\nif (!$modx->mail->send()) {\n    $modx->log(modX::LOG_LEVEL_ERROR,\'[FormIt] An error occurred while trying to send the auto-responder email: \'.$modx->mail->mailer->ErrorInfo);\n    return false;\n}\n$modx->mail->reset();\nreturn true;', '0', null, '');
insert into `modx_site_snippets` values ('3', 'FormItRetriever', 'Fetches a form submission for a user for displaying on a thank you page.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Retrieves a prior form submission that was stored with the &store property\n * in a FormIt call.\n *\n * @var modX $modx\n * @var array $scriptProperties\n * \n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/* setup properties */\n$placeholderPrefix = $modx->getOption(\'placeholderPrefix\',$scriptProperties,\'fi.\');\n$eraseOnLoad = $modx->getOption(\'eraseOnLoad\',$scriptProperties,false);\n$redirectToOnNotFound = $modx->getOption(\'redirectToOnNotFound\',$scriptProperties,false);\n\n/* fetch data from cache and set to placeholders */\n$fi->loadRequest();\n$fi->request->loadDictionary();\n$data = $fi->request->dictionary->retrieve();\nif (!empty($data)) {\n    /* set data to placeholders */\n    $modx->toPlaceholders($data,$placeholderPrefix,\'\');\n    \n    /* if set, erase the data on load, otherwise depend on cache expiry time */\n    if ($eraseOnLoad) {\n        $fi->request->dictionary->erase();\n    }\n/* if the data\'s not found, and we want to redirect somewhere if so, do here */\n} else if (!empty($redirectToOnNotFound)) {\n    $url = $modx->makeUrl($redirectToOnNotFound);\n    $modx->sendRedirect($url);\n}\nreturn \'\';', '0', 'a:3:{s:17:\"placeholderPrefix\";a:6:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:31:\"prop_fir.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"fi.\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:20:\"redirectToOnNotFound\";a:6:{s:4:\"name\";s:20:\"redirectToOnNotFound\";s:4:\"desc\";s:34:\"prop_fir.redirecttoonnotfound_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"eraseOnLoad\";a:6:{s:4:\"name\";s:11:\"eraseOnLoad\";s:4:\"desc\";s:25:\"prop_fir.eraseonload_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:17:\"formit:properties\";}}', '');
insert into `modx_site_snippets` values ('4', 'FormItIsChecked', 'A custom output filter used with checkboxes/radios for checking checked status.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' checked=\"checked\"\';\n}\nif (strpos($input,\',\') !== false) {\n    $input = explode(\',\',$input);\n    if (in_array($options,$input)) {\n        $output = \' checked=\"checked\"\';\n    }\n}\nreturn $output;', '0', null, '');
insert into `modx_site_snippets` values ('5', 'FormItIsSelected', 'A custom output filter used with dropdowns for checking selected status.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Custom output filter that returns checked=\"checked\" if the value is set\n *\n * @var string $input\n * @var string $options\n * @package formit\n */\n$output = \' \';\nif ($input == $options) {\n    $output = \' selected=\"selected\"\';\n}\nif (strpos($input,\',\') !== false) {\n    $input = explode(\',\',$input);\n    if (in_array($options,$input)) {\n        $output = \' selected=\"selected\"\';\n    }\n}\nreturn $output;', '0', null, '');
insert into `modx_site_snippets` values ('6', 'FormItCountryOptions', 'A utility snippet for generating a dropdown list of countries.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a country list for usage in forms\n *\n * @var modX $modx\n * @var array $scriptProperties\n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiCountryOptions\',\'countryOptions\',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->loadPrioritized();\n$co->iterate();\nreturn $co->output();', '0', 'a:9:{s:8:\"selected\";a:6:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fico.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:3:\"tpl\";a:6:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fico.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"option\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:10:\"useIsoCode\";a:6:{s:4:\"name\";s:10:\"useIsoCode\";s:4:\"desc\";s:25:\"prop_fico.useisocode_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"prioritized\";a:6:{s:4:\"name\";s:11:\"prioritized\";s:4:\"desc\";s:26:\"prop_fico.prioritized_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:11:\"optGroupTpl\";a:6:{s:4:\"name\";s:11:\"optGroupTpl\";s:4:\"desc\";s:26:\"prop_fico.optgrouptpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"optgroup\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:20:\"prioritizedGroupText\";a:6:{s:4:\"name\";s:20:\"prioritizedGroupText\";s:4:\"desc\";s:35:\"prop_fico.prioritizedgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:12:\"allGroupText\";a:6:{s:4:\"name\";s:12:\"allGroupText\";s:4:\"desc\";s:27:\"prop_fico.allgrouptext_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:17:\"selectedAttribute\";a:6:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fico.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:13:\"toPlaceholder\";a:6:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fico.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}}', '');
insert into `modx_site_snippets` values ('7', 'FormItStateOptions', 'A utility snippet for generating a dropdown list of U.S. states.', '0', '1', '0', '/**\n * FormIt\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * FormIt is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * FormIt is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * FormIt; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package formit\n */\n/**\n * Automatically generates and outputs a U.S. state list for usage in forms\n * \n * @package formit\n */\nrequire_once $modx->getOption(\'formit.core_path\',null,$modx->getOption(\'core_path\').\'components/formit/\').\'model/formit/formit.class.php\';\n$fi = new FormIt($modx,$scriptProperties);\n\n/** @var fiCountryOptions $co */\n$co = $fi->loadModule(\'fiStateOptions\',\'stateOptions\',$scriptProperties);\n$co->initialize();\n$co->getData();\n$co->iterate();\nreturn $co->output();', '0', 'a:5:{s:8:\"selected\";a:6:{s:4:\"name\";s:8:\"selected\";s:4:\"desc\";s:23:\"prop_fiso.selected_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:3:\"tpl\";a:6:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:18:\"prop_fiso.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"option\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:7:\"useAbbr\";a:6:{s:4:\"name\";s:7:\"useAbbr\";s:4:\"desc\";s:22:\"prop_fiso.useabbr_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:17:\"formit:properties\";}s:17:\"selectedAttribute\";a:6:{s:4:\"name\";s:17:\"selectedAttribute\";s:4:\"desc\";s:32:\"prop_fiso.selectedattribute_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\" selected=\"selected\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}s:13:\"toPlaceholder\";a:6:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:28:\"prop_fiso.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:17:\"formit:properties\";}}', '');
insert into `modx_site_snippets` values ('8', 'GoogleSiteMap', 'Builds the Google SiteMap XML.', '0', '2', '0', '/**\n * GoogleSiteMap\n *\n * Copyright 2009-2010 by Shaun McCormick <shaun@modx.com>\n *\n * - Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet\n *\n * GoogleSiteMap is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * GoogleSiteMap is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * GoogleSiteMap; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package googlesitemap\n */\n/**\n * GoogleSiteMap for MODx Revolution\n *\n * @package googlesitemap\n */\nrequire_once $modx->getOption(\'googlesitemap.core_path\',null,$modx->getOption(\'core_path\').\'components/googlesitemap/\').\'model/googlesitemap/googlesitemap.class.php\';\n$GoogleSiteMap = new GoogleSiteMap($modx,$scriptProperties);\n\n/* setup default properties */\n$googleSchema = $modx->getOption(\'googleSchema\',$scriptProperties,\'http://www.sitemaps.org/schemas/sitemap/0.9\');\n$containerTpl = $modx->getOption(\'containerTpl\',$scriptProperties,\'gContainer\');\n$startId = (int)$modx->getOption(\'startId\',$scriptProperties,0);\n\n/* get container tpl and content */\nreturn $GoogleSiteMap->getChunk($containerTpl,array(\n    \'schema\' => $googleSchema,\n    \'items\' => $GoogleSiteMap->run($startId),\n));', '0', 'a:15:{s:16:\"allowedtemplates\";a:6:{s:4:\"name\";s:16:\"allowedtemplates\";s:4:\"desc\";s:30:\"prop_gsm.allowedtemplates_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;}s:7:\"context\";a:6:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"prop_gsm.context_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;}s:8:\"maxDepth\";a:6:{s:4:\"name\";s:8:\"maxDepth\";s:4:\"desc\";s:22:\"prop_gsm.maxdepth_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";i:0;s:7:\"lexicon\";N;}s:11:\"hideDeleted\";a:6:{s:4:\"name\";s:11:\"hideDeleted\";s:4:\"desc\";s:25:\"prop_gsm.hidedeleted_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;}s:12:\"googleSchema\";a:6:{s:4:\"name\";s:12:\"googleSchema\";s:4:\"desc\";s:26:\"prop_gsm.googleschema_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";N;}s:9:\"published\";a:6:{s:4:\"name\";s:9:\"published\";s:4:\"desc\";s:23:\"prop_gsm.published_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;}s:10:\"searchable\";a:6:{s:4:\"name\";s:10:\"searchable\";s:4:\"desc\";s:24:\"prop_gsm.searchable_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";N;}s:16:\"excludeResources\";a:6:{s:4:\"name\";s:16:\"excludeResources\";s:4:\"desc\";s:30:\"prop_gsm.excluderesources_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";N;}s:6:\"sortBy\";a:6:{s:4:\"name\";s:6:\"sortBy\";s:4:\"desc\";s:20:\"prop_gsm.sortby_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";N;}s:11:\"sortByAlias\";a:6:{s:4:\"name\";s:11:\"sortByAlias\";s:4:\"desc\";s:25:\"prop_gsm.sortbyalias_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:11:\"modResource\";s:7:\"lexicon\";N;}s:7:\"sortDir\";a:6:{s:4:\"name\";s:7:\"sortDir\";s:4:\"desc\";s:21:\"prop_gsm.sortdir_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";N;}s:14:\"templateFilter\";a:6:{s:4:\"name\";s:14:\"templateFilter\";s:4:\"desc\";s:28:\"prop_gsm.templatefilter_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"id\";s:7:\"lexicon\";N;}s:7:\"itemTpl\";a:6:{s:4:\"name\";s:7:\"itemTpl\";s:4:\"desc\";s:21:\"prop_gsm.itemtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"gItem\";s:7:\"lexicon\";N;}s:12:\"containerTpl\";a:6:{s:4:\"name\";s:12:\"containerTpl\";s:4:\"desc\";s:26:\"prop_gsm.containertpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"gContainer\";s:7:\"lexicon\";N;}s:7:\"startId\";a:6:{s:4:\"name\";s:7:\"startId\";s:4:\"desc\";s:21:\"prop_gsm.startid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";N;}}', '');


### structure of table `modx_site_templates` ###

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_site_templates` ###

insert into `modx_site_templates` values ('1', 'BaseTemplate', 'Template', '0', '0', '', '0', '<html>\n<head>\n<title>[[++site_name]] - [[*pagetitle]]</title>\n<base href=\"[[++site_url]]\" />\n</head>\n<body>\n[[*content]]\n</body>\n</html>', '0', null);


### structure of table `modx_site_tmplvar_access` ###

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_site_tmplvar_access` ###



### structure of table `modx_site_tmplvar_contentvalues` ###

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_site_tmplvar_contentvalues` ###



### structure of table `modx_site_tmplvar_templates` ###

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_site_tmplvar_templates` ###



### structure of table `modx_site_tmplvars` ###

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
  `default_text` text,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_site_tmplvars` ###



### structure of table `modx_system_eventnames` ###

DROP TABLE IF EXISTS `modx_system_eventnames`;

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


### data of table `modx_system_eventnames` ###

insert into `modx_system_eventnames` values ('OnPluginEventBeforeSave', '1', 'Plugin Events');
insert into `modx_system_eventnames` values ('OnPluginEventSave', '1', 'Plugin Events');
insert into `modx_system_eventnames` values ('OnPluginEventBeforeRemove', '1', 'Plugin Events');
insert into `modx_system_eventnames` values ('OnPluginEventRemove', '1', 'Plugin Events');
insert into `modx_system_eventnames` values ('OnResourceGroupSave', '1', 'Security');
insert into `modx_system_eventnames` values ('OnResourceGroupBeforeSave', '1', 'Security');
insert into `modx_system_eventnames` values ('OnResourceGroupRemove', '1', 'Security');
insert into `modx_system_eventnames` values ('OnResourceGroupBeforeRemove', '1', 'Security');
insert into `modx_system_eventnames` values ('OnSnippetBeforeSave', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnippetSave', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnippetBeforeRemove', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnippetRemove', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnipFormPrerender', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnipFormRender', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnBeforeSnipFormSave', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnipFormSave', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnBeforeSnipFormDelete', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnSnipFormDelete', '1', 'Snippets');
insert into `modx_system_eventnames` values ('OnTemplateBeforeSave', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTemplateSave', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTemplateBeforeRemove', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTemplateRemove', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTempFormPrerender', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTempFormRender', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnBeforeTempFormSave', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTempFormSave', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnBeforeTempFormDelete', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTempFormDelete', '1', 'Templates');
insert into `modx_system_eventnames` values ('OnTemplateVarBeforeSave', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTemplateVarSave', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTemplateVarBeforeRemove', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTemplateVarRemove', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVFormPrerender', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVFormRender', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnBeforeTVFormSave', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVFormSave', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnBeforeTVFormDelete', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVFormDelete', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVInputRenderList', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVInputPropertiesList', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVOutputRenderList', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnTVOutputRenderPropertiesList', '1', 'Template Variables');
insert into `modx_system_eventnames` values ('OnUserGroupBeforeSave', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserGroupSave', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserGroupBeforeRemove', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserGroupRemove', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnBeforeUserGroupFormSave', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserGroupFormSave', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnBeforeUserGroupFormRemove', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnDocFormPrerender', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnDocFormRender', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnBeforeDocFormSave', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnDocFormSave', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnBeforeDocFormDelete', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnDocFormDelete', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnDocPublished', '5', 'Resources');
insert into `modx_system_eventnames` values ('OnDocUnPublished', '5', 'Resources');
insert into `modx_system_eventnames` values ('OnBeforeEmptyTrash', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnEmptyTrash', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceTVFormPrerender', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceTVFormRender', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceDelete', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceUndelete', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceBeforeSort', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceSort', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceDuplicate', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnResourceToolbarLoad', '1', 'Resources');
insert into `modx_system_eventnames` values ('OnRichTextEditorRegister', '1', 'RichText Editor');
insert into `modx_system_eventnames` values ('OnRichTextEditorInit', '1', 'RichText Editor');
insert into `modx_system_eventnames` values ('OnRichTextBrowserInit', '1', 'RichText Editor');
insert into `modx_system_eventnames` values ('OnWebLogin', '3', 'Security');
insert into `modx_system_eventnames` values ('OnBeforeWebLogout', '3', 'Security');
insert into `modx_system_eventnames` values ('OnWebLogout', '3', 'Security');
insert into `modx_system_eventnames` values ('OnManagerLogin', '2', 'Security');
insert into `modx_system_eventnames` values ('OnBeforeManagerLogout', '2', 'Security');
insert into `modx_system_eventnames` values ('OnManagerLogout', '2', 'Security');
insert into `modx_system_eventnames` values ('OnBeforeWebLogin', '3', 'Security');
insert into `modx_system_eventnames` values ('OnWebAuthentication', '3', 'Security');
insert into `modx_system_eventnames` values ('OnBeforeManagerLogin', '2', 'Security');
insert into `modx_system_eventnames` values ('OnManagerAuthentication', '2', 'Security');
insert into `modx_system_eventnames` values ('OnManagerLoginFormRender', '2', 'Security');
insert into `modx_system_eventnames` values ('OnManagerLoginFormPrerender', '2', 'Security');
insert into `modx_system_eventnames` values ('OnPageUnauthorized', '1', 'Security');
insert into `modx_system_eventnames` values ('OnUserFormPrerender', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserFormRender', '1', 'Users');
insert into `modx_system_eventnames` values ('OnBeforeUserFormSave', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserFormSave', '1', 'Users');
insert into `modx_system_eventnames` values ('OnBeforeUserFormDelete', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserFormDelete', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserNotFound', '1', 'Users');
insert into `modx_system_eventnames` values ('OnBeforeUserActivate', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserActivate', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserChangePassword', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserBeforeRemove', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserBeforeSave', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserSave', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserRemove', '1', 'Users');
insert into `modx_system_eventnames` values ('OnUserBeforeAddToGroup', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserAddToGroup', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserBeforeRemoveFromGroup', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnUserRemoveFromGroup', '1', 'User Groups');
insert into `modx_system_eventnames` values ('OnWebPagePrerender', '5', 'System');
insert into `modx_system_eventnames` values ('OnBeforeCacheUpdate', '4', 'System');
insert into `modx_system_eventnames` values ('OnCacheUpdate', '4', 'System');
insert into `modx_system_eventnames` values ('OnLoadWebPageCache', '4', 'System');
insert into `modx_system_eventnames` values ('OnBeforeSaveWebPageCache', '4', 'System');
insert into `modx_system_eventnames` values ('OnSiteRefresh', '1', 'System');
insert into `modx_system_eventnames` values ('OnFileManagerUpload', '1', 'System');
insert into `modx_system_eventnames` values ('OnFileEditFormPrerender', '1', 'System');
insert into `modx_system_eventnames` values ('OnManagerPageInit', '2', 'System');
insert into `modx_system_eventnames` values ('OnWebPageInit', '5', 'System');
insert into `modx_system_eventnames` values ('OnLoadWebDocument', '5', 'System');
insert into `modx_system_eventnames` values ('OnParseDocument', '5', 'System');
insert into `modx_system_eventnames` values ('OnWebPageComplete', '5', 'System');
insert into `modx_system_eventnames` values ('OnBeforeManagerPageInit', '2', 'System');
insert into `modx_system_eventnames` values ('OnPageNotFound', '1', 'System');
insert into `modx_system_eventnames` values ('OnHandleRequest', '5', 'System');
insert into `modx_system_eventnames` values ('OnSiteSettingsRender', '1', 'Settings');
insert into `modx_system_eventnames` values ('OnInitCulture', '3', 'Internationalization');
insert into `modx_system_eventnames` values ('OnCategorySave', '1', 'Categories');
insert into `modx_system_eventnames` values ('OnCategoryBeforeSave', '1', 'Categories');
insert into `modx_system_eventnames` values ('OnCategoryRemove', '1', 'Categories');
insert into `modx_system_eventnames` values ('OnCategoryBeforeRemove', '1', 'Categories');
insert into `modx_system_eventnames` values ('OnChunkSave', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkBeforeSave', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkRemove', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkBeforeRemove', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkFormPrerender', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkFormRender', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnBeforeChunkFormSave', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkFormSave', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnBeforeChunkFormDelete', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnChunkFormDelete', '1', 'Chunks');
insert into `modx_system_eventnames` values ('OnContextSave', '1', 'Contexts');
insert into `modx_system_eventnames` values ('OnContextBeforeSave', '1', 'Contexts');
insert into `modx_system_eventnames` values ('OnContextRemove', '1', 'Contexts');
insert into `modx_system_eventnames` values ('OnContextBeforeRemove', '1', 'Contexts');
insert into `modx_system_eventnames` values ('OnContextFormPrerender', '2', 'Contexts');
insert into `modx_system_eventnames` values ('OnContextFormRender', '2', 'Contexts');
insert into `modx_system_eventnames` values ('OnPluginSave', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginBeforeSave', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginRemove', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginBeforeRemove', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginFormPrerender', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginFormRender', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnBeforePluginFormSave', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginFormSave', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnBeforePluginFormDelete', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPluginFormDelete', '1', 'Plugins');
insert into `modx_system_eventnames` values ('OnPropertySetSave', '1', 'Property Sets');
insert into `modx_system_eventnames` values ('OnPropertySetBeforeSave', '1', 'Property Sets');
insert into `modx_system_eventnames` values ('OnPropertySetRemove', '1', 'Property Sets');
insert into `modx_system_eventnames` values ('OnPropertySetBeforeRemove', '1', 'Property Sets');


### structure of table `modx_system_settings` ###

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


### data of table `modx_system_settings` ###

insert into `modx_system_settings` values ('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('archive_with', '', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('auto_menuindex', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('automatic_alias', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('base_help_url', 'http://rtfm.modx.com/display/revolution20/', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('blocked_minutes', '60', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_action_map', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_db', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_db_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_db_session', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_default', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_disabled', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_format', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_resource', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_resource_expires', '0', 'textfield', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_scripts', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('compress_css', '1', 'combo-boolean', 'core', 'manager', '2011-08-23 06:56:58');
insert into `modx_system_settings` values ('compress_js', '1', 'combo-boolean', 'core', 'manager', '2011-08-23 06:56:58');
insert into `modx_system_settings` values ('concat_js', '1', 'combo-boolean', 'core', 'manager', '2011-08-23 06:56:58');
insert into `modx_system_settings` values ('container_suffix', '/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('context_tree_sort', '', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('context_tree_sortby', 'key', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('cultureKey', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('custom_resource_classes', '', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('default_per_page', '20', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('default_template', '1', 'modx-combo-template', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('editor_css_path', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('editor_css_selectors', '', 'textfield', 'core', 'editor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('emailsender', 'luki@booncon.com', 'textfield', 'core', 'authentication', '2011-08-23 06:56:58');
insert into `modx_system_settings` values ('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('error_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('failed_login_attempts', '5', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('feed_modx_security', 'http://feeds.feedburner.com/modxsecurity', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('filemanager_path', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('filemanager_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('forward_merge_excludes', 'type,published,class_key,context_key', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('friendly_urls', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('hidemenu_default', '0', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('link_tag_scheme', '-1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_encoding', '8bit', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_helo', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_pass', '', 'text-password', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_port', '587', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_prefix', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('mail_smtp_user', '', 'textfield', 'core', 'mail', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_favicon_url', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_direction', 'ltr', 'textfield', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_lang_attribute', 'en', 'textfield', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_language', 'en', 'modx-combo-language', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_theme', 'default', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('manager_use_tabs', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('proxy_host', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('proxy_password', '', 'text-password', 'core', 'proxy', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('proxy_port', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('proxy_username', '', 'textfield', 'core', 'proxy', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('password_generated_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('password_min_length', '8', 'textfield', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('publish_default', '', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('rb_base_dir', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('rb_base_url', '', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('request_controller', 'index.php', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('request_param_alias', 'q', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('request_param_id', 'id', 'textfield', 'core', 'gateway', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('richtext_default', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('search_default', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('server_offset_time', '0', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('server_protocol', 'http', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_cookie_domain', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_cookie_path', '/', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_cookie_secure', '', 'combo-boolean', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('session_name', '', 'textfield', 'core', 'session', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('set_header', '1', 'combo-boolean', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('site_name', 'booncon', 'textfield', 'core', 'site', '2011-08-23 07:00:15');
insert into `modx_system_settings` values ('site_start', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('site_status', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('site_unavailable_page', '0', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('strip_image_paths', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('tree_root_id', '0', 'numberfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('unauthorized_page', '1', 'textfield', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,htaccess,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,xls,txt,ppt,pptx,docx,xlsx,jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('upload_flash', 'swf,fla', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('upload_maxsize', '1048576', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('use_alias_path', '0', 'combo-boolean', 'core', 'furls', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('use_browser', '1', 'combo-boolean', 'core', 'file', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('use_editor', '1', 'combo-boolean', 'core', 'editor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2011-08-23 06:56:58');
insert into `modx_system_settings` values ('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2011-08-23 06:57:25');
insert into `modx_system_settings` values ('welcome_screen_url', 'http://misc.modx.com/revolution/welcome.21.html', 'textfield', 'core', 'manager', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('which_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('xhtml_urls', '1', 'combo-boolean', 'core', 'site', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('settings_version', '2.1.3-pl', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('settings_distro', 'traditional', 'textfield', 'core', 'system', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('formit.recaptcha_public_key', '', 'textfield', 'formit', 'reCaptcha', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('formit.recaptcha_private_key', '', 'textfield', 'formit', 'reCaptcha', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('formit.recaptcha_use_ssl', '', 'combo-boolean', 'formit', 'reCaptcha', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('maillog-status', '0', 'textfield', 'janitor', 'Janitor', '0000-00-00 00:00:00');
insert into `modx_system_settings` values ('maillog-account', '', 'textfield', 'janitor', 'Janitor', '0000-00-00 00:00:00');


### structure of table `modx_transport_packages` ###

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


### data of table `modx_transport_packages` ###

insert into `modx_transport_packages` values ('formit-2.0.1-pl', '2011-08-23 07:05:06', '2011-08-23 07:06:51', '2011-08-23 07:06:51', '0', '1', '1', '0', 'formit-2.0.1-pl.transport.zip', null, 'a:9:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:213:\"--------------------\nSnippet: FormIt\n--------------------\nAuthor: Shaun McCormick <shaun@modx.com>\n\nA form processing Snippet for MODx Revolution.\n\nOfficial Documentation:\nhttp://rtfm.modx.com/display/ADDON/FormIt\";s:9:\"changelog\";s:8471:\"Changelog for FormIt.\n\nFormIt 2.0.1\n====================================\n- [#5525] Add &allowFiles property, that when set to 0, prevents file submissions on form\n- [#5484] Fix issue with double validation error spans\n- Fix issue where config was not passed to hooks\n- Update German translation\n\nFormIt 2.0.0\n====================================\n- [#3514] Add ability to customize validator error messages per FormIt form and per field\n- [#4705] Add regexp validator\n- [#5454] Fix issue with customValidators property in 2.0.0-rc2\n- Major reworking of main FormIt script to be OOP\n- Add over 150 unit tests to prevent regression\n- [#5388], [#5240] Fix issue with FormItCountryOptions and &useIsoCode\n- Fix issue with FormItStateOptions and &useAbbr\n- [#5267] Fix issue with FormItRetriever and array fields\n\nFormIt 1.7.0\n====================================\n- Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup\n- Add missing property translations for FormItStateOptions snippet\n- Fix small issue with stored values after validation of fields\n- Add FormItStateOptions snippet for easy U.S. state dropdowns\n- Add FormItCountryOptions snippet for easy country dropdowns\n- [#5101] Fix issue with emailMultiSeparator and emailMultiWrapper default values\n- Fix issue with bracketed field names being added as extra fields post-validation with . prefix\n\nFormIt 1.6.0\n====================================\n- [#4708] Add support for bracketed fields, such as contact[name]\n- [#5038] Fix uninitialized variable warnings in reCaptcha service\n- [#4993] Add Italian translation and fix recaptcha links\n- Fix issue where fields could be removed via DOM from form and be bypassed\n- Add &emailMultiSeparator and &emailMultiWrapper for handling display of checkboxes/multi-selects in email hook\n\nFormIt 1.5.6\n====================================\n- [#4564] Fix redirectTo with non-web contexts\n\nFormIt 1.5.5\n====================================\n- [#4168] Add emailConvertNewlines property for handling newlines in HTML emails\n- [#4057] Prevent math hook from generating similar numbers\n- [#4302] Cleanups to FormItAutoResponder snippet\n- [#3991] Fix issue with checkbox values in emails\n\nFormIt 1.5.4\n====================================\n- Fix issue with math hook where error placeholders were incorrect\n- Fix issue where emailHtml property was not respected in email hook\n- Fix issue where hooks were not passed customProperties array\n- [#51] Allow blank fields to be passed with :email validator\n- [#55] Allow all fields to be accessed in custom validators\n\nFormIt 1.5.3\n====================================\n- [#40] Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one\n- [#52] Add a general validation error message property, validationErrorMessage, that shows when validation fails\n- [#53] Fix bug that prevented recaptcha options from working\n- Add a generic validation error placeholder in FormIt to allow for general messages\n- [#50] Trim each hook specification in hooks calls\n- [#49] Ensure reCaptcha service instance is unique for each FormIt instance\n- [#47] Ensure email validator checks for empty string\n- [#42] Can now include field names in error strings via `field` placeholder\n- [#39] Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked\n- [#37] Fix allowTags validator to work, and work with parameters encapsulated by ^\n\nFormIt 1.5.2\n====================================\n- Fixed security vulnerability\n- Added math hook, allowing anti-spam math field measure\n- Added more debugging info to email hook\n\nFormIt 1.5.1\n====================================\n- Fixed issue where &store was not respecting values set in post-hooks\n- Redirect hook now redirects *after* all other hooks execute\n\nFormIt 1.5.0\n====================================\n- Fixed bug with redirectParams not parsing placeholders in the params\n- Added redirectParams property, which allows a JSON object of params to be passed when using redirect hook\n- Added spamCheckIp property, defaults to false, to check IP as well in spam hook\n- Fixed incorrect default param for fiarSender\n- Fixed error reporting for FormItAutoResponder\n- Added sanity checks to form attachments when dealing with missing names\n- Fixed invalid offset error in checkbox validation\n- Added recaptchaJS to allow for custom JS overriding of reCaptcha options var\n\nFormIt 1.4.1\n====================================\n- Added sanity check for emailHtml property on email hook\n- Added sanity check for replyto/cc/bcc emails on email hook\n- Added ability to change language via &language parameter\n\nFormIt 1.4.0\n====================================\n- Fixed bug with recaptcha and other hooks error display messages\n- Introduced &validate parameter for more secure validation parameters to prevent POST injection\n- Added FormItIsChecked and FormItIsSelected custom output filters for easier checkbox/radio/select handling of selected values\n- Added &placeholderPrefix for FormIt snippet, defaults to `fi.`\n\nFormIt 1.3.0\n====================================\n- Fixed issue with isNumber validator\n- Added FormItRetriever snippet to get data from a FormIt submission for thank you pages\n- Added extra API methods for custom hooks for easier data grabbing\n- Added FormItAutoResponder snippet to use as a custom hook for auto-responses\n- Added &successMessage and &successMessagePlaceholder properties for easier success message handling\n- Fixed ordering for &emailFrom property\n- Added width/height for reCaptcha, however, reCaptcha APIs prevent resizing via calls\n\nFormIt 1.2.1\n====================================\n- Added recaptchaTheme property, which allows theming of reCaptcha hook\n\nFormIt 1.2.0\n====================================\n- Added preHooks property to allow for custom snippets to pre-fill fields\n- Added clearFieldsOnSuccess property to clear fields after a successful form submission without a redirect\n- Allow placeholders of fields in all email properties\n- Added customValidators property to FormIt snippet to restrict custom validators to only specified validators to prevent brute force snippet loading\n- Added fiValidator::addError for easier error loading for custom validators\n- Added German translation\n\nFormIt 1.1.7\n====================================\n- Added bcc and cc properties for email hook\n\nFormIt 1.1.6\n====================================\n- i18n of Snippet properties\n- Added emailReplyToName and emailReplyTo properties for email hook\n- Removed SMTP settings as those are now in Revo\n- Fixed bug in html emails where linebreaks were being ignored\n- Added islowercase and isuppercase validators\n- Added multibyte support to validators\n\nFormIt 1.1.5\n====================================\n- Added Russian translation\n- Updated copyright information\n\nFormIt 1.1.4\n====================================\n- Fixed bug with isDate check\n- Migrated FormIt to Git\n- Fixed bug that caused validators to not fire\n- Fixed bug where custom validators were wonky, added \'errors\' references to custom hooks/validators\n- [#ADDON-147] Added support for validation and emailing of file fields\n- Added stripTags to all fields by default (unless \'allowTags\' hook is passed\') to prevent XSS\n- Added in missing settings\n- Added reCaptcha support via the recaptcha hook\n- Adjusted copyright information to reflect current year\n\nFormIt 1.0\n====================================\n- Fixed bug with emailFrom property getting overwritten\n- [#ADDON-122] Fixed incorrect message in spam lexicon item\n- Added \'spam\' hook that utilizes StopForumSpam spam filter. Will filter the fields in the property &spamEmailFields \n- Ensure hooks errors are set as placeholders\n- Aded fi.success placeholder to be set on a successful form submission if no redirect hook is specified \n- Added default to emailTpl property so that it is now no longer required. Will send out email with just field names and values.\n- Added Dutch translation\n- Added missing formit.contains lexicon entry\n- Fixed possible loophole with $this->fields and referencing in multiple hooks\n- Fixed bug on hooks due to !== and != difference\n- Added SMTP support to FormIt email hook\n- Fixed bug with emailFrom in email hook\n- Added emailUseFieldForSubject property to FormIt snippet\n- Fixed bug on email hook where if subject was passed through form, it wouldn\'t set it as email subject\n- Added changelog\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:15:\"formit-2.0.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:43:\"/workspace/package/install/formit-2.0.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e53b1a4c54be9.18440615_14e53b1c43f3d11.22762506\";s:14:\"package_action\";i:0;}', 'formit', 'a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c62b2b083396d000b9c\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.0.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"2.0.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:400:\"<p>Automatically validate, parse and email forms. Redirect to thank you pages. Add your own hooks as Snippets to handle forms dynamically. Validate with custom Snippets. Spam protection. Auto-response options. Dynamic country/state dropdown lists.</p>\n<p>See the Official Documentation here:</p>\n<p><a href=\"http://rtfm.modx.com/display/ADDON/FormIt\">http://rtfm.modx.com/display/ADDON/FormIt</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4033:\"<p></p><p><b>New in 2.0.1</b></p><ul><li>&#91;#5525&#93; Add &amp;allowFiles property, that when set to 0, prevents file submissions on form</li><li>&#91;#5484&#93; Fix issue with double validation error spans</li><li>Fix issue where config was not passed to hooks</li><li>Update German translation</li></ul><p></p><p><b>New in 2.0.0</b></p><p></p><ul><li>&#91;#3514&#93; Add ability to customize validator error messages per FormIt form and per field</li><li>&#91;#4705&#93; Add regexp validator</li><li>&#91;#5454&#93; Fix issue with customValidators property in 2.0.0-rc2</li><li>Fix issue with reCaptcha loading in 2.0.0-rc1</li><li>Major reworking of main FormIt script to be OOP</li><li>Add over 150 unit tests to prevent regression</li><li>&#91;#5388&#93;, &#91;#5240&#93; Fix issue with FormItCountryOptions and &amp;useIsoCode</li><li>Fix issue with FormItStateOptions and &amp;useAbbr</li><li>&#91;#5267&#93; Fix issue with FormItRetriever and array fields</li></ul><p></p><p><b>New in 1.7.0</b></p><p></p><ul><li>Add ability to have \"Frequent Visitors\" optgroup in FormItCountryOptions, moving specified countries to the top of the list in an optgroup</li><li>Add missing property translations for FormItStateOptions snippet</li><li>Fix small issue with stored values after validation of fields</li><li>Add FormItStateOptions snippet for easy U.S. state dropdowns</li><li>Add FormItCountryOptions snippet for easy country dropdowns</li><li>&#91;#5101&#93; Fix issue with emailMultiSeparator and emailMultiWrapper default values</li><li>Fix issue with bracketed field names being added as extra fields post-validation with . prefix</li></ul><p></p><p><b>New in 1.6.0</b></p><p></p><ul><li>&#91;#4708&#93; Add support for bracketed fields, such as contact&#91;name&#93;</li><li>&#91;#5038&#93; Fix uninitialized variable warnings in reCaptcha service</li><li>&#91;#4993&#93; Add Italian translation and fix recaptcha links</li><li>Fix issue where fields could be removed via DOM from form and be bypassed</li><li>Add &amp;emailMultiSeparator and &amp;emailMultiWrapper properties for handling display of checkboxes/multi-selects in email hook</li></ul><p></p><p><b>New in 1.5.6</b></p><p></p><ul><li>&#91;#4564&#93; Fix redirectTo with non-web contexts</li></ul><p></p><p><b>New in 1.5.5</b></p><ul><li>&#91;#4168&#93; Add emailConvertNewlines property for handling newlines in HTML emails</li><li>&#91;#4057&#93; Prevent math hook from generating similar numbers</li><li>&#91;#4302&#93; Cleanups to FormItAutoResponder snippet</li><li>&#91;#3991&#93; Fix issue with checkbox values in emails</li></ul><p></p><p><b>New in 1.5.4</b></p><p></p>\n<ul>\n<li>Fix issue with math hook where error placeholders were incorrect</li><li>Fix issue where emailHtml property was not respected in email hook</li><li>Fix issue where hooks were not passed customProperties array</li><li>&#91;#51&#93; Allow blank fields to be passed with :email validator</li>\n<li>&#91;#55&#93; Allow all fields to be accessed in custom validators</li>\n</ul>\n<p><b>New in 1.5.3</b></p>\n<ul>\n<li>&#91;#40&#93; Add ability to display all error messages in bulk at top, added validationErrorBulkTpl for templating each one</li>\n<li>&#91;#52&#93; Add a general validation error message property, validationErrorMessage, that shows when validation fails</li>\n<li>&#91;#53&#93; Fix bug that prevented recaptcha options from working</li>\n<li>Add a generic validation error placeholder in FormIt to allow for general messages</li>\n<li>&#91;#50&#93; Trim each hook specification in hooks calls</li>\n<li>&#91;#49&#93; Ensure reCaptcha service instance is unique for each FormIt instance</li>\n<li>&#91;#47&#93; Ensure email validator checks for empty string</li>\n<li>&#91;#42&#93; Can now include field names in error strings via `field` placeholder</li>\n<li>&#91;#39&#93; Fix issue with FormItIsChecked/Selected to prevent output from occurring if not checked</li>\n<li>&#91;#37&#93; Fix allowTags validator to work, and work with parameters encapsulated by ^</li>\n</ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 18:30:15 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-08-22 18:30:15 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"27164\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:6:\"FormIt\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52a039f24554564d000038\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4e52a037f24554564d000036\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:29:\"formit-2.0.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"124\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"77.56.164.217\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4e52a039f24554564d000038\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"formit-2.0.1-pl\";s:8:\"children\";a:0:{}}}', '2', '0', '1', 'pl', '0');
insert into `modx_transport_packages` values ('googlesitemap-1.2.1-pl', '2011-08-23 07:05:55', '2011-08-23 07:07:24', '2011-08-23 07:07:24', '0', '1', '1', '0', 'googlesitemap-1.2.1-pl.transport.zip', null, 'a:8:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:295:\"--------------------\nSnippet: GoogleSiteMap\n--------------------\nVersion: 1.2\nCreated: June 23, 2009\nAuthor: Shaun McCormick <shaun@modx.com>\n\n- Based on Michal Till\'s MODx Evolution GoogleSiteMap_XML snippet\n\nThis component builds the GoogleSiteMap XML for you.\n    \nExample:\n[[!GoogleSiteMap]]\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:50:\"/workspace/package/install/googlesitemap-1.2.1-pl/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e53b1a4c54be9.18440615_14e53b1c43f3d11.22762506\";s:14:\"package_action\";i:0;}', 'googlesitemap', 'a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556c2eb2b083396d000a62\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.2.1\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"2\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:2:\"pl\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:208:\"<p>Generates a Google SiteMap XML.</p>\n<p>Please see the official documentation here:&nbsp;<a href=\"http://rtfm.modx.com/display/ADDON/GoogleSiteMap/\">http://rtfm.modx.com/display/ADDON/GoogleSiteMap/</a></p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:38:\"<p>Install via Package Management.</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:793:\"<p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \">New in 1.2.1</p><ul><li>[#1] Add ability to make sitemap from a specific Resource via startId property</li><li>[#4] Fix issue where children of non-published resources were not showing</li><li>[#5] Fix issue where children of non-searchable resources were not showing</li></ul><p style=\"padding-top: 2px; padding-right: 2px; padding-bottom: 2px; padding-left: 2px; \">New in 1.2.0</p><ul><li>Updated google schema to 0.9, fixed reference</li><li>Added maxDepth, excludeResources properties</li><li>Refactored to work with overridable chunks for templates</li><li>Fixed URL generation bug where home URL was incorrectly generating</li><li>Updated copyright information</li><li>i18n of properties</li></ul>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-03 16:10:01 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:12:\"splittingred\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-03-03 16:10:01 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"9817\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:13:\"GoogleSiteMap\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:3:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d6fbd5af2455443bf000012\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d6fbd59f2455443bf000011\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:36:\"googlesitemap-1.2.1-pl.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"3534\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:15:\"194.158.198.117\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4d6fbd5af2455443bf000012\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:22:\"googlesitemap-1.2.1-pl\";s:8:\"children\";a:0:{}}}', '1', '2', '1', 'pl', '0');
insert into `modx_transport_packages` values ('janitor-1.5-beta', '2011-08-23 07:08:37', '2011-08-23 07:11:05', '2011-08-23 07:11:05', '0', '1', '1', '0', 'janitor-1.5-beta.transport.zip', null, 'a:8:{s:7:\"license\";s:2484:\"You must agree to the License before continuing installation.\n\nUsage of this software is subject to the GPL license. To help you understand\nwhat the GPL licence is and how it affects your ability to use the software, we\nhave provided the following summary:\n\nThe GNU General Public License is a Free Software license.\nLike any Free Software license, it grants to you the four following freedoms:-\n	The freedom to run the program for any purpose. \n    The freedom to study how the program works and adapt it to your needs. \n    The freedom to redistribute copies so you can help your neighbor.\n    The freedom to improve the program and release your improvements to the\n    public, so that the whole community benefits.\n    \nYou may exercise the freedoms specified here provided that you comply with\nthe express conditions of this license. The principal conditions are:-\n	\n	You must conspicuously and appropriately publish on each copy distributed an\n    appropriate copyright notice and disclaimer of warranty and keep intact all the\n    notices that refer to this License and to the absence of any warranty; and give\n    any other recipients of the Program a copy of the GNU General Public License\n    along with the Program. Any translation of the GNU General Public License must\n    be accompanied by the GNU General Public License.\n\n    If you modify your copy or copies of the program or any portion of it, or\n    develop a program based upon it, you may distribute the resulting work provided\n    you do so under the GNU General Public License. Any translation of the GNU\n    General Public License must be accompanied by the GNU General Public License.\n\n    If you copy or distribute the program, you must accompany it with the\n    complete corresponding machine-readable source code or with a written offer,\n    valid for at least three years, to furnish the complete corresponding\n    machine-readable source code.\n\n    Any of these conditions can be waived if you get permission from the\n    copyright holder.\n\n    Your fair use and other rights are in no way affected by the above.\n    \nThe above is a summary of the GNU General Public License. By proceeding, you\nare agreeing to the GNU General Public Licence, not the above. The above is\nsimply a summary of the GNU General Public Licence, and its accuracy is not\nguaranteed. It is strongly recommended you read the <a href=\"http://www.gnu.org/copyleft/gpl.html\">GNU General Public\nLicense</a> in full before proceeding. \n\";s:6:\"readme\";s:528:\"\r\nJanitor component for MODx Revolution\r\n\r\nPurpose: Assists in common site maintenance tasks.\r\nAuthor: S. Hamblett steve.hamblett@linux.com\r\nFor: MODx CMS (www.modxcms.com) Revolution\r\nDate: 18/08/2010\r\n\r\nIdeas and suggestions contributed by MODx members, Henrik Nielsen, BobRay and charliez\r\n\r\nJanitor is licensed under the GPL, 3rd party components however are licensed\r\nseperetely, please see individual 3rd party applications for further details.\r\n\r\nSee the user guide for further details on how to use this component.\r\n\r\n\r\n\";s:6:\"action\";s:7:\"install\";s:9:\"signature\";s:16:\"janitor-1.5-beta\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:44:\"/workspace/package/install/janitor-1.5-beta/\";s:12:\"HTTP_MODAUTH\";s:52:\"modx4e53b1a4c54be9.18440615_14e53b1c43f3d11.22762506\";s:14:\"package_action\";i:1;}', 'janitor', 'a:31:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556cdeb2b083396d000e7e\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"package\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d556cdeb2b083396d000e7e\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:12:\"display_name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"janitor-1.5-beta\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"1.5.0\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:13:\"version_major\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"1\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:13:\"version_minor\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"5\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:13:\"version_patch\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:1:\"0\";s:8:\"children\";a:0:{}}i:7;a:4:{s:4:\"name\";s:7:\"release\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"beta\";s:8:\"children\";a:0:{}}i:8;a:4:{s:4:\"name\";s:8:\"vrelease\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"beta\";s:8:\"children\";a:0:{}}i:9;a:4:{s:4:\"name\";s:14:\"vrelease_index\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"beta\";s:8:\"children\";a:0:{}}i:10;a:4:{s:4:\"name\";s:6:\"author\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:9:\"shamblett\";s:8:\"children\";a:0:{}}i:11;a:4:{s:4:\"name\";s:11:\"description\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:908:\"<p>Janitor is a 3PC that assists site maintainers with everyday maintenance tasks. It consists of utilities to&nbsp;assist with &nbsp;database functions, database backup, FTP transfers, log file clearance, upgrade preparation, site search and link checking.</p>\n<p>It utilises robust 3rd party applications such as SQLBuddy and integrates them into a single component giving site administrators a single tool to use &nbsp;from one place, rather than a plethora of external ones as is usually the case.</p>\n<p>Please read the User Guide in /assets/components/janitor/docs before using this component, especially the section on Security.</p>\n<p>This version is functionally complete except for the Events tab, this is still under development.</p>\n<p>The FTP client has been changed from phpMyWebFTP to eXtplorer, this gives a combined FTP client and file browser capable of archiving content.</p>\n<p>&nbsp;</p>\";s:8:\"children\";a:0:{}}i:12;a:4:{s:4:\"name\";s:12:\"instructions\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"<p>Install as normal through Revolutions package manager</p>\";s:8:\"children\";a:0:{}}i:13;a:4:{s:4:\"name\";s:9:\"changelog\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:33:\"<p>Updates for Revolution 2.1</p>\";s:8:\"children\";a:0:{}}i:14;a:4:{s:4:\"name\";s:9:\"createdon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-06-10 12:50:19 UTC\";s:8:\"children\";a:0:{}}i:15;a:4:{s:4:\"name\";s:10:\"created_by\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:9:\"shamblett\";s:8:\"children\";a:0:{}}i:16;a:3:{s:4:\"name\";s:8:\"editedon\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:17;a:4:{s:4:\"name\";s:10:\"releasedon\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:23:\"2011-06-10 12:50:19 UTC\";s:8:\"children\";a:0:{}}i:18;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"1881\";s:8:\"children\";a:0:{}}i:19;a:4:{s:4:\"name\";s:8:\"approved\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:20;a:4:{s:4:\"name\";s:7:\"audited\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:21;a:4:{s:4:\"name\";s:8:\"featured\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:22;a:4:{s:4:\"name\";s:10:\"deprecated\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"false\";s:8:\"children\";a:0:{}}i:23;a:4:{s:4:\"name\";s:7:\"license\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:5:\"GPLv2\";s:8:\"children\";a:0:{}}i:24;a:3:{s:4:\"name\";s:7:\"smf_url\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:0:{}}i:25;a:4:{s:4:\"name\";s:4:\"name\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:7:\"Janitor\";s:8:\"children\";a:0:{}}i:26;a:4:{s:4:\"name\";s:10:\"repository\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"children\";a:0:{}}i:27;a:4:{s:4:\"name\";s:8:\"supports\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"2.0\";s:8:\"children\";a:0:{}}i:28;a:4:{s:4:\"name\";s:10:\"screenshot\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:48:\"http://modx.s3.amazonaws.com/extras/720/link.png\";s:8:\"children\";a:0:{}}i:29;a:3:{s:4:\"name\";s:4:\"file\";s:10:\"attributes\";a:0:{}s:8:\"children\";a:7:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4df2130cf24554089d000029\";s:8:\"children\";a:0:{}}i:1;a:4:{s:4:\"name\";s:7:\"version\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:24:\"4df2130bf24554089d000027\";s:8:\"children\";a:0:{}}i:2;a:4:{s:4:\"name\";s:8:\"filename\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:30:\"janitor-1.5-beta.transport.zip\";s:8:\"children\";a:0:{}}i:3;a:4:{s:4:\"name\";s:9:\"downloads\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:3:\"333\";s:8:\"children\";a:0:{}}i:4;a:4:{s:4:\"name\";s:6:\"lastip\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:14:\"205.186.172.13\";s:8:\"children\";a:0:{}}i:5;a:4:{s:4:\"name\";s:9:\"transport\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:4:\"true\";s:8:\"children\";a:0:{}}i:6;a:4:{s:4:\"name\";s:8:\"location\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:60:\"http://modx.com/extras/download/?id=4df2130cf24554089d000029\";s:8:\"children\";a:0:{}}}}i:30;a:4:{s:4:\"name\";s:17:\"package-signature\";s:10:\"attributes\";a:0:{}s:4:\"text\";s:16:\"janitor-1.5-beta\";s:8:\"children\";a:0:{}}}', '1', '5', '0', 'beta', '0');


### structure of table `modx_transport_providers` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_transport_providers` ###

insert into `modx_transport_providers` values ('1', 'modx.com', 'The official MODX transport facility for 3rd party components.', 'http://rest.modx.com/extras/', '', '', '2011-07-21 12:01:07', null);


### structure of table `modx_user_attributes` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_user_attributes` ###

insert into `modx_user_attributes` values ('1', '1', 'Default Admin User', 'luki@booncon.com', '', '', '0', '0', '0', '1', '0', '1314107844', '0', '116743f97daaf5b1f043f1b84151c9c2', '0', '0', '', '', '', '', '', '', '', '', '', null);


### structure of table `modx_user_group_roles` ###

DROP TABLE IF EXISTS `modx_user_group_roles`;

CREATE TABLE `modx_user_group_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` mediumtext,
  `authority` int(10) unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 AUTO_INCREMENT=3;


### data of table `modx_user_group_roles` ###

insert into `modx_user_group_roles` values ('1', 'Member', null, '9999');
insert into `modx_user_group_roles` values ('2', 'Super User', null, '0');


### structure of table `modx_user_messages` ###

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;


### data of table `modx_user_messages` ###



### structure of table `modx_user_settings` ###

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


### data of table `modx_user_settings` ###



### structure of table `modx_users` ###

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_users` ###

insert into `modx_users` values ('1', 'booncon_admin', 'pqi4djPHe9AyXIxlL1XQYjAwtE/N9ugCgEna8nLHbUY=', '', 'modUser', '1', null, null, 'hashing.modPBKDF2', '9af71f5673f073bd5ccda6834d00ef88');


### structure of table `modx_workspaces` ###

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;


### data of table `modx_workspaces` ###

insert into `modx_workspaces` values ('1', 'Default MODX workspace', '/nfs/c09/h01/mnt/128501/domains/booncon.com/html/core/', '2011-08-23 06:56:54', '1', null);
