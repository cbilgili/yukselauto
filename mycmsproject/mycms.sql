DROP TABLE IF EXISTS auth_group;
CREATE TABLE 'auth_group' (
    'id' INT NOT NULL PRIMARY KEY,
    'name' varchar(80) NOT NULL UNIQUE
);
DROP TABLE IF EXISTS 'auth_group_permissions';
CREATE TABLE 'auth_group_permissions' (
    'id' INT NOT NULL PRIMARY KEY,
    'group_id' INT NOT NULL,
    'permission_id' INT NOT NULL REFERENCES 'auth_permission' ('id'),
    UNIQUE ('group_id', 'permission_id')
);
DROP TABLE IF EXISTS 'auth_message';
CREATE TABLE 'auth_message' (
    'id' INT NOT NULL PRIMARY KEY,
    'user_id' INT NOT NULL REFERENCES 'auth_user' ('id'),
    'message' text NOT NULL
);
DROP TABLE IF EXISTS 'auth_permission';
CREATE TABLE 'auth_permission' (
    'id' INT NOT NULL PRIMARY KEY,
    'name' varchar(50) NOT NULL,
    'content_type_id' INT NOT NULL,
    'codename' varchar(100) NOT NULL,
    UNIQUE ('content_type_id', 'codename')
);
INSERT INTO 'auth_permission' VALUES(1,'Can add permission',1,'add_permission');
INSERT INTO 'auth_permission' VALUES(2,'Can change permission',1,'change_permission');
INSERT INTO 'auth_permission' VALUES(3,'Can delete permission',1,'delete_permission');
INSERT INTO 'auth_permission' VALUES(4,'Can add group',2,'add_group');
INSERT INTO 'auth_permission' VALUES(5,'Can change group',2,'change_group');
INSERT INTO 'auth_permission' VALUES(6,'Can delete group',2,'delete_group');
INSERT INTO 'auth_permission' VALUES(7,'Can add user',3,'add_user');
INSERT INTO 'auth_permission' VALUES(8,'Can change user',3,'change_user');
INSERT INTO 'auth_permission' VALUES(9,'Can delete user',3,'delete_user');
INSERT INTO 'auth_permission' VALUES(10,'Can add content type',4,'add_contenttype');
INSERT INTO 'auth_permission' VALUES(11,'Can change content type',4,'change_contenttype');
INSERT INTO 'auth_permission' VALUES(12,'Can delete content type',4,'delete_contenttype');
INSERT INTO 'auth_permission' VALUES(13,'Can add session',5,'add_session');
INSERT INTO 'auth_permission' VALUES(14,'Can change session',5,'change_session');
INSERT INTO 'auth_permission' VALUES(15,'Can delete session',5,'delete_session');
INSERT INTO 'auth_permission' VALUES(16,'Can add site',6,'add_site');
INSERT INTO 'auth_permission' VALUES(17,'Can change site',6,'change_site');
INSERT INTO 'auth_permission' VALUES(18,'Can delete site',6,'delete_site');
INSERT INTO 'auth_permission' VALUES(19,'Can add log entry',7,'add_logentry');
INSERT INTO 'auth_permission' VALUES(20,'Can change log entry',7,'change_logentry');
INSERT INTO 'auth_permission' VALUES(21,'Can delete log entry',7,'delete_logentry');
INSERT INTO 'auth_permission' VALUES(22,'Can add placeholder',8,'add_placeholder');
INSERT INTO 'auth_permission' VALUES(23,'Can change placeholder',8,'change_placeholder');
INSERT INTO 'auth_permission' VALUES(24,'Can delete placeholder',8,'delete_placeholder');
INSERT INTO 'auth_permission' VALUES(25,'Can add cms plugin',9,'add_cmsplugin');
INSERT INTO 'auth_permission' VALUES(26,'Can change cms plugin',9,'change_cmsplugin');
INSERT INTO 'auth_permission' VALUES(27,'Can delete cms plugin',9,'delete_cmsplugin');
INSERT INTO 'auth_permission' VALUES(28,'Can add page',10,'add_page');
INSERT INTO 'auth_permission' VALUES(29,'Can change page',10,'change_page');
INSERT INTO 'auth_permission' VALUES(30,'Can delete page',10,'delete_page');
INSERT INTO 'auth_permission' VALUES(31,'Can view page',10,'view_page');
INSERT INTO 'auth_permission' VALUES(32,'Can add PageModerator',11,'add_pagemoderator');
INSERT INTO 'auth_permission' VALUES(33,'Can change PageModerator',11,'change_pagemoderator');
INSERT INTO 'auth_permission' VALUES(34,'Can delete PageModerator',11,'delete_pagemoderator');
INSERT INTO 'auth_permission' VALUES(35,'Can add Page moderator state',12,'add_pagemoderatorstate');
INSERT INTO 'auth_permission' VALUES(36,'Can change Page moderator state',12,'change_pagemoderatorstate');
INSERT INTO 'auth_permission' VALUES(37,'Can delete Page moderator state',12,'delete_pagemoderatorstate');
INSERT INTO 'auth_permission' VALUES(38,'Can add Page global permission',13,'add_globalpagepermission');
INSERT INTO 'auth_permission' VALUES(39,'Can change Page global permission',13,'change_globalpagepermission');
INSERT INTO 'auth_permission' VALUES(40,'Can delete Page global permission',13,'delete_globalpagepermission');
INSERT INTO 'auth_permission' VALUES(41,'Can add Page permission',14,'add_pagepermission');
INSERT INTO 'auth_permission' VALUES(42,'Can change Page permission',14,'change_pagepermission');
INSERT INTO 'auth_permission' VALUES(43,'Can delete Page permission',14,'delete_pagepermission');
INSERT INTO 'auth_permission' VALUES(44,'Can add User (page)',15,'add_pageuser');
INSERT INTO 'auth_permission' VALUES(45,'Can change User (page)',15,'change_pageuser');
INSERT INTO 'auth_permission' VALUES(46,'Can delete User (page)',15,'delete_pageuser');
INSERT INTO 'auth_permission' VALUES(47,'Can add User group (page)',16,'add_pageusergroup');
INSERT INTO 'auth_permission' VALUES(48,'Can change User group (page)',16,'change_pageusergroup');
INSERT INTO 'auth_permission' VALUES(49,'Can delete User group (page)',16,'delete_pageusergroup');
INSERT INTO 'auth_permission' VALUES(50,'Can add title',17,'add_title');
INSERT INTO 'auth_permission' VALUES(51,'Can change title',17,'change_title');
INSERT INTO 'auth_permission' VALUES(52,'Can delete title',17,'delete_title');
INSERT INTO 'auth_permission' VALUES(53,'Can add cache key',18,'add_cachekey');
INSERT INTO 'auth_permission' VALUES(54,'Can change cache key',18,'change_cachekey');
INSERT INTO 'auth_permission' VALUES(55,'Can delete cache key',18,'delete_cachekey');
INSERT INTO 'auth_permission' VALUES(56,'Can add migration history',19,'add_migrationhistory');
INSERT INTO 'auth_permission' VALUES(57,'Can change migration history',19,'change_migrationhistory');
INSERT INTO 'auth_permission' VALUES(58,'Can delete migration history',19,'delete_migrationhistory');
INSERT INTO 'auth_permission' VALUES(59,'Can add text',20,'add_text');
INSERT INTO 'auth_permission' VALUES(60,'Can change text',20,'change_text');
INSERT INTO 'auth_permission' VALUES(61,'Can delete text',20,'delete_text');
INSERT INTO 'auth_permission' VALUES(62,'Can add picture',21,'add_picture');
INSERT INTO 'auth_permission' VALUES(63,'Can change picture',21,'change_picture');
INSERT INTO 'auth_permission' VALUES(64,'Can delete picture',21,'delete_picture');
INSERT INTO 'auth_permission' VALUES(65,'Can add link',22,'add_link');
INSERT INTO 'auth_permission' VALUES(66,'Can change link',22,'change_link');
INSERT INTO 'auth_permission' VALUES(67,'Can delete link',22,'delete_link');
INSERT INTO 'auth_permission' VALUES(68,'Can add file',23,'add_file');
INSERT INTO 'auth_permission' VALUES(69,'Can change file',23,'change_file');
INSERT INTO 'auth_permission' VALUES(70,'Can delete file',23,'delete_file');
INSERT INTO 'auth_permission' VALUES(71,'Can add Snippet',24,'add_snippet');
INSERT INTO 'auth_permission' VALUES(72,'Can change Snippet',24,'change_snippet');
INSERT INTO 'auth_permission' VALUES(73,'Can delete Snippet',24,'delete_snippet');
INSERT INTO 'auth_permission' VALUES(74,'Can add Snippet',25,'add_snippetptr');
INSERT INTO 'auth_permission' VALUES(75,'Can change Snippet',25,'change_snippetptr');
INSERT INTO 'auth_permission' VALUES(76,'Can delete Snippet',25,'delete_snippetptr');
INSERT INTO 'auth_permission' VALUES(77,'Can add google map',26,'add_googlemap');
INSERT INTO 'auth_permission' VALUES(78,'Can change google map',26,'change_googlemap');
INSERT INTO 'auth_permission' VALUES(79,'Can delete google map',26,'delete_googlemap');
INSERT INTO 'auth_permission' VALUES(83,'Can add brand',28,'add_brand');
INSERT INTO 'auth_permission' VALUES(84,'Can change brand',28,'change_brand');
INSERT INTO 'auth_permission' VALUES(85,'Can delete brand',28,'delete_brand');
INSERT INTO 'auth_permission' VALUES(86,'Can add product',29,'add_product');
INSERT INTO 'auth_permission' VALUES(87,'Can change product',29,'change_product');
INSERT INTO 'auth_permission' VALUES(88,'Can delete product',29,'delete_product');
INSERT INTO 'auth_permission' VALUES(89,'Can add product type',30,'add_producttype');
INSERT INTO 'auth_permission' VALUES(90,'Can change product type',30,'change_producttype');
INSERT INTO 'auth_permission' VALUES(91,'Can delete product type',30,'delete_producttype');
INSERT INTO 'auth_permission' VALUES(92,'Can add category',31,'add_category');
INSERT INTO 'auth_permission' VALUES(93,'Can change category',31,'change_category');
INSERT INTO 'auth_permission' VALUES(94,'Can delete category',31,'delete_category');
INSERT INTO 'auth_permission' VALUES(95,'Can add hello',32,'add_hello');
INSERT INTO 'auth_permission' VALUES(96,'Can change hello',32,'change_hello');
INSERT INTO 'auth_permission' VALUES(97,'Can delete hello',32,'delete_hello');
INSERT INTO 'auth_permission' VALUES(98,'Can add Form',33,'add_formdefinition');
INSERT INTO 'auth_permission' VALUES(99,'Can change Form',33,'change_formdefinition');
INSERT INTO 'auth_permission' VALUES(100,'Can delete Form',33,'delete_formdefinition');
INSERT INTO 'auth_permission' VALUES(101,'Can add field',34,'add_formdefinitionfield');
INSERT INTO 'auth_permission' VALUES(102,'Can change field',34,'change_formdefinitionfield');
INSERT INTO 'auth_permission' VALUES(103,'Can delete field',34,'delete_formdefinitionfield');
INSERT INTO 'auth_permission' VALUES(104,'Can add form log',35,'add_formlog');
INSERT INTO 'auth_permission' VALUES(105,'Can change form log',35,'change_formlog');
INSERT INTO 'auth_permission' VALUES(106,'Can delete form log',35,'delete_formlog');
INSERT INTO 'auth_permission' VALUES(107,'Can add form value',36,'add_formvalue');
INSERT INTO 'auth_permission' VALUES(108,'Can change form value',36,'change_formvalue');
INSERT INTO 'auth_permission' VALUES(109,'Can delete form value',36,'delete_formvalue');
INSERT INTO 'auth_permission' VALUES(110,'Can add cms form definition',37,'add_cmsformdefinition');
INSERT INTO 'auth_permission' VALUES(111,'Can change cms form definition',37,'change_cmsformdefinition');
INSERT INTO 'auth_permission' VALUES(112,'Can delete cms form definition',37,'delete_cmsformdefinition');
INSERT INTO 'auth_permission' VALUES(113,'Can add yandex map',38,'add_yandexmap');
INSERT INTO 'auth_permission' VALUES(114,'Can change yandex map',38,'change_yandexmap');
INSERT INTO 'auth_permission' VALUES(115,'Can delete yandex map',38,'delete_yandexmap');
DROP TABLE IF EXISTS 'auth_user';
CREATE TABLE 'auth_user' (
    'id' INT NOT NULL PRIMARY KEY,
    'username' varchar(30) NOT NULL UNIQUE,
    'first_name' varchar(30) NOT NULL,
    'last_name' varchar(30) NOT NULL,
    'email' varchar(75) NOT NULL,
    'password' varchar(128) NOT NULL,
    'is_staff' bool NOT NULL,
    'is_active' bool NOT NULL,
    'is_superuser' bool NOT NULL,
    'last_login' datetime NOT NULL,
    'date_joined' datetime NOT NULL
);
INSERT INTO 'auth_user' VALUES(1,'admin','Canbey','Bilgili','cbilgili@gmail.com','pbkdf2_sha256$10000$y8Q1dOzsZy6Q$fMY4zDXPpBHMeYbc2bH2VvpRGRh6HirZ6YO99x+LdIw=',1,1,1,'2013-02-08 01:44:29.279295','2013-01-08 05:17:00');
DROP TABLE IF EXISTS 'auth_user_groups';
CREATE TABLE 'auth_user_groups' (
    'id' INT NOT NULL PRIMARY KEY,
    'user_id' INT NOT NULL,
    'group_id' INT NOT NULL REFERENCES 'auth_group' ('id'),
    UNIQUE ('user_id', 'group_id')
);
DROP TABLE IF EXISTS 'auth_user_user_permissions';
CREATE TABLE 'auth_user_user_permissions' (
    'id' INT NOT NULL PRIMARY KEY,
    'user_id' INT NOT NULL,
    'permission_id' INT NOT NULL REFERENCES 'auth_permission' ('id'),
    UNIQUE ('user_id', 'permission_id')
);
DROP TABLE IF EXISTS 'cms_cmsplugin';
CREATE TABLE 'cms_cmsplugin' (
    'id' INT NOT NULL PRIMARY KEY,
    'placeholder_id' INT REFERENCES 'cms_placeholder' ('id'),
    'parent_id' INT,
    'position' smallint unsigned,
    'language' varchar(15) NOT NULL,
    'plugin_type' varchar(50) NOT NULL,
    'creation_date' datetime NOT NULL,
    'changed_date' datetime NOT NULL,
    'level' INT unsigned NOT NULL,
    'lft' INT unsigned NOT NULL,
    'rght' INT unsigned NOT NULL,
    'tree_id' INT unsigned NOT NULL
);
INSERT INTO 'cms_cmsplugin' VALUES(1,2,NULL,2,'en','TextPlugin','2013-01-08 05:47:36.758440','2013-01-29 07:14:07.749078',0,1,6,1);
INSERT INTO 'cms_cmsplugin' VALUES(2,4,NULL,0,'en','TextPlugin','2013-01-08 05:49:21.744319','2013-01-08 07:12:22.576844',0,1,2,2);
INSERT INTO 'cms_cmsplugin' VALUES(3,12,NULL,0,'en','TextPlugin','2013-01-11 09:40:19.223084','2013-01-11 09:40:19.233903',0,1,2,3);
INSERT INTO 'cms_cmsplugin' VALUES(4,12,NULL,1,'en','TextPlugin','2013-01-11 09:44:36.567715','2013-01-11 09:45:21.680548',0,1,2,4);
INSERT INTO 'cms_cmsplugin' VALUES(5,12,NULL,2,'en','PicturePlugin','2013-01-11 09:45:28.081656','2013-01-11 09:46:11.832914',0,1,2,5);
INSERT INTO 'cms_cmsplugin' VALUES(6,12,NULL,3,'en','TextPlugin','2013-01-11 09:46:18.223300','2013-01-11 09:46:18.224048',0,1,2,6);
INSERT INTO 'cms_cmsplugin' VALUES(8,2,1,0,'en','FilePlugin','2013-01-29 04:42:34.049926','2013-01-29 04:42:55.079088',1,2,3,1);
INSERT INTO 'cms_cmsplugin' VALUES(9,8,NULL,0,'en','TextPlugin','2013-01-29 07:07:49.547022','2013-01-29 07:07:49.559404',0,1,4,7);
INSERT INTO 'cms_cmsplugin' VALUES(10,8,9,NULL,'en','PicturePlugin','2013-01-29 07:08:06.679178','2013-01-29 07:08:06.679718',1,2,3,7);
INSERT INTO 'cms_cmsplugin' VALUES(11,8,NULL,0,'tr','TextPlugin','2013-01-29 07:10:50.119072','2013-01-29 07:11:08.934575',0,1,2,8);
INSERT INTO 'cms_cmsplugin' VALUES(12,2,NULL,0,'tr','TextPlugin','2013-01-29 07:13:46.091948','2013-01-29 07:13:53.782645',0,1,2,9);
INSERT INTO 'cms_cmsplugin' VALUES(13,2,NULL,0,'de','TextPlugin','2013-01-29 07:14:14.407006','2013-01-29 07:14:22.730174',0,1,2,10);
INSERT INTO 'cms_cmsplugin' VALUES(14,2,NULL,2,'en','TextPlugin','2013-01-29 07:28:12.872047','2013-01-29 07:28:12.872700',0,1,2,11);
INSERT INTO 'cms_cmsplugin' VALUES(15,2,NULL,1,'tr','TextPlugin','2013-01-29 08:01:56.026419','2013-01-29 08:02:02.762375',0,1,2,12);
INSERT INTO 'cms_cmsplugin' VALUES(16,18,NULL,0,'tr','TextPlugin','2013-01-29 09:49:51.796630','2013-02-08 08:47:10.311001',0,1,50,13);
INSERT INTO 'cms_cmsplugin' VALUES(17,19,NULL,0,'en','TextPlugin','2013-01-29 09:52:22.917638','2013-01-29 09:52:33.680621',0,1,2,14);
INSERT INTO 'cms_cmsplugin' VALUES(18,19,NULL,0,'tr','TextPlugin','2013-01-29 09:53:12.552459','2013-01-29 09:56:18.020790',0,1,2,15);
INSERT INTO 'cms_cmsplugin' VALUES(19,19,NULL,0,'de','TextPlugin','2013-01-29 09:53:33.231011','2013-01-29 09:53:39.673486',0,1,2,16);
INSERT INTO 'cms_cmsplugin' VALUES(20,18,NULL,0,'en','TextPlugin','2013-01-29 10:18:29.044368','2013-01-29 10:18:44.084024',0,1,2,17);
INSERT INTO 'cms_cmsplugin' VALUES(21,18,NULL,0,'de','TextPlugin','2013-01-29 10:18:56.391382','2013-01-29 10:19:02.463794',0,1,2,18);
INSERT INTO 'cms_cmsplugin' VALUES(22,18,NULL,9,'tr','TextPlugin','2013-01-29 10:21:55.852856','2013-02-08 08:47:10.303411',0,1,2,19);
INSERT INTO 'cms_cmsplugin' VALUES(23,18,NULL,10,'tr','TextPlugin','2013-01-29 10:22:35.812488','2013-02-08 08:47:10.305062',0,1,2,20);
INSERT INTO 'cms_cmsplugin' VALUES(24,18,NULL,11,'tr','SnippetPlugin','2013-01-29 10:26:20.419960','2013-02-08 08:47:10.306680',0,1,2,21);
INSERT INTO 'cms_cmsplugin' VALUES(25,23,NULL,0,'tr','TextPlugin','2013-01-31 04:51:23.342857','2013-01-31 04:51:23.359618',0,1,2,22);
INSERT INTO 'cms_cmsplugin' VALUES(26,24,NULL,0,'tr','TextPlugin','2013-02-02 07:17:31.111017','2013-02-02 07:17:31.129608',0,1,2,23);
INSERT INTO 'cms_cmsplugin' VALUES(27,24,NULL,1,'tr','HelloPlugin','2013-02-04 05:53:50.614071','2013-02-04 05:53:54.257967',0,1,2,24);
INSERT INTO 'cms_cmsplugin' VALUES(28,24,NULL,2,'tr','HelloPlugin','2013-02-04 06:03:56.602099','2013-02-04 06:04:05.120383',0,1,2,25);
INSERT INTO 'cms_cmsplugin' VALUES(29,19,NULL,1,'tr','HelloPlugin','2013-02-04 06:16:10.509584','2013-02-04 06:16:17.282779',0,1,2,26);
INSERT INTO 'cms_cmsplugin' VALUES(30,25,NULL,0,'tr','TextPlugin','2013-02-04 06:55:25.059528','2013-02-04 07:01:50.852475',0,1,2,27);
INSERT INTO 'cms_cmsplugin' VALUES(31,26,NULL,0,'tr','TextPlugin','2013-02-04 07:03:33.579333','2013-02-04 07:03:41.731586',0,1,2,28);
INSERT INTO 'cms_cmsplugin' VALUES(32,27,NULL,0,'tr','SearchPlugin','2013-02-04 10:46:00.481507','2013-02-04 10:46:02.611131',0,1,2,29);
INSERT INTO 'cms_cmsplugin' VALUES(33,27,NULL,0,'en','SearchPlugin','2013-02-05 03:46:00.533927','2013-02-05 03:46:03.987886',0,1,2,30);
INSERT INTO 'cms_cmsplugin' VALUES(34,27,NULL,0,'de','SearchPlugin','2013-02-05 03:46:35.450533','2013-02-05 03:46:38.326437',0,1,2,31);
INSERT INTO 'cms_cmsplugin' VALUES(35,23,NULL,0,'en','FormDesignerPlugin','2013-02-05 09:41:19.241858','2013-02-05 09:46:18.481096',0,1,2,32);
INSERT INTO 'cms_cmsplugin' VALUES(37,23,NULL,2,'tr','GoogleMapPlugin','2013-02-06 02:46:15.714020','2013-02-08 07:50:31.443270',0,1,2,34);
INSERT INTO 'cms_cmsplugin' VALUES(38,26,NULL,0,'en','TextPlugin','2013-02-04 07:03:33.579333','2013-02-06 02:50:20.861858',0,1,2,35);
INSERT INTO 'cms_cmsplugin' VALUES(39,25,NULL,0,'en','TextPlugin','2013-02-04 06:55:25.059528','2013-02-06 02:50:30.210404',0,1,2,36);
INSERT INTO 'cms_cmsplugin' VALUES(40,26,NULL,0,'de','TextPlugin','2013-02-04 07:03:33.579333','2013-02-06 02:50:41.274276',0,1,2,37);
INSERT INTO 'cms_cmsplugin' VALUES(41,25,NULL,0,'de','TextPlugin','2013-02-04 06:55:25.059528','2013-02-06 02:50:43.995325',0,1,2,38);
INSERT INTO 'cms_cmsplugin' VALUES(42,28,NULL,0,'tr','TextPlugin','2013-02-07 10:36:51.385859','2013-02-07 10:36:56.104150',0,1,2,39);
INSERT INTO 'cms_cmsplugin' VALUES(43,28,NULL,1,'tr','TextPlugin','2013-02-07 10:37:20.353986','2013-02-07 10:37:24.592583',0,1,2,40);
INSERT INTO 'cms_cmsplugin' VALUES(44,28,NULL,0,'en','TextPlugin','2013-02-07 10:36:51.385859','2013-02-07 10:37:50.277976',0,1,2,41);
INSERT INTO 'cms_cmsplugin' VALUES(45,28,NULL,1,'en','TextPlugin','2013-02-07 10:37:20.353986','2013-02-07 10:37:50.285460',0,1,2,42);
INSERT INTO 'cms_cmsplugin' VALUES(46,28,NULL,0,'de','TextPlugin','2013-02-07 10:36:51.385859','2013-02-07 10:38:03.417008',0,1,2,43);
INSERT INTO 'cms_cmsplugin' VALUES(47,28,NULL,1,'de','TextPlugin','2013-02-07 10:37:20.353986','2013-02-07 10:38:03.422729',0,1,2,44);
INSERT INTO 'cms_cmsplugin' VALUES(48,23,NULL,0,'de','FormDesignerPlugin','2013-02-05 09:41:19.241858','2013-02-08 01:50:45.935537',0,1,2,45);
INSERT INTO 'cms_cmsplugin' VALUES(52,18,NULL,12,'tr','TextPlugin','2013-02-08 07:20:46.962210','2013-02-08 08:47:10.308347',0,1,2,47);
INSERT INTO 'cms_cmsplugin' VALUES(53,23,NULL,0,'tr','TextPlugin','2013-02-08 07:38:13.642382','2013-02-08 07:50:31.446262',0,1,4,48);
INSERT INTO 'cms_cmsplugin' VALUES(68,18,16,0,'tr','PicturePlugin','2013-02-08 08:46:01.145935','2013-02-08 08:47:10.077550',1,22,23,13);
INSERT INTO 'cms_cmsplugin' VALUES(69,18,16,1,'tr','PicturePlugin','2013-02-08 08:46:09.549252','2013-02-08 08:47:10.079486',1,24,25,13);
INSERT INTO 'cms_cmsplugin' VALUES(70,18,16,2,'tr','PicturePlugin','2013-02-08 08:46:17.154709','2013-02-08 08:47:10.081074',1,24,25,13);
INSERT INTO 'cms_cmsplugin' VALUES(71,18,16,3,'tr','PicturePlugin','2013-02-08 08:46:25.862193','2013-02-08 08:47:10.083027',1,26,27,13);
INSERT INTO 'cms_cmsplugin' VALUES(72,18,16,4,'tr','PicturePlugin','2013-02-08 08:46:34.636781','2013-02-08 08:47:10.084898',1,26,27,13);
INSERT INTO 'cms_cmsplugin' VALUES(73,18,16,5,'tr','PicturePlugin','2013-02-08 08:46:43.032249','2013-02-08 08:47:10.086763',1,28,29,13);
INSERT INTO 'cms_cmsplugin' VALUES(74,18,16,6,'tr','PicturePlugin','2013-02-08 08:46:49.712465','2013-02-08 08:47:10.088386',1,30,31,13);
INSERT INTO 'cms_cmsplugin' VALUES(75,18,16,7,'tr','PicturePlugin','2013-02-08 08:47:00.860933','2013-02-08 08:47:10.090076',1,30,31,13);
INSERT INTO 'cms_cmsplugin' VALUES(76,30,NULL,0,'tr','TextPlugin','2013-02-08 08:53:58.408108','2013-02-08 08:54:10.344567',0,1,4,49);
INSERT INTO 'cms_cmsplugin' VALUES(77,30,76,NULL,'tr','PicturePlugin','2013-02-08 08:54:02.963669','2013-02-08 08:54:08.917822',1,2,3,49);
DROP TABLE IF EXISTS 'cms_globalpagepermission';
CREATE TABLE 'cms_globalpagepermission' (
    'id' INT NOT NULL PRIMARY KEY,
    'user_id' INT REFERENCES 'auth_user' ('id'),
    'group_id' INT REFERENCES 'auth_group' ('id'),
    'can_change' bool NOT NULL,
    'can_add' bool NOT NULL,
    'can_delete' bool NOT NULL,
    'can_change_advanced_settings' bool NOT NULL,
    'can_publish' bool NOT NULL,
    'can_change_permissions' bool NOT NULL,
    'can_move_page' bool NOT NULL,
    'can_moderate' bool NOT NULL,
    'can_view' bool NOT NULL,
    'can_recover_page' bool NOT NULL
);
DROP TABLE IF EXISTS 'cms_globalpagepermission_sites';
CREATE TABLE 'cms_globalpagepermission_sites' (
    'id' INT NOT NULL PRIMARY KEY,
    'globalpagepermission_id' INT NOT NULL,
    'site_id' INT NOT NULL REFERENCES 'django_site' ('id'),
    UNIQUE ('globalpagepermission_id', 'site_id')
);
DROP TABLE IF EXISTS 'cms_page';
CREATE TABLE 'cms_page' (
    'id' INT NOT NULL PRIMARY KEY,
    'created_by' varchar(70) NOT NULL,
    'changed_by' varchar(70) NOT NULL,
    'parent_id' INT,
    'creation_date' datetime NOT NULL,
    'changed_date' datetime NOT NULL,
    'publication_date' datetime,
    'publication_end_date' datetime,
    'in_navigation' bool NOT NULL,
    'soft_root' bool NOT NULL,
    'reverse_id' varchar(40),
    'navigation_extenders' varchar(80),
    'published' bool NOT NULL,
    'template' varchar(100) NOT NULL,
    'site_id' INT NOT NULL REFERENCES 'django_site' ('id'),
    'moderator_state' smallint NOT NULL,
    'level' INT unsigned NOT NULL,
    'lft' INT unsigned NOT NULL,
    'rght' INT unsigned NOT NULL,
    'tree_id' INT unsigned NOT NULL,
    'login_required' bool NOT NULL,
    'limit_visibility_in_menu' smallint,
    'publisher_is_draft' bool NOT NULL,
    'publisher_public_id' INT UNIQUE,
    'publisher_state' smallint NOT NULL
);
INSERT INTO 'cms_page' VALUES(1,'admin','admin',NULL,'2013-01-08 05:42:44.157184','2013-02-08 01:46:20.945809','2013-01-08 05:43:04.179468',NULL,1,0,NULL,'',1,'content_home.html',1,0,0,1,2,1,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(2,'admin','admin',NULL,'2013-01-08 05:49:05.933822','2013-02-08 01:52:24.560861','2013-01-08 05:49:11.219460',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,6,2,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(3,'admin','admin',2,'2013-01-08 06:39:32.782295','2013-01-29 09:46:06.183864','2013-01-08 06:39:49.877767',NULL,1,0,NULL,'',1,'content_main.html',1,0,1,2,3,2,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(4,'admin','admin',2,'2013-01-08 06:39:44.447769','2013-01-29 09:46:08.521746','2013-01-08 06:39:50.446819',NULL,1,0,NULL,'',1,'INHERIT',1,0,1,4,5,2,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(5,'admin','admin',NULL,'2013-01-08 07:10:34.212789','2013-02-08 01:52:17.386303','2013-01-08 07:12:50.491972',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,2,9,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(6,'admin','admin',NULL,'2013-01-08 07:56:06.203662','2013-02-08 06:24:31.174208','2013-01-09 03:50:45.632394',NULL,1,0,'ithal_urunler','',1,'content_product.html',1,0,0,1,2,4,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(7,'admin','admin',NULL,'2013-01-29 10:02:00.400445','2013-02-08 01:47:33.647058','2013-01-29 10:02:36.808792',NULL,1,0,'su-pompalari','',1,'content_product.html',1,0,0,1,2,3,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(8,'admin','admin',NULL,'2013-02-07 10:35:31.993549','2013-02-08 01:52:35.540582','2013-02-07 10:35:40.559105',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,2,5,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(9,'admin','admin',NULL,'2013-02-08 01:51:42.386853','2013-02-08 02:00:11.168307','2013-02-08 01:53:12.759032',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,2,6,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(10,'admin','admin',NULL,'2013-02-08 01:52:11.334080','2013-02-08 01:59:24.578565','2013-02-08 01:53:11.725161',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,2,7,0,NULL,1,NULL,1);
INSERT INTO 'cms_page' VALUES(11,'admin','admin',NULL,'2013-02-08 01:57:24.180360','2013-02-08 01:58:09.834134','2013-02-08 01:57:28.697938',NULL,1,0,NULL,'',1,'content_main.html',1,0,0,1,2,8,0,NULL,1,NULL,1);
DROP TABLE IF EXISTS 'cms_page_placeholders';
CREATE TABLE 'cms_page_placeholders' (
    'id' INT NOT NULL PRIMARY KEY,
    'page_id' INT NOT NULL,
    'placeholder_id' INT NOT NULL REFERENCES 'cms_placeholder' ('id'),
    UNIQUE ('page_id', 'placeholder_id')
);
INSERT INTO 'cms_page_placeholders' VALUES(1,1,1);
INSERT INTO 'cms_page_placeholders' VALUES(2,1,2);
INSERT INTO 'cms_page_placeholders' VALUES(3,1,3);
INSERT INTO 'cms_page_placeholders' VALUES(4,2,4);
INSERT INTO 'cms_page_placeholders' VALUES(5,2,5);
INSERT INTO 'cms_page_placeholders' VALUES(6,2,6);
INSERT INTO 'cms_page_placeholders' VALUES(7,2,7);
INSERT INTO 'cms_page_placeholders' VALUES(8,3,8);
INSERT INTO 'cms_page_placeholders' VALUES(9,3,9);
INSERT INTO 'cms_page_placeholders' VALUES(10,4,10);
INSERT INTO 'cms_page_placeholders' VALUES(11,4,11);
INSERT INTO 'cms_page_placeholders' VALUES(12,5,12);
INSERT INTO 'cms_page_placeholders' VALUES(13,5,13);
INSERT INTO 'cms_page_placeholders' VALUES(14,6,14);
INSERT INTO 'cms_page_placeholders' VALUES(15,6,15);
INSERT INTO 'cms_page_placeholders' VALUES(16,3,16);
INSERT INTO 'cms_page_placeholders' VALUES(17,3,17);
INSERT INTO 'cms_page_placeholders' VALUES(18,2,18);
INSERT INTO 'cms_page_placeholders' VALUES(19,1,19);
INSERT INTO 'cms_page_placeholders' VALUES(20,6,20);
INSERT INTO 'cms_page_placeholders' VALUES(21,7,21);
INSERT INTO 'cms_page_placeholders' VALUES(22,7,22);
INSERT INTO 'cms_page_placeholders' VALUES(23,5,23);
INSERT INTO 'cms_page_placeholders' VALUES(24,1,24);
INSERT INTO 'cms_page_placeholders' VALUES(25,1,25);
INSERT INTO 'cms_page_placeholders' VALUES(26,1,26);
INSERT INTO 'cms_page_placeholders' VALUES(27,1,27);
INSERT INTO 'cms_page_placeholders' VALUES(28,8,28);
INSERT INTO 'cms_page_placeholders' VALUES(29,9,29);
INSERT INTO 'cms_page_placeholders' VALUES(30,10,30);
INSERT INTO 'cms_page_placeholders' VALUES(31,11,31);
DROP TABLE IF EXISTS 'cms_pagemoderator';
CREATE TABLE 'cms_pagemoderator' (
    'id' INT NOT NULL PRIMARY KEY,
    'page_id' INT NOT NULL REFERENCES 'cms_page' ('id'),
    'user_id' INT NOT NULL REFERENCES 'auth_user' ('id'),
    'moderate_page' bool NOT NULL,
    'moderate_children' bool NOT NULL,
    'moderate_descendants' bool NOT NULL
);
DROP TABLE IF EXISTS 'cms_pagemoderatorstate';
CREATE TABLE 'cms_pagemoderatorstate' (
    'id' INT NOT NULL PRIMARY KEY,
    'page_id' INT NOT NULL REFERENCES 'cms_page' ('id'),
    'user_id' INT REFERENCES 'auth_user' ('id'),
    'created' datetime NOT NULL,
    'action' varchar(3),
    'message' text NOT NULL
);
DROP TABLE IF EXISTS 'cms_pagepermission';
CREATE TABLE 'cms_pagepermission' (
    'id' INT NOT NULL PRIMARY KEY,
    'user_id' INT REFERENCES 'auth_user' ('id'),
    'group_id' INT REFERENCES 'auth_group' ('id'),
    'can_change' bool NOT NULL,
    'can_add' bool NOT NULL,
    'can_delete' bool NOT NULL,
    'can_change_advanced_settings' bool NOT NULL,
    'can_publish' bool NOT NULL,
    'can_change_permissions' bool NOT NULL,
    'can_move_page' bool NOT NULL,
    'can_moderate' bool NOT NULL,
    'can_view' bool NOT NULL,
    'grant_on' INT NOT NULL,
    'page_id' INT REFERENCES 'cms_page' ('id')
);
DROP TABLE IF EXISTS 'cms_pageuser';
CREATE TABLE 'cms_pageuser' (
    'user_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'auth_user' ('id'),
    'created_by_id' INT NOT NULL REFERENCES 'auth_user' ('id')
);
DROP TABLE IF EXISTS 'cms_pageusergroup';
CREATE TABLE 'cms_pageusergroup' (
    'group_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'auth_group' ('id'),
    'created_by_id' INT NOT NULL REFERENCES 'auth_user' ('id')
);
DROP TABLE IF EXISTS 'cms_placeholder';
CREATE TABLE 'cms_placeholder' (
    'id' INT NOT NULL PRIMARY KEY,
    'slot' varchar(50) NOT NULL,
    'default_width' smallint unsigned
);
INSERT INTO 'cms_placeholder' VALUES(1,'main',NULL);
INSERT INTO 'cms_placeholder' VALUES(2,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(3,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(4,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(5,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(6,'template_2_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(7,'main',NULL);
INSERT INTO 'cms_placeholder' VALUES(8,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(9,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(10,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(11,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(12,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(13,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(14,'template_1_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(15,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(16,'template_2_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(17,'main',NULL);
INSERT INTO 'cms_placeholder' VALUES(18,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(19,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(20,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(21,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(22,'base_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(23,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(24,'content_left_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(25,'slogan',NULL);
INSERT INTO 'cms_placeholder' VALUES(26,'news_from_yuksel',NULL);
INSERT INTO 'cms_placeholder' VALUES(27,'search',NULL);
INSERT INTO 'cms_placeholder' VALUES(28,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(29,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(30,'content_main_content',NULL);
INSERT INTO 'cms_placeholder' VALUES(31,'content_main_content',NULL);
DROP TABLE IF EXISTS 'cms_title';
CREATE TABLE 'cms_title' (
    'id' INT NOT NULL PRIMARY KEY,
    'language' varchar(15) NOT NULL,
    'title' varchar(255) NOT NULL,
    'menu_title' varchar(255),
    'slug' varchar(255) NOT NULL,
    'path' varchar(255) NOT NULL,
    'has_url_overwrite' bool NOT NULL,
    'application_urls' varchar(200),
    'redirect' varchar(255),
    'meta_description' text,
    'meta_keywords' varchar(255),
    'page_title' varchar(255),
    'page_id' INT NOT NULL REFERENCES 'cms_page' ('id'),
    'creation_date' datetime NOT NULL,
    UNIQUE ('language', 'page_id')
);
INSERT INTO 'cms_title' VALUES(1,'en','HOME','','home','',0,'','','','','',1,'2013-01-08 05:42:44.166867');
INSERT INTO 'cms_title' VALUES(2,'en','ABOUT US','','about-us','about-us',0,'','','','','',2,'2013-01-08 05:49:05.943206');
INSERT INTO 'cms_title' VALUES(3,'en','Who we are','','who-we-are','about-us/who-we-are',0,'','','','','',3,'2013-01-08 06:39:32.796105');
INSERT INTO 'cms_title' VALUES(4,'en','Company Profile','','company-profile','about-us/company-profile',0,'','','','','',4,'2013-01-08 06:39:44.460942');
INSERT INTO 'cms_title' VALUES(5,'tr','ANASAYFA','','ana-sayfa','',0,'','','','','',1,'2013-01-08 06:55:17.505779');
INSERT INTO 'cms_title' VALUES(6,'tr','HAKKIMIZDA','','hakkimizda','hakkimizda',0,'','','Hakkımızda sayfası','hakkımızda, yüksel','Kurumsal Hakkımızda',2,'2013-01-08 06:55:42.978486');
INSERT INTO 'cms_title' VALUES(7,'tr','Biz kimiz','','biz','hakkimizda/biz',0,'','','','','',3,'2013-01-08 06:56:03.459834');
INSERT INTO 'cms_title' VALUES(8,'tr','İLETİŞİM','','iletisim','iletisim',0,'','','','','',5,'2013-01-08 07:10:34.221653');
INSERT INTO 'cms_title' VALUES(9,'en','CONTACT','','contact','contact',0,'','','','','',5,'2013-01-08 07:10:40.539925');
INSERT INTO 'cms_title' VALUES(10,'en','IMPORT PRODUCTS','','products','products',0,'ProductsApp','','','','',6,'2013-01-08 07:56:06.212430');
INSERT INTO 'cms_title' VALUES(11,'tr','İTHAL ÜRÜNLER','','urunler','urunler',0,'ProductsApp','','','','',6,'2013-01-08 07:56:15.462158');
INSERT INTO 'cms_title' VALUES(12,'tr','Firma Profili','','firma-profili','hakkimizda/firma-profili',0,NULL,NULL,'','','',4,'2013-01-29 07:12:09.992432');
INSERT INTO 'cms_title' VALUES(13,'de','Firmen Profilen','','firmen-profilen','uber-uns/firmen-profilen',0,NULL,NULL,'','','',4,'2013-01-29 07:12:43.820169');
INSERT INTO 'cms_title' VALUES(14,'de','HOME','','home','',0,'','','','','',1,'2013-01-29 07:13:21.137600');
INSERT INTO 'cms_title' VALUES(15,'de','IMPORT PRODUKTEN','','produkten','produkten',0,'','','','','',6,'2013-01-29 07:18:41.807750');
INSERT INTO 'cms_title' VALUES(16,'de','ÜBER UNS','','uber-uns','uber-uns',0,'','','','','',2,'2013-01-29 07:29:35.046498');
INSERT INTO 'cms_title' VALUES(17,'en','WATER PUMPS','','water-pumps','water-pumps',0,'ProductsApp','','','','',7,'2013-01-29 10:02:00.420246');
INSERT INTO 'cms_title' VALUES(18,'tr','SU POMPALARI','','su-pompalari','su-pompalari',0,'ProductsApp','','','','',7,'2013-01-29 10:02:17.022531');
INSERT INTO 'cms_title' VALUES(19,'de','WASSER PUMPEN','','wasser-pumpen','wasser-pumpen',0,'ProductsApp','','','','',7,'2013-01-29 10:02:25.252495');
INSERT INTO 'cms_title' VALUES(20,'tr','ÜRÜN TALEP FORMU','','request','request',0,'','','','','',8,'2013-02-07 10:35:32.010127');
INSERT INTO 'cms_title' VALUES(21,'en','REQUEST','','request','request',0,'','','','','',8,'2013-02-07 10:35:56.280849');
INSERT INTO 'cms_title' VALUES(22,'de','REQUEST','','request','request',0,'','','','','',8,'2013-02-07 10:36:00.610274');
INSERT INTO 'cms_title' VALUES(23,'de','CONTACT','','contact','contact',0,'','','','','',5,'2013-02-08 01:50:57.245030');
INSERT INTO 'cms_title' VALUES(24,'tr','FAALİYETLER',NULL,'operations','operations',0,NULL,NULL,NULL,NULL,NULL,9,'2013-02-08 01:51:42.400633');
INSERT INTO 'cms_title' VALUES(25,'tr','SERTİFİKALAR','','certificates','certificates',0,'','','','','',10,'2013-02-08 01:52:11.348862');
INSERT INTO 'cms_title' VALUES(26,'tr','İK',NULL,'ik','ik',0,NULL,NULL,NULL,NULL,NULL,11,'2013-02-08 01:57:24.194299');
INSERT INTO 'cms_title' VALUES(27,'en','IK','','ik','ik',0,NULL,NULL,'','','',11,'2013-02-08 01:57:55.117148');
INSERT INTO 'cms_title' VALUES(28,'de','IK','','ik','ik',0,'','','','','',11,'2013-02-08 01:58:02.752878');
INSERT INTO 'cms_title' VALUES(29,'en','CERTIFICATES','','zertifikate','zertifikate',0,NULL,NULL,'','','',10,'2013-02-08 01:58:47.462090');
INSERT INTO 'cms_title' VALUES(30,'de','ZERTIFIKATE','','zertifikate','zertifikate',0,NULL,NULL,'','','',10,'2013-02-08 01:59:24.590568');
INSERT INTO 'cms_title' VALUES(31,'de','OPERATIONS','','operations','operations',0,NULL,NULL,'','','',9,'2013-02-08 01:59:46.812121');
INSERT INTO 'cms_title' VALUES(32,'en','OPERATIONS','','operations','operations',0,'','','','','',9,'2013-02-08 02:00:10.140839');
DROP TABLE IF EXISTS 'cmsplugin_cmsformdefinition';
CREATE TABLE 'cmsplugin_cmsformdefinition' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY,
    'form_definition_id' INT NOT NULL
);
INSERT INTO 'cmsplugin_cmsformdefinition' VALUES(35,1);
INSERT INTO 'cmsplugin_cmsformdefinition' VALUES(48,1);
DROP TABLE IF EXISTS 'cmsplugin_file';
CREATE TABLE 'cmsplugin_file' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'file' varchar(100) NOT NULL,
    'title' varchar(255)
);
INSERT INTO 'cmsplugin_file' VALUES(8,'cms_page_media/1/istanbul-005.jpg','');
DROP TABLE IF EXISTS 'cmsplugin_googlemap';
CREATE TABLE 'cmsplugin_googlemap' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'title' varchar(100),
    'address' varchar(150) NOT NULL,
    'zipcode' varchar(30) NOT NULL,
    'city' varchar(100) NOT NULL,
    'content' varchar(255) NOT NULL,
    'zoom' smallint unsigned NOT NULL,
    'lat' decimal,
    'lng' decimal,
    'route_planer_title' varchar(150),
    'route_planer' bool NOT NULL,
    'width' varchar(6) NOT NULL,
    'height' varchar(6) NOT NULL
);
INSERT INTO 'cmsplugin_googlemap' VALUES(37,'','Taksim Caddesi No: 53 Taksim','34010','Istanbul','',13,41.039371,28.983028,'Buraya en hızlı yolunu hesapla',0,'100%','400px');
DROP TABLE IF EXISTS 'cmsplugin_hello';
CREATE TABLE 'cmsplugin_hello' ('cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY, 'guest_name' varchar(50) NOT NULL);
INSERT INTO 'cmsplugin_hello' VALUES(28,'Arkadaş');
INSERT INTO 'cmsplugin_hello' VALUES(29,'Çamaşırcı');
DROP TABLE IF EXISTS 'cmsplugin_link';
CREATE TABLE 'cmsplugin_link' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'name' varchar(256) NOT NULL,
    'url' varchar(200),
    'page_link_id' INT REFERENCES 'cms_page' ('id'),
    'mailto' varchar(75),
    'target' varchar(100) NOT NULL
);
DROP TABLE IF EXISTS 'cmsplugin_picture';
CREATE TABLE 'cmsplugin_picture' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'image' varchar(100) NOT NULL,
    'url' varchar(255),
    'page_link_id' INT REFERENCES 'cms_page' ('id'),
    'alt' varchar(255),
    'longdesc' varchar(255),
    'float' varchar(10)
);
INSERT INTO 'cmsplugin_picture' VALUES(5,'cms_page_media/5/tr.png','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(68,'cms_page_media/2/1_2.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(69,'cms_page_media/2/8_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(70,'cms_page_media/2/2_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(71,'cms_page_media/2/3_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(72,'cms_page_media/2/4_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(73,'cms_page_media/2/5_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(74,'cms_page_media/2/6_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(75,'cms_page_media/2/7_1.jpg','',NULL,'','',NULL);
INSERT INTO 'cmsplugin_picture' VALUES(77,'cms_page_media/10/image1.jpg','',NULL,'','',NULL);
DROP TABLE IF EXISTS 'cmsplugin_snippetptr';
CREATE TABLE 'cmsplugin_snippetptr' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'snippet_id' INT NOT NULL REFERENCES 'snippet_snippet' ('id')
);
DROP TABLE IF EXISTS 'cmsplugin_text';
CREATE TABLE 'cmsplugin_text' (
    'cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY REFERENCES 'cms_cmsplugin' ('id'),
    'body' text NOT NULL
);
INSERT INTO 'cmsplugin_text' VALUES(1,'<h1>Home Page</h1><p><img alt='File - istanbul-005.jpg' id='plugin_obj_8' src='/static/cms/images/plugins/file.png' title='File - istanbul-005.jpg'></p><p><img id='plugin_obj_9'></p>');
INSERT INTO 'cmsplugin_text' VALUES(2,'<p>About us</p>');
INSERT INTO 'cmsplugin_text' VALUES(4,'<p>Yazı ekledik.</p>
<table><tbody><tr><td>a</td></tr></tbody></table>');
INSERT INTO 'cmsplugin_text' VALUES(11,'<p>Yeni yazı alanı eklendiyor</p><h1>Başlık</h1>');
INSERT INTO 'cmsplugin_text' VALUES(12,'<h1>Anasayfa</h1>');
INSERT INTO 'cmsplugin_text' VALUES(13,'<h1>Home Seite</h1>');
INSERT INTO 'cmsplugin_text' VALUES(15,'<p>It is okay now.</p>');
INSERT INTO 'cmsplugin_text' VALUES(16,'<h1>Hakkımızda</h1><p>YUKSEL firması 1960 yılında kurulan köklü bir firmadır. Otomotiv sanayi için su pompası, yağ pompası, manifold ve daha birçok parçaları müşterinin istediği siparişe göre yapmaktadır. Bugün Ortadoğu’da pompa konusunda hemen hemen eşi olmayan bir kuruluştur. Fabrikamız ıstanbuldan 120 km uzaklıkta olup Çorlu - Tekirdağ’da kurulmuştur.ımalatımızda 400 çeşit devirdaim pompası bulunup; ağır vasıtalar, yol makinaları ve forklift ağırlıklıdır. Ürünlerimizde en son teknoloji kullanılmaktadır. Kullanılan bilya ve keçe dünya çapında tanınmış ve O.E.M. ‘e iş yapan firmalardan temin edilmektedir. İmalat esnasında her bir parçanın tek tek kontrolü yapılıp, montajdan sonra da her bir pompaya hava testi uygulanmaktadır. Firmamızın merkezi Taksim’de olup bir katı 250m2 olan 11 katlı kendi binasındadır.  Ayrıca Ankara, Mersin, İzmir’de şubeleri bulunmaktadır. Her konuda görüşme istendiğinde firmamızı aramanızdan memnunluk duyacağımızı belirtiriz.<strong><br><br><br>YÜKSEL OTOMOTİV<br>GENEL MÜDÜR</strong></p><p><strong><img alt='Resim - 1_2.jpg' id='plugin_obj_68' src='/static/cms/images/plugins/image.png' title='Resim - 1_2.jpg'><img alt='Resim - 8_1.jpg' id='plugin_obj_69' src='/static/cms/images/plugins/image.png' title='Resim - 8_1.jpg'><img alt='Resim - 2_1.jpg' id='plugin_obj_70' src='/static/cms/images/plugins/image.png' title='Resim - 2_1.jpg'><img alt='Resim - 3_1.jpg' id='plugin_obj_71' src='/static/cms/images/plugins/image.png' title='Resim - 3_1.jpg'><img alt='Resim - 4_1.jpg' id='plugin_obj_72' src='/static/cms/images/plugins/image.png' title='Resim - 4_1.jpg'><img alt='Resim - 5_1.jpg' id='plugin_obj_73' src='/static/cms/images/plugins/image.png' title='Resim - 5_1.jpg'><img alt='Resim - 6_1.jpg' id='plugin_obj_74' src='/static/cms/images/plugins/image.png' title='Resim - 6_1.jpg'><img alt='Resim - 7_1.jpg' id='plugin_obj_75' src='/static/cms/images/plugins/image.png' title='Resim - 7_1.jpg'></strong></p>');
INSERT INTO 'cmsplugin_text' VALUES(17,'<h1>Welcome</h1>');
INSERT INTO 'cmsplugin_text' VALUES(18,'<h1>Hoşgeldiniz</h1><p>Bu bizim ilk sayfamız</p>');
INSERT INTO 'cmsplugin_text' VALUES(19,'<h1>Willkomen</h1>');
INSERT INTO 'cmsplugin_text' VALUES(20,'<h1>About us</h1>');
INSERT INTO 'cmsplugin_text' VALUES(21,'<h1>Über Uns</h1>');
INSERT INTO 'cmsplugin_text' VALUES(22,'');
INSERT INTO 'cmsplugin_text' VALUES(23,'');
INSERT INTO 'cmsplugin_text' VALUES(30,'<span>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</span>');
INSERT INTO 'cmsplugin_text' VALUES(31,'<p>Yüksel Automotive müşterisine kendi fabrikalarında ürettiği Otomotiv sanayi için su pompası, yağ pompası, manifold ve daha birçok parça çeşitliliğiyle OE kalitesinde ve uzun servis süresi garantisi ile hizmet vermektedir.</p>
                    <p>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</p>');
INSERT INTO 'cmsplugin_text' VALUES(38,'<p>Yüksel Automotive müşterisine kendi fabrikalarında ürettiği Otomotiv sanayi için su pompası, yağ pompası, manifold ve daha birçok parça çeşitliliğiyle OE kalitesinde ve uzun servis süresi garantisi ile hizmet vermektedir.</p>
                    <p>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</p>');
INSERT INTO 'cmsplugin_text' VALUES(39,'<span>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</span>');
INSERT INTO 'cmsplugin_text' VALUES(40,'<p>Yüksel Automotive müşterisine kendi fabrikalarında ürettiği Otomotiv sanayi için su pompası, yağ pompası, manifold ve daha birçok parça çeşitliliğiyle OE kalitesinde ve uzun servis süresi garantisi ile hizmet vermektedir.</p>
                    <p>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</p>');
INSERT INTO 'cmsplugin_text' VALUES(41,'<span>Yüksel Automotive, deneyimli kadrosu, kaliteden ödün vermeyen hizmet anlayışı, üretimde kullandığı ileri teknoloji ve yenilikçi yapısıyla otomotiv sanayisinde değer katan, sektörün öncü firması olmaya devam edecektir.</span>');
INSERT INTO 'cmsplugin_text' VALUES(42,'<p>Yeni metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(43,'<p>2. metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(44,'<p>Yeni metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(45,'<p>2. metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(46,'<p>Yeni metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(47,'<p>2. metin</p>');
INSERT INTO 'cmsplugin_text' VALUES(52,'');
INSERT INTO 'cmsplugin_text' VALUES(53,'<table border='0' cellpadding='0' cellspacing='0' class='contact-tbl'>
  <tbody><tr>
    <th>ADRES</th>
    <th> : </th>
    <td>Taksim Caddesi No: 53 Taksim / İstanbul - Türkiye</td>
  </tr>
  <tr>
    <th>TELEFON</th>
    <th> : </th>
    <td>(0212) 254 75 50 (pbx)</td>
  </tr>
  <tr>
    <th>FAX</th>
    <th> : </th>
    <td>(0212) 250 50 58</td>
  </tr>
  <tr>
    <th>E-MAİL</th>
    <th> : </th>
    <td><a href='mailto:yuksel@yukselautomotive.com'>yuksel@yukselautomotive.com</a></td>
  </tr>
</tbody></table>');
INSERT INTO 'cmsplugin_text' VALUES(76,'<img alt='Resim - image1.jpg' id='plugin_obj_77' src='/static/cms/images/plugins/image.png' title='Resim - image1.jpg'>');
DROP TABLE IF EXISTS 'cmsplugin_yandexmap';
CREATE TABLE 'cmsplugin_yandexmap' ('cmsplugin_ptr_id' INT NOT NULL PRIMARY KEY, 'title' varchar(100) NULL, 'address' varchar(150) NOT NULL, 'zipcode' varchar(30) NOT NULL, 'city' varchar(100) NOT NULL, 'content' varchar(255) NULL, 'zoom' INT NULL, 'lat' decimal NULL, 'lng' decimal NULL);
DROP TABLE IF EXISTS 'django_admin_log';
CREATE TABLE 'django_admin_log' (
    'id' INT NOT NULL PRIMARY KEY,
    'action_time' datetime NOT NULL,
    'user_id' INT NOT NULL REFERENCES 'auth_user' ('id'),
    'content_type_id' INT REFERENCES 'django_content_type' ('id'),
    'object_id' text,
    'object_repr' varchar(200) NOT NULL,
    'action_flag' smallint unsigned NOT NULL,
    'change_message' text NOT NULL
);
INSERT INTO 'django_admin_log' VALUES(1,'2013-01-08 05:42:44.178474',1,10,'1','Yeni İçerik Sayfası',1,'');
INSERT INTO 'django_admin_log' VALUES(2,'2013-01-08 05:43:04.199295',1,10,'1','Yeni İçerik Sayfası',2,'Changed published, in_navigation, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(3,'2013-01-08 05:43:37.462824',1,10,'1','Yeni İçerik Sayfası',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(4,'2013-01-08 05:46:35.124979',1,10,'1','Yeni İçerik Sayfası',2,'Changed template, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(5,'2013-01-08 05:47:19.145250',1,10,'1','Yeni İçerik Sayfası',2,'Changed in_navigation, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(6,'2013-01-08 05:49:05.954037',1,10,'2','Hakkımızda',1,'');
INSERT INTO 'django_admin_log' VALUES(7,'2013-01-08 05:49:11.239166',1,10,'2','Hakkımızda',2,'Changed published, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(8,'2013-01-08 05:49:59.466900',1,10,'2','Hakkımızda',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(9,'2013-01-08 05:50:09.797115',1,10,'1','Yeni İçerik Sayfası',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(10,'2013-01-08 06:27:27.611396',1,10,'1','Yeni İçerik Sayfası',2,'Changed in_navigation, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(11,'2013-01-08 06:27:32.701739',1,10,'1','Yeni İçerik Sayfası',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(12,'2013-01-08 06:39:32.803715',1,10,'3','Biz kimiz',1,'');
INSERT INTO 'django_admin_log' VALUES(13,'2013-01-08 06:39:44.468584',1,10,'4','Firma Profili',1,'');
INSERT INTO 'django_admin_log' VALUES(14,'2013-01-08 06:53:45.103157',1,10,'2','Hakkımızda',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(15,'2013-01-08 06:54:41.368631',1,10,'5','Anasayfa',1,'');
INSERT INTO 'django_admin_log' VALUES(16,'2013-01-08 06:54:50.331247',1,10,'5','Anasayfa',2,'published, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(17,'2013-01-08 06:55:01.354599',1,10,'5','Anasayfa',3,'');
INSERT INTO 'django_admin_log' VALUES(18,'2013-01-08 06:55:17.515958',1,10,'1','Yeni İçerik Sayfası',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(19,'2013-01-08 06:55:22.587634',1,10,'1','Yeni İçerik Sayfası',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(20,'2013-01-08 06:55:36.768617',1,10,'2','Hakkımızda',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(21,'2013-01-08 06:55:42.987086',1,10,'2','About us',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(22,'2013-01-08 06:55:44.577156',1,10,'2','Hakkımızda',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(23,'2013-01-08 06:55:59.884275',1,10,'3','Biz kimiz',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(24,'2013-01-08 06:56:03.465670',1,10,'3','Who we are',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(25,'2013-01-08 06:56:18.350209',1,10,'3','Biz ',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(26,'2013-01-08 07:10:34.231707',1,10,'5','İletişim',1,'');
INSERT INTO 'django_admin_log' VALUES(27,'2013-01-08 07:10:40.550850',1,10,'5','İletişim',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(28,'2013-01-08 07:12:46.534763',1,10,'5','Contact',2,'Changed moderator_state.');
INSERT INTO 'django_admin_log' VALUES(29,'2013-01-08 07:56:06.222896',1,10,'6','Products',1,'');
INSERT INTO 'django_admin_log' VALUES(30,'2013-01-08 07:56:15.475011',1,10,'6','Products',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(31,'2013-01-08 09:17:20.643052',1,10,'6','Products',2,'Changed application_urls and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(32,'2013-01-08 09:17:26.358160',1,10,'6','Ürünler',2,'Changed application_urls, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(33,'2013-01-09 03:29:28.804734',1,28,'1','bmw',1,'');
INSERT INTO 'django_admin_log' VALUES(34,'2013-01-09 03:29:33.324450',1,28,'2','Mercedes',1,'');
INSERT INTO 'django_admin_log' VALUES(35,'2013-01-09 03:29:36.834890',1,28,'1','Bmw',2,'Changed name.');
INSERT INTO 'django_admin_log' VALUES(36,'2013-01-09 03:29:40.489281',1,28,'1','BMW',2,'Changed name.');
INSERT INTO 'django_admin_log' VALUES(37,'2013-01-09 03:29:44.956745',1,28,'3','Alfa Romeo',1,'');
INSERT INTO 'django_admin_log' VALUES(38,'2013-01-09 03:30:15.307338',1,29,'1','Yeni Araba',1,'');
INSERT INTO 'django_admin_log' VALUES(39,'2013-01-09 03:50:45.748104',1,10,'6','Products',2,'Changed published and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(40,'2013-01-09 03:50:55.151602',1,10,'6','Products',2,'Changed moderator_state.');
INSERT INTO 'django_admin_log' VALUES(41,'2013-01-09 03:55:50.209245',1,29,'2','Su Pompası',1,'');
INSERT INTO 'django_admin_log' VALUES(42,'2013-01-09 05:26:45.280770',1,28,'1','BMW',1,'');
INSERT INTO 'django_admin_log' VALUES(43,'2013-01-09 05:26:48.927808',1,28,'2','Mercedes',1,'');
INSERT INTO 'django_admin_log' VALUES(44,'2013-01-09 05:26:57.331508',1,29,'1','Yeni Araba Modeli',1,'');
INSERT INTO 'django_admin_log' VALUES(45,'2013-01-11 08:56:11.183032',1,29,'2','Güzel araba modeli',1,'');
INSERT INTO 'django_admin_log' VALUES(46,'2013-01-29 04:46:59.575826',1,10,'1','Ana sayfa',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(47,'2013-01-29 04:47:02.987203',1,10,'1','Ana sayfa',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(48,'2013-01-29 07:12:09.998389',1,10,'4','Firma Profili',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(49,'2013-01-29 07:12:32.127521',1,10,'4','Firma Profili',2,'Changed title and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(50,'2013-01-29 07:12:43.827694',1,10,'4','Company Profile',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(51,'2013-01-29 07:12:54.876336',1,10,'4','Company Profile',2,'Changed slug and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(52,'2013-01-29 07:13:21.146523',1,10,'1','Home',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(53,'2013-01-29 07:18:41.816927',1,10,'6','Products',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(54,'2013-01-29 07:18:49.179927',1,10,'6','Products',2,'Changed slug and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(55,'2013-01-29 07:29:27.385963',1,10,'2','About us',2,'Changed slug and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(56,'2013-01-29 07:29:35.061765',1,10,'2','About us',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(57,'2013-01-29 07:29:42.351317',1,10,'2','About us',2,'Changed slug and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(58,'2013-01-29 07:30:04.740778',1,10,'3','Who we are',2,'Changed slug and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(59,'2013-01-29 08:44:01.279207',1,10,'2','About us',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(60,'2013-01-29 08:47:00.623779',1,10,'1','Home',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(61,'2013-01-29 08:47:05.501532',1,10,'1','Home',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(62,'2013-01-29 09:46:03.274039',1,10,'2','About us',2,'Changed moderator_state.');
INSERT INTO 'django_admin_log' VALUES(63,'2013-01-29 09:46:06.207724',1,10,'3','Who we are',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(64,'2013-01-29 09:46:08.554350',1,10,'4','Company Profile',2,'Changed moderator_state.');
INSERT INTO 'django_admin_log' VALUES(65,'2013-01-29 09:46:10.941609',1,10,'5','Contact',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(66,'2013-01-29 09:46:13.071248',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(67,'2013-01-29 10:02:00.430858',1,10,'7','Water Pumps',1,'');
INSERT INTO 'django_admin_log' VALUES(68,'2013-01-29 10:02:17.036513',1,10,'7','Water Pumps',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(69,'2013-01-29 10:02:25.263420',1,10,'7','Water Pumps',2,'Changed title, slug, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(70,'2013-01-29 10:02:36.839085',1,10,'7','Water Pumps',2,'Changed published, in_navigation, application_urls and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(71,'2013-01-29 10:02:46.064580',1,10,'7','Wasser Pumpen',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(72,'2013-01-30 04:09:10.306743',1,10,'1','Home',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(73,'2013-01-30 04:10:04.532617',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(74,'2013-01-30 04:13:01.704441',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(75,'2013-01-30 04:13:06.160551',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(76,'2013-01-30 04:15:00.834562',1,10,'6','Ürünler',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(77,'2013-01-30 04:16:57.928478',1,10,'7','Water Pumps',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(78,'2013-01-30 04:17:15.969075',1,10,'7','Water Pumps',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(79,'2013-01-30 04:17:20.820135',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(80,'2013-01-30 04:17:25.814468',1,10,'6','Products',2,'Changed template and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(81,'2013-01-30 05:54:01.579259',1,30,'1','Su Pompaları',1,'');
INSERT INTO 'django_admin_log' VALUES(82,'2013-01-30 05:56:41.252241',1,30,'2','İthal Ürünler',1,'');
INSERT INTO 'django_admin_log' VALUES(83,'2013-01-30 06:55:11.567437',1,30,'2','None',3,'');
INSERT INTO 'django_admin_log' VALUES(84,'2013-01-30 06:55:11.569986',1,30,'1','None',3,'');
INSERT INTO 'django_admin_log' VALUES(85,'2013-01-30 06:55:33.147850',1,30,'1','Import Products',1,'');
INSERT INTO 'django_admin_log' VALUES(86,'2013-01-30 06:55:39.886722',1,30,'1','Import Products',2,'Changed name.');
INSERT INTO 'django_admin_log' VALUES(87,'2013-01-30 06:56:00.396328',1,30,'2','Water Pumps',1,'');
INSERT INTO 'django_admin_log' VALUES(88,'2013-01-30 07:01:17.074517',1,31,'1','Clutch',1,'');
INSERT INTO 'django_admin_log' VALUES(89,'2013-01-30 07:01:49.597680',1,31,'2','Brake',1,'');
INSERT INTO 'django_admin_log' VALUES(90,'2013-01-30 07:01:57.767391',1,29,'2','Güzel araba modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(91,'2013-01-30 07:02:01.063164',1,29,'1','Yeni Araba Modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(92,'2013-01-30 07:10:09.222666',1,31,'3','Ford Transit',1,'');
INSERT INTO 'django_admin_log' VALUES(93,'2013-01-30 07:13:53.010909',1,31,'1','Clutch',2,'No fields changed.');
INSERT INTO 'django_admin_log' VALUES(94,'2013-01-30 07:13:55.902523',1,31,'2','Brake',2,'No fields changed.');
INSERT INTO 'django_admin_log' VALUES(95,'2013-01-30 07:27:50.088039',1,31,'4','Ford Trucktor',1,'');
INSERT INTO 'django_admin_log' VALUES(96,'2013-01-30 08:25:01.769915',1,31,'4','Ford Trucktor',2,'Changed parent.');
INSERT INTO 'django_admin_log' VALUES(97,'2013-01-30 08:26:13.521248',1,29,'2','Güzel araba modeli',2,'No fields changed.');
INSERT INTO 'django_admin_log' VALUES(98,'2013-01-30 08:26:17.964549',1,29,'1','Yeni Araba Modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(99,'2013-01-30 08:26:21.573626',1,29,'2','Güzel araba modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(100,'2013-01-30 08:26:25.693161',1,29,'1','Yeni Araba Modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(101,'2013-01-30 08:26:29.090506',1,29,'2','Güzel araba modeli',2,'No fields changed.');
INSERT INTO 'django_admin_log' VALUES(102,'2013-01-31 10:46:05.538636',1,31,'1','Debriyaj Disk ve Baskıları',2,'name ve name_tr değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(103,'2013-01-31 10:46:40.788042',1,31,'5','ISUZU',1,'');
INSERT INTO 'django_admin_log' VALUES(104,'2013-01-31 10:47:05.913503',1,31,'3','Ford Transit',2,'parent değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(105,'2013-01-31 10:47:14.158637',1,31,'3','Ford Transit',2,'Hiçbir alan değiştirilmedi.');
INSERT INTO 'django_admin_log' VALUES(106,'2013-01-31 10:47:39.372232',1,31,'4','Ford Traktör',2,'parent değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(107,'2013-01-31 10:47:57.865141',1,31,'2','Fren Disk ve Saçları',2,'position değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(108,'2013-01-31 10:48:04.196479',1,31,'1','Debriyaj Disk ve Baskıları',2,'Hiçbir alan değiştirilmedi.');
INSERT INTO 'django_admin_log' VALUES(109,'2013-01-31 10:48:34.271768',1,31,'6','Mitsubishi',1,'');
INSERT INTO 'django_admin_log' VALUES(110,'2013-01-31 11:16:10.250022',1,29,'2','Güzel araba modeli',2,'image değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(111,'2013-01-31 11:46:26.071495',1,31,'7','KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL M',1,'');
INSERT INTO 'django_admin_log' VALUES(112,'2013-01-31 11:46:48.032942',1,31,'8','BEDFORD',1,'');
INSERT INTO 'django_admin_log' VALUES(113,'2013-01-31 11:47:04.272884',1,31,'9','CUMMINS',1,'');
INSERT INTO 'django_admin_log' VALUES(114,'2013-01-31 11:47:50.678668',1,31,'10','TRAKTÖR - BİÇERDÖVER',1,'');
INSERT INTO 'django_admin_log' VALUES(115,'2013-01-31 11:48:16.230193',1,31,'11','ALLIS CHALMERS',1,'');
INSERT INTO 'django_admin_log' VALUES(116,'2013-01-31 11:49:10.217794',1,31,'7','KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL MOTOR',2,'name, name_en, name_tr ve name_de değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(117,'2013-01-31 11:55:50.297138',1,10,'6','Ürünler',2,'overwrite_url ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(118,'2013-01-31 11:56:19.790636',1,10,'6','Ürünler',2,'overwrite_url ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(119,'2013-01-31 12:07:46.060790',1,30,'1','İthal Ürünler',2,'slug değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(120,'2013-01-31 12:07:51.457252',1,30,'2','Su Pompaları',2,'slug değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(121,'2013-02-01 05:23:55.191399',1,29,'1','Yeni Araba Modeli',2,'image değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(122,'2013-02-02 05:47:49.456231',1,10,'6','Ürünler',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(123,'2013-02-02 05:48:01.444906',1,10,'6','Products',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(124,'2013-02-02 05:48:43.611023',1,10,'6','Produkten',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(125,'2013-02-02 05:49:28.516987',1,10,'6','Import Produkten',2,'overwrite_url, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(126,'2013-02-02 05:49:37.153859',1,10,'6','İthal Ürünler',2,'overwrite_url ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(127,'2013-02-02 05:49:45.355878',1,10,'6','Import Products',2,'overwrite_url, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(128,'2013-02-02 05:54:59.752791',1,10,'6','İthal Ürünler',2,'reverse_id ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(129,'2013-02-02 05:55:11.807321',1,10,'6','Import Produkten',2,'overwrite_url, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(130,'2013-02-02 05:55:18.244721',1,10,'6','İthal Ürünler',2,'overwrite_url ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(131,'2013-02-02 05:55:25.326418',1,10,'6','Import Products',2,'overwrite_url, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(132,'2013-02-02 06:01:21.948098',1,10,'7','Su Pompaları',2,'reverse_id ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(133,'2013-02-02 06:15:25.749764',1,10,'6','İthal Ürünler',2,'reverse_id ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(134,'2013-02-02 06:19:25.211876',1,10,'6','İthal Ürünler',2,'moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(135,'2013-02-02 06:24:13.783314',1,10,'7','Su Pompaları',2,'template ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(136,'2013-02-02 06:26:43.781379',1,10,'7','Su Pompaları',2,'application_urls ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(137,'2013-02-02 06:26:52.246529',1,10,'7','Wasser Pumpen',2,'application_urls, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(138,'2013-02-02 06:27:02.496711',1,10,'7','Su Pompaları',2,'moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(139,'2013-02-04 05:59:10.060387',1,3,'1','admin',2,'password, first_name ve last_name değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(140,'2013-02-05 08:06:35.766557',1,29,'2','Güzel araba modeli',2,'Changed oem.');
INSERT INTO 'django_admin_log' VALUES(141,'2013-02-05 08:28:18.655140',1,29,'1','Yeni Araba Modeli',2,'Changed oem.');
INSERT INTO 'django_admin_log' VALUES(142,'2013-02-05 08:40:32.441605',1,29,'1','Yeni Araba Modeli',2,'Changed category.');
INSERT INTO 'django_admin_log' VALUES(143,'2013-02-05 09:45:45.749163',1,33,'1','contact-form',1,'');
INSERT INTO 'django_admin_log' VALUES(144,'2013-02-05 09:47:05.276634',1,33,'1','contact-form',2,'Changed label for field 'İsim'.');
INSERT INTO 'django_admin_log' VALUES(145,'2013-02-06 02:50:01.762604',1,10,'5','İletişim',2,'moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(146,'2013-02-06 02:50:34.323646',1,10,'1','Home',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(147,'2013-02-06 02:50:45.754514',1,10,'1','Home',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(148,'2013-02-06 03:44:57.621025',1,10,'2','Hakkımızda',2,'Changed page_title, meta_description, meta_keywords, language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(149,'2013-02-06 04:17:03.609742',1,29,'2','Güzel araba modeli',2,'Changed meta_keywords_tr and meta_description_tr.');
INSERT INTO 'django_admin_log' VALUES(150,'2013-02-06 06:08:11.680498',1,31,'3','Ford Transit',2,'Changed meta_keywords_tr, meta_description_en, meta_description_tr and meta_description_de.');
INSERT INTO 'django_admin_log' VALUES(151,'2013-02-07 10:35:32.022305',1,10,'8','Fiyat Talep Formu',1,'');
INSERT INTO 'django_admin_log' VALUES(152,'2013-02-07 10:35:56.291020',1,10,'8','Fiyat Talep Formu',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(153,'2013-02-07 10:36:00.620235',1,10,'8','Request',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(154,'2013-02-07 10:37:53.202889',1,10,'8','Request',2,'Changed moderator_state.');
INSERT INTO 'django_admin_log' VALUES(155,'2013-02-07 10:38:06.058491',1,10,'8','Request',2,'Changed language and moderator_state.');
INSERT INTO 'django_admin_log' VALUES(156,'2013-02-08 01:45:55.686060',1,10,'1','Ana sayfa',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(157,'2013-02-08 01:46:04.602012',1,10,'1','Home',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(158,'2013-02-08 01:46:11.248320',1,10,'1','Home',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(159,'2013-02-08 01:46:20.976533',1,10,'1','HOME',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(160,'2013-02-08 01:46:52.229631',1,10,'7','Su Pompaları',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(161,'2013-02-08 01:47:06.590790',1,10,'7','Water Pumps',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(162,'2013-02-08 01:47:14.812637',1,10,'7','WATERr PUMPS',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(163,'2013-02-08 01:47:29.799882',1,10,'7','Wasser Pumpen',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(164,'2013-02-08 01:47:33.670135',1,10,'7','SU POMPALARI',2,'moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(165,'2013-02-08 01:47:46.937780',1,10,'6','İthal Ürünler',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(166,'2013-02-08 01:48:20.458320',1,10,'6','Import Products',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(167,'2013-02-08 01:48:38.778949',1,10,'6','Import Produkten',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(168,'2013-02-08 01:48:50.470930',1,10,'2','Hakkımızda',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(169,'2013-02-08 01:48:59.551701',1,10,'2','Über Uns',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(170,'2013-02-08 01:49:09.773778',1,10,'2','About us',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(171,'2013-02-08 01:49:43.834553',1,10,'8','Fiyat Talep Formu',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(172,'2013-02-08 01:49:55.481621',1,10,'8','Request',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(173,'2013-02-08 01:50:03.759143',1,10,'8','Request',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(174,'2013-02-08 01:50:06.392288',1,10,'8','REQUEST',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(175,'2013-02-08 01:50:19.344758',1,10,'5','İletişim',2,'title ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(176,'2013-02-08 01:50:29.965226',1,10,'5','Contact',2,'title, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(177,'2013-02-08 01:50:57.254046',1,10,'5','CONTACT',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(178,'2013-02-08 01:51:03.832045',1,10,'5','CONTACT',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(179,'2013-02-08 01:51:42.410519',1,10,'9','FAALİYETLER',1,'');
INSERT INTO 'django_admin_log' VALUES(180,'2013-02-08 01:52:11.359039',1,10,'10','SERTİFİKALAR',1,'');
INSERT INTO 'django_admin_log' VALUES(181,'2013-02-08 01:53:28.276342',1,10,'10','SERTİFİKALAR',2,'moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(182,'2013-02-08 01:57:24.204723',1,10,'11','İK',1,'');
INSERT INTO 'django_admin_log' VALUES(183,'2013-02-08 01:57:55.126676',1,10,'11','İK',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(184,'2013-02-08 01:58:02.763436',1,10,'11','IK',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(185,'2013-02-08 01:58:09.857830',1,10,'11','IK',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(186,'2013-02-08 01:58:47.475257',1,10,'10','SERTİFİKALAR',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(187,'2013-02-08 01:59:24.600125',1,10,'10','CERTIFICATES',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(188,'2013-02-08 01:59:46.822142',1,10,'9','FAALİYETLER',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(189,'2013-02-08 02:00:10.150947',1,10,'9','FAALİYETLER',2,'title, slug, language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(190,'2013-02-08 02:00:11.191921',1,10,'9','OPERATIONS',2,'language ve moderator_state değiştirildi.');
INSERT INTO 'django_admin_log' VALUES(191,'2013-02-08 06:24:31.212269',1,10,'6','IIMPORT PRODUKTEN',2,'title, language ve moderator_state değiştirildi.');
DROP TABLE IF EXISTS 'django_content_type';
CREATE TABLE 'django_content_type' (
    'id' INT NOT NULL PRIMARY KEY,
    'name' varchar(100) NOT NULL,
    'app_label' varchar(100) NOT NULL,
    'model' varchar(100) NOT NULL,
    UNIQUE ('app_label', 'model')
);
INSERT INTO 'django_content_type' VALUES(1,'permission','auth','permission');
INSERT INTO 'django_content_type' VALUES(2,'group','auth','group');
INSERT INTO 'django_content_type' VALUES(3,'user','auth','user');
INSERT INTO 'django_content_type' VALUES(4,'content type','contenttypes','contenttype');
INSERT INTO 'django_content_type' VALUES(5,'session','sessions','session');
INSERT INTO 'django_content_type' VALUES(6,'site','sites','site');
INSERT INTO 'django_content_type' VALUES(7,'log entry','admin','logentry');
INSERT INTO 'django_content_type' VALUES(8,'placeholder','cms','placeholder');
INSERT INTO 'django_content_type' VALUES(9,'cms plugin','cms','cmsplugin');
INSERT INTO 'django_content_type' VALUES(10,'page','cms','page');
INSERT INTO 'django_content_type' VALUES(11,'PageModerator','cms','pagemoderator');
INSERT INTO 'django_content_type' VALUES(12,'Page moderator state','cms','pagemoderatorstate');
INSERT INTO 'django_content_type' VALUES(13,'Page global permission','cms','globalpagepermission');
INSERT INTO 'django_content_type' VALUES(14,'Page permission','cms','pagepermission');
INSERT INTO 'django_content_type' VALUES(15,'User (page)','cms','pageuser');
INSERT INTO 'django_content_type' VALUES(16,'User group (page)','cms','pageusergroup');
INSERT INTO 'django_content_type' VALUES(17,'title','cms','title');
INSERT INTO 'django_content_type' VALUES(18,'cache key','menus','cachekey');
INSERT INTO 'django_content_type' VALUES(19,'migration history','south','migrationhistory');
INSERT INTO 'django_content_type' VALUES(20,'text','text','text');
INSERT INTO 'django_content_type' VALUES(21,'picture','picture','picture');
INSERT INTO 'django_content_type' VALUES(22,'link','link','link');
INSERT INTO 'django_content_type' VALUES(23,'file','file','file');
INSERT INTO 'django_content_type' VALUES(24,'Snippet','snippet','snippet');
INSERT INTO 'django_content_type' VALUES(25,'Snippet','snippet','snippetptr');
INSERT INTO 'django_content_type' VALUES(26,'google map','googlemap','googlemap');
INSERT INTO 'django_content_type' VALUES(28,'brand','products','brand');
INSERT INTO 'django_content_type' VALUES(29,'product','products','product');
INSERT INTO 'django_content_type' VALUES(30,'product type','products','producttype');
INSERT INTO 'django_content_type' VALUES(31,'category','products','category');
INSERT INTO 'django_content_type' VALUES(32,'hello','guest','hello');
INSERT INTO 'django_content_type' VALUES(33,'Form','form_designer','formdefinition');
INSERT INTO 'django_content_type' VALUES(34,'field','form_designer','formdefinitionfield');
INSERT INTO 'django_content_type' VALUES(35,'form log','form_designer','formlog');
INSERT INTO 'django_content_type' VALUES(36,'form value','form_designer','formvalue');
INSERT INTO 'django_content_type' VALUES(37,'cms form definition','form_designer_form','cmsformdefinition');
INSERT INTO 'django_content_type' VALUES(38,'yandex map','cmsplugin_yandexmap','yandexmap');
DROP TABLE IF EXISTS 'django_session';
CREATE TABLE 'django_session' (
    'session_key' varchar(40) NOT NULL PRIMARY KEY,
    'session_data' text NOT NULL,
    'expire_date' datetime NOT NULL
);
INSERT INTO 'django_session' VALUES('bfad3d8a3ccaed05b4ea70e597173320','ZWI0MmUwY2RiNWQ0MTc2MzU1YWU3ZTZlOGIyNWIxMTgyMWFiNmEyMTqAAn1xAShVDmNtc19hZG1p
bl9zaXRlSwFVDV9hdXRoX3VzZXJfaWRLAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29u
dHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZFUIY21zX2VkaXSIVQ9kamFuZ29fbGFuZ3Vh
Z2VYAgAAAGVucQJ1Lg==
','2013-01-25 09:40:14.332739');
INSERT INTO 'django_session' VALUES('515f93cad3feeeceec20607406eba0c1','ODIxM2ZlMDI2NzU3ZWY3MGFkYjNjMGYxMTJkMTZmNTZmMzg4ZGZjYjqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-02-09 04:37:22.435404');
INSERT INTO 'django_session' VALUES('bfc84e671caae2b547e6c4bff4013bef','ZGM3NTZiM2RjZTQzMTU2ZmFmYTI5ZjYwMDM0MzczOTJiNjNhNzFhZTqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ9kamFuZ29fbGFuZ3VhZ2VYAgAAAHRyVQ1fYXV0aF91c2VyX2lkcQRLAXUu
','2013-02-14 10:55:08.487569');
INSERT INTO 'django_session' VALUES('d75abc56351b5f833a4fa82ff30676f9','MWExMmFmNWNkYTJiNDIzYWZjYzMyZjM0MTJhODdjNDViNmRlNGVhYzqAAn1xAShVDV9hdXRoX3Vz
ZXJfaWRLAVUSX2F1dGhfdXNlcl9iYWNrZW5kVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRz
Lk1vZGVsQmFja2VuZFUPZGphbmdvX2xhbmd1YWdlcQJYAgAAAHRycQN1Lg==
','2013-02-18 06:37:07.888776');
INSERT INTO 'django_session' VALUES('438b9d5f249fabb7e6e14ab505a3c73f','MzNkNjk1NjI1YzRlMjkxODI0YWMyNTI4YzczNDE1MTdlMzE5MzFmZjqAAn1xAShVDmNtc19hZG1p
bl9zaXRlSwFVDV9hdXRoX3VzZXJfaWRLAVUJX21lc3NhZ2VzXXECKGNkamFuZ28uY29udHJpYi5t
ZXNzYWdlcy5zdG9yYWdlLmJhc2UKTWVzc2FnZQpxAymBcQR9cQUoVQpleHRyYV90YWdzcQZYAAAA
AFUHbWVzc2FnZXEHWFYAAAAiWcO8a3NlbCBBdXRvbW90aXZlLCBkZW5leWltbGkgLi4uLiIgaXNp
bWxpIHRleHQgZWtsZW5kaS4gVGVrcmFyIGTDvHplbmxleWViaWxpcnNpbml6LlUFbGV2ZWxxCEsU
dWJoAymBcQl9cQooaAZYAAAAAGgHWF0AAAAiWcO8a3NlbCBBdXRvbW90aXZlLCBkZW5leWltbGkg
Li4uLiIgaXNpbWxpIHRleHQgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJz
aW5pei5oCEsUdWJoAymBcQt9cQwoaAZYAAAAAGgHWF0AAAAiWcO8a3NlbCBBdXRvbW90aXZlLCBk
ZW5leWltbGkgLi4uLiIgaXNpbWxpIHRleHQgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5s
ZXllYmlsaXJzaW5pei5oCEsUdWJoAymBcQ19cQ4oaAZYAAAAAGgHWFgAAAAiWcO8a3NlbCBBdXRv
bW90aXZlIG3DvMWfdGVyaXNpbmUgLi4uIiBpc2ltbGkgdGV4dCBla2xlbmRpLiBUZWtyYXIgZMO8
emVubGV5ZWJpbGlyc2luaXouaAhLFHViaAMpgXEPfXEQKGgGWAAAAABoB1hDAAAAIjMyIiBpc2lt
bGkgY21zIHBsdWdpbiBkZcSfacWfdGlyaWxkaS4gVGVrcmFyIGTDvHplbmxleWViaWxpcnNpbml6
LmgISxR1YmgDKYFxEX1xEihoBlgAAAAAaAdYQwAAACIzMiIgaXNpbWxpIGNtcyBwbHVnaW4gZGXE
n2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5pei5oCEsUdWJoAymBcRN9cRQo
aAZYAAAAAGgHWEoAAABUaGUgY21zIHBsdWdpbiAiMzMiIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxs
eS4gWW91IG1heSBlZGl0IGl0IGFnYWluIGJlbG93LmgISxR1YmgDKYFxFX1xFihoBlgAAAAAaAdY
XQAAAGNtcyBwbHVnaW4gIjM0IiB3dXJkZSBlcmZvbGdyZWljaCBnZcOkbmRlcnQuIERhcyBFbGVt
ZW50IGthbm4gamV0enQgZXJuZXV0IGJlYXJiZWl0ZXQgd2VyZGVuLmgISxR1YmgDKYFxF31xGCho
BlgAAAAAaAdYOwAAAFRoZSBwcm9kdWN0ICJHw7x6ZWwgYXJhYmEgbW9kZWxpIiB3YXMgY2hhbmdl
ZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXEZfXEaKGgGWAAAAABoB1g5AAAAVGhlIHByb2R1Y3Qg
IlllbmkgQXJhYmEgTW9kZWxpIiB3YXMgY2hhbmdlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXEb
fXEcKGgGWAAAAABoB1g5AAAAVGhlIHByb2R1Y3QgIlllbmkgQXJhYmEgTW9kZWxpIiB3YXMgY2hh
bmdlZCBzdWNjZXNzZnVsbHkuaAhLFHViaAMpgXEdfXEeKGgGWAAAAABoB1hbAAAAVGhlIGNtcyBm
b3JtIGRlZmluaXRpb24gImNvbnRhY3QtZm9ybSIgd2FzIGFkZGVkIHN1Y2Nlc3NmdWxseS4gWW91
IG1heSBlZGl0IGl0IGFnYWluIGJlbG93LmgISxR1YmgDKYFxH31xIChoBlgAAAAAaAdYMQAAAFRo
ZSBGb3JtICJjb250YWN0LWZvcm0iIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymB
cSF9cSIoaAZYAAAAAGgHWC8AAABUaGFuayB5b3UsIHRoZSBkYXRhIHdhcyBzdWJtaXR0ZWQgc3Vj
Y2Vzc2Z1bGx5LmgISxl1YmgDKYFxI31xJChoBlgAAAAAaAdYagAAACIgKFRha3NpbSBDYWRkZXNp
IE5vOiA1MyBUYWtzaW0sIDM0MDEwIMSwc3RhbmJ1bCkiIGlzaW1saSBnb29nbGUgbWFwIGVrbGVu
ZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5pei5oCEsUdWJoAymBcSV9cSYoaAZYAAAAAGgH
WGkAAAAiIChUYWtzaW0gQ2FkZGVzaSBObzogNTMgVGFrc2ltLCAzNDAxMCBJc3RhbmJ1bCkiIGlz
aW1saSB5YW5kZXggbWFwIGVrbGVuZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5pei5oCEsU
dWJoAymBcSd9cSgoaAZYAAAAAGgHWGkAAAAiIChUYWtzaW0gQ2FkZGVzaSBObzogNTMgVGFrc2lt
LCAzNDAxMCBJc3RhbmJ1bCkiIGlzaW1saSBnb29nbGUgbWFwIGVrbGVuZGkuIFRla3JhciBkw7x6
ZW5sZXllYmlsaXJzaW5pei5oCEsUdWJoAymBcSl9cSooaAZYAAAAAGgHWHAAAAAiIChUYWtzaW0g
Q2FkZGVzaSBObzogNTMgVGFrc2ltLCAzNDAxMCBJc3RhbmJ1bCkiIGlzaW1saSBnb29nbGUgbWFw
IGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhLFHViaAMpgXEr
fXEsKGgGWAAAAABoB1gpAAAAIsSwbGV0acWfaW0iIGlzaW1saSBzYXlmYSBkZcSfacWfdGlyaWxk
aS5oCEsUdWJoAymBcS19cS4oaAZYAAAAAGgHWEAAAAAiSG9tZSIgaXNpbWxpIHNheWZhIGRlxJ9p
xZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhLFHViaAMpgXEvfXEwKGgG
WAAAAABoB1gjAAAAIkhvbWUiIGlzaW1saSBzYXlmYSBkZcSfacWfdGlyaWxkaS5oCEsUdWJoAymB
cTF9cTIoaAZYAAAAAGgHWDEAAABUaGUgcGFnZSAiSGFra8SxbcSxemRhIiB3YXMgY2hhbmdlZCBz
dWNjZXNzZnVsbHkuaAhLFHViaAMpgXEzfXE0KGgGWAAAAABoB1g7AAAAVGhlIHByb2R1Y3QgIkfD
vHplbCBhcmFiYSBtb2RlbGkiIHdhcyBjaGFuZ2VkIHN1Y2Nlc3NmdWxseS5oCEsUdWJoAymBcTV9
cTYoaAZYAAAAAGgHWDUAAABUaGUgY2F0ZWdvcnkgIkZvcmQgVHJhbnNpdCIgd2FzIGNoYW5nZWQg
c3VjY2Vzc2Z1bGx5LmgISxR1YmVVIHJvc2V0dGFfY2FjaGVfc3RvcmFnZV9rZXlfcHJlZml4VSg3
OTlmNmUxNjRlNTljNTUxNjZmMGU0ZjE4OWVlZWUwOTg5Njk5NjI1VRJfYXV0aF91c2VyX2JhY2tl
bmRVKWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQhjbXNfZWRpdIhV
D2RqYW5nb19sYW5ndWFnZVgCAAAAdHJxN3Uu
','2013-02-20 06:08:14.716310');
INSERT INTO 'django_session' VALUES('e893c7f43b02292496667d09e0fed734','ODc1MDhjOGNjNTA4N2Q2NWE0YmVmMDE1ZGJlNjM1MzU5YzRhMzAwNjqAAn1xAShVDmNtc19hZG1p
bl9zaXRlSwFVCGNtc19lZGl0iFUNX2F1dGhfdXNlcl9pZEsBVRJfYXV0aF91c2VyX2JhY2tlbmRV
KWRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQlfbWVzc2FnZXNdcQIo
Y2RqYW5nby5jb250cmliLm1lc3NhZ2VzLnN0b3JhZ2UuYmFzZQpNZXNzYWdlCnEDKYFxBH1xBShV
CmV4dHJhX3RhZ3NxBlgAAAAAVQdtZXNzYWdlcQdYPgAAACI1XzEuanBnIiBpc2ltbGkgcGljdHVy
ZSBla2xlbmRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouVQVsZXZlbHEISxR1YmgDKYFx
CX1xCihoBlgAAAAAaAdYPgAAACI2XzEuanBnIiBpc2ltbGkgcGljdHVyZSBla2xlbmRpLiBUZWty
YXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhLFHViaAMpgXELfXEMKGgGWAAAAABoB1g+AAAAIjdf
MS5qcGciIGlzaW1saSBwaWN0dXJlIGVrbGVuZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5p
ei5oCEsUdWJoAymBcQ19cQ4oaAZYAAAAAGgHWF8AAAAiSGFra8SxbcSxemRhWVVLU0VMIGZpcm1h
c8SxIDE5NjAgLi4uIiBpc2ltbGkgdGV4dCBkZcSfacWfdGlyaWxkaS4gVGVrcmFyIGTDvHplbmxl
eWViaWxpcnNpbml6LmgISxR1YmgDKYFxD31xEChoBlgAAAAAaAdYQQAAACJpbWFnZTEuanBnIiBp
c2ltbGkgcGljdHVyZSBla2xlbmRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhLFHVi
aAMpgXERfXESKGgGWAAAAABoB1g3AAAAIi4uLiIgaXNpbWxpIHRleHQgZWtsZW5kaS4gVGVrcmFy
IGTDvHplbmxleWViaWxpcnNpbml6LmgISxR1YmVVD2RqYW5nb19sYW5ndWFnZVgCAAAAdHJxE3Uu
','2013-02-22 08:54:10.375286');
INSERT INTO 'django_session' VALUES('4b341b729a87ac08401089c1422c2163','YWRjNGU2YWU5NjUwMzQ5M2ExY2I4MDQ2NDBiNTc5OTk1NzY0ZTg5ZTqAAn1xAShVDmNtc19hZG1p
bl9zaXRlSwFVCV9tZXNzYWdlc11xAihjZGphbmdvLmNvbnRyaWIubWVzc2FnZXMuc3RvcmFnZS5i
YXNlCk1lc3NhZ2UKcQMpgXEEfXEFKFUKZXh0cmFfdGFnc3EGWAAAAABVB21lc3NhZ2VxB1gtAAAA
IlNFUlTEsEbEsEtBTEFSIiBpc2ltbGkgc2F5ZmEgZGXEn2nFn3RpcmlsZGkuVQVsZXZlbHEISxR1
YmgDKYFxCX1xCihoBlgAAAAAaAdYGwAAACLEsEsiIGlzaW1saSBzYXlmYSBla2xlbmRpLmgISxR1
YmgDKYFxC31xDChoBlgAAAAAaAdYPwAAACLEsEsiIGlzaW1saSBzYXlmYSBkZcSfacWfdGlyaWxk
aS4gVGVrcmFyIGTDvHplbmxleWViaWxpcnNpbml6LmgISxR1YmgDKYFxDX1xDihoBlgAAAAAaAdY
PgAAACJJSyIgaXNpbWxpIHNheWZhIGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJp
bGlyc2luaXouaAhLFHViaAMpgXEPfXEQKGgGWAAAAABoB1ghAAAAIklLIiBpc2ltbGkgc2F5ZmEg
ZGXEn2nFn3RpcmlsZGkuaAhLFHViaAMpgXERfXESKGgGWAAAAABoB1hKAAAAIlNFUlTEsEbEsEtB
TEFSIiBpc2ltbGkgc2F5ZmEgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJz
aW5pei5oCEsUdWJoAymBcRN9cRQoaAZYAAAAAGgHWCsAAAAiQ0VSVElGSUNBVEVTIiBpc2ltbGkg
c2F5ZmEgZGXEn2nFn3RpcmlsZGkuaAhLFHViaAMpgXEVfXEWKGgGWAAAAABoB1hIAAAAIkZBQUzE
sFlFVExFUiIgaXNpbWxpIHNheWZhIGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJp
bGlyc2luaXouaAhLFHViaAMpgXEXfXEYKGgGWAAAAABoB1hIAAAAIkZBQUzEsFlFVExFUiIgaXNp
bWxpIHNheWZhIGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhL
FHViaAMpgXEZfXEaKGgGWAAAAABoB1gpAAAAIk9QRVJBVElPTlMiIGlzaW1saSBzYXlmYSBkZcSf
acWfdGlyaWxkaS5oCEsUdWJoAymBcRt9cRwoaAZYAAAAAGgHWDAAAAAiSUlNUE9SVCBQUk9EVUtU
RU4iIGlzaW1saSBzYXlmYSBkZcSfacWfdGlyaWxkaS5oCEsUdWJoAymBcR19cR4oaAZYAAAAAGgH
WF8AAAAiSGFra8SxbcSxemRhWVVLU0VMIGZpcm1hc8SxIDE5NjAgLi4uIiBpc2ltbGkgdGV4dCBk
ZcSfacWfdGlyaWxkaS4gVGVrcmFyIGTDvHplbmxleWViaWxpcnNpbml6LmgISxR1YmgDKYFxH31x
IChoBlgAAAAAaAdYXwAAACJIYWtrxLFtxLF6ZGFZVUtTRUwgZmlybWFzxLEgMTk2MCAuLi4iIGlz
aW1saSB0ZXh0IGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhL
FHViaAMpgXEhfXEiKGgGWAAAAABoB1hfAAAAIkhha2vEsW3EsXpkYVlVS1NFTCBmaXJtYXPEsSAx
OTYwIC4uLiIgaXNpbWxpIHRleHQgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmls
aXJzaW5pei5oCEsUdWJoAymBcSN9cSQoaAZYAAAAAGgHWF8AAAAiSGFra8SxbcSxemRhWVVLU0VM
IGZpcm1hc8SxIDE5NjAgLi4uIiBpc2ltbGkgdGV4dCBkZcSfacWfdGlyaWxkaS4gVGVrcmFyIGTD
vHplbmxleWViaWxpcnNpbml6LmgISxR1YmgDKYFxJX1xJihoBlgAAAAAaAdYPQAAACJGxLBSTUEu
Li4iIGlzaW1saSB0ZXh0IGVrbGVuZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5pei5oCEsU
dWJoAymBcSd9cSgoaAZYAAAAAGgHWDcAAAAiLi4uIiBpc2ltbGkgdGV4dCBla2xlbmRpLiBUZWty
YXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhLFHViaAMpgXEpfXEqKGgGWAAAAABoB1hEAAAAIkbE
sFJNQS4uLiIgaXNpbWxpIHRleHQgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmls
aXJzaW5pei5oCEsUdWJoAymBcSt9cSwoaAZYAAAAAGgHWEkAAAAiQURSRVMgOiBUYWtzaW0gLi4u
Li4uIiBpc2ltbGkgdGV4dCBla2xlbmRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXouaAhL
FHViaAMpgXEtfXEuKGgGWAAAAABoB1hQAAAAIkFEUkVTIDogVGFrc2ltIC4uLi4uLiIgaXNpbWxp
IHRleHQgZGXEn2nFn3RpcmlsZGkuIFRla3JhciBkw7x6ZW5sZXllYmlsaXJzaW5pei5oCEsUdWJo
AymBcS99cTAoaAZYAAAAAGgHWFAAAAAiQURSRVMgOiBUYWtzaW0gLi4uLi4uIiBpc2ltbGkgdGV4
dCBkZcSfacWfdGlyaWxkaS4gVGVrcmFyIGTDvHplbmxleWViaWxpcnNpbml6LmgISxR1YmgDKYFx
MX1xMihoBlgAAAAAaAdYXwAAACJIYWtrxLFtxLF6ZGFZVUtTRUwgZmlybWFzxLEgMTk2MCAuLi4i
IGlzaW1saSB0ZXh0IGRlxJ9pxZ90aXJpbGRpLiBUZWtyYXIgZMO8emVubGV5ZWJpbGlyc2luaXou
aAhLFHViZVUNX2F1dGhfdXNlcl9pZEsBVRJfYXV0aF91c2VyX2JhY2tlbmRVKWRqYW5nby5jb250
cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kVQhjbXNfZWRpdIhVD2RqYW5nb19sYW5ndWFn
ZVgCAAAAdHJxM3Uu
','2013-02-22 08:31:59.705009');
INSERT INTO 'django_session' VALUES('910664d0296d38cd63c58843366ebc81','ZGU4ZWNlNjZlZjFmZTNmOTNlODY3ZDQyMTYyYTNlNGE0ZmUwYWY2MTqAAn1xAVUPZGphbmdvX2xh
bmd1YWdlcQJVAnRycQNzLg==
','2013-02-23 14:21:12.535352');
DROP TABLE IF EXISTS 'django_site';
CREATE TABLE 'django_site' (
    'id' INT NOT NULL PRIMARY KEY,
    'domain' varchar(100) NOT NULL,
    'name' varchar(50) NOT NULL
);
INSERT INTO 'django_site' VALUES(1,'example.com','example.com');
DROP TABLE IF EXISTS 'form_designer_formdefinition';
CREATE TABLE 'form_designer_formdefinition' ('save_uploaded_files' bool NOT NULL DEFAULT 1, 'message_template' text, 'private_hash' varchar(40) NOT NULL DEFAULT '', 'id' INT PRIMARY KEY, 'title' varchar(255), 'mail_uploaded_files' bool NOT NULL DEFAULT 1, 'submit_label' varchar(255), 'require_hash' bool NOT NULL DEFAULT 0, 'method' varchar(10) NOT NULL, 'success_message' varchar(255), 'body' text, 'success_redirect' bool NOT NULL, 'display_logged' bool NOT NULL DEFAULT 0, 'mail_to' varchar(255), 'mail_subject' varchar(255), 'success_clear' bool NOT NULL, 'public_hash' varchar(40) NOT NULL DEFAULT '', 'allow_get_initial' bool NOT NULL, 'mail_from' varchar(255), 'name' varchar(255) NOT NULL UNIQUE, 'error_message' varchar(255), 'log_data' bool NOT NULL, 'form_template_name' varchar(255), 'action' varchar(255));
INSERT INTO 'form_designer_formdefinition' VALUES(1,'','dd104073909acce691a3428a45a89ee9debca27a',1,'',0,'',0,'POST','','',1,0,'','',1,'86a22fed7325204f4ef8b8e57c3d46fd53f447df',1,'','contact-form','',1,NULL,'');
DROP TABLE IF EXISTS 'form_designer_formdefinitionfield';
CREATE TABLE 'form_designer_formdefinitionfield' ('initial' text, 'choice_model_empty_label' varchar(255), 'choice_model' varchar(255), 'form_definition_id' INT NOT NULL, 'max_digits' INT, 'help_text' varchar(255), 'field_class' varchar(32) NOT NULL, 'id' INT PRIMARY KEY, 'regex' varchar(255) NULL, 'choice_values' text, 'label' varchar(255), 'max_length' INT, 'widget' varchar(255), 'choice_labels' text, 'max_value' real, 'min_value' real, 'include_result' bool NOT NULL, 'min_length' INT, 'name' varchar(255) NOT NULL, 'decimal_places' INT, 'required' bool NOT NULL, 'position' INT);
INSERT INTO 'form_designer_formdefinitionfield' VALUES('','','',1,NULL,'','django.forms.CharField',1,'','','İsim',NULL,NULL,'',NULL,NULL,1,NULL,'isim',NULL,1,1);
INSERT INTO 'form_designer_formdefinitionfield' VALUES('','','',1,NULL,'','django.forms.EmailField',2,'','','Email',NULL,NULL,'',NULL,NULL,1,NULL,'Email',NULL,1,2);
DROP TABLE IF EXISTS 'form_designer_formlog';
CREATE TABLE 'form_designer_formlog' ('form_definition_id' INT NOT NULL, 'created_by_id' INT, 'id' INT PRIMARY KEY, 'tmp_data' text, 'created' datetime NOT NULL);
INSERT INTO 'form_designer_formlog' VALUES(1,1,1,NULL,'2013-02-05 10:01:58.784560');
DROP TABLE IF EXISTS 'form_designer_formvalue';
CREATE TABLE 'form_designer_formvalue' ('id' INT NOT NULL PRIMARY KEY, 'form_log_id' INT NOT NULL, 'field_name' varchar(255) NOT NULL, 'value' text NULL);
INSERT INTO 'form_designer_formvalue' VALUES(1,1,'isim','Canbey Bilgili');
INSERT INTO 'form_designer_formvalue' VALUES(2,1,'Email','xanbei@gmail.com');
DROP TABLE IF EXISTS 'menus_cachekey';
CREATE TABLE 'menus_cachekey' (
    'id' INT NOT NULL PRIMARY KEY,
    'language' varchar(255) NOT NULL,
    'site' INT unsigned NOT NULL,
    'key' varchar(255) NOT NULL
);
INSERT INTO 'menus_cachekey' VALUES(1,'en',1,'cms-menu_nodes_en_1_1_user');
INSERT INTO 'menus_cachekey' VALUES(2,'de',1,'cms-menu_nodes_de_1_1_user');
INSERT INTO 'menus_cachekey' VALUES(3,'tr',1,'cms-menu_nodes_tr_1_1_user');
INSERT INTO 'menus_cachekey' VALUES(4,'tr',1,'cms-menu_nodes_tr_1');
DROP TABLE IF EXISTS 'products_category';
CREATE TABLE 'products_category' ('meta_description' varchar(200), 'rght' INT unsigned NOT NULL DEFAULT 0, 'meta_keywords' varchar(200), 'meta_keywords_de' varchar(200), 'name' varchar(150) NOT NULL, 'level' INT unsigned NOT NULL DEFAULT 0, 'meta_description_de' varchar(200) NULL, 'meta_description_tr' varchar(200), 'meta_description_en' varchar(200), 'id' INT PRIMARY KEY, 'meta_keywords_en' varchar(200), 'lft' INT unsigned NOT NULL DEFAULT 0, 'name_de' varchar(150), 'meta_keywords_tr' varchar(200), 'parent_id' INT, 'tree_id' INT unsigned NOT NULL DEFAULT 0, 'position' smallint unsigned NOT NULL DEFAULT 0, 'name_en' varchar(150), 'name_tr' varchar(150), 'slug' varchar(100) NOT NULL UNIQUE, 'product_type_id' INT);
INSERT INTO 'products_category' VALUES(NULL,8,NULL,NULL,'Debriyaj Disk ve Baskıları',0,NULL,NULL,NULL,1,NULL,1,'Debriyajen',NULL,NULL,2,0,'Clutch','Debriyaj Disk ve Baskıları','debriyaj-disk-ve-baskilari',1);
INSERT INTO 'products_category' VALUES(NULL,4,NULL,NULL,'Fren Disk ve Saçları',0,NULL,NULL,NULL,2,NULL,1,'Braken',NULL,NULL,1,1,'Brake','Fren Disk ve Saçları','fren-disk-ve-saclari',1);
INSERT INTO 'products_category' VALUES('ford transit',5,'ford transit','','Ford Transit',1,'ford transit','ford transit','ford transit',3,'',4,'Ford Transit','ford transit',1,2,0,'Ford Transit','Ford Transit','ford-transit',1);
INSERT INTO 'products_category' VALUES(NULL,3,NULL,NULL,'Ford Traktör',1,NULL,NULL,NULL,4,NULL,2,'Ford Trucktor',NULL,2,1,0,'Ford Trucktor','Ford Traktör','ford-trucktor',1);
INSERT INTO 'products_category' VALUES(NULL,3,NULL,NULL,'ISUZU',1,NULL,NULL,NULL,5,NULL,2,'ISUZU',NULL,1,2,0,'ISUZU','ISUZU','isuzu',1);
INSERT INTO 'products_category' VALUES(NULL,7,NULL,NULL,'Mitsubishi',1,NULL,NULL,NULL,6,NULL,6,'Mitsubishi',NULL,1,2,0,'Mitsubishi','Mitsubishi','mitsubishi',1);
INSERT INTO 'products_category' VALUES(NULL,6,NULL,NULL,'KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL MOTOR',0,NULL,NULL,NULL,7,NULL,1,'KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL MOTOR',NULL,NULL,3,0,'KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL MOTOR','KAMYON - TREYLER - OTOBÜS - TİCARİ - ENDÜSTRİYEL MOTOR','kamyon-treyler-otobus-ticari-endustriyel-m',2);
INSERT INTO 'products_category' VALUES(NULL,3,NULL,NULL,'BEDFORD',1,NULL,NULL,NULL,8,NULL,2,'BEDFORD',NULL,7,3,0,'BEDFORD','BEDFORD','bedford',2);
INSERT INTO 'products_category' VALUES(NULL,5,NULL,NULL,'CUMMINS',1,NULL,NULL,NULL,9,NULL,4,'CUMMINS',NULL,7,3,0,'CUMMINS','CUMMINS','cummins',2);
INSERT INTO 'products_category' VALUES(NULL,4,NULL,NULL,'TRAKTÖR - BİÇERDÖVER',0,NULL,NULL,NULL,10,NULL,1,'TRAKTÖR - BİÇERDÖVER',NULL,NULL,4,0,'TRUCKTOR - HARVESTER','TRAKTÖR - BİÇERDÖVER','traktor-bicerdover',2);
INSERT INTO 'products_category' VALUES(NULL,3,NULL,NULL,'ALLIS CHALMERS',1,NULL,NULL,NULL,11,NULL,2,'ALLIS CHALMERS',NULL,10,4,0,'ALLIS CHALMERS','ALLIS CHALMERS','allis-chalmers',2);
DROP TABLE IF EXISTS 'products_product';
CREATE TABLE 'products_product' ('engine' varchar(200) NOT NULL DEFAULT '0', 'meta_description' varchar(200), 'meta_keywords' varchar(200), 'meta_keywords_de' varchar(200), 'description' text NOT NULL DEFAULT '0', 'title' varchar(200) NOT NULL, 'image' varchar(100) NOT NULL DEFAULT '0', 'created' datetime NOT NULL, 'meta_description_de' varchar(200) NULL, 'slug' varchar(100) NOT NULL UNIQUE, 'meta_keywords_en' varchar(200), 'meta_keywords_tr' varchar(200), 'oem' varchar(250) NOT NULL DEFAULT '0', 'meta_description_tr' varchar(200), 'category_id' INT, 'type' varchar(200) NOT NULL DEFAULT '0', 'id' INT PRIMARY KEY, 'meta_description_en' varchar(200));
INSERT INTO 'products_product' VALUES('0',NULL,NULL,NULL,'0','Yeni Araba Modeli','products/Alokartvizit--Online-Tasarim--30012013.jpg','2013-01-09 05:26:57.329686',NULL,'yeni-araba-modeli',NULL,NULL,'000',NULL,8,'0',1,NULL);
INSERT INTO 'products_product' VALUES('0','bu ürün gerçekten iyi','en iyi araba modeli burada','','0','Güzel araba modeli','products/istanbul-002.jpg','2013-01-11 08:56:11.180681','','guzel-araba-modeli','','en iyi araba modeli burada','000,111,222,333,01213,2013','bu ürün gerçekten iyi',3,'0',2,'');
DROP TABLE IF EXISTS 'products_producttype';
CREATE TABLE 'products_producttype' ('name' varchar(50), 'slug' varchar(100) NOT NULL DEFAULT '0', 'name_de' varchar(50), 'name_tr' varchar(50), 'name_en' varchar(50), 'id' INT PRIMARY KEY);
INSERT INTO 'products_producttype' VALUES('İthal Ürünler','import','Import Producten','İthal Ürünler','Import Products',1);
INSERT INTO 'products_producttype' VALUES('Su Pompaları','pumps','Wasser Pumpen','Su Pompaları','Water Pumps',2);
DROP TABLE IF EXISTS 'snippet_snippet';
CREATE TABLE 'snippet_snippet' (
    'id' INT NOT NULL PRIMARY KEY,
    'name' varchar(255) NOT NULL UNIQUE,
    'html' text NOT NULL,
    'template' varchar(50) NOT NULL
);
DROP TABLE IF EXISTS 'south_migrationhistory';
CREATE TABLE 'south_migrationhistory' (
    'id' INT NOT NULL PRIMARY KEY,
    'app_name' varchar(255) NOT NULL,
    'migration' varchar(255) NOT NULL,
    'applied' datetime NOT NULL
);
INSERT INTO 'south_migrationhistory' VALUES(1,'cms','0001_initial','2013-01-08 05:17:15.696172');
INSERT INTO 'south_migrationhistory' VALUES(2,'cms','0002_auto_start','2013-01-08 05:17:15.699193');
INSERT INTO 'south_migrationhistory' VALUES(3,'cms','0003_remove_placeholder','2013-01-08 05:17:15.702180');
INSERT INTO 'south_migrationhistory' VALUES(4,'cms','0004_textobjects','2013-01-08 05:17:15.705234');
INSERT INTO 'south_migrationhistory' VALUES(5,'cms','0005_mptt_added_to_plugins','2013-01-08 05:17:15.709011');
INSERT INTO 'south_migrationhistory' VALUES(6,'text','0001_initial','2013-01-08 05:17:15.712006');
INSERT INTO 'south_migrationhistory' VALUES(7,'text','0002_freeze','2013-01-08 05:17:15.714942');
INSERT INTO 'south_migrationhistory' VALUES(8,'cms','0006_apphook','2013-01-08 05:17:15.717839');
INSERT INTO 'south_migrationhistory' VALUES(9,'cms','0007_apphook_longer','2013-01-08 05:17:15.720725');
INSERT INTO 'south_migrationhistory' VALUES(10,'cms','0008_redirects','2013-01-08 05:17:15.724111');
INSERT INTO 'south_migrationhistory' VALUES(11,'cms','0009_added_meta_fields','2013-01-08 05:17:15.727344');
INSERT INTO 'south_migrationhistory' VALUES(12,'cms','0010_5char_language','2013-01-08 05:17:15.730453');
INSERT INTO 'south_migrationhistory' VALUES(13,'cms','0011_title_overwrites','2013-01-08 05:17:15.733758');
INSERT INTO 'south_migrationhistory' VALUES(14,'cms','0012_publisher','2013-01-08 05:17:15.736418');
INSERT INTO 'south_migrationhistory' VALUES(15,'text','0003_publisher','2013-01-08 05:17:15.739149');
INSERT INTO 'south_migrationhistory' VALUES(16,'snippet','0001_initial','2013-01-08 05:17:15.742706');
INSERT INTO 'south_migrationhistory' VALUES(17,'snippet','0002_publisher','2013-01-08 05:17:15.745631');
INSERT INTO 'south_migrationhistory' VALUES(18,'picture','0001_initial','2013-01-08 05:17:15.749577');
INSERT INTO 'south_migrationhistory' VALUES(19,'picture','0002_link_rename','2013-01-08 05:17:15.753629');
INSERT INTO 'south_migrationhistory' VALUES(20,'picture','0003_freeze','2013-01-08 05:17:15.757962');
INSERT INTO 'south_migrationhistory' VALUES(21,'picture','0004_publisher','2013-01-08 05:17:15.761268');
INSERT INTO 'south_migrationhistory' VALUES(22,'link','0001_initial','2013-01-08 05:17:15.764130');
INSERT INTO 'south_migrationhistory' VALUES(23,'link','0002_link_rename','2013-01-08 05:17:15.767376');
INSERT INTO 'south_migrationhistory' VALUES(24,'link','0003_page_link','2013-01-08 05:17:15.770437');
INSERT INTO 'south_migrationhistory' VALUES(25,'link','0004_larger_link_names','2013-01-08 05:17:15.773936');
INSERT INTO 'south_migrationhistory' VALUES(26,'link','0005_publisher','2013-01-08 05:17:15.777519');
INSERT INTO 'south_migrationhistory' VALUES(27,'googlemap','0001_initial','2013-01-08 05:17:15.780493');
INSERT INTO 'south_migrationhistory' VALUES(28,'file','0001_initial','2013-01-08 05:17:15.783340');
INSERT INTO 'south_migrationhistory' VALUES(29,'file','0002_freeze','2013-01-08 05:17:15.786194');
INSERT INTO 'south_migrationhistory' VALUES(30,'file','0003_publisher','2013-01-08 05:17:15.788967');
INSERT INTO 'south_migrationhistory' VALUES(31,'cms','0013_site_copy','2013-01-08 05:17:15.791947');
INSERT INTO 'south_migrationhistory' VALUES(32,'cms','0014_sites_removed','2013-01-08 05:17:15.794994');
INSERT INTO 'south_migrationhistory' VALUES(33,'cms','0015_modified_by_added','2013-01-08 05:17:15.797835');
INSERT INTO 'south_migrationhistory' VALUES(34,'cms','0016_author_copy','2013-01-08 05:17:15.800573');
INSERT INTO 'south_migrationhistory' VALUES(35,'cms','0017_author_removed','2013-01-08 05:17:15.803401');
INSERT INTO 'south_migrationhistory' VALUES(36,'cms','0018_site_permissions','2013-01-08 05:17:15.806154');
INSERT INTO 'south_migrationhistory' VALUES(37,'cms','0019_public_table_renames','2013-01-08 05:17:15.809026');
INSERT INTO 'south_migrationhistory' VALUES(38,'text','0004_table_rename','2013-01-08 05:17:15.811966');
INSERT INTO 'south_migrationhistory' VALUES(39,'text','0005_publisher2','2013-01-08 05:17:15.814835');
INSERT INTO 'south_migrationhistory' VALUES(40,'snippet','0003_table_rename','2013-01-08 05:17:15.817470');
INSERT INTO 'south_migrationhistory' VALUES(41,'snippet','0004_publisher2','2013-01-08 05:17:15.820359');
INSERT INTO 'south_migrationhistory' VALUES(42,'picture','0005_table_rename','2013-01-08 05:17:15.824359');
INSERT INTO 'south_migrationhistory' VALUES(43,'picture','0006_float_added','2013-01-08 05:17:15.828039');
INSERT INTO 'south_migrationhistory' VALUES(44,'picture','0007_publisher2','2013-01-08 05:17:15.830784');
INSERT INTO 'south_migrationhistory' VALUES(45,'link','0006_table_rename','2013-01-08 05:17:15.833819');
INSERT INTO 'south_migrationhistory' VALUES(46,'link','0007_publisher2','2013-01-08 05:17:15.836750');
INSERT INTO 'south_migrationhistory' VALUES(47,'googlemap','0002_table_rename','2013-01-08 05:17:15.840296');
INSERT INTO 'south_migrationhistory' VALUES(48,'googlemap','0003_address_unified','2013-01-08 05:17:15.843532');
INSERT INTO 'south_migrationhistory' VALUES(49,'googlemap','0004_copy_address','2013-01-08 05:17:15.846459');
INSERT INTO 'south_migrationhistory' VALUES(50,'googlemap','0005_delete_street','2013-01-08 05:17:15.850290');
INSERT INTO 'south_migrationhistory' VALUES(51,'googlemap','0006_publisher2','2013-01-08 05:17:15.853143');
INSERT INTO 'south_migrationhistory' VALUES(52,'file','0004_table_rename','2013-01-08 05:17:15.856232');
INSERT INTO 'south_migrationhistory' VALUES(53,'file','0005_publisher2','2013-01-08 05:17:15.858874');
INSERT INTO 'south_migrationhistory' VALUES(54,'cms','0020_advanced_permissions','2013-01-08 05:17:15.861910');
INSERT INTO 'south_migrationhistory' VALUES(55,'cms','0021_publisher2','2013-01-08 05:17:15.864937');
INSERT INTO 'south_migrationhistory' VALUES(56,'cms','0022_login_required_added','2013-01-08 05:17:15.867586');
INSERT INTO 'south_migrationhistory' VALUES(57,'cms','0023_plugin_table_naming_function_changed','2013-01-08 05:17:15.870513');
INSERT INTO 'south_migrationhistory' VALUES(58,'cms','0024_added_placeholder_model','2013-01-08 05:17:15.874451');
INSERT INTO 'south_migrationhistory' VALUES(59,'cms','0025_placeholder_migration','2013-01-08 05:17:15.877776');
INSERT INTO 'south_migrationhistory' VALUES(60,'cms','0026_finish_placeholder_migration','2013-01-08 05:17:15.881167');
INSERT INTO 'south_migrationhistory' VALUES(61,'cms','0027_added_width_to_placeholder','2013-01-08 05:17:15.884205');
INSERT INTO 'south_migrationhistory' VALUES(62,'cms','0028_limit_visibility_in_menu_step1of3','2013-01-08 05:17:15.887256');
INSERT INTO 'south_migrationhistory' VALUES(63,'cms','0029_limit_visibility_in_menu_step2of3_data','2013-01-08 05:17:15.890995');
INSERT INTO 'south_migrationhistory' VALUES(64,'cms','0030_limit_visibility_in_menu_step3of3','2013-01-08 05:17:15.894291');
INSERT INTO 'south_migrationhistory' VALUES(65,'cms','0031_improved_language_code_support','2013-01-08 05:17:15.897021');
INSERT INTO 'south_migrationhistory' VALUES(66,'cms','0032_auto__del_field_cmsplugin_publisher_public__del_field_cmsplugin_publis','2013-01-08 05:17:15.900251');
INSERT INTO 'south_migrationhistory' VALUES(67,'cms','0033_auto__del_field_title_publisher_is_draft__del_field_title_publisher_st','2013-01-08 05:17:15.903167');
INSERT INTO 'south_migrationhistory' VALUES(68,'cms','0034_auto__chg_field_title_language__chg_field_cmsplugin_language__add_fiel','2013-01-08 05:17:15.905900');
INSERT INTO 'south_migrationhistory' VALUES(69,'cms','0035_auto__add_field_globalpagepermission_can_view__add_field_pagepermissio','2013-01-08 05:17:15.909193');
INSERT INTO 'south_migrationhistory' VALUES(70,'cms','0036_auto__add_field_cmsplugin_changed_date','2013-01-08 05:17:15.912223');
INSERT INTO 'south_migrationhistory' VALUES(71,'menus','0001_initial','2013-01-08 05:17:15.954813');
INSERT INTO 'south_migrationhistory' VALUES(72,'text','0006_2_1_4_upgrade','2013-01-08 05:17:15.994817');
INSERT INTO 'south_migrationhistory' VALUES(73,'picture','0008_longdesc_added','2013-01-08 05:17:16.034193');
INSERT INTO 'south_migrationhistory' VALUES(74,'link','0008_mailto','2013-01-08 05:17:16.078188');
INSERT INTO 'south_migrationhistory' VALUES(75,'link','0009_add_target','2013-01-08 05:17:16.081139');
INSERT INTO 'south_migrationhistory' VALUES(76,'snippet','0005_template_added','2013-01-08 05:17:16.169252');
INSERT INTO 'south_migrationhistory' VALUES(77,'googlemap','0007_latlng','2013-01-08 05:17:16.215815');
INSERT INTO 'south_migrationhistory' VALUES(78,'googlemap','0008_routeplaner','2013-01-08 05:17:16.218641');
INSERT INTO 'south_migrationhistory' VALUES(79,'googlemap','0009_routeplaner_title','2013-01-08 05:17:16.221402');
INSERT INTO 'south_migrationhistory' VALUES(80,'googlemap','0010_auto__chg_field_googlemap_content','2013-01-08 05:17:16.224129');
INSERT INTO 'south_migrationhistory' VALUES(81,'googlemap','0011_remove_zoom_null_values','2013-01-08 05:17:16.227664');
INSERT INTO 'south_migrationhistory' VALUES(82,'googlemap','0012_auto__add_field_googlemap_width__add_field_googlemap_height__chg_field','2013-01-08 05:17:16.230524');
INSERT INTO 'south_migrationhistory' VALUES(83,'products','0001_initial','2013-01-09 10:20:02.429230');
INSERT INTO 'south_migrationhistory' VALUES(84,'products','0002_initial','2013-01-09 11:23:27.053546');
INSERT INTO 'south_migrationhistory' VALUES(85,'products','0003_auto__add_producttype','2013-01-30 11:23:34.541610');
INSERT INTO 'south_migrationhistory' VALUES(86,'products','0004_auto__add_category__add_field_product_type__add_field_product_category','2013-01-30 11:49:17.320310');
INSERT INTO 'south_migrationhistory' VALUES(87,'products','0005_auto__add_field_category_product_type__del_field_product_type','2013-01-30 12:08:31.616098');
INSERT INTO 'south_migrationhistory' VALUES(88,'products','0006_auto__del_field_producttype_name__add_field_producttype_name_el__add_f','2013-01-30 12:27:38.794715');
INSERT INTO 'south_migrationhistory' VALUES(89,'products','0007_auto__del_field_producttype_name_zh_tw__del_field_producttype_name_fr_','2013-01-30 12:41:55.576511');
INSERT INTO 'south_migrationhistory' VALUES(90,'products','0008_auto__add_field_producttype_name_en__add_field_producttype_name_tr__ad','2013-01-30 12:54:45.162129');
INSERT INTO 'south_migrationhistory' VALUES(91,'products','0009_auto__add_field_category_name_en__add_field_category_name_tr__add_fiel','2013-01-30 12:59:27.236853');
INSERT INTO 'south_migrationhistory' VALUES(92,'products','0010_auto__add_field_category_parent__add_field_category_lft__add_field_cat','2013-01-30 13:09:23.459946');
INSERT INTO 'south_migrationhistory' VALUES(93,'products','0011_auto__add_field_producttype_slug','2013-01-30 16:04:53.191795');
INSERT INTO 'south_migrationhistory' VALUES(94,'products','0012_auto__add_field_category_position','2013-01-30 10:28:26.928037');
INSERT INTO 'south_migrationhistory' VALUES(95,'products','0013_auto__add_field_product_engine__add_field_product_type__add_field_prod','2013-01-31 10:04:28.465844');
INSERT INTO 'south_migrationhistory' VALUES(96,'products','0014_auto__del_brand__del_field_product_brand','2013-01-31 10:44:46.050927');
INSERT INTO 'south_migrationhistory' VALUES(97,'products','0015_auto__add_field_product_oem','2013-01-31 11:11:20.939197');
INSERT INTO 'south_migrationhistory' VALUES(98,'products','0016_auto__add_field_product_image','2013-01-31 11:13:05.255639');
INSERT INTO 'south_migrationhistory' VALUES(99,'products','0017_auto__chg_field_category_name__chg_field_category_name_de__chg_field_c','2013-01-31 11:48:53.460499');
INSERT INTO 'south_migrationhistory' VALUES(100,'products','0018_auto__add_field_producttype_slug','2013-01-31 12:06:45.980258');
INSERT INTO 'south_migrationhistory' VALUES(101,'guest','0001_initial','2013-02-04 06:03:09.696811');
INSERT INTO 'south_migrationhistory' VALUES(102,'search','0001_initial','2013-02-04 10:19:14.320559');
INSERT INTO 'south_migrationhistory' VALUES(103,'form_designer','0001_initial','2013-02-05 09:11:58.784841');
INSERT INTO 'south_migrationhistory' VALUES(104,'form_designer','0002_auto__chg_field_formdefinitionfield_initial','2013-02-05 09:11:58.804247');
INSERT INTO 'south_migrationhistory' VALUES(105,'form_designer','0003_auto__add_field_formdefinition_display_logged','2013-02-05 09:11:58.824574');
INSERT INTO 'south_migrationhistory' VALUES(106,'form_designer','0004_auto__add_field_formdefinition_body','2013-02-05 09:11:58.845203');
INSERT INTO 'south_migrationhistory' VALUES(107,'form_designer','0005_auto__add_field_formdefinition_require_hash__add_field_formdefinition_','2013-02-05 09:11:58.895449');
INSERT INTO 'south_migrationhistory' VALUES(108,'form_designer','0006_auto__add_field_formdefinition_save_uploaded_files','2013-02-05 09:11:58.917782');
INSERT INTO 'south_migrationhistory' VALUES(109,'form_designer','0007_auto__add_field_formdefinition_mail_uploaded_files','2013-02-05 09:11:58.939377');
INSERT INTO 'south_migrationhistory' VALUES(110,'form_designer','0008_auto__add_formvalue__del_field_formlog_data__add_field_formlog_created','2013-02-05 09:39:32.368131');
INSERT INTO 'south_migrationhistory' VALUES(111,'cmsplugin_yandexmap','0001_initial','2013-02-06 02:27:27.149430');
INSERT INTO 'south_migrationhistory' VALUES(112,'products','0019_auto__add_field_category_meta_keywords__add_field_category_meta_descri','2013-02-06 03:56:52.684265');
INSERT INTO 'south_migrationhistory' VALUES(113,'products','0020_auto__add_field_category_meta_keywords_en__add_field_category_meta_key','2013-02-06 04:09:41.175802');
CREATE INDEX 'auth_group_permissions_1e014c8f' ON 'auth_group_permissions' ('permission_id');
CREATE INDEX 'auth_group_permissions_bda51c3c' ON 'auth_group_permissions' ('group_id');
CREATE INDEX 'auth_message_fbfc09f1' ON 'auth_message' ('user_id');
CREATE INDEX 'auth_permission_e4470c6e' ON 'auth_permission' ('content_type_id');
CREATE INDEX 'auth_user_groups_bda51c3c' ON 'auth_user_groups' ('group_id');
CREATE INDEX 'auth_user_groups_fbfc09f1' ON 'auth_user_groups' ('user_id');
CREATE INDEX 'auth_user_user_permissions_1e014c8f' ON 'auth_user_user_permissions' ('permission_id');
CREATE INDEX 'auth_user_user_permissions_fbfc09f1' ON 'auth_user_user_permissions' ('user_id');
CREATE INDEX 'cms_cmsplugin_2a8f42e8' ON 'cms_cmsplugin' ('level');
CREATE INDEX 'cms_cmsplugin_42b06ff6' ON 'cms_cmsplugin' ('lft');
CREATE INDEX 'cms_cmsplugin_63f17a16' ON 'cms_cmsplugin' ('parent_id');
CREATE INDEX 'cms_cmsplugin_8a7ac9ab' ON 'cms_cmsplugin' ('language');
CREATE INDEX 'cms_cmsplugin_91543e5a' ON 'cms_cmsplugin' ('rght');
CREATE INDEX 'cms_cmsplugin_ad070cd0' ON 'cms_cmsplugin' ('plugin_type');
CREATE INDEX 'cms_cmsplugin_c1ca2850' ON 'cms_cmsplugin' ('placeholder_id');
CREATE INDEX 'cms_cmsplugin_efd07f28' ON 'cms_cmsplugin' ('tree_id');
CREATE INDEX 'cms_globalpagepermission_bda51c3c' ON 'cms_globalpagepermission' ('group_id');
CREATE INDEX 'cms_globalpagepermission_fbfc09f1' ON 'cms_globalpagepermission' ('user_id');
CREATE INDEX 'cms_globalpagepermission_sites_6223029' ON 'cms_globalpagepermission_sites' ('site_id');
CREATE INDEX 'cms_globalpagepermission_sites_f5debdc1' ON 'cms_globalpagepermission_sites' ('globalpagepermission_id');
CREATE INDEX 'cms_page_16d2d3fa' ON 'cms_page' ('publisher_is_draft');
CREATE INDEX 'cms_page_2a8f42e8' ON 'cms_page' ('level');
CREATE INDEX 'cms_page_3c0ea264' ON 'cms_page' ('in_navigation');
CREATE INDEX 'cms_page_42b06ff6' ON 'cms_page' ('lft');
CREATE INDEX 'cms_page_6223029' ON 'cms_page' ('site_id');
CREATE INDEX 'cms_page_63f17a16' ON 'cms_page' ('parent_id');
CREATE INDEX 'cms_page_91543e5a' ON 'cms_page' ('rght');
CREATE INDEX 'cms_page_a0014f5a' ON 'cms_page' ('publisher_state');
CREATE INDEX 'cms_page_a221fe64' ON 'cms_page' ('publication_end_date');
CREATE INDEX 'cms_page_b56116b' ON 'cms_page' ('reverse_id');
CREATE INDEX 'cms_page_baa27763' ON 'cms_page' ('soft_root');
CREATE INDEX 'cms_page_c909672f' ON 'cms_page' ('limit_visibility_in_menu');
CREATE INDEX 'cms_page_d98c6d14' ON 'cms_page' ('navigation_extenders');
CREATE INDEX 'cms_page_ee664462' ON 'cms_page' ('publication_date');
CREATE INDEX 'cms_page_efd07f28' ON 'cms_page' ('tree_id');
CREATE INDEX 'cms_page_placeholders_32d04bc7' ON 'cms_page_placeholders' ('page_id');
CREATE INDEX 'cms_page_placeholders_c1ca2850' ON 'cms_page_placeholders' ('placeholder_id');
CREATE INDEX 'cms_pagemoderator_32d04bc7' ON 'cms_pagemoderator' ('page_id');
CREATE INDEX 'cms_pagemoderator_fbfc09f1' ON 'cms_pagemoderator' ('user_id');
CREATE INDEX 'cms_pagemoderatorstate_32d04bc7' ON 'cms_pagemoderatorstate' ('page_id');
CREATE INDEX 'cms_pagemoderatorstate_fbfc09f1' ON 'cms_pagemoderatorstate' ('user_id');
CREATE INDEX 'cms_pagepermission_32d04bc7' ON 'cms_pagepermission' ('page_id');
CREATE INDEX 'cms_pagepermission_bda51c3c' ON 'cms_pagepermission' ('group_id');
CREATE INDEX 'cms_pagepermission_fbfc09f1' ON 'cms_pagepermission' ('user_id');
CREATE INDEX 'cms_pageuser_b5de30be' ON 'cms_pageuser' ('created_by_id');
CREATE INDEX 'cms_pageusergroup_b5de30be' ON 'cms_pageusergroup' ('created_by_id');
CREATE INDEX 'cms_placeholder_400badfd' ON 'cms_placeholder' ('slot');
CREATE INDEX 'cms_title_23b1fc68' ON 'cms_title' ('application_urls');
CREATE INDEX 'cms_title_32d04bc7' ON 'cms_title' ('page_id');
CREATE INDEX 'cms_title_6a8a34e2' ON 'cms_title' ('path');
CREATE INDEX 'cms_title_8a7ac9ab' ON 'cms_title' ('language');
CREATE INDEX 'cms_title_a951d5d6' ON 'cms_title' ('slug');
CREATE INDEX 'cms_title_c269b1d2' ON 'cms_title' ('has_url_overwrite');
CREATE INDEX 'cmsplugin_cmsformdefinition_f453024d' ON 'cmsplugin_cmsformdefinition' ('form_definition_id');
CREATE INDEX 'cmsplugin_link_37c07cc5' ON 'cmsplugin_link' ('page_link_id');
CREATE INDEX 'cmsplugin_picture_37c07cc5' ON 'cmsplugin_picture' ('page_link_id');
CREATE INDEX 'cmsplugin_snippetptr_37e31bc4' ON 'cmsplugin_snippetptr' ('snippet_id');
CREATE INDEX 'django_admin_log_e4470c6e' ON 'django_admin_log' ('content_type_id');
CREATE INDEX 'django_admin_log_fbfc09f1' ON 'django_admin_log' ('user_id');
CREATE INDEX 'django_session_c25c2c28' ON 'django_session' ('expire_date');
CREATE INDEX 'form_designer_formlog_b5de30be' ON 'form_designer_formlog' ('created_by_id');
CREATE INDEX 'form_designer_formvalue_7e1499' ON 'form_designer_formvalue' ('field_name');
CREATE INDEX 'form_designer_formvalue_fc4c08bd' ON 'form_designer_formvalue' ('form_log_id');
CREATE INDEX 'products_producttype_a951d5d6' ON 'products_producttype' ('slug');
