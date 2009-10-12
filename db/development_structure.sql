CREATE TABLE `content_element_htmls` (
  `id` int(11) NOT NULL auto_increment,
  `content_element_id` int(11) default NULL,
  `html` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_element_images` (
  `id` int(11) NOT NULL auto_increment,
  `content_element_id` int(11) default NULL,
  `image_url` varchar(255) default NULL,
  `image_position` varchar(255) default NULL,
  `image_information` varchar(255) default NULL,
  `image_alternative_text` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_element_texts` (
  `id` int(11) NOT NULL auto_increment,
  `content_element_id` int(11) default NULL,
  `text` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_elements` (
  `id` int(11) NOT NULL auto_increment,
  `page_id` int(11) default NULL,
  `parent_id` int(11) default '0',
  `type` varchar(255) default 'ContentElement',
  `header` varchar(255) default NULL,
  `header_type` varchar(255) default NULL,
  `starttime` datetime default NULL,
  `endtime` datetime default NULL,
  `sort` int(11) default '0',
  `deleted` tinyint(1) default '0',
  `hidden` tinyint(1) default '1',
  `column` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `tags` varchar(255) default NULL,
  `element_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `parent_id` int(11) NOT NULL default '1',
  `starttime` datetime default NULL,
  `endtime` datetime default NULL,
  `sorting` int(11) default NULL,
  `deleted` tinyint(1) default '0',
  `hidden` tinyint(1) default '1',
  `hidden_in_menu` tinyint(1) default '0',
  `subtitle` varchar(255) default NULL,
  `navigation_title` varchar(255) default NULL,
  `description` text,
  `keywords` text,
  `abstract` text,
  `author` varchar(255) default NULL,
  `author_email` varchar(255) default NULL,
  `target` varchar(255) default NULL,
  `type` varchar(255) default 'ContentPage',
  `shortcut_page_id` int(11) default NULL,
  `shortcut_mode` varchar(255) default NULL,
  `ext_url` varchar(255) default NULL,
  `created_by` int(11) default NULL,
  `layout` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

CREATE TABLE `permissions_user_groups` (
  `permission_id` int(11) default NULL,
  `user_group_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `user_groups_users` (
  `user_group_id` int(11) default NULL,
  `user_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user_sessions` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `crypted_password` varchar(255) default NULL,
  `password_salt` varchar(255) default NULL,
  `surname` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `last_login_ip` varchar(255) default NULL,
  `last_login_at` datetime default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `persistence_token` varchar(255) NOT NULL,
  `current_login_ip` varchar(255) default NULL,
  `current_login_at` datetime default NULL,
  `deleted` tinyint(1) default '0',
  `backend_language` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO schema_migrations (version) VALUES ('20090723110515');

INSERT INTO schema_migrations (version) VALUES ('20090723113246');

INSERT INTO schema_migrations (version) VALUES ('20090723132720');

INSERT INTO schema_migrations (version) VALUES ('20090727094303');

INSERT INTO schema_migrations (version) VALUES ('20090727112015');

INSERT INTO schema_migrations (version) VALUES ('20090727114056');

INSERT INTO schema_migrations (version) VALUES ('20090802161611');

INSERT INTO schema_migrations (version) VALUES ('20090802162004');

INSERT INTO schema_migrations (version) VALUES ('20090803100110');

INSERT INTO schema_migrations (version) VALUES ('20090810123205');

INSERT INTO schema_migrations (version) VALUES ('20090810123206');

INSERT INTO schema_migrations (version) VALUES ('20090813070438');

INSERT INTO schema_migrations (version) VALUES ('20090813070451');

INSERT INTO schema_migrations (version) VALUES ('20090813070521');

INSERT INTO schema_migrations (version) VALUES ('20090813071132');

INSERT INTO schema_migrations (version) VALUES ('20090824211710');